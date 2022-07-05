
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)

local PreviewDialog = require(script.Parent.PreviewDialog)

return function()
	local imageId = ""
	local onClose = function() end
	local metadata = {""}

	local function createTestElement(props: PreviewDialog.Props?)
		props = props or {
			ImageId = imageId,
			OnClose = onClose,
			Metadata = metadata,
		}
		return mockContext({
			PreviewDialog = Roact.createElement(PreviewDialog, props)
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
			ImageId = "rbxasset://textures/MaterialManager/Create_New_Variant.png",
			OnClose = onClose,
			Metadata = {"SelectedName"},
		})
		local instance = Roact.mount(element, container)
		Roact.unmount(instance)
	end)
end
