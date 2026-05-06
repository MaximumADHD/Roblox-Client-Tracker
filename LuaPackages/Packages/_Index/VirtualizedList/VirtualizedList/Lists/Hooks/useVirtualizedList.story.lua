local srcWorkspace = script.Parent.Parent.Parent
local Packages = srcWorkspace.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local useVirtualizedList = require(script.Parent.useVirtualizedList)
type VirtualizedItem<T> = useVirtualizedList.VirtualizedItem<T>

type Message = {
	text: string,
	sender: string,
}

-- Generate a lot of chat messages
local chatMessages: { VirtualizedItem<Message> } = {}
for i = 1, 500 do
	table.insert(chatMessages, {
		key = tostring(i),
		height = 50,
		item = { text = "Message " .. i, sender = (i % 2 == 0) and "Alice" or "Bob" },
		index = i,
	})
end

local function renderItem(virtualizedItem: VirtualizedItem<Message>): React.ReactElement<any>
	local message = virtualizedItem.item
	return React.createElement("TextLabel", {
		Size = UDim2.new(1, 0, 0, virtualizedItem.height),
		BackgroundTransparency = 1,
		Text = message.sender .. ": " .. message.text,
		TextSize = 20,
		TextXAlignment = Enum.TextXAlignment.Left,
	})
end

type Props = {
	controls: {
		scrollToKey: string?,
	},
}

return {
	controls = {
		scrollToKey = Dash.map(chatMessages, function(message)
			return message.key
		end),
	},
	story = function(props: Props)
		local controls = props.controls
		local ref = React.useRef(nil)
		local prevScrollItem = React.useRef(nil :: string?)

		local items, scrollToKey = useVirtualizedList({
			virtualizedItems = chatMessages,
			renderItem = renderItem,
			scrollingFrameRef = ref,
		})

		-- If we pick a scrollTo, scroll to it
		React.useEffect(function()
			if controls.scrollToKey and prevScrollItem.current ~= controls.scrollToKey then
				scrollToKey(controls.scrollToKey)
				prevScrollItem.current = controls.scrollToKey
			end
		end, { controls.scrollToKey })

		return React.createElement("ScrollingFrame", {
			Size = UDim2.new(1, 0, 0, 400),
			ref = ref,
		}, items)
	end,
}
