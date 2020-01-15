--[[
	EditSettings.lua
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local UILibrary = Plugin.Packages.UILibrary
local Localizing = require(UILibrary.Localizing)
local withLocalization = Localizing.withLocalization
local Theming = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theming.withTheme

local ToolParts = script.Parent
local Panel = require(ToolParts.Panel)
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local LabeledToggle = require(ToolParts.LabeledToggle)

local FFlagTerrainToolsRefactor = game:GetFastFlag("TerrainToolsRefactor")

local EditSettings = Roact.PureComponent:extend(script.Name)

if FFlagTerrainToolsRefactor then
function EditSettings:render()
	return withLocalization(function(localization)
		return Roact.createElement(Panel, {
			Title = localization:getText("EditSettings", "EditSettings"),
			Padding = UDim.new(0, 12),
			LayoutOrder = self.props.LayoutOrder,
		}, {
			MergeEmptyToggle = Roact.createElement(LabeledToggle, {
				LayoutOrder = 1,
				Text = localization:getText("EditSettings", "MergeEmpty"),
				IsOn = self.props.mergeEmpty,
				SetIsOn = self.props.setMergeEmpty,
			}),
		})
	end)
end

else
function EditSettings:render()
	local toggleButton = self.props.toggleButton
	local mergeEmpty = self.props.mergeEmpty

	return withTheme(function(theme)
		return withLocalization(function(localization)
			local toggleTheme = theme.toggleTheme
			return Roact.createElement(Panel, {
				Title = localization:getText("EditSettings", "EditSettings"),
				Padding = UDim.new(0, 12),
				LayoutOrder = layoutOrder,
			}, {
				Roact.createElement(LabeledElementPair, {
					Size = UDim2.new(1, 0, 0, 22),
					Text = localization:getText("EditSettings", "MergeEmpty"),
					Padding = UDim.new(0, 4),
					SizeToContent = true,
				}, {
					Roact.createElement("ImageButton", {
						Size = UDim2.new(0, 27, 0, 16),
						Image = mergeEmpty and toggleTheme.toggleOnImage or toggleTheme.toggleOffImage,
						BackgroundTransparency = 1,
						[Roact.Event.Activated] = function()
							self.props.toggleButton("MergeEmpty")
						end,
					}),
				}),
			})
		end)
	end)
end
end

return EditSettings
