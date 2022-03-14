return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Store = require(CorePackages.Rodux).Store

	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local act = require(Modules.act)
	local RhodiumHelpers = require(game.CoreGui.RobloxGui.Modules.NotForProductionUse.RhodiumHelpers.api)

	local DataProvider = require(script.Parent.Parent.DataProvider)
	local DataConsumer = require(script.Parent.Parent.DataConsumer)

	local MainViewLog = require(script.Parent.MainViewLog)

	it("should create and destroy without errors", function()
		local store = Store.new(function()
			return {
				MainView = {
					currTabIndex = 0,
					isDeveloperView = true,
				},
				LogData = {
					clientSearchTerm = "",
					clientTypeFilters = {},
					serverSearchTerm = "",
					serverTypeFilters = {},
				}
			}
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			DataProvider = Roact.createElement(DataProvider, {}, {
				MainViewLog = Roact.createElement(MainViewLog, {
					size = UDim2.new(),
					tabList = {},
				})
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should check and uncheck boxes when they are clicked", function()
		local store = Store.new(function()
			return {
				MainView = {
					currTabIndex = 0,
					isDeveloperView = true,
				},
				LogData = {
					clientSearchTerm = "",
					clientTypeFilters = {},
					serverSearchTerm = "",
					serverTypeFilters = {},
				}
			}
		end)

		local ServerLogData

		local MainViewLogWrapper = function(props)
			-- capture the ServerLogData
			ServerLogData = props.ServerLogData
			return Roact.createElement(MainViewLog, {
				size = UDim2.new(0, 1000, 0, 1000),
				tabList = {},
			})
		end

		MainViewLogWrapper = DataConsumer(MainViewLogWrapper, "ServerLogData")

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			DataProvider = Roact.createElement(DataProvider, {}, {
				MainViewLog = Roact.createElement(MainViewLogWrapper)
			})
		})

		local instance = Roact.mount(element, game:GetService("CoreGui"))

		expect(ServerLogData).to.be.ok()

		local FilterCheckBoxes = RhodiumHelpers.findFirstInstance(game:GetService("CoreGui"), {
			Name = "FilterCheckBoxes"
		})

		expect(FilterCheckBoxes).to.be.ok()

		local ErrorCheckBox = RhodiumHelpers.findFirstInstance(FilterCheckBoxes, {
			Name = "Error"
		})

		expect(ErrorCheckBox).to.be.ok()
		-- The ErrorCheckBox.Icon Image should be a roblox AssetID
		expect(ErrorCheckBox.Icon.Image ~= "").to.equal(true)

		act(function()
			-- Mimic clicking the filter button
			ServerLogData:setFilter("Error", false)
		end)

		-- After clicking, the Icon image should disappear
		expect(ErrorCheckBox.Icon.Image == "").to.equal(true)

		act(function()
			-- Mimic clicking the filter button
			ServerLogData:setFilter("Error", true)
		end)

		-- The ErrorCheckBox.Icon Image should be a roblox AssetID
		expect(ErrorCheckBox.Icon.Image ~= "").to.equal(true)

		Roact.unmount(instance)
	end)
end
