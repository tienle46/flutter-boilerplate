class Env {
  Env(this.baseUrl);

  final String baseUrl;
}

mixin EnvValue {
  static final Env test = Env('https://test.erp.vssolutions.io/api/');
  static final Env prepro = Env('https://test.erp.vssolutions.io/api/');
  static final Env staging = Env('https://test.erp.vssolutions.io/api/');
  static final Env production = Env('https://test.erp.vssolutions.io/api/');
}