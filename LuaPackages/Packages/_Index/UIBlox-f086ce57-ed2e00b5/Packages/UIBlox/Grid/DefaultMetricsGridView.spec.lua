local UIBloxRoot = script.Parent.Parent

local Cryo = require(UIBloxRoot.Parent.Cryo)
local Roact = require(UIBloxRoot.Parent.Roact)

local DefaultMetricsGridView = require(script.Parent.DefaultMetricsGridView)
local GridMetrics = require(script.Parent.GridMetrics)

-- Default properties used in testMount. Can be overridden.
local defaultTestProperties = {
	renderItem = function() end,
	getItemHeight = function() return 0 end,
	getItemMetrics = GridMetrics.getSmallMetrics,
	windowSize = Vector2.new(),
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

	describe("windowSize", function()
		it("must be a Vector2", function()
			testMount({
				windowSize = Vector2.new(400, 400),
			})

			expect(function()
				testMount({
					windowSize = UDim2.new(1, 0, 0, 400),
				})
			end).to.throw()
		end)

		it("must have positive X and Y components", function()
			expect(function()
				testMount({
					windowSize = Vector2.new(-300, 100),
				})
			end).to.throw()

			expect(function()
				testMount({
					windowSize = Vector2.new(300, -100),
				})
			end).to.throw()
		end)

		it("must be less than or equal to maxSize", function()
			testMount({
				maxSize = Vector2.new(200, 200),
				windowSize = Vector2.new(100, 100),
			})

			testMount({
				maxSize = Vector2.new(200, 200),
				windowSize = Vector2.new(200, 200),
			})

			expect(function()
				testMount({
					maxSize = Vector2.new(200, 200),
					windowSize = Vector2.new(300, 200),
				})
			end).to.throw()

			expect(function()
				testMount({
					maxSize = Vector2.new(200, 200),
					windowSize = Vector2.new(200, 300),
				})
			end).to.throw()

			expect(function()
				testMount({
					maxSize = Vector2.new(200, 200),
					windowSize = Vector2.new(300, 300),
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

			expect(function()
				testMount({
					items = {
						a = 1,
						b = 2,
						c = 3,
					},
				})
			end).to.throw()

			expect(function()
				testMount({
					items = {
						[1] = 1,
						[2] = 2,
						[4] = 4,
					},
				})
			end).to.throw()
		end)
	end)

	describe("maxSize", function()
		it("must be a Vector2", function()
			testMount({
				maxSize = Vector2.new(400, 400),
			})

			expect(function()
				testMount({
					maxSize = UDim2.new(1, 0, 0, 400),
				})
			end).to.throw()
		end)

		it("must have positive X and Y components", function()
			expect(function()
				testMount({
					maxSize = Vector2.new(-300, 100),
				})
			end).to.throw()

			expect(function()
				testMount({
					maxSize = Vector2.new(300, -100),
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