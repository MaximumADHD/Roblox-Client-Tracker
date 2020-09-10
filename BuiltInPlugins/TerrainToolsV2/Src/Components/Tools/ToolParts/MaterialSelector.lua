--[[
	Materials grid

Props:
	LayoutOrder : number = 1
	material : Enum.Material - Which material is currently selected
	setMaterial : (Enum.Material) => void - Callback to select a material
	AllowAir : boolean = false - Whether to show Air in the materials grid
]]

local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local withLocalization = not FFlagTerrainToolsUseDevFramework and UILibrary.Localizing.withLocalization or nil
local withTheme = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.Theming).withTheme or nil

local TextService = game:GetService("TextService")

local TexturePath = "rbxasset://textures/TerrainTools/"
local MaterialDetails = require(Plugin.Src.Util.MaterialDetails)

local materialsOrder
--[[
	Materials are sorted in alphabetical order, but air is last
	Enum.SortOrder.Name would put air first
	So instead we sort this list with air explicitly last, and use Enum.SortOrder.LayoutOrder
]]
materialsOrder = {
	Enum.Material.Asphalt,  Enum.Material.Basalt,      Enum.Material.Brick,      Enum.Material.Cobblestone,
	Enum.Material.Concrete, Enum.Material.CrackedLava, Enum.Material.Glacier,    Enum.Material.Grass,
	Enum.Material.Ground,   Enum.Material.Ice,         Enum.Material.LeafyGrass, Enum.Material.Limestone,
	Enum.Material.Mud,      Enum.Material.Pavement,    Enum.Material.Rock,       Enum.Material.Salt,
	Enum.Material.Sand,     Enum.Material.Sandstone,   Enum.Material.Slate,      Enum.Material.Snow,
	Enum.Material.Water,    Enum.Material.WoodPlanks,
}

local MaterialSelector = Roact.PureComponent:extend(script.Name)
local MaterialTooltip = Roact.PureComponent:extend("MaterialTooltip")
local MaterialButton = Roact.PureComponent:extend("MaterialButton")

do
	function MaterialTooltip:init()
		self.ref = Roact.createRef()
	end

	function MaterialTooltip:didMount()
		if self.ref.current then
			local tooltip = self.ref.current

			local pos = tooltip.AbsolutePosition
			local size = tooltip.AbsoluteSize

			local containerPosition = tooltip.Parent.Parent.AbsolutePosition
			local containerSize = tooltip.Parent.Parent.AbsoluteSize

			-- Nil if we don't need to update the tooltip
			-- Else is what the offset should be so the tooltip is on screen
			local newOffset

			if pos.x < containerPosition.x then
				newOffset = containerPosition.x - pos.x
			elseif pos.x + size.x > containerPosition.x + containerSize.x then
				newOffset = (containerPosition.x + containerSize.x)  - (pos.x + size.x) - 1
			end

			if newOffset then
				local p = tooltip.Position
				tooltip.Position = UDim2.new(p.X.Scale, newOffset, p.Y.Scale, p.Y.Offset)
			end
		end
	end

	function MaterialTooltip:_render(theme)
		local materialName = self.props.MaterialName
		local tooltipSize = TextService:GetTextSize(materialName, theme.textSize, 0, Vector2.new())

		return Roact.createElement("TextLabel", {
			BackgroundTransparency = 0,
			BackgroundColor3 = theme.backgroundColor,
			Size = UDim2.new(0, tooltipSize.x + theme.padding * 2, 0, theme.textSize * 1.5),
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(0.5, 0, 0, -theme.textSize),

			Text = materialName,
			TextSize = theme.textSize,
			TextColor3 = theme.textColor,
			Font = theme.textFont,
			ZIndex = 5,

			[Roact.Ref] = self.ref,
		})
	end

	function MaterialTooltip:render()
		if FFlagTerrainToolsUseDevFramework then
			return self:_render(self.props.Theme:get())
		else
			return withTheme(function(theme)
				return self:_render(theme)
			end)
		end
	end

	if FFlagTerrainToolsUseDevFramework then
		ContextServices.mapToProps(MaterialTooltip, {
			Theme = ContextItems.UILibraryTheme,
		})
	end

	function MaterialButton:init(props)
		self.onMouseEnter = function()
			self.props.OnMouseEnter(self.props.Material)
		end

		self.onMouseLeave = function()
			self.props.OnMouseLeave(self.props.Material)
		end

		self.selectMaterial = function()
			self.props.SelectMaterial(self.props.Material)
		end
	end

	function MaterialButton:_render(theme, localization)
		local props = self.props
		local layoutOrder = props.LayoutOrder
		local material = props.Material

		local isSelected = props.IsSelected
		local isHovered = props.IsHovered

		local image = MaterialDetails[material].image

		local materialName
		if isHovered then
			materialName = localization:getText("Materials", material.Name)
		end

		return Roact.createElement("ImageButton", {
			LayoutOrder = layoutOrder,
			Image = TexturePath .. image,
			BackgroundColor3 = theme.backgroundColor,
			BorderSizePixel = isSelected and 2 or 0,
			BorderColor3 = isSelected and theme.selectionBorderColor or theme.borderColor,

			[Roact.Event.MouseEnter] = self.onMouseEnter,
			[Roact.Event.MouseLeave] = self.onMouseLeave,
			[Roact.Event.Activated] = self.selectMaterial,
		}, {
			Tooltip = isHovered and Roact.createElement(MaterialTooltip, {
				MaterialName = materialName,
			}),
		})
	end

	function MaterialButton:render()
		if FFlagTerrainToolsUseDevFramework then
			return self:_render(self.props.Theme:get(), self.props.Localization:get())
		else
			return withLocalization(function(localization)
				return withTheme(function(theme)
					return self:_render(theme, localization)
				end)
			end)
		end
	end

	if FFlagTerrainToolsUseDevFramework then
		ContextServices.mapToProps(MaterialButton, {
			Theme = ContextItems.UILibraryTheme,
			Localization = ContextItems.UILibraryLocalization,
		})
	end
end

function MaterialSelector:init(props)
	self.state = {
		hoverMaterial = nil
	}

	self.onMouseEnterMaterial = function(material)
		self:setState({
			hoverMaterial = material
		})
	end

	self.onMouseLeaveMaterial = function(material)
		self:setState({
			hoverMaterial = Roact.None,
		})
	end

	self.selectMaterial = function(material)
		self.props.setMaterial(material)
	end
end

function MaterialSelector:_render(theme, localization)
	local layoutOrder = self.props.LayoutOrder or 1
	local material = self.props.material

	local allowAir = self.props.AllowAir

	local materialsTable = {
		UIGridLayout = Roact.createElement("UIGridLayout", {
			CellSize = UDim2.new(0, 32, 0, 32),
			CellPadding = UDim2.new(0, 9, 0, 9),
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		LayoutPadding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 9),
			PaddingBottom = UDim.new(0, 9),
			PaddingLeft = UDim.new(0, 9),
			PaddingRight = UDim.new(0, 9),
		}),
	}

	local function createMaterialButton(index, materialEnum)
		materialsTable[materialEnum.Name] = Roact.createElement(MaterialButton, {
			LayoutOrder = index,
			Material = materialEnum,
			IsHovered = materialEnum == self.state.hoverMaterial,
			IsSelected = material == materialEnum,

			OnMouseEnter = self.onMouseEnterMaterial,
			OnMouseLeave = self.onMouseLeaveMaterial,
			SelectMaterial = self.selectMaterial,
		})
	end

	for index, materialEnum in ipairs(materialsOrder) do
		createMaterialButton(index, materialEnum)
	end

	if allowAir then
		createMaterialButton(#materialsOrder + 1, Enum.Material.Air)
	end

	return Roact.createElement("Frame", {
		LayoutOrder = layoutOrder,
		Size = UDim2.new(0, 230, 0, 235),
		Position = UDim2.new(0, 20, 0, 0),
		BackgroundTransparency = 1,
	}, {
		Label = Roact.createElement("TextLabel", {
			Text =  self.props.Label or localization:getText("MaterialSettings", "ChooseMaterial"),
			TextColor3 = theme.textColor,
			Size = UDim2.new(1, 0, 0, 16),
			TextXAlignment = Enum.TextXAlignment.Left,
			Position = UDim2.new(0, 20, 0, 0),
			BackgroundTransparency = 1,
		}),

		Container = Roact.createElement("Frame", {
			BackgroundColor3 = theme.backgroundColor,
			Size = UDim2.new(0, 230, 0, 214),
			Position = UDim2.new(0, 20, 0, 20),
			BorderColor3 = theme.borderColor,
		}, materialsTable)
	})
end

function MaterialSelector:render()
	if FFlagTerrainToolsUseDevFramework then
		return self:_render(self.props.Theme:get(), self.props.Localization:get())

	else
		return withLocalization(function(localization)
			return withTheme(function(theme)
				return self:_render(theme, localization)
			end)
		end)
	end
end

if FFlagTerrainToolsUseDevFramework then
	ContextServices.mapToProps(MaterialSelector, {
		Theme = ContextItems.UILibraryTheme,
		Localization = ContextItems.UILibraryLocalization,
	})
end

return MaterialSelector
