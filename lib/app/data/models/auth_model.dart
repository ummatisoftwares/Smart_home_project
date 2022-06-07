class Auth {
  bool? success;
  String? message;
  String? accessToken;
  String? refreshToken;
  int? expiresIn;
  bool? subscriptionExpired;
  Account? account;

  Auth(
      {this.success,
      this.message,
      this.accessToken,
      this.refreshToken,
      this.expiresIn,
      this.subscriptionExpired,
      this.account});

  Auth.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    accessToken = json['accessToken'];
    refreshToken = json['refreshToken'];
    expiresIn = json['expiresIn'];
    subscriptionExpired = json['subscriptionExpired'];
    account =
        json['account'] != null ? Account?.fromJson(json['account']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['success'] = success;
    data['message'] = message;
    data['accessToken'] = accessToken;
    data['refreshToken'] = refreshToken;
    data['expiresIn'] = expiresIn;
    data['subscriptionExpired'] = subscriptionExpired;
    if (account != null) {
      data['account'] = account?.toJson();
    }
    return data;
  }
}

class Account {
  Notifications? notifications;
  bool? mustChangePassword;
  String? temperatureScale;
  String? language;
  bool? isGoogleHomeLinked;
  bool? isAmazonAlexaLinked;
  bool? isSinricProAppLinked;
  bool? isSmartThingsLinked;
  bool? isIFTTTLinked;
  bool? isVerified;
  bool? sendNewsLetters;
  String? name;
  String? email;
  String? timeZone;
  String? displayName;
  bool? isManufacturer;
  String? country;
  String? createdAt;
  String? updatedAt;
  String? lastLogInAt;
  String? id;

  Account(
      {this.notifications,
      this.mustChangePassword,
      this.temperatureScale,
      this.language,
      this.isGoogleHomeLinked,
      this.isAmazonAlexaLinked,
      this.isSinricProAppLinked,
      this.isSmartThingsLinked,
      this.isIFTTTLinked,
      this.isVerified,
      this.sendNewsLetters,
      this.name,
      this.email,
      this.timeZone,
      this.displayName,
      this.isManufacturer,
      this.country,
      this.createdAt,
      this.updatedAt,
      this.lastLogInAt,
      this.id});

  Account.fromJson(Map<String, dynamic> json) {
    notifications = json['notifications'] != null
        ? Notifications?.fromJson(json['notifications'])
        : null;
    mustChangePassword = json['mustChangePassword'];
    temperatureScale = json['temperatureScale'];
    language = json['language'];
    isGoogleHomeLinked = json['isGoogleHomeLinked'];
    isAmazonAlexaLinked = json['isAmazonAlexaLinked'];
    isSinricProAppLinked = json['isSinricProAppLinked'];
    isSmartThingsLinked = json['isSmartThingsLinked'];
    isIFTTTLinked = json['isIFTTTLinked'];
    isVerified = json['isVerified'];
    sendNewsLetters = json['sendNewsLetters'];
    name = json['name'];
    email = json['email'];
    timeZone = json['timeZone'];
    displayName = json['displayName'];
    isManufacturer = json['isManufacturer'];
    country = json['country'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    lastLogInAt = json['lastLogInAt'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (notifications != null) {
      data['notifications'] = notifications?.toJson();
    }
    data['mustChangePassword'] = mustChangePassword;
    data['temperatureScale'] = temperatureScale;
    data['language'] = language;
    data['isGoogleHomeLinked'] = isGoogleHomeLinked;
    data['isAmazonAlexaLinked'] = isAmazonAlexaLinked;
    data['isSinricProAppLinked'] = isSinricProAppLinked;
    data['isSmartThingsLinked'] = isSmartThingsLinked;
    data['isIFTTTLinked'] = isIFTTTLinked;
    data['isVerified'] = isVerified;
    data['sendNewsLetters'] = sendNewsLetters;
    data['name'] = name;
    data['email'] = email;
    data['timeZone'] = timeZone;
    data['displayName'] = displayName;
    data['isManufacturer'] = isManufacturer;
    data['country'] = country;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['lastLogInAt'] = lastLogInAt;
    data['id'] = id;
    return data;
  }
}

class Notifications {
  bool? web;
  bool? mobile;
  List<String>? devices;

  Notifications({this.web, this.mobile, this.devices});

  Notifications.fromJson(Map<String, dynamic> json) {
    web = json['web'];
    mobile = json['mobile'];

  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['web'] = web;
    data['mobile'] = mobile;
    return data;
  }
}
