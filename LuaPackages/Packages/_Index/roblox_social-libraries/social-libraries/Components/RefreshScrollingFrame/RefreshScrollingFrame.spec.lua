return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local Roact = dependencies.Roact
	local Cryo = dependencies.Cryo
	local UIBlox = dependencies.UIBlox
	local VerticalScrollView = UIBlox.App.Container.VerticalScrollView
	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect

	local RefreshScrollingFrame = require(script.Parent.RefreshScrollingFrame)

	local testWithScrollingElement = function(element)
		describe("RefreshScrollingFrame", function()
			beforeEach(function(c)
				c.setup = function(context, props)
					local ElementGui = Roact.createElement("ScreenGui", {}, {
						navigationAppContainer = Roact.createElement(
							RefreshScrollingFrame,
							Cryo.Dictionary.join({
								ScrollingElement = element,
							}, props)
						),
					})

					return context.UnitTestHelpers.mountFrame(ElementGui, {
						parent = Instance.new("Folder", game:GetService("CoreGui")),
					})
				end
			end)

			it("SHOULD mount without throwing when given functional props", function(c)
				local parent, cleanup = c:setup({
					refresh = function()
						return 1
					end,
					onCanvasPositionChangedCallback = function()
						return 1
					end,
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundColor3 = Color3.fromRGB(0, 0, 0),
					Position = UDim2.new(0, 0, 0, 0),
				})

				local scrollingFrame = c.RhodiumHelpers.findFirstInstance(parent, {
					ClassName = "ScrollingFrame",
				})

				jestExpect(scrollingFrame).never.toBeNil()

				cleanup()
			end)

			it("SHOULD mount without throwing when given no functional props", function(c)
				local _, cleanup = c:setup({
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundColor3 = Color3.fromRGB(0, 0, 0),
					Position = UDim2.new(0, 0, 0, 0),
				})

				cleanup()
			end)

			it("SHOULD accept and assign refs", function(c)
				local ref = Roact.createRef()

				local _, cleanup = c:setup({
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundColor3 = Color3.fromRGB(0, 0, 0),
					Position = UDim2.new(0, 0, 0, 0),
					[Roact.Ref] = ref,
				})

				jestExpect(ref.current).never.toBeNil()
				jestExpect(ref.current).toEqual(jestExpect.any("Instance"))

				cleanup()
			end)
		end)
	end

	testWithScrollingElement()
	testWithScrollingElement(VerticalScrollView)
end
