local GridRoot = script.Parent
local AppRoot = GridRoot.Parent
local UIBloxRoot = AppRoot.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)

local DefaultMetricsGridView = require(script.Parent.DefaultMetricsGridView)
local GridMetrics = require(script.Parent.GridMetrics)

-- Default properties used in testMount. Can be overridden.
local defaultTestProperties = {
	renderItem = function() end,
	getItemHeight = function() return 0 end,
	getItemMetrics = GridMetrics.getSmallMetrics,
	windowHeight = 0,
	itemPadding = Vector2.new(),
	items = {},
}

local function testMount(props)
	local mergedProps = Cryo.Dictionary.join(defaultTestProperties, props)
	local element = Roact.createElement(DefaultMetricsGridView, mergedProps)
	local handle = Roact.mount(element, nil)
	Roact.unmount(handle)
end

return function()
	describe("renderItem", function()
		it("must be a function", function()
			testMount({
				renderItem = function() end,
			})

			expect(function()
				testMount({
					renderItem = "Frame",
				})
			end).to.throw()
		end)
	end)

	describe("getItemHeight", function()
		it("must be a function", function()
			testMount({
				getItemHeight = function() return 25 end,
			})

			expect(function()
				testMount({
					getItemHeight = 50,
				})
			end).to.throw()
		end)
	end)

	describe("getItemMetrics", function()
		it("must be a function", function()
			testMount({
				getItemMetrics = GridMetrics.getMediumMetrics,
			})

			expect(function()
				testMount({
					getItemMetrics = "large",
				})
			end).to.throw()
		end)
	end)

	describe("windowHeight", function()
		it("must be a number or nil", function()
			testMount({
				windowHeight = 25,
			})

			testMount({
				windowHeight = Cryo.None,
			})

			expect(function()
				testMount({
					windowHeight = Vector2.new(1, 0),
				})
			end).to.throw()
		end)

		it("must be non-negative", function()
			expect(function()
				testMount({
					windowHeight = -10,
				})
			end).to.throw()
		end)

		it("must be less than or equal to maxHeight", function()
			testMount({
				maxHeight = 200,
				windowHeight = 100,
			})

			testMount({
				maxHeight = 200,
				windowHeight = 200,
			})

			expect(function()
				testMount({
					maxHeight = 200,
					windowHeight = 300,
				})
			end).to.throw()
		end)
	end)

	describe("itemPadding", function()
		it("must be a Vector2", function()
			testMount({
				itemPadding = Vector2.new(10, 40),
			})

			expect(function()
				testMount({
					itemPadding = UDim2.new(0, 10, 0.05, 0),
				})
			end).to.throw()
		end)
	end)

	describe("items", function()
		it("must be an array", function()
			testMount({
				items = { 1, 2, 3 },
			})

			expect(function()
				testMount({
					items = "a,b,c",
				})
			end).to.throw()
		end)
	end)

	describe("maxHeight", function()
		it("must be a number", function()
			testMount({
				maxHeight = 25,
			})

			expect(function()
				testMount({
					maxHeight = Vector2.new(1, 0),
				})
			end).to.throw()
		end)

		it("must be non-negative", function()
			expect(function()
				testMount({
					maxHeight = -10,
				})
			end).to.throw()
		end)
	end)

	describe("LayoutOrder", function()
		it("must be an integer", function()
			expect(function()
				testMount({
					LayoutOrder = "1",
				})
			end).to.throw()

			expect(function()
				testMount({
					LayoutOrder = 0.5,
				})
			end).to.throw()
		end)
	end)
end