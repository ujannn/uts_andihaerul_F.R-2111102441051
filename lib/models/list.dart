class Listed {
  String id;
  String listText;
  bool isDone;

  Listed({required this.id, required this.listText, this.isDone = false});

  static List<Listed> todoList() {
    return [
      Listed(id: '01', listText: 'Sholat Subuh', isDone: true),
      Listed(id: '02', listText: 'Mandi pagi', isDone: true),
      Listed(
        id: '03',
        listText: 'Tugas Web lanjut',
      ),
      Listed(
        id: '04',
        listText: 'Tugas Kecerdasan Buatan',
      ),
      Listed(
        id: '05',
        listText: 'Makan Siang',
      ),
    ];
  }
}
