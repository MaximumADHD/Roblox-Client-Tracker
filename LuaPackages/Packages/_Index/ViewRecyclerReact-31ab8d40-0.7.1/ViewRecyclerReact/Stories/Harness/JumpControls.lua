local Root = script:FindFirstAncestor("ViewRecyclerReact")
assert(Root ~= nil, "JumpControls must be mounted under view-recycler-react")

local React = require(Root.Parent.React)

local e = React.createElement

local function JumpControls(props)
	local function jump(index: number)
		local handle = props.listRef.current
		if handle ~= nil then
			handle.scrollToIndex(index, {
				alignment = props.alignment,
			})
		end
	end

	return e("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
	}, {
		First = e("TextButton", {
			Position = UDim2.fromOffset(8, 6),
			Size = UDim2.fromOffset(100, 30),
			Text = "Jump to #1",
			[React.Event.Activated] = function()
				jump(1)
			end,
		}),
		Target = e("TextButton", {
			Position = UDim2.fromOffset(114, 6),
			Size = UDim2.fromOffset(176, 30),
			Text = `Jump to #{props.target} ({props.alignment})`,
			[React.Event.Activated] = function()
				jump(props.target)
			end,
		}),
		Last = e("TextButton", {
			Position = UDim2.fromOffset(296, 6),
			Size = UDim2.fromOffset(120, 30),
			Text = `Jump to #{props.itemCount}`,
			[React.Event.Activated] = function()
				jump(props.itemCount)
			end,
		}),
	})
end

return JumpControls
