local GridRoot = script.Parent
local AppRoot = GridRoot.Parent
local UIBloxRoot = AppRoot.Parent
local Packages = UIBloxRoot.Parent

local t = require(Packages.t)

local GridMetrics = require(script.Parent.GridMetrics)

local isMetricsData = t.strictInterface({
	itemsPerRow = t.intersection(t.integer, t.numberMin(1)),
	itemWidth = t.numberMin(0),
})

return function()
	describe("makeCustomMetricsGetter", function()
		it("should be a function", function()
			expect(typeof(GridMetrics.makeCustomMetricsGetter)).to.equal("function")
		end)

		it("should make metrics getter functions", function()
			local getter = GridMetrics.makeCustomMetricsGetter({
				minimumItemsPerRow = 1,
				minimumItemWidth = 160,
			})

			expect(typeof(getter)).to.equal("function")
		end)

		it("should make functions that validate their arguments", function()
			local getter = GridMetrics.makeCustomMetricsGetter({
				minimumItemsPerRow = 1,
				minimumItemWidth = 160,
			})

			expect(function()
				getter(-20, 10)
			end).to.throw()

			expect(function()
				getter(20, Vector2.new(10, 10))
			end).to.throw()

			expect(function()
				getter(Vector2.new(10, 10), 0)
			end).to.throw()
		end)

		it("should throw if given invalid settings", function()
			expect(function()
				GridMetrics.makeCustomMetricsGetter({
					minimumItemsPerRow = 0,
				})
			end).to.throw()
		end)
	end)

	describe("getLargeMetrics", function()
		it("should be a function", function()
			expect(typeof(GridMetrics.getLargeMetrics)).to.equal("function")
		end)

		it("should return a metrics structure", function()
			assert(isMetricsData(GridMetrics.getLargeMetrics(100, 10)))
		end)

		it("should throw if given invalid arguments", function()
			expect(function()
				GridMetrics.getLargeMetrics(-20, 10)
			end).to.throw()

			expect(function()
				GridMetrics.getLargeMetrics(20, Vector2.new(10, 10))
			end).to.throw()

			expect(function()
				GridMetrics.getLargeMetrics(Vector2.new(10, 10), 0)
			end).to.throw()
		end)
	end)

	describe("getMediumMetrics", function()
		it("should be a function", function()
			expect(typeof(GridMetrics.getMediumMetrics)).to.equal("function")
		end)

		it("should return a metrics structure", function()
			assert(isMetricsData(GridMetrics.getMediumMetrics(100, 10)))
		end)

		it("should throw if given invalid arguments", function()
			expect(function()
				GridMetrics.getMediumMetrics(-20, 10)
			end).to.throw()

			expect(function()
				GridMetrics.getMediumMetrics(20, Vector2.new(10, 10))
			end).to.throw()

			expect(function()
				GridMetrics.getMediumMetrics(Vector2.new(10, 10), 0)
			end).to.throw()
		end)
	end)

	describe("getSmallMetrics", function()
		it("should be a function", function()
			expect(typeof(GridMetrics.getSmallMetrics)).to.equal("function")
		end)

		it("should return a metrics structure", function()
			assert(isMetricsData(GridMetrics.getSmallMetrics(100, 10)))
		end)

		it("should throw if given invalid arguments", function()
			expect(function()
				GridMetrics.getSmallMetrics(-20, 10)
			end).to.throw()

			expect(function()
				GridMetrics.getSmallMetrics(20, Vector2.new(10, 10))
			end).to.throw()

			expect(function()
				GridMetrics.getSmallMetrics(Vector2.new(10, 10), 0)
			end).to.throw()
		end)

		it("should always have a card count 1 more than the medium getter", function()
			local mediumSettings = GridMetrics.getMediumMetrics(400, 10)
			local smallSettings = GridMetrics.getSmallMetrics(400, 10)
			expect(smallSettings.itemsPerRow).to.equal(mediumSettings.itemsPerRow + 1)
		end)
	end)
end