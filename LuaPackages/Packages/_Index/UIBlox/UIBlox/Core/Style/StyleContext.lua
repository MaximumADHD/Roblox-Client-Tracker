local Style = script.Parent
local UIBlox = Style.Parent.Parent

local StyleTypes = require(UIBlox.App.Style.StyleTypes)
local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)

type AppStyle = StyleTypes.AppStyle

return Roact.createContext(nil :: { style: AppStyle, useFoundationButton: boolean? }?)
