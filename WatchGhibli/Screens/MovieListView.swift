//
//  MovieListView.swift
//  WatchGhibli
//
//  Created by Deonte Kilgore on 4/15/24.
//

import SwiftUI

struct MovieListView: View {
    @EnvironmentObject var moviesViewModel: MoviesViewModel

        var body: some View {
            List(moviesViewModel.movies) { movie in
                Text(movie.title)
//                NavigationLink(destination: MovieDetailView(movie: movie)) {
//                    Text(movie.title)
//                }
            }
            .navigationTitle("Movies")
        }
    
}

#Preview {
    MovieListView()
}
