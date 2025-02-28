import SwiftUI
import Charts

struct InsightsView: View {
    
    let weeklyXPData: [(day: String, xp: Int, gradient: LinearGradient)] = [
        ("M", 300, LinearGradient(colors: [Color(hex: "#9D77EE"), Color(hex: "#FFFFFF")], startPoint: .bottom, endPoint: .top)),
        ("T", 250, LinearGradient(colors: [Color(hex: "#9D77EE"), Color(hex: "#FFFFFF")], startPoint: .bottom, endPoint: .top)),
        ("W", 400, LinearGradient(colors: [Color(hex: "#9D77EE"), Color(hex: "#FFFFFF")], startPoint: .bottom, endPoint: .top)),
        ("Th", 200, LinearGradient(colors: [Color(hex: "#9D77EE"), Color(hex: "#FFFFFF")], startPoint: .bottom, endPoint: .top)),
        ("F", 350, LinearGradient(colors: [Color(hex: "#9D77EE"), Color(hex: "#FFFFFF")], startPoint: .bottom, endPoint: .top)),
        ("Sat", 450, LinearGradient(colors: [Color(hex: "#9D77EE"), Color(hex: "#FFFFFF")], startPoint: .bottom, endPoint: .top)),
        ("Sun", 500, LinearGradient(colors: [Color(hex: "#9D77EE"), Color(hex: "#FFFFFF")], startPoint: .bottom, endPoint: .top))
    ]


    
    let weeklyComparisonData: [(week: String, xp: Int, gradient: LinearGradient)] = [
        ("This Week", 325, LinearGradient(colors: [ Color(hex: "#9D77EE"),Color(hex:"#8FCECD")] , startPoint: .bottom, endPoint: .top)),
        ("Last Week", 415, LinearGradient(colors: [Color(hex: "#9D77EE"),Color(hex:"#8FCECD")], startPoint: .bottom, endPoint: .top))
    ]
    
    @State var statitsticContent: [[String: String]] = [
        ["image": "RecomdedImageTwo",
         "title" : "Meditation 10 min",
         "subtitle": "Freedom Series",
         "owner": "Akhil Aryan"
        ],
        ["image": "RecomendedImageOne",
         "title" : "Meditation Series",
         "subtitle": "Freedom Series",
         "owner": "Akhil Aryan",
         "new": "New"
        ],
        ["image": "RecomdedImageTwo",
         "title" : "Meditation Series",
         "subtitle": "Freedom Series",
         "owner": "Akhil Aryan",
         "new": "New"
        ]
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                progressCard()
                
                weeklyComparisonChart()
                
                mindfulDaysChart()

                
                
            }
            .padding()
        }
        .background(Color(.colorbackground).edgesIgnoringSafeArea(.all))
    }
    
    @ViewBuilder
    func progressCard() -> some View {
        VStack {
            HStack {
                VStack {
                    Image( "Polygon1")
                        .resizable()
                        .scaledToFit()
                        .font(.title2)
                        .frame(width: 20 , height: 10)
                    Image( "Polygon1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20 , height: 10)
                    
                }
                Text("30%")
                    .font(.title2)
                    .bold()
                    .foregroundColor(Color(hex: "#8FCECD"))
                
                Text("Your mindfulness practice increased by 30% this week")
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                Spacer()
                
                
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(LinearGradient(
                gradient: Gradient(colors: [Color(hex: "#0F0622"),Color(hex: "#23384B") ,Color(hex: "#35646F")]),
                startPoint: .leading,
                endPoint: .trailing
            ))
            .cornerRadius(12)
            
        }
        
        
    }
    
    @ViewBuilder
    func weeklyComparisonChart() -> some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Weekly comparison")
                .font(.title3).bold()
                .foregroundColor(.white)
            
            Text("This week, your average number of activities dropped 30% from last week. To boost your consistency, commit to streaks after an activity.")
                .foregroundColor(.gray)
                .font(.system(size: 14))
            
            Chart {
                ForEach(weeklyComparisonData, id: \.week) { data in
                    BarMark(
                        x: .value("Week", data.week),
                        y: .value("XP", data.xp),
                        width: 70
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .foregroundStyle(data.gradient)
                    .annotation(position: .overlay) {
                        VStack {
                            Text("\(data.xp)\nXP")
                                .foregroundColor(.white)
                                .bold()
                                .font(.footnote)
                        }
                    }
                }
            }
        }
        .frame(height: 280)
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(12)
        .chartYAxis(.hidden)
        .chartXAxis(.hidden)
    }
    
    
    @ViewBuilder
    func mindfulDaysChart() -> some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Mindful days this week")
                .font(.title3).bold()
                .foregroundColor(.white)
            
            Text("This week, you were mindful for 5 days!")
                .foregroundColor(.gray)
                .font(.system(size: 14))
            
            Chart {
                ForEach(weeklyXPData, id: \.day) { data in
                   
                        BarMark(
                            x: .value("Week", data.day),
                            y: .value("XP", data.xp),
                            width: 20
                        )
                        
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .foregroundStyle(data.gradient)
                        
                       
                    
                }
            }
            .frame(height: 250)
            .chartYAxis(.hidden)
            .chartXAxis {
                AxisMarks(values: weeklyXPData.map { $0.day })
            }
            
            HStack{
                Circle()
                    .fill(
                        LinearGradient(colors: [Color(hex: "#9D77EE"), Color(hex: "#FFFFFF")], startPoint: .leading, endPoint: .trailing)
                    )
                    .frame(width: 20 , height: 20)
                
                Text("Activities Completed")
                    .font(.footnote)
                    .foregroundStyle(.white)
                
                Text("--- Apps User’s Average")
                    .font(.footnote)
                    .foregroundStyle(.white)
            }
            
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(12)
    }
    
}

#Preview {
    InsightsView()
}
