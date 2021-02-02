import 'package:boilerplate_flutter/model/User.dart';

class SignInResponse {
  String _accessToken;
  String _tokenType;
  String _refreshToken;
  String _scope;
  int _expiresIn;
  User _havenUser;
  String _extraData;
  String _successMessage;
  String _warningMessage;

  SignInResponse(this._accessToken, this._tokenType, this._refreshToken, this._scope, this._havenUser, this._extraData, this._successMessage, this._warningMessage);

  SignInResponse.fromJson(Map<String, dynamic> json) {
    this.setAccessToken(json['access_token']);
    this.setTokenType(json['token_type']);
    this.setRefreshToken(json['refresh_token']);
    this.setScope(json['scope']);
    this.setExpiresIn(json['expires_in']);
    this.setHavenUser(new User.fromJson(json['havenUser']));
    this.setExtraData(json['extraData']);
    this.setSuccessMessage(json['successMessage']);
    this.setWarningMessage(json['warningMessage']);
  }

  void setAccessToken(String accessToken) {
    this._accessToken = accessToken;
  }

  void setTokenType(String tokenType) {
    this._tokenType = tokenType;
  }

  void setRefreshToken(String refreshToken) {
    this._refreshToken = refreshToken;
  }

  void setScope(String scope) {
    this._scope = scope;
  }

  void setExpiresIn(int expiresIn) {
    this._expiresIn = expiresIn;
  }

  void setHavenUser(User havenUser) {
    this._havenUser = havenUser;
  }

  void setExtraData(String extraData) {
    this._extraData = extraData;
  }

  void setSuccessMessage(String successMessage) {
    this._successMessage = successMessage;
  }

  void setWarningMessage(String warningMessage) {
    this._warningMessage = warningMessage;
  }

  String getAccessToken() {
    return this._accessToken;
  }

  String getTokenType() {
    return this._tokenType;
  }

  String getRefreshToken() {
    return this._refreshToken;
  }

  String getScope() {
    return this._scope;
  }

  int getExpiresIn() {
    return this._expiresIn;
  }

  User getHavenUser() {
    return this._havenUser;
  }

  String getExtraData() {
    return this._extraData;
  }

  String getSuccessMessage() {
    return this._successMessage;
  }

  String getWarningMessage() {
    return this._warningMessage;
  }
}

