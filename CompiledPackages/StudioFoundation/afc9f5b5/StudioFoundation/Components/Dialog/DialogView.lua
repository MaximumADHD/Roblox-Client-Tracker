local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local DialogButtonGroup = require(Main.Components.Dialog.DialogButtonGroup)
local Foundation = require(Packages.Foundation)
local Framework = require(Packages.Framework)
local React = require(Packages.React)
local Types = require(Main.Types)
local useBindable = require(Main.Hooks.useBindable)
local useDialogIconProps = require(Main.Components.Dialog.useDialogIconProps)

local counter = Framework.Util.counter
local e = React.createElement

type Bindable<T> = Foundation.Bindable<T>
type DialogType = Types.DialogType
type DialogAction = Types.DialogAction

export type Props = {
	type: DialogType, -- Not bindable since Icon's name and style properties aren't bindable
	title: Bindable<string?>,
	description: Bindable<string?>,
	image: Bindable<string?>,
	showIndeterminateProgressIndicator: Bindable<boolean?>,

	-- Action properties aren't bindable since Button's text and onActivated properties aren't bindable
	primaryAction: DialogAction?,
	secondaryAction: DialogAction?,
	tertiaryAction: DialogAction?,

	-- Only meant to be used by custom dialogs; defaults to 350px
	width: number?,

	onAbsoluteSizeChanged: ((rbx: GuiObject) -> ())?, -- Not bindable since View's onAbsoluteSizeChanged property isn't bindable

	children: React.Node?,
}

local function DialogView(props: Props)
	local count = counter()
	local tokens = Foundation.Hooks.useTokens()

	local iconProps = useDialogIconProps(tokens, props.type)

	local imageBinding = useBindable(props.image)
	local hasImageBinding = React.useMemo(function()
		return imageBinding:map(function(image)
			return image ~= nil and image ~= ""
		end)
	end, { imageBinding })
	local hasIconBinding = React.useMemo(function()
		return hasImageBinding:map(function(hasImage)
			return not hasImage
		end)
	end, { hasImageBinding })
	local showIndeterminateProgressIndicatorBinding = useBindable(props.showIndeterminateProgressIndicator)

	local titleBinding = useBindable(props.title)
	local hasTitleBinding = React.useMemo(function()
		return titleBinding:map(function(title)
			return title ~= nil and title ~= ""
		end)
	end, { titleBinding })

	local descriptionBinding = useBindable(props.description)
	local hasDescriptionBinding = React.useMemo(function()
		return descriptionBinding:map(function(description)
			return description ~= nil and description ~= ""
		end)
	end, { descriptionBinding })

	return e(Foundation.View, {
		tag = "component-dialog-view col flex-y-between gap-small auto-y padding-x-large padding-y-medium bg-surface-200",
		onAbsoluteSizeChanged = props.onAbsoluteSizeChanged,
		testId = "--dialog",
		-- TODO (STUDIOPLAT-41652): Fix dialog sizing/positioning logic with soft attachments in PanelsManager
		-- This will allow us to remove this hardcoded width and fallback to styling, which is deferred
		Size = UDim2.fromOffset(props.width or 350, 0),
	}, {
		IconAndTextRow = e(Foundation.View, {
			tag = "row flex-x-between items-start gap-medium size-full-0 auto-y padding-bottom-medium",
			LayoutOrder = count(),
		}, {
			Image = e(Foundation.Image, {
				Image = imageBinding,
				Visible = hasImageBinding,
				Size = UDim2.fromOffset(36, 36),
				LayoutOrder = count(),
				testId = "--dialog-thumbnail",
			}, {
				UICorner = e("UICorner", {
					CornerRadius = UDim.new(0, 4),
				}),
			}),
			Icon = if iconProps
				then e(Foundation.Icon, {
					name = iconProps.icon,
					size = Foundation.Enums.IconSize.Large,
					style = iconProps.color,
					variant = Foundation.Enums.IconVariant.Filled,
					Visible = hasIconBinding,
					LayoutOrder = count(),
					testId = "--dialog-icon",
				})
				else nil,
			TextColumn = e(Foundation.View, {
				tag = "col fill gap-medium auto-y",
				LayoutOrder = count(),
			}, {
				Title = e(Foundation.Text, {
					tag = "size-full-0 auto-y text-title-medium text-wrap text-align-x-left text-align-y-center",
					Text = titleBinding,
					Visible = hasTitleBinding,
					LayoutOrder = count(),
					testId = "--dialog-title",
				}),
				Description = e(Foundation.Text, {
					tag = "grow size-full-0 auto-y text-body-small text-wrap text-align-x-left text-align-y-top",
					Text = descriptionBinding,
					Visible = hasDescriptionBinding,
					LayoutOrder = count(),
					testId = "--dialog-description",
				}, {
					ProgressSpinner = e(Foundation.Progress, {
						shape = Foundation.Enums.ProgressShape.Circle,
						size = Foundation.Enums.ProgressSize.Small,
						Visible = showIndeterminateProgressIndicatorBinding,
						Position = UDim2.fromOffset(-24, 1),
						testId = "--dialog-progress",
					}),
					SpinnerPadding = e("UIPadding", {
						PaddingLeft = showIndeterminateProgressIndicatorBinding:map(function(show)
							return if show then UDim.new(0, 24) else UDim.new(0, 0)
						end),
					}),
				}),
				Children = if React.Children.count(props.children) > 0
					then e(Foundation.View, {
						tag = "size-full-0 auto-y col gap-medium padding-right-small",
						LayoutOrder = count(),
						testId = "--dialog-children",
					}, props.children)
					else nil,
			}),
		}),
		ButtonGroup = e(DialogButtonGroup, {
			LayoutOrder = count(),
			primaryAction = props.primaryAction,
			secondaryAction = props.secondaryAction,
			tertiaryAction = props.tertiaryAction,
		}),
	})
end

return React.memo(DialogView)
