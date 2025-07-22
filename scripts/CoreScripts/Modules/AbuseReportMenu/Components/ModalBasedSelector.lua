local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local Icon = Foundation.Icon
local Text = Foundation.Text
local View = Foundation.View

local ModalBasedSelectorDialogController = require(root.Components.ModalBasedSelectorDialogController)

local FFlagHideShortcutsOnReportDropdown = require(root.Flags.FFlagHideShortcutsOnReportDropdown)
local FFlagModalBasedSelectorOnCloseUseCallback = game:DefineFastFlag("ModalBasedSelectorOnCloseUseCallback", false)

local FFlagPreferredTextSizeReportMenuButtonTextFix =
	game:DefineFastFlag("PreferredTextSizeReportMenuButtonTextFix", false)

type Props = {
	layoutOrder: number,
	text: string,
	placeholderText: string,
	viewportHeight: number,
	viewportWidth: number,
	onUpdate: (newValue: string) -> (),
	selectorHeight: number,
}

local function ModalBasedSelector(props)
	local onOpen
	if FFlagHideShortcutsOnReportDropdown then
		onOpen = React.useCallback(function()
			props.onMenuOpenChange(true)
		end, { props.onMenuOpenChange })
	end

	local onClose
	if FFlagModalBasedSelectorOnCloseUseCallback then
		onClose = React.useCallback(function()
			ModalBasedSelectorDialogController.unmountModalSelector()
			if FFlagHideShortcutsOnReportDropdown then
				props.onMenuOpenChange(false)
			end
		end, { props.onMenuOpenChange })
	end

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, props.selectorHeight),
		BackgroundTransparency = 1,
	}, {
		ControlButton = React.createElement(View, {
			tag = "size-full stroke-thicker stroke-emphasis radius-medium",
			onActivated = function()
				ModalBasedSelectorDialogController.mountModalSelector(
					props.viewportHeight,
					props.viewportWidth,
					props.selections,
					props.onSelect,
					if FFlagModalBasedSelectorOnCloseUseCallback
						then onClose
						else function()
							ModalBasedSelectorDialogController.unmountModalSelector()
							if FFlagHideShortcutsOnReportDropdown then
								props.onMenuOpenChange(false)
							end
						end,
					onOpen
				)
			end,
		}, {
			Text = React.createElement(Text, {
				Text = props.selectedValue or props.placeholderText,
				tag = "size-full anchor-center-center position-center-center",
				TextTruncate = if FFlagPreferredTextSizeReportMenuButtonTextFix then Enum.TextTruncate.AtEnd else nil,
			}),
			Icon = React.createElement(Icon, {
				name = "icons/actions/truncationExpand",
				AnchorPoint = Vector2.new(1, 0),
				Position = UDim2.new(1, 0, 0, 0),
			}),
		}),
	})
end

return ModalBasedSelector
