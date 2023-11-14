local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Roact = require(Packages.Roact)
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

return function()
	local storyDefinition = require(script.Parent:FindFirstChild("BottomLockedScrollView.story"))
	local ENTRIES = 50
	beforeAll(function(rootContext)
		rootContext.mount = rootContext.createMount(storyDefinition.story, function()
			return {
				controls = {
					numberOfEntries = ENTRIES,
				},
			}
		end)
	end :: any)

	it("SHOULD stay locked to bottom", function(c)
		local result = c:mount()
		local instance = result.instance

		local view2 = instance:FindFirstChild("view2", true)
		local scrollingFrame = view2:FindFirstChildWhichIsA("ScrollingFrame", true)
		assert(scrollingFrame, "needs scrollingFrame")

		expect(scrollingFrame).never.toHaveProperty("CanvasPosition.Y", 0)
		local initialY = scrollingFrame.CanvasPosition.Y

		local roactInstance = result.roactInstance
		Roact.update(
			roactInstance,
			c:makeTree(storyDefinition.story, function()
				return {
					controls = {
						numberOfEntries = ENTRIES + 1,
					},
				}
			end)
		)

		expect(scrollingFrame.CanvasPosition.Y).toBeGreaterThan(initialY)
	end :: any)

	it("SHOULD unlock when scrolled up", function(c)
		local result = c:mount()
		local instance = result.instance

		local view2 = instance:FindFirstChild("view2", true)
		local scrollingFrame = view2:FindFirstChildWhichIsA("ScrollingFrame", true)
		assert(scrollingFrame, "needs scrollingFrame")

		Roact.act(function()
			scrollingFrame.CanvasPosition = Vector2.new(0, 0)
			task.wait()
		end)

		local roactInstance = result.roactInstance
		Roact.update(
			roactInstance,
			c:makeTree(storyDefinition.story, function()
				return {
					controls = {
						numberOfEntries = ENTRIES + 1,
					},
				}
			end)
		)

		expect(scrollingFrame).toHaveProperty("CanvasPosition.Y", 0)

		-- Lock ScrollingFrame again by scrolling to bottom
		Roact.act(function()
			scrollingFrame.CanvasPosition = Vector2.new(0, 1000000) -- really big number
			task.wait()
		end)
		local newY = scrollingFrame.CanvasPosition.Y

		Roact.update(
			roactInstance,
			c:makeTree(storyDefinition.story, function()
				return {
					controls = {
						numberOfEntries = ENTRIES + 2,
					},
				}
			end)
		)

		expect(scrollingFrame.CanvasPosition.Y).toBeGreaterThan(newY)
	end :: any)
end
