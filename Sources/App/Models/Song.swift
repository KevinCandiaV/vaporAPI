//
//  Song.swift
//  
//
//  Created by Kevin Candia Villagómez on 26/07/22.
//

import Fluent
import Vapor

final class Song: Model, Content {
    //MARK: - referencia a la tabla
    static let schema = "songs"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "title")
    var title: String
    
    //MARK: - inicializador
    init() { }
    
    init(id: UUID? = nil, title: String) {
        self.id = id
        self.title = title
    }
}
