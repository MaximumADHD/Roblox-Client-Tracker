local GuiService = game:GetService("GuiService")
local ContextActionService = game:GetService("ContextActionService")

local module = {}

--[[
    Determine whether the passed in enum refers to a gamepad type
    @param {Enum.UserInputState} the input type which might be a controller
    @return true if the input should read as a gamepad
]]
--
module.isGamepad = function(inputType: Enum.UserInputType)
	return inputType == Enum.UserInputType.Gamepad1
		or inputType == Enum.UserInputType.Gamepad2
		or inputType == Enum.UserInputType.Gamepad3
		or inputType == Enum.UserInputType.Gamepad4
		or inputType == Enum.UserInputType.Gamepad5
		or inputType == Enum.UserInputType.Gamepad6
		or inputType == Enum.UserInputType.Gamepad7
		or inputType == Enum.UserInputType.Gamepad8
end

-- Determine the currently selected instance using GuiService
-- @return {GuiObject | nil} the currently selected object
module.getSelection = function()
	return GuiService.SelectedCoreObject or GuiService.SelectedObject
end

--[[
	Binds the callback function (if it exists) to the controller button specified
	@param focusAreaId {string} The unique identifier of the FocusArea
	@param callback {function | nil} The function you want to bind to a controller button
	@param keyCode {Enum.KeyCode} The keycode specifying which controller button you
		want to bind an action to
]]
--
module.bindButton = function(focusAreaId: string, callbackFunction, keyCode: Enum.KeyCode)
	if callbackFunction then
		ContextActionService:BindAction(focusAreaId .. tostring(keyCode), callbackFunction, false, keyCode)
	end
end

--[[
	Unbinds the callback function (if it exists) to the controller button specified
	@param focusAreaId {string} The unique identifier of the FocusArea
	@param callback {function | nil} The function you want to unbind from a controller button
	@param keyCode {Enum.KeyCode} The keycode specifying which controller button you
		want to unbind an action from
]]
--
module.unbindButton = function(focusAreaId: string, keyCode: Enum.KeyCode)
	ContextActionService:UnbindAction(focusAreaId .. tostring(keyCode))
end

--[[
	Updates the callback function bound to the controller button specified
	@param focusAreaId {string} The unique identifier of the FocusArea
	@param oldFunction {function | nil} The function previously bound to the controller button
	@param newFunction {function | nil} The function that should be bound to the controller button
	@param keyCode {Enum.KeyCode} The keycode specifying which controller button you
		want to update the action for
]]
--
module.updateButton = function(focusAreaId: string, oldFunction, newFunction, keyCode: Enum.KeyCode)
	if oldFunction == newFunction then
		return
	end

	module.unbindButton(focusAreaId, keyCode)
	module.bindButton(focusAreaId, newFunction, keyCode)
end

return module
