pragma Singleton
import QtQuick 2.6

Item {
    readonly property string colorBluePrimary: "#ff00a2ff"
    readonly property string colorBlueDisabled: "#b7d2ff"
    readonly property string colorBlueHover: "#ff33b4ff"
    readonly property string colorBlueSidebar: "#0074bd";
    readonly property string colorBlueSidebarHover: "#ff33b4ff"
    readonly property string colorBlueSidebarSelected: "#07588c";
    readonly property string colorGreenPrimary: "#00b952"
    readonly property string colorGreenDisabled: "#a3e2bd"
    readonly property string colorGreenHover: "#3fc679"
    readonly property string colorGray1: "#191919"
    readonly property string colorGray2: "#757575"
    readonly property string colorGray3: "#b8b8b8"
    readonly property string colorGray4: "#e3e3e3"
    readonly property string colorGray5: "#f2f2f2"
    readonly property string colorGray6: "#f5f5f5"
    readonly property string colorRedError: "#d86868"
    readonly property string colorDropShadow: "#4d191919"
    readonly property string colorYellowToolTip: "#fff6b3"
    readonly property string colorModalBackground: "#ffffff"

    readonly property color ribbonButtonBackground: "#f3f3f3"
    readonly property color ribbonButtonBackgroundHovered: "#e4eefe"
    readonly property color ribbonButtonBackgroundClicked: "#dbdbdb"

    // Some styles are slightly different on windows and macOS
    // Use this function to pick the correct one
    // The default (e.g. flag off or unknown platform) is windows
    function chooseWindowsOrMacOS(windows, macOS) {
        if ((typeof loginManager != "undefined")) {
           if (Qt.platform.os === "osx") {
               return macOS;
           }
        }
        return windows;
    }

    // Some colours appear darker on OSX (such as the tab titles on the start page header bar)
    // This function corrects that
    function lighterColorOnMacOS(colour) {
        return chooseWindowsOrMacOS(colour, Qt.lighter(colour));
    }

    // Returns a resource name to use depending on if we're using Qt resources or a file path
    // Caution: because this just returns a string, the resource needs to be relative to the caller
    // i.e. In this file, we can use just "StudioFonts/etc"
    // But in the StartPage folder, you need to use "../images/etc"
    // If we are using Qt resources then that initial ../ gets removed
    // But if we're not, this function doesn't know whether to add it or not so the caller needs to know
    function getResource(resourceName) {
        var isUsingResource = (typeof useResource != "undefined");
        var prefix = isUsingResource ? "qrc:/" : "../";

        if (isUsingResource) {
            // Remove ../ from the start of the string
            while ((resourceName.length >= 3) && (resourceName.substr(0, 3) === "../")) {
                resourceName = resourceName.substring(3);
            }

            // If we're loading a qml file using Qt resources, then append the qml folder to the resource name
            var qmlSuffix = "qml";
            if ((resourceName.length >= qmlSuffix.length) && (resourceName.substring(resourceName.length - qmlSuffix.length) === qmlSuffix)) {
                resourceName = "qml/" + resourceName;
            }
        } else {
            if (resourceName[0] === "/") {
                resourceName = resourceName.substring(1);
            }
        }

        return prefix + resourceName;
    }
}
