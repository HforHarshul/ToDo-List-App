//
//  TaskListView.swift
//  ToDoList
//
//  Created by Harshul on 26/05/2026.
//

import SwiftUI

struct TaskListView: View {
	let title: String
	let tasks: [Task]

	var body: some View{
		Text("Hello")
	}
}

#Preview{
	TaskListView(title: "All", tasks: Task.example())
}
