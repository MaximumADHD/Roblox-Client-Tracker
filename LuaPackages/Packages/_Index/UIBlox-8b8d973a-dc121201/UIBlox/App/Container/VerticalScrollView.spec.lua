return function()
	local Container = script.Parent
	local App = Container.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent
	local Roact = require(Packages.Roact)
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)
	local VerticalScrollView = require(Container.VerticalScrollView)

	describe("mount/unmount", function()
		it("should mount and unmount with default properties", function()
			local verticalScrollViewWithStyle = mockStyleComponent({
				verticalScrollView = Roact.createElement(VerticalScrollView)
			})
			local handle = Roact.mount(verticalScrollViewWithStyle)
			expect(handle).to.be.ok()
			Roact.unmount(handle)
		end)

		it("should mount and unmount with valid properties", function()
			local verticalScrollViewWithStyle = mockStyleComponent({
				verticalScrollView = Roact.createElement(VerticalScrollView, {
					position = UDim2.new(0, 50, 0,100),
					size = UDim2.new(1, 30, 1, 50),
					canvasSizeY = UDim.new(2, 0),
					paddingHorizontal = 12,
				})
			})
			local handle = Roact.mount(verticalScrollViewWithStyle)
			expect(handle).to.be.ok()
			Roact.unmount(handle)
		end)

		-- skipping this until https://jira.rbx.com/browse/MOBLUAPP-2424 is merged to CI
		itSKIP("mount should throw when created with invalid properties", function()
			local function expectToThrowForInvalidProps(props)
				local verticalScrollViewWithStyle = mockStyleComponent({
					verticalScrollView = Roact.createElement(VerticalScrollView, props)
				})
				expect(function()
					Roact.mount(verticalScrollViewWithStyle)
				end).to.throw()
			end

			expectToThrowForInvalidProps({ position = 3 })
			expectToThrowForInvalidProps({ size = 3 })
			expectToThrowForInvalidProps({ canvasSizeY = 3 })
			expectToThrowForInvalidProps({ paddingHorizontal = 3 })
			expectToThrowForInvalidProps({ NotInTheInterface = "Really it is not there" })
		end)
	end)
end
