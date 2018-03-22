FROM wordpress

RUN sed -i "/define('WP_DEBUG', false);/a define('FS_METHOD', 'direct');" /usr/src/wordpress/wp-config-sample.php