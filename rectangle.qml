import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Shapes 1.12

Rectangle {
    id: parentrec
    height: parent.height * 0.8
    width: parent.height * 0.8
    anchors.centerIn: parent
    color: "red"


    // TRIANGLES
    Shape {
        visible: false
        anchors.horizontalCenter: parentrec
        width: parentrec.width * 0.8
        height: parentrec.height * 0.8
        ShapePath {
            strokeWidth: 0
            fillColor: "green"

            startX: width/2; startY: 0   // top middle
            PathLine { x: 0;      y: height}      // bottom left
            PathLine { x: width;  y: height  }      // bottom right
            PathLine { x: width/2; y: 0 } // back to top middle
        }
    }


    Shape{
       visible: false
        ShapePath {
            strokeWidth: 0
            fillColor: "blue"

            startX: width/2; startY: height   // bottom middle
            PathLine { x: 0;      y: 0 }      // top left
            PathLine { x: width;  y: 0 }      // top right
            PathLine { x: width/2; y: height } // back to bottom middle
        }
    }


    // YELLOW CIRCLE in center
    Rectangle {
        height: parentrec.height * 0.3
        width: height
        anchors.centerIn: parent
        radius: width/2
        color: "yellow"
    }
}
