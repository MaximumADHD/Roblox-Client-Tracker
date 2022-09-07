--!nonstrict
local UserInputService = game:GetService("UserInputService")

local VirtualKeyboardMonitor = {}

function VirtualKeyboardMonitor:getInstance()
	if not self._initialized then
		self:initialize()
		self._initialized = true
	end
	return self
end

function VirtualKeyboardMonitor:initialize()
	self._isKeyboardJustOff = false
	UserInputService:GetPropertyChangedSignal("OnScreenKeyboardVisible"):Connect(function()
		if not UserInputService.OnScreenKeyboardVisible then
			self._isKeyboardJustOff = true
		end
	end)
	UserInputService.InputEnded:Connect(function(input)
		if self._isKeyboardJustOff then
			self._isKeyboardJustOff = false
		end
	end)
	-- Don't need to disconnect because this is a singleton.
end

--[[
	in the state before first "InputEnded" after "OnScreenKeyboardVisible == false"
]]--
function VirtualKeyboardMonitor:isKeyboardJustOff()
	return self._isKeyboardJustOff
end

return {
	getInstance = function()
		return VirtualKeyboardMonitor:getInstance()
	end,
}
