--[[
	Creates the theme for the plugin.

	Extends the default StudioFrameworkStyles, and also defines values specific
	to components created within this plugin and constant values shared across components.
]]

local Plugin = script.Parent.Parent.Parent

local getFFlagAlignToolFixHelpIconTheming = require(Plugin.Src.Flags.getFFlagAlignToolFixHelpIconTheming)
local getFFlagAlignToolNarrowUI = require(Plugin.Src.Flags.getFFlagAlignToolNarrowUI)

local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)
local Theme = ContextServices.Theme

local StudioFrameworkStyles = require(Framework.StudioUI.StudioFrameworkStyles)
local Common = require(Framework.StudioUI.StudioFrameworkStyles.Common)

local UIFolderData = require(Framework).UIData
local Button = require(UIFolderData.Button.style)

local Colors = require(Framework.Style.Colors)

local Util = require(Framework.Util)
local RefactorFlags = Util.RefactorFlags
local Style = Util.Style
local StyleModifier = Util.StyleModifier
local StyleTable = Util.StyleTable
local StyleValue = Util.StyleValue

local function makeTheme()
	if RefactorFlags.THEME_REFACTOR then
		-- TODO: MOD-314: Update Align tool for DevFramework theme refactor
	else
		return Theme.new(function(theme, getColor)
			local studioFrameworkStyles = StudioFrameworkStyles.new(theme, getColor)
			local common = Common(theme, getColor)
			local button = Button(theme, getColor)

			local selectableButton = StyleTable.new("Button", function()
				local selectedColor = StyleValue.new("SelectedColor", {
					Light = Colors.Gray_Lighter,
					Dark = Colors.Gray_Mid,
				})

				local borderColor = StyleValue.new("BorderColor", {
					Light = Colors.Gray_Light,
					Dark = Colors.Gray,
				})

				local selectable = Style.extend(button.Default, {
					BackgroundStyle = {
						BorderSize = 1,
						Transparency = 1,
					},
					[StyleModifier.Hover] = {
						BackgroundStyle = {
							BorderColor = borderColor:get(theme.Name),
							Color = theme:getColor("Button", "Hover"),
							Transparency = 0,
						},
					},
					[StyleModifier.Selected] = {
						BackgroundStyle = {
							BorderColor = borderColor:get(theme.Name),
							Color = selectedColor:get(theme.Name),
							Transparency = 0,
						},
					},
				})

				return {
					Selectable = selectable,
				}
			end)

			local helpIconImage -- remove with FFlagAlignToolFixHelpIconTheming
			if not getFFlagAlignToolFixHelpIconTheming() then
				-- remove Client\content\textures\Help_Light.png with FFlagAlignToolFixHelpIconTheming
				-- remove Client\content\textures\Help_Dark.png with FFlagAlignToolFixHelpIconTheming
				helpIconImage = StyleValue.new("HelpIconImage", {
					Light = "rbxasset://textures/AlignTool/Help_Light.png",
					Dark = "rbxasset://textures/AlignTool/Help_Dark.png",
				})
			end

			local helpIconColor = StyleValue.new("HelpIconColor", {
				Light = Color3.fromRGB(184, 184, 184),
				Dark = Color3.fromRGB(204, 204, 204),
			})
			local image = StyleTable.new("Image", function()
				local helpIcon = Style.new({
					Image = getFFlagAlignToolFixHelpIconTheming() and "rbxasset://textures/AlignTool/Help.png" or helpIconImage:get(theme.Name),
					Color = getFFlagAlignToolFixHelpIconTheming() and helpIconColor:get(theme.Name) or Color3.new(1, 1, 1),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.fromOffset(14, 14),

					[StyleModifier.Disabled] = {
						Transparency = 0.5,
					},
				})

				return {
					HelpIcon = helpIcon,
				}
			end)

			return {
				Plugin = Style.new({
					LabelColumnWidth = not getFFlagAlignToolNarrowUI() and 80 or nil,
					ContentListItemPadding = not getFFlagAlignToolNarrowUI() and UDim.new(0, 10) or nil,

					-- Size of leading labels "Align In" and "Relative To".
					-- Once localization is added, we should use the width of the
					-- localized text from TextService, clamped to a range.
					SectionLabelSize = not getFFlagAlignToolNarrowUI() and UDim2.fromOffset(80, 20) or nil,

					SectionPadding = getFFlagAlignToolNarrowUI() and UDim.new(0, 15) or nil,
					SectionContentPadding = getFFlagAlignToolNarrowUI() and UDim.new(0, 10) or nil,
					SectionContentPaddingCompact = getFFlagAlignToolNarrowUI() and UDim.new(0, 6) or nil,

					ErrorTextColor = theme:GetColor("ErrorText"),
					WarningTextColor = theme:GetColor("WarningText"),
					InfoTextColor = theme:GetColor("InfoText"),

					MainView = {
						ListItemPadding = UDim.new(0, 10),
						Padding = 10,
						ButtonContainerPadding = not getFFlagAlignToolNarrowUI() and {
							Top = 10,
						} or nil,
						PrimaryButtonSize = getFFlagAlignToolNarrowUI() and UDim2.new(0, 160, 0, 32)
							or UDim2.new(0, 200, 0, 32),
					},

					ModeSection = not getFFlagAlignToolNarrowUI() and {
						ButtonContainerSize = UDim2.fromOffset(175, 55),
						CellPadding = UDim2.fromOffset(5, 0),
						CellSize = UDim2.new(0, 55, 0, 55),
						Size = UDim2.new(1, 0, 0, 60),
					} or nil,

					AxesSection = not getFFlagAlignToolNarrowUI() and {
						Height = 54, -- 22 (space row) + 22 (axes row) + 10 (ContentListItemPadding)
						ListItemPadding = 5,
						Size = UDim2.new(1, 0, 0, 22),
					} or nil,

					RelativeToSection = not getFFlagAlignToolNarrowUI() and {
						ListItemPadding = 5,
						Size = UDim2.new(1, 0, 0, 22),
					} or nil,

					AxesSettingsFragment = not getFFlagAlignToolNarrowUI() and {
						CheckboxListItemPadding = UDim.new(0, 10),
					} or nil,

					RelativeToSetting = getFFlagAlignToolNarrowUI() and {
						HelpIconPadding = UDim.new(0, 2),
					} or nil,

					Checkbox = StyleTable.new("Checkbox", function()
						local Default = Style.extend(common.MainText, {
							Padding = getFFlagAlignToolNarrowUI() and 6 or 5,
							ImageSize = UDim2.new(0, 16, 0, 16),
						})

						return {
							Default = Default,
						}
					end),

					ImageButton = not getFFlagAlignToolNarrowUI() and StyleTable.new("ImageButton", function()
						local Default = Style.extend(common.MainText, {
							BackgroundTransparency = 1,
							Padding = 6,

							Image = {
								Size = UDim2.new(0, 26, 0, 27),
								AnchorPoint = Vector2.new(0.5, 0),
								Position = UDim2.new(0.5, 0, 0, 0),
							},

							Label = {
								Position = UDim2.new(0, 0, 1, -15),
								Size = UDim2.new(1, 0, 0, 15),
							},
						})

						return {
							Default = Default,
						}
					end) or nil,

					LabeledElementList = getFFlagAlignToolNarrowUI() and StyleTable.new("LabeledElementList", function()
						local Default = Style.extend(common.MainText, {
							ItemContentPadding = UDim.new(0, 10),
							ItemPaddingHorizontal = UDim.new(0, 15),
							ItemPaddingVertical = UDim.new(0, 8),
							MaximumLabelWidth = 100,
							SectionPadding = UDim.new(0, 15),
						})

						return {
							Default = Default,
						}
					end) or nil,
				}),

				Framework = StyleTable.extend(studioFrameworkStyles, {
					Button = selectableButton,
					Image = image,
				}),
			}
		end)
	end
end

return makeTheme
