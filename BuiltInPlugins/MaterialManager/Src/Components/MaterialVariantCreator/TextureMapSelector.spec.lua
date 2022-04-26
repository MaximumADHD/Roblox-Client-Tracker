return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local mockContext = require(Plugin.Src.Util.mockContext)

	local TextureMapSelector = require(script.Parent.TextureMapSelector)

	local defautCurrentTextureMap = {
		assetId = "",
	}
	local defaultSelectTextureMap = function(file : File?, assetId : string?, errorMessage : string?) end
	local defaultClearSelection = function() end
	local defaultPreviewTitle = ""
	local defaultSearchUrl = ""

	local function createTestElement(props: TextureMapSelector.Props?)
		props = props or {
			CurrentTextureMap = defautCurrentTextureMap,
			SelectTextureMap = defaultSelectTextureMap,
			ClearSelection = defaultClearSelection,
			PreviewTitle = defaultPreviewTitle,
			SearchUrl = defaultSearchUrl,
		}

		return mockContext({
			TextureMapSelector = Roact.createElement(TextureMapSelector, props)
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
			CurrentTextureMap = {
				assetId = "rbxassetid://8706345277",
			},
			SelectTextureMap = function() end,
			ClearSelection = function() end,
			PreviewTitle = "",
			SearchUrl = "",
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
