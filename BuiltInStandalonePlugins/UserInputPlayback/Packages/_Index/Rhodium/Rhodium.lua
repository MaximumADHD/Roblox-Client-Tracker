local Element = require(script.Element)
local VirtualInput = require(script.VirtualInput)
local XPath = require(script.XPath)
local RemoteRhodium = require(script.RemoteRhodium)

local Rhodium = {
	Element = Element,
	VirtualInput = VirtualInput,
	XPath = XPath,
	RemoteRhodium = RemoteRhodium
}

return Rhodium