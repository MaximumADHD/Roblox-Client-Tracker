local FastFlags = require(script.Parent.Parent.FastFlags)

local MainMenu = {}
MainMenu.__index = MainMenu

MainMenu.StyleEnum = {DropDown={}, RightClick={}}

local function calculateNextLayoutOrder(self)
	local highest = -1
	for _, child in pairs(self.Menu.MenuOptions:GetChildren()) do
        if not self.Paths.HelperFunctionsWidget:isLayout(child) and child.LayoutOrder > highest then
            highest = child.LayoutOrder
        end
	end
	return highest + 1
end

local function assignHandle(self, option)
	local handle = {} -- will be given out to users
	self.Options[handle] = self.Paths.WidgetMenuOption:new(self.Paths, option)
	self.WidgetsToOptions[option.Name] = handle
	return handle
end

local function initOptions(self)
	self.Options = {}
	self.WidgetsToOptions = {}
	for _, child in pairs(self.Menu.MenuOptions:GetChildren()) do
        if self.Paths.WidgetMenuOption:isMenuOption(child) then
            local menuOption = self.Options[assignHandle(self, child)]
			menuOption:initOptionHighlight()
			menuOption:setEnabled(false)
        end
	end
end

local function initMenuHeight(self)
	local height = self.Menu.Size.Y.Offset -- start from the initial size to creat a small buffer at the bottom
	for _, child in pairs(self.Menu.MenuOptions:GetChildren()) do
        if not self.Paths.HelperFunctionsWidget:isLayout(child) then
			height = height + child.Size.Y.Offset
        end
	end
	self.Menu.Size = UDim2.new(0, self.Menu.Size.X.Offset, 0, height)	
end

local function onNewEntryAdded(self, newOption)
	local newHeight = self.Menu.Size.Y.Offset + newOption.Size.Y.Offset
	self.Menu.Size = UDim2.new(0, self.Menu.Size.X.Offset, 0, newHeight)
end

local function killMenu(self)
	if self.Menu.Visible then
		self:turnOn(false)
		self.onCloseEvent:fire()
	end
end

local function create(Paths, menu, parent)
	local self = setmetatable({}, MainMenu)
	
	self.Paths = Paths
	self.onCloseEvent = Paths.UtilityScriptEvent:new()
	self.Connections = self.Paths.UtilityScriptConnections:new(Paths)
	self.Menu = menu and menu or Paths.GUIClonableMenu:clone()
	self.Menu.Parent = parent and parent or self.Menu.Parent 
	self.Menu.Visible = false
	
	self.KillScreenUtil = Paths.WidgetKillScreen:new(Paths, self.Menu.KillScreen)
	self.Connections:add(self.KillScreenUtil.OnKillEvent:connect(function() killMenu(self) end))
	
	initOptions(self)	
	self.NextLayoutOrder = calculateNextLayoutOrder(self)
	return self
end

function MainMenu:new(Paths, parent, style)
	local self = create(Paths, nil, parent)
	initMenuHeight(self)
	self.Menu.TopShadow.Visible = style == MainMenu.StyleEnum.RightClick
	return self
end

function MainMenu:new2(Paths, menu)
	return create(Paths, menu, nil)
end

function MainMenu:terminate()
	self.Connections:terminate()
	self.Connections = nil
	
	self.onCloseEvent = nil
	self.KillScreenUtil:terminate()
	self.KillScreenUtil = nil
		
	for _, option in pairs(self.Options) do
		option:terminate()
	end
end

function MainMenu:isOpen()
	return self.Menu.Visible
end

function MainMenu:turnOn(on)
	self.Menu.Visible = on
	self.KillScreenUtil:turnOn(on)
end

function MainMenu:getSize()
	return self.Menu.Size.X.Offset, self.Menu.Size.Y.Offset
end

local function getNextLayoutOrder(self)	
	local temp = self.NextLayoutOrder
	self.NextLayoutOrder = self.NextLayoutOrder + 1	
	return temp
end

function MainMenu:setWidth(width)
	self.Menu.Size = UDim2.new(0, width, 0, self.Menu.Size.Y.Offset)
end

local function addOption(self, mainText, clickFunc, sideText)
	local newOption = self.Paths.GUIClonableMenuOption:clone()
	newOption.Parent = self.Menu.MenuOptions
	
	newOption.LayoutOrder = getNextLayoutOrder(self)

	local handle = assignHandle(self, newOption)
	self.Options[handle]:initOption(mainText, sideText)
	self:setClickCallback(handle, clickFunc)
	self.Options[handle]:setEnabled(true)
		
	onNewEntryAdded(self, newOption)
	return handle
end

function MainMenu:addSelectable(mainText, clickFunc, sideText)
	return addOption(self, mainText, clickFunc, sideText)
end

function MainMenu:addToggle(mainText, clickFunc, sideText, initialState)
	local handle = addOption(self, mainText, clickFunc, sideText)
	local newOption = self.Options[handle]
	newOption.Obj.Enabled.Icon.Visible = initialState	
	return handle
end

function MainMenu:setToggle(toggleHandle, set)
	self.Options[toggleHandle].Obj.Enabled.Icon.Visible = set
end

function MainMenu:setMainText(handle, text)
	self.Options[handle]:setMainText(text)
end

function MainMenu:setSideText(handle, sideText)
	self.Options[handle]:setSideText(sideText)
end

function MainMenu:setEnabled(handle, set)
	self.Options[handle]:setEnabled(set)
end

function MainMenu:setClickCallback(handle, clickFunc)
	if clickFunc then
		self.Options[handle]:setClickCallback(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				clickFunc(handle)
				self.Options[handle]:onSelected()
				killMenu(self)
			end
		end)
	else
		self.Options[handle]:setClickCallback()
	end
end

function MainMenu:getOption(name)
	return self.WidgetsToOptions[name]
end

if FastFlags:isIKModeFlagOn() then
	function MainMenu:getOptionWidget(handle)
		return self.Options[handle].Obj
	end
end

function MainMenu:addDivider()
	local newDivider = self.Paths.GUIClonableMenuDivider:clone()
	newDivider.Parent = self.Menu.MenuOptions
	newDivider.LayoutOrder = getNextLayoutOrder(self)
	onNewEntryAdded(self, newDivider)
end

return MainMenu