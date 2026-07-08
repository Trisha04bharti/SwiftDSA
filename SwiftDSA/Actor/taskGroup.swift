
import SwiftUI


struct RatingView: View {
    
    @State var a: Bool = false
    @State var b: Bool = false
    @State var c: Bool = false
    @State var d: Bool = false
    @State var e: Bool = false
    
    @State var f: Bool = true
    @State var g: Bool = true
    @State var h: Bool = true
    @State var i: Bool = true
   
    
    var body: some View {
        NavigationStack{
            VStack{
                
                HStack{
                    Image(systemName: (a || b || c || d || e) ? "star.fill": "star")
                        .font(.system(size: 30))
                        .foregroundStyle(.yellow)
                        .onTapGesture {
                            a.toggle()
                            f.toggle()
                            g.toggle()
                            h.toggle()
                            i.toggle()
                        }
                   
                    if (f ) {
                        Image(systemName: ( b || c || d || e) ? "star.fill": "star")
                            .font(.system(size: 30))
                            .foregroundStyle(.yellow)
                            .onTapGesture {
                                a.toggle()
                                b.toggle()
                                g.toggle()
                                h.toggle()
                                i.toggle()
                                
                            }
                    }
                    
                    if (f && g) {
                        Image(systemName: (  c || d || e) ? "star.fill": "star")
                            .font(.system(size: 30))
                            .foregroundStyle(.yellow)
                            .onTapGesture {
                                a.toggle()
                                b.toggle()
                                c.toggle()
                                h.toggle()
                                i.toggle()
                            }
                    }
                    
                    if ( f && g && h  ) {
                        Image(systemName: (   d || e) ? "star.fill": "star")
                            .font(.system(size: 30))
                            .foregroundStyle(.yellow)
                            .onTapGesture {
                                a.toggle()
                                b.toggle()
                                c.toggle()
                                d.toggle()
                                i.toggle()
                                
                            }
                    }
                    
                    if ( f && g && h && i  ) {
                        Image(systemName: ( e) ? "star.fill": "star")
                            .font(.system(size: 30))
                            .foregroundStyle(.yellow)
                            .onTapGesture {
                                a.toggle()
                                b.toggle()
                                c.toggle()
                                d.toggle()
                                e.toggle()
                                
                                
                            }
                    }
                }
                
            }
            .navigationTitle(Text("Rating"))
        }
    }
}

#Preview {
    RatingView()
}


