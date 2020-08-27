//
//  YearPicker.swift
//  LDS-Temple-Visualization-IOS
//
//  Created by tiantian on 2020/7/24.
//  Copyright © 2020 Litian Zhang. All rights reserved.
//

import SwiftUI

struct YearPicker: View {
    
    @EnvironmentObject var sharedValues: SharedValues
    
    var templeYears: Array<String> = ImageSpiral.templeYears
    
    @ObservedObject var imageSpiralViewModel: ImageSpiral
    //@State var selectedYearIndex = 0
    
    let deviceLanguage = Locale.current.languageCode
    
    var body: some View {
        
        return GeometryReader { geometry in
            VStack {
                Spacer()

                
                HStack {
                    Text("\(ImageSpiral.templeYears[sharedValues.selectedYearIndex])")
                    Text("events")
                }
                .padding()

                Picker(selection: $sharedValues.selectedYearIndex, label: Text("")) {
                            ForEach(0 ..< templeYears.count) {
                                if self.templeYears[$0] == "0000" {
                                    Text("temples.under.construction.lower.case")
                                } else if self.templeYears[$0] == "1111" {
                                    Text("announced.temples.lower.case")
                                } else {
                                    Text(self.templeYears[$0])
                                }
                                
                                
                            }
                         }
                .labelsHidden()

                HStack {
                    Spacer()
                    Button(action: {
                        sharedValues.showYearPicker.toggle()
                    }) {
                        Text("dismiss")
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        sharedValues.showYearPicker.toggle()
                        sharedValues.yearPickerSet = true
                        let newThetaFromYearPicker: CGFloat = ImageSpiral.templeYearsThetaFriends[sharedValues.selectedYearIndex] + 150
                        sharedValues.sliderProgress = newThetaFromYearPicker
                        imageSpiralViewModel.getNewTheta(newTheta: newThetaFromYearPicker)
                        imageSpiralViewModel.updateOnScreenTemples(newTheta: newThetaFromYearPicker)
                    }) {
                        Text("view")
                    }
                    Spacer()
                }
           
                Spacer()
                
            }
            //.background(Color.gray)
        
        }
        
        
    }
}

//struct YearPicker_Previews: PreviewProvider {
//    static var previews: some View {
//        YearPicker()
//    }
//}
