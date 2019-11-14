import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0
import ".."

Rectangle {
    id: twoStepVerificationPage
    width: 1366; height: 768
    color: userPreferences.theme.style("StartPage TwoStepVerificationPage outerBackground")

    property var mediaType: "Email"
    property int maxDigits: 6

    function resetData(mediaType) {
        twoStepVerificationPage.mediaType = mediaType;
        twoStepVerificationPage.state = "";
        twoStepVerificationField.text = "";
        twoStepVerificationField.state = "";
        trustThisDeviceCheckBox.checked = false;
    }

    function setFocus(focus) {
        twoStepVerificationField.focus = focus;
    }

    function verifyButtonClicked() {
        twoStepVerificationPage.state = "STATE_VERIFYING";
        loginManager.onTwoStepVerificationClicked(twoStepVerificationField.text, trustThisDeviceCheckBox.checked);
    }

    function getMediaImageSource() {
        if (mediaType === "Email") {
            return RobloxStyle.getResource("../images/StartPage/shield-email.png");
        } else {
            return RobloxStyle.getResource("../images/StartPage/shield-sms.png");
        }
    }

    function getTwoStepVerificationInstruction() {
        if (mediaType === "Email") {
            return qsTr("Studio.App.StartPageLogin.TwoStepVerificationEmailInstruction");
        } else {
            return qsTr("Studio.App.StartPageLogin.TwoStepVerificationSmsInstruction");
        }
    }

	Image {
        id: bannerImage
        x: 0
        y: 0
        width: parent.width
        height: 205
        transformOrigin: Item.Center
        fillMode: Image.PreserveAspectCrop
        source: RobloxStyle.getResource("../images/StartPage/img_venetia-1920x1080.jpg")

        Rectangle {
            // Sits on top of the banner image
            id: overlayShadow
            x: 0
            y: 0
            width: parent.width
            height: parent.height
            color: "#a6000000"
            border.color: "#00000000"

            Image {
                id: logo
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.topMargin: 36
                width: 90
                height: 90
                smooth: true
                mipmap: true
                fillMode: Image.PreserveAspectFit
                source: RobloxStyle.getResource("../images/StartPage/RobloxStudio.png")
            }

            PlainText {
                id: bannerTitle
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 36
                verticalAlignment: Text.AlignBottom
                text: qsTr("Studio.App.StartPageLogin.StartCreatingOwnGames")
                font.pixelSize: 21
                lineHeight: 1.5
                color: "white"
                font.family: RobloxStyle.chooseWindowsOrMacOS(RobloxStyle.fontSourceSansPro, RobloxStyle.fontSourceSansProLight)
                renderType: userPreferences.theme.style("CommonStyle textRenderType")
                font.weight: userPreferences.theme.style("CommonStyle fontWeight")
            }
        }
    }

    PlainText {
        id: twoStepVerificationTitle
        text: qsTr("Studio.App.StartPageLogin.TwoStepVerificationTitle")
        anchors.top: bannerImage.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 15
        color: userPreferences.theme.style("StartPage TwoStepVerificationPage mainText")
        font.pixelSize: 36
        renderType: userPreferences.theme.style("CommonStyle textRenderType")
    }

    Rectangle {
        id: twoStepVerificationContainer
        anchors.top: twoStepVerificationTitle.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 15
        width: 400
        height: 483
        color: userPreferences.theme.style("StartPage TwoStepVerificationPage boxBackground")

        Image {
            id: mediaTypeImage
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 36
            width: 240
            fillMode: Image.PreserveAspectFit
            source: getMediaImageSource()
        }

        PlainText {
            id: twoStepVerificationInstructions
            text: getTwoStepVerificationInstruction()
            anchors.top: mediaTypeImage.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 36
            color: userPreferences.theme.style("StartPage TwoStepVerificationPage mainText")
            font.pixelSize: 16
            font.family: RobloxStyle.fontSourceSansProLight
            font.weight: userPreferences.theme.style("CommonStyle fontWeight")
            renderType: userPreferences.theme.style("CommonStyle textRenderType")
        }

        TextField {
            id: twoStepVerificationField
            property var highlight: false
            height: 38
            placeholderText: qsTr("Studio.App.TwoStepVerificationPage.Enter6DigitCode")
            anchors.top: twoStepVerificationInstructions.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            width: 263
            anchors.topMargin: 18
            inputMethodHints: Qt.ImhDigitsOnly
            property var permissiveValidator: RegExpValidator { regExp: /[ 0-9]+/ }
            validator: permissiveValidator
            onTextChanged: {
                // Manually modify the input instead of using a validator. There
                // was a problem where you could not copy paste the 2 step verification
                // code that had a space at the end. This code lets you paste the
                // 2sv code and then fixes it up afterwards.
                // Remove any spaces that are entered
                twoStepVerificationField.text = twoStepVerificationField.text.replace(/[ ]/g, '');
                // Only allow up to six digits to be entered
                if (twoStepVerificationField.text.length > maxDigits) {
                    twoStepVerificationField.text = twoStepVerificationField.text.substring(0, maxDigits);
                }
            }

            font.pixelSize: 16
            font.family: RobloxStyle.fontSourceSansProLight
            font.weight: userPreferences.theme.style("CommonStyle fontWeight")
            property color borderColor: RobloxStyle.colorGray3
            style: TextFieldStyle {
                renderType: userPreferences.theme.style("CommonStyle textRenderType")
				placeholderTextColor: userPreferences.theme.style("CommonStyle dimmedText")
				textColor: userPreferences.theme.style("StartPage TwoStepVerificationPage mainText")
                background: Rectangle {
                    radius: 3
                    border.color: userPreferences.theme.style("StartPage TwoStepVerificationPage verificationFieldBorder")
                    border.width: 1
					color: userPreferences.theme.style("StartPage TwoStepVerificationPage boxBackground")
                }
            }
            onAccepted: verifyButtonClicked()

            states: [
                State {
                    name: ""
                    PropertyChanges {
                        target: twoStepVerificationField; borderColor: userPreferences.theme.style("StartPage TwoStepVerificationPage verificationFieldBorder")
                    }
                },
                State {
                    name: "STATE_FOCUSED"
                    when: twoStepVerificationField.activeFocus && !twoStepVerificationField.highlight
                    PropertyChanges {
                        target: twoStepVerificationField; borderColor: userPreferences.theme.style("StartPage TwoStepVerificationPage verificationFieldFocusBorder")
                    }
                },
                State {
                    name: "STATE_ERROR"
                    when: twoStepVerificationField.highlight
                    PropertyChanges {
                        target: twoStepVerificationField; borderColor: RobloxStyle.colorRedError
                    }
                }
            ]
        }

        PlainText {
            id: errorText
            text: ""
            anchors.top: twoStepVerificationField.bottom
            anchors.left: twoStepVerificationField.left
            anchors.right: twoStepVerificationField.right
            anchors.topMargin: 4
            visible: false
            color: RobloxStyle.colorRedError
            font.pixelSize: 12
            font.family: RobloxStyle.fontSourceSansPro
            renderType: userPreferences.theme.style("CommonStyle textRenderType")
            wrapMode: Text.WordWrap
        }

        RobloxButton {
            id: verifyButton
            text: qsTr("Studio.App.TwoStepVerificationPage.Verify")
            isDefault: true
            anchors.top: twoStepVerificationField.bottom
            anchors.left: twoStepVerificationField.left
            anchors.right: twoStepVerificationField.right
            anchors.topMargin: 18
            enabled: twoStepVerificationField.text.length === maxDigits // Code is six digits
            color: userPreferences.theme.style("StartPage TwoStepVerificationPage verifyButton")
            disabledColor: userPreferences.theme.style("StartPage TwoStepVerificationPage verifyButtonDisabled")
            hoverColor: userPreferences.theme.style("StartPage TwoStepVerificationPage verifyButtonHover")
            onClicked: verifyButtonClicked()
        }

        LoadingAnimation {
            id: twoStepVerificationAnimation
            anchors.top: twoStepVerificationField.bottom
            anchors.topMargin: 18
        }

        CheckBox {
            id: trustThisDeviceCheckBox
            text: qsTr("Studio.App.TwoStepVerificationPage.TrustThisDeviceFor30Days")
            anchors.top: verifyButton.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 12
            style: CheckBoxStyle {
                indicator: Rectangle {
                    width: 24
                    height: 24
                    color: control.checked ? userPreferences.theme.style("Checkbox checkedBackground") : userPreferences.theme.style("Checkbox background")
                    border.color: control.hovered ? userPreferences.theme.style("Checkbox hoverBorder") : userPreferences.theme.style("Checkbox border")
                    radius: 3

                    Image {
                        anchors.centerIn: parent
                        width: 24
                        height: 24
                        source: userPreferences.theme.style("Checkbox checkMarkIcon")
                        visible: control.checked
                    }
                }
                spacing: 6
                label: PlainText {
                    text: control.text
                    font.family: RobloxStyle.fontSourceSansProLight
                    font.pixelSize: 16
                    font.weight: userPreferences.theme.style("CommonStyle fontWeight")
					color: userPreferences.theme.style("StartPage TwoStepVerificationPage mainText")
                    renderType: userPreferences.theme.style("CommonStyle textRenderType")
                }
            }
        }

        PlainText {
            id: startOverLink
            anchors.top: trustThisDeviceCheckBox.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.topMargin: 12
            color: userPreferences.theme.style("CommonStyle linkText")
            text: qsTr("Studio.App.TwoStepVerificationPage.StartOver")
            font.pixelSize: 14
            font.family: RobloxStyle.fontSourceSansPro
            renderType: userPreferences.theme.style("CommonStyle textRenderType")
            horizontalAlignment: Text.AlignHCenter
            font.underline: startOverLinkMouseArea.containsMouse ? true : false
            MouseArea {
                id: startOverLinkMouseArea
                anchors.fill: parent
                cursorShape:Qt.PointingHandCursor
                onClicked: {
                    twoStepVerificationField.text = "";
                    trustThisDeviceCheckBox.checked = false;
                    loginManager.twoStepVerificationStartOverClicked()
                }
                hoverEnabled: true
            }
        }

        PlainText {
            id: needHelpContainer
            width: needHelpText.paintedWidth + needHelpLink.paintedWidth
            height: needHelpText.paintedHeight
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 12
            anchors.horizontalCenter: parent.horizontalCenter

            PlainText {
                id: needHelpText
                anchors.top: parent.top
                anchors.left: parent.left
                text: qsTr("Studio.App.TwoStepVerificationPage.NeedHelpContact")
                color: RobloxStyle.colorGray3
                font.pixelSize: 12
                font.family: RobloxStyle.fontSourceSansPro
                renderType: userPreferences.theme.style("CommonStyle textRenderType")
            }

            // Giving the link its own Text element so we can style it without
            // an underline except when it is hovered.
            PlainText {
                id: needHelpLink
                anchors.top: parent.top
                anchors.left: needHelpText.right
                anchors.right: parent.right
                text: qsTr("Studio.App.TwoStepVerificationPage.RobloxSupport")
                color: userPreferences.theme.style("CommonStyle linkText")
                font.pixelSize: 12
                font.family: RobloxStyle.fontSourceSansPro
                renderType: userPreferences.theme.style("CommonStyle textRenderType")
                horizontalAlignment: Text.AlignHCenter
                font.underline: needHelpLinkMouseArea.containsMouse ? true : false
                MouseArea {
                    id: needHelpLinkMouseArea
                    anchors.fill: parent
                    cursorShape: parent.hoveredLink ? Qt.PointingHandCursor : Qt.ArrowCursor
                    onClicked: Qt.openUrlExternally("https://en.help.roblox.com/hc/en-us/articles/212459863")
                    hoverEnabled: true
                }
            }
        }
    }

    DropShadow {
        anchors.fill: twoStepVerificationContainer
        horizontalOffset: 0
        verticalOffset: 1
        radius: 6.0
        samples: 17
        color: "#4D503d30"
        source: twoStepVerificationContainer
    }

    states: [
        State {
            name: "STATE_ERROR"
            PropertyChanges {
                target: errorText
                visible: true
            }
            AnchorChanges {
                target: verifyButton
                anchors.top: errorText.bottom
            }
            PropertyChanges {
                target: verifyButton
                anchors.topMargin: 8
            }
            PropertyChanges {
                target: twoStepVerificationField
                state: "STATE_ERROR"
            }
        },
        State {
            name: "STATE_VERIFYING"
            PropertyChanges {
                target: twoStepVerificationAnimation
                visible: true
                playing: true
            }
            PropertyChanges {
                target: verifyButton
                visible: false
            }
        }
    ]

    Connections {
        target: loginManager
        onInvalidTwoStepVerificationCode: {
            errorText.text = errorMessage;
            twoStepVerificationPage.state = "STATE_ERROR";
        }
        onReceivedTwoStepVerificationErrorMessage: {
            errorText.text = errorMessage;
            twoStepVerificationPage.state = "STATE_ERROR";
        }
    }
}
