//
//  SubscribeView.swift
//  Subscription-Demo
//
//  Created by Rio Rizky Rainey Ferbiansyah on 09/12/24.
//

import SwiftUI
import BarView

struct SubscribeView<ViewModel>: View where ViewModel: SubscribeViewModelSpecs  {
    
    
    @ObservedObject var viewModel: ViewModel
    
    private var imageWidth: CGFloat = 0.58
    
    private var barSpacing: CGFloat = 16
    
    init(viewModel: ViewModel = SubscribeViewModel()) {
        self.viewModel = viewModel
    }
    
    public var body: some View {
        ZStack {
            // Background
            LinearGradient(
                gradient: Gradient(colors: [Color.backgroundColor, Color.white]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            
            // Content
            VStack {
                // Header Section
                HStack {
                    Spacer()
                    Button(action: {
                        
                    }) {
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                            .padding()
                    }
                    .background(Color.white)
                    .clipShape(Circle())
                    .shadow(radius: 15)
                }
                
                Spacer()
                
                // Greeting and Image Section
                VStack(spacing: 16) {
                    Text("Hello")
                        .font(.largeTitle)
                        .bold()
                    
                    Text("SpeakBUDDY")
                        .font(.largeTitle)
                        .bold()
                    
                }
                
                Spacer(minLength: 25)
                
                GeometryReader { geometry in
                    ZStack {
                        
                        Image("protty")
                            .resizable()
                            .scaledToFit()
                            .frame(
                                width: imageWidth * geometry.size.width
                            )
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        
                        // Bar Chart Section
                        BarChartView(
                            config: BarChartConfig(
                                barWidth: barWidth(parentWidth: geometry.size.width, numberOfBar: viewModel.numberOfBar),
                                barSpacing: 16,
                                barColors: Gradient(colors: [.topBarColor, .bottomBarColor]),
                                labels: viewModel.barLabels,
                                heights: viewModel.barHeights.map { $0 * geometry.size.height }
                            )
                        )
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                Spacer(minLength: 30)
                
                VStack(spacing: 0) {
                    Text("スピークバディで")
                        .foregroundStyle(Color.black)
                        .font(.headline)
                    
                    Text("レベルアップ")
                        .font(.headline)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    Color.topTextColor,
                                    Color.bottomTextColor,
                                ],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                }
                
                Spacer(minLength: 25)
                
                Button(action: {
                    // Add action for the button
                }) {
                    Text("プランに登録する")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                }
                .tint(Color.buttonColor)
                .foregroundColor(.white)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .shadow(radius: 20)
                .controlSize(.large)
            }
            .padding([.horizontal, .vertical])
        }
        .background(.white)
        .onAppear {
            viewModel.load()// Set final bar heights
        }
    }
    
    private func barWidth(parentWidth: CGFloat, numberOfBar: Int) -> CGFloat {
        
        if numberOfBar > 1 {
            return (parentWidth / CGFloat(numberOfBar)) - (CGFloat(numberOfBar - 1) * barSpacing)
        } else if numberOfBar == 1 {
            return parentWidth
        }
        
        return 0.0
    }
}

#Preview {
    SubscribeView()
}
