class Media {
  int _id;
  String _originalFilename;
  String _contentType;
  String _url;
  String _uploadDate;
  bool _external;
  String _cdnOrigin;
  String _cdnLarge;
  String _cdnMedium;
  String _cdnSmall;
  int _typeOfMedia;
  String _guid;
  bool _processing;

  Media(
      this._id,
      this._originalFilename,
      this._contentType,
      this._url,
      this._uploadDate,
      this._external,
      this._cdnOrigin,
      this._cdnLarge,
      this._cdnMedium,
      this._cdnSmall,
      this._typeOfMedia,
      this._guid,
      this._processing);

  Media.fromJson(Map<String, dynamic> json) {
    this.setId(json['id']);
    this.setOriginalFilename(json['originalFilename']);
    this.setContentType(json['contentType']);
    this.setUrl(json['url']);
    this.setUploadDate(json['uploadDate']);
    this.setExternal(json['external']);
    this.setCdnOrigin(json['cdnOrigin']);
    this.setCdnLarge(json['cdnLarge']);
    this.setCdnMedium(json['cdnMedium']);
    this.setCdnSmall(json['cdnSmall']);
    this.setTypeOfMedia(json['typeOfMedia']);
    this.setGuid(json['guid']);
    this.setProcessing(json['processing']);
  }

  int getId() {
    return this._id;
  }

  String getOriginalFilename() {
    return this._originalFilename;
  }

  String getContentType() {
    return this._contentType;
  }

  String getUrl() {
    return this._url;
  }

  String getUploadDate() {
    return this._uploadDate;
  }

  bool getExternal() {
    return this._external;
  }

  String getCdnOrigin() {
    return this._cdnOrigin;
  }

  String getCdnLarge() {
    return this._cdnLarge;
  }

  String getCdnMedium() {
    return this._cdnMedium;
  }

  String getCdnSmall() {
    return this._cdnSmall;
  }

  int getTypeOfMedia() {
    return this._typeOfMedia;
  }

  String getGuid() {
    return this._guid;
  }

  bool getProcessing() {
    return this._processing;
  }

  void setId(int id) {
    this._id = id;
  }

  void setOriginalFilename(String originalFilename) {
    this._originalFilename = originalFilename;
  }

  void setContentType(String contentType) {
    this._contentType = contentType;
  }

  void setUrl(String url) {
    this._url = url;
  }

  void setUploadDate(String uploadDate) {
    this._uploadDate = _uploadDate;
  }

  void setExternal(bool external) {
    this._external = external;
  }

  void setCdnOrigin(String cdnOrigin) {
    this._cdnOrigin = cdnOrigin;
  }

  void setCdnLarge(String cdnLarge) {
    this._cdnLarge = cdnLarge;
  }

  void setCdnMedium(String cdnMedium) {
    this._cdnMedium = cdnMedium;
  }

  void setCdnSmall(String cdnSmall) {
    this._cdnSmall = cdnSmall;
  }

  void setTypeOfMedia(int typeOfMedia) {
    this._typeOfMedia = typeOfMedia;
  }

  void setGuid(String guid) {
    this._guid = guid;
  }

  void setProcessing(bool processing) {
    this._processing = processing;
  }
}
