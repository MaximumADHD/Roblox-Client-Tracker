-- upstream https://github.com/react-navigation/react-navigation/blob/f10543f9fcc0f347c9d23aeb57616fd0f21cd4e3/packages/core/src/__tests__/getChildrenNavigationCache.test.js
return function()
	local getChildrenNavigationCache = require(script.Parent.Parent.getChildrenNavigationCache)

	it("should return empty table if navigation arg not provided", function()
		expect(getChildrenNavigationCache()._childrenNavigation).to.equal(nil)
	end)

	it("should populate navigation._childrenNavigation as a side-effect", function()
		local navigation = { state = {} }
		local result = getChildrenNavigationCache(navigation)
		expect(result).to.never.equal(nil)
		expect(navigation._childrenNavigation).to.equal(result)
	end)

	it("should delete children cache keys that are no longer valid", function()
		local navigation = {
			state = {
				routes = {
					{ key = "one" },
					{ key = "two" },
					{ key = "three" },
				}
			},
			_childrenNavigation = {
				one = {},
				two = {},
				three = {},
				four = {},
			}
		}

		local result = getChildrenNavigationCache(navigation)
		expect(result.one).to.never.equal(nil)
		expect(result.two).to.never.equal(nil)
		expect(result.three).to.never.equal(nil)
		expect(result.four).to.equal(nil)
	end)

	it("should not delete children cache keys if in transitioning state", function()
		local navigation = {
			state = {
				routes = {
					{ key = "one" },
					{ key = "two" },
					{ key = "three" },
				},
				isTransitioning = true,
			},
			_childrenNavigation = {
				one = {},
				two = {},
				three = {},
				four = {},
			}
		}

		local result = getChildrenNavigationCache(navigation)
		expect(result.one).to.never.equal(nil)
		expect(result.two).to.never.equal(nil)
		expect(result.three).to.never.equal(nil)
		expect(result.four).to.never.equal(nil)
	end)
end
