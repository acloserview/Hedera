/***************************************************************************
 *   Copyright (C) 2014 by David Edmundson <davidedmundson@kde.org>        *
 *   Copyright (C) 2014 by Aleix Pol Gonzalez <aleixpol@blue-systems.com>  *
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU General Public License     *
 *   along with this program; if not, write to the                         *
 *   Free Software Foundation, Inc.,                                       *
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA .        *
 ***************************************************************************/

import QtQuick 2.1
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.1
import QtGraphicalEffects 1.0
import org.kde.plasma.core 2.0 as PlasmaCore

PlasmaCore.ColorScope {
    colorGroup: PlasmaCore.Theme.ComplementaryColorGroup
    property alias main: mainView.sourceComponent
    property alias controls: controlsView.sourceComponent
    readonly property alias mainItem: mainView.item
    readonly property alias controlsItem: controlsView.item
    property bool canShutdown: false
    property bool canReboot: false
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
		verticalOffset: 6
		radius: 45
		samples: 17
		color: "#80000000"
		source: splash
		opacity: 0.8
    }
    Loader {
        id: mainView
        anchors {
            margins: units.largeSpacing

            left: parent.left
            right: parent.right
            top: parent.top
            bottom: separator.top
        }
    }
    Loader {
        id: controlsView
        focus: true
        anchors {
            margins: units.largeSpacing
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
    }
}
