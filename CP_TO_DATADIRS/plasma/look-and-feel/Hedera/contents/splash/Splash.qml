import QtQuick 2.2
import QtGraphicalEffects 1.0
Image {
	id: root
	source: "../img/background.png"
	horizontalAlignment: Image.AlignHCenter
	verticalAlignment: Image.AlignVCenter
	fillMode: Image.PreserveAspectCrop
	property int stage
	onStageChanged: {
		if (stage == 1) {
			background.opacity = 1
			ani1.opacity = 1
			ani2.opacity = 0
			ani3.opacity = 0
			ani4.opacity = 0
			ani5.opacity = 0
			ani6.opacity = 0
        }
		if (stage == 2) {
			ani1.opacity = 1
			ani2.opacity = 1
			ani3.opacity = 0
			ani4.opacity = 0
			ani5.opacity = 0
			ani6.opacity = 0
        }
		if (stage == 3) {
			ani1.opacity = 1
			ani2.opacity = 1
			ani3.opacity = 1
			ani4.opacity = 0
			ani5.opacity = 0
			ani6.opacity = 0
		}
		if (stage == 4) {
			ani1.opacity = 1
			ani2.opacity = 1
			ani3.opacity = 1
			ani4.opacity = 1
			ani5.opacity = 0
			ani6.opacity = 0
        }
		if (stage == 5) {			
			ani1.opacity = 1
			ani2.opacity = 1
			ani3.opacity = 1
			ani4.opacity = 1
			ani5.opacity = 1
			ani6.opacity = 0
		}
		if (stage == 6) {
			ani1.opacity = 1
			ani2.opacity = 1
			ani3.opacity = 1
			ani4.opacity = 1
			ani5.opacity = 1
			ani6.opacity = 1
		}
	}
	Rectangle {
		id: splash
		height: 90
		width: 400
		radius: 5
		smooth: true
		color: "#353232"
		x: (root.width - width) / 2
		y: (root.height - height) / 2
		opacity: 1.0
	}
	DropShadow {
		anchors.fill: splash
		horizontalOffset: 0
		verticalOffset: 3
		radius: 8
		samples: 17
		color: "#80000000"
		source: splash
		opacity: 0.8
}
	Image {
		id: ani1
		height: 85
		width: 385
		smooth: true
		x: (root.width - width) / 2
		y: (root.height - height) / 2
		source: "../img/progress1.png"
		opacity: 1
		Behavior on opacity {
			NumberAnimation {
				duration: 1500; 
				easing {
					type: Easing.Linear
				} 
			}
		}
	}
	Image {
		id: ani2
		height: 85
		width: 385
		smooth: true
		x: (root.width - width) / 2
		y: (root.height - height) / 2
		source: "../img/progress2.png"
		opacity: 0
		Behavior on opacity {
			NumberAnimation {
				duration: 1500; 
				easing {
					type: Easing.Linear
				} 
			}
		}
	}
	Image {
		id: ani3
		height: 85
		width: 385
		smooth: true
		x: (root.width - width) / 2
		y: (root.height - height) / 2
		source: "../img/progress3.png"
		opacity: 0
		Behavior on opacity {
			NumberAnimation {
				duration: 1500; 
				easing {
					type: Easing.Linear
				} 
			}
		}
	}
	Image {
		id: ani4
		height: 85
		width: 385
		smooth: true
		x: (root.width - width) / 2
		y: (root.height - height) / 2
		source: "../img/progress4.png"
		opacity: 0
		Behavior on opacity {
			NumberAnimation {
				duration: 1500; 
				easing {
					type: Easing.Linear
				} 
			}
		}
	}
	Image {
		id: ani5
		height: 85
		width: 385
		smooth: true
		x: (root.width - width) / 2
		y: (root.height - height) / 2
		source: "../img/progress5.png"
		opacity: 0
		Behavior on opacity {
			NumberAnimation {
				duration: 1500; 
				easing {
					type: Easing.Linear
				} 
			}
		}
    }
	Image {
		id: ani6
		height: 85
		width: 385
		smooth: true
		x: (root.width - width) / 2
		y: (root.height - height) / 2
		source: "../img/progress6.png"
		opacity: 0
		Behavior on opacity {
			NumberAnimation {
				duration: 1500; 
				easing {
					type: Easing.Linear
				} 
			}
		}
	}
}
