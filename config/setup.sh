# add config value to wp-config.php
sed -i "/define('WP_DEBUG', true);/a define('FS_METHOD', 'direct');" /var/www/html/wp-config.php

# execute apache
exec "apache2-foreground"