
//  pokedexView.swift
//  pokemon
//
//  Created by taisei sumiyama on 2021/05/15.
//

import SwiftUI

struct PokedexView: View {
    private let gridItem = [GridItem(.flexible()),GridItem(.flexible())]
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: gridItem,spacing: 16) {
                    ForEach(viewModel.pokemon){ pokemon in
                        PokemonCell(pokemon:  pokemon,
                                    viewModel: viewModel)
                    }
                }
            }
            .navigationTitle("pokedex")
        }
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
