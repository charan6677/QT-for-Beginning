import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.12

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: "Packed Example"

    Loader{
        height: parent.height * 0.7
        width: parent.width * 0.7
        anchors.centerIn: parent
        //source: "qrc:/sample.qml"
        //source: "qrc:/rectangle.qml"
        source: "qrc:/Progressbar.qml"

    }


}
