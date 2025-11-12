import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12


//PROPERTIES
    //from : real
    //indeterminate : bool
    //position : real
    //to : real
    //value : real
    //visualPosition : real

Column {

        ProgressBar{
            visible: false
            id: progressbarbasic
            width: parent.width*0.8
            value: 0.5
        }

        ProgressBar {
            id: bar
            width: 250
            value: 0
           indeterminate: true

            Timer {
                interval: 100
                running: true
                repeat: true
                onTriggered: {

               bar.value += 0.1

                }
            }
        }
}



