//
//  main.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//

import Foundation

func menu() {
    var notesList:[String:[Double]] = [:]
    var userchoix : Int
    repeat {
        repeat {
            printmenu()
            userchoix = Utilisateur.saisirEntier()
            if (userchoix == 3) {
                return;
            }
            if (userchoix > 3){
                print("\nMauvaise saisie !\n")
            }
        } while userchoix < 1 || userchoix > 3
    switch userchoix {
    case 1:
        notesList = saisiNote(notesList: notesList)
    case 2:
        displaySummary(notesList: notesList)
    default:
        break;
    }
} while userchoix != 3

    
}
menu()


func printmenu(){
    print("1 - Saisir notes")
    print("2 - Afficher moyennes")
    print("3 - Quitter")
}

func saisiNote(notesList:[String:[Double]]) -> [String:[Double]] {
    var newNotesList = notesList
    print("Nombre de Note :")
    let noteNbr:Int = Utilisateur.saisirEntier()
    print("Matière :")
    let matiere:String = Utilisateur.saisirTexte()
    
    if noteNbr > 0 {
        var notesList:[Double] = notesList[matiere] ?? []
        for noteIndex in 1...noteNbr {
            var note:Double
            repeat {
                print("Saisissez la note \(noteIndex)/\(noteNbr)")
                note = Utilisateur.saisirReel()
            } while note < 0
            notesList.append(note)
        }
        newNotesList[matiere] = notesList
    }
    return newNotesList
}

func average(from array:[Double]) -> Double? {
    guard array.count > 0 else { return nil }
    
    var sum:Double = 0.0
    for value in array {
        sum += value
    }
    return sum / Double(array.count)
}

func displaySummary(notesList:[String:[Double]]) {
    for (courseName, courseNotesList) in notesList {
        print("\(courseName) :")
        print("Nombre de notes : \(courseNotesList.count)")
        if let average = average(from: courseNotesList) {
            print("Moyenne : \(average)")
        }
    }
}
