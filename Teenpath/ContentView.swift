import SwiftUI

// MARK: - APP COLORS

extension Color {
    static let teenYellow = Color(
        red: 1.00,
        green: 0.72,
        blue: 0.08
    )

    static let teenOrange = Color(
        red: 1.00,
        green: 0.56,
        blue: 0.00
    )

    static let teenLightYellow = Color(
        red: 1.00,
        green: 0.95,
        blue: 0.76
    )

    static let teenBackground = Color(
        red: 0.98,
        green: 0.97,
        blue: 0.94
    )

    static let teenCard = Color.white
}

// MARK: - MODELS

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
    var isLiked: Bool = false
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

    var isSaved: Bool = false
}

// MARK: - CONTENT VIEW

struct ContentView: View {

    @State private var selectedTab = 0

    @State private var posts: [Post] = [
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

    @State private var opportunities: [Opportunity] = [
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

    var body: some View {
        TabView(selection: $selectedTab) {

            HomeView(posts: $posts)
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(0)

            OpportunitiesView(opportunities: $opportunities)
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
                .tag(1)

            CreatePostView(
                posts: $posts,
                selectedTab: $selectedTab
            )
            .tabItem {
                Label("Post", systemImage: "plus.circle.fill")
            }
            .tag(2)

            SavedView(opportunities: $opportunities)
                .tabItem {
                    Label("Saved", systemImage: "bookmark.fill")
                }
                .tag(3)

            ProfileView(posts: posts)
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
                .tag(4)
        }
        .tint(Color.teenOrange)
    }
}

// MARK: - HOME VIEW

struct HomeView: View {

    @Binding var posts: [Post]

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 16) {
                    WelcomeCard()

                    ForEach($posts) { $post in
                        PostCard(post: $post)
                    }
                }
                .padding()
            }
            .background(Color.teenBackground)
            .navigationTitle("TeenPath")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        print("Open notifications")
                    } label: {
                        Image(systemName: "bell.fill")
                            .foregroundStyle(Color.teenOrange)
                    }
                }
            }
        }
    }
}

// MARK: - WELCOME CARD

struct WelcomeCard: View {

    var body: some View {
        VStack(alignment: .leading, spacing: 15) {

            HStack(spacing: 12) {
                Image("teenpath")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 55, height: 55)

                VStack(alignment: .leading, spacing: 3) {
                    Text("Welcome back, Ámbar!")
                        .font(
                            .system(
                                size: 22,
                                weight: .bold,
                                design: .rounded
                            )
                        )

                    Text("Ready to discover your next path?")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundStyle(
                            Color.black.opacity(0.65)
                        )
                }

                Spacer()
            }

            Text(
                "Discover opportunities, share your journey, and connect with young people around the world."
            )
            .font(
                .system(
                    size: 15,
                    weight: .medium,
                    design: .rounded
                )
            )
            .foregroundStyle(
                Color.black.opacity(0.72)
            )

        }
        .frame(
            maxWidth: .infinity,
            alignment: .leading
        )
        .padding()
        .background(
            LinearGradient(
                colors: [
                    Color.teenYellow,
                    Color.teenLightYellow
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .clipShape(
            RoundedRectangle(cornerRadius: 22)
        )
        .shadow(
            color: Color.black.opacity(0.08),
            radius: 8,
            y: 4
        )
    }
}

// MARK: - POST CARD

struct PostCard: View {

    @Binding var post: Post

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {

            HStack(spacing: 12) {
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [
                                Color.teenYellow,
                                Color.teenOrange
                            ],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 48, height: 48)
                    .overlay {
                        Text(post.initials)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                    }

                VStack(alignment: .leading, spacing: 3) {
                    Text(post.author)
                        .fontWeight(.semibold)

                    Text("\(post.username) · \(post.date)")
                        .font(.caption)
                        .foregroundStyle(Color.secondary)

                    Label(
                        post.location,
                        systemImage: "location"
                    )
                    .font(.caption2)
                    .foregroundStyle(Color.secondary)
                }

                Spacer()

                Button {
                    print("More options")
                } label: {
                    Image(systemName: "ellipsis")
                        .foregroundStyle(Color.secondary)
                }
            }

            Text(post.category)
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundStyle(
                    Color.black.opacity(0.75)
                )
                .padding(.horizontal, 11)
                .padding(.vertical, 6)
                .background(Color.teenLightYellow)
                .clipShape(Capsule())

            Text(post.title)
                .font(.headline)
                .fontWeight(.bold)

            Text(post.description)
                .font(.subheadline)
                .foregroundStyle(Color.secondary)

            if let imageName = post.imageName {
                PostImageView(imageName: imageName)
            }

            Divider()

            HStack(spacing: 24) {
                Button {
                    likePost()
                } label: {
                    Label(
                        "\(post.likes)",
                        systemImage: post.isLiked
                        ? "heart.fill"
                        : "heart"
                    )
                    .foregroundStyle(
                        post.isLiked
                        ? Color.teenOrange
                        : Color.secondary
                    )
                }

                Button {
                    print("Open comments")
                } label: {
                    Label(
                        "Comment",
                        systemImage: "bubble.left"
                    )
                    .foregroundStyle(Color.secondary)
                }

                Spacer()

                Button {
                    print("Share post")
                } label: {
                    Image(systemName: "square.and.arrow.up")
                        .foregroundStyle(Color.secondary)
                }
            }
            .font(.subheadline)
        }
        .padding()
        .background(Color.teenCard)
        .clipShape(
            RoundedRectangle(cornerRadius: 20)
        )
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(
                    Color.teenYellow.opacity(0.20),
                    lineWidth: 1
                )
        }
        .shadow(
            color: Color.black.opacity(0.06),
            radius: 7,
            y: 3
        )
    }

    private func likePost() {
        post.isLiked.toggle()

        if post.isLiked {
            post.likes += 1
        } else {
            post.likes -= 1
        }
    }
}

// MARK: - POST IMAGE

struct PostImageView: View {

    let imageName: String

    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(maxWidth: .infinity)
            .frame(height: 220)
            .clipped()
            .clipShape(
                RoundedRectangle(cornerRadius: 18)
            )
    }
}

// MARK: - OPPORTUNITIES VIEW

struct OpportunitiesView: View {

    @Binding var opportunities: [Opportunity]

    @State private var searchText = ""
    @State private var selectedCategory = "All"

    private let categories = [
        "All",
        "Innovation",
        "Leadership",
        "Arts",
        "MUN",
        "Dance",
        "Music",
        "Scholarship",
        "Volunteering"
    ]

    private var filteredOpportunities: [Opportunity] {
        opportunities.filter { opportunity in
            let matchesSearch =
                searchText.isEmpty ||
                opportunity.title.localizedCaseInsensitiveContains(searchText) ||
                opportunity.organization.localizedCaseInsensitiveContains(searchText) ||
                opportunity.category.localizedCaseInsensitiveContains(searchText) ||
                opportunity.location.localizedCaseInsensitiveContains(searchText)

            let matchesCategory =
                selectedCategory == "All" ||
                opportunity.category == selectedCategory

            return matchesSearch && matchesCategory
        }
    }

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {

                CategorySelector(
                    categories: categories,
                    selectedCategory: $selectedCategory
                )

                if filteredOpportunities.isEmpty {
                    EmptyStateView(
                        icon: "magnifyingglass",
                        title: "No opportunities found",
                        message: "Try searching for another category or country."
                    )
                } else {
                    ScrollView {
                        LazyVStack(spacing: 14) {
                            ForEach(filteredOpportunities) { opportunity in
                                if let index = opportunities.firstIndex(
                                    where: {
                                        $0.id == opportunity.id
                                    }
                                ) {
                                    NavigationLink {
                                        OpportunityDetailView(
                                            opportunity: $opportunities[index]
                                        )
                                    } label: {
                                        OpportunityCard(
                                            opportunity: $opportunities[index]
                                        )
                                    }
                                    .buttonStyle(.plain)
                                }
                            }
                        }
                        .padding()
                    }
                }
            }
            .background(Color.teenBackground)
            .navigationTitle("Opportunities")
            .searchable(
                text: $searchText,
                prompt: "Search programs, events, countries..."
            )
        }
    }
}

// MARK: - CATEGORY SELECTOR

struct CategorySelector: View {

    let categories: [String]

    @Binding var selectedCategory: String

    var body: some View {
        ScrollView(
            .horizontal,
            showsIndicators: false
        ) {
            HStack {
                ForEach(categories, id: \.self) { category in
                    Button {
                        selectedCategory = category
                    } label: {
                        Text(category)
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .foregroundStyle(
                                selectedCategory == category
                                ? Color.white
                                : Color.primary
                            )
                            .padding(.horizontal, 15)
                            .padding(.vertical, 9)
                            .background(
                                selectedCategory == category
                                ? Color.teenOrange
                                : Color.white
                            )
                            .clipShape(Capsule())
                            .overlay {
                                Capsule()
                                    .stroke(
                                        Color.teenYellow.opacity(0.25),
                                        lineWidth: 1
                                    )
                            }
                    }
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 10)
        }
        .background(Color.teenBackground)
    }
}

// MARK: - OPPORTUNITY CARD

struct OpportunityCard: View {

    @Binding var opportunity: Opportunity

    var body: some View {
        HStack(alignment: .top, spacing: 14) {

            RoundedRectangle(cornerRadius: 14)
                .fill(
                    LinearGradient(
                        colors: [
                            Color.teenYellow,
                            Color.teenOrange
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: 58, height: 58)
                .overlay {
                    Image(systemName: opportunity.icon)
                        .font(.title2)
                        .foregroundStyle(Color.white)
                }

            VStack(alignment: .leading, spacing: 6) {
                Text(opportunity.category.uppercased())
                    .font(.caption2)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.teenOrange)

                Text(opportunity.title)
                    .font(.headline)
                    .multilineTextAlignment(.leading)

                Text(opportunity.organization)
                    .font(.subheadline)
                    .foregroundStyle(Color.secondary)

                Label(
                    opportunity.location,
                    systemImage: "location.fill"
                )
                .font(.caption)
                .foregroundStyle(Color.secondary)

                Text("Deadline: \(opportunity.deadline)")
                    .font(.caption)
                    .fontWeight(.medium)
            }

            Spacer()

            Button {
                opportunity.isSaved.toggle()
            } label: {
                Image(
                    systemName: opportunity.isSaved
                    ? "bookmark.fill"
                    : "bookmark"
                )
                .font(.title3)
                .foregroundStyle(Color.teenOrange)
            }
            .buttonStyle(.plain)
        }
        .padding()
        .background(Color.teenCard)
        .clipShape(
            RoundedRectangle(cornerRadius: 18)
        )
        .shadow(
            color: Color.black.opacity(0.05),
            radius: 6,
            y: 3
        )
    }
}

// MARK: - OPPORTUNITY DETAIL

struct OpportunityDetailView: View {

    @Binding var opportunity: Opportunity

    @State private var showApplicationMessage = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 22) {

                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        LinearGradient(
                            colors: [
                                Color.teenYellow,
                                Color.teenOrange
                            ],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(height: 170)
                    .overlay {
                        Image(systemName: opportunity.icon)
                            .font(.system(size: 62))
                            .foregroundStyle(Color.white)
                    }

                VStack(alignment: .leading, spacing: 8) {
                    Text(opportunity.category.uppercased())
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.teenOrange)

                    Text(opportunity.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)

                    Text(opportunity.organization)
                        .font(.title3)
                        .foregroundStyle(Color.secondary)
                }

                Divider()

                InformationRow(
                    icon: "location.fill",
                    title: "Location",
                    value: opportunity.location
                )

                InformationRow(
                    icon: "calendar",
                    title: "Application deadline",
                    value: opportunity.deadline
                )

                VStack(alignment: .leading, spacing: 8) {
                    Text("About this opportunity")
                        .font(.headline)

                    Text(opportunity.description)
                        .foregroundStyle(Color.secondary)
                }

                Button {
                    opportunity.isSaved.toggle()
                } label: {
                    Label(
                        opportunity.isSaved
                        ? "Remove from saved"
                        : "Save opportunity",
                        systemImage: opportunity.isSaved
                        ? "bookmark.fill"
                        : "bookmark"
                    )
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(
                        LinearGradient(
                            colors: [
                                Color.teenYellow,
                                Color.teenOrange
                            ],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .foregroundStyle(Color.white)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 14)
                    )
                }

                Button {
                    showApplicationMessage = true
                } label: {
                    Text("Apply now")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.teenLightYellow)
                        .foregroundStyle(Color.teenOrange)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 14)
                        )
                        .overlay {
                            RoundedRectangle(cornerRadius: 14)
                                .stroke(
                                    Color.teenOrange,
                                    lineWidth: 1
                                )
                        }
                }
            }
            .padding()
        }
        .background(Color.teenBackground)
        .navigationBarTitleDisplayMode(.inline)
        .alert(
            "Application page",
            isPresented: $showApplicationMessage
        ) {
            Button("Continue", role: .cancel) { }
        } message: {
            Text(
                "This button will eventually open the official application website."
            )
        }
    }
}

// MARK: - INFORMATION ROW

struct InformationRow: View {

    let icon: String
    let title: String
    let value: String

    var body: some View {
        HStack(spacing: 14) {
            Image(systemName: icon)
                .foregroundStyle(Color.teenOrange)
                .frame(width: 30)

            VStack(alignment: .leading, spacing: 3) {
                Text(title)
                    .font(.caption)
                    .foregroundStyle(Color.secondary)

                Text(value)
                    .fontWeight(.medium)
            }
        }
    }
}

// MARK: - CREATE POST

struct CreatePostView: View {

    @Binding var posts: [Post]
    @Binding var selectedTab: Int

    @State private var postTitle = ""
    @State private var postDescription = ""
    @State private var selectedCategory = "Community"
    @State private var showConfirmation = false

    private let categories = [
        "Community",
        "Technology",
        "Robotics",
        "Arts",
        "Music",
        "Dance",
        "Sports",
        "MUN",
        "Leadership",
        "Volunteering",
        "Entrepreneurship"
    ]

    private var canPublish: Bool {
        !postTitle
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .isEmpty
        &&
        !postDescription
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .isEmpty
    }

    var body: some View {
        NavigationStack {
            Form {
                Section("What would you like to share?") {
                    TextField(
                        "Post title",
                        text: $postTitle
                    )

                    TextEditor(text: $postDescription)
                        .frame(minHeight: 160)
                }

                Section("Category") {
                    Picker(
                        "Select a category",
                        selection: $selectedCategory
                    ) {
                        ForEach(categories, id: \.self) { category in
                            Text(category)
                                .tag(category)
                        }
                    }
                }

                Section {
                    Button {
                        publishPost()
                    } label: {
                        Text("Publish")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                    }
                    .foregroundStyle(Color.teenOrange)
                    .disabled(!canPublish)
                }
            }
            .scrollContentBackground(.hidden)
            .background(Color.teenBackground)
            .navigationTitle("Create a post")
            .alert(
                "Your post is live!",
                isPresented: $showConfirmation
            ) {
                Button("View post") {
                    selectedTab = 0
                }

                Button("Close", role: .cancel) { }
            } message: {
                Text(
                    "Your new post is now visible on the home feed."
                )
            }
        }
    }

    private func publishPost() {
        let newPost = Post(
            author: "Ámbar Aguilar",
            username: "@ambar",
            initials: "AA",
            title: postTitle,
            description: postDescription,
            category: selectedCategory,
            location: "Mexico",
            date: "Just now",
            imageName: nil,
            likes: 0
        )

        posts.insert(newPost, at: 0)

        postTitle = ""
        postDescription = ""
        selectedCategory = "Community"
        showConfirmation = true
    }
}

// MARK: - SAVED VIEW

struct SavedView: View {

    @Binding var opportunities: [Opportunity]

    private var savedOpportunities: [Opportunity] {
        opportunities.filter {
            $0.isSaved
        }
    }

    var body: some View {
        NavigationStack {
            Group {
                if savedOpportunities.isEmpty {
                    EmptyStateView(
                        icon: "bookmark",
                        title: "No saved opportunities yet",
                        message: "The opportunities you save will appear here."
                    )
                } else {
                    ScrollView {
                        LazyVStack(spacing: 14) {
                            ForEach(savedOpportunities) { opportunity in
                                if let index = opportunities.firstIndex(
                                    where: {
                                        $0.id == opportunity.id
                                    }
                                ) {
                                    NavigationLink {
                                        OpportunityDetailView(
                                            opportunity: $opportunities[index]
                                        )
                                    } label: {
                                        OpportunityCard(
                                            opportunity: $opportunities[index]
                                        )
                                    }
                                    .buttonStyle(.plain)
                                }
                            }
                        }
                        .padding()
                    }
                }
            }
            .background(Color.teenBackground)
            .navigationTitle("Saved")
        }
    }
}

// MARK: - EMPTY STATE

struct EmptyStateView: View {

    let icon: String
    let title: String
    let message: String

    var body: some View {
        VStack(spacing: 14) {
            Image(systemName: icon)
                .font(.system(size: 45))
                .foregroundStyle(Color.teenOrange)

            Text(title)
                .font(.headline)
                .multilineTextAlignment(.center)

            Text(message)
                .font(.subheadline)
                .foregroundStyle(Color.secondary)
                .multilineTextAlignment(.center)
        }
        .padding(30)
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity
        )
    }
}

// MARK: - PROFILE VIEW

struct ProfileView: View {

    let posts: [Post]

    private var userPosts: [Post] {
        posts.filter {
            $0.username == "@ambar"
        }
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    ProfileHeader()

                    ProfileStatistics(
                        publicationCount: userPosts.count
                    )

                    InterestsCard()

                    ProjectsCard()

                    UserPostsCard(
                        posts: userPosts
                    )
                }
                .padding()
            }
            .background(Color.teenBackground)
            .navigationTitle("My Profile")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        print("Edit profile")
                    } label: {
                        Image(systemName: "pencil")
                            .foregroundStyle(
                                Color.teenOrange
                            )
                    }
                }
            }
        }
    }
}

// MARK: - PROFILE HEADER

struct ProfileHeader: View {

    var body: some View {
        VStack(spacing: 12) {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            Color.teenYellow,
                            Color.teenOrange
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: 100, height: 100)
                .overlay {
                    Text("AA")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.white)
                }

            Text("Ámbar Aguilar")
                .font(.title2)
                .fontWeight(.bold)

            Text("@ambar")
                .foregroundStyle(Color.secondary)

            Label(
                "Mexico",
                systemImage: "location.fill"
            )
            .font(.subheadline)
            .foregroundStyle(Color.secondary)

            Text(
                "Student interested in robotics, software development, creativity, entertainment, and projects with social impact."
            )
            .font(.subheadline)
            .multilineTextAlignment(.center)
            .foregroundStyle(Color.secondary)

            Button {
                print("Edit profile")
            } label: {
                Text("Edit profile")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 11)
                    .background(
                        LinearGradient(
                            colors: [
                                Color.teenYellow,
                                Color.teenOrange
                            ],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .foregroundStyle(Color.white)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 12)
                    )
            }
        }
        .padding()
        .background(
            LinearGradient(
                colors: [
                    Color.teenLightYellow,
                    Color.white
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .clipShape(
            RoundedRectangle(cornerRadius: 20)
        )
        .shadow(
            color: Color.black.opacity(0.06),
            radius: 7,
            y: 3
        )
    }
}

// MARK: - PROFILE STATISTICS

struct ProfileStatistics: View {

    let publicationCount: Int

    var body: some View {
        HStack {
            StatisticItem(
                number: "\(publicationCount)",
                label: "Posts"
            )

            Divider()
                .frame(height: 45)

            StatisticItem(
                number: "3",
                label: "Projects"
            )

            Divider()
                .frame(height: 45)

            StatisticItem(
                number: "6",
                label: "Skills"
            )
        }
        .padding()
        .background(Color.white)
        .clipShape(
            RoundedRectangle(cornerRadius: 18)
        )
    }
}

// MARK: - STATISTIC ITEM

struct StatisticItem: View {

    let number: String
    let label: String

    var body: some View {
        VStack {
            Text(number)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundStyle(Color.teenOrange)

            Text(label)
                .font(.caption)
                .foregroundStyle(Color.secondary)
        }
        .frame(maxWidth: .infinity)
    }
}

// MARK: - INTERESTS

struct InterestsCard: View {

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text("Interests")
                .font(.headline)

            HStack {
                InterestTag(text: "Robotics")
                InterestTag(text: "Programming")
            }

            HStack {
                InterestTag(text: "Technology")
                InterestTag(text: "Entertainment")
            }

            HStack {
                InterestTag(text: "Volunteering")
                InterestTag(text: "Social Impact")
            }
        }
        .frame(
            maxWidth: .infinity,
            alignment: .leading
        )
        .padding()
        .background(Color.white)
        .clipShape(
            RoundedRectangle(cornerRadius: 18)
        )
    }
}

// MARK: - INTEREST TAG

struct InterestTag: View {

    let text: String

    var body: some View {
        Text(text)
            .font(.subheadline)
            .padding(.horizontal, 12)
            .padding(.vertical, 7)
            .background(Color.teenLightYellow)
            .foregroundStyle(
                Color.black.opacity(0.75)
            )
            .clipShape(Capsule())
    }
}

// MARK: - PROJECTS CARD

struct ProjectsCard: View {

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text("Projects")
                .font(.headline)

            ProjectRow(
                icon: "gearshape.2.fill",
                title: "Robotics Team",
                description: "Robot design, construction, programming, and outreach."
            )

            Divider()

            ProjectRow(
                icon: "iphone",
                title: "TeenPath",
                description: "An international platform connecting young people with opportunities."
            )

            Divider()

            ProjectRow(
                icon: "music.note.tv.fill",
                title: "Technology and Entertainment",
                description: "Exploring how engineering can transform creative experiences."
            )
        }
        .frame(
            maxWidth: .infinity,
            alignment: .leading
        )
        .padding()
        .background(Color.white)
        .clipShape(
            RoundedRectangle(cornerRadius: 18)
        )
    }
}

// MARK: - PROJECT ROW

struct ProjectRow: View {

    let icon: String
    let title: String
    let description: String

    var body: some View {
        HStack(spacing: 14) {
            RoundedRectangle(cornerRadius: 12)
                .fill(
                    LinearGradient(
                        colors: [
                            Color.teenYellow,
                            Color.teenOrange
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: 48, height: 48)
                .overlay {
                    Image(systemName: icon)
                        .foregroundStyle(Color.white)
                }

            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .fontWeight(.semibold)

                Text(description)
                    .font(.caption)
                    .foregroundStyle(Color.secondary)
            }

            Spacer()
        }
    }
}

// MARK: - USER POSTS

struct UserPostsCard: View {

    let posts: [Post]

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text("My Posts")
                .font(.headline)

            if posts.isEmpty {
                Text("You have not shared anything yet.")
                    .font(.subheadline)
                    .foregroundStyle(Color.secondary)
            } else {
                ForEach(posts) { post in
                    VStack(alignment: .leading, spacing: 7) {
                        Text(post.category)
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.teenOrange)

                        Text(post.title)
                            .fontWeight(.semibold)

                        Text(post.description)
                            .font(.subheadline)
                            .foregroundStyle(Color.secondary)
                            .lineLimit(4)

                        HStack {
                            Label(
                                post.location,
                                systemImage: "location"
                            )

                            Spacer()

                            Label(
                                "\(post.likes)",
                                systemImage: "heart"
                            )
                        }
                        .font(.caption)
                        .foregroundStyle(Color.secondary)
                    }

                    if post.id != posts.last?.id {
                        Divider()
                    }
                }
            }
        }
        .frame(
            maxWidth: .infinity,
            alignment: .leading
        )
        .padding()
        .background(Color.white)
        .clipShape(
            RoundedRectangle(cornerRadius: 18)
        )
    }
}

// MARK: - SPLASH SCREEN

struct SplashScreenView: View {

    @State private var logoScale: CGFloat = 0.80
    @State private var contentOpacity = 0.0

    var body: some View {
        ZStack {
            Color.teenOrange
                .ignoresSafeArea()

            VStack(spacing: 24) {
                Image("teenpath")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 225, height: 225)
                    .scaleEffect(logoScale)

                Text("TeenPath")
                    .font(
                        .system(
                            size: 40,
                            weight: .black,
                            design: .rounded
                        )
                    )
                    .tracking(2.5)
                    .foregroundStyle(Color.black)
            }
            .opacity(contentOpacity)
        }
        .onAppear {
            withAnimation(
                .spring(
                    response: 0.70,
                    dampingFraction: 0.72
                )
            ) {
                logoScale = 1
                contentOpacity = 1
            }
        }
    }
}

// MARK: - PREVIEW

#Preview {
    ContentView()
}
