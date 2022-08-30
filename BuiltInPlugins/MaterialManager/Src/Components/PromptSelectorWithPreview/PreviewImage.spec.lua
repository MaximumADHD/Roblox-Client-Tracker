local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)

local PreviewImage = require(script.Parent.PreviewImage)

return function()
	local hasSelection = false  -- Remove wih FFlagMaterialManagerVariantCreatorOverhaul
	local imageId = ""
	local isTempId = false
	local clearSelection = function() end
	local openExpandedPreview = function() end

	local function createTestElement(props: PreviewImage.Props?)
		props = props or {
			HasSelection = hasSelection,  -- Remove wih FFlagMaterialManagerVariantCreatorOverhaul
			ImageId = imageId,
			IsTempId = isTempId,
			ClearSelection = clearSelection,
			OpenExpandedPreview = openExpandedPreview,
		}
		return mockContext({
			PreviewImage = Roact.createElement(PreviewImage, props)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createTestElement({
			HasSelection = true,  -- Remove wih FFlagMaterialManagerVariantCreatorOverhaul
			ImageId = "rbxasset://textures/MaterialManager/Create_New_Variant.png",
			IsTempId = true,
			ClearSelection = clearSelection,
			OpenExpandedPreview = openExpandedPreview,
		})
		local instance = Roact.mount(element, container)
		Roact.unmount(instance)
	end)
end
