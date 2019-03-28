return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local SoundPreview = require(Plugin.Core.Components.Asset.Preview.SoundPreview)

	local function createTestAsset(container, name)
		local element = Roact.createElement(SoundPreview, {}, {
			assetId = 183435411,
			textContent = "SoundPreviewTest",
			position = UDim2.new(1, 0, 1, 0),
			size = UDim2.new(0, 100, 0, 20)
		})

		return Roact.mount(element, container or nil, name or "")
	end

	it("should create and destroy without errors", function()
		local instance = createTestAsset()
		Roact.unmount(instance)
	end)
end