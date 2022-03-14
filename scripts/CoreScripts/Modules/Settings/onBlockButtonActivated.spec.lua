--!nocheck

local CorePackages = game:GetService("CorePackages")
local LuaSocialLibrariesDeps = require(CorePackages.LuaSocialLibrariesDeps)
local Mock = LuaSocialLibrariesDeps.Mock
local onBlockButtonActivated = require(script.Parent.onBlockButtonActivated)
local Promise = require(CorePackages.Promise)

return function()
	beforeAll(function(c)
		c.Mock = Mock
		expect.extend(Mock.Matchers)

		c.analytics = Mock.MagicMock.new({ name = "EventStream" })

		c.predicates = {
			isAnalytics = function(x)
				return x == c.analytics
			end,

			isBlockeeUserId = function(x)
				return x.blockeeUserId == 10
			end,
		}

		c.promise = onBlockButtonActivated(
			{ 
				UserId = 10, 
				Name = "Foo",
				DisplayName = "Bar", 
			},
			c.analytics,
			{
				RobloxTranslator = {
					FormatByKey = function()
						return "string"
					end
				}
			}
		)
	end)

	it("SHOULD return a Promise", function(c)
		expect(c.promise).to.be.ok()
		expect(Promise.is(c.promise)).to.equal(true)
	end)

	it("SHOULD call analytics with blockUserButtonClick event", function(c)
			expect(c.analytics.action)
				.toHaveBeenCalled(1)
				.toHaveBeenCalledWith(
					c.Mock.predicate(c.predicates.isAnalytics),
					"SettingsHub",
					"blockUserButtonClick",
					c.Mock.predicate(c.predicates.isBlockeeUserId)
				)
	end)
end
