//
//  EntryController.swift
//  journal
//
//  Created by Martin Demiddel on 05.02.18.
//  Copyright © 2018 Martin Demiddel. All rights reserved.
//

import UIKit

class EntryController {
    static let shared = EntryController()
    
    var entries: [Entry] = []
    var tags: [String] {
        return []
    }
    
    //CRUD
    
    func createEntry(withTitle title: String,
                     body: String,
                     tag: String? = nil,
                     color: UIColor) {
        let entry = Entry(title: title,
                          body: body,
                          tag: tag ?? "Untagged",
                          color: color)
        entries.append(entry)
        //save
    }
    
    func getEntry(at indexPath: IndexPath) -> Entry {
        // IndexPath (x, y0
        let tag = tags[indexPath.section]
        let entries = getEntries(with: tag)
        return entries[indexPath.row]
    }
    
    func getEntries(with tag: String) -> [Entry] {
        return entries.filter { $0.tag == tag }
    }
    
    func updateEntry(_ entry: Entry,
                     with title: String,
                     body: String,
                     tag: String? = nil,
                     color: UIColor) {
        guard let index = entries.index(of: entry) else { return }
        entries[index].title = title
        entries[index].body = body
        entries[index].tag = tag ?? "Untagged"
        entries[index].color = color
        // save
    }
    
    fnc deleteEntry(_ entry: Entry)
}
