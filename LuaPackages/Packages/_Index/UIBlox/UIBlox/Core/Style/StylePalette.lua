local Style = script.Parent
local Core = Style.Parent
local UIBlox = Core.Parent

local createSignal = require(UIBlox.Utility.createSignal)

local StylePalette = {}

function StylePalette.new(style)
	local self = {}
	self.style = style
	self.signal = createSignal()
	setmetatable(self, {
		__index = StylePalette,
	})
	return self
end

function StylePalette:update(newStyle)
	self.style = newStyle
	self.signal:fire(newStyle)
end

return StylePalette