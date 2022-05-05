--!strict
local Plugin = script:FindFirstAncestor("Toolbox")

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)

local Dash = Framework.Dash
local Util = Plugin.Core.Util
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local Constants = require(Util.Constants)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Images = require(Plugin.Core.Util.Images)
local Category = require(Plugin.Core.Types.Category)
local HomeTypes = require(Plugin.Core.Types.HomeTypes)

local DropdownMenu = require(Plugin.Core.Components.DropdownMenu)

local CategoryDropDown = Roact.PureComponent:extend("CategoryDropDown")

type _InteralCategoryDropDownProps = {
	Localization: any,
}

type CategoryDropDownProps = _InteralCategoryDropDownProps & {
	LayoutOrder: number?,
	OnCategorySelect: (category: HomeTypes.Subcategory?) -> nil,
	SelectedCategory: string?,
	Subcategories: { [string]: HomeTypes.Subcategory },
	AudioType: string,
}

type CategoryDropDownState = {
	selectedIndex: number,
}

type DropDownItems = {
	[number]: {
		name: string,
		subcategory: HomeTypes.Subcategory?,
	},
}

function CategoryDropDown:init()
	self.state = { selectedIndex = 1 }
end

function CategoryDropDown:didUpdate(prevProps: CategoryDropDownProps)
	local props = self.props
	if props.AudioType ~= prevProps.AudioType then
		self:setState({ selectedIndex = 1 })
	end
end

function CategoryDropDown:render()
	local props: CategoryDropDownProps = self.props
	local state: CategoryDropDownState = self.state

	local localization = props.Localization
	local layoutOrder = props.LayoutOrder
	local onCategorySelect = props.OnCategorySelect
	local audioType = props.AudioType
	local selectedIndex = state.selectedIndex

	local subcategory = if Category.MUSIC.name == audioType
		then props.Subcategories["music"]
		else props.Subcategories["sound-effect"]

	local dropDownItems: DropDownItems = {}

	table.insert(dropDownItems, {
		name = if Category.MUSIC.name == audioType
			then localization:getText("Audio.Music", "Browse")
			else localization:getText("Audio.SoundEffect", "Browse"),
	})

	for key, sub in pairs(subcategory.children) do
		local translationKey = if Category.MUSIC.name == audioType
			then "Audio.Music.Genre"
			else "Audio.SoundEffect.Category"

		if not sub.hidden then
			local item = { name = localization:getText(translationKey, key), subcategory = sub }
			table.insert(dropDownItems, item)
		end
	end

	local onItemClicked = function(index: number)
		self:setState({ selectedIndex = index })
		onCategorySelect(dropDownItems[index].subcategory)
	end

	return Roact.createElement(DropdownMenu, {
		Size = UDim2.new(1, 0, 0, 40),
		visibleDropDownCount = 5,
		selectedDropDownIndex = selectedIndex,

		fontSize = Constants.FONT_SIZE_LARGE,
		items = dropDownItems,
		onItemClicked = onItemClicked,

		setDropdownHeight = function()
			return 152
		end,

		LayoutOrder = layoutOrder,
	})
end

CategoryDropDown = withContext({
	Localization = ContextServices.Localization,
})(CategoryDropDown)

return CategoryDropDown
