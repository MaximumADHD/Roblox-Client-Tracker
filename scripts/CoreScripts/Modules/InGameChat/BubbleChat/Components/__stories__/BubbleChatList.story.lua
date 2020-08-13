local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local AddMessage = require(script.Parent.Parent.Parent.Actions.AddMessage)
local chatReducer = require(script.Parent.Parent.Parent.Reducers.chatReducer)
local createMockMessage = require(script.Parent.Parent.Parent.Helpers.createMockMessage)
local BubbleChatList = require(script.Parent.Parent.BubbleChatList)

local MESSAGES = {
	createMockMessage({ userId = "1", text = "Hello, World" }),
	createMockMessage({ userId = "1", text = "This message is newer, so it appears at the bottom." }),

	createMockMessage({ userId = "2", text = "This user only sent one message." }),

	createMockMessage({ userId = "3", text = "Hello, World" }),
	createMockMessage({ userId = "3", text = "Hello, World" }),
	createMockMessage({ userId = "3", text = "This user sent three messages" }),
}

return function(target)
	local store = Rodux.Store.new(chatReducer)

	for _, message in ipairs(MESSAGES) do
		store:dispatch(AddMessage(message))
	end

	local children = {}

	children.Layout = Roact.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Horizontal,
	})

	local state = store:getState()

	for userId, messageIds in pairs(state.userMessages) do
		children[userId] = Roact.createElement("Frame", {
			Size = UDim2.new(1/3, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			BubbleChatList = Roact.createElement(BubbleChatList, {
				userId = userId,
			})
		})
	end

	local root = Roact.createElement(RoactRodux.StoreProvider, {
		store = store
	}, {
		Roact.createFragment(children)
	})

	local handle = Roact.mount(root, target, BubbleChatList.Name)

	return function()
		Roact.unmount(handle)
	end
end

