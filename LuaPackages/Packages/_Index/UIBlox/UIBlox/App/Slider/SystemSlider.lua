local Slider = script.Parent
local App = Slider.Parent
local UIBlox = App.Parent
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local makeAppOneKnobSlider = require(script.Parent.makeAppOneKnobSlider)

return if UIBloxConfig.useFoundationColors
	then makeAppOneKnobSlider("SystemPrimaryContent")
	else makeAppOneKnobSlider("SystemPrimaryDefault")
