local Swizzle = {}
Swizzle.__index = Swizzle

local function closeInternal(self)
	self.widgetToSwizzle.Visible = false
	self.swizzleClosedEvent:fire()
end

local function openInternal(self)
	self.widgetToSwizzle.Visible = true
	self.swizzleOpenEvent:fire()
end
	
function Swizzle:new(checkBox, widgetToSwizzle, Paths)
	local self = setmetatable({}, Swizzle)
	self.widgetToSwizzle = widgetToSwizzle
	widgetToSwizzle.Visible = checkBox:isChecked()
	self.Checkbox = checkBox
	
	self.Connect = checkBox.ToggledEvent:connect(function(on) 
		if on then 
			openInternal(self) 
		else 
			closeInternal(self) 
		end 
	end)
	
	self.swizzleOpenEvent = Paths.UtilityScriptEvent:new()
	self.swizzleClosedEvent = Paths.UtilityScriptEvent:new()

	return self
end

function Swizzle:isOpen()
	return self.widgetToSwizzle.Visible
end

function Swizzle:open()
	self.Checkbox:setChecked(true)
end

function Swizzle:close()
	self.Checkbox:setChecked(false)
end

function Swizzle:terminate()
	self.swizzleClosedEvent = nil
	self.swizzleOpenEvent = nil
	
	if self.Connect then
		self.Connect:disconnect()
		self.Connect = nil
	end
end

return Swizzle