//
//  main.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//
import Foundation

func fonctionPrincipale() {
    var nbr:Int = 0
    repeat {
        print("Entrez Nombre :")
        nbr = Utilisateur.saisirEntier()
        if (nbr < 1) {
            print("wrong argument")
        }
    }while (nbr < 1)
    
    for _ in 0 ..< nbr {
        for _ in 0 ... nbr {
            print("*", terminator: " ")
        }
        print("")
    }
}
fonctionPrincipale()
