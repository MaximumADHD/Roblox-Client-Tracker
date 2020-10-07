local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)

local Connection = script.Parent
local Components = Connection.Parent
local AvatarEditorPrompts = Components.Parent

local CloseOpenPrompt = require(AvatarEditorPrompts.Thunks.CloseOpenPrompt)

local CLOSE_AVATAR_EDITOR_PROMPT_NAME = "CloseAvatarEditorPrompt"

local ContextActionsBinder = Roact.PureComponent:extend("ContextActionsBinder")

ContextActionsBinder.validateProps = t.strictInterface({
	--Map State to Props
	promptOpen = t.boolean,

	--Map dispatch to props
	closeOpenPrompt = t.callback,
})

function ContextActionsBinder:init()
	self.actionsBound = false
end

function ContextActionsBinder:bindActions()
	if self.actionsBound then
		return
	end

	self.actionsBound = true

	ContextActionService:BindCoreAction(
		CLOSE_AVATAR_EDITOR_PROMPT_NAME,
		function(actionName, inputState, inputObject)
			if GuiService.MenuIsOpen then
				return Enum.ContextActionResult.Pass
			end

			if inputState ~= Enum.UserInputState.Begin then
				return Enum.ContextActionResult.Pass
			end
			self.props.closeOpenPrompt()
			return Enum.ContextActionResult.Sink
		end,
		false,
		Enum.KeyCode.Escape
	)
end

function ContextActionsBinder:unbindActions()
	if not self.actionsBound then
		return
	end

	self.actionsBound = false

	ContextActionService:UnbindCoreAction(CLOSE_AVATAR_EDITOR_PROMPT_NAME)
end

function ContextActionsBinder:didMount()
	if self.props.promptOpen then
		self:bindActions()
	end
end

function ContextActionsBinder:render()
	return nil
end

function ContextActionsBinder:didUpdate(prevProps, prevState)
	if self.props.promptOpen ~= prevProps.promptOpen then
		if self.props.promptOpen then
			self:bindActions()
		else
			self:unbindActions()
		end
	end
end

function ContextActionsBinder:willUnmount()
	if self.actionsBound then
		self:unbindActions()
	end
end

local function mapStateToProps(state)
	return {
		promptOpen = state.promptInfo.promptType ~= nil,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		closeOpenPrompt = function()
			return dispatch(CloseOpenPrompt)
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(ContextActionsBinder)