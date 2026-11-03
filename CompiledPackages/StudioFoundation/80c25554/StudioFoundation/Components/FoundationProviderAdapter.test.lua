local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)

local Framework = require(Packages.Framework)
local React = require(Packages.React)
local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)

local describe = JestGlobals.describe
local expect = JestGlobals.expect
local render = ReactTestingLibrary.render
local it = JestGlobals.it

local Types = require(Main.Types)
type FIXME = Types.FIXME

local FoundationProviderAdapter = require(script.Parent.FoundationProviderAdapter)
local TestHelpers = Framework.TestHelpers

describe("FoundationProviderAdapter", function()
	it("should render", function()
		local root = render(TestHelpers.provideMockContext(
			{},
			{
				Root = React.createElement(
					FoundationProviderAdapter,
					{ theme = "Dark" },
					React.createElement("Frame", { [React.Tag] = "data-testid=Content" })
				),
			} :: FIXME
		))

		expect(root.queryByTestId("Content")).never.toBeNil()
	end)

	it("should enable Foundation stylesheets", function()
		local root = render(TestHelpers.provideMockContext(
			{},
			{
				Root = React.createElement(
					FoundationProviderAdapter,
					{ theme = "Dark" },
					React.createElement("Frame", { [React.Tag] = "data-testid=Content" })
				),
			} :: FIXME
		))

		expect(root.getByTestId("--studio-foundation--stylesheet-wrapper")).never.toBeNil()
	end)
end)
