--[[
	Final screen in the flow to let the user publish their cage edits.

	Required Props:
		boolean IsControlsPanelBlockerActive: is the blocker over this component active, provided via mapStateToProps
		callback GoToNext: request to go to next screen in flow.
		callback GoToPrevious: request to go to previous screen in flow.
		callback FinishEditing: callback for finalizing edits and publishing cages, provided via mapDispatchToProps
		callback ReleaseEditor: callback for restoring editor to default state, provided via mapDispatchToProps
		callback SetControlsPanelBlockerActivity: callback for deactivating blocker. Provided via mapDispatchToProps
	Optional Props:
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		table Localization: A Localization ContextItem, which is provided via withContext.
		table EditingItemContext: An EditingItemContext, which is provided via withContext.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local Components = AvatarToolsShared.Components
local InputBlocker = Components.InputBlocker
local FlowScreenLayout = Components.FlowScreenLayout

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local EditingItemContext = require(Plugin.Src.Context.EditingItemContext)
local LuaMeshEditingModuleContext = AvatarToolsShared.Contexts.LuaMeshEditingModuleContext

local SetControlsPanelBlockerActivity = require(Plugin.Src.Actions.SetControlsPanelBlockerActivity)
local ReleaseEditor = require(Plugin.Src.Thunks.ReleaseEditor)
local FinishEditing = require(Plugin.Src.Thunks.FinishEditing)

local GenerateScreen = Roact.PureComponent:extend("GenerateScreen")

local Util = Framework.Util
local Typecheck = Util.Typecheck
Typecheck.wrap(GenerateScreen, script)

function GenerateScreen:init()
	self.onGenerateClicked = function()
		self.props.SetControlsPanelBlockerActivity(true)
	end
end

function GenerateScreen:render()
	local props = self.props

	local goToPrevious = props.GoToPrevious
	local localization = props.Localization
	local theme = props.Stylizer

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = theme.BackgroundColor,
		BorderSizePixel = 0,
	}, {
		Screen = Roact.createElement(FlowScreenLayout, {
			Title = localization:getText("Editor", "Generate"),
			PromptText = localization:getText("Generate", "Prompt"),
			NextButtonText = localization:getText("Flow", "Generate"),
			BackButtonText = localization:getText("Flow", "Back"),
			NextButtonEnabled = true,
			BackButtonEnabled = true,
			HasBackButton = true,
			GoToNext = self.onGenerateClicked,
			GoToPrevious = goToPrevious,
		}),

		ControlsPanelBlocker = props.IsControlsPanelBlockerActive and Roact.createElement(InputBlocker,{
			OnFocused = function() end,
			Text = localization:getText("Generate", "Wait"),
		}),
	})
end

function GenerateScreen:didUpdate(prevProps)
	if
		self.props.IsControlsPanelBlockerActive ~= prevProps.IsControlsPanelBlockerActive
		and self.props.IsControlsPanelBlockerActive
	then
		task.delay(0, function()
			local editingItem = self.props.EditingItemContext:getItem()
			local sourceItem = self.props.EditingItemContext:getSourceItemWithUniqueDeformerNames()
			self.props.FinishEditing(self.props.LuaMeshEditingModuleContext, editingItem, sourceItem)
			self.props.SetControlsPanelBlockerActivity(false)

			-- return to start screen
			self.props.EditingItemContext:clear()
			self.props.GoToNext()
			self.props.ReleaseEditor()
			self.props.EditingItemContext:setSourceItem(nil)
		end)
	end
end

GenerateScreen = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
	EditingItemContext = EditingItemContext,
	LuaMeshEditingModuleContext = LuaMeshEditingModuleContext,
})(GenerateScreen)

local function mapStateToProps(state, props)
	local controlsPanelBlocker = state.controlsPanelBlocker
	return {
		IsControlsPanelBlockerActive = controlsPanelBlocker.isActive,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SetControlsPanelBlockerActivity = function(isActive)
			dispatch(SetControlsPanelBlockerActivity(isActive))
		end,

		FinishEditing = function(context, item, sourceItem)
			dispatch(FinishEditing(context, item, sourceItem))
		end,

		ReleaseEditor = function()
			dispatch(ReleaseEditor())
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(GenerateScreen)