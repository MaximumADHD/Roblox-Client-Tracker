--[[
	Main editing view for the plugin. Provides user with a variety of mesh editing
	tools, and ways to preview cages and meshes on different models.

	Required Props:
		callback GoToNext: request to go to next screen in flow.
		callback GoToPrevious: request to go to previous screen in flow.
		boolean IsControlsPanelBlockerActive: is the blocker over this component active, provided via mapStateToProps
		string ControlsPanelBlockerMessage: message displayed on blocker component, provided via mapStateToProps
		table UserAddedAssets: assets added to preview grid manually by the user, provided via mapStateToProps
		callback FinishSelectingFromExplorer: callback for when user has finished selecting an instance from explorer.
		callback ClearPreviewAssetsSelected: callback for clearing all selected preview items in grid.
		callback AddUserAddedAssetForPreview: adds asset into preview grid, provided via mapDispatchToProps
	Optional Props:
		enum EditingCage: Cage type identifier, Inner/Outer, provided via mapStateToProps
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		table Localization: A Localization ContextItem, which is provided via withContext.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local Components = AvatarToolsShared.Components
local InputBlocker = Components.InputBlocker

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local PreviewContext = require(Plugin.Src.Context.PreviewContext)

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

local UI = Framework.UI
local SimpleExpandablePane = UI.SimpleExpandablePane
local Pane = UI.Pane

local EditAndPreviewFrame = require(Plugin.Src.Components.EditAndPreviewFrame)
local EditorFrame = require(Plugin.Src.Components.EditorFrame)
local PreviewFrame = require(Plugin.Src.Components.PreviewFrame)
local ExplorerPreviewInstances = require(Plugin.Src.Components.Preview.ExplorerPreviewInstances)
local AnimationPlayback = require(Plugin.Src.Components.AnimationPlayback.AnimationPlayback)

local FinishSelectingFromExplorer = require(Plugin.Src.Thunks.FinishSelectingFromExplorer)
local AddUserAddedAssetForPreview = require(Plugin.Src.Thunks.AddUserAddedAssetForPreview)

local Constants = require(Plugin.Src.Util.Constants)

local SetPreviewAssetsSelected = require(Plugin.Src.Actions.SetPreviewAssetsSelected)

local EditorScreen = Roact.PureComponent:extend("EditorScreen")

local Typecheck = Util.Typecheck
Typecheck.wrap(EditorScreen, script)

function EditorScreen:render()
	local props = self.props

	local userAddedAssets = props.UserAddedAssets
	local editingCage = props.EditingCage
	local theme = props.Stylizer
	local goToNext = props.GoToNext
	local addUserAddedAssetForPreview = props.AddUserAddedAssetForPreview
	local goToPrevious = props.GoToPrevious
	local localization = props.Localization

	local orderIterator = LayoutOrderIterator.new()

	local isRigidMode = editingCage == Constants.EDIT_MODE.Mesh
	local promptText = localization:getText("EditAndPreview", "PromptCage")
	if isRigidMode then
		promptText = localization:getText("EditAndPreview", "PromptNoCage")
	end

	return ContextServices.provide({
		PreviewContext.new(),
	}, {
		Container = Roact.createElement(Pane, {
			BackgroundColor3 = theme.BackgroundColor,
		}, {
			MainFrame = Roact.createElement("ScrollingFrame", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarThickness = theme.ScrollBarThickness,
				ScrollBarImageColor3 = theme.ScrollBarColor,
				Size = UDim2.new(1, 0, 1, 0),
				CanvasSize = UDim2.new(0, 0, 0, 0),
				VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar,
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),

				EditAndPreviewContainer = Roact.createElement(Pane, {
					Size = UDim2.new(1, 0, 0, theme.EditAndPreviewHeight),
					LayoutOrder = orderIterator:getNextOrder(),
				}, {
					EditAndPreviewFrame = Roact.createElement(EditAndPreviewFrame, {
						PromptText = promptText,
						GoToNext = goToNext,
						GoToPrevious = goToPrevious,
					}),
				}),

				EditSwizzle = Roact.createElement(SimpleExpandablePane, {
					Text = localization:getText("Editor", "Edit"),
					LayoutOrder = orderIterator:getNextOrder(),
					Style = "Section",
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					Expanded = true,
					ContentPadding = {
						Left = 0,
						Top = 0,
						Right = 0,
						Bottom = 0,
					},
				}, {
					EditorFrame = Roact.createElement(EditorFrame, {
						Size = UDim2.new(1, 0, 0, theme.EditHeight),
						LayoutOrder = orderIterator:getNextOrder(),
					}),
				}),

				PreviewSwizzle = Roact.createElement(SimpleExpandablePane, {
					Text = localization:getText("Editor", "Preview"),
					LayoutOrder = orderIterator:getNextOrder(),
					Style = "Section",
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					Expanded = true,
					ContentPadding = {
						Left = 0,
						Top = 0,
						Right = 0,
						Bottom = 0,
					},
				}, {
					PreviewFrame = Roact.createElement(PreviewFrame, {
						Size = UDim2.new(1, 0, 0, theme.PreviewHeight),
						UserAddedAssets = userAddedAssets,
						UpdateUserAddedAssets = addUserAddedAssetForPreview,
					}),
				}),
			}),

			ControlsPanelBlocker = props.IsControlsPanelBlockerActive and Roact.createElement(InputBlocker,{
				OnFocused = props.FinishSelectingFromExplorer,
				Text = props.ControlsPanelBlockerMessage,
			}),
			AnimationPlayback = Roact.createElement(AnimationPlayback),
			ExplorerPreviewInstances = Roact.createElement(ExplorerPreviewInstances, {
				UserAddedAssets = userAddedAssets,
			}),
		})
	})
end

function EditorScreen:willUnmount()
	local props = self.props
	props.ClearPreviewAssetsSelected()
end

local function mapStateToProps(state, props)
	local controlsPanelBlocker = state.controlsPanelBlocker
	local previewStatus = state.previewStatus
	local selectItem = state.selectItem
	return {
		EditingCage = selectItem.editingCage,
		IsControlsPanelBlockerActive = controlsPanelBlocker.isActive,
		ControlsPanelBlockerMessage = controlsPanelBlocker.message,
		UserAddedAssets = previewStatus.userAddedAssets,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		FinishSelectingFromExplorer = function()
			dispatch(FinishSelectingFromExplorer())
		end,

		ClearPreviewAssetsSelected = function()
			dispatch(SetPreviewAssetsSelected({}))
		end,

		AddUserAddedAssetForPreview = function(tab, asset)
			dispatch(AddUserAddedAssetForPreview(tab, asset))
		end,
	}
end


EditorScreen = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(EditorScreen)



return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(EditorScreen)