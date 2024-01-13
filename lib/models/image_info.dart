class ImageInfo {
  final String imagePath;
  final String title;
  final String time;

  ImageInfo({
    required this.imagePath,
    required this.title,
    required this.time,
  });
}

final List<ImageInfo> imageList = [
  
  ImageInfo(
    imagePath: 'assets/images/image15.jpeg',
    title: 'Thư mời quý cư dân tham gia hội nghị',
    time: '4:00 PM 29/10/2023',
  ),
   ImageInfo(
    imagePath: 'assets/images/image14.jpeg',
    title: 'Hội Nghị Nhà Chung Cư Thường Niên 2023 ',
    time: '5:00 PM  30/10/2023',
  ),
  ImageInfo(
    imagePath: 'assets/images/image13.jpeg',
    title: 'Xử phạt những căn hộ chung cư không sử dụng để ở',
    time: '6:00 PM 28/9/2023'
  ),
  ImageInfo(
    imagePath: 'assets/images/image12.jpeg',
    title: 'Thông tin các xe không xác định ở các tầng để xe',
    time: '3:00 PM 25/9/2023',
  ),
  ImageInfo(
    imagePath: 'assets/images/image11.jpeg',
    title: 'Cảnh cáo các trường hợp để xe không đúng nơi quy định',
    time: '4:00 PM 20/02023',
  ),
  ImageInfo(
    imagePath: 'assets/images/image10.jpeg',
    title: 'Tổ chức huấn luyện cho cư dân về phòng cháy chữa cháy',
    time: '5:00 PM 18/9/2023',
  ),
  ImageInfo(
    imagePath: 'assets/images/image9.jpeg',
    title: 'Ý kiến của cư dân về phòng cháy chữa cháy',
    time: '6:00 PM 17/9/2023',
  ),
  ImageInfo(
    imagePath: 'assets/images/image8.jpeg',
    title: 'Thay đổi một số điều lệnh trong quản lí chung cư',
    time: '5:45 PM 17/9/2023',
  ),
  ImageInfo(
    imagePath: 'assets/images/image7.jpeg',
    title: 'Điều chỉnh theo ý kiến của cư dân về việc taxi có thể đón cư dân ở sân nội bộ hay không ',
    time: '6:00 PM 16/9/2023',
  ),
  // Thêm các thông tin khác vào danh sách
];
