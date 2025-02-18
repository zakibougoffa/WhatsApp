class PaginationModel<Model> {
  List<Model>? data;
  Meta? meta;
  Links? links;

  PaginationModel({this.data, this.meta, this.links});

  PaginationModel.fromJson(Map<String, dynamic> json, Function modelFromJson) {
    if (json['meta'] != null) {
      meta = Meta.fromJson(json['meta']);
    }
    if (json['links'] != null) {
      links = Links.fromJson(json['links']);
    }
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data!.add(modelFromJson(v));
      });
    }
  }
}

class Meta {
  int? currentPage;
  int? from;
  int? lastPage;
  List<Link>? links;
  String? path;
  int? perPage;
  int? to;
  int? total;

  Meta({this.currentPage, this.from, this.lastPage, this.links, this.path, this.perPage, this.to, this.total});

  Meta.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    from = json['from'];
    lastPage = json['last_page'];
    if (json['links'] != null) {
      links = <Link>[];
      json['links'].forEach((v) {
        links!.add(Link.fromJson(v));
      });
    }
    path = json['path'];
    perPage = (json['per_page'] is String)?int.parse(json['per_page']) : json['per_page'] ;
    to = json['to'];
    total = json['total'];
  }
}

class Links {
  String? first;
  String? last;
  dynamic prev;
  String? next;

  Links({this.first, this.last, this.prev, this.next});

  Links.fromJson(Map<String, dynamic> json) {
    first = json['first'];
    last = json['last'];
    prev = json['prev'];
    next = json['next'];
  }
}

class Link {
  String? url;
  String? label;
  bool? active;

  Link({this.url, this.label, this.active});

  Link.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    label = json['label'];
    active = json['active'];
  }
}
