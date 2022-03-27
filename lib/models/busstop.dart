class BusStop{

  String name;
  String id;
  num lat;  // 위도
  num long; // 경도

  BusStop(this.name, this.id, this.lat, this.long);

  List<Map<String, Object>> lists = [
    {
      "name": "정류장1",
      "latitude": 111.111,
      "longitude": 222.222,
      "id": '12345',
    },
  ];

}