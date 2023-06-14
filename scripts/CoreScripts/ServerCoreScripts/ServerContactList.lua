local RobloxReplicatedStorage = game:GetService('RobloxReplicatedStorage')
local SocialService = game:GetService("SocialService")

local RemoteInvokeIrisInvite = Instance.new("RemoteEvent")
RemoteInvokeIrisInvite.Name = "ContactListInvokeIrisInvite"
RemoteInvokeIrisInvite.Parent = RobloxReplicatedStorage

RemoteInvokeIrisInvite.OnServerEvent:Connect(function(player, tag, calleeId)
    -- We want to fire this event from the server because there's a callback it
    -- uses that must be set on the server. This is a Roblox internal event.
    SocialService:InvokeIrisInvite(player, tag, { player.UserId, calleeId })
    SocialService:InvokeIrisInvitePromptClosed(player)
end)
