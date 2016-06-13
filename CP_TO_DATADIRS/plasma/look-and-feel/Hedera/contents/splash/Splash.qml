import QtQuick 2.2
Image {
	id: root
	source: "../img/tile.png"
	fillMode: Image.Tile
	property int stage
	property int iconSize: 64 
	onStageChanged: {
		if (stage == 1) {
			background.opacity = 1
			spin.opacity = 1
		}
		if (stage == 2) {
			spin.opacity = 1
		}
		if (stage == 3) {			
			spin.opacity = 1 
		}
		if (stage == 4) {
			spin.opacity = 1
		}
		if (stage == 5) {			
			spin.opacity = 1 
		}
		if (stage == 6) {
			spin.opacity = 1 
		}
	}
	Image {
		id: spin
		height: 64
		width: 64
		smooth: true
		x: (root.width - width) / 2
		y: (root.height - height) / 2
		source: "../img/spin.png"
		opacity: 0
		Behavior on opacity {
			NumberAnimation {
				duration: 3000; 
				easing {
					type: Easing.InOutQuad
				} 
			}
		}
		NumberAnimation {
			id: animateRotation
			target: spin
			properties: "rotation"
			from: 0
			to: 360
			duration: 1500
			loops: Animation.Infinite
			running: true
		}
	}
}
