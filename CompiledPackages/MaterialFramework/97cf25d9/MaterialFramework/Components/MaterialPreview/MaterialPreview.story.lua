--[[
	Storybook gallery for MaterialPreview. Feeds the preview material specs directly
	(base material + tint color) to show a representative spread of materials and the
	supported geometries -- no terrain involved, since the preview is material-agnostic.
]]
local Main = script:FindFirstAncestor("MaterialFramework")
local Packages = Main.Parent
local React = require(Packages.React)

local Foundation = require(Packages.Foundation)
local View = Foundation.View
local Text = Foundation.Text

local Enums = require(Main.Enums)
local MaterialPreview = require(Main.Components.MaterialPreview)
local getMaterialColor = require(Main.Util.getMaterialColor)

local GeometryType = Enums.MaterialPreviewGeometryType

-- A representative spread, including Metal (metallic -> the preview enables a sky).
local GALLERY_MATERIALS: { Enum.Material } = {
	Enum.Material.Grass,
	Enum.Material.LeafyGrass,
	Enum.Material.Ground,
	Enum.Material.Mud,
	Enum.Material.Rock,
	Enum.Material.Slate,
	Enum.Material.Basalt,
	Enum.Material.Sand,
	Enum.Material.Sandstone,
	Enum.Material.Limestone,
	Enum.Material.Snow,
	Enum.Material.Glacier,
	Enum.Material.Ice,
	Enum.Material.WoodPlanks,
	Enum.Material.Brick,
	Enum.Material.Metal,
}

-- One labelled swatch: the preview above a caption.
local function LabelledPreview(props: {
	material: Enum.Material,
	color: Color3?,
	label: string,
	geometryType: any,
	LayoutOrder: number,
})
	local tokens = Foundation.Hooks.useTokens()
	return React.createElement(View, {
		tag = "col auto-xy gap-xsmall align-x-center",
		LayoutOrder = props.LayoutOrder,
	}, {
		Preview = React.createElement(MaterialPreview, {
			material = props.material,
			color = props.color,
			geometryType = props.geometryType,
			Size = UDim2.fromOffset(tokens.Size.Size_1800, tokens.Size.Size_1800),
			cornerRadius = UDim.new(0, tokens.Radius.Medium),
			LayoutOrder = 1,
		}),
		Label = React.createElement(Text, {
			tag = "auto-xy text-caption-small content-default",
			Text = props.label,
			LayoutOrder = 2,
		}),
	})
end

local function Gallery()
	local children: { [string]: React.Node } = {}
	for index, material in GALLERY_MATERIALS do
		children[material.Name] = React.createElement(LabelledPreview, {
			material = material,
			color = getMaterialColor(material),
			label = material.Name,
			geometryType = GeometryType.CubeCornerOn,
			LayoutOrder = index,
		})
	end

	return React.createElement(View, {
		tag = "row wrap auto-y size-full-0 gap-medium padding-medium",
	}, children)
end

-- One material shown across every implemented geometry type.
local GEOMETRIES = { GeometryType.Cube, GeometryType.CubeCornerOn, GeometryType.Sphere, GeometryType.Plane }

local function Geometries()
	local children: { [string]: React.Node } = {}
	for index, geometryType in GEOMETRIES do
		children[tostring(geometryType)] = React.createElement(LabelledPreview, {
			material = Enum.Material.Rock,
			color = getMaterialColor(Enum.Material.Rock),
			label = tostring(geometryType),
			geometryType = geometryType,
			LayoutOrder = index,
		})
	end

	return React.createElement(View, {
		tag = "row wrap auto-y size-full-0 gap-medium padding-medium",
	}, children)
end

return {
	summary = "MaterialPreview - a DevFramework-free ViewportFrame material preview.",
	stories = {
		Gallery = {
			name = "Gallery",
			story = function()
				return React.createElement(Gallery)
			end,
		},
		Geometries = {
			name = "Geometries",
			story = function()
				return React.createElement(Geometries)
			end,
		},
	},
}
