local SquadWidget = script:FindFirstAncestor("SquadWidget")
local dependencies = require(SquadWidget.dependencies)

local React = dependencies.React
local Roact = dependencies.Roact
local llama = dependencies.llama
local dependencyArray = dependencies.Hooks.dependencyArray
local Constants = require(SquadWidget.SquadLobby.Common.Constants)
local ModelTypes = require(SquadWidget.SquadLobby.Common.ModelTypes)

local SquadLobbyUserCard = require(SquadWidget.SquadLobby.Components.SquadLobbyUserCard.SquadLobbyUserCard)
local SquadLobbyAddFriendCard =
	require(SquadWidget.SquadLobby.Components.SquadLobbyAddFriendCard.SquadLobbyAddFriendCard)

type Props = {
	-- List of users to show as cards
	users: { [number]: ModelTypes.User },
	-- Layout order
	layoutOrder: number?,
}

-- Given a list of users, display all the users as a user card
local SquadLobbyUsers = function(props: Props)
	local cardsContainer = React.useMemo(function()
		local users = props.users
		local cards = {}

		for index, user: ModelTypes.User in ipairs(users) do
			local key = "UserCard" .. index

			cards[key] = Roact.createElement(SquadLobbyUserCard, {
				user = user,
				-- TODO: Define isLoading, isBlocked, experienceName props
				layoutOrder = index,
			})
		end

		if #users < Constants.SQUAD_MAX_CAPACITY then
			cards["AddFriendCard"] = Roact.createElement(SquadLobbyAddFriendCard, {
				layoutOrder = #users + 1,
			})
		end

		return llama.Dictionary.join(cards, {
			layout = Roact.createElement("UIGridLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				FillDirection = Enum.FillDirection.Horizontal,
				CellPadding = UDim2.new(0, 28, 0, 16),
				CellSize = UDim2.new(0, Constants.USER_CARD_SIZE.X, 0, Constants.USER_CARD_SIZE.Y),
			}),
		})
	end, dependencyArray(props.users))

	-- TODO (COEXP-850) - Show add friends circle if not maxed lobby
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		LayoutOrder = props.layoutOrder,
	}, cardsContainer)
end

return SquadLobbyUsers
