return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local CircularBuffer = require(script.Parent.Parent.Parent.CircularBuffer)

	local DataProvider = require(script.Parent.Parent.DataProvider)
	local ServerScriptsEntry = require(script.Parent.ServerScriptsEntry)

	it("should create and destroy without errors", function()
		local dummyScriptEntry = {
			time = 0,
			data = {0, 0},
		}
		local dataSet = CircularBuffer.new(1)
		dataSet:push_back(dummyScriptEntry)

		local formatScriptsData = function()
			return ""
		end

		local scriptDummyData = {
			dataStats = {
				min = 0,
				max = 0,
				dataSet = dataSet,
			}
		}

		local dummyCellSizes = {
			UDim2.new(),
			UDim2.new(),
			UDim2.new(),
		}
		local element = Roact.createElement(DataProvider, {},{
			ServerScriptsEntry = Roact.createElement(ServerScriptsEntry,{
				scriptData = scriptDummyData,
				entryCellSize = dummyCellSizes,
				cellOffset = dummyCellSizes,
				verticalOffsets = dummyCellSizes,
				formatScriptsData = formatScriptsData,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end