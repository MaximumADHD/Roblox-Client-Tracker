local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local mockContext = require(Plugin.Src.Util.mockContext)

local join = Framework.Dash.join

local LabeledTexture = require(script.Parent.LabeledTexture)

return function()
	local name = "Material Pattern"
	local image = "rbxasset://textures/MaterialManager/Texture_None.png"

	local function createTestElement(props: {}?)
		local labeledTextureProps: LabeledTexture.Props = join({
			Image = image,
			Name = name,
		}, props or {})

		return mockContext({
			LabeledTexture = Roact.createElement(LabeledTexture, labeledTextureProps)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
