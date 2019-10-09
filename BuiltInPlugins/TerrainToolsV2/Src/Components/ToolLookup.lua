local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Tools = script.Parent.Tools
local Add = require(Tools.Add)
local Erode = require(Tools.Erode)
local Fill = require(Tools.Fill)
local Generate = require(Tools.Generate)
local Clear = require(Tools.Clear)
local Grow = require(Tools.Grow)
local Import = require(Tools.Import)
local Paint = require(Tools.Paint)
local Region = require(Tools.Region)
local Smooth = require(Tools.Smooth)
local Subtract = require(Tools.Subtract)
local Flatten = require(Tools.Flatten)

local ToolLookup = {
	Add = Roact.createElement(Add),
	Erode = Roact.createElement(Erode),
	Fill = Roact.createElement(Fill),
	Generate = Roact.createElement(Generate),
	Clear = Roact.createElement(Clear),
	Grow = Roact.createElement(Grow),
	Import = Roact.createElement(Import),
	Paint = Roact.createElement(Paint),
	Select = Roact.createElement(Region),
	Move = Roact.createElement(Region),
	Resize = Roact.createElement(Region),
	Rotate = Roact.createElement(Region),
	Smooth = Roact.createElement(Smooth),
	Subtract = Roact.createElement(Subtract),
	Flatten = Roact.createElement(Flatten),
	Paint = Roact.createElement(Paint),

	None = Roact.createElement("Frame"),
}

return ToolLookup