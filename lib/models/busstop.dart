class BusStop{

  String name;
  String code;
  num lat;  // 위도
  num long; // 경도

  BusStop(this.name, this.code, this.lat, this.long);

  List<Map<String, Object>> lists = [
    {
      "name": "정류장1",
      "latitude": 111.111,
      "longitude": 222.222,
      "code": 12345,
    },
  ];

}