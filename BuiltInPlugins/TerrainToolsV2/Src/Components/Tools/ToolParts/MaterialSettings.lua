--[[
	MaterialSettings.lua
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local TextService = game:GetService("TextService")

local UILibrary = Plugin.Packages.UILibrary
local Localizing = require(UILibrary.Localizing)
local withLocalization = Localizing.withLocalization
local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

local TexturePath = "rbxasset://textures/TerrainTools/"
local ToggleOn = TexturePath .. "import_toggleOn.png"
local ToggleOff = TexturePath .. "import_toggleOff.png"

local ToolParts = script.Parent
local Panel = require(ToolParts.Panel)
local LabeledElementPair = require(ToolParts.LabeledElementPair)

local FRAME_BORDER_COLOR1 = Color3.new(227/255, 227/255, 227/255)

local MaterialSettings = Roact.Component:extend(script.Name)

local materialsList = {	--Interface order is defined by order here
	{
		enum = Enum.Material.Grass,
		image = "mtrl_grass.png",
	},
	{
		enum = Enum.Material.Sand,
		image = "mtrl_sand.png",
	},
	{
		enum = Enum.Material.Rock,
		image = "mtrl_rock.png",
	},
	{
		enum = Enum.Material.Water,
		image = "mtrl_water.png",
		forceIgnoreWater = true,
		forceIgnoreWaterTo = false,
	},
	{
		enum = Enum.Material.Ground,
		image = "mtrl_ground.png",
	},
	{
		enum = Enum.Material.Sandstone,
		image = "mtrl_sandstone.png",
	},
	{
		enum = Enum.Material.Slate,
		image = "mtrl_slate.png",
	},
	{
		enum = Enum.Material.Snow,
		image = "mtrl_snow.png",
	},
	{
		enum = Enum.Material.Mud,
		image = "mtrl_mud.png",
	},
	{
		enum = Enum.Material.Brick,
		image = "mtrl_brick.png",
		forceSnapToGrid = true,
	},
	{
		enum = Enum.Material.Concrete,
		image = "mtrl_concrete.png",
	},
	{
		enum = Enum.Material.Glacier,
		image = "mtrl_glacier.png",
	},
	{
		enum = Enum.Material.WoodPlanks,
		image = "mtrl_woodplanks.png",
		forceSnapToGrid = true,
	},
	{
		enum = Enum.Material.CrackedLava,
		image = "mtrl_crackedlava.png",
	},
	{
		enum = Enum.Material.Basalt,
		image = "mtrl_basalt.png",
	},
	{
		enum = Enum.Material.Ice,
		image = "mtrl_ice.png",
	},
	{
		enum = Enum.Material.Salt,
		image = "mtrl_salt.png",
	},
	{
		enum = Enum.Material.Cobblestone,
		image = "mtrl_cobblestone.png",
	},
	{
		enum = Enum.Material.Limestone,
		image = "mtrl_limestone.png",
	},
	{
		enum = Enum.Material.Asphalt,
		image = "mtrl_asphalt.png",
	},
	{
		enum = Enum.Material.LeafyGrass,
		image = "mtrl_leafygrass.png",
	},
	{
		enum = Enum.Material.Pavement,
		image = "mtrl_pavement.png",
	},
}

function MaterialSettings:init()
	self.state = {
		hoverKey = nil
	}
	self.onMouseEnter = function(index)
		self:setState({
			hoverKey = index
		})
	end

end
function MaterialSettings:render()
	return withTheme(function(theme)
		return withLocalization(function(localization)
			local currentTool = self.props.currentTool -- if nil all components are shown
			local autoMaterial = self.props.autoMaterial
			local material = self.props.material
			local layoutOrder = self.props.LayoutOrder

			local toggleOn = theme.toggleTheme.toggleOnImage
			local toggleOff = theme.toggleTheme.toggleOffImage
			local currentHover = self.state.hoverKey

			local materialsTable = {
				Padding = Roact.createElement("UIPadding", {
		        	PaddingRight = UDim.new(0, 5),
		            PaddingLeft = UDim.new(0, 5),
		            PaddingTop = UDim.new(0, 5),
		            PaddingBottom = UDim.new(0, 5),
				}),
				Roact.createElement("UIGridLayout", {
					CellSize = UDim2.new(0, 32, 0, 32),
					CellPadding = UDim2.new(0, 9, 0, 9),
				}),
				LayoutPadding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, 9),
					PaddingBottom = UDim.new(0, 9),
					PaddingLeft = UDim.new(0, 9),
					PaddingRight = UDim.new(0, 9),
				}),
			}

			for i, v in pairs(materialsList) do
				local isHovered = i == currentHover

				local materialName
				local tooltipSize
				if isHovered then
					materialName =  localization:getText("Materials", v.enum.Name)
					tooltipSize = TextService:GetTextSize(materialName, theme.textSize, 0, Vector2.new())
				end
				table.insert(materialsTable,
					Roact.createElement("ImageButton", {
						Image = TexturePath .. v.image,
						[Roact.Event.Activated] = function()
							self.props.setText(v.enum, "Material")
						end,
						BackgroundColor3 = Color3.new(1, 1, 1),
						BorderSizePixel = (material == v.enum) and 2 or 0,
						BorderColor3 = (material == v.enum) and theme.selectionBorderColor or theme.borderColor,

						[Roact.Event.MouseEnter] = function()
							self.onMouseEnter(i)
						end,

						[Roact.Event.MouseLeave] = function()
							self.onMouseEnter(0)
						end,m
					},{
						Tooltip = isHovered and Roact.createElement("TextLabel",{
							BackgroundTransparency = 0,
							BackgroundColor3 = theme.backgroundColor,
							Size = UDim2.new(0, tooltipSize.x + theme.padding * 2, 0, theme.textSize*1.5),
							AnchorPoint = Vector2.new(0.5, 0),
							Position = UDim2.new(0.5, 0, 0, -theme.textSize),

							Text = materialName,
							TextSize = theme.textSize,
							TextColor3 = theme.textColor,
							Font = theme.textFont,
							ZIndex = 5
						})
					})
				)
			end

			return Roact.createElement(Panel, {
				Title = localization:getText("MaterialSettings", "MaterialSettings"),
				Padding = UDim.new(0, 10),
				LayoutOrder = layoutOrder,
			},{
				AutoMaterial = autoMaterial ~= nil and Roact.createElement(LabeledElementPair, {
					Size = UDim2.new(1, 0, 0, 16),
					Text =localization:getText("MaterialSettings", "AutoMaterial"),
					LayoutOrder = 1,
				}, {
					Roact.createElement("ImageButton", {
						Size = UDim2.new(0, 27, 0, 16),
						Image = autoMaterial and toggleOn or toggleOff,
						BackgroundTransparency = 1,
						[Roact.Event.Activated] = function()
							self.props.toggleButton("AutoMaterial")
						end,
					})
				}),

				MaterialSelect = Roact.createElement("Frame", {
					Size = UDim2.new(0, 230, 0, 235),
					Position = UDim2.new(0, 20, 0, 0),
					BackgroundTransparency = 1,
					LayoutOrder = 2,
				}, {
					Roact.createElement("TextLabel", {
						Text = localization:getText("MaterialSettings", "ChooseMaterial"),
						TextColor3 = theme.textColor,
						Size = UDim2.new(1, 0, 0, 16),
						TextXAlignment = Enum.TextXAlignment.Left,
						Position = UDim2.new(0, 20, 0, 0),
						BackgroundTransparency = 1,
					}),
					Roact.createElement("Frame", {
						BackgroundColor3 = theme.backgroundColor,
						Size = UDim2.new(0, 230, 0, 214),
						Position = UDim2.new(0, 20, 0, 20),
						BorderColor3 = theme.borderColor,
					}, materialsTable)
				})
			})
		end)
	end)
end

return MaterialSettings