return function()
	local FFlagEnableToolboxVideos = game:GetFastFlag("EnableToolboxVideos")
	if FFlagEnableToolboxVideos then
		return
	end

	local Library = script.Parent.Parent.Parent
	local Roact = require(Library.Parent.Roact)

	local MockWrapper = require(Library.MockWrapper)

	local AudioControl = require(Library.Components.Preview.AudioControl)

	local function createTestAsset(container, name)
		local emptyFunc = function()
		end

		local element = Roact.createElement(MockWrapper, {}, {
			Roact.createElement(AudioControl, {
				position = UDim2.new(0, 0, 0, 0),
				size = UDim2.new(1, 0, 1, 0),
				audioControlOffset = 30,
				assetId = 0,
				timeLength = 1,
				isPlaying = false,
				isLoaded = true,
				timePassed = 0,
				onResume = emptyFunc,
				onPause = emptyFunc,
				onPlay = emptyFunc,
			})
		})

		return Roact.mount(element, container or nil, name or "")
	end

	it("should create and destroy without errors", function()
		local instance = createTestAsset()
		Roact.unmount(instance)
	end)
end