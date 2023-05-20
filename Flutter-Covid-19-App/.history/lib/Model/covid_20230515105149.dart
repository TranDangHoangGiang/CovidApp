Skip to main content
JSON to Dart Converter
HOMEDARTFIREBASEFLUTTERQUICK APPSUTILSWIDGETSSERIES
JSON to Dart Online Converter
Paste your JSON in the textarea below, click convert and get your Dart classes for free.

Your input JSON




Your dart class name goes here
 Use private fields
class Autogenerated {
  Total total;
  Total today;
  List<Overview> overview;
  List<Locations> locations;

  Autogenerated({this.total, this.today, this.overview, this.locations});

  Autogenerated.fromJson(Map<String, dynamic> json) {
    total = json['total'] != null ? new Total.fromJson(json['total']) : null;
    today = json['today'] != null ? new Total.fromJson(json['today']) : null;
    if (json['overview'] != null) {
      overview = new List<Overview>();
      json['overview'].forEach((v) {
        overview.add(new Overview.fromJson(v));
      });
    }
    if (json['locations'] != null) {
      locations = new List<Locations>();
      json['locations'].forEach((v) {
        locations.add(new Locations.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.total != null) {
      data['total'] = this.total.toJson();
    }
    if (this.today != null) {
      data['today'] = this.today.toJson();
    }
    if (this.overview != null) {
      data['overview'] = this.overview.map((v) => v.toJson()).toList();
    }
    if (this.locations != null) {
      data['locations'] = this.locations.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Total {
  Internal internal;
  Internal world;

  Total({this.internal, this.world});

  Total.fromJson(Map<String, dynamic> json) {
    internal = json['internal'] != null
        ? new Internal.fromJson(json['internal'])
        : null;
    world = json['world'] != null ? new Internal.fromJson(json['world']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.internal != null) {
      data['internal'] = this.internal.toJson();
    }
    if (this.world != null) {
      data['world'] = this.world.toJson();
    }
    return data;
  }
}

class Internal {
  int death;
  int treating;
  int cases;
  int recovered;

  Internal({this.death, this.treating, this.cases, this.recovered});

  Internal.fromJson(Map<String, dynamic> json) {
    death = json['death'];
    treating = json['treating'];
    cases = json['cases'];
    recovered = json['recovered'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['death'] = this.death;
    data['treating'] = this.treating;
    data['cases'] = this.cases;
    data['recovered'] = this.recovered;
    return data;
  }
}

class Overview {
  String date;
  int death;
  int treating;
  int cases;
  int recovered;
  int avgCases7day;
  int avgRecovered7day;
  int avgDeath7day;

  Overview(
      {this.date,
      this.death,
      this.treating,
      this.cases,
      this.recovered,
      this.avgCases7day,
      this.avgRecovered7day,
      this.avgDeath7day});

  Overview.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    death = json['death'];
    treating = json['treating'];
    cases = json['cases'];
    recovered = json['recovered'];
    avgCases7day = json['avgCases7day'];
    avgRecovered7day = json['avgRecovered7day'];
    avgDeath7day = json['avgDeath7day'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['death'] = this.death;
    data['treating'] = this.treating;
    data['cases'] = this.cases;
    data['recovered'] = this.recovered;
    data['avgCases7day'] = this.avgCases7day;
    data['avgRecovered7day'] = this.avgRecovered7day;
    data['avgDeath7day'] = this.avgDeath7day;
    return data;
  }
}

class Locations {
  String name;
  int death;
  int treating;
  int cases;
  int recovered;
  int casesToday;

  Locations(
      {this.name,
      this.death,
      this.treating,
      this.cases,
      this.recovered,
      this.casesToday});

  Locations.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    death = json['death'];
    treating = json['treating'];
    cases = json['cases'];
    recovered = json['recovered'];
    casesToday = json['casesToday'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['death'] = this.death;
    data['treating'] = this.treating;
    data['cases'] = this.cases;
    data['recovered'] = this.recovered;
    data['casesToday'] = this.casesToday;
    return data;
  }
}
class Autogenerated {
  Total total;
  Total today;
  List<Overview> overview;
  List<Locations> locations;

  Autogenerated({this.total, this.today, this.overview, this.locations});

  Autogenerated.fromJson(Map<String, dynamic> json) {
    total = json['total'] != null ? new Total.fromJson(json['total']) : null;
    today = json['today'] != null ? new Total.fromJson(json['today']) : null;
    if (json['overview'] != null) {
      overview = new List<Overview>();
      json['overview'].forEach((v) {
        overview.add(new Overview.fromJson(v));
      });
    }
    if (json['locations'] != null) {
      locations = new List<Locations>();
      json['locations'].forEach((v) {
        locations.add(new Locations.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.total != null) {
      data['total'] = this.total.toJson();
    }
    if (this.today != null) {
      data['today'] = this.today.toJson();
    }
    if (this.overview != null) {
      data['overview'] = this.overview.map((v) => v.toJson()).toList();
    }
    if (this.locations != null) {
      data['locations'] = this.locations.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Total {
  Internal internal;
  Internal world;

  Total({this.internal, this.world});

  Total.fromJson(Map<String, dynamic> json) {
    internal = json['internal'] != null
        ? new Internal.fromJson(json['internal'])
        : null;
    world = json['world'] != null ? new Internal.fromJson(json['world']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.internal != null) {
      data['internal'] = this.internal.toJson();
    }
    if (this.world != null) {
      data['world'] = this.world.toJson();
    }
    return data;
  }
}

class Internal {
  int death;
  int treating;
  int cases;
  int recovered;

  Internal({this.death, this.treating, this.cases, this.recovered});

  Internal.fromJson(Map<String, dynamic> json) {
    death = json['death'];
    treating = json['treating'];
    cases = json['cases'];
    recovered = json['recovered'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['death'] = this.death;
    data['treating'] = this.treating;
    data['cases'] = this.cases;
    data['recovered'] = this.recovered;
    return data;
  }
}

class Overview {
  String date;
  int death;
  int treating;
  int cases;
  int recovered;
  int avgCases7day;
  int avgRecovered7day;
  int avgDeath7day;

  Overview(
      {this.date,
      this.death,
      this.treating,
      this.cases,
      this.recovered,
      this.avgCases7day,
      this.avgRecovered7day,
      this.avgDeath7day});

  Overview.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    death = json['death'];
    treating = json['treating'];
    cases = json['cases'];
    recovered = json['recovered'];
    avgCases7day = json['avgCases7day'];
    avgRecovered7day = json['avgRecovered7day'];
    avgDeath7day = json['avgDeath7day'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['death'] = this.death;
    data['treating'] = this.treating;
    data['cases'] = this.cases;
    data['recovered'] = this.recovered;
    data['avgCases7day'] = this.avgCases7day;
    data['avgRecovered7day'] = this.avgRecovered7day;
    data['avgDeath7day'] = this.avgDeath7day;
    return data;
  }
}

class Locations {
  String name;
  int death;
  int treating;
  int cases;
  int recovered;
  int casesToday;

  Locations(
      {this.name,
      this.death,
      this.treating,
      this.cases,
      this.recovered,
      this.casesToday});

  Locations.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    death = json['death'];
    treating = json['treating'];
    cases = json['cases'];
    recovered = json['recovered'];
    casesToday = json['casesToday'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['death'] = this.death;
    data['treating'] = this.treating;
    data['cases'] = this.cases;
    data['recovered'] = this.recovered;
    data['casesToday'] = this.casesToday;
    return data;
  }
}

Easy to Use
The Dart to JSON class is easy to use. Paste your valid JSON code and tap on Generate Dart button to generate the Dart Class.

Instant Generation
The tools helps you to generate the Dart code instantly in a few seconds. The tool helps to write dart classes instantly.

Custom Dart Class
You can provide custom dart class so that you can you the generated code instantly in your dart or flutter application.

JSON input as object or array of objects
Copy and paste your json object or array of objects in the JSON input box. You can name your custom class in the input box below the textarea and hit the Generate Dart button to generate the Dart Class.

JSON stands for Javascript Object Notation which is one of the popular data interchange format. You can find more details in www.json.org website.


Dart Output
The input JSON is instantly converted to the Dart class when you press the Generate Dart button. You can copy the Dart code using Copy to Clipboard button too.

Dart is a programming language developed by Google and can be used to build mobile, desktop, server and web based applications. You can find more details in dart.dev website. Flutter framework is a popular framework that uses Dart programming language.


ABOUT US CONTACT US PRIVACY POLICY
Copyright © 2023, JSON to Dart