return function()

	local FriendStatusChanged = Instance.new("BindableEvent")

	local localPlayer = {
		UserId = 123,
		FriendStatusChanged = FriendStatusChanged.Event,
		RequestFriendship = function(player)
			FriendStatusChanged:Fire(Enum.FriendStatus.FriendRequestSent)
		end,
		RevokeFriendship = function(player)
			FriendStatusChanged:Fire(Enum.FriendStatus.NotFriend)
		end,
	}

	local FriendRequestStatus = require(script.Parent.FriendRequestStatus)

	it("should run without errors", function()
		FriendRequestStatus.setLocalPlayer(localPlayer)
		FriendRequestStatus.connect(function() end):Disconnect()
		FriendRequestStatus.connectLocalFriendRequestResponce(function() end):Disconnect()
		FriendRequestStatus.issueFriendRequest({UserId=123})
		FriendRequestStatus.cancelFriendRequest({UserId=123})
		FriendRequestStatus.acceptFriendRequest({UserId=123})
		FriendRequestStatus.rejectFriendRequest({UserId=123})
		FriendRequestStatus.requestUnfriend({UserId=123})
		FriendRequestStatus.requestingStatus({UserId=123})
		FriendRequestStatus.reset()
		FriendRequestStatus.menuOpenStatusChange(true)
		FriendRequestStatus.menuOpenStatusChange(false)
	end)
end
