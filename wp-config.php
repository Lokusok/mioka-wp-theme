<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе установки.
 * Необязательно использовать веб-интерфейс, можно скопировать файл в "wp-config.php"
 * и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки базы данных
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://ru.wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

 // ** Параметры базы данных: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'drobkoil_miokadb' );

/** Имя пользователя базы данных */
define( 'DB_USER', 'drobkoil_miokadb' );

/** Пароль к базе данных */
define( 'DB_PASSWORD', 'miokus2000@' );

/** Имя сервера базы данных */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/** Отключение автообновления ядра WordPress. */
define( 'WP_AUTO_UPDATE_CORE', false );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу. Можно сгенерировать их с помощью
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}.
 *
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными.
 * Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'wdI9InJPFGZpR5&</Ko,2bh$4yo^3q.jYF~cv ~Uy}AP/V:+-$S;aT3~1X:8[wQM' );
define( 'SECURE_AUTH_KEY',  'qN=Vy7Fsm%Ygyr[HpifjH,SFVz,xAHHtUU5%;?K4x)wiG)Q8uj?(T& cfMx4-~/a' );
define( 'LOGGED_IN_KEY',    't2y7fY=f v3G ;61vK^-1+TTqV9/Y)S4u]zt4pYx&VEi=(Z=id}xR3eUxob~me:v' );
define( 'NONCE_KEY',        '5{$wP{Of5pjmAn<{:#X0F~8l&n^.X]eJo*][-ih} $w9.PYz+oY^+jjag=*%2MYD' );
define( 'AUTH_SALT',        ';t/EI3U[mVBHBp[qcIwT),oQ.sRL6<5[Ve@j;v$[,3}Si9_tc%n4WPlm)z({PNt6' );
define( 'SECURE_AUTH_SALT', '>t}UXkuJ|5/z?s;~Q{yJ.gK6GkL/y`urP6,x=@bT6nvYG@;[sh}LCP4kwB3fdo:#' );
define( 'LOGGED_IN_SALT',   'CuUT,B ?5P~dT:H8U~.Jo&Ek$&h<S%ZsG>/m>|kiFIg0D10^%h)VhCdR8;~1TX1L' );
define( 'NONCE_SALT',       'T^p0Hz~_=8rjdztay$$sRavg/.R43yZzgl3~uKLE0-:?W+`~/~G|Ny&$o i$uvcc' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в документации.
 *
 * @link https://ru.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Произвольные значения добавляйте между этой строкой и надписью "дальше не редактируем". */



/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once ABSPATH . 'wp-settings.php';
