import Foundation

struct Post: Identifiable {
    let id = UUID()

    let author: String
    let username: String
    let initials: String

    let title: String
    let description: String
    let category: String
    let location: String
    let date: String

    let imageName: String?

    var likes: Int
    var isLiked = false
}

struct Opportunity: Identifiable {
    let id = UUID()

    let title: String
    let organization: String
    let category: String
    let location: String
    let deadline: String
    let description: String
    let icon: String

    var isSaved = false
}
