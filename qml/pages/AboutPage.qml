/**
 * Donnie. Copyright (C) 2017 Willem-Jan de Hoog
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.2
import Sailfish.Silica 1.0

Page {
    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        Column {
            id: column
            width: parent.width

            PageHeader {
                title: qsTr("About")
            }

            Item {
                width: parent.width
                height: childrenRect.height

                Image {
                    id: icon

                    anchors.horizontalCenter: parent.horizontalCenter
                    asynchronous: true
                    source: {
                        var iconSize = Theme.iconSizeExtraLarge
                        if (iconSize < 108)
                            iconSize = 86
                        else if (iconSize < 128)
                            iconSize = 108
                        else if (iconSize < 256)
                            iconSize = 128
                        else iconSize = 256

                        return "/usr/share/icons/hicolor/" + iconSize + "x" + iconSize + "/apps/donnie.png"
                    }
                }

                Column {
                    id: appTitleColumn

                    anchors {
                        left: parent.left
                        leftMargin: Theme.horizontalPageMargin
                        right: parent.right
                        rightMargin: Theme.horizontalPageMargin
                        top: icon.bottom
                        topMargin: Theme.paddingMedium
                    }

                    Label {
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: Theme.fontSizeLarge
                        text: "Donnie 0.1"
                    }

                    Label {
                        horizontalAlignment: Text.AlignHCenter
                        text: qsTr("UPnP control point and player for Sailfish OS")
                        width: parent.width
                        wrapMode: Text.WordWrap
                    }

                    Label {
                        horizontalAlignment: implicitWidth > width ? Text.AlignLeft : Text.AlignHCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: Theme.fontSizeExtraSmall
                        text: "Copyright (C) 2017 Willem-Jan de Hoog"
                        truncationMode: TruncationMode.Fade
                        width: parent.width
                    }
                    Label {
                        horizontalAlignment: implicitWidth > width ? Text.AlignLeft : Text.AlignHCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: Theme.fontSizeExtraSmall
                        text: "Licensed under GPLv3"
                        truncationMode: TruncationMode.Fade
                        width: parent.width
                    }
                }

            }

            SectionHeader {
                text: qsTr("Thanks to")
            }

            Label {
                anchors {
                    left: parent.left
                    leftMargin: Theme.horizontalPageMargin
                    right: parent.right
                    rightMargin: Theme.horizontalPageMargin
                }
                font.pixelSize: Theme.fontSizeSmall
                wrapMode: Text.WordWrap
                text:
"J.F.Dockes for upplay + libupnpp, amazing UPnP support (inspiration & code)
equeim for unplayer (inspiration & code)
jabbounet for upnpplayer (inspiration)
kimmoli for IconProvider and MultiItemPicker (code)
Morpog for icon shape"
            }
        }

        VerticalScrollDecorator { }
    }
}
