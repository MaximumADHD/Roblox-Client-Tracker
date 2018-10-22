local KillScreen = {}
KillScreen.__index = KillScreen

function KillScreen:new(Paths, screen, on)
	local self = setmetatable({}, KillScreen)
	self.Paths = Paths
	self.OnKillEvent = self.Paths.UtilityScriptEvent:new(Paths)
	self.Connections = self.Paths.UtilityScriptConnections:new(Paths)
	self.Screen = screen
	
	if screen then
		self:turnOn(on)
		
		self.Connections:add(screen.InputBegan:connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then
				self.OnKillEvent:fire()
			end 
		end))
	end	
	
	return self
end

function KillScreen:turnOn(on)
	self.Screen.Visible = on
	if self.Screen and self.Paths.GUIScriptToolTip:isInitialized() then	
		if on then
			self.Paths.GUIScriptToolTip:addBlocker(self.Screen)			
		else
			self.Paths.GUIScriptToolTip:remove(self.Screen)
		end
	end
end

function KillScreen:terminate()
	if self.Screen and self.Paths.GUIScriptToolTip:isInitialized() then
		self.Paths.GUIScriptToolTip:remove(self.Screen)
	end
	self.Connections:terminate()
	self.Connections = nil
	self.OnKillEvent = nil
	self.Paths = nil
end

return KillScreen