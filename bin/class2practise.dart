import 'package:class2practise/class2practise.dart' as class2practise;

void main() {
  Movie m1 = Movie(
      name: 'Ironman',
      category: 'SciFi',
      rating: 8.0,
      production: Production(name: 'Marvel', budget: 120, boxoffice: 850),
      castList: [
        Cast(name: 'RoberDowneJr', role: 'Tony Stark'),
        Cast(name: 'John Fabreu', role: 'Happy Hogan'),
        Cast(name: 'Samuel Jakson', role: 'Nick Fury'),
      ]);
  Movie m2 = Movie(
      name: 'Captain America',
      category: 'SciFi',
      rating: 8.2,
      production: Production(name: 'Marvel', budget: 150, boxoffice: 750),
      castList: [
        Cast(name: 'Chris Evans', role: 'Steve Rogers'),
        Cast(name: 'Nayeeka', role: 'Peggy Carter'),
        Cast(name: 'Hat kata', role: 'Bucky'),
      ]);
  Movie m3 = Movie(
      name: 'Spider Man',
      category: 'SciFi',
      rating: 9.5,
      production:
          Production(name: 'Marvel & Sony', budget: 450, boxoffice: 10000),
      castList: [
        Cast(name: 'Tom Holland', role: 'Peter Parker'),
        Cast(name: 'William Dafoe', role: 'Goblin'),
        Cast(name: 'Tobey Maguire', role: 'Spidey 2'),
      ]);
  List<Movie> movieList = [m1, m2];
  for (var movie in movieList) {
    print(movie.name);
    print('________');
    print('\tCategory: ${movie.category}');
    print('\tRating: ${movie.rating}');
    print('\tProduction Name: ${movie.production?.name}');
    print('\tBudget: ${movie.production?.budget}');
    print('\tBoxOFFICE Collection: ${movie.production?.boxoffice}');
    List<String> names = List.generate(
        movie.castList!.length, (index) => movie.castList![index].name);
    String castName = names.join(',');
    print('\tCast Names: $castName');

    List<String> roles = List.generate(
        movie.castList!.length, (index) => movie.castList![index].role);
    String castRole = roles.join(',');
    print('\tRoles: $castRole');
  }
}

class Movie {
  String? name;
  String? category;
  double? rating;
  Production? production;
  List<Cast>? castList;

  Movie({
    this.name,
    this.category,
    this.rating,
    this.production,
    this.castList,
  });
}

class Production {
  String name;
  int budget;
  int boxoffice;

  Production(
      {required this.name, required this.budget, required this.boxoffice});
}

class Cast {
  String name;
  String role;

  Cast({required this.name, required this.role});
}
