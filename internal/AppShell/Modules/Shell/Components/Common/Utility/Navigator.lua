--[[
	Allows the selector to navigate between different pages/levels.

	How to use:
		The Navigator should be created at the root of the pages/levels.

		- Call EnterRootSection(rootKey) to set the root page of the Navigator.

		- Call Set(pageKey, defaultGuiObj) to set the default selection object for the given pageKey.

		- Call Destruct() when done using the Navigator to clean up the event connections.

	To Enter a page:
		1. Call SetNextPage(nextPageKey) to set the destination for the next page/level.
		2. Call EnterSection() to enter the next selection page/level.
			Set(pageKey, defaultGuiObj) needs to be called to set the default guiobject selection.
				Otherwise, the selection will fail and this function will return false.
			This function can be called anywhere to enter the next level.
				Eg. - Call by a GuiObject on selection.
					- Call by an event.
					- Call by an action with Rodux.

	To Exit a page and return to the previous:
		1. Call ExitSection() to return to the previous page/level.
			This function can be called from anywhere.
			It will return false if it is unable to select the next that was set
]]
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Utility = require(Modules.Shell.Utility)
local ContextActionService = game:GetService('ContextActionService')
local Nav = {}
Nav.__index = Nav

local function AddEnterButtonHelper(self,keycode)
	local enterActionName = "EnterSection"..tostring(keycode)
	self._actions.EnterSection[keycode] = enterActionName
	ContextActionService:BindCoreAction(enterActionName,
	function(actionName, inputState, inputObject)
		return self:_enterAction(actionName, inputState, inputObject)
	end
	,false,keycode)
end

local function AddExitButtonHelper(self,keycode)
	local exitActionName = "ExitSection"..tostring(keycode)
	self._actions.ExitSection[keycode] = exitActionName
	ContextActionService:BindCoreAction(exitActionName,
	function(actionName, inputState, inputObject)
		return self:_exitAction(actionName, inputState, inputObject)
	end
	,false,keycode)
end

-- By default, the ButtonB binds to back
-- Needs to be called before this object can be used.
function Nav.new()
    local self = {}
	self._levels = {}
	self._guiobjs = {}
	self._nextPageKey = ""

	self._actions = {}
	self._seenPressed = {}

	self._actions.EnterSection = {}
	self._actions.ExitSection = {}

	AddExitButtonHelper(self, Enum.KeyCode.ButtonB)
	setmetatable(self, Nav)
	return self
end

--[[
Sets a custom key press to enter the next page.
	args:
		keycode : Enum.KeyCode - The key code of the button.
]]
function Nav:AddEnterButton(keycode)
	AddEnterButtonHelper(self,keycode)
end

--[[
Sets a custom key press to exit to the previous page.
	args:
		keycode : Enum.KeyCode - The key code of the button.
]]
function Nav:AddExitButton(keycode)
	AddExitButtonHelper(self,keycode)
end

--[[
Sets and enters the root page. Must be called before the navigator can be used.
	args:
		rootKey : Variant - The key for the page.
]]
function Nav:EnterRootSection(rootKey)
	if self._guiobjs[rootKey] == nil then
		return false
	end
	self._levels = {}
	--Stack push to the first element
	table.insert(self._levels,rootKey)
	Utility.SetSelectedCoreObject(self._guiobjs[rootKey])
	return true
end

--[[
Enters the next page
	return:
		True : if it can enter the next page.
		False: otherwise.
]]
function Nav:EnterSection()
	local nextPageKey = self._nextPageKey
	if nextPageKey == nil or self._guiobjs[nextPageKey] == nil then
		return false
	end
	--Stack push
	table.insert(self._levels,nextPageKey)
	Utility.SetSelectedCoreObject(self._guiobjs[nextPageKey])
	self._nextPageKey = nil
	return true
end

--[[
Exits to the previous page
	return:
		True : if it can enter the previous page
		False: otherwise.
]]
function Nav:ExitSection()
	--stack pop
	table.remove(self._levels)
	-- stack peak
	local key = self._levels[#self._levels]
	if self._guiobjs[key] == nil then
		return false
	end
	Utility.SetSelectedCoreObject(self._guiobjs[key])
	return true
end

function Nav:_enterAction(actionName, inputState, inputObject)
	-- There is no next page to go to
	if self._nextPageKey == nil then
		return Enum.ContextActionResult.Pass
	end

	if inputState == Enum.UserInputState.Begin then
		self._seenPressed[inputObject.KeyCode] = true
		return Enum.ContextActionResult.Sink
	elseif inputState == Enum.UserInputState.End and self._seenPressed[inputObject.KeyCode] then
		self._seenPressed[inputObject.KeyCode] = false
		self:EnterSection()
		return Enum.ContextActionResult.Sink
	end
end

function Nav:_exitAction(actionName, inputState, inputObject)
	--If we are current at the root page
	if(#self._levels <= 1) then
		-- There is nothing to go back to.
		return Enum.ContextActionResult.Pass
	end

	if inputState == Enum.UserInputState.Begin then
		self._seenPressed[inputObject.KeyCode] = true
	elseif inputState == Enum.UserInputState.End and self._seenPressed[inputObject.KeyCode] then
		self._seenPressed[inputObject.KeyCode] = false
		self:ExitSection()
	end
	return Enum.ContextActionResult.Sink
end

--[[
Sets the default object to select.
	args:
		pageKey : Variant - The key for the page.
		defaultGuiObj : GuiObject - the default selected object for the page.
]]
function Nav:Set(pageKey, defaultGuiObj)
	self._guiobjs[pageKey] = defaultGuiObj
end

--[[
Sets the key of the next page.
	args:
		nextPageKey : Variant - The key for the next page.
]]
function Nav:SetNextPage(nextPageKey)
	self._nextPageKey = nextPageKey
end

-- Needs to be called to clean up event connection.
function Nav:Destruct()
	for _,v in pairs(self._actions.EnterSection) do
		ContextActionService:UnbindCoreAction(v)
	end
	for _,v in pairs(self._actions.ExitSection) do
		ContextActionService:UnbindCoreAction(v)
	end
end

return Nav