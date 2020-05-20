local StyleRoot = script.Parent
local UIBloxRoot = StyleRoot.Parent
local createSignal = require(UIBloxRoot.Utility.createSignal)

local AppStyle = {}

function AppStyle.new(style)
	local self = {}
	self.style = style
	self.signal = createSignal()
	setmetatable(self, {
		__index = AppStyle,
	})
	return self
end

function AppStyle:update(newStyle)
	self.style = newStyle
	self.signal:fire(newStyle)
end

return AppStyle