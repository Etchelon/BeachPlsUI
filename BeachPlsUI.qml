import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Window 2.0

ApplicationWindow {
	title: qsTr("Beach pls")
	width: 640
	height: 480

	ListView{
		id: playerList

		anchors {
			left: parent.left
			top: parent.top
			bottom: parent.bottom
			margins: 10
		}

		model: 5
		delegate: Rectangle {
			width: parent.width
			height: 75

			Text {
				anchors.fill: parent

				text: "Fish"
				font.pixelSize: height * 0.5
			}
		}

		width: 150
	}

	Flickable {
		id: skills

		anchors {
			left: playerList.right
			leftMargin: 30
			top: parent.top
			topMargin: 10
			bottom: parent.bottom
			bottomMargin: 10
			right: parent.right
			rightMargin: 10
		}

		contentHeight: column.height

		Column {
			id: column

			width: parent.width

			spacing: 20

			RatingBlock {
				id: attack

				width: parent.width

				skill: "Attacco"
				activeColor: "red"
			}

			RatingBlock {
				id: reception

				width: parent.width

				skill: "Ricezione"
				activeColor: "lightblue"
			}

			RatingBlock {
				id: serve

				width: parent.width

				skill: "Battuta"
				activeColor: "green"
			}

			RatingBlock {
				id: set

				width: parent.width

				skill: "Alzata"
				activeColor: "yellow"
			}

			RatingBlock {
				id: reaction

				width: parent.width

				skill: "Reattività"
				activeColor: "purple"
			}

			RatingBlock {
				id: discipline

				width: parent.width

				skill: "Disciplina"
				activeColor: "blue"
			}
		}
	}
}
