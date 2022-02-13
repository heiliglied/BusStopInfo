class BusStop{

  String name;
  num number;
  num lat;  // 위도
  num long; // 경도

  BusStop(this.name, this.number, this.lat, this.long);

  List<Map<String, Object>> lists = [
    {
      "name": "정류장1",
      "latitude": 111.111,
      "longitude": 222.222,
      "number": 12345,
    },
  ];

}