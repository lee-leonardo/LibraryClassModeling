// Leonardo Lee CodeFellows Accelerator Q1

import Cocoa

class Library {
	var shelves = Shelf[]()
//	var shelfCount: Int {
//	get {
//		shelves.count
//	}
//	set {
//		shelves.count
//	}
//	}
	
	func reportBooks() { //-> String
		var booklist: String = "List of Books by Shelf: "
		for shelf in shelves {
			for book in shelf.books {
				booklist += book.name + ", "
			}
		}
		println(booklist)
	}
}
class Shelf {
	var books = Book[]()
}

class Book {
	var name: String = "Swift 101"
	
	func enshelf( theLibrary library: Library, shelfIndex index: Int) {
//		Use the .append() method
		library.shelves[index].books.append(self)
//		name = nil
		
//		Problem... one does not simply delete the itself...
	}
	func unshelf( inLibrary library: Library) -> Book {
		for shelf in library.shelves {
			for var index = 0; index < shelf.books.count; index++ {
				var book = shelf.books[index]
				if book.name == self.name {
					shelf.books.removeAtIndex(index)
				}
			}
		}
		return self
	}
	
	init(bookName:String ) {
		self.name = bookName
	}
}

//Temporary variable to hold books while being transferred by the Book class to new shelves.


//Books temporarily go here.
var inHand: Book

//Library that I'll be using to debug.
var library = Library()

do {
	var shelfSpace = Shelf()
	library.shelves += shelfSpace
} while library.shelves.count < 3


//Books that are init.
var pride = Book(bookName: "Pride and Prejudice")
var anger = Book(bookName: "Wrath of Khan")
var smiles = Book(bookName: "Everybody Poops")
var cards = Book(bookName: "House of Cards")
var fire = Book(bookName: "Fahrenheit 451")
var soma = Book(bookName: "Brave New World")
var rebellion = Book(bookName: "Firestorm Armada")
var magic = Book(bookName: "Harry Potter")
var dune = Book(bookName: "Dune")
var bread = Book(bookName: "Catcher in the Rye")

//Just to put books in the arrays to test
library.shelves[1].books += [pride, anger, smiles]
library.shelves[0].books += [cards, fire, soma]
library.shelves[2].books += [rebellion, magic, dune]

//Tests to see if appending works.
inHand = bread
inHand.enshelf(theLibrary: library, shelfIndex: 1)

//Tests to see if removing works.
//inHand = cards.unshelf( inLibrary: library)



//Help get output of the Book functions:
library.shelves[0].books
library.shelves[1].books
library.shelves[2].books



//This is the function that prints on the console the list of the books.
//library.reportBooks()




