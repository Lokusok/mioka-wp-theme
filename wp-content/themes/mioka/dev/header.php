<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?php bloginfo('title') ?> | <?php bloginfo('description') ?></title>
  <meta property="og:image" content="<?php bloginfo('template_url') ?>/assets/images/og-logo.jpg">
  <meta property="vk:image" content="<?php bloginfo('template_url') ?>/assets/images/og-logo.jpg">
  <link rel="image_src" href="<?php bloginfo('template_url') ?>/assets/images/og-logo.jpg">

  <style>
    body {
      font-family: Literal, Arial, sans-serif;
      height: 100vh;
      display: flex;
      flex-direction: column;
      overflow-x: hidden;
    }

    .container {
      max-width: 1140px;
      margin: 0 auto;
      padding: 0 15px;
    }

    :root {
      --color-accent-1: #8fadc7;
      --color-accent-2: #f4ca90;
      --color-accent-3: #f7faff;
      --color-text: #5B4A58;
    }

    /* === Шапка сайта === */
    .header {
      /* min-height: 20vh; */
      position: fixed;
      width: 100%;
      left: 0;
      top: 0;
      transition: transform ease .2s;
      z-index: 9999;
    }

    /* Header top */
    .header-top {
      background-color: var(--color-accent-1);
      color: #fff;
      transition: opacity ease .2s, visibility ease .2s;
    }

    .header-top.hidden {
      opacity: 0;
      visibility: hidden;
    }

    .header-top__row {
      padding: 10px 0;
    }

    .header-top__line {
      display: flex;
      justify-content: space-between;
      align-items: center;
      column-gap: 20px;
    }

    /* Header contacts */
    .contact-block__row {
      display: flex;
      align-items: center;
      column-gap: 10px;
      color: #fff;
      text-decoration: none;
    }

    .contact-block__row[href] {
      transition: opacity ease .2s;
    }

    .contact-block__row[href]:hover {
      opacity: .6;
    }

    .contact-block__row[href]:active {
      opacity: .3;
    }

    .contact-block__title {
      text-transform: uppercase;
      font-size: 10px;
      font-weight: 700;
    }

    .contact-block__address {
      font-size: 16px;
      font-weight: 300;
    }

    .contact-block__address .marker {
      color: var(--color-accent-2);
      font-weight: 700;
    }

    .contact-block__telephone {
      font-size: 16px;
      font-weight: 700;
      line-height: 21.5px;
    }

    .contact-block__inner {
      display: flex;
      flex-direction: column;
    }

    @media (max-width: 880px) {
      .contact-block__value {
        font-size: 12px;
        line-height: 16px;
      }
    }

    @media (max-width: 350px) {
      .contact-block__title {
        font-size: 7px;
      }

      .contact-block__value {
        font-size: 9px;
        line-height: 15px;
      }
    }

    /* Header Bottom */
    .header-bottom {
      transition: background-color ease .2s;
    }

    .header-bottom.active {
      background-color: var(--color-accent-3);
      box-shadow: 0px 3px 10px rgba(0, 0, 0, 0.15);
    }

    .header-bottom__row {
      padding-top: 10px; 
    }

    /* Navigation */
    .nav__list {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .nav__link {
      color: var(--color-accent-1);
      text-decoration: none;
      font-weight: 400;
      font-size: 14px;
      position: relative;
      overflow: hidden;
      text-transform: uppercase;
      transition: color ease .4s;
    }

    .nav__link[href]::before {
      content: "";
      position: absolute;
      width: 50%;
      height: 1px;
      background-color: currentColor;
      left: 0;
      bottom: -5px;
      left: 50%;
      transform: translate(-50%, 0);
      opacity: 0;
      transition: width ease .3s .05s, opacity ease .3s;
      pointer-events: none;
    }

    .nav__link[href]:hover::before {
      width: 100%;
      opacity: 1;
    }

    .logo-item__link::before {
      display: none;
    }

    .burger {
      display: none;
    }

    @media (max-width: 880px) {
      .nav__link {
        font-size: 10px;
      }
    }

    @media (max-width: 670px) {
      .nav__item:not(.logo-item):not(.burger) {
        display: none;
      }

      .burger {
        display: flex;
        cursor: pointer;
      }

      .burger-icon {
        margin-right: 10px;
        position: relative;
        width: 20px;
        height: 20px;
      }

      .burger-icon__line {
        display: block;
        position: absolute;
        width: 100%;
        height: 2px;
        background-color: var(--color-accent-2);
        left: 0;
        transition: transform ease .3s, opacity ease .3s;
      }

      .burger-icon__line_1 {
        top: 0;
      }

      .burger-icon__line_2 {
        top: 6px;
        width: 60%;
      }

      .burger-icon__line_3 {
        top: 12px;
      }

      .burger__title {
        color: var(--color-accent-2);
        text-transform: uppercase;
      }

      .burger.active .burger-icon__line_1 {
        transform: rotate(45deg);
        top: 6px;
      }

      .burger.active .burger-icon__line_2 {
        opacity: 0;
      }

      .burger.active .burger-icon__line_3 {
        transform: rotate(-45deg);
        top: 6px;
      }
    }

    @media (max-width: 420px) {
      .burger__title {
        font-size: 12px;
      }
    }

    /* Navigation logo */
    .nav__logo {
      width: 100px;
    }

    .logo-link {
      transition: opacity ease .2s;
    }

    .logo-link:hover {
      opacity: .6;
    }

    .logo-link:active {
      opacity: .3;
    }

    /* Dropdown */
    .dropdown {
      position: relative;
      cursor: pointer;
    }

    .dropdown::before {
      content: "";
      position: absolute;
      display: block;
      left: 0;
      bottom: 0;
      width: 100%;
      height: 10px;
      transform: translate(0, 100%);
      opacity: 0;
    }

    .dropdown__title {
      padding-right: 20px;
    }

    .dropdown__title::after {
      content: url("data:image/svg+xml,%3Csvg width='12' height='8' viewBox='0 0 12 8' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M1 1L6.00033 6L11 1' stroke='%238fadc7' stroke-width='2'/%3E%3C/svg%3E%0A");
      position: absolute;
      top: 50%;
      right: 0;
      transform: translate(0, -50%);
    }

    .dropdown__list {
      position: absolute;
      background-color: var(--color-accent-1);
      max-width: 240px;
      width: 100%;
      top: 20px;
      display: flex;
      flex-direction: column;
      transform-origin: 0 0;
      transform: rotateX(-90deg);
      transition: transform linear .3s;
    }

    .dropdown:hover > .dropdown__list {
      transform: rotateX(0);
      pointer-events: all;
    }

    .dropdown__item:not(:last-child) {
      border-bottom: 1px solid #fff;
    }

    .dropdown__link {
      color: #fff;
      white-space: nowrap;
      padding: 7px 10px;
      display: inline-block;
      transition: transform ease .2s, opacity ease .1s;
      width: 100%;
      line-height: 19px;
    }

    .dropdown__link:hover {
      transform: translate(7px, 0);
      opacity: .8;
    }

    .dropdown__link:active {
      opacity: .3;
    }

    .dropdown__link::before {
      display: none;
    }

    /* === Главный контент на странице === */
    .main {
      flex-grow: 1;
      margin-top: 20vh;
    }

    /* Hero */
    .hero {
      height: 70vh;
      max-height: 580px;
    }

    .hero__row {
      padding-top: 208px;
      padding-bottom: 240px;
      height: 100%;
    }

    .hero__container {
      height: 100%;
      display: flex;
    }

    .hero__content {
      margin: auto;
      margin-top: -70px;
      text-align: center;
    }

    .hero {
      position: relative;
    }

    /* Hero Decor Images */
    .hero__decor-image {
      position: absolute;
    }

    .hero__decor-image_1 {
      left: 0;
      top: -274px;
    }

    .hero__decor-image_2 {
      right: 0;
      bottom: -150px;
    }

    /* Hero title */
    .hero-title {
      font-family: Karton, Arial, sans-serif;
      font-weight: 500;
      display: flex;
      flex-direction: column;
      color: var(--color-text);
      text-transform: uppercase;
    }

    .hero-title .marker {
      color: var(--color-accent-2);
    }

    .hero-title__top {
      font-size: 35px;
      line-height: 42px;
    }

    .hero-title__bottom {
      font-size: 75px;
      line-height: 78px;
    }

    /* Hero Button */
    .hero__button {
      display: inline-block;
      margin-top: 33px;
      text-transform: uppercase;
    }

    @media (max-width: 690px) {
      .hero-title__top {
        font-size: 25px;
        line-height: 30px;
      }

      .hero-title__bottom {
        font-size: 60px;
        line-height: 60px;
      }

      .hero__button {
        margin-top: 30px;
      }
    }

    @media (max-width: 420px) {
      .hero-title__top {
        font-size: 18px;
        line-height: 25px;
      }

      .hero-title__bottom {
        font-size: 40px;
        line-height: 40px;
      }

      .hero__button {
        margin-top: 15px;
        padding: 10px 40px;
      }
    }

    /* Mobile menu */
    .mobile-menu {
      position: absolute;
      left: 0;
      bottom: 0;
      transform: translate(0, 100%);
      width: 100%;
      height: 100vh;
      background-color: #fff;
      z-index: 999;
      display: none;
    }

    .mobile-menu .dropdown__list {
      max-width: none;
    }

    @media (max-width: 670px) {
      .mobile-menu {
        display: block;
        opacity: 0;
        pointer-events: none;
        transition: opacity ease .2s;
      }

      .mobile-menu.active {
        opacity: 1;
        pointer-events: all;
      }
    }

    .mobile-menu__row {
      height: 100%;
      padding-top: 19px;
      border-top: 1px solid #E0E0E0;
    }

    .mobile-menu__content {
      padding: 0 20px;
    }

    .menu-nav__list {
      display: flex;
      flex-direction: column;
    }

    .menu-nav__item {
      display: flex;
    }

    .menu-nav__link {
      color: var(--color-text);
      text-transform: uppercase;
      font-size: 14px;
      font-weight: 300;
      text-decoration: none;
      padding-top: 8px;
      padding-bottom: 11px;
      border-bottom: 1px solid #E0E0E0;
      width: 100%;
      position: relative;
    }

    /* Mobile Dropdown */
    .mobile-menu .dropdown {
      display: flex;
      flex-direction: column;
    }

    .mobile-menu .dropdown__list {
      position: static;
      background-color: inherit;
      transform: none !important;
      margin: 15px 0 0 0;
      padding: 0 5px;
      opacity: 0;
      transition: opacity ease .2s;
      pointer-events: none;
    }

    .mobile-menu .dropdown:hover .dropdown__list {
      opacity: 1;
    }
  </style>

  <script src="https://api-maps.yandex.ru/2.1/?apikey=8a668916-04d0-4f25-8d4a-b97888776387&lang=ru_RU" type="text/javascript"></script>

  <?php wp_head(); ?>
  <link rel="shortcut icon" href="<?php bloginfo('template_url') ?>/assets/images/logo.svg">
</head>
<body>

  <!-- Шапка -->
  <header id="header" class="header">
    <!-- Меню -->
    <div id="mobile-menu" class="mobile-menu">
      <div class="mobile-menu__row">
        <div class="mobile-menu__content">
          <nav class="menu-nav">
            <ul class="menu-nav__list">
              <li class="menu-nav__item">
                <a class="menu-nav__link" href="#services">Услуги</a>
              </li>
              <li class="menu-nav__item">
                <a class="menu-nav__link" href="#team">Команда</a>
              </li>
              <li class="menu-nav__item">
                <a class="menu-nav__link" href="#reviews">Отзывы</a>
              </li>
              <li class="menu-nav__item">
                <a class="menu-nav__link" href="#our-works">Наши работы</a>
              </li>
              <li class="menu-nav__item">
                <a class="menu-nav__link" href="#contacts">Контакты</a>
              </li>
              <li class="menu-nav__item dropdown">
                <a class="menu-nav__link dropdown__title">Информация для клиента</a>

                <ul class="dropdown__list">
                  <li class="menu-nav__item dropdown__item">
                    <a class="menu-nav__link dropdown__link" href="#questions">Ответы на вопросы</a>
                  </li>
                  <li class="menu-nav__item dropdown__item">
                    <a class="menu-nav__link dropdown__link" href="#documents">Документы и сертификаты</a>
                  </li>
                </ul>
              </li>
            </ul>
          </nav>
        </div>
      </div>
    </div>

    <div class="header-top">
      <div class="container">
        <div class="header-top__row">
          <ul class="header-top__line">
            <li class="contact-block">
              <div class="contact-block__row">
                <img class="contact-block__icon" src="<?php bloginfo('template_url') ?>/assets/images/icons/marker.svg" alt="" aria-hidden="true">
                <address class="contact-block__value contact-block__address"><span class="marker"><?php the_field('header_address_bold') ?></span>, <?php the_field('header_address_default') ?></address>
              </div>
            </li>
          
            <li class="contact-block">
              <a class="contact-block__row" href="tel:<?php echo preg_replace('![^0-9]+!', '', get_field('tel_number')) ?>">
                <img class="contact-block__icon" src="<?php bloginfo('template_url') ?>/assets/images/icons/phone.svg" alt="" aria-hidden="true">
                <p class="contact-block__inner">
                  <span class="contact-block__title"><?php the_field('top_tel_bold') ?></span>
                  <span class="contact-block__value contact-block__telephone"><?php the_field('tel_number') ?></span>
                </p>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>

    <div class="header-bottom">
      <div class="header-bottom__row">
        <div class="container">
          <nav class="nav">
            <ul class="nav__list">
              <li class="nav__item burger">
                <div class="burger-icon">
                  <span class="burger-icon__line burger-icon__line_1"></span>
                  <span class="burger-icon__line burger-icon__line_2"></span>
                  <span class="burger-icon__line burger-icon__line_3"></span>
                </div>
                <span class="burger__title">Меню</span>
              </li>
              <li class="nav__item">
                <a class="nav__link" href="#services">Услуги</a>
              </li>
              <li class="nav__item">
                <a class="nav__link" href="#team">Команда</a>
              </li>
              <li class="nav__item">
                <a class="nav__link" href="#reviews">Отзывы</a>
              </li>

              <li class="nav__item logo-item">
                <a class="nav__link logo-item__link" href="#">
                  <?php
                    $logo = get_theme_mod( 'custom_logo' );
                    $image = wp_get_attachment_image_src( $logo , 'full' );
                    $logo_url = $image[0];
                  ?>
                  <img class="nav__logo" src="<?php echo $logo_url ?>" alt="студия красоты Mioka логотип">
                </a>
              </li>

              
              <li class="nav__item">
                <a class="nav__link" href="#our-works">Наши работы</a>
              </li>
              
              <li class="nav__item">
                <a class="nav__link" href="#contacts">Контакты</a>
              </li>

              <li class="nav__item dropdown">
                <a class="nav__link dropdown__title">Информация для клиентов</a>

                <ul class="dropdown__list">
                  <li class="nav__item dropdown__item">
                    <a class="nav__link dropdown__link" href="#questions">Ответы на вопросы</a>
                  </li>
                  <li class="nav__item dropdown__item">
                    <a class="nav__link dropdown__link" href="#documents">Документы и сертификаты</a>
                  </li>
                </ul>
              </li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </header>