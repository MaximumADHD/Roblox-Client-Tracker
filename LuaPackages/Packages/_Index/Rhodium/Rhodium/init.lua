--!strict
local Element = require(script.Element)
local VirtualInput = require(script.VirtualInput)
local XPath = require(script.XPath)
local RemoteRhodium = require(script.RemoteRhodium)
local FindBy = require(script.FindBy)

local Rhodium = {
	Element = Element,
	VirtualInput = VirtualInput,
	XPath = XPath,
	RemoteRhodium = RemoteRhodium,
	FindBy = FindBy,
}

export type Element = Element.Element
export type XPath = XPath.XPath

return Rhodium
