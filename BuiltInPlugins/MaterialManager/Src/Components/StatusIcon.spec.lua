local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local mockContext = require(Plugin.Src.Util.mockContext)

local join = Framework.Dash.join

local StatusIcon = require(script.Parent.StatusIcon)

return function()
	local function createTestElement(props: {}?)
		local statusIconProps: StatusIcon.Props = join({
			Status = Enum.PropertyStatus.Ok,
		}, props)

		return mockContext({
			StatusIcon = Roact.createElement(StatusIcon, statusIconProps)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly with warning", function()
		local container = Instance.new("Folder")
		local element = createTestElement({
			Status = Enum.PropertyStatus.Warning,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render correctly with error", function()
		local container = Instance.new("Folder")
		local element = createTestElement({
			Status = Enum.PropertyStatus.Error,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
