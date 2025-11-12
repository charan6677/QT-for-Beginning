import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.12

    Rectangle {
        anchors.fill: parent
        anchors.margins: 16   // this works like padding
        color: "transparent"

        ColumnLayout {
            anchors.fill: parent
            spacing: 16

            RowLayout {
                spacing: 12
                Button {
                    text: "Start";
                    onClicked: timer.start()
                }
                Button {
                    text: "Stop";
                    onClicked: timer.stop()
                }
            }

            ProgressBar {
                id: bar
                from: 0; to: 100
                value: progressValue
                Layout.fillWidth: true
            }

            TextField {
                placeholderText: "Type here"
                Layout.fillWidth: true
                onAccepted: console.log("Enter:", text)
            }

            Rectangle {
                id: box
                width: 120; height: 80; color: "dodgerblue"
                Behavior on x { NumberAnimation { duration: 250 } }
                MouseArea { anchors.fill: parent; onClicked: box.x += 20 }
            }
        }


    Timer {
        id: timer;
        interval: 100;
        repeat: true;
        running: false
        property int i: 0
        onTriggered: {
            i = (i + 1) % 101;
            progressValue = i
        }
    }

    property int progressValue: 0
}
