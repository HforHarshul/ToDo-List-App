//
//  TaskGroup.swift
//  ToDoList
//
//  Created by Harshul on 26/05/2026.
//

import Foundation
// Foundation is a core Apple framework. it has data types that are not a part of Swift language

struct TaskGroup: Identifiable {
	var id = UUID()
	let title: String // cannot change the title once set ("let" not "var")
	let creationDate: Date
	var tasks: [Task] // "var" because we want to add/remove Tasks from Group
}
