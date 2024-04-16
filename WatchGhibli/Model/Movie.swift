//
//  Movie.swift
//  WatchGhibli
//
//  Created by Deonte Kilgore on 4/15/24.
//

import Foundation

struct Movie: Codable, Identifiable {
    let id: String
    let title: String
    let originalTitle: String
    let originalTitleRomanised: String
    let image: URL
    let movieBanner: URL
    let description: String
    let director: String
    let producer: String
    let releaseDate: String
    let runningTime: String
    let rtScore: String
    let url: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case originalTitle = "original_title"
        case originalTitleRomanised = "original_title_romanised"
        case image
        case movieBanner = "movie_banner"
        case description
        case director
        case producer
        case releaseDate = "release_date"
        case runningTime = "running_time"
        case rtScore = "rt_score"
        case url
    }
}

class MoviesViewModel: ObservableObject {
    @Published var movies: [Movie] = []

    init() {
        loadMovies()
    }

    func loadMovies() {
        guard let url = Bundle.main.url(forResource: "data", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let decodedMovies = try? JSONDecoder().decode([Movie].self, from: data) else {
            return
        }
        self.movies = decodedMovies
    }
}
