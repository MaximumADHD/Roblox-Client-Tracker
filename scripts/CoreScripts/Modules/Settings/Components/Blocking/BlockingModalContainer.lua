local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local React = require(CorePackages.Packages.React)
local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization

local BlockingUtility = require(CorePackages.Workspace.Packages.BlockingUtility)
local isNewInGameMenuEnabled = require(Modules.isNewInGameMenuEnabled)

local UIBlox = require(CorePackages.Packages.UIBlox)
local Toast = UIBlox.App.Dialog.Toast

local ActionModal = require(script.Parent.ActionModal)

local FFlagEnableToastForBlockingModal = require(Modules.Common.Flags.FFlagEnableToastForBlockingModal)

type Props = {
	analytics: any,
	closeModal: () -> (),
	player: {
		DisplayName: string,
		Name: string,
		UserId: number,
	},
	source: string,

	onBlockingSuccess: () -> ()?,

	blockingUtility: any?,
}

local function BlockingModalContainer(props: Props)
	local player = props.player
	local closeModal = props.closeModal
	local blockingUtility = props.blockingUtility or BlockingUtility
	local analytics = props.analytics
	local source = props.source
	local onBlockingSuccess = props.onBlockingSuccess

	local screenSize, setScreenSize = React.useState(Vector2.new(1000, 1000))
	local showError, setShowError

	if FFlagEnableToastForBlockingModal then
		showError, setShowError = React.useState(false)
	end

	local onBlock = React.useCallback(function()
		local success = blockingUtility:BlockPlayerAsync(player)

		if success then
			analytics:action("SettingsHub", "blockUser", {
				blockeeUserId = player.UserId,
				source = source,
			})
			if onBlockingSuccess then
				onBlockingSuccess()
			end
			if FFlagEnableToastForBlockingModal then
				closeModal()
			end
		else
			if FFlagEnableToastForBlockingModal then
				setShowError(true)
			end
		end

		if not FFlagEnableToastForBlockingModal then
			closeModal()
		end
	end, { closeModal, player, analytics, source, onBlockingSuccess } :: { any })

	local onBlockAndReport = React.useCallback(function()
		onBlock()

		local sourceForReporting = source or "BlockingModal"

		if isNewInGameMenuEnabled() then
			local InGameMenu = require(Modules.InGameMenuInit)
			InGameMenu.openReportDialog(player, sourceForReporting)
		else
			local ReportAbuseMenu = require(Modules.Settings.Pages.ReportAbuseMenuNewContainerPage)
			ReportAbuseMenu:ReportPlayer(player, sourceForReporting)
		end
	end, { onBlock, player, source } :: { any })

	local localized = useLocalization({
		titleKey = {
			"Feature.BlockingModal.Heading.BlockUser",
			DisplayName = player.DisplayName,
		},
		bodyKey = "Feature.BlockingModal.Message.BlockConfirmation",
		cancelTextKey = "Feature.BlockingModal.Action.Cancel",
		blockTextKey = "Feature.BlockingModal.Action.Block",
		blockAndReportTextKey = "Feature.BlockingModal.Action.BlockAndReport",
		blockingFailed = if FFlagEnableToastForBlockingModal
			then "Feature.Toast.NetworkingError.SomethingIsWrong"
			else nil,
	})

	if FFlagEnableToastForBlockingModal then
		if showError then
			return React.createElement(Toast, {
				duration = 3,
				show = showError,
				toastContent = {
					toastTitle = localized.blockingFailed,
					onDismissed = closeModal,
				}
			})
		end
	end

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		ZIndex = 2,
		[React.Change.AbsoluteSize] = function(rbx)
			setScreenSize(rbx.AbsoluteSize)
		end,
	}, {
		BlockingModal = React.createElement(ActionModal, {
			screenSize = screenSize,
			title = localized.titleKey,
			body = localized.bodyKey,
			blockText = localized.blockTextKey,
			blockAndReportText = localized.blockAndReportTextKey,
			cancelText = localized.cancelTextKey,

			cancel = closeModal,
			block = onBlock,
			blockAndReport = onBlockAndReport,
		}),
	})
end

return BlockingModalContainer
