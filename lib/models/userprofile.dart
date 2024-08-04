class UserProfile {
  String? uid;
  String? name;
  String? dpUrl;

  UserProfile({
    required this.uid,
    required this.name,
    required this.dpUrl,
  });

  UserProfile.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    name = json['name'];
    dpUrl = json['dpUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['dpUrl'] = dpUrl;
    data['uid'] = uid;
    return data;
  }
}