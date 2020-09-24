local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)

local WatermarkComponent = require(script.WatermarkComponent)

local Watermark = {}
Watermark.__index = Watermark

function Watermark.new()
	local self = setmetatable({}, Watermark)

	self.root = Roact.createElement(WatermarkComponent)

	self.element = Roact.mount(self.root, CoreGui, "Watermark")

	return self
end

return Watermark.new()
