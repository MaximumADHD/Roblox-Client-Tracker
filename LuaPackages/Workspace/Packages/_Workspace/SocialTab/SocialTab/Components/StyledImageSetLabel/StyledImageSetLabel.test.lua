local SocialTab = script:FindFirstAncestor("SocialTab")
local createInstanceWithProps = require(SocialTab.TestHelpers.createInstanceWithProps)

local dependencies = require(SocialTab.dependencies)
local UIBlox = dependencies.UIBlox
local Roact = dependencies.Roact
local withStyle = UIBlox.Style.withStyle

local devDependencies = require(SocialTab.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

-- FIXME: APPFDN-1925
local withOverridesStory = require((script :: any).Parent["withOverrides.story"]) :: any
local withStylesStory = require((script :: any).Parent["withStyles.story"]) :: any
local defaultPropsStory = require((script :: any).Parent["StyledImageSetLabel.story"]) :: any
local withChildStory = require((script :: any).Parent["withChild.story"]) :: any

describe("props", function()
	local runTest
	local cleanup

	beforeEach(function()
		runTest = function(element)
			local parent
			parent, cleanup = createInstanceWithProps(element)

			local imageLabel = RhodiumHelpers.findFirstInstance(parent, {
				ClassName = "ImageLabel",
			})
			expect(imageLabel).toEqual(expect.any("Instance"))
			return imageLabel
		end
	end)

	afterEach(function()
		cleanup()
	end)

	it("SHOULD work with a normal image string", function()
		local imageLabel = runTest(defaultPropsStory)

		expect(imageLabel.Image).toBe("rbxassetid://2610133241")
	end)

	it("SHOULD work UIBlox styles and Image passed in", function()
		local backgroundStyle, imageStyle
		local addInStyles = function()
			return withStyle(function(style)
				backgroundStyle = style.Theme.UIMuted
				imageStyle = style.Theme.TextMuted

				return Roact.createElement(withStylesStory, {
					BackgroundStyle = backgroundStyle,
					ImageStyle = imageStyle,
				})
			end)
		end

		local imageLabel = runTest(addInStyles)

		expect(imageLabel.BackgroundColor3).toBe(backgroundStyle.Color)
		expect(imageLabel.ImageColor3).toBe(imageStyle.Color)
	end)

	it("SHOULD let you override UIBlox styles and use standard ImageLabel elements", function()
		local imageLabel = runTest(withOverridesStory)

		expect(imageLabel.ImageColor3).toBe(Color3.new(1, 0, 1))
		expect(imageLabel.BorderSizePixel).toBe(3)
	end)

	it("SHOULD let you pass in child elements", function()
		local parentImageLabel = runTest(withChildStory)

		local childLabel = RhodiumHelpers.findFirstInstance(parentImageLabel, {
			Name = "ChildElement",
		})
		expect(childLabel).never.toBeNil()
	end)
end)
