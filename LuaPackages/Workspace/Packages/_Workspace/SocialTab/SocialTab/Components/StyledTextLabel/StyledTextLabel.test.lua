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
local defaultPropsStory = require((script :: any).Parent["StyledTextLabel.story"]) :: any

describe("props", function()
	local runTest
	local cleanup

	beforeEach(function()
		runTest = function(element)
			local parent
			parent, cleanup = createInstanceWithProps(element)

			local textLabel = RhodiumHelpers.findFirstInstance(parent, {
				ClassName = "TextLabel",
			})
			expect(textLabel).toEqual(expect.any("Instance"))
			return textLabel
		end
	end)

	afterEach(function()
		cleanup()
	end)

	it("SHOULD work with a normal image string", function()
		local textLabel = runTest(defaultPropsStory)

		expect(textLabel.Text).toEqual(expect.any("string"))
	end)

	it("SHOULD work UIBlox styles passed in", function()
		local fontStyle, backgroundStyle, textStyle
		local addInStyles = function()
			return withStyle(function(style)
				fontStyle = style.Font.CaptionHeader
				backgroundStyle = style.Theme.UIMuted
				textStyle = style.Theme.TextMuted

				return Roact.createElement(withStylesStory, {
					BackgroundStyle = backgroundStyle,
					FontStyle = fontStyle,
					TextStyle = textStyle,
					Text = "Hey!",
				})
			end)
		end

		local textLabel = runTest(addInStyles)

		expect(textLabel.BackgroundColor3).toBe(backgroundStyle.Color)
		expect(textLabel.Font).toBe(fontStyle.Font)
		expect(textLabel.TextColor3).toBe(textStyle.Color)
		expect(textLabel.Text).toBe("Hey!")
	end)

	it("SHOULD let you override UIBlox styles and use standard TextLabel elements", function()
		local textLabel = runTest(withOverridesStory)

		expect(textLabel.TextColor3).toBe(Color3.new(1, 0, 1))
		expect(textLabel.Font).toBe(Enum.Font.GothamMedium)
		expect(textLabel.TextTruncate).toBe(Enum.TextTruncate.AtEnd)
	end)
end)
