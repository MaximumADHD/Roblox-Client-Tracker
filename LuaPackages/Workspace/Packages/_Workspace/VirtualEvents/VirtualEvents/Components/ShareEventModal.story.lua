local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local Rodux = require(VirtualEvents.Parent.Rodux)
local withMockProviders = require(VirtualEvents.withMockProviders)
local ShareEventModal = require(script.Parent.ShareEventModal)

local controls = {
	virtualEventId = "806241002238509066",
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		local store = Rodux.Store.new(function(state)
			return state
		end, {
			ScreenSize = Vector2.new(1280, 720),
		})

		return withMockProviders({
			ShareEventModal = React.createElement(ShareEventModal, {
				virtualEventId = props.controls.virtualEventId,
				onCopyA = function(deeplink)
					print("copying to clipboard:", deeplink)
				end,
				onShare = function(deeplink)
					print("sharing to chat:", deeplink)
				end,
				onClose = function()
					print("close modal")
				end,
			}),
		}, {
			store = store,
		})
	end,
}
