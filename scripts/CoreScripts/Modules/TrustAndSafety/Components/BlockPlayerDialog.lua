--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)

local TnsModule = script.Parent.Parent
local Constants = require(TnsModule.Resources.Constants)
local Dependencies = require(TnsModule.Dependencies)
local playerInterface = require(Dependencies.playerInterface)
local ThemedTextLabel = require(Dependencies.ThemedTextLabel)
local withLocalization = require(Dependencies.withLocalization)

local EndReportFlow = require(TnsModule.Actions.EndReportFlow)
local BlockPlayer = require(TnsModule.Thunks.BlockPlayer)
local ModalDialog = require(TnsModule.Components.ModalDialog)

local ButtonStack = UIBlox.App.Button.ButtonStack
local ButtonType = UIBlox.App.Button.Enum.ButtonType

local BlockPlayerDialog = Roact.PureComponent:extend("BlockPlayerDialog")

BlockPlayerDialog.validateProps = t.strictInterface({
	isBlockPlayerOpen = t.boolean,
	screenSize = t.Vector2,
	targetPlayer = t.optional(playerInterface),
	closeDialog = t.callback,
	blockPlayer = t.callback,
})

function BlockPlayerDialog:init()
	-- Press the "Cancel" button or background.
	self.onCancel = function()
		self.props.closeDialog()
	end
	-- Press the "Block" button.
	self.onConfirm = function(targetPlayer, doneToastText)
		self.props.blockPlayer(targetPlayer, doneToastText)
		self.props.closeDialog()
	end
end

function BlockPlayerDialog:renderContents(bodyText)
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 35),
			PaddingBottom = UDim.new(0, 35),
			PaddingLeft = UDim.new(0, 24),
			PaddingRight = UDim.new(0, 24),
		}),
		BodyText = Roact.createElement(ThemedTextLabel, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.fromScale(1, 0),
			Text = bodyText,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
	})
end

function BlockPlayerDialog:render()
	local player = self.props.targetPlayer
	local displayName = player and player.DisplayName or nil
	local userName = player and player.Name or nil
	return withLocalization({
		titleText = {
			"CoreScripts.InGameMenu.Report.BlockTitle",
			DISPLAY_NAME = displayName,
		},
		cancelText = "CoreScripts.InGameMenu.Cancel",
		blockText = "CoreScripts.InGameMenu.Report.Block",
		bodyText = {
			"CoreScripts.InGameMenu.Report.BlockBody",
			DISPLAY_NAME = displayName,
			RBX_NAME = userName,
		},
		toastText = {
			"CoreScripts.InGameMenu.Report.BlockPopup",
			DISPLAY_NAME = displayName,
			RBX_NAME = userName,
		}
	})(function(localized)
		return Roact.createFragment({
			ModalDialog = Roact.createElement(ModalDialog, {
				visible = self.props.isBlockPlayerOpen,
				screenSize = self.props.screenSize,
				titleText = localized.titleText,
				contents = self:renderContents(localized.bodyText),
				actionButtons = Roact.createElement(ButtonStack, {
					buttonHeight = 48,
					buttons = {{
						buttonType = ButtonType.Secondary,
						props = {
							onActivated = self.onCancel,
							text = localized.cancelText,
						},
					},{
						buttonType = ButtonType.Alert,
						props = {
							onActivated = function()
								self.onConfirm(self.props.targetPlayer, localized.toastText)
							end,
							text = localized.blockText,
						},
					}}
				}),
				onDismiss = self.onCancel,
			}),
		})
	end)
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		isBlockPlayerOpen = state.report.currentPage == Constants.Page.PlayerBlocking,
		targetPlayer = state.report.targetPlayer,
		screenSize = state.displayOptions.screenSize,
	}
end, function(dispatch)
	return {
		closeDialog = function()
			dispatch(EndReportFlow())
		end,
		blockPlayer = function(player, doneToastText)
			dispatch(BlockPlayer(player, doneToastText))
		end,
	}
end)(BlockPlayerDialog)
