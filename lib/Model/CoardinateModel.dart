import 'dart:convert';

Chemicals chemicalsFromJson(String str) => Chemicals.fromJson(json.decode(str));

String chemicalsToJson(Chemicals data) => json.encode(data.toJson());

class Chemicals {
    Plane plane;
    List<HitPoint> hitPoints;

    Chemicals({
        this.plane,
        this.hitPoints,
    });

    factory Chemicals.fromJson(Map<String, dynamic> json) => new Chemicals(
        plane: Plane.fromJson(json["plane"]),
        hitPoints: new List<HitPoint>.from(json["hitPoints"].map((x) => HitPoint.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "plane": plane.toJson(),
        "hitPoints": new List<dynamic>.from(hitPoints.map((x) => x.toJson())),
    };
}

class HitPoint {
    int x;
    int y;

    HitPoint({
        this.x,
        this.y,
    });

    factory HitPoint.fromJson(Map<String, dynamic> json) => new HitPoint(
        x: json["x"],
        y: json["y"],
    );

    Map<String, dynamic> toJson() => {
        "x": x,
        "y": y,
    };
}

class Plane {
    HitPoint topLeft;
    HitPoint bottomRight;

    Plane({
        this.topLeft,
        this.bottomRight,
    });

    factory Plane.fromJson(Map<String, dynamic> json) => new Plane(
        topLeft: HitPoint.fromJson(json["topLeft"]),
        bottomRight: HitPoint.fromJson(json["bottomRight"]),
    );

    Map<String, dynamic> toJson() => {
        "topLeft": topLeft.toJson(),
        "bottomRight": bottomRight.toJson(),
    };
}