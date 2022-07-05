local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)

local join = Framework.Dash.join

local ActionButton = require(script.Parent.ActionButton)

return function()
	local function createTestElement(props: {}?)
		local actionButtonProps: ActionButton.Props = join({
			ImageStyle = {
				Image = "rbxasset://textures/ui/common/robux_color@2x.png"
			},
			IsDisabled = false,
			IsPressed = false,
			OnClick = function() end,
			TeachingCallout = nil,
			TooltipText = "This is a tooltip",
		}, props or {})

		return mockContext({
			ActionButton = Roact.createElement(ActionButton, actionButtonProps)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render disabled button correctly", function()
		local container = Instance.new("Folder")
		local element = createTestElement({
			IsDisabled = true,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render pressed button correctly", function()
		local container = Instance.new("Folder")
		local element = createTestElement({
			IsPressed = true,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
