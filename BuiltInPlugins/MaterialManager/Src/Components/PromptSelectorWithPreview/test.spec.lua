local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)

local PromptSelectorWithPreview = require(script.Parent)

return function()
	local hasSelection = false  -- Remove wih FFlagMaterialManagerVariantCreatorOverhaul
	local imageId = ""
	local isTempId = false
	local promptSelection = function() end
	local urlSelection = function(searchUrl: string?) end
	local borderColorUrlBool = false
	local clearSelection = function() end
	local onFocusLost = function() end

	local function createTestElement(props: PromptSelectorWithPreview.Props?)
		props = props or {
			HasSelection = hasSelection,  -- Remove wih FFlagMaterialManagerVariantCreatorOverhaul
			ImageId = imageId,
			IsTempId = isTempId,
			PromptSelection = promptSelection,
			UrlSelection = urlSelection,
			BorderColorUrlBool = borderColorUrlBool,
			ClearSelection = clearSelection,
			OnFocusLost = onFocusLost,
		}

		return mockContext({
			PromptSelectorWithPreview = Roact.createElement(PromptSelectorWithPreview, props)
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
			PromptSelection = promptSelection,
			UrlSelection = urlSelection,
			BorderColorUrlBool = true,
			ClearSelection = clearSelection,
			OnFocusLost = onFocusLost,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
