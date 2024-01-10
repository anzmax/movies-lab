import Foundation
import SwiftUI

struct Post: Identifiable {
    var id: Int
    var title: String
    var description: String
    var image: Image
    
    static let data = [
        Post(id: 1, title: "Money Heist",
             description: "Money Heist (Spanish: La casa de papel, transl. The House of Paper) is a Spanish heist crime drama television web series created by Álex Pina. The series shows two heists that are planned for many days led by Professor (Álvaro Morte). The first heist was at Royal Mint of Spain and the second one at the Bank of Spain.", 
             image: Image("moneyheist")),
        Post(id: 2, title: "Berlin",
             description: "During his glory days, Berlin assembles a gang in Paris for an almost impossible heist for 44 million euros' worth of jewels from 34 cities in one night.", 
             image: Image("berlin")),
        Post(id: 3, title: "Fool me once",
             description: "A family has been shaken by two murders. Maya Stern watches security camera footage of her house and sees her murdered husband, Joe, back as an intruder. Meanwhile, Abby and Daniel, her niece and nephew, are trying to find the truth about the murder of their mother and seeing possible connections between both cases.", 
             image: Image("foolmeonce")),
        Post(id: 4, title: "How to get away with Murder",
             description: "A sexy, suspense-driven legal thriller about a group of ambitious law students and their brilliant, mysterious criminal defense professor. They become entangled in a murder plot that will shake the entire university and change the course of their lives.",
             image: Image("murder")),
        Post(id: 5, title: "Squid games",
             description: "456 players compete to win US$4.56 million (about £3.6 million), the largest cast and second largest cash prize in reality competition history. Through a series of games, each player is pushed to their limits and forced to ask themselves how far they will go to win.", image: Image("squidgames"))
    ]
}


