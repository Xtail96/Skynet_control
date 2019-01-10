import QtQuick 2.12
import QtQuick.Controls 2.5

GroupBox {
	width: 379
	height: 435
	title: "Мультимедиа"
	clip: true

	Row {
		width: 350
		height: 55
		anchors.right: parent.right
		anchors.left: parent.left
		anchors.top: parent.top
		spacing: 5

		MyControlStatusLabel {
			text: "Ожидание"
		}
		MyControlStatusLabel {
			text: "Обновление\nизображения"
		}
		MyControlStatusLabel {
			text: "Передача\nизображения"
		}
		MyControlStatusLabel {
			text: "Ошибка"
		}
	}

	AnimatedImage {
		id: image
		x: 0
		y: 120
		width: 355
		height: 266
		source: "qrc:/images/white_noise.gif"
		fillMode: Image.Stretch
	}

	Row {
		x: 0
		y: 60
		width: 355
		height: 55
		spacing: 5

		Button {
			id: imageUpdateButton
			width: 175
			height: 48
			text: qsTr("Обновить")
			anchors.verticalCenter: parent.verticalCenter
			font.capitalization: Font.AllUppercase
		}

		Button {
			id: imageSaveButton
			width: 175
			height: 48
			text: qsTr("Сохранить как...")
			anchors.verticalCenter: parent.verticalCenter
			font.capitalization: Font.AllUppercase
		}
	}
}