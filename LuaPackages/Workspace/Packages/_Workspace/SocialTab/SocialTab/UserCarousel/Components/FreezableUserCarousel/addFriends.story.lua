local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local FreezableUserCarousel = require(script.Parent)

local Roact = dependencies.Roact
local llama = dependencies.llama
local Mock = dependencies.Mock
local UserUtils = require(SocialTab.User)

local addFriendsStory = Roact.PureComponent:extend("addFriendsStory")

function addFriendsStory:init()
	self.state = {
		friends = {},
	}

	self.addFriends = function()
		local newFriend = UserUtils.makeMockUser({
			id = tostring(#self.state.friends + 1),
			username = "Elsa",
			displayName = "Elsa the " .. #self.state.friends + 1,
		})

		self:setState({
			friends = llama.List.join(self.state.friends, { newFriend }),
		})
	end
end

function addFriendsStory:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}),
		addFriendsTestButton = Roact.createElement("TextButton", {
			BackgroundColor3 = Color3.new(1, 0, 1),
			LayoutOrder = 1,
			Size = UDim2.new(0, 100, 0, 30),
			Text = "AddFriends",

			[Roact.Event.Activated] = self.addFriends,
		}),
		Carousel = Roact.createElement(FreezableUserCarousel, {
			analytics = Mock.MagicMock.new(),
			friends = self.state.friends,
			isFrozen = self.props.isFrozen,
			LayoutOrder = 2,
		}),
	})
end

return function(props)
	return Roact.createElement(addFriendsStory, props)
end
