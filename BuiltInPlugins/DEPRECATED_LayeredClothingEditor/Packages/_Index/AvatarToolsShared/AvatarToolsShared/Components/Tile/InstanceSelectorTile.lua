--[[
	An extension of Tile, where clicking on it will activate an InstanceSelector.

	Required Props:
		callback OnInstanceSelectorValidSelection: function called when user selects a valid instance
		callback OnInstanceSelectorInvalidSelection: function called when user selected an invalid instance
		callback OnClickAddNewInstance: function called when user clicks the tile
		callback IsSelectedInstanceValid: function called to check if the selected instance is valid.

	Optional Props:
		string Image: id/url of the tile image
		UDim2 ImageSize: image size for the tile image.
		number LayoutOrder: render order of component in layout
]]

local Library = script.Parent.Parent.Parent
local Packages = Library.Parent
local Roact = require(Packages.Roact)

local Resources = require(Library.Resources)

local Components = Library.Components
local InstanceSelector = require(Components.InstanceSelector)
local Tile = require(Components.Tile)

local Framework = require(Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext


local Util = Framework.Util
local Typecheck = Util.Typecheck

local COMPONENT_NAME = "InstanceSelectorTile"
local InstanceSelectorTile = Roact.PureComponent:extend(COMPONENT_NAME)
Typecheck.wrap(InstanceSelectorTile, script)

InstanceSelectorTile.defaultProps = {
	LayoutOrder = 1,
}

function InstanceSelectorTile:init()
	self.state = {
		isSelectorActive = false,
	}

	self.onInstanceSelectorValidSelection = function(instance)
		self:setState({
			isSelectorActive = false,
		})
		if self.props.OnInstanceSelectorValidSelection then
			self.props.OnInstanceSelectorValidSelection(instance)
		end
	end

	self.onInstanceSelectorInvalidSelection = function(instance)
		self:setState({
			isSelectorActive = false,
		})
		if self.props.OnInstanceSelectorInvalidSelection then
			self.props.OnInstanceSelectorInvalidSelection(instance)
		end
	end

	self.onClickAddNewInstance = function()
		self:setState({
			isSelectorActive = true,
		})
		if self.props.OnClickAddNewInstance then
			self.props.OnClickAddNewInstance()
		end
	end
end

function InstanceSelectorTile:render()
	local props = self.props
	local state = self.state

	local localization = props.Localization
	local imageSize = props.ImageSize
	local image = props.Image
	local layoutOrder = props.LayoutOrder

	local isSelectedInstanceValid = props.IsSelectedInstanceValid

	local isSelectorActive = state.isSelectorActive

	return Roact.createFragment({
		AddNewTile = Roact.createElement(Tile, {
			OnClick = self.onClickAddNewInstance,
			Text = localization:getProjectText(Resources.LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "AddNew"),
			IsOn = false,
			Image = image,
			ImageSize = imageSize,
			LayoutOrder = layoutOrder,
		}),
		InstanceSelector = isSelectorActive and Roact.createElement(InstanceSelector,
		{
			IsSelectedInstanceValid = isSelectedInstanceValid,
			OnValidSelection = self.onInstanceSelectorValidSelection,
			OnInvalidSelection = self.onInstanceSelectorInvalidSelection,
		}),
	})
end

InstanceSelectorTile = withContext({
	Localization = ContextServices.Localization,
})(InstanceSelectorTile)

return InstanceSelectorTile