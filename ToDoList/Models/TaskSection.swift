//
//  TaskSection.swift
//  ToDoList
//
//  Created by Harshul on 26/05/2026.
//

import Foundation

enum TaskSection: Identifiable, CaseIterable, Hashable {
	static func == (lhs: TaskSection, rhs: TaskSection) -> Bool {
		lhs.id == rhs.id
	}
	
	static var allCases: [TaskSection]{
		[.all, .done, .upcoming]
	}
	
	case all
	case done
	case upcoming
	case list(TaskGroup)
	
	var id: String {
		switch self {
			case .all:
				"all"
			case .done:
				"done"
			case .upcoming:
				"upcoming"
			case .list(let taskGroup):
				taskGroup.id.uuidString
		}
	}
	
	var displayName: String {
		switch self{
			case .all:
				"All"
			case .done:
				"Done"
			case .upcoming:
				"Upcoming"
			case .list(let taskGroup):
				taskGroup.title
		}
	}
	
	var iconName: String {
		switch self{
			case .all:
				"start"
			case .done:
				"checkmark.circle"
			case .upcoming:
				"calendar"
			case .list(_):
				"folder"
		}
	}
	
}
