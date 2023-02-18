import 'package:carousel_slider/carousel_slider.dart';
import 'package:first_ui/pages/about_screen.dart';
import 'package:first_ui/widgets/movie_card.dart';
import 'package:first_ui/widgets/section_title.dart';
import 'package:flutter/material.dart';

import "../model/MovieDetail.dart";
import "../ultis/TitlteConstants.dart" as constantsString;

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  final List<MovieDetail> mockData = [
    MovieDetail(
        id: 1,
        title: "Nhà Bà Nữ",
        author: "Trấn Thành",
        description:
            "Bộ phim kể về cuộc sống gia đình xoay quanh nhà bà nữ.\n Với những mối quan hệ"
            " phức tạp, liệu rằng họ có trở nên hòa hợp?",
        price: 250000,
        imageUrl: "https://i.ytimg.com/vi/IkaP0KJWTsQ/maxresdefault.jpg"),
    MovieDetail(
        id: 2,
        title: "Mèo Đi Hia",
        author: "Joel Crawford",
        description:
            "Lần đầu tiên sau hơn một thập kỷ, DreamWorks Animation giới thiệu một cuộc phiêu lưu mới trong vũ trụ Shrek khi Puss in Boots táo bạo ngoài vòng pháp luật phát hiện ra rằng niềm đam mê với sự nguy hiểm và coi thường sự an toàn của mình đã gây ra hậu quả nghiêm trọng. Puss đã đốt cháy tám trong số chín mạng sống của mình, mặc dù anh ta đã mất đi số lượng trên đường đi. Lấy lại những mạng sống đó sẽ đưa Mèo đi hia vào nhiệm vụ vĩ đại nhất của nó. Người được đề cử Giải Oscar®, Antonio Banderas trở lại với vai trò lồng tiếng cho PiB khét tiếng khi anh bắt đầu cuộc hành trình hoành tráng vào Rừng Đen để tìm Ngôi sao Điều ước thần thoại và khôi phục lại những mạng sống đã mất của mình. Nhưng chỉ còn một mạng sống, Puss sẽ phải hạ mình và nhờ sự giúp đỡ từ người đồng đội cũ cũng như kẻ thù không đội trời chung của mình: Kitty Soft Paws (ứng cử viên Oscar® Salma Hayek) quyến rũ. Trong nhiệm vụ của mình, Puss và Kitty sẽ được hỗ trợ - trái ngược với khả năng phán đoán tốt hơn của chúng - bởi một con chó lầm lì, hay nói chuyện, không ngừng vui vẻ, Perro (Harvey Guillén, What We Do in the Shadows).\n Cùng với nhau, bộ ba anh hùng của chúng ta sẽ phải đi trước một bước so với Goldilocks (người được đề cử giải Oscar, Florence Pugh, Góa phụ đen) và Gia đình tội phạm Three Bears, Big Jack Horner (người chiến thắng giải Emmy John Mulaney, Big Mouth) và thợ săn tiền thưởng đáng sợ , Con sói xấu xa (Wagner Moura, Narcos).",
        price: 199000,
        imageUrl: "https://img.meta.com.vn/data/image/2022/12/27/lich-chieu-phim-meo-di-hia-3.jpg"),
    MovieDetail(
        id: 3,
        title: "Nhà bà nữ 2",
        author: "Trấn Thành",
        description:
            "Bộ phim kể về cuộc sống gia đình xoay quanh nhà bà nữ.\n Với những mối quan hệ"
            " phức tạp, liệu rằng họ có trở nên hòa hợp?",
        price: 250000,
        imageUrl: "https://i.ytimg.com/vi/IkaP0KJWTsQ/maxresdefault.jpg"),
    MovieDetail(
        id: 4,
        title: "Nhà bà nữ 3",
        author: "Trấn Thành",
        description:
            "Bộ phim kể về cuộc sống gia đình xoay quanh nhà bà nữ.\n Với những mối quan hệ"
            " phức tạp, liệu rằng họ có trở nên hòa hợp?",
        price: 250000,
        imageUrl: "https://i.ytimg.com/vi/IkaP0KJWTsQ/maxresdefault.jpg")
  ];
  final List<MovieDetail> newestMovies = [
    MovieDetail(
        id: 1,
        title: "Nhà bà nữ 0",
        author: "Trấn Thành",
        description:
            "Bộ phim kể về cuộc sống gia đình xoay quanh nhà bà nữ.\n Với những mối quan hệ"
            " phức tạp, liệu rằng họ có trở nên hòa hợp?",
        price: 250000,
        imageUrl: "https://i.ytimg.com/vi/IkaP0KJWTsQ/maxresdefault.jpg"),
    MovieDetail(
        id: 2,
        title: "Nhà bà nữ 1",
        author: "Trấn Thành",
        description:
            "Bộ phim kể về cuộc sống gia đình xoay quanh nhà bà nữ.\n Với những mối quan hệ"
            " phức tạp, liệu rằng họ có trở nên hòa hợp?",
        price: 250000,
        imageUrl: "https://i.ytimg.com/vi/IkaP0KJWTsQ/maxresdefault.jpg"),
    MovieDetail(
        id: 3,
        title: "Nhà bà nữ 2",
        author: "Trấn Thành",
        description:
            "Bộ phim kể về cuộc sống gia đình xoay quanh nhà bà nữ.\n Với những mối quan hệ"
            " phức tạp, liệu rằng họ có trở nên hòa hợp?",
        price: 250000,
        imageUrl:
            "https://img.cdn.vncdn.io/cinema/img/90230048152521353-kOvKHespgDEfzbYpq1cas2i8EZn.jpg"),
    MovieDetail(
        id: 4,
        title: "Nhà bà nữ 3",
        author: "Trấn Thành",
        description:
            "Bộ phim kể về cuộc sống gia đình xoay quanh nhà bà nữ.\n Với những mối quan hệ"
            " phức tạp, liệu rằng họ có trở nên hòa hợp?",
        price: 250000,
        imageUrl:
            "https://img.cdn.vncdn.io/cinema/img/90230048152521353-kOvKHespgDEfzbYpq1cas2i8EZn.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {Navigator.push(
                      context, MaterialPageRoute(builder: (_) => AboutScreen()));},
                  icon: Icon(
                    Icons.contact_support,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SectionTitle(title: "BEST SELLER"),
          Container(
              child: CarouselSlider(
            options: CarouselOptions(
                aspectRatio: 1.9,
                viewportFraction: 0.7,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height),
            items: newestMovies.map<Widget>((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(i.imageUrl),
                                  fit: BoxFit.fill),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.6),
                                  spreadRadius: 3,
                                  blurRadius: 9,
                                  offset: const Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ])));
                },
              );
            }).toList(),
          )),
          const SectionTitle(title: "RECOMMENDED"),
          SizedBox(
            height: 250,
            child: ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                scrollDirection: Axis.horizontal,
                itemCount: mockData.length,
                itemBuilder: (context, index) {
                  return Padding(padding: EdgeInsets.only(right: 5), child: MovieCard(mockData[index]),);
                }),
          )
        ],
      ),
    );
  }
}
