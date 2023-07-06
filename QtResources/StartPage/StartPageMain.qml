import QtQuick 2.6
import QtQuick.Controls 1.5
import ".."

// This view switches between the login page, two-step verifaction page and
// the start page.

StackView {
    id: rootWindow
    width: 1366; height: 768

    // Helper to replace the curret view in the StackView
    function replaceCurrentView(newView) {
        rootWindow.push({item: newView, replace: true, properties: {focus: true}});
    }

    property var loginPage: StartPageLogin {}
    property var startPage: null // Initialize on-demand

    initialItem: loginPage

    Connections {
        target: startPageQmlController
        onStartPageModelsInitialized: {
            // The models are initialized after a successfull login. We don't want
            // to initialize the QML before the models are ready, otherwise some
            // of the properties will not be defined yet.
            var url = "qrc:/StartPage/StartPage.qml";

            if (startPage === null) {
                startPage = Qt.createComponent(url);
            }

            // The default is Component.PreferSynchronous so we should only get
            // something different from Ready if there is an error in the QML.
            if (startPage.status !== Component.Ready) {
                console.error("Could not initialize " + url + " (" + startPage.errorString() + ")");
                return;
            }
        }
        onShowStartPageRequested: {
            if (startPage.status !== Component.Ready) {
                console.error("Cannot show start page. It isn't initialized.");
                return;
            }

            replaceCurrentView(startPage);
        }
        onShowLoginPageRequested: {
            replaceCurrentView(loginPage);
        }
    }

    // This implements a custom transition between the
    // pages. It is set to be instantanious for now.
    delegate: StackViewDelegate {
        function transitionFinished(properties) {
            // Set focus so that key events can be handled correctly
            properties.enterItem.forceActiveFocus()
        }

        pushTransition: StackViewTransition {
            PropertyAnimation {
                target: enterItem
                property: "opacity"
                from: 0
                to: 1
                duration: 1
            }
            PropertyAnimation {
                target: exitItem
                property: "opacity"
                from: 1
                to: 0
                duration: 1
            }
        }
    }
}
