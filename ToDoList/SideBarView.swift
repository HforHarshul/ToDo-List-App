//
//  SideBarView.swift
//  ToDoList
//
//  Created by Harshul on 26/05/2026.
//

import SwiftUI

struct SidebarView: View {
	let userCreatedGroups: [TaskGroup]
	var body: some View{
		List{
			Section("Favourites"){
				ForEach(TaskSection.allCases) {
					selection in Label(selection.displayName, systemImage: selection.iconName)
				}
			}
			
			Section("Your Groups"){
				ForEach(userCreatedGroups) {
					group in Label(group.title, systemImage: "folder")
				}
			}
		}
	}
}
