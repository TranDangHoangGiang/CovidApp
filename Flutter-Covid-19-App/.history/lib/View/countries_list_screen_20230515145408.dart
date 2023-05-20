FutureBuilder<Locations>(
  future: fetcity(selectedCity!),
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      // Trạng thái chờ, hiển thị màn hình loading hoặc thông báo tương tự
      return CircularProgressIndicator();
    } else if (snapshot.hasError) {
      // Có lỗi xảy ra trong quá trình tải dữ liệu
      return Text('Error: ${snapshot.error}');
    } else if (snapshot.hasData) {
      // Có dữ liệu hợp lệ, xử lý và hiển thị nội dung
      var data = snapshot.data;
      if (data != null) {
        return Column(
          children: [
            PieChart(
              dataMap: {
                "Recovered": double.parse(data.recovered.toString()),
                "Deaths": double.parse(data.death.toString()),
              },
              // Các thuộc tính khác của biểu đồ
            ),
            // Các phần tử khác trong giao diện
          ],
        );
      } else {
        return Text('No data available');
      }
    } else {
      // Không có dữ liệu hoặc dữ liệu là null
      return Text('No data available');
    }
  },
)
