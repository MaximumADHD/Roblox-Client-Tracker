return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Store = require(CorePackages.Rodux).Store

	local DataProvider = require(script.Parent.Parent.DataProvider)
	local MainViewServerJobs = require(script.Parent.MainViewServerJobs)

	it("should create and destroy without errors", function()
		local store = Store.new(function()
			return {
				ServerJobsData = {
					jobsSearchTerm = ""
				}
			}
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			DataProvider = Roact.createElement(DataProvider, {},{
				MainViewServerJobs = Roact.createElement(MainViewServerJobs)
			})
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end