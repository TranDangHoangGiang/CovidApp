FutureBuilder(
  future: newsListViewModel.fetcity(selectedCity!),
  builder: (context, AsyncSnapshot<Locations> snapshot) {
    if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
      var data = snapshot.data!; // Đảm bảo snapshot.data không null
      // Xử lý data và hiển thị nội dung
      return Column(
        children: [
          PieChart(
            dataMap: {
              // "Total": double.parse(
              //     snapshot.data!.toString()),
              "Recovered": double.parse(data.recovered.toString()),
              "Deaths": double.parse(data.death.toString()),
            },
            animationDuration: Duration(milliseconds: 1200),
            chartLegendSpacing: 32,
            chartRadius: MediaQuery.of(context).size.width / 3.2,
            colorList: colorList,
            initialAngleInDegree: 0,
            chartType: ChartType.ring,
            ringStrokeWidth: 25,
            legendOptions: const LegendOptions(
              showLegendsInRow: false,
              legendPosition: LegendPosition.left,
              showLegends: true,
              legendTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            chartValuesOptions: const ChartValuesOptions(
              showChartValueBackground: true,
              showChartValues: true,
              showChartValuesInPercentage: true,
              showChartValuesOutside: true,
              decimalPlaces: 1,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * .06),
            child: Card(
              child: Column(
                children: [
                  ReusableRow(
                      title: ' Cases',
                      value: data.cases.toString()),
                  ReusableRow(
                      title: 'Deaths',
                      value: data.death.toString()),
                  ReusableRow(
                      title: 'Recovered',
                      value: data.recovered.toString()),
                  ReusableRow(
                      title: 'Treating',
                      value: data.treating.toString()),
                  ReusableRow(
                      title: 'casesToday',
                      value: data.casesToday.toString()),
                ],
              ),
            ),
          ),
        ],
      );
    } else {
      // Hiển thị widget khác trong trường hợp không có dữ liệu hoặc đang loading
      return Expanded(
        flex: 1,
        child: SpinKitFadingCircle(
          color: Colors.white,
          size: 50.0,
          controller: _controller,
        ),
      );
    }
  },
)
