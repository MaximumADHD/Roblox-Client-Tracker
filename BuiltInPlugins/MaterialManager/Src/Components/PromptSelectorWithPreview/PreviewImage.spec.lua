local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)

local PreviewImage = require(script.Parent.PreviewImage)

return function()
	local hasSelection = false
	local renderPreview = function() return Roact.createElement("Frame") end
	local clearSelection = function() end
	local openExpandedPreview = function() end

	local function createTestElement(props: PreviewImage.Props?)
		props = props or {
			HasSelection = hasSelection,
			RenderPreview = renderPreview,
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
			HasSelection = true,
			RenderPreview = renderPreview,
			ClearSelection = clearSelection,
			OpenExpandedPreview = openExpandedPreview,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
