local Packages = script:FindFirstAncestor("ExperienceChat").Parent
local Roact = require(Packages.Roact)
local List = require(Packages.llama).List

local BottomLockedScrollViewV2 = require(script.Parent.BottomLockedScrollViewV2)
local TextMessageLabel = require(script.Parent.Parent.TextMessageLabel)

return {
	summary = "BottomLockedScrollView is flagged. V1 is on the left and V2 is on the right",
	story = function(props)
		local messages = table.create(props.controls.numberOfEntries or 50, "a")
		local childrenFragment = Roact.createFragment(List.map(messages, function(_, index)
			return Roact.createElement(TextMessageLabel, {
				key = index,
				chatWindowSettings = {},
				message = {
					prefixText = "hello",
					text = string.rep("testing " .. tostring(index) .. " ", 10),
				},
			})
		end))

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.fromOffset(300, 500),
		}, {
			layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
			}),
			view2 = Roact.createElement(BottomLockedScrollViewV2, {
				Size = UDim2.fromOffset(300, 500),
				messages = messages,
			}, {
				layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				children = childrenFragment,
			}),
		})
	end,
	controls = {
		numberOfEntries = 50,
	},
	props = {
		children = nil,
	},
}
