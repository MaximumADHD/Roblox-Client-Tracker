--[[
	A dialog that displays multiple text items in a list.
	Used with the showDialog function.

	Props:
		string Header = The header text to display at the top of this Dialog.
		list Entries = The entries to display in this Dialog.
		table Buttons = {string cancelButtonName, string confirmButtonName}
		bool Wrapped = Controls whether bullet text is wrapped or not
		enum Truncate = Controls whether text is truncated or not
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)

local ContextServices = require(Plugin.Framework.ContextServices)

local UILibrary = require(Plugin.UILibrary)
local withTheme = require(Plugin.Src.Consumers.withTheme)

local BulletPoint = UILibrary.Component.BulletPoint
local BaseDialog = require(Plugin.Src.Components.Dialog.BaseDialog)

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

local ListDialog = Roact.PureComponent:extend("ListDialog")

function ListDialog:DEPRECATED_render(props)
	return withTheme(function(theme)
		local header = props.Header
		local entries = props.Entries
		local buttons = props.Buttons

		local entriesList = {
			Layout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, 4),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
		}

		for i, item in ipairs(entries) do
			table.insert(entriesList, Roact.createElement(BulletPoint, {
				LayoutOrder = i,
				Text = item,
				TextWrapped = props.Wrapped,
				TextTruncate = props.Truncate,
			}))
		end

		return Roact.createElement(BaseDialog, {
			Buttons = buttons,
			OnResult = props.OnResult,
		}, {
			Header = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.SemiBold, {
				Size = UDim2.new(1, -60, 0, 80),
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 10),
				BackgroundTransparency = 1,
				Text = header,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextWrapped = true,
			})),

			Entries = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, -60, 0, 120),
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 100),
			}, entriesList),
		})
	end)
end

function ListDialog:render()
	local props = self.props

	if not FFlagStudioConvertGameSettingsToDevFramework then
		return self:DEPRECATED_render(props)
	end

	local header = props.Header
	local entries = props.Entries
	local buttons = props.Buttons

	local theme = props.Theme:get("Plugin")

	local entriesList = {
		Layout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 4),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	}

	for i, item in ipairs(entries) do
		table.insert(entriesList, Roact.createElement(BulletPoint, {
			LayoutOrder = i,
			Text = item,
			TextWrapped = props.Wrapped,
			TextTruncate = props.Truncate,
		}))
	end

	return Roact.createElement(BaseDialog, {
		Buttons = buttons,
		OnResult = props.OnResult,
	}, {
		Header = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.SemiBold, {
			Size = UDim2.new(1, -60, 0, 80),
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(0.5, 0, 0, 10),
			BackgroundTransparency = 1,
			Text = header,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextWrapped = true,
		})),

		Entries = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -60, 0, 120),
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(0.5, 0, 0, 100),
		}, entriesList),
	})
end

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(ListDialog, {
		Theme = ContextServices.Theme,
	})
end

return ListDialog