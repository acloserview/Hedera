import QtQuick 2.2
import QtGraphicalEffects 1.0
Image {
	id: root
	source: "../img/tile.png"
	fillMode: Image.Tile
	property int stage
	onStageChanged: {
		if (stage == 1) {
			background.opacity = 1
			ani1.opacity = 1
			ani2.opacity = 0
            ani3.opacity = 0
		}
		if (stage == 2) {
			ani1.opacity = 1
			ani2.opacity = 1
			ani3.opacity = 0
        }
		if (stage == 3) {
            ani1.opacity = 1
			ani2.opacity = 1
			ani3.opacity = 1
		}
		if (stage == 4) {
			ani1.opacity = 1
			ani2.opacity = 0
            ani3.opacity = 0
        }
		if (stage == 5) {			
            ani1.opacity = 1
			ani2.opacity = 1
			ani3.opacity = 0
		}
		if (stage == 6) {
			ani1.opacity = 1
			ani2.opacity = 1
			ani3.opacity = 1
		}
	}
	Rectangle {
		id: splash
		height: 50
		width: 98
		radius: 5
		smooth: true
		color: "#90000000"
		x: (root.width - width) / 2
		y: (root.height - height) / 2
		opacity: 1
	}
	DropShadow {
		anchors.fill: splash
		horizontalOffset: 0
		verticalOffset: 6
		radius: 8
		samples: 17
		color: "#80000000"
        source: splash
    }
	Image {
		id: ani1
		height: 24
		width: 98
		smooth: true
		x: (root.width - width) / 2
		y: (root.height - height) / 2
		source: "../img/progress1.png"
		opacity: 1
		Behavior on opacity {
			NumberAnimation {
				duration: 100; 
				easing {
					type: Easing.Linear
				} 
			}
		}
	}
	Image {
		id: ani2
		height: 24
		width: 98
		smooth: true
		x: (root.width - width) / 2
		y: (root.height - height) / 2
		source: "../img/progress2.png"
		opacity: 0
		Behavior on opacity {
			NumberAnimation {
				duration: 100; 
				easing {
					type: Easing.Linear
				} 
			}
		}
	}
	Image {
		id: ani3
		height: 24
		width: 98
		smooth: true
		x: (root.width - width) / 2
		y: (root.height - height) / 2
		source: "../img/progress3.png"
		opacity: 0
        Behavior on opacity {
			NumberAnimation {
				duration: 100; 
				easing {
					type: Easing.Linear
				} 
			}
		}
	}
}
