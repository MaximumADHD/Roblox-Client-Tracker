local fastFlags = require(script.Parent.Parent.FastFlags)

-- singleton

local Layout = {}

Layout.RowHeight = 26
Layout.PlayerChoiceHorizontalOffset = 400
Layout.TextLabelIdentifierWidth = 100
Layout.InputWidgetWidth = 200

Layout.VirticalPadding = fastFlags.isMorphingPanelWidgetsStandardizationOn() and UDim.new(0, 32) or nil

return Layout