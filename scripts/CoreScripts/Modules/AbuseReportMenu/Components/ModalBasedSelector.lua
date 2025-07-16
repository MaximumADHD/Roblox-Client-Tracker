local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local Button = UIBlox.App.Button.Button
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local Icon = Foundation.Icon
local Text = Foundation.Text
local View = Foundation.View

local ModalBasedSelectorDialogController = require(root.Components.ModalBasedSelectorDialogController)

local GetFFlagAddAbuseReportMenuCoreScriptsProvider = require(root.Flags.GetFFlagAddAbuseReportMenuCoreScriptsProvider)

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
	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, props.selectorHeight),
		BackgroundTransparency = 1,
	}, {
		ControlButton = if GetFFlagAddAbuseReportMenuCoreScriptsProvider()
			then React.createElement(View, {
				tag = "size-full stroke-thicker stroke-emphasis radius-medium",
				onActivated = function()
					ModalBasedSelectorDialogController.mountModalSelector(
						props.viewportHeight,
						props.viewportWidth,
						props.selections,
						props.onSelect,
						function()
							ModalBasedSelectorDialogController.unmountModalSelector()
						end
					)
				end,
			}, {
				Text = React.createElement(Text, {
					Text = props.selectedValue or props.placeholderText,
					tag = "size-full anchor-center-center position-center-center",
				}),
				Icon = React.createElement(Icon, {
					name = "icons/actions/truncationExpand",
					AnchorPoint = Vector2.new(1, 0),
					Position = UDim2.new(1, 0, 0, 0),
				}),
			})
			else React.createElement(Button, {
				buttonType = ButtonType.Secondary,
				size = UDim2.new(1, 0, 1, 0),
				anchorPoint = Vector2.new(0.5, 0.5),
				position = UDim2.fromScale(0.5, 0.5),
				text = props.selectedValue or props.placeholderText,
				inputIcon = Images["icons/actions/truncationExpand"],
				onActivated = function()
					ModalBasedSelectorDialogController.mountModalSelector(
						props.viewportHeight,
						props.viewportWidth,
						props.selections,
						props.onSelect,
						function()
							ModalBasedSelectorDialogController.unmountModalSelector()
						end
					)
				end,
			}),
	})
end

return ModalBasedSelector
