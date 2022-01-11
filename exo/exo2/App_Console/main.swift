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
        if nbr == 1 { print("*"); exit(0)}
        if (nbr < 1) {
            print("wrong argument")
        }
    }while (nbr < 1)
    
    for ligne in 0 ..< nbr {
        if (ligne == nbr - 1 || ligne == 0) {
            for _ in 0 ..< nbr {
                print("*", terminator: " ")
            }
        }
        else {
            print("*", terminator: " ")
            for colonne in 2 ..< nbr {
                print(" ", terminator: " ")
            }
            print("*", terminator: " ")
        }
        print("")
    }
}
fonctionPrincipale()
