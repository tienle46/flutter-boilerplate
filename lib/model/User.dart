import 'Media.dart';

class User {
  int _id;
  String _firstName;
  String _lastName;
  String _streetAddress;
  String _subUrb;
  String _city;
  String _state;
  String _country;
  String _mobile;
  String _postCode;
  String _dob;
  String _preferenceId;
  String _sourceType;
  int _magentoCustomerId;
  int _avatar;
  String _username;
  int _platformType;
  String _platformVersion;
  String _deviceId;
  Media _avatarMedia;
  String _email;
  String _lastLogin;
  List<String> _roles = [];

  User(this._id, this._firstName, this._lastName, this._email, this._mobile,
      this._avatar, this._lastLogin, this._roles, this._streetAddress, this._subUrb, this._city, this._state, this._country,
      this._postCode, this._dob, this._preferenceId, this._sourceType, this._magentoCustomerId, this._platformType,
      this._platformVersion, this._deviceId, this._avatarMedia);

  User.fromJson(Map<String, dynamic> json) {
    this.setId(json['id']);
    this.setUsername(json['username']);
    this.setAvatar(json['avatar']);
    this.setMobile(json['mobile']);
    this.setFirstName(json['firstName']);
    this.setLastName(json['lastName']);
    this.setEmail(json['email']);
    this.setAvatar(json['avatar']);
    this.setLastLogin(json['lastLogin']);
    this.setStreetAddress(json['streetAddress']);
    this.setSubUrb(json['subUrb']);
    this.setCity(json['city']);
    this.setState(json['state']);
    this.setCountry(json['country']);
    this.setPostCode(json['postCode']);
    this.setDob(json['dob']);
    this.setPreferenceId(json['preferenceId']);
    this.setSourceType(json['sourceType']);
    this.setMagentoCustomerId(json['magentoCustomerId']);
    this.setPlatformType(json['platformType']);
    this.setPlatformVersion(json['platformVersion']);
    this.setDeviceId(json['deviceId']);
    this.setAvatarMedia(new Media.fromJson(json['avatarMedia']));


    List<String> rolesList = new List<String>.from(json['roles']);
    this.setRoles(rolesList);

  }

  int getId() {
    return this._id;
  }

  String getLastLogin() {
    return this._lastLogin;
  }

  String getUsername() {
    return this._username;
  }

  String getEmail() {
    return this._email;
  }

  String getMobile() {
    return this._mobile;
  }

  int getAvatar() {
    return this._avatar;
  }

  String getFirstName() {
    return this._firstName;
  }

  String getLastName() {
    return this._lastName;
  }

  String getStreetAddress() {
    return this._streetAddress;
  }

  String getSubUrb() {
    return this._subUrb;
  }

  String getCity() {
    return this._city;
  }

  String getState() {
    return this._state;
  }

  String getCountry() {
    return this._country;
  }

  String getPostCode() {
    return this._postCode;
  }

  String getDob() {
    return this._dob;
  }

  String getPreferenceId() {
    return this._preferenceId;
  }

  String getSourceType() {
    return this._sourceType;
  }

  int getMagentoCustomerId() {
    return this._magentoCustomerId;
  }

  int getPlatformType() {
    return this._platformType;
  }

  String getPlatformVersion() {
    return this._platformVersion;
  }

  String getDeviceId() {
    return this._deviceId;
  }

  Media getAvatarMedia() {
    return this._avatarMedia;
  }

  List<String> getRoles() {
    return this._roles;
  }

  void setId(int id) {
    this._id = id;
  }

  void setFirstName(String firstName) {
    this._firstName = firstName;
  }

  void setLastName(String lastName) {
    this._lastName = lastName;
  }

  void setAvatar(int avatar) {
    this._avatar = avatar;
  }

  void setMobile(String mobile) {
    this._mobile = mobile;
  }

  void setEmail(String email) {
    this._email = email;
  }

  void setStreetAddress(String streetAddress) {
    this._streetAddress = streetAddress;
  }

  void setSubUrb(String subUrb) {
    this._subUrb = subUrb;
  }

  void setRoles(List<String> roles) {
    roles.forEach((role) {
      this._roles.add(role);
    });
  }

  void setUsername(String username) {
    this._username = username;
  }

  void setLastLogin(String lastLogin) {
    this._lastLogin = lastLogin;
  }

  void setCity(String city) {
    this._city = city;
  }

  void setState(String state) {
    this._state = state;
  }

  void setCountry(String country) {
    this._country = country;
  }

  void setPostCode(String postCode) {
    this._postCode = postCode;
  }

  void setDob(String dob) {
    this._dob = dob;
  }

  void setPreferenceId(String preferenceId) {
    this._preferenceId = preferenceId;
  }

  void setSourceType(String sourceType) {
    this._sourceType = sourceType;
  }

  void setMagentoCustomerId(int magentoCustomerId) {
    this._magentoCustomerId = magentoCustomerId;
  }

  void setPlatformType(int platformType) {
    this._platformType = platformType;
  }

  void setPlatformVersion(String platformVersion) {
    this._platformVersion = platformVersion;
  }

  void setDeviceId(String deviceId) {
    this._deviceId = deviceId;
  }

  void setAvatarMedia(Media avatarMedia) {
    this._avatarMedia = avatarMedia;
  }

}
