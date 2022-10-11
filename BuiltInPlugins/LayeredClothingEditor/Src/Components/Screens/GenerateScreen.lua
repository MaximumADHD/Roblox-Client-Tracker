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

local UI = Framework.UI
local Button = UI.Button
local Pane = UI.Pane

local EditingItemContext = AvatarToolsShared.Contexts.EditingItemContext
local LuaMeshEditingModuleContext = AvatarToolsShared.Contexts.LuaMeshEditingModuleContext

local SetControlsPanelBlockerActivity = require(Plugin.Src.Actions.SetControlsPanelBlockerActivity)
local SetControlsPanelBlockerMessage = require(Plugin.Src.Actions.SetControlsPanelBlockerMessage)
local ReleaseEditor = require(Plugin.Src.Thunks.ReleaseEditor)
local FinishEditing = require(Plugin.Src.Thunks.FinishEditing)

local GenerateScreen = Roact.PureComponent:extend("GenerateScreen")

local Util = Framework.Util
local Typecheck = Util.Typecheck
local StyleModifier = Util.StyleModifier
local LayoutOrderIterator = Util.LayoutOrderIterator
Typecheck.wrap(GenerateScreen, script)

local GetFFlagAccessoryFittingToolAnalytics = require(Plugin.Src.Flags.GetFFlagAccessoryFittingToolAnalytics)

function GenerateScreen:init()
	self.onGenerateClicked = function()
		local props = self.props

		local localization = props.Localization

		self.generateClicked = true
		props.SetControlsPanelBlockerMessage(localization:getText("Generate", "Wait"))
		props.SetControlsPanelBlockerActivity(true)
	end
end

function GenerateScreen:render()
	local props = self.props

	local inBounds = props.InBounds
	local goToPrevious = props.GoToPrevious
	local localization = props.Localization
	local style = props.Stylizer

	local tooltip = localization:getText("Generate", "InvalidBounds")
	local orderIterator = LayoutOrderIterator.new()

	return Roact.createElement(Pane, {
		Size = UDim2.new(1, 0, 1, 0),
		Layout = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		VerticalAlignment = Enum.VerticalAlignment.Center,
		Spacing = 10,	
	}, {
		BackButton = Roact.createElement(Button, {
			Text = localization:getText("Flow", "Back"),
			Style = "Round",
			Size = UDim2.new(0, style.BackButtonWidth, 0, style.ButtonHeight),
			OnClick = goToPrevious,
			LayoutOrder = orderIterator:getNextOrder(),
		}),

		NextButton = Roact.createElement(Button, {
			Text = localization:getText("Flow", "Generate"),
			Style = "RoundPrimary",
			StyleModifier = if not inBounds then StyleModifier.Disabled else nil,
			Size = UDim2.new(0, style.GenerateButtonWidth, 0, style.ButtonHeight),
			OnClick = if inBounds then self.onGenerateClicked else function() end,
			LayoutOrder = orderIterator:getNextOrder(),
			Tooltip = if not inBounds then tooltip else nil,
		}),
	})
end

function GenerateScreen:didUpdate(prevProps)
	if
		-- Was IsControlsPanelBlockerActive changed to true as a result of the Generate Button being clicked?
		self.props.IsControlsPanelBlockerActive ~= prevProps.IsControlsPanelBlockerActive
		and self.props.IsControlsPanelBlockerActive 
		and self.generateClicked
	then
		-- FinishEditing starts the process of publishing cages, which is blocking. If we don't 
		-- delay here, then the InputBlocker doesn't have enough time to render as a result of 
		-- IsControlsPanelBlockerActive being set to true.
		task.delay(0, function()
			local editingItem = self.props.EditingItemContext:getItem()
			local sourceItem = self.props.EditingItemContext:getSourceItemWithUniqueDeformerNames()
			local analytics = self.props.Analytics
			if GetFFlagAccessoryFittingToolAnalytics() then
				self.props.FinishEditing(self.props.LuaMeshEditingModuleContext, editingItem, sourceItem, analytics)
			else
				self.props.FinishEditing(self.props.LuaMeshEditingModuleContext, editingItem, sourceItem)
			end
			self.props.SetControlsPanelBlockerActivity(false)

			-- return to start screen
			self.props.EditingItemContext:clear()
			self.props.GoToNext()
			self.props.ReleaseEditor()
			self.props.EditingItemContext:setSourceItem(nil)
			self.generateClicked = false
		end)
	end
end

GenerateScreen = withContext({
	Analytics = ContextServices.Analytics,
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
	EditingItemContext = EditingItemContext,
	LuaMeshEditingModuleContext = LuaMeshEditingModuleContext,
})(GenerateScreen)

local function mapStateToProps(state, props)
	local controlsPanelBlocker = state.controlsPanelBlocker
	local selectItem = state.selectItem
	return {
		IsControlsPanelBlockerActive = controlsPanelBlocker.isActive,
		InBounds = selectItem.inBounds,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SetControlsPanelBlockerActivity = function(isActive)
			dispatch(SetControlsPanelBlockerActivity(isActive))
		end,

		SetControlsPanelBlockerMessage = function(message)
			dispatch(SetControlsPanelBlockerMessage(message))
		end,

		FinishEditing = if GetFFlagAccessoryFittingToolAnalytics() 
			then 
				function(context, item, sourceItem, analytics)
					dispatch(FinishEditing(context, item, sourceItem, analytics))
				end
			else
				function(context, item, sourceItem)
					dispatch(FinishEditing(context, item, sourceItem))
				end,

		ReleaseEditor = function()
			dispatch(ReleaseEditor())
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(GenerateScreen)