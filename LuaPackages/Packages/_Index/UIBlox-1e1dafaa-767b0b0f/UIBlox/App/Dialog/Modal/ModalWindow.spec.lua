local ModalRoot = script.Parent
local DialogRoot = ModalRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)

local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

local ModalWindow = require(script.Parent.ModalWindow)

return function()
	describe("lifecycle", function()
		it("should mount and unmount full height and large width ModalWindow without issue", function()
			local element = mockStyleComponent({
				PartialPageModalContainer = Roact.createElement(ModalWindow, {
					isFullHeight = true,
					screenSize = Vector2.new(1920, 1080),
				}, {
					Custom = Roact.createElement("Frame", {
						BorderSizePixel = 0,
						BackgroundColor3 = Color3.fromRGB(164, 86, 78),
						Size = UDim2.new(1, 0, 1, 0),
					}),
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)

		it("should mount and unmount full height and small width ModalWindow without issue", function()
			local element = mockStyleComponent({
				PartialPageModalContainer = Roact.createElement(ModalWindow, {
					isFullHeight = true,
					screenSize = Vector2.new(400, 1080),
				}, {
					Custom = Roact.createElement("Frame", {
						BorderSizePixel = 0,
						BackgroundColor3 = Color3.fromRGB(164, 86, 78),
						Size = UDim2.new(1, 0, 1, 0),
					}),
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)

		it("should mount and unmount partial height and large width ModalWindow without issue", function()
			local element = mockStyleComponent({
				PartialPageModalContainer = Roact.createElement(ModalWindow, {
					isFullHeight = false,
					screenSize = Vector2.new(1920, 1080),
				}, {
					Custom = Roact.createElement("Frame", {
						BorderSizePixel = 0,
						BackgroundColor3 = Color3.fromRGB(164, 86, 78),
						Size = UDim2.new(1, 0, 1, 0),
					}),
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)

		it("should mount and unmount partial height and small width ModalWindow without issue", function()
			local element = mockStyleComponent({
				PartialPageModalContainer = Roact.createElement(ModalWindow, {
					isFullHeight = false,
					screenSize = Vector2.new(400, 1080),
				}, {
					Custom = Roact.createElement("Frame", {
						BorderSizePixel = 0,
						BackgroundColor3 = Color3.fromRGB(164, 86, 78),
						Size = UDim2.new(1, 0, 1, 0),
					}),
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)

		it("should mount and unmount arbitrary anchorPoints without issue", function()
			local element = mockStyleComponent({
				AnchoredPageModalContainer = Roact.createElement(ModalWindow, {
					anchorPoint = Vector2.new(0.25, 0.75),
					isFullHeight = true,
					screenSize = Vector2.new(1920, 1080),
				}, {
					Custom = Roact.createElement("Frame", {
						BorderSizePixel = 0,
						BackgroundColor3 = Color3.fromRGB(164, 86, 78),
						Size = UDim2.new(1, 0, 1, 0),
					}),
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end