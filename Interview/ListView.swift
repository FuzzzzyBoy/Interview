import SwiftUI

struct ListView: View {
	
	@State var numbers = [1, 2, 3]
	@State var letters = ["A", "B", "C"]

	var body: some View {
		VStack {
			List {
				Section {
					ForEach(numbers, id: \.self) { number in
						Text("\(number)")
					}
				}
				
				Section {
					ForEach(letters, id: \.self) { letter in
						Text(letter)
					}
				}
			}
			
			Button("PUSH ME") {
				let first = numbers.removeFirst()
				letters.insert("\(first)", at: 0)
			}
			.font(.largeTitle)
		}
	}

}

struct ListView_Previews: PreviewProvider {
	static var previews: some View {
		ListView()
	}
}
