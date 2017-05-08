import QtQuick 2.8
import QtQuick.Window 2.2

Window
{
    visible: true
    width: 800
    height: 600
    title: qsTr("SBattle")


    Rectangle
    {
        id: background

        width: parent.width
        height: parent.height

        Image
        {
            width: parent.width
            height: parent.height

            source: "source/image/background.jpg"
            fillMode: Image.Tile
        }
    }

    Text
    {
        text: "SBattle"
        font.pixelSize: 25
    }


    Rectangle
    {
        id: gameStartButton

        width: 100
        height: 100

        x: 800 / 2
        y: 50

        color: "red"

        Text {
            id: a
            text: qsTr("Начать игру")
        }

    }


    MouseArea
    {
        anchors.fill: parent
        onClicked: app.mouseClick(mouseX, mouseY)
    }
}
