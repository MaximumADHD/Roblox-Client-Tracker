/**
    A simple Text component that use PlainText as default text format.
    We should always use this instead of 'Text' to avoid potential exploits
*/
import QtQuick 2.6

Text {
    textFormat: Text.PlainText
}
