import 'package:flutter/material.dart';
import 'package:imdb_watchlist_ui/movie.dart';
import 'package:imdb_watchlist_ui/series.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImdbWatchlistScreen extends StatefulWidget {
  const ImdbWatchlistScreen({Key? key}) : super(key: key);

  @override
  State<ImdbWatchlistScreen> createState() => _ImdbWatchlistScreenState();
}

class _ImdbWatchlistScreenState extends State<ImdbWatchlistScreen> {

  List<String> labels1 = ["Film", "TV Dizisi", "TV Mini-Dizisi","Daha Fazla..."];
  List<bool> labels1isSelected = [false, false, false, false ];

  List<String> labels2 = ["Sinemalarda", "Prime Video"];
  List<bool> labels2isSelected = [false, false];

  List<String> labels3 = ["Aksiyon", "Drama", "Macera","Daha Fazla..."];
  List<bool> labels3isSelected = [false, false, false, false ];



  //movieAndSeriesList.add(value)

  Future<List<dynamic>> fetchMovies() async{

    List movieAndSeriesList = [
      Movie(movieTitle: 'Top Gun: Maverick',
          movieCoverLink: 'https://m.media-amazon.com/images/M/MV5BMmIwZDMyYWUtNTU0ZS00ODJhLTg2ZmEtMTk5ZmYzODcxODYxXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_UX670_CR0,0,670,980_AL_.jpg',
          publishYear: '2022',
          movieMinutes: 130,
          imdbScore: 8.6,
          metaScore: 78,
          ageLimit: 'PG-13',
      isSponsored: false),
      Movie(movieTitle: 'Samrat Prithviraj',
          movieCoverLink: 'https://m.media-amazon.com/images/M/MV5BNzlkZjI3ZDctNTEzMy00MjUxLWI5YjQtYjg0ODNjNzdjZjg0XkEyXkFqcGdeQXVyNTkzNDQ4ODc@._V1_QL75_UY740_CR3,0,500,704_.jpg',
          publishYear: '2022',
          movieMinutes: 135,
          imdbScore: 7.9,
          metaScore: null,
          ageLimit: null,
      isSponsored: true),
      Series(movieTitle: 'Obi-Wan Kenobi',
          movieCoverLink: 'https://m.media-amazon.com/images/M/MV5BOTAxOTlmOTAtMjA0Yy00YjVjLWE3OTQtYjAzMWMxOTAwZTY1XkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_QL75_UX670_CR0,0,670,980_.jpg',
          publishYear: '2022',
          episodesCount: 6,
          imdbScore: 7.5,
          ageLimit: 'TV-14',
          isSponsored: false),
      Series(movieTitle: 'Stranger Things',
          movieCoverLink: 'https://m.media-amazon.com/images/M/MV5BODZlYjQ4NzYtZTg1MC00NGY4LTg4NjQtNGE3ZjRkMjk3YjMyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_QL75_UY740_CR5,0,500,740_.jpg',
          publishYear: '2016',
          episodesCount: 35,
          imdbScore: 8.7,
          ageLimit: 'TV-14',
          isSponsored: false),
      Movie(movieTitle: 'Doctor Strange in the Multiverse of Madness',
          movieCoverLink: 'https://m.media-amazon.com/images/M/MV5BNWM0ZGJlMzMtZmYwMi00NzI3LTgzMzMtNjMzNjliNDRmZmFlXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_QL75_UX500_CR0,0,500,740_.jpg',
          publishYear: '2022',
          movieMinutes: 126,
          imdbScore: 7.3,
          metaScore: 60,
          ageLimit: 'pg-13',
          isSponsored: false),
      Movie(movieTitle: 'Everything Everywhere All at Once',
          movieCoverLink: 'https://m.media-amazon.com/images/M/MV5BYTdiOTIyZTQtNmQ1OS00NjZlLWIyMTgtYzk5Y2M3ZDVmMDk1XkEyXkFqcGdeQXVyMTAzMDg4NzU0._V1_QL75_UY740_CR1,0,500,740_.jpg',
          publishYear: '2022',
          movieMinutes: 139,
          imdbScore: 8.3,
          metaScore: 81,
          ageLimit: 'R',
          isSponsored: false),
    ];

    return movieAndSeriesList ;

  }

  var _selectedIndex=3;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: const Text("İzleyicilerin en sevdikleri",style: TextStyle(color: Colors.white),),),
      body: SingleChildScrollView(
        //height: MediaQuery.of(context).size.height,
        //width: MediaQuery.of(context).size.width,
        //color: Colors.black87,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Text("Bu haftanın en iyi televizyon ve filmleri",style: TextStyle(color: Colors.white60),),
                  Spacer(),
                  Text("IMDb UI",style: TextStyle(color: Colors.red),)
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              height:32,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 11),
                  ToggleButtons(
                    borderWidth: 1,
                    textStyle: TextStyle(
                        fontSize: 13),
                    borderRadius: BorderRadius.circular(18),
                    onPressed: (int index) {
                      setState(
                            () {
                        },
                      );
                    },
                    isSelected: labels1isSelected,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(labels1[0],style: TextStyle(color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(labels1[1],style: TextStyle(color: Colors.white)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(labels1[2],style: TextStyle(color: Colors.white)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(labels1[3],style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  ToggleButtons(
                    borderWidth: 1,
                    textStyle: TextStyle(
                        fontSize: 13),
                    borderRadius: BorderRadius.circular(18),
                    onPressed: (int index) {
                      setState(
                            () {
                        },
                      );
                    },
                    isSelected: labels2isSelected,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(labels2[0],style: TextStyle(color: Colors.white)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(labels2[1],style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  ToggleButtons(
                    borderWidth: 1,
                    textStyle: TextStyle(
                        fontSize: 13,color: Colors.white),
                    borderRadius: BorderRadius.circular(18),
                    onPressed: (int index) {
                      setState(
                            () {
                        },
                      );
                    },
                    isSelected: labels3isSelected,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(labels3[0],style: TextStyle(color: Colors.white)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(labels3[1],style: TextStyle(color: Colors.white)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(labels3[2],style: TextStyle(color: Colors.white)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(labels3[3],style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Divider(thickness: 0.75),
            Stack(
              children: [
              Container(
                  height: 35),
              Positioned(
                  top: 7,
                  right: 22,
                  child: GestureDetector(
                      onTap: (){

                      },
                      child:Icon(Icons.filter_list_outlined,size: 20,color: Colors.white70,)),
              ),
                Positioned(
                  left: 15,
                  top: 0,
                  child: const Text("50 Results"),),
                Positioned(
                    left: 15,
                    top: 18,
                    child: const Text("Sıralama ölçütü:",style: TextStyle(color: Colors.white60),
                    ),
                ),

            ],
            ),
            Divider(thickness: 1.25),


               FutureBuilder<List<dynamic>>(
                  future: fetchMovies(),
                  builder: (context,snapshot){

                    if(snapshot.hasData){
                      var collections = snapshot.data;
                      return ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: collections!.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: collections[index].isSponsored ? 170 : 150,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(width: 8),
                                      Stack(
                                        children: [
                                          Container(
                                            height: 120,
                                            child: Image.network(collections[index].movieCoverLink),
                                          ),
                                          Positioned(
                                            left: -10,
                                              top: -6,
                                              child: Icon(Icons.bookmark,size: 45,color: Colors.black38,),
                                          ),
                                          Positioned(
                                            left: 2,
                                            top: 2,
                                            child: Icon(Icons.add,size: 23,),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 12),
                                      collections[index].runtimeType == Movie
                                          ? Flexible(
                                            child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                            Text("${collections[index].movieTitle}",style: TextStyle(fontSize: 17),),
                                          SizedBox(height: 4),
                                          Text("${collections[index].publishYear}  ${(collections[index].movieMinutes/60).toInt()} sa ${collections[index].movieMinutes%60} dk  ${collections[index].ageLimit == null ? '' : collections[index].ageLimit}",style: TextStyle(fontSize: 15.5,color: Colors.white70)),
                                          SizedBox(height: 4),
                                          Row(
                                              children: [
                                                SvgPicture.asset('assets/star_fill.svg',height: 17,width: 17,),
                                                SizedBox(width: 4),
                                                Text("${collections[index].imdbScore}",style: TextStyle(fontSize: 17)),
                                                SizedBox(width: 10),
                                                collections[index].metaScore != null ? Container(
                                                  height: 18,
                                                  width: 18,
                                                  color: Colors.green,
                                                  child: Center(
                                                    child: Text("${ collections[index].metaScore}",style: TextStyle(color: Colors.white),
                                                    ),
                                                  ),
                                                ):Center(),
                                              ],
                                            ),
                                          SizedBox(height: 4),
                                            Text("İzleme seçenekleri",style: TextStyle(color: Colors.blue,fontSize: 17.5),),
                                        ],
                                      ),
                                          ) : Flexible(
                                            child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                            Text("${collections[index].movieTitle}",style: TextStyle(fontSize: 17)),
                                            SizedBox(height: 4),
                                            Text("${collections[index].publishYear} ${collections[index].episodesCount} ${collections[index].ageLimit}",style: TextStyle(fontSize: 17,color: Colors.white70)),
                                          SizedBox(height: 4),
                                            Row(
                                              children: [
                                                SvgPicture.asset('assets/star_fill.svg',height: 17,width: 17,),
                                                SizedBox(width: 4),
                                                Text("${collections[index].imdbScore}",style: TextStyle(fontSize: 17)),

                                              ],
                                            ),
                                          SizedBox(height: 4),

                                        ],
                                      ),
                                          ),
                                    ],
                                  ),
                                  collections[index].isSponsored ?
                                  Column(
                                    children: [
                                      SizedBox(height: 2),
                                      Divider(thickness: 7),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text("Sponsored  ",style: TextStyle(fontSize: 13.6,color: Colors.white54),)
                                        ],
                                      ),
                                    ],
                                  )
                                      : Center(),
                                  collections[index].isSponsored ? Center()
                                  : SizedBox(height: 7) ,
                                  Divider(thickness: 1.2,),

                                ],
                              ),
                            );
                          });
                    }
                    else return Center();

                  }
                  ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white54,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.yellow,
        backgroundColor: Colors.black12,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_fill_outlined),
            label: 'Video',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: 'Siz',
            backgroundColor: Color.fromRGBO(43, 41, 41, 1.0),
          ),
        ],
      ),
    );
  }
}
