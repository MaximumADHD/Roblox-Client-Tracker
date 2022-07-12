local StudioPublishService = game:GetService("StudioPublishService")

local StudioService = game:GetService("StudioService")
local RunService = game:GetService("RunService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Cryo = require(Plugin.Packages.Cryo)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Stylizer = Framework.Style.Stylizer

local Localization = ContextServices.Localization

local UI = Framework.UI
local ScrollingFrame = UI.ScrollingFrame
local Container = UI.Container
local LoadingIndicator = UI.LoadingIndicator

local StudioUI = Framework.StudioUI
local StyledDialog = StudioUI.StyledDialog

local ShowDialog = require(Plugin.Src.Util.ShowDialog)

local CollaboratorsWidget = require(Plugin.Src.Components.CollaboratorsWidget)
local SearchBarWidget = require(Plugin.Src.Components.CollaboratorSearchWidget)
local Footer = require(Plugin.Src.Components.Footer)

local LoadPermissions = require(Plugin.Src.Thunks.LoadPermissions)
local SavePermissions = require(Plugin.Src.Thunks.SavePermissions)

local LoadState = require(Plugin.Src.Util.LoadState)
local SaveState = require(Plugin.Src.Util.SaveState)

local GetHasCollaborators = require(Plugin.Src.Selectors.GetHasCollaborators)

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

local PermissionsView = Roact.PureComponent:extend("PermissionsView")

function getIsTeamCreateEnabled()
	-- In non-TC games you are running both client/server in Edit, but in
	-- TC you are only running the client. The server is run by RCC
	return RunService:IsEdit() and not RunService:IsServer()
end

function PermissionsView:isGroupGame()
	local props = self.props
	local ownerType = props.OwnerType

	return ownerType == Enum.CreatorType.Group
end

function PermissionsView:isLoggedInUserGameOwner()
	local studioUserId = StudioService:GetUserId()

	local props = self.props
	local ownerId = props.OwnerId
	local groupOwnerUserId = props.GroupOwnerUserId

	if self:isGroupGame() then
		return studioUserId == groupOwnerUserId
	else
		return studioUserId == ownerId
	end
end

function PermissionsView:init()
	self.scrollingFrameRef = Roact.createRef()
	self.contentHeightChanged = function(rbx)
		local scrollingFrame = self.scrollingFrameRef.current
		if scrollingFrame then
			local theme = self.props.Stylizer
			scrollingFrame.CanvasSize = UDim2.new(1, 0, 0, rbx.AbsoluteContentSize.Y + theme.scrollingFrame.yPadding)
		end
	end
end

function PermissionsView:onSavePressed(plugin, localization, style, savePermissionsFunction)
	savePermissionsFunction()
	if not getIsTeamCreateEnabled() then
		StudioPublishService:PublishThenTurnOnTeamCreate()
	end
end

function PermissionsView:onCancelPressed(hasUnsavedChanges, plugin, localization, style, closeWidgetFunction)
	if not hasUnsavedChanges then
		closeWidgetFunction()
	else
		local key_yes = "YES"
		local key_no = "NO"

		local buttons = {
			{Key = key_no, Text = localization:getText("Buttons", "No")},
			{Key = key_yes, Text = localization:getText("Buttons", "Yes"), Style = "RoundPrimary"},
		}

		ShowDialog(plugin, localization, StyledDialog, {
			Buttons = buttons,
			MinContentSize = style.cancelDialog.Size,
			Style = "CancelDialog",
			OnButtonPressed = function(key)
				if key == key_yes then
					closeWidgetFunction()
				end
			end,
			OnClose = function()
			end,
			Title = localization:getText("Title", "DiscardChanges"),
			Modal = true, 
		}, {
			Contents = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				TextSize = style.cancelDialog.Text.TextSize,
				Text = localization:getText("Description", "DiscardChanges"),
				TextColor3 = style.cancelDialog.Text.TextColor3,
				Font = style.cancelDialog.Text.Font,
				Size = UDim2.fromScale(1, 1),
				AnchorPoint = Vector2.new(.5, .5),
				Position = style.cancelDialog.Position,
			}),
		})
	end	
end

function PermissionsView:render()
	local props = self.props
	
	if not props.Enabled then
		return
	end
	
	local style = props.Stylizer

	local localization = props.Localization
	local saveState = props.SaveState
	local loadState = props.LoadState
	local hasCollaborators = props.HasCollaborators
	local plugin = props.Plugin

	if saveState == SaveState.Saved then
		props.CloseWidget()
		return
	end
	
	local loadedPermissions = loadState == LoadState.Loaded
		
	local loadOrSaveFailed = false
	local loadOrSaveFailureMessage

	if loadState == LoadState.Unloaded then 
		props.LoadPermissions()
	end
	
	if loadState == LoadState.LoadFailed or saveState == SaveState.SaveFailed then
		loadOrSaveFailed = true
		
		if loadState == LoadState.LoadFailed then
			loadOrSaveFailureMessage = localization:getText("FailureMessage", "LoadFailure")
		else
			loadOrSaveFailureMessage = localization:getText("FailureMessage", "SaveFailure")
		end
	end
	
	
	local canUserEditCollaborators = self:isLoggedInUserGameOwner()
	
	local showPermissions = loadedPermissions and not loadOrSaveFailed
	local isTeamCreateEnabled = getIsTeamCreateEnabled()
	local showSaveText = showPermissions and not isTeamCreateEnabled and hasCollaborators
	
	local scrollingFrameHeight = style.footer.height
	if showSaveText then
		scrollingFrameHeight += style.saveMessage.boxHeight
	end

	local layoutOrderIterator0 = LayoutOrderIterator.new()
	local layoutOrderIterator1 = LayoutOrderIterator.new()

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = style.backgroundColor,
	},{

		Layout = showPermissions and Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, style.permissionsView.Padding),
		}),

		ScrollingFrame = showPermissions and Roact.createElement(ScrollingFrame, {
			LayoutOrder = layoutOrderIterator0:getNextOrder(),
			Size = UDim2.new(1, 0, 1, -scrollingFrameHeight),
			Layout = Enum.FillDirection.Vertical,
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			Spacing = UDim.new(0, if canUserEditCollaborators then style.scrollingFrame.yPadding else style.scrollingFrame.yPaddingNonOwner),
		}, {
			SearchBarWidget = canUserEditCollaborators and Roact.createElement(SearchBarWidget, {
				LayoutOrder = layoutOrderIterator1:getNextOrder(),
				Writable = true,
				IsGroupGame = self:isGroupGame()
			}),
			
			Frame = not canUserEditCollaborators and Roact.createElement("Frame", {
				BackgroundTransparency = 1,
			}),

			CollaboratorsWidget = Roact.createElement(CollaboratorsWidget, {
				LayoutOrder = layoutOrderIterator1:getNextOrder(),
				Writable = canUserEditCollaborators,
			}),
		}),
		
		TextFrame = if showSaveText then Roact.createElement("Frame", {
			BackgroundTransparency = 0,
			BackgroundColor3 = style.backgroundColor,
			LayoutOrder = layoutOrderIterator0:getNextOrder(),
			Size = UDim2.new(1, 0, 0, style.saveMessage.boxHeight),
			BorderSizePixel = 0,
		}, {
				Text = Roact.createElement("TextLabel", Cryo.Dictionary.join(style.saveMessage.textStyle, {
					AnchorPoint = Vector2.new(0, .5),
					Position = style.saveMessage.InnerTextPosition,
					Text = localization:getText("Description", "SaveEnableTC"),
					TextXAlignment = Enum.TextXAlignment.Left,
					BorderSizePixel = 0,
				})),
			}) else nil,

		FooterContent = showPermissions and Roact.createElement(Container, {
			LayoutOrder = layoutOrderIterator0:getNextOrder(),
			Size = UDim2.new(1, 0, 0, style.footer.height),
		}, {
			Footer = Roact.createElement(Footer, {
				IsTeamCreateEnabled = isTeamCreateEnabled,
				
				OnSavePressed = function()
					self:onSavePressed(plugin, localization, style, props.SavePermissions)
				end,
				OnCancelPressed = function(hasUnsavedChanges)
					self:onCancelPressed(hasUnsavedChanges, plugin, localization, style, props.CloseWidget)
				end,
			})
		}),
		
		LoadingIndicator = not loadedPermissions and not loadOrSaveFailed and Roact.createElement(LoadingIndicator, {
			AnchorPoint = Vector2.new(0.5, .5),
			Position = UDim2.fromScale(0.5, .5),
		}),
		
		FailureText = loadOrSaveFailed and Roact.createElement("TextLabel", {
			Text = loadOrSaveFailureMessage,
			AnchorPoint = Vector2.new(0.5, .5),
			Position = UDim2.fromScale(0.5, .25),
			TextColor3 = style.fontStyle.Normal.TextColor3,
			TextSize = style.fontStyle.Normal.TextSize,
			Font = style.fontStyle.Normal.Font
		})
	})
end

PermissionsView = withContext({
	Stylizer = Stylizer,
	Localization = Localization
})(PermissionsView)

PermissionsView = RoactRodux.connect(
	function(state, props)
		return {
			LoadState = state.LoadState.CurrentLoadState or LoadState.Unloaded,
			SaveState = state.SaveState.CurrentSaveState or SaveState.Unsaved,
			OwnerId = state.GameOwnerMetadata.creatorId,
			OwnerType = state.GameOwnerMetadata.creatorType,
			GroupOwnerUserId = state.GameOwnerMetadata.groupOwnerId,
			HasCollaborators = GetHasCollaborators(state),
			GroupRolePermissions = state.GroupRolePermissions.PermissionsByRole,
		}
	end,
	function(dispatch)
		return {
			LoadPermissions = function()
				dispatch(LoadPermissions())
			end,
			SavePermissions = function()
				dispatch(SavePermissions())
			end,
		}
	end
)(PermissionsView)

return PermissionsView

