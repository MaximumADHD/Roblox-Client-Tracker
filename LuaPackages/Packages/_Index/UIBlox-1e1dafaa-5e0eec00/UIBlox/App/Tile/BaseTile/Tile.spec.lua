return function()
	local BaseTile = script.Parent
	local TileRoot = BaseTile.Parent
	local App = TileRoot.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)
	local Tile = require(BaseTile.Tile)

	it("should create and destroy without errors", function()
		local testImage = "https://t5.rbxcdn.com/ed422c6fbb22280971cfb289f40ac814"
		local testName = "some test name"
		local createFooter = function()
			return Roact.createElement("Frame", {
				Size = UDim2.new(0, 100, 0, 100),
			})
		end
		local onActivated = function() end
		local element = mockStyleComponent({
			Frame = Roact.createElement("Frame", {
				Size = UDim2.new(0, 100, 0, 100),
			}, {
				Tile = Roact.createElement(Tile, {
					footer = createFooter(),
					name = testName,
					onActivated = onActivated,
					thumbnail = testImage,
				})
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should not render name when no lines are allocated to name", function()
		local testName = "test text"
		local element = mockStyleComponent({
			Frame = Roact.createElement("Frame", {
				Size = UDim2.new(0, 100, 0, 100),
			}, {
				Tile = Roact.createElement(Tile, {
					name = testName,
					onActivated = function() end,
					titleTextLineCount = 0,
				})
			})
		})

		local container = Instance.new("ScreenGui")
		local instance = Roact.mount(element, container, "TitleTest")

		expect(container.TitleTest).to.be.ok()
		expect(container.TitleTest.Frame).to.be.ok()
		expect(container.TitleTest.Frame:FindFirstChild("Name")).to.never.be.ok()

		Roact.unmount(instance)
	end)
end