local KeyLabelRoot = script.Parent
local Menu = KeyLabelRoot.Parent
local App = Menu.Parent

local Images = require(App.ImageSet.Images)

export type Image = Images.ImageSetImage

export type KeyLabelContent =
	{ inputType: "keyboard", content: string | Image }
	| { inputType: "gamepad", content: string | Image }

type Axis = "horizontal" | "vertical" | "directional"
export type FlexibleKeyCode = Enum.KeyCode | { key: Enum.KeyCode, axis: Axis }

return {}
