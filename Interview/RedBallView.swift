import SwiftUI

struct RedBallView: View {
	
	var toggle = true
	
	var body: some View {
		HStack {
			Button("PUSH ME") {
				toggle.toggle()
			}
			.font(.largeTitle)
			.padding(.trailing, 50)
			
			if toggle {
				Color.red
					.frame(width: 50, height: 50)
					.clipShape(Circle())
			} else {
				Color.red
					.frame(width: 50, height: 50)
					.clipShape(Circle())
					.padding(.bottom, 300)
			}
		}
		.padding()
	}
	
}

struct RedBallView_Previews: PreviewProvider {
	static var previews: some View {
		RedBallView()
	}
}
