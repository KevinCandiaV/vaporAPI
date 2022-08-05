//
//  CreateSongs.swift
//  
//
//  Created by Kevin Candia Villagómez on 26/07/22.
//

import Fluent

//Fluent es un framework orm, object relation mapper

struct CreateSongs: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        //MARK: - Creando tabla
        return database.schema("songs")
            .id()
            .field("title", .string, .required)
            .create()
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void> {
        //MARK: - Revevierte el cambio hecho en prepare
        return database.schema("songs").delete()
    }
    
    
}
