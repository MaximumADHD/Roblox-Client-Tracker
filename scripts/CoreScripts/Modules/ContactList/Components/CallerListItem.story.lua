local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local CallerListItem = require(script.Parent.CallerListItem)

return {
	stories = {
		Finished = function(props)
			return React.createElement(CallerListItem, {
				caller = {
					callId = "test_call_id",
					callerId = 2,
					participants = {
						{
							userId = 1,
							displayName = "localuserDisplayName",
							userName = "localuser",
						},
						{
							userId = 2,
							displayName = "SuperCoolDisplayName",
							userName = "SuperCoolUsername",
						},
					},
					status = "CallFinished",
					startUtc = 1681338167883,
					endUtc = 1681338335366,
					universeId = 123,
					placeId = 456,
				},
				localUserId = 1,
				showDivider = props.controls.showDivider,
				OpenCallDetails = function() end,
			})
		end,
		Outgoing = function(props)
			return React.createElement(CallerListItem, {
				caller = {
					callId = "test_call_id",
					callerId = 1,
					participants = {
						{
							userId = 1,
							displayName = "localuserDisplayName",
							userName = "localuser",
						},
						{
							userId = 2,
							displayName = "SuperCoolDisplayName",
							userName = "SuperCoolUsername",
						},
					},

					status = "CallFinished",
					startUtc = 1681338167883,
					endUtc = 1681338335366,
					universeId = 123,
					placeId = 456,
				},
				localUserId = 1,
				showDivider = props.controls.showDivider,
				OpenCallDetails = function() end,
			})
		end,
		Missed = function(props)
			return React.createElement(CallerListItem, {
				caller = {
					callId = "test_call_id",
					callerId = 1,
					participants = {
						{
							userId = 1,
							displayName = "localuserDisplayNamw",
							userName = "localuser",
						},
						{
							userId = 2,
							displayName = "SuperCoolDisplayName",
							userName = "SuperCoolUsername",
						},
					},
					status = "CallMissed",
					startUtc = 1681338167883,
					endUtc = 1681338335366,
					universeId = 123,
					placeId = 456,
				},
				localUserId = 1,
				showDivider = props.controls.showDivider,
				OpenCallDetails = function() end,
			})
		end,
	},
	controls = {
		showDivider = true,
	},
}
