local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)

local LabeledTexture = require(script.Parent.LabeledTexture)

return function()
	local name = "Material Pattern"
	local image = "rbxasset://textures/MaterialManager/Texture_None.png"

	local function createTestElement(props: LabeledTexture.Props?)
		props = props or {
			Image = image,
			Name = name,
		}

		return mockContext({
			LabeledTexture = Roact.createElement(LabeledTexture, props)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
