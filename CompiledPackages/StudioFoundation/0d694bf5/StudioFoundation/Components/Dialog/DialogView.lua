local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local DialogButtonGroup = require(Main.Components.Dialog.DialogButtonGroup)
local Foundation = require(Packages.Foundation)
local Framework = require(Packages.Framework)
local React = require(Packages.React)
local Types = require(Main.Types)
local getFFlagStudioFoundationOpenPlaceDialogFixes =
	require(Main.SharedFlags.getFFlagStudioFoundationOpenPlaceDialogFixes)
local useBindable = require(Main.Hooks.useBindable)
local useDialogIconProps = require(Main.Components.Dialog.useDialogIconProps)

local FFlagStudioFoundationDialogDeviceSimFixes =
	require(Main.SharedFlags.getFFlagStudioFoundationDialogDeviceSimFixes)()

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

	isContentFullBleed: boolean?,
	tertiaryActionVariant: ("Standard" | "Utility")?,

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
	local progressOffsetPosition, progressOffsetPaddingBinding
	if getFFlagStudioFoundationOpenPlaceDialogFixes() then
		-- A value of `nil` defaults to `true` for the Visible property; so coerce `nil` to `false`
		showIndeterminateProgressIndicatorBinding = React.useMemo(function()
			return showIndeterminateProgressIndicatorBinding:map(function(show)
				return if show ~= nil then show else false
			end)
		end, { showIndeterminateProgressIndicatorBinding })

		progressOffsetPosition, progressOffsetPaddingBinding = React.useMemo(function()
			-- `Size_400` is the size of the Small-sized circular Progress, and we want an `Small` gap after that
			local offset = tokens.Size.Size_400 + tokens.Gap.Small
			local position = UDim2.fromOffset(-offset, 0)
			local paddingBinding = showIndeterminateProgressIndicatorBinding:map(function(show)
				return UDim.new(0, if show then offset else 0)
			end)
			return position, paddingBinding
		end, { tokens :: unknown, showIndeterminateProgressIndicatorBinding })
	end

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

	-- Full-bleed dialogs let their custom content own the edge-to-edge layout.
	return e(Foundation.View, {
		tag = {
			["component-dialog-view col flex-y-between auto-y bg-surface-200"] = true,
			["gap-small padding-x-large padding-y-medium"] = not FFlagStudioFoundationDialogDeviceSimFixes
				or not props.isContentFullBleed,
		},
		onAbsoluteSizeChanged = props.onAbsoluteSizeChanged,
		testId = "--dialog",
		-- TODO (STUDIOPLAT-41652): Fix dialog sizing/positioning logic with soft attachments in PanelsManager
		-- This will allow us to remove this hardcoded width and fallback to styling, which is deferred
		Size = UDim2.fromOffset(props.width or 350, 0),
	}, {
		IconAndTextRow = e(Foundation.View, {
			tag = {
				["row flex-x-between items-start gap-medium size-full-0 auto-y"] = true,
				["padding-bottom-medium"] = not FFlagStudioFoundationDialogDeviceSimFixes
					or not props.isContentFullBleed,
			},
			LayoutOrder = count(),
		}, {
			Image = e(
				Foundation.Image,
				{
					tag = if getFFlagStudioFoundationOpenPlaceDialogFixes() then "radius-small size-900-900" else nil,
					Image = imageBinding,
					Visible = hasImageBinding,
					Size = if not getFFlagStudioFoundationOpenPlaceDialogFixes() then UDim2.fromOffset(36, 36) else nil,
					LayoutOrder = count(),
					testId = "--dialog-thumbnail",
				},
				if not getFFlagStudioFoundationOpenPlaceDialogFixes()
					then {
						UICorner = e("UICorner", {
							CornerRadius = UDim.new(0, 4),
						}),
					}
					else nil
			),
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
						Position = if getFFlagStudioFoundationOpenPlaceDialogFixes()
							then progressOffsetPosition
							else UDim2.fromOffset(-24, 1),
						testId = "--dialog-progress",
					}),
					SpinnerPadding = e("UIPadding", {
						PaddingLeft = if getFFlagStudioFoundationOpenPlaceDialogFixes()
							then progressOffsetPaddingBinding
							else showIndeterminateProgressIndicatorBinding:map(function(show)
								return if show then UDim.new(0, 24) else UDim.new(0, 0)
							end),
					}),
				}),
				Children = if React.Children.count(props.children) > 0
					then e(Foundation.View, {
						tag = {
							["size-full-0 auto-y col gap-medium"] = true,
							["padding-right-small"] = not FFlagStudioFoundationDialogDeviceSimFixes
								or not props.isContentFullBleed,
						},
						LayoutOrder = count(),
						testId = "--dialog-children",
					}, props.children)
					else nil,
			}),
		}),
		ButtonGroup = if FFlagStudioFoundationDialogDeviceSimFixes and props.isContentFullBleed
			then e(Foundation.View, {
				LayoutOrder = count(),
				tag = "col size-full-0 auto-y",
			}, {
				-- Restore the standard separation and token padding around full-bleed dialog actions.
				Divider = e(Foundation.Divider, {
					LayoutOrder = count(),
				}),
				Padding = e(Foundation.View, {
					LayoutOrder = count(),
					tag = "size-full-0 auto-y padding-x-large padding-y-large",
				}, {
					Actions = e(DialogButtonGroup, {
						primaryAction = props.primaryAction,
						secondaryAction = props.secondaryAction,
						tertiaryAction = props.tertiaryAction,
						tertiaryActionVariant = props.tertiaryActionVariant,
					}),
				}),
			})
			else e(DialogButtonGroup, {
				LayoutOrder = count(),
				primaryAction = props.primaryAction,
				secondaryAction = props.secondaryAction,
				tertiaryAction = props.tertiaryAction,
				tertiaryActionVariant = FFlagStudioFoundationDialogDeviceSimFixes and props.tertiaryActionVariant
					or nil,
			}),
	})
end

return React.memo(DialogView)
