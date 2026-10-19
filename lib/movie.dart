class Movie {
  final String title;
  final String genre;
  final int year;
  final double rating;
  final String image;

  const Movie({
    required this.title,
    required this.genre,
    required this.year,
    required this.rating,
    required this.image,
  });
}

final List<Movie> movies = [
  const Movie(
    title: 'Harry Potter and the Philosopher\'s Stone',
    genre: 'Fantasy',
    year: 2001,
    rating: 7.6,
    image: 'assets/posters/harry 1.jpg',
  ),
  const Movie(
    title: 'Harry Potter and the Chamber of Secrets',
    genre: 'Fantasy',
    year: 2002,
    rating: 7.5,
    image: 'assets/posters/harry2.jpg',
  ),
  const Movie(
    title: 'Harry Potter and the Prisoner of Azkaban',
    genre: 'Fantasy',
    year: 2004,
    rating: 7.9,
    image: 'assets/posters/harry3.jpg',
  ),
  const Movie(
    title: 'Harry Potter and the Goblet of Fire',
    genre: 'Fantasy',
    year: 2005,
    rating: 7.7,
    image: 'assets/posters/harry4.jpg',
  ),
  const Movie(
    title: 'Harry Potter and the Order of the Phoenix',
    genre: 'Fantasy',
    year: 2007,
    rating: 7.5,
    image: 'assets/posters/harry5.jpg',
  ),
  const Movie(
    title: 'Harry Potter and the Half-Blood Prince',
    genre: 'Fantasy',
    year: 2009,
    rating: 7.6,
    image: 'assets/posters/harry6.jpg',
  ),
  const Movie(
    title: 'Harry Potter and the Deathly Hallows: Part 1',
    genre: 'Fantasy',
    year: 2010,
    rating: 7.7,
    image: 'assets/posters/harry7.jpg',
  ),
  const Movie(
    title: 'Harry Potter and the Deathly Hallows: Part 2',
    genre: 'Fantasy',
    year: 2011,
    rating: 8.1,
    image: 'assets/posters/harry8.jpg',
  ),
];
