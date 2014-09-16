import QtQuick 2.2

Item {
	id: root

	property int rating: 1

	property int starWidth: width / stars.count
	property int starHeight: height
	property color activeColor: "yellow"

	Row {
		id: row

		anchors.fill: parent

		Repeater {
			id: stars

			model: 5
			delegate: Rectangle {
				id: delegate

				width: starWidth
				height: starHeight
				radius: 90

				property bool active: index == 0
				color: active ? root.activeColor : "gray"

				Image {
					anchors.fill: parent
					source: "starIcon.png"
				}

				MouseArea {
					anchors.fill: parent
					onClicked:
					{
						root.rating = index + 1;

						for (var i = 0; i <= index; ++i)
							stars.itemAt(i).active = true;

						if (index < stars.count)
							for (var i = index + 1; i < stars.count; ++i)
								stars.itemAt(i).active = false;
					}
				}
			}
		}
	}
}
