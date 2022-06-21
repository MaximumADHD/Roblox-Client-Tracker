local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)

local PromptSelectorWithPreview = require(script.Parent)

return function()
	local hasSelection = false
	local renderPreview = function() return Roact.createElement("Frame") end
	local promptSelection = function() end
	local urlSelection = function(searchUrl: string?) end
	local borderColorUrlBool = false
	local borderColorFileBool = false
	local clearSelection = function() end
	local onFocusLost = function() end

	local function createTestElement(props: PromptSelectorWithPreview.Props?)
		props = props or {
			HasSelection = hasSelection,
			RenderPreview = renderPreview,
			PromptSelection = promptSelection,
			UrlSelection = urlSelection,
			BorderColorUrlBool = borderColorUrlBool,
			BorderColorFileBool = borderColorFileBool,
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
			HasSelection = true,
			RenderPreview = renderPreview,
			PromptSelection = promptSelection,
			UrlSelection = urlSelection,
			BorderColorUrlBool = true,
			BorderColorFileBool = true,
			ClearSelection = clearSelection,
			OnFocusLost = onFocusLost,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
