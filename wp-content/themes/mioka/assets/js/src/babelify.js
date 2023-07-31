"use strict";

var _this = void 0;
function _slicedToArray(arr, i) { return _arrayWithHoles(arr) || _iterableToArrayLimit(arr, i) || _unsupportedIterableToArray(arr, i) || _nonIterableRest(); }
function _nonIterableRest() { throw new TypeError("Invalid attempt to destructure non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method."); }
function _iterableToArrayLimit(arr, i) { var _i = null == arr ? null : "undefined" != typeof Symbol && arr[Symbol.iterator] || arr["@@iterator"]; if (null != _i) { var _s, _e, _x, _r, _arr = [], _n = !0, _d = !1; try { if (_x = (_i = _i.call(arr)).next, 0 === i) { if (Object(_i) !== _i) return; _n = !1; } else for (; !(_n = (_s = _x.call(_i)).done) && (_arr.push(_s.value), _arr.length !== i); _n = !0); } catch (err) { _d = !0, _e = err; } finally { try { if (!_n && null != _i["return"] && (_r = _i["return"](), Object(_r) !== _r)) return; } finally { if (_d) throw _e; } } return _arr; } }
function _arrayWithHoles(arr) { if (Array.isArray(arr)) return arr; }
function _toConsumableArray(arr) { return _arrayWithoutHoles(arr) || _iterableToArray(arr) || _unsupportedIterableToArray(arr) || _nonIterableSpread(); }
function _nonIterableSpread() { throw new TypeError("Invalid attempt to spread non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method."); }
function _iterableToArray(iter) { if (typeof Symbol !== "undefined" && iter[Symbol.iterator] != null || iter["@@iterator"] != null) return Array.from(iter); }
function _arrayWithoutHoles(arr) { if (Array.isArray(arr)) return _arrayLikeToArray(arr); }
function _createForOfIteratorHelper(o, allowArrayLike) { var it = typeof Symbol !== "undefined" && o[Symbol.iterator] || o["@@iterator"]; if (!it) { if (Array.isArray(o) || (it = _unsupportedIterableToArray(o)) || allowArrayLike && o && typeof o.length === "number") { if (it) o = it; var i = 0; var F = function F() {}; return { s: F, n: function n() { if (i >= o.length) return { done: true }; return { done: false, value: o[i++] }; }, e: function e(_e2) { throw _e2; }, f: F }; } throw new TypeError("Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method."); } var normalCompletion = true, didErr = false, err; return { s: function s() { it = it.call(o); }, n: function n() { var step = it.next(); normalCompletion = step.done; return step; }, e: function e(_e3) { didErr = true; err = _e3; }, f: function f() { try { if (!normalCompletion && it["return"] != null) it["return"](); } finally { if (didErr) throw err; } } }; }
function _unsupportedIterableToArray(o, minLen) { if (!o) return; if (typeof o === "string") return _arrayLikeToArray(o, minLen); var n = Object.prototype.toString.call(o).slice(8, -1); if (n === "Object" && o.constructor) n = o.constructor.name; if (n === "Map" || n === "Set") return Array.from(o); if (n === "Arguments" || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n)) return _arrayLikeToArray(o, minLen); }
function _arrayLikeToArray(arr, len) { if (len == null || len > arr.length) len = arr.length; for (var i = 0, arr2 = new Array(len); i < len; i++) arr2[i] = arr[i]; return arr2; }
//=require inputmask.js
//=require tilt.min.js
//=require js-cookie.min.js
//=require fancybox.umd.js
//=require swiper.min.js
//=require fix-wp.js
//=require lazyload.min.js
//=require choices.min.js
//=require air-datepicker.js

var safeCallFunc = function safeCallFunc(func, ctx) {
  try {
    func.call(ctx);
  } catch (err) {
    console.error(err.message);
  }
};

// Паттерн регулярки для проверки корректности введённого номера телефона
// Необходим из-за маски, устанавливаемой в setCorrectMasksOnInputs на input[type="tel"]
window['telephone-pattern'] = '\\+\\d-\\d{3}-\\d{3}-\\d{2}-\\d{2}';

// Вызываем на любых устройствах
var funcsToCall = [setCorrectHeaderByScroll, setCorrectMasksOnInputs, setCorrectBurger, setCorrectVisibilityForm, setCorrectContactForm, setCorrectTriggers, setCorrectImagesZoom, setCorrectDropdowns, setCorrectAccordion, setCorrectSliders, setCorrectLazyLoad, setCorrectDateInputs, setCorrectOrderModal, setCorrectOrderForm, setCorrectOrderFormSubmit];

// Вызываем только на компьютерах, т. к. требовательные
var desktopFuncs = [setCorrectTiltCards, setCorrectSmoothScrollToAnchors];

// Вызываем на малых экранах, т. к. скрывают/открывают элементы
var mobileFuncs = [setCorrectShowMoreBtn];
funcsToCall.forEach(function (func) {
  safeCallFunc(func, _this);
});

// Выполнение тела условий зависит от ширины экрана
var performDependingWidth = function performDependingWidth() {
  if (window.matchMedia('(min-width: 760px)').matches) {
    desktopFuncs.forEach(function (func) {
      safeCallFunc(func, _this);
    });
  } else if (window.matchMedia('(max-width: 759px)').matches) {
    mobileFuncs.forEach(function (func) {
      safeCallFunc(func, _this);
    });
  }
};
performDependingWidth();
var getScreenOrientationType = function getScreenOrientationType() {
  return screen.orientation.type.includes('landscape') ? 'landscape' : 'portrait';
};
var nowScreenType = getScreenOrientationType();
screen.orientation.addEventListener('change', function () {
  var newOrientationType = getScreenOrientationType();
  if (nowScreenType !== newOrientationType) {
    // Ориентация устройства изменилась
    // Выполняем функции с задержкой, чтобы всё точно обновилось
    setTimeout(function () {
      performDependingWidth();
    }, 100);
    nowScreenType = newOrientationType;
  }
});

// По скроллу - скрываем верхнюю часть шапки
function setCorrectHeaderByScroll() {
  var header = document.querySelector('#header');
  var headerTop = document.querySelector('.header-top');
  var headerBottom = document.querySelector('.header-bottom');
  var safetyPixels = 5; // Чтобы не было никаких зазоров

  var scrollState = function scrollState() {
    if (!header.classList.contains('hidden')) {
      headerTop.classList.add('hidden');
    }
    if (!header.classList.contains('active')) {
      headerBottom.classList.add('active');
    }
    if (!header.style.transform) {
      header.style.transform = "translateY(".concat(-(headerTop.clientHeight + safetyPixels) + 'px', ")");
    }
  };
  var topState = function topState() {
    if (headerTop.classList.contains('hidden')) {
      headerTop.classList.remove('hidden');
    }
    if (header.style.transform) {
      header.style.transform = null;
    }
    if (window.scrollY <= 0) {
      headerBottom.classList.remove('active');
    }
  };
  var checkScrollPosition = function checkScrollPosition() {
    if (scrollPositions.at(-1)) {
      if (window.scrollY > scrollPositions.at(-1)) {
        scrollState();
      } else {
        topState();
      }
    } else if (window.scrollY > 0 && !headerBottom.classList.contains('active')) {
      scrollState();
    }
    scrollPositions.push(window.scrollY);
    if (scrollPositions.length > 2) {
      scrollPositions.splice(0, scrollPositions.length - 2);
    }
  };
  var scrollPositions = [];
  checkScrollPosition();
  window.addEventListener('scroll', function () {
    checkScrollPosition();
  }, {
    passive: true
  });
}

// Маски для полей ввода (телефона и т. д.)
function setCorrectMasksOnInputs() {
  var setTelMasks = function setTelMasks() {
    var telMask = new Inputmask('+7-999-999-99-99');
    var telInputs = document.querySelectorAll('input[type="tel"]');
    telInputs.forEach(function (telInput) {
      telMask.mask(telInput);
    });
  };
  setTelMasks();
}

// Настройка логики бургера
function setCorrectBurger() {
  var burger = document.querySelector('.burger');
  var mobileMenu = document.querySelector('.mobile-menu');
  burger.addEventListener('click', function () {
    burger.classList.toggle('active');
    mobileMenu.classList.toggle('active');
  });
}

// Эффект наклона на карточах услуг
function setCorrectTiltCards() {
  var cards = document.querySelectorAll('.tilt-card');
  var options = {
    reverse: true,
    max: 5,
    speed: 600,
    glare: true,
    'max-glare': .2,
    gyroscope: false
  };
  cards.forEach(function (card) {
    VanillaTilt.init(card, options);
  });
}

// Плавный скролл к якорям
function setCorrectSmoothScrollToAnchors() {
  var anchorLinks = document.querySelectorAll('a[href^="#"]');
  var burger = document.querySelector('.burger');
  var header = document.querySelector('.header');
  var scrollTo = function scrollTo(node, hash) {
    if (!node) {
      node = document.querySelector(hash);
    }
    history.pushState({}, '', hash); // Не location.hash, т.к. при нём будет дергаться страничка

    var customOffset = window.matchMedia('(max-width: 640px)').matches ? 50 : 20;
    var nodeTop = node.getBoundingClientRect().top;
    if (nodeTop < 0) {
      customOffset += header.clientHeight / 2.5;
    }
    var scrollCoordY = nodeTop + window.scrollY;
    window.scrollTo({
      top: scrollCoordY - customOffset,
      behavior: 'smooth'
    });
  };

  // Пользователь мог сразу ввести hash страницы - переводим его на нужную секцию
  if (location.hash) {
    var el = document.querySelector(location.hash);
    if (!el) return;
    el.scrollIntoView(true);
  }
  anchorLinks.forEach(function (anchorLink) {
    anchorLink.addEventListener('click', function (event) {
      event.preventDefault();

      // Чтобы на мобильных при клике закрывалось меню
      if (event.target.closest('.mobile-menu')) {
        event.target.closest('.mobile-menu').classList.remove('active');
        burger.classList.remove('active');
      }
      var hash = anchorLink.getAttribute('href');
      var anchorNode = document.querySelector(hash);
      scrollTo(anchorNode, hash);
    });
  });
}

// Отображать форму в подвале или нет
function setCorrectVisibilityForm() {
  var contactForm = document.querySelector('.footer-form form');
  if (Cookies.get('formSended')) {
    contactForm.classList.add('disabled');
    contactForm.title = 'Вы уже отправляли форму.';
    Array.from(contactForm.elements).forEach(function (child) {
      child.disabled = true;
    });
  }
}

// Отправка формы в подвале
function setCorrectContactForm() {
  var contactForm = document.querySelector('.footer-form form');
  if (!contactForm) return;
  contactForm.removeAttribute('novalidate');
  var contactFormFields = contactForm.querySelectorAll('.wpcf7-form-control');
  var contactFormSubmit = contactForm.querySelector('input[type="submit"]');
  var contactFormTel = contactForm.querySelector('input[type="tel"]');
  contactFormFields.forEach(function (el) {
    el.setAttribute('required', true);
  });
  contactFormTel.pattern = window['telephone-pattern'];
  contactFormSubmit.classList.add('trigger');
  contactFormSubmit.dataset.triggerResultSelector = '.popup-footer-form';
  contactFormSubmit.dataset.formSelector = "[action=\"".concat(contactForm.getAttribute('action'), "\"]");
  var errorsInputs = new Set();
  contactForm.addEventListener('submit', function (event) {
    // Валидация поля телефона, т.к. используется маска
    if (contactForm['usertel']) {
      if (contactForm['usertel'].value.replace(/[+_-]/g, '').length !== 11) {
        contactForm['usertel'].classList.add('error');
        contactForm['usertel'].title = 'Введите корректный номер телефона!';
        errorsInputs.add(contactForm['username']);
      } else if (contactForm['usertel'].classList.contains('error')) {
        contactForm['usertel'].classList.remove('error');
      }
      if (errorsInputs.size !== 0) {
        errorsInputs.clear();
        return;
      } else {
        errorsInputs.forEach(function (errInp) {
          return errInp.classList.remove('error');
        });
      }
    }
  });
  contactForm.addEventListener('wpcf7mailsent', function () {
    // Для предотвращения спама - отправляем если не отправляли ранее
    if (!Cookies.get('formSended')) {
      var halfDay = 0.5;
      Cookies.set('formSended', true, {
        expires: halfDay
      });
      setCorrectVisibilityForm();
    }
  });
}

// Настройка триггеров попапов, модальных окон
function setCorrectTriggers() {
  var triggers = document.getElementsByClassName('trigger');
  var triggerResults = document.querySelectorAll('.trigger-result');
  // Inert - чтобы пользователь не мог вылезти за пределы попапа / модального окна
  // Поддержка у последних браузеров
  var needInert = [document.querySelector('.header'), document.querySelector('.main'), document.querySelector('.footer')];
  var makeBodyUnscroll = function makeBodyUnscroll() {
    if (!document.body.classList.contains('unscroll')) {
      document.body.classList.add('unscroll');
    }
  };
  var makeBodyScroll = function makeBodyScroll() {
    if (document.body.classList.contains('unscroll')) {
      document.body.classList.remove('unscroll');
    }
  };
  var showTriggerResult = function showTriggerResult(triggerResult, _ref) {
    var timeout = _ref.timeout,
      blockScroll = _ref.blockScroll;
    triggerResult.classList.add('active');
    if (timeout) {
      setTimeout(function () {
        triggerResult.classList.remove('active');
      }, timeout);
    }
    if (blockScroll) {
      makeBodyUnscroll();
    }
  };
  var closeTriggerResultGlobal = function closeTriggerResultGlobal(event, triggerResult) {
    var triggerResultContent = triggerResult.querySelector('.trigger-result__content');

    // if (event.target.closest('.trigger-result__content') !== triggerResultCon) {
    if (!event.target.closest('.trigger-result__content')) {
      triggerResult.classList.remove('active');
      makeBodyScroll();
    }
  };

  // Логика открытия попапов.
  // Т. к. некоторые триггеры появляются в процессе выполнения JS
  // Для надёжности поместил в макротаску
  setTimeout(function () {
    var _iterator = _createForOfIteratorHelper(triggers),
      _step;
    try {
      var _loop = function _loop() {
        var trigger = _step.value;
        var formSelector = trigger.dataset.formSelector;
        var triggerResultSelector = trigger.dataset.triggerResultSelector;
        var triggerResult = document.querySelector(triggerResultSelector);
        var form = document.querySelector(formSelector);
        if (formSelector) {
          form.addEventListener('wpcf7mailsent', function () {
            showTriggerResult(triggerResult, {
              timeout: 5000
            });
          });
        } else {
          trigger.addEventListener('click', function (event) {
            event.stopPropagation();
            showTriggerResult(triggerResult, {
              timeout: null,
              blockScroll: true
            });
          });
        }
      };
      for (_iterator.s(); !(_step = _iterator.n()).done;) {
        _loop();
      }
    } catch (err) {
      _iterator.e(err);
    } finally {
      _iterator.f();
    }
  }, 100);
  var observer = new MutationObserver(function (mutations) {
    mutations.forEach(function (mutation) {
      if (mutation.type === 'attributes') {
        var closeTriggerResultFunc = function closeTriggerResultFunc(event) {
          closeTriggerResultGlobal(event, mutation.target);
        };
        if (mutation.target.classList.contains('active')) {
          needInert.forEach(function (node) {
            return node.inert = true;
          });
          document.addEventListener('click', function (event) {
            closeTriggerResultFunc(event);
          });
        } else {
          needInert.forEach(function (node) {
            return node.inert = false;
          });
          document.removeEventListener('click', closeTriggerResultFunc);
        }
      }
    });
  });

  // Логика работы всех видов открывашек
  triggerResults.forEach(function (triggerResult) {
    observer.observe(triggerResult, {
      attributes: true
    });
    var closeTriggerResult = triggerResult.querySelector('.close');
    var acceptTriggerResult = triggerResult.querySelector('.accept');
    var closeTriggerResultFunc = function closeTriggerResultFunc(event) {
      event.stopPropagation();
      triggerResult.classList.remove('active');
      makeBodyScroll();
    };
    if (closeTriggerResult) {
      closeTriggerResult.addEventListener('click', closeTriggerResultFunc);
    }
    if (acceptTriggerResult) {
      acceptTriggerResult.addEventListener('click', closeTriggerResultFunc);
    }
  });
}

// Приближение фотографий
function setCorrectImagesZoom() {
  Fancybox.bind("[data-fancybox]", {
    Thumbs: {
      type: "classic"
    },
    Images: {
      Panzoom: {
        maxScale: 2
      }
    }
  });
}

// Аккордеон в ответах на вопросы
function setCorrectAccordion() {
  var questionsList = document.querySelector('.questions-list');
  var questions = questionsList.querySelectorAll('.question');
  var showQuestion = function showQuestion(question, answer) {
    question.setAttribute('aria-expanded', true);
    answer.setAttribute('aria-hidden', false);
    answer.style.maxHeight = answer.scrollHeight + 'px';
  };
  var hideQuestion = function hideQuestion(question, answer) {
    question.classList.remove('active');
    question.setAttribute('aria-expanded', false);
    answer.setAttribute('aria-hidden', true);
    answer.style.maxHeight = null;
  };
  questionsList.addEventListener('click', function (event) {
    var questionInner = event.target.closest('.question__inner');
    if (!questionInner) return; // Клик должен быть по кнопке, чтобы не закрывался при выделении текста

    var question = event.target.closest('.question');
    var answer = question.querySelector('.question__answer');
    questions.forEach(function (anotherQuestion) {
      if (anotherQuestion === question) return;
      var answer = anotherQuestion.querySelector('.question__answer');
      hideQuestion(anotherQuestion, answer);
    });
    question.classList.toggle('active');
    if (question.classList.contains('active')) {
      showQuestion(question, answer);
    } else {
      hideQuestion(question, answer);
    }
  });
}

// Слайдеры
function setCorrectSliders() {
  var makeDocumentsSlider = function makeDocumentsSlider() {
    var documentsSlider = document.querySelector('.documents-slider .swiper');
    var documentsSwiper = new Swiper(documentsSlider, {
      slidesPerView: 1,
      grabCursor: true,
      navigation: {
        nextEl: '.documents-slider__nav-btn_next',
        prevEl: '.documents-slider__nav-btn_prev'
      },
      breakpoints: {
        651: {
          slidesPerView: 3
        },
        381: {
          slidesPerView: 2
        }
      }
    });
  };
  var makeTeamSlider = function makeTeamSlider() {
    var teamSlider = document.querySelector('.team-slider__outer');
    var teamSwiper = new Swiper(teamSlider, {
      slidesPerView: 1,
      spaceBetween: 30,
      grabCursor: true,
      navigation: {
        nextEl: '.team-slider__nav-btn_next',
        prevEl: '.team-slider__nav-btn_prev'
      },
      breakpoints: {
        1031: {
          spaceBetween: 50,
          slidesPerView: 3
        },
        641: {
          slidesPerView: 2
        }
      }
    });
    var tiltCards = teamSlider.querySelectorAll('.tilt-card');
    teamSwiper.on('slideChangeTransitionStart', function () {
      tiltCards.forEach(function (el) {
        el.vanillaTilt.destroy();
      });
    });
    teamSwiper.on('slideChangeTransitionEnd', function () {
      tiltCards.forEach(function (el) {
        VanillaTilt.init(el, {
          reverse: true,
          max: 5,
          speed: 600,
          glare: true,
          'max-glare': .2,
          gyroscope: false
        });
      });
    });
  };
  var makeSpecialistSlider = function makeSpecialistSlider() {
    var specialistSlider = document.querySelector('.choice-slider-specialist__inner');
    var specialistSwiper = new Swiper(specialistSlider, {
      slidesPerView: 1,
      slidesPerGroup: 1,
      spaceBetween: 15,
      grabCursor: false,
      simulateTouch: false,
      navigation: {
        prevEl: '.modal-slider-nav-specialists__nav-btn_prev',
        nextEl: '.modal-slider-nav-specialists__nav-btn_next'
      },
      breakpoints: {
        800: {
          slidesPerView: 4,
          slidesPerGroup: 4
        },
        520: {
          slidesPerView: 3,
          slidesPerGroup: 3
        },
        375: {
          slidesPerView: 2,
          slidesPerGroup: 2
        }
      }
    });
  };
  makeDocumentsSlider();
  makeTeamSlider();
  makeSpecialistSlider();
}

// Инициализация библиотеки ленивой загрузки
function setCorrectLazyLoad() {
  new LazyLoad({
    thresholds: '300px 100%',
    use_native: true
  });
}

// Выпадающие списки
function setCorrectDropdowns() {
  var dropdowns = document.querySelectorAll('.dropdown__select');
  dropdowns.forEach(function (dropdown, index) {
    var choices = new Choices(dropdown, {
      searchEnabled: false,
      shouldSort: false,
      itemSelectText: '',
      noChoicesText: 'Опции не найдены...'
    });
    dropdown.dataset.myChoicesId = index;
    choices.customDefaultLabel = 'Меню выбора';
    window["my-choices-".concat(index)] = choices;
  });
}

// Выбор даты
function setCorrectDateInputs() {
  var dateInputs = document.querySelectorAll('.datetime-select__input');
  if (!dateInputs.length) return;
  var minDate = new Date();
  var maxDate = new Date(new Date(minDate).setMonth(minDate.getMonth() + 1));
  maxDate = new Date(maxDate.setHours(19));
  maxDate = new Date(maxDate.setMinutes(50));
  var mobileDatepickerMedia = window.matchMedia('(max-width: 725px)');
  var updateDatepickerToMobileOrNo = function updateDatepickerToMobileOrNo(_ref2) {
    var isMobile = _ref2.isMobile,
      datepicker = _ref2.datepicker;
    datepicker.update({
      isMobile: isMobile
    });
  };
  var isMobile = mobileDatepickerMedia.matches;
  dateInputs.forEach(function (dateInput, index) {
    var datepicker = new AirDatepicker(dateInput, {
      minHours: 10,
      maxHours: 20,
      minDate: minDate,
      maxDate: maxDate,
      timepicker: true,
      position: 'right bottom',
      buttons: ['clear'],
      isMobile: isMobile,
      weekends: []
    });

    // В зависимости от браузера будет использоваться разный метод для установки обработчика
    if ('addEventListener' in mobileDatepickerMedia) {
      mobileDatepickerMedia.addEventListener('change', function (event) {
        isMobile = event.matches;
        updateDatepickerToMobileOrNo({
          isMobile: isMobile,
          datepicker: datepicker
        });
      });
    } else {
      mobileDatepickerMedia.addListener(function (event) {
        isMobile = event.matches;
        updateDatepickerToMobileOrNo({
          isMobile: isMobile,
          datepicker: datepicker
        });
      });
    }
    dateInput.dataset.myDatepickerId = index;
    window["my-datepicker-".concat(index)] = datepicker;
  });

  // Контейнер для календаря появляется после его инициализации
  // Поэтому - выполняем через setTimeout
  setTimeout(function () {
    try {
      var airDatepickerContainer = document.querySelector('.air-datepicker-global-container');
      airDatepickerContainer.addEventListener('click', function (event) {
        event.stopPropagation();
      });
    } catch (err) {}
  }, 100);
}

// Модальное окно оформления заявки
function setCorrectOrderModal() {
  // const modalTriggers = document.querySelectorAll('[data-modal-order]');

  // modalTriggers.forEach((modalTrigger) => {
  //   modalTrigger.addEventListener('click', () => {
  //     const modalSelector = modalTrigger.dataset.modalSelector;
  //     if (!modalSelector) return;
  //     const modal = document.querySelector(modalSelector);
  //     const modalClose = modal.querySelector('.modal-close');

  //     modal.classList.add('active');

  //     modalClose.addEventListener('click', () => {
  //       modal.classList.remove('active');
  //     });
  //   });
  // });  
}

// Кнопка "показать ещё" в секции услуг
function setCorrectShowMoreBtn() {
  var showMoreButtons = document.querySelectorAll('.js-show-more');
  showMoreButtons.forEach(function (showMore) {
    var showMoreParent = showMore.parentElement;
    var services = Array.from(document.querySelector(showMore.dataset.loadSelector).children);
    var allServicesLength = services.length;
    var visibleNow = 4;

    // Скроет кнопку "Показать ещё" когда всё уже показано
    var hideOnAll = function hideOnAll() {
      if (visibleNow >= allServicesLength) {
        showMoreParent.style.display = 'none';
      }
    };
    hideOnAll();
    showMore.addEventListener('click', function () {
      visibleNow += 2;
      services.slice(0, visibleNow).forEach(function (elem) {
        elem.classList.add('is-visible');
      });
      hideOnAll();
    });
  });
}

// Логика формы оформления записи
function setCorrectOrderForm() {
  var teamMemberBtns = Array.from(document.querySelectorAll('.team-member__action')); // Кнопки выбора специалиста в секции команды
  var specialistsBtns = Array.from(document.querySelectorAll('.variation')); // Кнопки выбора специалиста в модалке
  var servicesBtns = Array.from(document.querySelectorAll('.service__action')); // Кнопки выбора услуги в секции услуг

  // Вспомогательные компоненты
  var orderForm = document.querySelector('#modal-form');
  var pricesObj = JSON.parse(orderForm.dataset.prices); // Объект вида {услуга: цена}
  var userTel = orderForm['user-tel'];
  var servicesDropdown = orderForm.services; // Узел <select>
  var choicesDropdown = window["my-choices-".concat(servicesDropdown.dataset.myChoicesId)]; // Компонент от choices.js
  var dateInput = orderForm.datepicker; // Узел <input type="text">
  var airDatepicker = window["my-datepicker-".concat(dateInput.dataset.myDatepickerId)]; // Компонент от air-datepicker.js
  var resultPrice = orderForm.querySelector('.modal-form__result-price'); // Узел блока итоговой цены
  var resultPriceField = orderForm.querySelector('.field');
  var orderFormSubmit = orderForm['modal-form-submit'];

  // Для валидации
  var telephoneRegExp = new RegExp(window['telephone-pattern']);
  var formValid = false;
  var validObj = {
    fieldsValid: false,
    selectedSpecialist: null
  };
  Object.defineProperty(validObj, 'valid', {
    get: function get() {
      return formValid;
    },
    set: function set(newVal) {
      formValid = newVal && Boolean(this.selectedSpecialist);
      if (formValid === true) {
        // Обработка валидной формы 
        // (показать итоговую цену и разблокировать кнопку оформления заказа)
        resultPrice.classList.add('is-visible');
        setValueToPriceField();
        orderFormSubmit.disabled = false;
      } else {
        // Делаем обратные действия валидной ветки
        resultPrice.classList.remove('is-visible');
        orderFormSubmit.disabled = true;
      }
    }
  });
  var setValueToPriceField = function setValueToPriceField() {
    var serviceName = choicesDropdown.getValue(true);
    var priceValue = pricesObj[serviceName]['service_price'];
    resultPriceField.textContent = priceValue;
  };
  var needFill = [userTel, servicesDropdown, dateInput];
  needFill.forEach(function (field) {
    field.addEventListener('change', function () {
      validObj.valid = checkFullValid(needFill);
    });
  });
  // Будем имитировать событие change по клику на календарь и в onSelect у airDatepicker
  // Т. к. у пользователя нет возможности вводить самому в поле, т. к. оно readonly
  var emitChangeOnDateInput = function emitChangeOnDateInput() {
    setTimeout(function () {
      var changeEvent = new Event('change');
      dateInput.dispatchEvent(changeEvent);
    }, 0);
  };
  var setTimetable = function setTimetable(_ref3) {
    var date = _ref3.date;
    var dateNowSelected = new Date(date);
    var dateMax = new Date(date);
    var dayIndex = dateNowSelected.getDay();
    var timetable = validObj.selectedSpecialist.schedule[days[dayIndex]];
    if (!timetable) {
      return;
    }
    var startDates = timetable.start.split(':');
    var endDates = timetable.end.split(':');
    dateMax.setHours(dateMax.getHours() + endDates[0]);
    dateMax.setMinutes(dateMax.getMinutes() + endDates[1]);
    if (dayIndex === new Date().getDay()) {
      startDates[0] = new Date().getHours();
      startDates[1] = new Date().getMinutes();
    }
    airDatepicker.clear();
    airDatepicker.update({
      minHours: startDates[0],
      minMinutes: startDates[1],
      maxHours: endDates[0] - 1
    });
    airDatepicker.selectDate(date, {
      date: date,
      silent: true
    });
    airDatepicker.$datepicker.dataset.changedByTimetable = true;
  };
  airDatepicker.update({
    onSelect: function onSelect(_ref4) {
      var date = _ref4.date,
        formattedDate = _ref4.formattedDate;
      if (airDatepicker.$datepicker.dataset.changedByTimetable === 'true') {
        airDatepicker.$datepicker.dataset.changedByTimetable = null;
        return;
      }
      setTimetable({
        date: date
      });
      emitChangeOnDateInput();
    }
  });
  airDatepicker.$datepicker.addEventListener('click', function () {
    emitChangeOnDateInput();
  });
  dateInput.customValidate = function () {
    return Boolean(dateInput.value);
  };

  // Вспомогательные функции
  choicesDropdown.clear = function () {
    choicesDropdown.clearStore(); // Очищаем уже имеющиеся опции
    choicesDropdown.setChoices([{
      label: choicesDropdown.customDefaultLabel,
      value: '',
      disabled: true,
      selected: true
    }], 'value', 'label', true);
  };
  // Переключатель в состояния disabled и обратно
  var toggleOrderElems = function toggleOrderElems(_ref5) {
    var disable = _ref5.disable;
    Array.from(orderForm.elements).forEach(function (el) {
      if (el.nodeName === 'BUTTON' && el.getAttribute('type') === 'submit') {
        if (disable === true) {
          el.disabled = disable;
        } else if (validObj.valid) {
          el.disabled = false;
        }
      } else if (el.nodeName === 'SELECT') {
        choicesDropdown[disable ? 'disable' : 'enable']();
        el.disabled = disable;
      } else if (el.nodeName === 'INPUT') {
        el.disabled = disable;
      }
    });
  };

  // Выходные дни в массиве. Требуются для взятия корректного индекса
  // Т. к. 0 индекс - это воскресенье (другой формат)
  var days = ['sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday'];
  // Установка выходных дней
  var setWeekends = function setWeekends() {
    var schedule = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : [];
    var weekends = new Set();
    if (Object.keys(schedule).length > 0) {
      days.forEach(function (day, index) {
        var _schedule$day$is_week;
        if (((_schedule$day$is_week = schedule[day]['is_weekend']) === null || _schedule$day$is_week === void 0 ? void 0 : _schedule$day$is_week.toLowerCase()) === 'является') {
          weekends.add(index);
        }
      });
    }
    airDatepicker.update({
      weekends: _toConsumableArray(weekends.values())
    });
  };
  // Установка графика работы (по часам в текущий день у пользователя)
  var setTimetableToday = function setTimetableToday() {
    var nowDay = Number(validObj.selectedSpecialist.schedule[days[new Date().getDay()]]);
    var endDay = Number(validObj.selectedSpecialist.schedule[days[new Date().getDay()]]);
    if (!nowDay || !endDay) {
      return;
    }
    var startTimetableToday = nowDay.start.split(':')[0];
    var endTimetableToday = endDay.end.split(':')[0];
    airDatepicker.update({
      minHours: startTimetableToday,
      maxHours: endTimetableToday - 1
    });
  };
  // Проверка на кастомные цены кастомных услуг из админки
  var checkCustomPrices = function checkCustomPrices(servicesArr) {
    servicesArr.forEach(function (service, index) {
      if (service.includes('=')) {
        var _service$split$map = service.split('=').map(function (value) {
            return value.trim();
          }),
          _service$split$map2 = _slicedToArray(_service$split$map, 2),
          serviceName = _service$split$map2[0],
          servicePrice = _service$split$map2[1];
        if (isFinite(servicePrice)) {
          pricesObj[serviceName] = {
            'service_price': servicePrice
          };
          servicesArr.splice(index, 1, serviceName); // Объекты передаются по ссылке - поэтому сразу меняем его
        }
      }
    });
  };
  // Проверка на заполненность полей
  var checkFullValid = function checkFullValid(fields) {
    var resultValid = true; // resultValid копим только для полей с readonly (у них кастомные проверки)
    var _iterator2 = _createForOfIteratorHelper(fields),
      _step2;
    try {
      for (_iterator2.s(); !(_step2 = _iterator2.n()).done;) {
        var field = _step2.value;
        if (field.hasAttribute('readonly')) {
          resultValid = field.customValidate();
          continue; // Для readonly - описаны свои проверки
        } else if (field.type === 'tel' && !telephoneRegExp.test(field.value)) {
          return false;
        } else if (field.value.length <= 0) {
          return false;
        }
      }
    } catch (err) {
      _iterator2.e(err);
    } finally {
      _iterator2.f();
    }
    return resultValid;
  };
  validObj.valid = checkFullValid(needFill);

  // Проверка валидности расписания
  var isScheduleCorrect = function isScheduleCorrect(schedule) {
    return Object.keys(schedule).some(function (dayKey) {
      return Object.keys(schedule[dayKey]).some(function (dayValue) {
        return schedule[dayKey][dayValue] !== null;
      });
    });
  };

  // Обсервер следит за изменением класса у карточек специалистов
  var specialistsObserver = new MutationObserver(function (mutations) {
    mutations.forEach(function (mutation) {
      if (mutation.type === 'attributes') {
        var selectedSpecialist = specialistsBtns.find(function (btn) {
          return btn.classList.contains('active');
        });
        var services = [];

        // Ветка с выбранным специалистом
        if (selectedSpecialist) {
          validObj.selectedSpecialist = selectedSpecialist;
          resultPrice.classList.remove('is-disabled');
          toggleOrderElems({
            disable: false
          }); // Разблокируем форму для заполнения

          var servicesArr = JSON.parse(selectedSpecialist.dataset.employeerServices);
          checkCustomPrices(servicesArr);
          // Синхронизируем объекты в data-атрибуте и в коде
          if (selectedSpecialist.dataset.employeerServices !== JSON.stringify(servicesArr)) {
            selectedSpecialist.dataset.employeerServices = JSON.stringify(servicesArr);
          }
          var schedule = JSON.parse(selectedSpecialist.dataset.schedule); // Расписание сотрудника
          if (schedule) {
            selectedSpecialist.schedule = schedule;
            if (isScheduleCorrect(schedule)) {
              setWeekends(schedule); // Проставляем выходные в календаре по графику работы
              setTimetableToday(); // Проставляем график работы по часам
            }
          }

          choicesDropdown.clear();
          if (servicesArr.length > 0) {
            servicesArr.forEach(function (service) {
              service = service.trim();
              services.push({
                value: service,
                label: service,
                disabled: false
              });
            });
            choicesDropdown.setChoices(services, 'value', 'label', true);
          }
          var fieldsValid = null;
          setTimeout(function () {
            fieldsValid = checkFullValid(needFill);
            validObj.valid = fieldsValid;
          }, 0);
        } else {
          validObj.selectedSpecialist = null;
          resultPrice.classList.add('is-disabled');
          Array.from(orderForm.elements).forEach(function () {
            toggleOrderElems({
              disable: true
            });
          });
        }
      }
    });
  });

  // Обработчики для кнопок в секции команды
  teamMemberBtns.forEach(function (btn) {
    btn.addEventListener('click', function () {
      var employerId = Number(btn.dataset.employerId);
      var specialist = specialistsBtns.find(function (specialist) {
        return Number(specialist.dataset.employerId) === employerId;
      });
      if (specialist) {
        specialist.click();
      }
    });
  });

  // Обработчики для кнопок специалистов в модалке
  specialistsBtns.forEach(function (btn) {
    specialistsObserver.observe(btn, {
      attributes: true
    });
    btn.addEventListener('click', function () {
      specialistsBtns.forEach(function (otherBtn) {
        if (otherBtn !== btn && otherBtn.classList.contains('active')) {
          otherBtn.classList.remove('active');
        }
      });
      btn.classList.toggle('active');
    });
  });

  // Обработчики для кнопок в секции услуг
  servicesBtns.forEach(function (btn) {
    btn.addEventListener('click', function () {
      var serviceNameDefault = btn.dataset.serviceName.trim();
      var serviceNameLower = serviceNameDefault.toLowerCase();
      var specialistWithService = specialistsBtns.find(function (specialist) {
        return specialist.dataset.employeerServices.toLowerCase().includes(serviceNameLower);
      });
      if (specialistWithService) {
        if (!specialistWithService.classList.contains('active')) {
          specialistWithService.click();
        }
        setTimeout(function () {
          choicesDropdown.setChoiceByValue(serviceNameDefault);
        }, 100);
      }
    });
  });
}

// Отправка формы с оформлением записи
function setCorrectOrderFormSubmit() {
  var orderModal = document.querySelector('.order-modal');
  var orderForm = orderModal.querySelector('#modal-form');
  var accessModal = document.querySelector('.access-modal');
  var alrightModal = document.querySelector('.popup-modal-form');
  var accessAccept = accessModal.querySelector('.access-modal__accept');

  // Форма из Contact Form 7
  var formHidden = document.querySelector('[action="/#wpcf7-f437-o1"]');
  var formSpecialistName = formHidden['specialist-name'];
  var formTelNumber = formHidden['tel-number'];
  var formServiceName = formHidden['service-name'];
  var formDatetime = formHidden['datetime'];
  var submitBtn = formHidden.querySelector('.wpcf7-submit');

  // Правильный сброс формы, у инпутов есть обработчики на валидность - поэтому триггерим change
  var resetOrderForm = function resetOrderForm() {
    orderForm.reset();
    Array.from(orderForm.elements).forEach(function (field) {
      var event = new Event('change');
      field.dispatchEvent(event);
    });
  };
  var blockOrderStart = function blockOrderStart() {
    var allOrderActions = document.querySelectorAll('.order-action');
    allOrderActions.forEach(function (orderAction) {
      orderAction.disabled = true;
    });
  };
  var removeOrderElems = function removeOrderElems() {
    orderModal.remove();
    accessAccept.remove();
  };
  var removeOrderNotification = function removeOrderNotification() {
    alrightModal.remove();
  };
  orderForm.addEventListener('submit', function (event) {
    event.preventDefault();
    accessAccept.addEventListener('click', function () {
      // Отправка формы
      var userFields = {
        specialistName: document.querySelector('.variation.active').querySelector('.variation__name').textContent,
        telNumber: orderForm['user-tel'].value,
        serviceName: orderForm['services'].value,
        datetime: orderForm['datepicker'].value
      };
      formSpecialistName.value = userFields.specialistName;
      formTelNumber.value = userFields.telNumber;
      formServiceName.value = userFields.serviceName;
      formDatetime.value = userFields.datetime;
      submitBtn.click();
      var halfDay = 0.5;
      Cookies.set('orderSended', true, {
        expires: halfDay
      });

      // Сброс всех состояний
      resetOrderForm();
      accessModal.classList.remove('active');
      orderModal.classList.remove('active');
      document.body.classList.remove('unscroll');
      blockOrderStart();
      formHidden.addEventListener('wpcf7mailsent', function () {
        removeOrderElems();
        setTimeout(function () {
          removeOrderNotification();
        }, 10000);
      });
    });
  });
}