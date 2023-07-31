<?php get_header(); ?> <main id="main" class="main"><section id="hero" class="hero"><picture><source type="image/avif" srcset="<?php bloginfo('template_url') ?>/assets/images/decor-left.avif"><source type="image/webp" srcset="<?php bloginfo('template_url') ?>/assets/images/decor-left.webp"><img class="decor-image hero__decor-image hero__decor-image_1" src="<?php bloginfo('template_url') ?>/assets/images/decor-left.png" alt="" aria-hidden="true"></picture><picture><source type="image/avif" srcset="<?php bloginfo('template_url') ?>/assets/images/decor-right.avif"><source type="image/webp" srcset="<?php bloginfo('template_url') ?>/assets/images/decor-right.webp"><img class="decor-image hero__decor-image hero__decor-image_2" src="<?php bloginfo('template_url') ?>/assets/images/decor-right.png" alt="" aria-hidden="true"></picture><div class="hero__row"><div class="container hero__container"><div class="hero__content"><h2 class="hero-title"><span class="hero-title__top"><b class="marker"><?php the_field('hero_text_top_bold') ?></b> <?php the_field('hero_text_top_default') ?></span><span class="hero-title__bottom"><?php the_field('hero_text_bottom_bold') ?></span></h2><a class="orange-gradient-btn hero__button" href="#services"><span class="orange-gradient-btn__inner hero__button-inner"> <?php the_field('hero_action_btn_text') ?> </span></a></div></div></div></section><section id="benefits" class="benefits"><div class="benefits__row"><div class="container"><div class="benefits__line"><ul class="benefits-list"><li class="benefit"><div class="benefit__header"><img class="benefit__icon" src="<?php bloginfo('template_url') ?>/assets/images/icons/benefit-1.svg" alt="" aria-hidden="true"> <span class="benefit__title"><?php the_field('first_benefit_title') ?></span></div><div class="benefit__content"><p class="benefit__text"> <?php the_field('first_benefit_description') ?> </p></div></li><li class="benefit"><div class="benefit__header"><img class="benefit__icon" src="<?php bloginfo('template_url') ?>/assets/images/icons/benefit-2.svg" alt="" aria-hidden="true"> <span class="benefit__title"><?php the_field('second_benefit_title') ?></span></div><div class="benefit__content"><p class="benefit__text"> <?php the_field('second_benefit_description') ?> </p></div></li><li class="benefit"><div class="benefit__header"><img class="benefit__icon" src="<?php bloginfo('template_url') ?>/assets/images/icons/benefit-3.svg" alt="" aria-hidden="true"> <span class="benefit__title"><?php the_field('third_benefit_title') ?></span></div><div class="benefit__content"><p class="benefit__text"> <?php the_field('third_benefit_description') ?> </p></div></li></ul></div></div></div></section><section id="services" class="services"><div class="services__row"><div class="container"><h2 class="section-title services__title"><?php the_field('service_default_title') ?> <b class="marker"><?php the_field('service_bold_title') ?></b></h2><div class="services__content"> <?php 
              $sub_cats = get_categories( array(
                'taxonomy' => 'services_types',
                'hide_empty' => 0
              ) );

              if ($sub_cats):
                foreach ($sub_cats as $cat):
                  $category_name = $cat->name;
              ?> <div class="services-block"> <?php
                  
                  ?> <span class="services-block__title"><?php echo $category_name ?></span><div class="services-block__grid"><ul class="services-block-list" data-list="<?php echo $category_name ?>"> <?php
                        global $post;

                        $myposts = get_posts([
                          'post_type' => 'services',
                          'services_types' => $cat->slug,
                          'numberposts' => -1,
                          'order' => 'ASC'
                        ]);

                      if( $myposts ):
                        foreach( $myposts as $post ):
                          setup_postdata( $post );
                          ?> <li class="tilt-card service"><article class="service__inner"><div class="service__image-block"><img class="service__image lazy" src="#" data-src="<?php the_post_thumbnail_url() ?>" alt="<?php the_title() ?>"></div><div class="service__content-block"><h3 class="service__title"><?php the_title() ?></h3> <?php the_content() ?> <div class="service__bottom"><span class="service__price"><?php the_field('service_price') ?> руб.</span> <button class="btn-blue service__action order-action trigger" type="button" data-service-name="<?php the_title() ?>" data-trigger-result-selector=".order-modal" <?php 
                                    
                                    if (!empty($_COOKIE['orderSended'])) {
                                      echo 'disabled';
                                    }

                                    ?> <?php
                              
                                    if (empty($_COOKIE['orderSended'])) {
                                      echo 'title="Вы уже оформили запись"';
                                    }

                                    ?> >Записаться</button></div></div></article></li> <?php endforeach; wp_reset_postdata(); endif; ?> </ul><div class="services-block__bottom"><button class="orange-gradient-btn services__more-btn js-show-more" type="button" data-load-selector="[data-list='<?php echo $category_name ?>']"><span class="orange-gradient-btn__inner js-show-more__inner">Показать ещё</span></button></div></div></div> <?php endforeach; endif; ?> </div></div></div></section><section id="team" class="team"><div class="team__row"><div class="container team__container"><picture><source type="image/avif" srcset="<?php bloginfo('template_url') ?>/assets/images/decor-center.avif"><source type="image/webp" srcset="<?php bloginfo('template_url') ?>/assets/images/decor-center.webp"><img class="decor-image team__decor-image team__decor-image_1 lazy" src="<?php bloginfo('template_url') ?>/assets/images/decor-center.png" alt="" aria-hidden="true"></picture><h2 class="section-title team__title"><?php the_field('team_default_title') ?> <b class="marker"><?php the_field('team_bold_title') ?></b></h2><div class="slider team-slider team__content"><div class="swiper team-slider__outer"><ul class="swiper-wrapper team-list"> <?php
                global $post;
  
                $myposts = get_posts([ 
                  'post_type' => 'employees',
                  'order' => 'ASC',
                  'numberposts' => -1
                ]);
  
                if( $myposts ):
                  foreach( $myposts as $post ):
                    setup_postdata( $post );

                    $positions = wp_get_post_terms($post->ID, 'employees_types'); // Должности
                    ?> <li class="swiper-slide tilt-card team-member"><div class="team-member__inner"><div class="team-member__photo-block"><img class="team-member__photo lazy" src="#" data-src="<?php the_post_thumbnail_url() ?>" alt="<?php the_title() ?>"></div><div class="team-member__info"><div class="team-member__info-top"><span class="team-member__name"><?php the_title() ?></span><span class="team-member__position"> <?php 
                                if (count($positions) > 1) {
                                  foreach($positions as $position) {
                                    echo $position->name . '<br>';
                                  }
                                } else {
                                  echo $positions[0]->name;
                                }
                              ?> </span></div><div class="team-member__info-middle"> <?php the_content() ?> </div><div class="team-member__info-bottom"><button class="btn-blue team-member__action order-action trigger" type="button" data-trigger-result-selector=".order-modal" data-employer-id="<?php echo $post->ID ?>" <?php
                              
                              if (!empty($_COOKIE['orderSended'])) {
                                echo 'disabled';
                              }

                              ?> <?php
                              
                              if (empty($_COOKIE['orderSended'])) {
                                echo 'title="Вы уже оформили запись"';
                              }

                              ?> >Записаться</button></div></div></div></li> <?php 
                  endforeach; wp_reset_postdata(); endif;  ?> </ul></div><div class="slider__nav team-slider__nav"><button class="slider__nav-btn slider__nav-btn_prev team-slider__nav-btn_prev" type="button"><img class="slider__nav-btn-image team-slider__nav-btn-image" src="<?php bloginfo('template_url') ?>/assets/images/icons/arrow-prev.svg" alt="" aria-hidden="true"></button> <button class="slider__nav-btn slider__nav-btn_next team-slider__nav-btn_next" type="button"><img class="slider__nav-btn-image team-slider__nav-btn-image" src="<?php bloginfo('template_url') ?>/assets/images/icons/arrow-next.svg" alt="" aria-hidden="true"></button></div></div></div></div></section><section id="reviews" class="reviews"><div class="reviews__row"><div class="container"><h2 class="visually-hidden">Отзывы</h2><div class="reviews__line"><div class="reviews-block reviews-photos"><div class="reviews-block__header"><span class="reviews-block__title"><b class="marker"><?php the_field('photoreviews_title_bold') ?></b><?php the_field('photoreviews_title_default') ?> </span><a class="reviews-block__link" href="<?php the_field('photoreviews_link_href') ?>" target="_blank"><?php the_field('photoreviews_link_text') ?></a></div><div class="reviews-photos__grid"> <?php
                  global $post;

                  $myposts = get_posts([ 
                    'post_type' => 'reviews',
                    'reviews_types' => 'photoreviews',
                    'numberposts' => 4,
                    'order' => 'DESC'
                  ]);
                  
                  if( $myposts ):
                    foreach( $myposts as $post ):
                      setup_postdata( $post );
                      ?> <button data-caption="<?php echo the_content(); ?>" data-fancybox="photoreviews" data-src="<?php the_post_thumbnail_url() ?>" type="button" class="reviews-photos__block"><img class="reviews-photos__photo lazy" src="#" data-src="<?php the_post_thumbnail_url() ?>" alt="<?php the_title() ?>"> <span class="media-zoom"><svg aria-hidden="true" width="50" height="50" viewBox="0 0 50 50" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M37.5659 34.6188L46.4888 43.5397L43.5409 46.4876L34.62 37.5647C31.3008 40.2255 27.1721 41.6728 22.918 41.6667C12.568 41.6667 4.16797 33.2667 4.16797 22.9167C4.16797 12.5667 12.568 4.16675 22.918 4.16675C33.268 4.16675 41.668 12.5667 41.668 22.9167C41.674 27.1709 40.2268 31.2995 37.5659 34.6188ZM33.3867 33.073C36.0307 30.354 37.5073 26.7093 37.5013 22.9167C37.5013 14.8605 30.9742 8.33341 22.918 8.33341C14.8617 8.33341 8.33463 14.8605 8.33463 22.9167C8.33463 30.973 14.8617 37.5001 22.918 37.5001C26.7105 37.506 30.3552 36.0295 33.0742 33.3855L33.3867 33.073ZM20.8346 20.8334V14.5834H25.0013V20.8334H31.2513V25.0001H25.0013V31.2501H20.8346V25.0001H14.5846V20.8334H20.8346Z" fill="#f4ca90"/></svg></span></button> <?php endforeach; endif; wp_reset_postdata(); ?> </div></div><div class="reviews-block reviews-text"><div class="reviews-block__header"><span class="reviews-block__title"><b class="marker"><?php the_field('textreviews_title_bold') ?></b><?php the_field('textreviews_title_default') ?> </span><a class="reviews-block__link" href="<?php the_field('textreviews_link_href') ?>" target="_blank"><?php the_field('textreviews_link_text') ?></a></div><ul class="reviews-text__list"> <?php
                  global $post;

                  $myposts = get_posts([ 
                    'numberposts' => 3,
                    'post_type' => 'reviews',
                    'reviews_types' => 'textreviews',
                    'orderby' => 'meta_value_num',
                    'order' => 'DESC',
                    'meta_key' => 'textreview_stars_number',
                  ]);
                  
                  if( $myposts ):
                    foreach( $myposts as $post ):
                      setup_postdata( $post );
                      ?> <li class="review"><article class="review__inner"><h3 class="visually-hidden">Отзыв от <?php the_title() ?></h3><header class="review__header"><div class="review__info"><address class="review__author"><?php the_title() ?></address><div class="review__about"><span class="review__time"><?php the_field('textreview_datetime') ?></span> <?php 
                                  $textreview_place = get_field('textreview_place');

                                  if ($textreview_place):
                                ?> <span class="review__place">г. <?php echo $textreview_place ?></span> <?php endif; ?> </div></div> <?php 
                              $fill_stars_num = intval(get_field('textreview_stars_number'));

                              if ($fill_stars_num > 0):
                            ?> <ul class="raiting"> <?php
                                  $all_stars_num = 5;
                                  $empty_stars_num = $all_stars_num - $fill_stars_num;

                                  for ($i = 0; $i < $fill_stars_num; $i++):
                                ?> <li class="raiting__item"><svg class="raiting__star raiting__star_filled" aria-hidden="true" width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M7.20703 1.24219L5.42969 4.87891L1.41016 5.45312C0.699219 5.5625 0.425781 6.4375 0.945312 6.95703L3.81641 9.77344L3.13281 13.7383C3.02344 14.4492 3.78906 14.9961 4.41797 14.668L8 12.7812L11.5547 14.668C12.1836 14.9961 12.9492 14.4492 12.8398 13.7383L12.1562 9.77344L15.0273 6.95703C15.5469 6.4375 15.2734 5.5625 14.5625 5.45312L10.5703 4.87891L8.76562 1.24219C8.46484 0.613281 7.53516 0.585938 7.20703 1.24219Z"/></svg></li> <?php 
                                  endfor;
                                  for ($i = 0; $i < $empty_stars_num; $i++):
                                ?> <li class="raiting__item"><svg class="raiting__star" aria-hidden="true" width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M7.20703 1.24219L5.42969 4.87891L1.41016 5.45312C0.699219 5.5625 0.425781 6.4375 0.945312 6.95703L3.81641 9.77344L3.13281 13.7383C3.02344 14.4492 3.78906 14.9961 4.41797 14.668L8 12.7812L11.5547 14.668C12.1836 14.9961 12.9492 14.4492 12.8398 13.7383L12.1562 9.77344L15.0273 6.95703C15.5469 6.4375 15.2734 5.5625 14.5625 5.45312L10.5703 4.87891L8.76562 1.24219C8.46484 0.613281 7.53516 0.585938 7.20703 1.24219Z"/></svg></li> <?php endfor; ?> </ul> <?php endif; ?> </header><p class="review__text"> <?php the_content() ?> </p></article></li> <?php endforeach; endif; wp_reset_postdata(); ?> </ul></div></div></div></div></section><section id="our-works" class="our-works"><div class="our-works__row"><div class="container our-works__container"><picture><source type="image/avif" srcset="#" data-srcset="<?php bloginfo('template_url') ?>/assets/images/decor-flower-1.avif"><source type="image/webp" srcset="#" data-srcset="<?php bloginfo('template_url') ?>/assets/images/decor-flower-1.webp"><img class="lazy decor-image our-works__decor-image our-works__decor-image_1" src="#" data-src="<?php bloginfo('template_url') ?>/assets/images/decor-flower-1.png" alt="" aria-hidden="true"></picture><picture><source type="image/avif" srcset="#" data-srcset="<?php bloginfo('template_url') ?>/assets/images/decor-flower-2.avif"><source type="image/webp" srcset="#" data-srcset="<?php bloginfo('template_url') ?>/assets/images/decor-flower-2.webp"><img class="lazy decor-image our-works__decor-image our-works__decor-image_2" src="#" data-src="<?php bloginfo('template_url') ?>/assets/images/decor-flower-2.png" alt="" aria-hidden="true"></picture><h2 class="section-title our-works__title"> <?php the_field('works_default_title') ?> <b class="marker"><?php the_field('works_bold_title') ?></b></h2><div class="our-works__content"> <?php
              global $post;

              $myposts = get_posts([
                'post_type' => 'portfolio_works',
                'order' => 'ASC',
                'numberposts' => -1,
              ]);
              
              if( $myposts ):
                foreach( $myposts as $post ):
                  setup_postdata( $post );
                  ?> <button class="work" data-caption="<?php the_title() ?>" data-fancybox="our-works-photos" data-src="<?php the_post_thumbnail_url() ?>"><img class="work__image lazy" src="#" data-src="<?php the_post_thumbnail_url() ?>" alt="<?php the_title() ?>"><div class="work__info"><div class="work__head"><span class="work__title"><?php the_title() ?></span></div><div class="work__middle"><span class="media-zoom" title="Рассмотреть"><svg aria-hidden="true" width="50" height="50" viewBox="0 0 50 50" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M37.5659 34.6188L46.4888 43.5397L43.5409 46.4876L34.62 37.5647C31.3008 40.2255 27.1721 41.6728 22.918 41.6667C12.568 41.6667 4.16797 33.2667 4.16797 22.9167C4.16797 12.5667 12.568 4.16675 22.918 4.16675C33.268 4.16675 41.668 12.5667 41.668 22.9167C41.674 27.1709 40.2268 31.2995 37.5659 34.6188ZM33.3867 33.073C36.0307 30.354 37.5073 26.7093 37.5013 22.9167C37.5013 14.8605 30.9742 8.33341 22.918 8.33341C14.8617 8.33341 8.33463 14.8605 8.33463 22.9167C8.33463 30.973 14.8617 37.5001 22.918 37.5001C26.7105 37.506 30.3552 36.0295 33.0742 33.3855L33.3867 33.073ZM20.8346 20.8334V14.5834H25.0013V20.8334H31.2513V25.0001H25.0013V31.2501H20.8346V25.0001H14.5846V20.8334H20.8346Z" fill="#f4ca90"/></svg></span></div><div class="work__bottom"><div class="work__description"><?php the_content() ?></div><span class="work__price"> <?php
                                $work_price = get_field('work_item_price');

                                if ($work_price) {
                                echo "$work_price руб.";
                                }
                            ?> </span></div></div></button> <?php endforeach; wp_reset_postdata(); endif; ?> </div></div></div></section><section id="questions" class="questions"><div class="questions__row"><div class="container"><h2 class="section-title questions__title"><?php the_field('questions_default_title') ?> <b class="marker"><?php the_field('questions_bold_title') ?></b></h2><div class="questions__content"><ul class="questions-list"> <?php 
                global $post;

                $myposts = get_posts([
                  'post_type' => 'questions',
                  'numberposts' => -1,
                  'order' => 'ASC'
                ]);
                
                if( $myposts ):
                  foreach( $myposts as $post ):
                    setup_postdata( $post );
                    ?> <li class="question"><button class="question__inner" type="button" aria-expanded="false" aria-controls="question__answer"><span class="question__title"><?php the_title() ?></span><img class="question__icon" src="<?php bloginfo('template_url') ?>/assets/images/icons/question-circle.svg" alt="" aria-hidden="true"></button><div class="question__answer" aria-hidden="true"><div class="question__answer-text"> <?php the_content() ?> </div></div></li> <?php endforeach; wp_reset_postdata(); endif; ?> </ul></div></div></div></section><section id="documents" class="documents"><div class="documents__row"><div class="container"><h2 class="section-title documents__title"> <?php the_field('documents_default_title') ?> <b class="marker"><?php the_field('documents_bold_title') ?></b></h2><p class="section-subtitle documents__subtitle">Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?</p><div class="documents__content"><div class="slider documents-slider"><div class="swiper documents-slider__inner"><div class="swiper-wrapper documents-slider__wrapper"> <?php
                    global $post;

                    $myposts = get_posts([
                      'post_type' => 'documents',
                      'order' => 'DESC',
                      'numberposts' => -1
                    ]);

                    if ($myposts):
                      foreach($myposts as $post):
                        setup_postdata( $post )
                  ?> <button type="button" data-fancybox="documents-photos" data-src="<?php the_post_thumbnail_url() ?>" data-caption="<?php the_title(); ?>" class="swiper-slide documents-slider__slide"><img class="documents-slider__slide-image lazy" data-src="<?php the_post_thumbnail_url() ?>" href="<?php the_post_thumbnail_url() ?>" alt="<?php the_title() ?>"></button> <?php endforeach; wp_reset_postdata(); endif; ?> </div></div><div class="slider__nav documents-slider__nav"><button class="slider__nav-btn slider__nav-btn_prev documents-slider__nav-btn documents-slider__nav-btn_prev" type="button"><img class="slider__nav-btn-image documents-slider__nav-btn-image" src="<?php bloginfo('template_url') ?>/assets/images/icons/arrow-prev.svg" alt="" aria-hidden="true"></button> <button class="slider__nav-btn slider__nav-btn_next documents-slider__nav-btn documents-slider__nav-btn_next" type="button"><img class="slider__nav-btn-image documents-slider__nav-btn-image" src="<?php bloginfo('template_url') ?>/assets/images/icons/arrow-next.svg" alt="" aria-hidden="true"></button></div></div></div></div></div></section><section id="contacts" class="contacts"><div class="contacts__row"><div class="container"><h2 class="section-title contacts__title"><?php the_field('contacts_default_title') ?> <b class="marker"><?php the_field('contacts_bold_title') ?></b></h2><p class="section-subtitle contacts__subtitle"><?php the_field('contacts_subtitle') ?></p><div class="contacts__content"><div class="contacts__map-wrapper"><picture><source type="image/avif" srcset="<?php bloginfo('template_url') ?>/assets/images/decor-center.avif"><source type="image/webp" srcset="<?php bloginfo('template_url') ?>/assets/images/decor-center.webp"><img class="decor-image contacts__map-decor-image contacts__map-decor-image_1 lazy" src="<?php bloginfo('template_url') ?>/assets/images/decor-center.png" alt="" aria-hidden="true"></picture><picture><source type="image/avif" srcset="<?php bloginfo('template_url') ?>/assets/images/decor-center.avif"><source type="image/webp" srcset="<?php bloginfo('template_url') ?>/assets/images/decor-center.webp"><img class="decor-image contacts__map-decor-image contacts__map-decor-image_2 lazy" src="<?php bloginfo('template_url') ?>/assets/images/decor-center.png" alt="" aria-hidden="true"></picture> <?php 
                $map_script = get_field('map_constructor');
                
                if ($map_script) {
                  echo $map_script;
                } else {
              ?> <div id="map"></div><script>ymaps.ready(init);
                  function init(){
                    const mapOpts = {
                      latitude: <?php the_field('map_latitude') ?>,
                      longitude: <?php the_field('map_longitude') ?>,
                      balloonText: '<?php the_field('balloon_text') ?>',
                      hintText: '<?php the_field('hint_text') ?>',
                    };

                    const myMap = new ymaps.Map("map", {
                      center: [mapOpts.latitude, mapOpts.longitude],
                      zoom: 17
                    });
                    myMap.geoObjects.add(new ymaps.Placemark([mapOpts.latitude, mapOpts.longitude], {
                      balloonContent: mapOpts.balloonText,
                      hintContent: mapOpts.hintText,
                    }, {
                      preset: 'islands#dotIcon',
                      iconColor: '#177BC9'
                    }));
                    myMap.controls.remove('zoomControl');
                    myMap.controls.remove('trafficControl');
                    myMap.controls.remove('geolocationControl');
                    myMap.controls.remove('rulerControl');
                  }</script> <?php }?> </div><div class="contacts__info"><article class="tilt-card info-block"><h3 class="info-block__title"> <?php the_field('contacts_fields_title') ?> </h3><address class="info-block__info"><span class="info-block__item"> <?php the_field('studio_address') ?> </span><span class="info-block__item"> <?php the_field('contacts_schedule') ?> </span><span class="info-block__item"> <?php the_field('contacts_tel_nums') ?> </span><a class="info-block__item blue" href="mailto:<?php the_field('contacts_email') ?>"> <?php the_field('contacts_email') ?> </a></address></article><article class="tilt-card info-block"><h3 class="info-block__title"> <?php the_field('contacts_info_title') ?> </h3><p class="info-block__text"> <?php the_field('contacts_info_text') ?> </p></article></div><ul class="contacts__social social-list"> <?php 
                $vk_href = get_field('vk_href');

                if ($vk_href):
              ?> <li class="social-list__item"><a class="social-list__item" href="<?= $vk_href ?>" target="_blank" title="<?php bloginfo('title') ?> в ВКонтакте"><svg class="social-list__icon" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 215 215"><g id="VK"><path fill="#07f" d="M0,103.2c0-48.65,0-73,15.11-88.09S54.55,0,103.2,0h8.6c48.65,0,73,0,88.09,15.11S215,54.55,215,103.2v8.6c0,48.65,0,73-15.11,88.09S160.45,215,111.8,215h-8.6c-48.65,0-73,0-88.09-15.11S0,160.45,0,111.8Z"/><path fill="#fff" id="VK-2" data-name="VK" class="cls-2" d="M112,151c-45.86,0-72-31.44-73.1-83.75h23c.75,38.4,17.69,54.66,31.1,58v-58h21.63v33.12c13.24-1.43,27.16-16.52,31.85-33.12h21.63c-3.6,20.46-18.69,35.55-29.42,41.75,10.73,5,27.91,18.19,34.45,42H149.29C144.18,135,131.44,122.7,114.59,121V151Z"/></g></svg></a></li> <?php endif ?> <?php
                $tg_href = get_field('tg_href');

                if ($tg_href):
              ?> <li class="social-list__item"><a class="social-list__item" href="<?= $tg_href ?>" target="_blank" title="<?php bloginfo('title') ?> в Telegram"><svg class="social-list__icon" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 215 215"><defs><linearGradient id="Безымянный_градиент_3" x1="554" y1="107.5" x2="769" y2="107.5" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="#2aabee"/><stop offset="1" stop-color="#229ed9"/></linearGradient></defs><g id="Telegram"><path fill="url(#Безымянный_градиент_3)" d="M554,103.2c0-48.65,0-73,15.11-88.09S608.55,0,657.2,0h8.6c48.65,0,73,0,88.09,15.11S769,54.55,769,103.2v8.6c0,48.65,0,73-15.11,88.09S714.45,215,665.8,215h-8.6c-48.65,0-73,0-88.09-15.11S554,160.45,554,111.8Z" transform="translate(-554)"/><path fill="#fff" id="Telegram-2" data-name="Telegram" d="M598.29,105q51.57-22.47,68.78-29.63c32.76-13.63,39.56-16,44-16.07a7.7,7.7,0,0,1,4.57,1.37,5,5,0,0,1,1.68,3.19,21,21,0,0,1,.2,4.65c-1.78,18.65-9.46,63.91-13.37,84.79-1.65,8.84-4.9,11.81-8.06,12.1-6.85.63-12.05-4.53-18.68-8.88-10.38-6.8-16.25-11-26.32-17.68-11.65-7.67-4.1-11.89,2.54-18.78,1.74-1.81,31.91-29.26,32.5-31.75a2.41,2.41,0,0,0-.55-2.08,2.68,2.68,0,0,0-2.44-.24q-1.56.36-49.75,32.88-7.07,4.86-12.79,4.73c-4.22-.09-12.32-2.38-18.34-4.34-7.38-2.4-13.25-3.67-12.74-7.75Q589.91,108.31,598.29,105Z" transform="translate(-554)"/></g></svg></a></li> <?php endif ?> <?php
                $ok_href = get_field('tg_href');

                if ($ok_href):
              ?> <li class="social-list__item"><a class="social-list__item" href="<?= $ok_href ?>" target="_blank" title="<?php bloginfo('title') ?> в Одноклассниках"><svg class="social-list__icon" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 215 215"><g id="Ok"><path fill="#ee8208" d="M831,657.2c0-48.65,0-73,15.11-88.09S885.55,554,934.2,554h8.6c48.65,0,73,0,88.09,15.11S1046,608.55,1046,657.2v8.6c0,48.65,0,73-15.11,88.09S991.45,769,942.8,769h-8.6c-48.65,0-73,0-88.09-15.11S831,714.45,831,665.8Z" transform="translate(-831 -554)"/><g id="Ok-2" data-name="Ok"><path id="Ok-3" data-name="Ok" fill="#fff" d="M938.45,665.08a32.79,32.79,0,1,0-32.79-32.79,32.84,32.84,0,0,0,32.79,32.79m0-46.4a13.61,13.61,0,1,1-13.6,13.61,13.61,13.61,0,0,1,13.6-13.61" transform="translate(-831 -554)"/><path fill="#fff" id="Ok-4" data-name="Ok" d="M951.75,691.78a61.26,61.26,0,0,0,19.09-7.92,9.65,9.65,0,1,0-10.26-16.34,41.76,41.76,0,0,1-44.16,0,9.65,9.65,0,0,0-10.26,16.34,60.29,60.29,0,0,0,19.09,7.92l-18.37,18.38a9.61,9.61,0,0,0,0,13.6,9.93,9.93,0,0,0,6.8,2.84,9.37,9.37,0,0,0,6.8-2.84l18.07-18.07,18.07,18.07a9.62,9.62,0,0,0,13.61-13.6Z" transform="translate(-831 -554)"/></g></g></svg></a></li> <?php endif ?> <?php 
                $whatsapp_href = get_field('whatsapp_href');

                if ($whatsapp_href):
              ?> <li class="social-list__item"><a class="social-list__item" href="<?= $whatsapp_href ?>" target="_blank" title="<?php bloginfo('title') ?> в WhatsApp"><svg class="social-list__icon" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 215 215"><g id="WhatsApp"><path fill="#25d366" d="M831,103.2c0-48.65,0-73,15.11-88.09S885.55,0,934.2,0h8.6c48.65,0,73,0,88.09,15.11S1046,54.55,1046,103.2v8.6c0,48.65,0,73-15.11,88.09S991.45,215,942.8,215h-8.6c-48.65,0-73,0-88.09-15.11S831,160.45,831,111.8Z" transform="translate(-831)"/><g id="WhatsApp-2" data-name="WhatsApp"><path id="WhatsApp-3" data-name="WhatsApp" fill="#fff" d="M880.57,166.37l8.3-30.32a58.51,58.51,0,1,1,50.7,29.3h0a58.38,58.38,0,0,1-27.95-7.12ZM913,147.64l1.78,1.05a48.5,48.5,0,0,0,24.75,6.78h0a48.62,48.62,0,1,0-41.2-22.79l1.16,1.84-4.91,17.95Z" transform="translate(-831)"/><path id="WhatsApp-4" data-name="WhatsApp" fill="#fff" fill-rule="evenodd" d="M969,120.76c-.36-.61-1.34-1-2.8-1.71s-8.65-4.27-10-4.75-2.31-.74-3.29.73-3.77,4.75-4.63,5.73-1.7,1.1-3.16.37a40.29,40.29,0,0,1-11.76-7.26,44.05,44.05,0,0,1-8.13-10.13c-.85-1.46-.09-2.25.64-3s1.46-1.71,2.19-2.56a10,10,0,0,0,1.46-2.44,2.67,2.67,0,0,0-.12-2.56c-.36-.73-3.29-7.93-4.5-10.86s-2.4-2.46-3.29-2.51-1.83,0-2.81,0A5.38,5.38,0,0,0,915,81.61a16.41,16.41,0,0,0-5.12,12.2c0,7.19,5.24,14.14,6,15.12s10.31,15.74,25,22.07a81.77,81.77,0,0,0,8.34,3.08,19.86,19.86,0,0,0,9.2.58c2.81-.42,8.65-3.53,9.87-7S969.41,121.37,969,120.76Z" transform="translate(-831)"/></g></g></svg></a></li> <?php endif ?> <?php
                $youtube_href = get_field('youtube_href');

                if ($youtube_href):
              ?> <li class="social-list__item"><a class="social-list__item" href="<?= $youtube_href ?>" target="_blank" title="<?php bloginfo('title') ?> в YouTube"><svg class="social-list__icon" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 215 215"><g id="YouTube"><path fill="#f00" d="M1385,380.2c0-48.65,0-73,15.11-88.09S1439.55,277,1488.2,277h8.6c48.65,0,73,0,88.09,15.11S1600,331.55,1600,380.2v8.6c0,48.65,0,73-15.11,88.09S1545.45,492,1496.8,492h-8.6c-48.65,0-73,0-88.09-15.11S1385,437.45,1385,388.8Z" transform="translate(-1385 -277)"/><path id="YouTube-2" data-name="YouTube" fill="#fff" d="M1550.87,354.5A15.34,15.34,0,0,0,1540,343.66c-9.56-2.56-47.89-2.56-47.89-2.56s-38.33,0-47.89,2.56a15.36,15.36,0,0,0-10.84,10.84c-2.56,9.56-2.56,29.5-2.56,29.5s0,19.94,2.56,29.5a15.36,15.36,0,0,0,10.84,10.84c9.56,2.56,47.89,2.56,47.89,2.56s38.33,0,47.89-2.56a15.34,15.34,0,0,0,10.83-10.84c2.56-9.56,2.56-29.5,2.56-29.5S1553.43,364.06,1550.87,354.5Zm-71,47.89V365.61L1511.73,384Z" transform="translate(-1385 -277)"/></g></svg></a></li> <?php endif ?> <?php 
                $dzen_href = get_field('dzen_href');

                if ($dzen_href):
              ?> <li class="social-list__item"><a class="social-list__item" href="<?= $dzen_href ?>" target="_blank" title="<?php bloginfo('title') ?> в Яндекс Дзен"><svg class="social-list__icon" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 215 215"><g id="Дзен"><path fill="#000" d="M277,934.2c0-48.65,0-73,15.11-88.09S331.55,831,380.2,831h8.6c48.65,0,73,0,88.09,15.11S492,885.55,492,934.2v8.6c0,48.65,0,73-15.11,88.09S437.45,1046,388.8,1046h-8.6c-48.65,0-73,0-88.09-15.11S277,991.45,277,942.8Z" transform="translate(-277 -831)"/><path id="Дзен-2" data-name="Дзен" fill="#fff" fill-rule="evenodd" d="M382.18,865.17c-.37,29.69-2.39,46.38-13.52,57.52s-27.8,13.16-57.47,13.53v4.39c29.67.37,46.34,2.4,57.47,13.53s13.15,27.83,13.52,57.52h4.39c.37-29.69,2.39-46.38,13.52-57.52s27.8-13.16,57.46-13.53v-4.39c-29.66-.37-46.34-2.4-57.46-13.53s-13.15-27.83-13.52-57.52Z" transform="translate(-277 -831)"/></g></svg></a></li> <?php endif ?> </ul></div></div></div></section></main><div class="popup trigger-result popup-footer-form"><div class="trigger-result__content popup__content"><button class="close popup-close" type="button" aria-label="закрыть уведомление об отправке формы"><span class="popup-close__inner"><svg class="popup-close__icon" aria-hidden="true" width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M2.93179 17.07C1.97669 16.1475 1.21486 15.044 0.690774 13.824C0.166684 12.604 -0.109178 11.2918 -0.120716 9.96397C-0.132254 8.63618 0.120763 7.31938 0.623572 6.09042C1.12638 4.86145 1.86891 3.74493 2.80784 2.80601C3.74677 1.86708 4.86328 1.12455 6.09225 0.62174C7.32121 0.118932 8.63801 -0.134085 9.9658 -0.122547C11.2936 -0.111009 12.6058 0.164853 13.8258 0.688943C15.0459 1.21303 16.1493 1.97486 17.0718 2.92996C18.8934 4.81598 19.9013 7.342 19.8785 9.96397C19.8557 12.5859 18.8041 15.0941 16.95 16.9481C15.0959 18.8022 12.5878 19.8539 9.9658 19.8767C7.34383 19.8995 4.81781 18.8915 2.93179 17.07ZM11.4018 9.99996L14.2318 7.16996L12.8218 5.75996L10.0018 8.58996L7.17179 5.75996L5.76179 7.16996L8.59179 9.99996L5.76179 12.83L7.17179 14.24L10.0018 11.41L12.8318 14.24L14.2418 12.83L11.4118 9.99996H11.4018Z" fill="black"/></svg></span></button><h3 class="popup__title">Форма успешно отправлена!</h3><p class="popup__descr">Следующая отправка формы будет доступна через 12 часов.</p><button class="orange-gradient-btn accept popup__accept" type="button"><span class="orange-gradient-btn__inner popup__accept-inner">Понятно</span></button></div></div> <?php 
    if (empty($_COOKIE['orderSended'])):
  ?> <div class="modal trigger-result order-modal"><div class="modal__row"><div class="container modal__container"><div class="trigger-result__content modal__content"><button class="close modal-close" type="button"><span class="modal-close__inner"><svg class="modal-close__icon" aria-hidden="true" width="25" height="25" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M2.93179 17.07C1.97669 16.1475 1.21486 15.044 0.690774 13.824C0.166684 12.604 -0.109178 11.2918 -0.120716 9.96397C-0.132254 8.63618 0.120763 7.31938 0.623572 6.09042C1.12638 4.86145 1.86891 3.74493 2.80784 2.80601C3.74677 1.86708 4.86328 1.12455 6.09225 0.62174C7.32121 0.118932 8.63801 -0.134085 9.9658 -0.122547C11.2936 -0.111009 12.6058 0.164853 13.8258 0.688943C15.0459 1.21303 16.1493 1.97486 17.0718 2.92996C18.8934 4.81598 19.9013 7.342 19.8785 9.96397C19.8557 12.5859 18.8041 15.0941 16.95 16.9481C15.0959 18.8022 12.5878 19.8539 9.9658 19.8767C7.34383 19.8995 4.81781 18.8915 2.93179 17.07ZM11.4018 9.99996L14.2318 7.16996L12.8218 5.75996L10.0018 8.58996L7.17179 5.75996L5.76179 7.16996L8.59179 9.99996L5.76179 12.83L7.17179 14.24L10.0018 11.41L12.8318 14.24L14.2418 12.83L11.4118 9.99996H11.4018Z" fill="black"/></svg></span></button><div class="modal__header"><span class="modal__title"><?php the_field('order_default_title', 322) ?> <b class="marker"><?php the_field('order_bold_title', 322) ?></b></span></div> <?php 
            global $post;
                        
            $myposts = get_posts([ 
              'post_type' => 'employees',
              'order' => 'ASC',
              'numberposts' => -1,
            ]);

            $query = new WP_Query(array(
              'post_type' => 'services',

            ));
            $all_services = $query->posts;
            $prices = [];
            foreach ($all_services as $service) {
              $meta = get_post_meta($service->ID);
              $prices[$service->post_title] = [
                'service_price' => $meta['service_price'][0]
              ];
            }
            $prices_json = htmlspecialchars(json_encode($prices, JSON_UNESCAPED_UNICODE), ENT_QUOTES, 'UTF-8');        
          ?> <form action="#" method="POST" id="modal-form" class="modal-form" data-prices=" <?php
                if ($prices_json) {
                  echo $prices_json;
                } else {
                  echo "[]";
                }
              ?> "><div class="modal-form__inner"><div class="modal-form-field"><div class="modal-form-field__header specialist-header"><span class="modal-form-field__label-text">Выберите специалиста</span><div class="modal-slider-nav"><button class="modal-slider-nav__nav-btn modal-slider-nav__nav-btn_prev modal-slider-nav-specialists__nav-btn modal-slider-nav-specialists__nav-btn_prev" type="button"><img src="<?php bloginfo('template_url') ?>/assets/images/icons/arrow-prev.svg" alt="" aria-hidden="true"></button> <button class="modal-slider-nav__nav-btn modal-slider-nav__nav-btn_next modal-slider-nav-specialists__nav-btn modal-slider-nav-specialists__nav-btn_next" type="button"><img src="<?php bloginfo('template_url') ?>/assets/images/icons/arrow-next.svg" alt="" aria-hidden="true"></button></div></div><div class="choice-slider choice-slider-specialist modal-form__slider-choice"><div class="swiper choice-slider__inner choice-slider-specialist__inner"><div class="swiper-wrapper choice-slider__wrapper"> <?php        
                        
                        if( $myposts ):
                          foreach( $myposts as $post ):
                            setup_postdata( $post );

                            $positions = wp_get_post_terms($post->ID, 'employees_types'); // Должности
                            $services_str = get_field('employees_services_list');
                            $schedule = array(
                              'monday' => array(
                                'start' => get_field('schedule_monday_start'),
                                'end' => get_field('schedule_monday_end'),
                                'is_weekend' => get_field('schedule_monday_is_weekend'),
                              ),
                              'tuesday' => array(
                                'start' => get_field('schedule_tuesday_start'),
                                'end' => get_field('schedule_tuesday_end'),
                                'is_weekend' => get_field('schedule_tuesday_is_weekend'),
                              ),
                              'wednesday' => array(
                                'start' => get_field('schedule_wednesday_start'),
                                'end' => get_field('schedule_wednesday_end'),
                                'is_weekend' => get_field('schedule_wednesday_is_weekend'),
                              ),
                              'thursday' => array(
                                'start' => get_field('schedule_thursday_start'),
                                'end' => get_field('schedule_thursday_end'),
                                'is_weekend' => get_field('schedule_thursday_is_weekend'),
                              ),
                              'friday' => array(
                                'start' => get_field('schedule_friday_start'),
                                'end' => get_field('schedule_friday_end'),
                                'is_weekend' => get_field('schedule_friday_is_weekend'),
                              ),
                              'saturday' => array(
                                'start' => get_field('schedule_saturday_start'),
                                'end' => get_field('schedule_saturday_end'),
                                'is_weekend' => get_field('schedule_saturday_is_weekend'),
                              ),
                              'sunday' => array(
                                'start' => get_field('schedule_sunday_start'),
                                'end' => get_field('schedule_sunday_end'),
                                'is_weekend' => get_field('schedule_sunday_is_weekend')
                              )              
                            );
                            $schedule_json = htmlspecialchars(json_encode($schedule, JSON_UNESCAPED_UNICODE), ENT_QUOTES, 'UTF-8');
                            ?> <button class="swiper-slide choice-slider__variation variation" type="button" data-employer-id="<?php echo $post->ID ?>" data-employeer-services="<?php
                                  if ($services_str) {
                                    $services_json = htmlspecialchars(json_encode(explode(';', $services_str), JSON_UNESCAPED_UNICODE), ENT_QUOTES, 'UTF-8');
                                    echo $services_json;
                                  } else {
                                    echo "[]";
                                  }
                                ?>" data-schedule="<?php echo $schedule_json; ?>"><span class="variation__inner"><span class="variation__photo"><img src="<?php the_post_thumbnail_url() ?>" alt="<?php the_title() ?>"> </span><span class="variation__text"><h3 class="variation__name"><?php the_title() ?></h3><span class="variation__position"> <?php
                                        if (count($positions) > 1) {
                                          foreach($positions as $position) {
                                            echo $position->name . '<br>';
                                          }
                                        } else {
                                          echo $positions[0]->name;
                                        }
                                      ?> </span></span></span></button> <?php 
                          endforeach;
                          wp_reset_postdata();
                          endif;
                        ?> </div></div></div></div><div class="modal-form-field"><div class="modal-form-field__header"><span class="modal-form-field__label-text">Введите номер телефона</span></div><div class="action-field tel-input-block modal-form-field__tel-block"><div class="action-field__inner tel-input-block__inner"><input id="user-tel" class="tel-input action-field__input tel-input-block__input" type="tel" name="service_tel"> <img class="action-field__icon datetime-select__icon" src="<?php bloginfo('template_url') ?>/assets/images/icons/tel-icon.svg" alt="" aria-hidden="true"></div></div></div><div class="modal-form-field"><div class="modal-form-field__header"><span class="modal-form-field__label-text">Выберите услугу</span></div><div class="dropdown modal-form-field__dropdown"><select id="services" class="dropdown__select" name="services"><option disabled="disabled" selected="selected">Меню выбора</option></select></div></div><div class="modal-form-field"><div class="modal-form-field__header"><span class="modal-form-field__label-text">Выберите дату и время</span></div><div class="action-field datetime-select modal-form-field__datetime-select"><div class="action-field__inner datetime-select__inner"><input readonly="readonly" id="datepicker" class="date-input datetime-select__input" type="text" name="service_datetime"> <img class="action-field__icon datetime-select__icon" src="<?php bloginfo('template_url') ?>/assets/images/icons/calendar.svg" alt="" aria-hidden="true"></div></div></div><div class="modal-form-field"><div class="modal-form-field__header"><span class="modal-form-field__label-text modal-form__result-price">Итоговая цена: <u><span class="field">требует уточнения специалиста. Валюта:</span> руб.</u></span></div></div><div class="modal-form-field submit-field"><button id="modal-form-submit" class="trigger modal-form__submit orange-gradient-btn" type="submit" data-trigger-result-selector=".access-modal"><span class="orange-gradient-btn__inner"> <?php the_field('order_submit_text', 322) ?> </span></button></div></div></form></div></div></div></div><div class="modal trigger-result access-modal"><div class="trigger-result__row modal__row"><div class="trigger-result__container modal__container"><div class="trigger-result__content modal__content access-modal__content"><button class="close modal-close access-modal__close" type="button"><span class="modal-close__inner"><svg class="modal-close__icon" aria-hidden="true" width="25" height="25" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M2.93179 17.07C1.97669 16.1475 1.21486 15.044 0.690774 13.824C0.166684 12.604 -0.109178 11.2918 -0.120716 9.96397C-0.132254 8.63618 0.120763 7.31938 0.623572 6.09042C1.12638 4.86145 1.86891 3.74493 2.80784 2.80601C3.74677 1.86708 4.86328 1.12455 6.09225 0.62174C7.32121 0.118932 8.63801 -0.134085 9.9658 -0.122547C11.2936 -0.111009 12.6058 0.164853 13.8258 0.688943C15.0459 1.21303 16.1493 1.97486 17.0718 2.92996C18.8934 4.81598 19.9013 7.342 19.8785 9.96397C19.8557 12.5859 18.8041 15.0941 16.95 16.9481C15.0959 18.8022 12.5878 19.8539 9.9658 19.8767C7.34383 19.8995 4.81781 18.8915 2.93179 17.07ZM11.4018 9.99996L14.2318 7.16996L12.8218 5.75996L10.0018 8.58996L7.17179 5.75996L5.76179 7.16996L8.59179 9.99996L5.76179 12.83L7.17179 14.24L10.0018 11.41L12.8318 14.24L14.2418 12.83L11.4118 9.99996H11.4018Z" fill="black"/></svg></span></button> <span class="modal__title access-modal__title">Подтвердите оформление</span><div class="acces-modal__btn-wrapper"><button type="button" class="trigger access-modal__button access-modal__accept orange-gradient-btn" data-trigger-result-selector=".popup-modal-form" data-form-selector='[action="/#wpcf7-f437-o1"]'><span class="orange-gradient-btn__inner">Подтвердить</span></button></div></div></div></div></div><div class="popup trigger-result popup-modal-form"><div class="trigger-result__content popup__content"><button class="close popup-close" type="button" aria-label="закрыть уведомление об отправке формы"><span class="popup-close__inner"><svg class="popup-close__icon" aria-hidden="true" width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M2.93179 17.07C1.97669 16.1475 1.21486 15.044 0.690774 13.824C0.166684 12.604 -0.109178 11.2918 -0.120716 9.96397C-0.132254 8.63618 0.120763 7.31938 0.623572 6.09042C1.12638 4.86145 1.86891 3.74493 2.80784 2.80601C3.74677 1.86708 4.86328 1.12455 6.09225 0.62174C7.32121 0.118932 8.63801 -0.134085 9.9658 -0.122547C11.2936 -0.111009 12.6058 0.164853 13.8258 0.688943C15.0459 1.21303 16.1493 1.97486 17.0718 2.92996C18.8934 4.81598 19.9013 7.342 19.8785 9.96397C19.8557 12.5859 18.8041 15.0941 16.95 16.9481C15.0959 18.8022 12.5878 19.8539 9.9658 19.8767C7.34383 19.8995 4.81781 18.8915 2.93179 17.07ZM11.4018 9.99996L14.2318 7.16996L12.8218 5.75996L10.0018 8.58996L7.17179 5.75996L5.76179 7.16996L8.59179 9.99996L5.76179 12.83L7.17179 14.24L10.0018 11.41L12.8318 14.24L14.2418 12.83L11.4118 9.99996H11.4018Z" fill="black"/></svg></span></button><h3 class="popup__title">Запись успешно оформлена!</h3><p class="popup__descr">Ожидайте звонка. Следующая отправка формы будет доступна через 12 часов.</p><button class="orange-gradient-btn accept popup__accept" type="button"><span class="orange-gradient-btn__inner popup__accept-inner">Понятно</span></button></div></div><div class="modal trigger-result error-modal access-modal"><div class="trigger-result__row modal__row"><div class="trigger-result__container modal__container"><div class="trigger-result__content modal__content access-modal__content"><button class="close modal-close access-modal__close" type="button"><span class="modal-close__inner"><svg class="modal-close__icon" aria-hidden="true" width="25" height="25" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M2.93179 17.07C1.97669 16.1475 1.21486 15.044 0.690774 13.824C0.166684 12.604 -0.109178 11.2918 -0.120716 9.96397C-0.132254 8.63618 0.120763 7.31938 0.623572 6.09042C1.12638 4.86145 1.86891 3.74493 2.80784 2.80601C3.74677 1.86708 4.86328 1.12455 6.09225 0.62174C7.32121 0.118932 8.63801 -0.134085 9.9658 -0.122547C11.2936 -0.111009 12.6058 0.164853 13.8258 0.688943C15.0459 1.21303 16.1493 1.97486 17.0718 2.92996C18.8934 4.81598 19.9013 7.342 19.8785 9.96397C19.8557 12.5859 18.8041 15.0941 16.95 16.9481C15.0959 18.8022 12.5878 19.8539 9.9658 19.8767C7.34383 19.8995 4.81781 18.8915 2.93179 17.07ZM11.4018 9.99996L14.2318 7.16996L12.8218 5.75996L10.0018 8.58996L7.17179 5.75996L5.76179 7.16996L8.59179 9.99996L5.76179 12.83L7.17179 14.24L10.0018 11.41L12.8318 14.24L14.2418 12.83L11.4118 9.99996H11.4018Z" fill="black"/></svg></span></button> <span class="modal__title access-modal__title">Ошибка отправки формы</span><div class="acces-modal__btn-wrapper"><button type="button" class="trigger error-modal__button access-modal__button access-modal__accept orange-gradient-btn"><span class="orange-gradient-btn__inner">Повторить позже</span></button></div></div></div></div></div> <?php echo do_shortcode('[contact-form-7 id="437" title="Контактная форма 2 (Модальное окно)"]') ?> <?php endif; ?> <?php get_footer(); ?>