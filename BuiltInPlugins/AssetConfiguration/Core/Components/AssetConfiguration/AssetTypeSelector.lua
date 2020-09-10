--[[
	AssetTypeSelector
	Creates a dropdown menu populated with asset types.
	Returns the given asset type to onAssetTypeSelected

	Necessary Props:
		width number, size in offset for the dropdown width
		height number, size in offset for the dropdown height
		{
			string name;
			boolean selectable;
			Enum.AssetType | nil type;
		}[] items
		Position UDim2, position of the dropdown
		onAssetTypeSelected callback, returns a Enum.AssetType when a type of asset has been selected
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextHelper = require(Util.ContextHelper)

local withTheme = ContextHelper.withTheme

local Components = Plugin.Core.Components
local DropdownMenu = require(Components.DropdownMenu)

local AssetTypeSelector = Roact.PureComponent:extend("AssetTypeSelector")

function AssetTypeSelector:init(props)
	self.onItemClicked = function(index)
		self:setState({
			dropDownIndex = index,
		})

		-- For now, only plugin will skip assetTypeSelection
		if (self.props.assetTypeEnum == Enum.AssetType.Plugin or
			self.props.assetTypeEnum == Enum.AssetType.Animation) then
			if self.props.onAssetTypeSelected then
				self.props.onAssetTypeSelected(self.props.assetTypeEnum)
			end
		else
			if self.props.onAssetTypeSelected then
				local item = self.props.items[index]
				if item and item.type then
					self.props.onAssetTypeSelected(item.type)
				end
			end
		end
	end

	self.onItemClicked(self:getFirstSelectableIndex())
end

function AssetTypeSelector:getFirstSelectableIndex()
	for i = 1, #self.props.items do
		if self.props.items[i].selectable then
			return i
		end
	end
end

function AssetTypeSelector:render()
	return withTheme(function(theme)
		local props = self.props
		local state = self.state

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, props.width, 0, props.height),
			Position = props.Position,
			Active = true,
		}, {
			Title = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 0, 0, -(4 + 24)),
				Size = UDim2.new(1, 0, 0, 24),
				TextColor3 = theme.typeSelection.selector.title,
				TextSize = 16,
				Font = Constants.FONT,
				Text = "Choose asset type",
				TextXAlignment = Enum.TextXAlignment.Left,
			}),

			Dropdown = Roact.createElement(DropdownMenu, {
				Position = UDim2.new(0.5, -props.width/2, 0, 0),
				Size = UDim2.new(1, 0, 1, 0),
				selectedDropDownIndex = state.dropDownIndex,
				visibleDropDOwnCount = 5,
				items = self.props.items,
				rowHeight = 24,
				fontSize = 20,
				onItemClicked = self.onItemClicked,
			}),

			Description = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 0, 1, 0),
				Size = UDim2.new(1, 0, 0, 18),
				TextColor3 = theme.typeSelection.selector.description,
				TextSize = 12,
				Font = Constants.FONT,
				Text = "Once published, this model can be shared in Marketplace",
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
		})
	end)
end

return AssetTypeSelector