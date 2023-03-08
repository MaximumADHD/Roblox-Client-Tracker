local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local ReactRoblox = require(Packages.ReactRoblox)
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local jest = globals.jest

local REALLY_LARGE_NUMBER = 1e+20
local function scrollToBottom(instance)
	instance.CanvasPosition += Vector2.new(0, REALLY_LARGE_NUMBER)
end

return function()
	beforeAll(function(rootContext)
		local storyDefinition = require(script.Parent:FindFirstChild("ScrollingView.story"))
		rootContext.mount = function(c)
			local Roact = c.Roact
			local storyMiddleware = c.storyMiddleware
			local instance = Instance.new("ScreenGui")
			instance.Parent = game:GetService("CoreGui")

			local callback = jest.fn()
			local tree = Roact.createElement("ImageButton", {
				Size = c.size,
				[Roact.Event.Activated] = callback,
			}, {
				story = Roact.createElement(storyMiddleware(storyDefinition.story), {
					size = UDim2.fromScale(1, 1),
					createChildren = storyDefinition.props.createChildren,
					controls = {
						numberOfChildren = c.numberOfChildren,
					},
				}),
			})
			local roactInstance = Roact.mount(tree, instance)
			return {
				instance = instance,
				unmount = function()
					Roact.unmount(roactInstance)
					instance:Destroy()
				end,
				callback = callback,
			}
		end
	end)

	describe("WHEN parented to a statically sized frame", function()
		beforeAll(function(c)
			c.size = UDim2.fromOffset(150, 150)
		end)

		describe("GIVEN no children", function()
			beforeAll(function(c)
				c.numberOfChildren = 0
			end)

			it("SHOULD prevent scrollbar from being functional", function(c)
				local findFirstInstance = c.findFirstInstance
				local instance = findFirstInstance(c:mount().instance, { ClassName = "ScrollingFrame" })
				expect(instance).never.toBeNil()

				-- try to scroll
				scrollToBottom(instance)
				expect(instance).toHaveProperty("CanvasPosition.Y", 0)
			end)

			describe("WHEN clicking within the extents of the scrolling frame", function()
				it("SHOULD sink input", function(c)
					local mountResult = c:mount()
					local findFirstInstance = c.findFirstInstance
					local instance = findFirstInstance(mountResult.instance, { ClassName = "ScrollingFrame" })
					c.Rhodium.Element.new(instance):click()
					expect(mountResult.callback).never.toHaveBeenCalled()
				end)
			end)

			describe("WHEN tapping within the extents of the scrolling frame", function()
				it("SHOULD sink input", function(c)
					local mountResult = c:mount()
					local findFirstInstance = c.findFirstInstance
					local instance = findFirstInstance(mountResult.instance, { ClassName = "ScrollingFrame" })
					c.Rhodium.Element.new(instance):tap()
					expect(mountResult.callback).never.toHaveBeenCalled()
				end)
			end)
		end)

		describe("GIVEN a few children, but not enough to be larger than the CanvasSize", function()
			beforeAll(function(c)
				c.numberOfChildren = 1
			end)

			it("SHOULD prevent scrollbar from being functional", function(c)
				local findFirstInstance = c.findFirstInstance
				local instance = findFirstInstance(c:mount().instance, { ClassName = "ScrollingFrame" })
				expect(instance).never.toBeNil()

				-- try to scroll
				scrollToBottom(instance)
				expect(instance).toHaveProperty("CanvasPosition.Y", 0)
			end)
		end)

		describe("GIVEN more than enough children to be larger than the CanvasSize", function()
			beforeAll(function(c)
				c.numberOfChildren = 100
			end)

			it("SHOULD allow the scrollbar to become functional", function(c)
				local findFirstInstance = c.findFirstInstance
				local instance = findFirstInstance(c:mount().instance, { ClassName = "ScrollingFrame" })
				expect(instance).never.toBeNil()

				-- try to scroll
				scrollToBottom(instance)
				expect(instance).never.toHaveProperty("CanvasPosition.Y", 0)
			end)

			it("SHOULD show a scrollbar when the input is hovering over the element", function(c)
				local mountResult = c:mount()
				local findFirstInstance = c.findFirstInstance
				local instance = findFirstInstance(mountResult.instance, { ClassName = "ScrollingFrame" })

				ReactRoblox.act(function()
					c.Rhodium.VirtualInput.Mouse.mouseMove(instance.AbsolutePosition + Vector2.new(10, 10))
					wait(1)
				end)
				expect(instance).never.toHaveProperty("ScrollBarImageTransparency", 1)
			end)
		end)
	end)
end
