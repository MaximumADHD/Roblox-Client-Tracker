local NotificationService = game:GetService("NotificationService")
local MemStorage = game:GetService("MemStorageService")
local HttpService = game:GetService("HttpService")

-- Notification Service Outputs

-- The input data is readable from the output
-- Any event listener can get the event
do
	pcall(function()
		NotificationService.RobloxEventReceived:Connect(function(event)
			debug([[
				Event Revieved:
				\tNamespace: %s
				\tDetail: %s
				\tDetail Type: %s
			]]):format(event.Namespace, HttpService:JSONDecode(event.Detail), event.DetailType)
		end)
	end)
end

-- MemStorage Tests
-- You can make an entry in MemStorage
-- You can read the value of that entry
-- You can change the value of that entry
-- Changing a value uses a bound function
pcall(function()
	-- Create key-value pair and bind it to a function
	MemStorage:SetItem("Example", 0)
	MemStorage:Bind("Example", function(value)
		print("Callback for Example")
		print("Value is ", value)
	end)
end)
