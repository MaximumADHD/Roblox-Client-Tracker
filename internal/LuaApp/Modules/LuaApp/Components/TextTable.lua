local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local Immutable = require(Modules.Common.Immutable)
local LocalizedTextLabel = require(Modules.LuaApp.Components.LocalizedTextLabel)

local TextTable = Roact.Component:extend("TextTable")

local function fixLayout(rbx)
	if rbx then
		spawn(function()
			rbx:ApplyLayout()
		end)
	end
end

function TextTable:render()
	local size = self.props.Size
	local layoutOrder = self.props.LayoutOrder
	local fillDirection = self.props.FillDirection

	local majorAxisData = self.props.table
	local majorAxisProps = self.props.majorAxisProps or {}
	local minorAxisProps = self.props.minorAxisProps or {}

	local majorElements = {
		Roact.createElement("UITableLayout", {
			FillDirection = fillDirection,
			MajorAxis = Enum.TableMajorAxis.RowMajor,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			FillEmptySpaceColumns = true,
			FillEmptySpaceRows = true,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim2.new(0, 0, 0, 0),
			[Roact.Ref] = fixLayout,
		}),
	}

	for i, majorAxis in ipairs(majorAxisData) do
		local minorElements = {}

		for j, text in ipairs(majorAxis) do
			local component = type(text) == "table" and LocalizedTextLabel or "TextLabel"
			local props = Immutable.JoinDictionaries({
				Text = text,
				BackgroundTransparency = 1,
				LayoutOrder = j,
			}, majorAxisProps[i] or {}, minorAxisProps[j] or {})

			minorElements["MinorElement " .. j] = Roact.createElement(component, props)
		end

		majorElements["MajorElement " .. i] = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = i,
		}, minorElements)
	end

	return Roact.createElement("Frame", {
		LayoutOrder = layoutOrder,
		Size = size,
		BackgroundTransparency = 1,
	}, majorElements)
end

return TextTable