import Foundation

enum SampleData {
    
    static let posts: [Post] = [
        Post(
            author: "Ámbar Aguilar",
            username: "@ambar",
            initials: "AA",
            title: "Building TeenPath",
            description: """
                I am developing TeenPath, a platform designed to help young people discover international opportunities, share their projects, and connect with others who have similar interests.
                """,
            category: "Technology",
            location: "Mexico",
            date: "1 hour ago",
            imageName: nil,
            likes: 38
        ),
        
        Post(
            author: "Sofia Martínez",
            username: "@sofiam",
            initials: "SM",
            title: "TeenPath helped me join my first international program!",
            description: """
                A few weeks ago, I discovered a virtual youth leadership program through TeenPath. I applied, got accepted, and today I attended my first session with students from seven different countries.
                """,
            category: "Success Story",
            location: "Spain",
            date: "2 hours ago",
            imageName: "leadershipProgram",
            likes: 126
        ),
        
        Post(
            author: "Maya Johnson",
            username: "@mayadances",
            initials: "MJ",
            title: "Performing at an international dance festival",
            description: """
                I was selected to represent my dance academy at a youth festival in Toronto next month. I will perform a contemporary choreography inspired by cultural identity and belonging.
                """,
            category: "Dance",
            location: "Canada",
            date: "5 hours ago",
            imageName: "danceFestival",
            likes: 97
        ),
        
        Post(
            author: "Lucas Moretti",
            username: "@lucasmun",
            initials: "LM",
            title: "Preparing for my first Model United Nations conference",
            description: """
                I will represent Brazil in the Human Rights Council at my first international MUN conference. I am researching my position paper and would love to connect with other delegates.
                """,
            category: "Model United Nations",
            location: "Brazil",
            date: "7 hours ago",
            imageName: nil,
            likes: 63
        ),
        
        Post(
            author: "Amelia Williams",
            username: "@ameliaart",
            initials: "AW",
            title: "My painting was selected for a youth exhibition",
            description: """
                My painting about climate and community was selected for a youth art exhibition in London. This will be the first time my work is displayed outside my school.
                """,
            category: "Visual Arts",
            location: "United Kingdom",
            date: "Yesterday",
            imageName: nil,
            likes: 112
        ),
        
        Post(
            author: "Noah Müller",
            username: "@noahmusic",
            initials: "NM",
            title: "Looking for musicians for an online collaboration",
            description: """
                I play piano and produce music. I am looking for singers and instrumentalists from different countries to create a song about youth experiences around the world.
                """,
            category: "Music",
            location: "Germany",
            date: "Yesterday",
            imageName: nil,
            likes: 76
        ),
        
        Post(
            author: "Daniel Kim",
            username: "@danielk",
            initials: "DK",
            title: "Our FTC robot completed the first challenge",
            description: """
                After weeks of building and testing, our robot successfully completed the autonomous challenge. We learned so much about sensors, teamwork, and problem-solving.
                """,
            category: "Robotics",
            location: "South Korea",
            date: "Yesterday",
            imageName: nil,
            likes: 84
        )
    ]
    
    static let opportunities: [Opportunity] = [
        Opportunity(
            title: "Global Youth Innovation Challenge",
            organization: "Future Changemakers",
            category: "Innovation",
            location: "Online · International",
            deadline: "September 30",
            description: """
                Join students from around the world and develop an innovative solution to a social or environmental challenge.
                """,
            icon: "lightbulb.fill"
        ),
        
        Opportunity(
            title: "International Youth Leadership Program",
            organization: "Global Leaders Network",
            category: "Leadership",
            location: "Online · International",
            deadline: "September 15",
            description: """
                Develop communication, teamwork, and leadership skills through international workshops and collaborative projects.
                """,
            icon: "person.3.fill"
        ),
        
        Opportunity(
            title: "Young Artists Exhibition",
            organization: "Creative Voices Foundation",
            category: "Arts",
            location: "London, United Kingdom",
            deadline: "October 5",
            description: """
                Submit an original painting, illustration, photograph, or digital artwork for an international youth exhibition.
                """,
            icon: "paintpalette.fill"
        ),
        
        Opportunity(
            title: "Global Model United Nations Conference",
            organization: "Youth Diplomacy Forum",
            category: "MUN",
            location: "New York, United States",
            deadline: "November 1",
            description: """
                Represent a country, debate global issues, and collaborate with young delegates from different parts of the world.
                """,
            icon: "globe.americas.fill"
        ),
        
        Opportunity(
            title: "International Dance Exchange",
            organization: "Movement Without Borders",
            category: "Dance",
            location: "Toronto, Canada",
            deadline: "October 12",
            description: """
                A cultural exchange for young dancers interested in contemporary, traditional, and urban dance styles.
                """,
            icon: "figure.walk.motion"
        ),
        
        Opportunity(
            title: "Youth Music Collaboration",
            organization: "Global Sound Project",
            category: "Music",
            location: "Online · International",
            deadline: "September 25",
            description: """
                Collaborate with young musicians, singers, composers, and producers to create an original international music project.
                """,
            icon: "music.note"
        ),
        
        Opportunity(
            title: "Women in STEM Scholarship",
            organization: "STEM Forward Foundation",
            category: "Scholarship",
            location: "International",
            deadline: "October 20",
            description: """
                A scholarship program for young women interested in science, technology, engineering, and mathematics.
                """,
            icon: "graduationcap.fill"
        ),
        
        Opportunity(
            title: "Youth Environmental Volunteer Program",
            organization: "Green Generation",
            category: "Volunteering",
            location: "Hybrid · International",
            deadline: "September 18",
            description: """
                Participate in community projects and global campaigns focused on sustainability and environmental education.
                """,
            icon: "leaf.fill"
        )
    ]
}
