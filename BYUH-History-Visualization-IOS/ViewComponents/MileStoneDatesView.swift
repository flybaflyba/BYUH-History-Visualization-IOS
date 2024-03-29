//
//  MileStoneDatesView.swift
//  LDS-Temple-Visualization-IOS
//
//  Created by tiantian on 2020/7/13.
//  Copyright © 2020 Litian Zhang. All rights reserved.
//

import SwiftUI

struct MileStoneDatesView: View {
    

    
    
    @EnvironmentObject var sharedValues: SharedValues
    
    @ObservedObject var imageSpiralViewModel: ImageSpiral
  
    
    var oneTempleInfo: String {
        get {
            
            var s: String = ""
            for i in sharedValues.oneTempleInfo {
                s += i.content + "\n"
            }
            //print(s)
            return s
        }
    }
    
    
    var body: some View {

        
        HStack {
            VStack {
                
    //            NavigationLink(destination: InAppWebView(url: sharedValues.currentTappedTempleLink)) {
    //                HStack {
    //                    Text(sharedValues.currentTappedTempleName)
    //                    Image(systemName: "link")
    //                }
    //            }
                
                Text(" ")//.background(sharedValues.mainColor)
                
                if sharedValues.currentDevice == .phone {
                    
                } else {
                    Text(" ")//.background(sharedValues.mainColor)
                    Text(" ")//.background(sharedValues.mainColor)
                    Text(" ")//.background(sharedValues.mainColor)
                }
                
//                List {
//                    VStack {
//                        //ForEach() { in }
//                        Text(" ")
//                        Text(oneTempleInfo)
//                            .multilineTextAlignment(.center)
//                            .padding(sharedValues.currentDevice == .phone ? 5 : 20)
//
//
//                    }
//                    .listRowBackground(Color.green)
//                }
                
                ScrollView {
                    Text(" ")
                    Text(oneTempleInfo)
                        .multilineTextAlignment(.center)
                        .padding(sharedValues.currentDevice == .phone ? 5 : 20)
                        .background(sharedValues.mainColor)
                }
                
            }
//            .background(Color.red)
            .opacity(sharedValues.mileStoneDatesViewOpacity)
        }
        
//        .background(Color.green)
        
 
            
//        .onTapGesture {
//            SwiftUI.withAnimation(sharedValues.animationOption == "slow" ? sharedValues.mySlowAnimation : sharedValues.animationOption == "fast" ? sharedValues.myFastAnimation : .none) {
//                // when we tap mile stone dates in single temple view, we will bring slider back and makk mile stone dates disappear
//                sharedValues.tappedATemple = false
//
//            }
//        }
        
        
    }
}


//struct MileStoneDatesView_Previews: PreviewProvider {
//    static var previews: some View {
//        MileStoneDatesView()
//    }
//}
