local MenuOption = {}
MenuOption.__index = MenuOption

function MenuOption:new(Paths, obj)
	local self = setmetatable({}, MenuOption)
	self.Obj = obj
	return self
end

function MenuOption:terminate()
	
end

-- mainly to check the object is not a UIListLayout or a divider
function MenuOption:isMenuOption(obj)
	return obj.ClassName == 'Frame' and obj:FindFirstChild('Enabled') and obj:FindFirstChild('Disabled') -- check it has the correct sub objects
end

function MenuOption:initOption(mainText, sideText)
	MenuOption:initSubOption(self.Obj.Enabled, mainText, sideText)
	MenuOption:initSubOptionHighlight(self.Obj.Enabled)
	
	MenuOption:initSubOption(self.Obj.Disabled, mainText, sideText)
	MenuOption:initSubOptionHighlight(self.Obj.Disabled)
end

function MenuOption:initOptionHighlight()
	MenuOption:initSubOptionHighlight(self.Obj.Enabled)
	MenuOption:initSubOptionHighlight(self.Obj.Disabled)
end

function MenuOption:setEnabled(set)
	local shouldEnable = set and nil ~= self.connected 
	self.Obj.Enabled.Visible = shouldEnable
	self.Obj.Disabled.Visible = not shouldEnable
end

function MenuOption:onSelected()
	self.Obj.Enabled.Highlight.Visible = false
	self.Obj.Disabled.Highlight.Visible = false
end

function MenuOption:setMainText(text)
	self.Obj.Enabled.MainText.Text = text
	self.Obj.Disabled.MainText.Text = text
end

local function setSideTextSubOption(self, subOption, sideText)
	subOption.SideText.Visible = sideText and true or false	
	subOption.SideText.Text = sideText and sideText or ""	
end

function MenuOption:setSideText(sideText)
	setSideTextSubOption(self, self.Obj.Enabled, sideText)
	setSideTextSubOption(self, self.Obj.Disabled, sideText)
end

function MenuOption:initSubOption(subOption, mainText, sideText)	
	subOption.MainText.Text = mainText	
	subOption.MainText.Visible = true
	setSideTextSubOption(self, subOption, sideText)
	subOption.Icon.Visible = false	
end

function MenuOption:initSubOptionHighlight(subOption)
	subOption.Highlight.Visible = false	
	subOption.MouseEnter:connect(function()	
		subOption.Highlight.Visible = true
	end)
	
	subOption.MouseLeave:connect(function()
		subOption.Highlight.Visible = false
	end)
end

function MenuOption:setClickCallback(clickFunc)
	if self.connected then
		self.connected:disconnect()
		self.connected = nil
	end
	
	if clickFunc then
		self.connected = self.Obj.Enabled.InputBegan:connect(clickFunc)
	end
end

return MenuOption