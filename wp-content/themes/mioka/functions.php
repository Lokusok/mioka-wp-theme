<?php

// Добавление стилей
function add_styles() {
  // wp_enqueue_style('main', get_template_directory_uri() . '/assets/css/src/style.css', [], null, 'all');

  // Build variant
  wp_enqueue_style('main', get_template_directory_uri() . '/assets/css/style.bundle.min.css', [], null, 'all');
}

// Добавление скриптов
function add_scripts() {
  // wp_enqueue_script('inputmask', get_template_directory_uri() . '/assets/js/src/inputmask.js', [], null, true);
  // wp_enqueue_script('vanilla-tilt', get_template_directory_uri() . '/assets/js/src/tilt.min.js', [], null, true);
  // wp_enqueue_script('js-cookie', get_template_directory_uri() . '/assets/js/src/js-cookie.min.js', [], null, true);
  // wp_enqueue_script('fancybox', get_template_directory_uri() . '/assets/js/src/fancybox.umd.js', [], null, true);
  // wp_enqueue_script('swiper', get_template_directory_uri() . '/assets/js/src/swiper.min.js', [], null, true);
  // wp_enqueue_script('lazyload', get_template_directory_uri() . '/assets/js/src/lazyload.min.js', [], null, true);
  // wp_enqueue_script('choices', get_template_directory_uri() . '/assets/js/src/choices.min.js', [], null, true);
  // wp_enqueue_script('air-datepicker', get_template_directory_uri() . '/assets/js/src/air-datepicker.js', [], null, true);
  // wp_enqueue_script('fix-wp', get_template_directory_uri() . '/assets/js/src/fix-wp.js', [], null, true);
  // wp_enqueue_script('main', get_template_directory_uri() . '/assets/js/src/main.js', [], null, true);
  
  // Build variant
  wp_enqueue_script('main', get_template_directory_uri() . '/assets/js/main.bundle.min.js', [], null, true);
}

add_action('wp_enqueue_scripts', 'add_styles');
add_action('wp_enqueue_scripts', 'add_scripts');

// Убрать теги <p> у плагина Contact Form 7
add_filter('wpcf7_autop_or_not', '__return_false');

// Добавляет SVG в список разрешенных для загрузки файлов.
add_filter( 'upload_mimes', 'svg_upload_allow' );
function svg_upload_allow( $mimes ) {
	$mimes['svg']  = 'image/svg+xml';

	return $mimes;
}

// Убрать ненужные теги у Contact Form
add_filter('wpcf7_form_elements', function($content) {
	// Убрать обёртку в виде <span>
	$content = preg_replace('/<(span).*?class="\s*(?:.*\s)?wpcf7-form-control-wrap(?:\s[^"]+)?\s*"[^\>]*>(.*)<\/\1>/i', '\2', $content);

	// Убрать атрибуты size, rows, cols
	$content = preg_replace('/(size|rows|cols)="\d+"/i', '', $content);

	return $content;
});

// === Поддержка дополнительных возможностей ===
// Поддержка миниатюр
add_theme_support('post-thumbnails');
add_theme_support('custom-logo');


add_action( 'init', 'register_services_post_type_and_taxonomy' );
add_action( 'init', 'register_employees_post_type_and_taxonomy' );
add_action ('init', 'register_works_post_type_and_taxonomy' );
add_action( 'init', 'register_documents_post_type_and_taxonomy' );
add_action( 'init', 'register_reviews_post_type_and_taxonomy' );
add_action( 'init', 'register_questions_post_type_and_taxonomy' );
 
// Своё поле для услуг
function register_services_post_type_and_taxonomy() {
  // Регистрация post type
	$labels = array(
		'name' => 'Услуги',
		'singular_name' => 'Услуга',
		'add_new' => 'Добавить услугу',
		'add_new_item' => 'Добавить услугу',
		'edit_item' => 'Редактировать услугу',
		'new_item' => 'Новая услуга',
		'all_items' => 'Все услуги',
		'search_items' => 'Искать услуги',
		'not_found' =>  'Услуг по заданным критериям не найдено.',
		'not_found_in_trash' => 'В корзине нет услуг.',
		'menu_name' => 'Услуги',
    'view_items' => 'Просмотр услуг',
    'attributes' => 'Свойства услуги',

    'item_updated' => 'Услуга обновлена'
	);
 
	$args = array(
		'labels' => $labels,
		'public' => true,
		'publicly_queryable' => false,
		'has_archive' => false,
		'menu_icon' => 'dashicons-grid-view',
		'menu_position' => 4,
    'show_in_rest' => true, // Для включения Gutenberg-редактора
		'supports' => array( 'title', 'editor', 'thumbnail' )
	);
 
	register_post_type( 'services', $args );


  // Регистрация taxonomy
  $args = array(
    'labels' => array(
      'menu_name' => 'Категории услуг'
    ),
    'hierarchical' => true,
    'show_admin_column' => true,
    'show_in_rest' => true, // Для включения Gutenberg-редактора
    'public' => true,
  );

  register_taxonomy('services_types', array('services'), $args);
}

// Своё поле для сотрудников
function register_employees_post_type_and_taxonomy() {
  // Регистрация post type
	$labels = array(
		'name' => 'Сотрудники',
		'singular_name' => 'Сотрудник',
		'add_new' => 'Добавить сотрудника',
		'add_new_item' => 'Добавить сотрудника',
		'edit_item' => 'Редактировать сотрудника',
		'new_item' => 'Новый сотрудник',
		'all_items' => 'Все сотрудники',
		'search_items' => 'Искать сотрудников',
		'not_found' =>  'Сотрудников по заданным критериям не найдено.',
		'not_found_in_trash' => 'В корзине нет сотрудников.',
		'menu_name' => 'Сотрудники',
    'view_items' => 'Просмотр сотрудников',
    'attributes' => 'Свойства сотрудника',

    'item_updated' => 'Услуга обновлена'
	);
 
	$args = array(
		'labels' => $labels,
		'public' => true,
		'publicly_queryable' => false,
		'has_archive' => false,
		'menu_icon' => 'dashicons-universal-access-alt',
		'menu_position' => 4,
    'show_in_rest' => true, // Для включения Gutenberg-редактора
		'supports' => array( 'title', 'editor', 'thumbnail' )
	);
 
	register_post_type( 'employees', $args );


  // Регистрация taxonomy
  $args = array(
    'labels' => array(
      'menu_name' => 'Должности сотрудников' // Или исправить на "Должности"
    ),
    'hierarchical' => true,
    'show_admin_column' => true,
    'show_in_rest' => true, // Для включения Gutenberg-редактора
    'public' => true,
  );

  register_taxonomy('employees_types', array('employees'), $args);
}

// Своё поле для выполненных работ
function register_works_post_type_and_taxonomy() {
  // Регистрация post type
	$labels = array(
		'name' => 'Выполненные работы',
		'singular_name' => 'Выполненная работа',
		'add_new' => 'Добавить выполненную работу',
		'add_new_item' => 'Добавить выполненную работу',
		'edit_item' => 'Редактировать выполненную работу',
		'new_item' => 'Новая выполненная работа',
		'all_items' => 'Все выполненные работы',
		'search_items' => 'Искать выполненные работы',
		'not_found' =>  'Выполненных работ по заданным критериям не найдено.',
		'not_found_in_trash' => 'В корзине нет выполненных работ.',
		'menu_name' => 'Выполненные работы',
    'view_items' => 'Просмотр выполненных работ',
    'attributes' => 'Свойства выполненной работы',

    'item_updated' => 'Выполненная работа обновлена'
	);
 
	$args = array(
		'labels' => $labels,
		'public' => true,
		'publicly_queryable' => false,
		'has_archive' => false,
		'menu_icon' => 'dashicons-yes-alt',
		'menu_position' => 4,
    'show_in_rest' => true, // Для включения Gutenberg-редактора
		'supports' => array( 'title', 'editor', 'thumbnail' )
	);
 
	register_post_type( 'portfolio_works', $args );
}

// Своё поле для документов
function register_documents_post_type_and_taxonomy() {
  // Регистрация post type
	$labels = array(
		'name' => 'Документы',
		'singular_name' => 'Документ',
		'add_new' => 'Добавить документ',
		'add_new_item' => 'Добавить документ',
		'edit_item' => 'Редактировать документ',
		'new_item' => 'Новый документ',
		'all_items' => 'Все документы',
		'search_items' => 'Искать документы',
		'not_found' =>  'Документов по заданным критериям не найдено.',
		'not_found_in_trash' => 'В корзине нет документов.',
		'menu_name' => 'Документы',
    'view_items' => 'Просмотр документов',
    'attributes' => 'Свойства документов',

    'item_updated' => 'Документ обновлен'
	);
 
	$args = array(
		'labels' => $labels,
		'public' => true,
		'publicly_queryable' => false,
		'has_archive' => false,
		'menu_icon' => 'dashicons-media-document',
		'menu_position' => 4,
    'show_in_rest' => true, // Для включения Gutenberg-редактора
		'supports' => array( 'title', 'editor', 'thumbnail' )
	);
 
	register_post_type( 'documents', $args );
}

// Своё поле для отзывов
function register_reviews_post_type_and_taxonomy() {
  // Регистрация post type
	$labels = array(
		'name' => 'Отзывы',
		'singular_name' => 'Отзыв',
		'add_new' => 'Добавить отзыв',
		'add_new_item' => 'Добавить отзыв',
		'edit_item' => 'Редактировать отзыв',
		'new_item' => 'Новый отзыв',
		'all_items' => 'Все отзывы',
		'search_items' => 'Искать отзывы',
		'not_found' =>  'Отзывов по заданным критериям не найдено.',
		'not_found_in_trash' => 'В корзине нет отзывов.',
		'menu_name' => 'Отзывы',
    'view_items' => 'Просмотр отзывов',
    'attributes' => 'Свойства отзывов',

    'item_updated' => 'Отзыв обновлен'
	);
 
	$args = array(
		'labels' => $labels,
		'public' => true,
		'publicly_queryable' => false,
		'has_archive' => false,
		'menu_icon' => 'dashicons-feedback',
		'menu_position' => 21, // Ниже страниц (позиция у страниц - 20)
    'show_in_rest' => true, // Для включения Gutenberg-редактора
		'supports' => array( 'title', 'editor', 'thumbnail' )
	);
 
	register_post_type( 'reviews', $args );


  // Регистрация taxonomy
  $args = array(
    'labels' => array(
      'menu_name' => 'Виды отзывов'
    ),
    'hierarchical' => true,
    'show_admin_column' => true,
    'show_in_rest' => true, // Для включения Gutenberg-редактора
    'public' => true,
  );

  register_taxonomy('reviews_types', array('reviews'), $args);
}

// Своё поле для ответов на вопросы
function register_questions_post_type_and_taxonomy() {
  // Регистрация post type
	$labels = array(
		'name' => 'Ответы на вопросы',
		'singular_name' => 'Ответ на вопрос',
		'add_new' => 'Добавить ответ на вопрос',
		'add_new_item' => 'Добавить ответ на вопрос',
		'edit_item' => 'Редактировать ответ на вопрос',
		'new_item' => 'Новый ответ на вопрос',
		'all_items' => 'Все ответы на вопросы',
		'search_items' => 'Искать ответы на вопросы',
		'not_found' =>  'Ответов на вопросы по заданным критериям не найдено.',
		'not_found_in_trash' => 'В корзине нет ответов на вопросы.',
		'menu_name' => 'Ответы на вопросы',
    'view_items' => 'Просмотр ответов на вопросы',
    'attributes' => 'Свойства ответов на вопросы',

    'item_updated' => 'Ответ на вопрос обновлен'
	);
 
	$args = array(
		'labels' => $labels,
		'public' => true,
		'publicly_queryable' => false,
		'has_archive' => false,
		'menu_icon' => 'dashicons-rss',
		'menu_position' => 21, // Ниже страниц (позиция у страниц - 20)
    'show_in_rest' => true, // Для включения Gutenberg-редактора
		'supports' => array( 'title', 'editor', 'thumbnail' )
	);
 
	register_post_type( 'questions', $args );
}

// Выбор названия из имеющихся работ в метабоксе
add_action('add_meta_boxes', function () {
	add_meta_box( 'portfio_works--services', 'Тип работы (Альтернатива заголовку)', 'portfolio_works_services_metabox', 'portfolio_works', 'advanced ', 'low'  );
}, 1);
function portfolio_works_services_metabox() {
  global $post;

  $services = get_posts(array( 'post_type' => 'services', 'posts_per_page'=>-1, 'orderby'=>'post_title', 'order'=>'ASC' ));

  if ($services) {
    echo '
      <div style="max-height:200px; overflow-y:auto;">
        <ul>
      ';

    foreach ($services as $service) {
      setup_postdata( $service );

      echo '
        <li><label>
          <input class="my_title_radios" type="radio" name="post_parent" value="'. $service->ID .'" '. checked($service->ID, $post->post_parent, 0) .'>
          <span>'. esc_html($service->post_title) .'</span>
        </label></li>
        ';
    }

    echo '
      <li><label>
      <input class="my_title_radios my_title_radios__empty_value" type="radio" name="post_parent" value="">
      <span> Очистить (своё значение) </span>
      </label></li>
    ';

    echo '
			</ul>
		</div>';

    echo "
      <script>
        jQuery(document).ready(function() {

          setTimeout(() => {
            jQuery('.editor-post-title').on('input', () => {
              console.log('Ввожу заголовок');
              jQuery('.my_title_radios__empty_value').prop('checked', true);
            });

            jQuery('.my_title_radios').on('change', function() {
              console.log('click on', jQuery(this));
              jQuery('.editor-post-title').text(jQuery(this).next().text());
              
              jQuery('.editor-post-title').focus();
            });

            jQuery('.my_title_radios__empty_value').on('change', function() {
              jQuery('.editor-post-title').text('');
            });
          }, 100);

        })
      </script>
    ";
  } else {
    echo 'Работ нет...';
  }
}

// Выбор услуг сотрудника из имеющихся
add_action('add_meta_boxes', function () {
	add_meta_box('employees--services', 'Услуги, оказываемые сотрудником',
	'employees_services_metabox', 'employees', 'advanced', 'low');
}, 1);
function employees_services_metabox() {
	global $post;

  $services = get_posts(array( 'post_type' => 'services', 'posts_per_page'=>-1, 'orderby'=>'post_title', 'order'=>'ASC' ));
	$custom = get_post_custom( $post->ID );
	// Делаем метаполе в БД для хранения работ оказываемых сотрудником
	$meta = get_post_meta($post->ID, 'meta_box_employees_services');
	if (count($meta) === 0) {
		$meta = add_post_meta($post->ID, 'meta_box_employees_services', '');
	}

	if ($services) {
    echo '
      <div style="max-height:200px; overflow-y:auto;">
        <ul>
      ';

    foreach ($services as $service) {
      setup_postdata( $service );

      echo '
        <li><label>
          <input class="my_employees_services_radio" type="checkbox" name="meta_box_employees_services" value="'. $service->ID .'" '. checked($service->ID, $post->meta_box_employees_services, 0) .'>
          <span>'. esc_html($service->post_title) .'</span>
        </label></li>
        ';
    }

		echo "
			<script>
				setTimeout(() => {
					var jq_textarea = jQuery('[data-name=\"employees_services_list\"] textarea');
					var jq_checkboxes = jQuery('.my_employees_services_radio');

					var textInTextarea = jq_textarea.val()
					var text = [];
					if (textInTextarea.length > 0) {
						text = textInTextarea.split('; ');
					}
					console.log(text);
					
					// Если уже есть текст в массиве - выделяем чекбоксы
					if (text.length > 0) {
						jQuery(text).each(function(index, string) {
							jq_checkboxes.each(function(index, checkbox) {
								var serviceName = jQuery(checkbox).next().text();
								if (string.includes('=')) {
									string = string.split('=')[0].trim();
								}

								if (serviceName === string) {
									jQuery(checkbox).prop('checked', true);
								}
							});
						});
					}


					// Выделяем чекбоксы - заносим в textarea и наоборот
					jq_checkboxes.on('change', function() {
						var is_checked = jQuery(this).is(':checked');
						var currentText = jQuery(this).next().text()

						if (is_checked) {
							text.push(currentText);
						} else {
							text.splice(text.indexOf(currentText), 1);
						}

						jq_textarea.val(text.join('; '));
					});
				}, 100);
			</script>
		";
	} else {
		echo 'Услуг нет...';
	}
}


// Добавление миниатюр
add_filter('manage_posts_columns', 'posts_columns', 5);
add_action('manage_posts_custom_column', 'posts_custom_columns', 5, 2);

function posts_columns($defaults){
    $defaults['riv_post_thumbs'] = __('Миниатюра');
    return $defaults;
}

function posts_custom_columns($column_name, $id){
 if($column_name === 'riv_post_thumbs'){
        the_post_thumbnail( array(50, 50) );
    }
}

