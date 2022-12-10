// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Store`
  String get store {
    return Intl.message(
      'Store',
      name: 'store',
      desc: '',
      args: [],
    );
  }

  /// `Select from categories`
  String get select {
    return Intl.message(
      'Select from categories',
      name: 'select',
      desc: '',
      args: [],
    );
  }

  /// `Recent Added`
  String get recent_added {
    return Intl.message(
      'Recent Added',
      name: 'recent_added',
      desc: '',
      args: [],
    );
  }

  /// `View All`
  String get view_all {
    return Intl.message(
      'View All',
      name: 'view_all',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Favorite`
  String get favorite {
    return Intl.message(
      'Favorite',
      name: 'favorite',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Tanya Robinson`
  String get name {
    return Intl.message(
      'Tanya Robinson',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `My Order`
  String get my_order {
    return Intl.message(
      'My Order',
      name: 'my_order',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message(
      'Payment',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Simply`
  String get simply {
    return Intl.message(
      'Simply',
      name: 'simply',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Recover`
  String get recover {
    return Intl.message(
      'Recover',
      name: 'recover',
      desc: '',
      args: [],
    );
  }

  /// `your account`
  String get your_account {
    return Intl.message(
      'your account',
      name: 'your_account',
      desc: '',
      args: [],
    );
  }

  /// `Enter email or phone number `
  String get enter_email {
    return Intl.message(
      'Enter email or phone number ',
      name: 'enter_email',
      desc: '',
      args: [],
    );
  }

  /// `Email `
  String get email {
    return Intl.message(
      'Email ',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Email`
  String get enter_your_email {
    return Intl.message(
      'Enter your Email',
      name: 'enter_your_email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Password`
  String get enter_your_password {
    return Intl.message(
      'Enter your Password',
      name: 'enter_your_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Mobile`
  String get enter_your_mobile {
    return Intl.message(
      'Enter your Mobile',
      name: 'enter_your_mobile',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgot_password {
    return Intl.message(
      'Forgot Password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get sign_in {
    return Intl.message(
      'Sign In',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Create an account?`
  String get create_an_account {
    return Intl.message(
      'Create an account?',
      name: 'create_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Mobile`
  String get mobile {
    return Intl.message(
      'Mobile',
      name: 'mobile',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign_up {
    return Intl.message(
      'Sign Up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Already have account?`
  String get already_have_account {
    return Intl.message(
      'Already have account?',
      name: 'already_have_account',
      desc: '',
      args: [],
    );
  }

  /// `START`
  String get start {
    return Intl.message(
      'START',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `SKIP`
  String get skip {
    return Intl.message(
      'SKIP',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `The Best way to explore`
  String get the_best_way {
    return Intl.message(
      'The Best way to explore',
      name: 'the_best_way',
      desc: '',
      args: [],
    );
  }

  /// `an off-beat location`
  String get an_off_beat_location {
    return Intl.message(
      'an off-beat location',
      name: 'an_off_beat_location',
      desc: '',
      args: [],
    );
  }

  /// `Realtime Tracking`
  String get realtime_tracking {
    return Intl.message(
      'Realtime Tracking',
      name: 'realtime_tracking',
      desc: '',
      args: [],
    );
  }

  /// `Track your delivery in realtime.`
  String get track_your {
    return Intl.message(
      'Track your delivery in realtime.',
      name: 'track_your',
      desc: '',
      args: [],
    );
  }

  /// `Pickup Delivery`
  String get pickup_delivery {
    return Intl.message(
      'Pickup Delivery',
      name: 'pickup_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Receive doorstep delivery and best discounts`
  String get Receive_doorstep {
    return Intl.message(
      'Receive doorstep delivery and best discounts',
      name: 'Receive_doorstep',
      desc: '',
      args: [],
    );
  }

  /// `adel al dali`
  String get adel {
    return Intl.message(
      'adel al dali',
      name: 'adel',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
