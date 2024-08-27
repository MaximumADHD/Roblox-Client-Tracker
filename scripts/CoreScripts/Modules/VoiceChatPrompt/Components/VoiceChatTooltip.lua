local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local utility = require(RobloxGui.Modules.Settings.Utility)

local withTooltip = UIBlox.App.Dialog.TooltipV2.withTooltip
local TooltipOrientation = UIBlox.App.Dialog.Enum.TooltipOrientation
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle

local AUTODISMISS_DELAY = require(RobloxGui.Modules.Flags.FIntVoiceChatTooltipDelay)

type Props = {
	titleText: string,
	subtitleText: string,
	promptStyle: { [string]: any? },
	showPrompt: boolean,
	onClose: () -> nil,
}

export type VoiceChatTooltipType = (props: Props) -> React.ReactElement

local function VoiceChatTooltip(props: Props)
	local style = useStyle()
	local menuOpenSignalRef = React.useRef(nil) :: { current: RBXScriptConnection? }
	local onClose = props.onClose

	-- Hide the tooltip when the menu is opened or after a delay
	React.useEffect(function()
		if props.showPrompt then
			menuOpenSignalRef.current = GuiService.MenuOpened:Connect(function()
				if menuOpenSignalRef.current then
					menuOpenSignalRef.current:Disconnect()
					menuOpenSignalRef.current = nil
					onClose()
				end
			end)
			task.delay(AUTODISMISS_DELAY, function()
				if menuOpenSignalRef.current then
					menuOpenSignalRef.current:Disconnect()
					menuOpenSignalRef.current = nil
				end
				if props.showPrompt then
					onClose()
				end
			end)
		end

		return function()
			if menuOpenSignalRef.current then
				menuOpenSignalRef.current:Disconnect()
				menuOpenSignalRef.current = nil
			end
		end
	end, { props.showPrompt })

	local isSmallScreenSize = utility:IsSmallTouchScreen()

	local anchorPaddingOffset = 10 -- Offset that centers the tooltip on the button
	local anchorHeight = 38 -- PermissionsButtons.lua: Y_HEIGHT
	local anchorWidth = isSmallScreenSize and 54 + anchorPaddingOffset or 74 - anchorPaddingOffset -- PermissionsButtons.lua: UIPaddingPermissionsContainer Close Button Location

	local tooltipProps = {
		headerText = props.titleText,
		minContentWidth = 240,
		renderCustomComponents = function(width)
			return Roact.createElement(StyledTextLabel, {
				text = props.subtitleText,
				textTruncate = Enum.TextTruncate.None,
				textXAlignment = Enum.TextXAlignment.Left,
				fontStyle = style.Font.CaptionSmall,
				colorStyle = style.Theme.TextDefault,
				layoutOrder = 0,
				automaticSize = Enum.AutomaticSize.XY,
			})
		end,
		onClose = onClose,
		backgroundColor = style.Theme.BackgroundUIDefault.Color,
		backgroundTransparency = style.Theme.BackgroundUIDefault.Transparency,
	}

	local tooltipOptions = {
		guiTarget = CoreGui,
		active = props.showPrompt,
		DisplayOrder = 10,
		preferredOrientation = TooltipOrientation.Bottom,
	}

	return withTooltip(tooltipProps, tooltipOptions, function(triggerPointChanged)
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, anchorWidth, 0, anchorHeight), -- Close Button location
			[React.Change.AbsoluteSize] = triggerPointChanged,
			[React.Change.AbsolutePosition] = triggerPointChanged,
		})
	end)
end

return VoiceChatTooltip :: VoiceChatTooltipType
