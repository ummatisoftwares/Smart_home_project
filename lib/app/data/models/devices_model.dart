class AllDevices {
  bool? success;
  List<Devices>? devices;

  AllDevices({this.success, this.devices});

  AllDevices.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['devices'] != null) {
      devices = <Devices>[];
      json['devices'].forEach((v) {
        devices?.add(Devices.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['success'] = success;
    if (devices != null) {
      data['devices'] = devices?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Devices {
  Equalizer? equalizer;
  EnergyUsageEstimation? energyUsageEstimation;
  Stats? stats;
  Timers? timers;
  Notifications? notifications;
  String? name;
  List<Null>? alias;
  String? description;
  AccessKey? accessKey;
  Product? product;
  Room? room;
  bool? deactivated;
  List<String>? attributes;
  String? powerState;
  bool? isOnline;
  String? payloadFormat;
  String? transportProtocol;
  String? createdAt;
  String? updatedAt;
  String? id;

  Devices(
      {this.equalizer,
      this.energyUsageEstimation,
      this.stats,
      this.timers,
      this.notifications,
      this.name,
      this.alias,
      this.description,
      this.accessKey,
      this.product,
      this.room,
      this.deactivated,
      this.attributes,
      this.powerState,
      this.isOnline,
      this.payloadFormat,
      this.transportProtocol,
      this.createdAt,
      this.updatedAt,
      this.id});

  Devices.fromJson(Map<String, dynamic> json) {
    equalizer = json['equalizer'] != null
        ? Equalizer?.fromJson(json['equalizer'])
        : null;
    energyUsageEstimation = json['energyUsageEstimation'] != null
        ? EnergyUsageEstimation?.fromJson(json['energyUsageEstimation'])
        : null;
    stats = json['stats'] != null ? Stats?.fromJson(json['stats']) : null;
    timers = json['timers'] != null ? Timers?.fromJson(json['timers']) : null;
    notifications = json['notifications'] != null
        ? Notifications?.fromJson(json['notifications'])
        : null;
    name = json['name'];

    description = json['description'];
    accessKey = json['accessKey'] != null
        ? AccessKey?.fromJson(json['accessKey'])
        : null;
    product =
        json['product'] != null ? Product?.fromJson(json['product']) : null;
    room = json['room'] != null ? Room?.fromJson(json['room']) : null;
    deactivated = json['deactivated'];
    powerState = json['powerState'];
    isOnline = json['isOnline'];
    payloadFormat = json['payloadFormat'];
    transportProtocol = json['transportProtocol'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (equalizer != null) {
      data['equalizer'] = equalizer?.toJson();
    }
    if (energyUsageEstimation != null) {
      data['energyUsageEstimation'] = energyUsageEstimation?.toJson();
    }
    if (stats != null) {
      data['stats'] = stats?.toJson();
    }
    if (timers != null) {
      data['timers'] = timers?.toJson();
    }
    if (notifications != null) {
      data['notifications'] = notifications?.toJson();
    }
    data['name'] = name;

    data['description'] = description;
    if (accessKey != null) {
      data['accessKey'] = accessKey?.toJson();
    }
    if (product != null) {
      data['product'] = product?.toJson();
    }
    if (room != null) {
      data['room'] = room?.toJson();
    }
    data['deactivated'] = deactivated;
    data['powerState'] = powerState;
    data['isOnline'] = isOnline;
    data['payloadFormat'] = payloadFormat;
    data['transportProtocol'] = transportProtocol;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['id'] = id;
    return data;
  }
}

class Equalizer {
  List<Null>? bands;

  Equalizer({this.bands});

  Equalizer.fromJson(Map<String, dynamic> json) {

  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    return data;
  }
}

class EnergyUsageEstimation {
  bool? enabled;
  String? type;

  EnergyUsageEstimation({this.enabled, this.type});

  EnergyUsageEstimation.fromJson(Map<String, dynamic> json) {
    enabled = json['enabled'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['enabled'] = enabled;
    data['type'] = type;
    return data;
  }
}

class Stats {
  Messages? messages;
  Connection? connection;

  Stats({this.messages, this.connection});

  Stats.fromJson(Map<String, dynamic> json) {
    messages =
        json['messages'] != null ? Messages?.fromJson(json['messages']) : null;
    connection = json['connection'] != null
        ? Connection?.fromJson(json['connection'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (messages != null) {
      data['messages'] = messages?.toJson();
    }
    if (connection != null) {
      data['connection'] = connection?.toJson();
    }
    return data;
  }
}

class Messages {
  int? sentCount;
  int? receivedCount;

  Messages({this.sentCount, this.receivedCount});

  Messages.fromJson(Map<String, dynamic> json) {
    sentCount = json['sentCount'];
    receivedCount = json['receivedCount'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['sentCount'] = sentCount;
    data['receivedCount'] = receivedCount;
    return data;
  }
}

class Connection {
  int? connectedCount;
  int? disconnectedCount;

  Connection({this.connectedCount, this.disconnectedCount});

  Connection.fromJson(Map<String, dynamic> json) {
    connectedCount = json['connectedCount'];
    disconnectedCount = json['disconnectedCount'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['connectedCount'] = connectedCount;
    data['disconnectedCount'] = disconnectedCount;
    return data;
  }
}

class Timers {
  AutoOnOff? autoOnOff;

  Timers({this.autoOnOff});

  Timers.fromJson(Map<String, dynamic> json) {
    autoOnOff = json['autoOnOff'] != null
        ? AutoOnOff?.fromJson(json['autoOnOff'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (autoOnOff != null) {
      data['autoOnOff'] = autoOnOff?.toJson();
    }
    return data;
  }
}

class AutoOnOff {
  bool? on;
  int? onInterval;
  bool? off;
  int? offInterval;

  AutoOnOff({this.on, this.onInterval, this.off, this.offInterval});

  AutoOnOff.fromJson(Map<String, dynamic> json) {
    on = json['on'];
    onInterval = json['onInterval'];
    off = json['off'];
    offInterval = json['offInterval'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['on'] = on;
    data['onInterval'] = onInterval;
    data['off'] = off;
    data['offInterval'] = offInterval;
    return data;
  }
}

class Notifications {
  Turned? turned;
  NotifyConnection? connection;

  Notifications({this.turned, this.connection});

  Notifications.fromJson(Map<String, dynamic> json) {
    turned = json['turned'] != null ? Turned?.fromJson(json['turned']) : null;
    connection = json['connection'] != null
        ? NotifyConnection?.fromJson(json['connection'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (turned != null) {
      data['turned'] = turned?.toJson();
    }
    if (connection != null) {
      data['connection'] = connection?.toJson();
    }
    return data;
  }
}

class Turned {
  bool? whenOn;
  bool? whenOff;

  Turned({this.whenOn, this.whenOff});

  Turned.fromJson(Map<String, dynamic> json) {
    whenOn = json['whenOn'];
    whenOff = json['whenOff'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['whenOn'] = whenOn;
    data['whenOff'] = whenOff;
    return data;
  }
}

class NotifyConnection {
  bool? whenConnected;
  bool? whenDisconnected;

  NotifyConnection({this.whenConnected, this.whenDisconnected});

  NotifyConnection.fromJson(Map<String, dynamic> json) {
    whenConnected = json['whenConnected'];
    whenDisconnected = json['whenDisconnected'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['whenConnected'] = whenConnected;
    data['whenDisconnected'] = whenDisconnected;
    return data;
  }
}

class AccessKey {
  String? appname;
  String? appkey;
  String? createdAt;
  String? updatedAt;
  String? id;

  AccessKey(
      {this.appname, this.appkey, this.createdAt, this.updatedAt, this.id});

  AccessKey.fromJson(Map<String, dynamic> json) {
    appname = json['appname'];
    appkey = json['appkey'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['appname'] = appname;
    data['appkey'] = appkey;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['id'] = id;
    return data;
  }
}

class Product {
  bool? active;
  List<Attributes>? attributes;
  List<String>? deviceManualSetupInstructions;
  String? name;
  String? manufacturer;
  String? model;
  String? shortDescription;
  String? description;
  String? hwVersion;
  String? swVersion;
  String? code;
  List<String>? actions;
  List<String>? events;
  bool? customType;
  String? customData;
  String? createdAt;
  String? updatedAt;
  List<Null>? supportedModes;
  String? id;

  Product(
      {this.active,
      this.attributes,
      this.deviceManualSetupInstructions,
      this.name,
      this.manufacturer,
      this.model,
      this.shortDescription,
      this.description,
      this.hwVersion,
      this.swVersion,
      this.code,
      this.actions,
      this.events,
      this.customType,
      this.customData,
      this.createdAt,
      this.updatedAt,
      this.supportedModes,
      this.id});

  Product.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    if (json['attributes'] != null) {
      attributes = <Attributes>[];
      json['attributes'].forEach((v) {
        attributes?.add(Attributes.fromJson(v));
      });
    }
    deviceManualSetupInstructions =
        json['deviceManualSetupInstructions'].cast<String>();
    name = json['name'];
    manufacturer = json['manufacturer'];
    model = json['model'];
    shortDescription = json['shortDescription'];
    description = json['description'];
    hwVersion = json['hwVersion'];
    swVersion = json['swVersion'];
    code = json['code'];
    actions = json['actions'].cast<String>();
    events = json['events'].cast<String>();
    customType = json['customType'];
    customData = json['customData'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['active'] = active;
    if (attributes != null) {
      data['attributes'] = attributes?.map((v) => v.toJson()).toList();
    }
    data['deviceManualSetupInstructions'] = deviceManualSetupInstructions;
    data['name'] = name;
    data['manufacturer'] = manufacturer;
    data['model'] = model;
    data['shortDescription'] = shortDescription;
    data['description'] = description;
    data['hwVersion'] = hwVersion;
    data['swVersion'] = swVersion;
    data['code'] = code;
    data['actions'] = actions;
    data['events'] = events;
    data['customType'] = customType;
    data['customData'] = customData;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['id'] = id;
    return data;
  }
}

class Attributes {
  String? name;
  bool? values;

  Attributes({this.name, this.values});

  Attributes.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    values = json['values'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['values'] = values;
    return data;
  }
}

class Room {
  String? home;
  String? name;
  String? description;
  String? user;
  String? createdAt;
  String? updatedAt;
  String? id;

  Room(
      {this.home,
      this.name,
      this.description,
      this.user,
      this.createdAt,
      this.updatedAt,
      this.id});

  Room.fromJson(Map<String, dynamic> json) {
    home = json['home'];
    name = json['name'];
    description = json['description'];
    user = json['user'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['home'] = home;
    data['name'] = name;
    data['description'] = description;
    data['user'] = user;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['id'] = id;
    return data;
  }
}
