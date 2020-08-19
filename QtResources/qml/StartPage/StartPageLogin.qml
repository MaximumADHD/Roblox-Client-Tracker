import QtQuick 2.6
import QtGraphicalEffects 1.0
import ".."

// This view displays the login widgets, i.e. banner, login fields and login button.
Rectangle {
    id: loginPage
    width: (typeof rootWindow != 'undefined') ? rootWindow.width : 1024
    height: (typeof rootWindow != 'undefined') ? rootWindow.height : 768
    color: userPreferences.theme.style("StartPage LoginPage background")

    readonly property string kStringLoggingIn: qsTr("Studio.App.StartPageLogin.LoggingInElps");
    readonly property string kStringLoggingOut: qsTr("Studio.App.StartPageLogin.LoggingOutElps");
    readonly property string kStringLoggedOut: qsTr("Studio.App.LoginManager.LoggedOut");
    readonly property string kStringOpeningPlace: qsTr("Studio.App.StartPageLogin.OpeningPlaceElps");

    readonly property string kDefaultState: ""

    property var dropShadowOpacity: 1.0

    function clearLoginField() {
        usernameField.text = "";
    }

    function clearPasswordField() {
        passwordField.text = "";
    }

    function clearErrorMessages() {
        usernameField.errorText = "";
        passwordField.errorText = "";
    }

    function resetLoginData() {
        clearLoginField();
        clearPasswordField();
        clearErrorMessages();
        loginPage.state = kDefaultState;
    }

    function performLogin(payload) {
        clearErrorMessages();
        loginPage.state = "STATE_LOGGING_IN"
        loginManager.onLoginClicked(usernameField.text, passwordField.text, payload);
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

    // Group together login widgets
    Item {
        id: loginFormGroup
        width: 320
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: bannerImage.bottom
        anchors.bottom: parent.bottom
        anchors.topMargin: 36

        LoginField {
            id: usernameField
            placeholderText: qsTr("Studio.App.StartPageLogin.Username")
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            maximumLength: 20
        }

        LoginField {
            id: passwordField
            placeholderText: qsTr("Studio.App.StartPageLogin.Password")
            anchors.top: usernameField.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.topMargin: 18
            echoMode: TextInput.Password
            maximumLength: loginManager.getMaximumPasswordLength()
        }

        PlainText {
             // Shows what's happening, e.g. logging in, logging out, or opening a place.
            id: statusText
            text: kStringLoggingIn
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            visible: false
            color: userPreferences.theme.style("StartPage LoginPage statusText")
            font.pixelSize: 18
            font.family: RobloxStyle.fontSourceSansProLight
            renderType: userPreferences.theme.style("CommonStyle textRenderType")
            font.weight: userPreferences.theme.style("CommonStyle fontWeight")
        }

        RobloxButton {
            id: loginButton
            text: qsTr("Studio.App.StartPageLogin.LogIn")
            isDefault: true
            anchors.top: passwordField.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.topMargin: 18
            onClicked: performLogin()
        }

        DropShadow {
            // TODO: Figure out exact numbers
            id: loginButtonDropShadow
            anchors.fill: loginButton
            horizontalOffset: 0
            verticalOffset: 3
            radius: 8.0
            samples: 17
            color: "#50000000"
            source: loginButton
            opacity: 0.0
            z: -1
        }

        NumberAnimation {
            id: dropShadowFadeInAnimation
            target: loginButtonDropShadow
            property: "opacity"
            from: 0.0
            to: dropShadowOpacity
            duration: 200
        }

        NumberAnimation {
            id: dropShadowFadeOutAnimation
            target: loginButtonDropShadow
            property: "opacity"
            from: dropShadowOpacity
            to: 0.0
            duration: 200
        }

        ColorAnimation {
            id: loginHoverColorFadeIn
            target: loginButton
            property: "color"
            from: userPreferences.theme.style("StartPage LoginPage loginButton")
            to: userPreferences.theme.style("StartPage LoginPage loginButtonHover")
            duration: 200
        }

        ColorAnimation {
            id: loginHoverColorFadeOut
            target: loginButton
            property: "color"
            from: userPreferences.theme.style("StartPage LoginPage loginButtonHover")
            to: userPreferences.theme.style("StartPage LoginPage loginButton")
            duration: 200
        }

		LoadingAnimation {
            id: statusAnimation
            anchors.top: loginButton.top
		}

        TextWithLink {
            id: forgotPasswordLabel
            visible: !loginManager.hideStartPageUrlLinks()
            anchors.top: loginButton.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.topMargin: 12
            readonly property url link: loginManager.getForgotPasswordUrl()
            text: "<a style='text-decoration: none; color:" + (userPreferences.theme.style("CommonStyle linkText"))
                       + "' href='" + link + "'>" + qsTr("Studio.App.StartPageLogin.ForgotPassword") + "</a>"
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            onLinkActivated:  {
                loginManager.onForgotPasswordClicked();
                Qt.openUrlExternally(link);
            }
            objectName: "forgotPassword"
        }

        // Draw horizontal line
        Rectangle {
            id: passwordSeparatorLine
            anchors.top: forgotPasswordLabel.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.topMargin: 18
            height: 1
            color: userPreferences.theme.style("StartPage LoginPage separator")
        }

        TextWithLink {
            id: notAMemberYetTextAndlink
            visible: !loginManager.hideStartPageUrlLinks()
            anchors.top: passwordSeparatorLine.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.topMargin: 12
            readonly property url link: loginManager.getSignUpUrl()
            text: qsTr("Studio.App.StartPageLogin.NotAMemberYet") + " <a style='text-decoration: none; color:" + (userPreferences.theme.style("CommonStyle linkText"))
                       + "' href='" + link +"'>" + qsTr("Studio.App.StartPageLogin.SignUp") + "</a>"
            color: RobloxStyle.colorGray2
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            onLinkActivated: {
                loginManager.onSignUpClicked();
                Qt.openUrlExternally(link);
            }
            objectName: "signUp"
        }

        TextWithLink {
            id: privacyPolicyLink
            visible: loginManager.showPrivacyPolicyLink()
            anchors.top: notAMemberYetTextAndlink.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.topMargin: 12
            readonly property url link: loginManager.getPrivacyPolicyUrl()
            text: " <a style='text-decoration: none; color:" + (userPreferences.theme.style("CommonStyle linkText"))
                       + "' href='" + link +"'>" + qsTr("Studio.App.StartPageLogin.PrivacyPolicy") + "</a>"
            color: RobloxStyle.colorGray2
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            onLinkActivated: {
                Qt.openUrlExternally(link);
            }
            objectName: "privacyPolicy"
        }

        PlainText {
            id: versionText
            anchors.top: privacyPolicyLink.bottom
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 24
            anchors.bottomMargin: 15
            height: paintedHeight
            text: loginManager.getVersionString()
            color: userPreferences.theme.style("StartPage LoginPage versionText")
            font.pixelSize: 12
            renderType: userPreferences.theme.style("CommonStyle textRenderType")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignBottom
        }
    }

    state: "STATE_INITIAL_AUTHENTICATION"
    states: [
        State {
            name: "" // The default state
            StateChangeScript {
                name: "forceFocus"
                script: usernameField.forceActiveFocus()
            }
        },
        State {
            name: "STATE_CAPTCHA"
            AnchorChanges {
                target: loginButton
                anchors.top: passwordField.bottom
            }
            PropertyChanges {
                target: statusAnimation
                visible: true
                playing: true
            }
            PropertyChanges {
                target: loginButton
                visible: false
            }
        },
        State {
            name: "STATE_EMPTY_USERNAME_AND_PASSWORD_ERROR"
            PropertyChanges {
                target: usernameField
                errorHighlight: true
            }
            PropertyChanges {
                target: passwordField
                errorHighlight: true
            }
			StateChangeScript {
                name: "forceFocus"
                script: usernameField.forceActiveFocus()
            }
        },
        State {
            name: "STATE_EMPTY_USERNAME_ERROR"
            PropertyChanges {
                target: usernameField
                errorHighlight: true
            }
            StateChangeScript {
                name: "forceFocus"
                script: usernameField.forceActiveFocus()
            }
        },
        State {
            name: "STATE_EMPTY_PASSWORD_ERROR"
            PropertyChanges {
                target: passwordField
                errorHighlight: true
            }
            StateChangeScript {
                name: "forceFocus"
                script: passwordField.forceActiveFocus()
            }
        },
        State {
            name: "STATE_INCORRECT_USERNAME_OR_PASSWORD"
            PropertyChanges {
                target: usernameField
                errorHighlight: true
            }
            PropertyChanges {
                target: passwordField
                errorHighlight: true
            }
            StateChangeScript {
                name: "forceFocus"
                script: passwordField.forceActiveFocus()
            }
        },
        State {
            name: "STATE_OTHER_LOGIN_ERROR"
        },
        State {
            name: "STATE_LOGGING_IN"
            PropertyChanges {
                target: statusAnimation
                visible: true
                playing: true
            }
            PropertyChanges {
                target: loginButton
                visible: false
            }
        },
        State {
            name: "STATE_LOGGING_OUT"
            PropertyChanges {
                target: statusText
                visible: true
                text: kStringLoggingOut
            }
            // Re-use the logging in animation for logging out
            AnchorChanges {
                target: statusAnimation
                anchors.top: statusText.bottom
            }
            PropertyChanges {
                target: statusAnimation
                visible: true
                playing: true
                anchors.topMargin: 18
            }
            PropertyChanges {
                target: usernameField
                visible: false
            }
            PropertyChanges {
                target: passwordField
                visible: false
            }
            PropertyChanges {
                target: loginButton
                visible: false
            }
            PropertyChanges {
                target: forgotPasswordLabel
                visible: false
            }
            PropertyChanges {
                target: passwordSeparatorLine
                visible: false
            }
            PropertyChanges {
                target: notAMemberYetTextAndlink
                visible: false
            }
            PropertyChanges {
                target: privacyPolicyLink
                visible: false
            }
        },
        State {
            // We automatically try to authenticate you in the background when
            // you open Studio. We should not show the login fields until it is
            // done authenticating.
            name: "STATE_INITIAL_AUTHENTICATION"
            PropertyChanges {
                target: statusText
                visible: true
            }
            PropertyChanges {
                target: statusText
                text: kStringLoggingIn
            }
            AnchorChanges {
                target: statusAnimation
                anchors.top: statusText.bottom
            }
            PropertyChanges {
                target: statusAnimation
                visible: true
                playing: true
                anchors.topMargin: 18
            }
            PropertyChanges {
                target: usernameField
                visible: false
            }
            PropertyChanges {
                target: passwordField
                visible: false
            }
            PropertyChanges {
                target: loginButton
                visible: false
            }
            PropertyChanges {
                target: forgotPasswordLabel
                visible: false
            }
            PropertyChanges {
                target: passwordSeparatorLine
                visible: false
            }
            PropertyChanges {
                target: notAMemberYetTextAndlink
                visible: false
            }
            PropertyChanges {
                target: privacyPolicyLink
                visible: false
            }
        },
        State {
            // We automatically try to authenticate you in the background when
            // you open Studio. We should not show the login fields until it is
            // done authenticating.
            name: "STATE_OPENING_PLACE_AFTER_LOGIN"
            PropertyChanges {
                target: statusText
                visible: true
            }
            PropertyChanges {
                target: statusText
                text: kStringOpeningPlace
            }
            AnchorChanges {
                target: statusAnimation
                anchors.top: statusText.bottom
            }
            PropertyChanges {
                target: statusAnimation
                visible: true
                playing: true
                anchors.topMargin: 18
            }
            PropertyChanges {
                target: usernameField
                visible: false
            }
            PropertyChanges {
                target: passwordField
                visible: false
            }
            PropertyChanges {
                target: loginButton
                visible: false
            }
            PropertyChanges {
                target: forgotPasswordLabel
                visible: false
            }
            PropertyChanges {
                target: passwordSeparatorLine
                visible: false
            }
            PropertyChanges {
                target: notAMemberYetTextAndlink
                visible: false
            }
            PropertyChanges {
                target: privacyPolicyLink
                visible: false
            }
        },
        State {
            name: "STATE_LOGGED_OUT"
            PropertyChanges {
                target: statusText
                text: kStringLoggedOut
                visible: true
            }
            PropertyChanges {
                target: usernameField
                visible: false
            }
            PropertyChanges {
                target: passwordField
                visible: false
            }
            PropertyChanges {
                target: loginButton
                visible: false
            }
            PropertyChanges {
                target: forgotPasswordLabel
                visible: false
            }
            PropertyChanges {
                target: passwordSeparatorLine
                visible: false
            }
            PropertyChanges {
                target: notAMemberYetTextAndlink
                visible: false
            }
            PropertyChanges {
                target: privacyPolicyLink
                visible: false
            }
        },
        State {
            name: "STATE_LOGGING_IN_USING_EXTERNAL_DIALOG"
            PropertyChanges {
                target: statusText
                text: kStringLoggingIn
                visible: true
            }
            AnchorChanges {
                target: statusAnimation
                anchors.top: statusText.bottom
            }
            PropertyChanges {
                target: statusAnimation
                visible: true
                playing: true
                anchors.topMargin: 18
            }
            PropertyChanges {
                target: usernameField
                visible: false
            }
            PropertyChanges {
                target: passwordField
                visible: false
            }
            PropertyChanges {
                target: loginButton
                visible: false
            }
            PropertyChanges {
                target: forgotPasswordLabel
                visible: false
            }
            PropertyChanges {
                target: passwordSeparatorLine
                visible: false
            }
            PropertyChanges {
                target: notAMemberYetTextAndlink
                visible: false
            }
            PropertyChanges {
                target: privacyPolicyLink
                visible: false
            }
        }
    ]

    Connections {
        target: loginManager
        onCaptchaNeeded: {
            loginPage.state = "STATE_CAPTCHA";
            loginManager.promptForCaptcha(usernameField.text);
        }
		onCaptchaSucceeded: {
			performLogin(payload);
		}
		onCaptchaError: {
			passwordField.errorText = errorMessage;
			loginPage.state = "STATE_OTHER_LOGIN_ERROR";
		}
        onEmptyUsernameAndPasswordError: {
            passwordField.errorText = errorMessage;
            loginPage.state = "STATE_EMPTY_USERNAME_AND_PASSWORD_ERROR";
        }
        onEmptyUsernameError: {
            usernameField.errorText = errorMessage;
            passwordField.errorText = "";
            loginPage.state = "STATE_EMPTY_USERNAME_ERROR";
        }
        onEmptyPasswordError: {
            usernameField.errorText = "";
            passwordField.errorText = errorMessage;
            loginPage.state = "STATE_EMPTY_PASSWORD_ERROR";
        }
        onIncorrectUsernameOrPassword: {
            usernameField.errorText = "";
            passwordField.errorText = qsTr("Studio.App.Login.IncorrectUsernamePassword");
            loginPage.state = "STATE_INCORRECT_USERNAME_OR_PASSWORD";
            clearPasswordField();
        }
        onLoggedOut: {
            // Don't clear fields if you are already logged out and you get
            // another logged out signal. This is a work around for the
            // AuthenticationHelper sometimes emitting authenticationChanged
            // twice. Fixing it requires us to re-write how it works so it
            // doesn't do that. We plan to overhaul it once we've upgraded
            // to Qt 5.12 which changes how the network layer and web views
            // interact.
            if (loginManager.isExternalLoginEnabled()) {
                loginPage.state = "STATE_LOGGED_OUT";
            }
            else if (loginPage.state != kDefaultState) {
                // Reset state and fields
                resetLoginData();
            }
        }
        onLoggingOut: {
            loginPage.state = "STATE_LOGGING_OUT";
        }
        onOpeningPlaceAfterLogin: {
            loginPage.state = "STATE_OPENING_PLACE_AFTER_LOGIN"
        }
        onReceivedErrorMessage: {
            if (loginManager.isExternalLoginEnabled()) {
                loginPage.state = "STATE_LOGGED_OUT";
            }
            else {
                passwordField.errorText = errorMessage;
                loginPage.state = "STATE_OTHER_LOGIN_ERROR";
            }
        }
        onTwoStepVerificationStartingOver: {
            loginPage.state = kDefaultState;
        }
        onLoggingInUsingExternalDialog: {
            if (loginManager.isExternalLoginEnabled()) {
                loginPage.state = "STATE_LOGGING_IN_USING_EXTERNAL_DIALOG"
            }
        }
    }
}
