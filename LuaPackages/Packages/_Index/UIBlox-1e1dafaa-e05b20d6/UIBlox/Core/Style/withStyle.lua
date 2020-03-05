local Style = script.Parent
local Core = Style.Parent
local UIBlox = Core.Parent

--Note: remove along with styleRefactorConfig
local UIBloxConfig = require(UIBlox.UIBloxConfig)
local styleRefactorConfig = UIBloxConfig.styleRefactorConfig

if not styleRefactorConfig then
	return require(UIBlox.Style.withStyle)
end
---

local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)


local StyleConsumer = require(Style.StyleConsumer)

--[[
	This is a utility function that will wrap StyleConsumer.
	`renderCallback` will be invoked with the current style. It should return a Roact element.
]]
return function(renderCallback)
	assert(type(renderCallback) == "function", "Expect renderCallback to be a function.")
	return Roact.createElement(StyleConsumer, { render = renderCallback })
end