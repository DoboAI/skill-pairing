/*
 * Copyright 2018 by Aditya Mehra <aix.m@outlook.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

import QtQuick.Layouts 1.4
import QtQuick 2.4
import QtQuick.Controls 2.0
import org.kde.kirigami 2.4 as Kirigami

import Mycroft 1.0 as Mycroft

Mycroft.Delegate {
    id: root
    property var code: sessionData.code
    Rectangle {
        color: "#22a7f0"
        width: parent.width
        height: parent.height
        ColumnLayout {
            anchors.fill: parent
        
            Text {
                id: paircode
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignLeft
                horizontalAlignment: Text.AlignHCenter
                font.family: "Noto Sans"
                font.weight: Font.Bold
                fontSizeMode: Text.HorizontalFit
                font.pixelSize: 100
                visible: !content.visible
                color: "white"
                text: root.code
            }
            Text {
                id: instruction
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignLeft
                horizontalAlignment: Text.AlignHCenter
                font.family: "Noto Sans"
                font.weight: Font.Bold
                fontSizeMode: Text.HorizontalFit
                font.pixelSize: 48
                visible: !content.visible
                color: "#2C3E50"
                text: "pair at mycroft.ia/pair"
            }
        }
    }
}
