local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)

local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local ChromeService = require(Root.Service)
local useNineDotActivityIndicator = require(script.Parent.useNineDotActivityIndicator)
local FFlagChromeNineDotActivityIndicator = require(Root.Flags).FFlagChromeNineDotActivityIndicator

local container: Frame
local root: any

local function TestComponent(props: { featureKey: string, visible: boolean })
	useNineDotActivityIndicator(props.featureKey, props.visible)
	return nil
end

local function renderFeatures(features: { { featureKey: string, visible: boolean } })
	local children: { [string]: any } = {}
	for _, feature in features do
		children[feature.featureKey] = React.createElement(TestComponent, feature)
	end

	ReactRoblox.act(function()
		root:render(React.createElement(React.Fragment, nil, children))
	end)
end

describe("useNineDotActivityIndicator", function()
	beforeEach(function()
		container = Instance.new("Frame")
		root = ReactRoblox.createRoot(container)
	end)

	afterEach(function()
		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	if FFlagChromeNineDotActivityIndicator then
		it("SHOULD show when requested by the caller", function()
			renderFeatures({ { featureKey = "feature-a", visible = true } })

			expect(ChromeService:nineDotActivityIndicatorVisible():get()).toBe(true)
		end)

		it("SHOULD hide when cleared by the caller", function()
			renderFeatures({ { featureKey = "feature-a", visible = true } })

			renderFeatures({ { featureKey = "feature-a", visible = false } })

			expect(ChromeService:nineDotActivityIndicatorVisible():get()).toBe(false)
		end)

		it("SHOULD clear visibility when the caller unmounts", function()
			renderFeatures({ { featureKey = "feature-a", visible = true } })

			ReactRoblox.act(function()
				root:render(nil)
			end)

			expect(ChromeService:nineDotActivityIndicatorVisible():get()).toBe(false)
		end)

		it("SHOULD keep the dot while one feature requests it and another does not", function()
			renderFeatures({
				{ featureKey = "feature-a", visible = true },
				{ featureKey = "feature-b", visible = false },
			})

			expect(ChromeService:nineDotActivityIndicatorVisible():get()).toBe(true)
		end)

		it("SHOULD keep the dot when a different feature unmounts", function()
			renderFeatures({
				{ featureKey = "feature-a", visible = true },
				{ featureKey = "feature-b", visible = true },
			})

			renderFeatures({ { featureKey = "feature-a", visible = true } })

			expect(ChromeService:nineDotActivityIndicatorVisible():get()).toBe(true)
		end)
	else
		-- The hook is only ever called from flag-gated callsites, and with the flag off
		-- ChromeService never provisions the indicator, so the dot cannot be lit at all.
		it("SHOULD NOT expose any dot to light WHEN FFlagChromeNineDotActivityIndicator is off", function()
			expect(ChromeService:nineDotActivityIndicatorVisible()).toBeNil()
		end)
	end
end)
