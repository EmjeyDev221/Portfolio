<?php

$host = getenv('DB_HOST') ?: (
    getenv('DOCKER_ENV') === 'true'
        ? 'host.docker.internal'
        : 'localhost'
);

$port = getenv('DB_PORT') ?: '3306';
$dbname = getenv('DB_NAME') ?: 'portfolio_db';
$username = getenv('DB_USER') ?: 'root';
$password = getenv('DB_PASSWORD') ?: '';
$charset = 'utf8mb4';

$dsn = "mysql:host={$host};port={$port};dbname={$dbname};charset={$charset}";

$options = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES => false,
];

/*
 * For remote databases (when DB_HOST is set), require a trusted CA
 * certificate. For Aiven on Vercel, set DB_SSL_CA to:
 * /var/www/html/certs/ca.pem
 */
if (getenv('DB_HOST')) {
    $sslCa = getenv('DB_SSL_CA');

    if (!$sslCa || !is_file($sslCa)) {
        throw new RuntimeException(
            'Database SSL CA certificate is missing or unreadable.'
        );
    }

    $options[PDO::MYSQL_ATTR_SSL_CA] = $sslCa;
    $options[PDO::MYSQL_ATTR_SSL_VERIFY_SERVER_CERT] = true;
}

try {
    $pdo = new PDO($dsn, $username, $password, $options);
} catch (PDOException $e) {
    error_log('Portfolio database connection failed: ' . $e->getMessage());
    throw $e;
}
