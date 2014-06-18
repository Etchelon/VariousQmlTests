import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Window 2.0

ApplicationWindow {
	title: qsTr("Hello World")
	width: 640
	height: 480

	menuBar: MenuBar {
		Menu {
			title: qsTr("File")
			MenuItem {
				text: qsTr("Exit")
				onTriggered: Qt.quit();
			}
		}
	}

	TabView {
		id: frame
		anchors.fill: parent
		anchors.margins: 4
		Tab { title: "Tab 1"
			Rectangle {
				anchors.fill: parent

				color: "yellow"
			}
		}
		Tab { title: "Tab 2" }
		Tab { title: "Tab 3" }

		style: TabViewStyle {
			id: tabStyle

			frameOverlap: 1
			tab: Rectangle {
				color: styleData.selected ? "steelblue" :"lightsteelblue"
				border.color:  "steelblue"
				width: tabStyle.control.width / tabStyle.control.count //Math.max(text.width + 4, 80)
				implicitHeight: 60

				radius: 20
				Text {
					id: text
					anchors.centerIn: parent
					text: tabStyle.control.width
					color: styleData.selected ? "white" : "black"
				}
			}
			frame: Rectangle { color: "red" }
			leftCorner: Rectangle { color: "cyan" }
		}

		//		style: TabViewStyle {
		//			id: tabStyle

		//			frameOverlap: 1
		//			tab: Rectangle {
		//				color: styleData.selected ? "steelblue" :"lightsteelblue"
		//				border.color:  "steelblue"
		//				border.width: 5
		//				implicitHeight: 60
		//				width: tabStyle.control.width / tabStyle.control.count

		//				radius: 2
		//				Text {
		//					id: text
		//					anchors.centerIn: parent
		//					text: tabStyle.control.width
		//					color: styleData.selected ? "white" : "black"
		//				}
		//			}
		//			frame: Rectangle { color: "red" }
		//			tabBar: Rectangle { color: "cyan" }
		////			tabsAlignment: Qt.AlignHCenter
		//			leftCorner: Rectangle { color: "cyan" }
		//		}
	}
}
