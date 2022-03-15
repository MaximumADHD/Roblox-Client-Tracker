return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local _Types = require(Plugin.Src.Types)
	local Roact = require(Plugin.Packages.Roact)
	local mockContext = require(Plugin.Src.Util.mockContext)

	local MaterialTile = require(script.Parent.MaterialTile)

	local defaultMaterial = {
		IsBuiltin = true,
		MaterialPath = { "All" },
		MaterialVariant = Enum.Material.Plastic,
		MaterialType = "Base"
	}

	local defaultOnClick = function() end

	local defaultSetUpdate = function(item : _Types.Material, layoutOrder : number?, property : string) end

	local function createTestElement(props: MaterialTile.Props?)
		props = props or {
			Item = defaultMaterial,
			OnClick = defaultOnClick,
			SetUpdate = defaultSetUpdate,
		}

		return mockContext({
			MaterialTile = Roact.createElement(MaterialTile, props)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createTestElement()
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
