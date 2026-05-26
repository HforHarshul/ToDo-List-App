//
//  Task.swift
//  ToDoList
//
//  Created by Harshul on 02/05/2026.
//

import Foundation

struct Task: Identifiable, Hashable {
	let id = UUID() // This is fixed; user cannot change it
	var title: String // syntax to define a variable: "var" <name of the variable> ":" <type of variable>
	var isComplete: Bool
	var dueDate: Date
	var details: String? // "String?" means this variable can hold a string or be empty (nil); "String" means the variable must have a string value, cannot be nil
	// Swift does not auto assign values to variables so if a "String" field is not assigned a value and read, it will cause compile error.
	// Hence if we want to indicate that a field is optional, we must use "?" after the datatype
	// Swift naming convention: PascalCase for struct, class, enum, etc; camelCase for vars, methods, properties, everything else
	
	init(title: String, isCompleted: Bool, due: Date, details: String? = nil){
		self.title = title
		self.isComplete = isCompleted
		self.dueDate = due
		self.details = details
	}
	
}
