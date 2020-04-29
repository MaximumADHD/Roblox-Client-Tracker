local Workspace = game:GetService("Workspace")

return function()
	local Framework = script.Parent.Parent
	local Library = Framework.Parent.Parent

	local Roact = require(Library.Packages.Roact)

	local SelectionDot = require(Framework.Components.SelectionDot)

	local function createTestSelectionDot(onScreen)
		local cameraCFrame = Workspace.CurrentCamera.CFrame
		local position = cameraCFrame.Position
		if onScreen then
			position = position + cameraCFrame.LookVector * 10
		else
			position = position - cameraCFrame.LookVector * 10000
		end
		return Roact.createElement(SelectionDot, {
			Position = position,
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestSelectionDot()

		expect(function()
			local handle = Roact.mount(element)
			Roact.unmount(handle)
		end).to.never.throw()
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createTestSelectionDot(true)
		local handle = Roact.mount(element, container)

		local gui = container:FindFirstChildOfClass("ScreenGui")
		expect(gui).to.be.ok()
		local frame = gui:FindFirstChildOfClass("Frame")
		expect(frame).to.be.ok()

		Roact.unmount(handle)
	end)

	it("should not render if position is offscreen", function()
		local container = Instance.new("Folder")
		local element = createTestSelectionDot(false)
		local handle = Roact.mount(element, container)

		expect(#container:GetChildren()).to.equal(0)

		Roact.unmount(handle)
	end)
end
