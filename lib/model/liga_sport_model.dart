// To parse this JSON data, do
//
//     final englishPremierLeague = englishPremierLeagueFromJson(jsonString);

import 'dart:convert';

EnglishPremierLeague englishPremierLeagueFromJson(String str) => EnglishPremierLeague.fromJson(json.decode(str));

String englishPremierLeagueToJson(EnglishPremierLeague data) => json.encode(data.toJson());

class EnglishPremierLeague {
    final List<Map<String, String?>> teams;

    EnglishPremierLeague({
        required this.teams,
    });

    factory EnglishPremierLeague.fromJson(Map<String, dynamic> json) => EnglishPremierLeague(
        teams: List<Map<String, String?>>.from(json["teams"].map((x) => Map.from(x).map((k, v) => MapEntry<String, String?>(k, v)))),
    );

    Map<String, dynamic> toJson() => {
        "teams": List<dynamic>.from(teams.map((x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
    };
}
