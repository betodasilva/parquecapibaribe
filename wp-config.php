<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wp_parque_capibaribe');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'parquecapibaribe');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '}5aFdjW-GPf.3T?in||5oqgHKkn=1xDa8sNi756nuEuM5_ckqf&a]rgXNqnDomH^');
define('SECURE_AUTH_KEY',  'c PYamczTEVuI!U(H-9d,`Y#O2p+k4b9]V;S~^do6JhL-|nZKZ}8Sa_}c[ZtRv6u');
define('LOGGED_IN_KEY',    '30yUu?A!dVh?x7$QoAMLeSCg8X]ffOyiXLe_MT:WQPK=B<DWBrR]Z?qEQ:OT$4pI');
define('NONCE_KEY',        '87jke_es?&CMr`<@vkj(9T<PQ(P-v;n67zFOQyK5[~?v<9lM3^D#I1^YFv=MBL=D');
define('AUTH_SALT',        'Q}7f$N8,@AdbQn_X:Yx]$,:9+Q.m 3#e(F|AE)bvr2/.AYAyvyz].`T[G<DV>!y%');
define('SECURE_AUTH_SALT', 's0UB%)+JIlk;3CDKI(mwGNr^5_6>2L.AF:pM$@^*a!-x/&xUAuEwJz 4-*(e1#s(');
define('LOGGED_IN_SALT',   'I50/}=~%)pMa@67WY0DPu+xUnAQq_Q2j<_@%Dd-^q+D13sw0hkw&@_#Yd4zHAf=9');
define('NONCE_SALT',       '1.@|x.]nLhppck;.mW^hsjihmHvT3PVS$H]#_hd>z}Q+0>hs9##+COj=uMFi3XV,');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_pc_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');


/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
