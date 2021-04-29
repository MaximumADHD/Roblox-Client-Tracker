--[[
	Creates the theme for the plugin.

	Extends the default StudioFrameworkStyles, and also defines values specific
	to components created within this plugin and constant values shared across components.
]]

local Plugin = script.Parent.Parent.Parent

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

			local helpIconColor = StyleValue.new("HelpIconColor", {
				Light = Color3.fromRGB(184, 184, 184),
				Dark = Color3.fromRGB(204, 204, 204),
			})
			local image = StyleTable.new("Image", function()
				local helpIcon = Style.new({
					Image = "rbxasset://textures/AlignTool/Help.png",
					Color = helpIconColor:get(theme.Name),
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
					SectionPadding = UDim.new(0, 15),
					SectionContentPadding = UDim.new(0, 10),
					SectionContentPaddingCompact = UDim.new(0, 6),

					ErrorTextColor = theme:GetColor("ErrorText"),
					WarningTextColor = theme:GetColor("WarningText"),
					InfoTextColor = theme:GetColor("InfoText"),

					MainView = {
						ListItemPadding = UDim.new(0, 10),
						Padding = 10,
						PrimaryButtonSize = UDim2.new(0, 160, 0, 32),
					},

					RelativeToSetting = {
						HelpIconPadding = UDim.new(0, 2),
					},

					Checkbox = StyleTable.new("Checkbox", function()
						local Default = Style.extend(common.MainText, {
							Padding = 6,
							ImageSize = UDim2.new(0, 16, 0, 16),
						})

						return {
							Default = Default,
						}
					end),

					LabeledElementList = StyleTable.new("LabeledElementList", function()
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
					end),
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
