import QtQuick 2.12

Image {
    id: root
    source: "images/background.png"

    Image {
        id: wheel
        Behavior on rotation {
            NumberAnimation {
                duration: 250
            }
        }
        anchors.centerIn: parent
        source: "images/pinwheel.png"
    }

    Image {
        id: pole
        anchors.horizontalCenter: parent.horizontalCenter
        anchros.bottom: parent.bottom
        source: "images/pole.png"
    }


    MouseArea {
        anchors.fill: parent 
        onClicked: wheel.rotation += 90
    }
}