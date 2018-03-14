local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules
local Common = Modules.Common
local LuaChat = Modules.LuaChat

local Create = require(LuaChat.Create)
local Signal = require(Common.Signal)

local COLOR_BUTTON_ENABLED = Color3.new(0.85, 0.85, 0.85)

local ActionDebug = {
	Updated = Signal.new(),
	log = {},
	enabled = false,
	updateQueued = false
}

function ActionDebug:SetEnabled(value)
	self.enabled = value
end

function ActionDebug:QueueUpdate()
	if not self.updateQueued then
		spawn(function()
			self.Updated:Fire()
		end)
	end
end

function ActionDebug:AddAction(data)
	if not self.enabled then
		return "DEBUG DISABLED"
	end

	local action = {
		data = data,
		status = "pending",
		startTime = tick()
	}

	table.insert(self.log, action)

	local actionId = #self.log

	self:QueueUpdate()

	return actionId
end

function ActionDebug:SetActionMutated(actionId)
	if not self.enabled then
		return
	end

	local action = self.log[actionId]

	if not action then
		warn("Couldn't find action with ID " .. tostring(actionId))
		return
	end

	action.status = "mutated"
	action.mutatedTime = tick()

	self:QueueUpdate()
end

function ActionDebug:FinishAction(actionId)
	if not self.enabled then
		return
	end

	local action = self.log[actionId]

	if not action then
		warn("Couldn't find action with ID " .. tostring(actionId))
		return
	end

	action.status = "done"
	action.endTime = tick()

	self:QueueUpdate()
end

function ActionDebug:Render()
	self.updateQueued = false

	local children = {}

	for key, action in ipairs(self.log) do
		local actionType
		local actionBody

		if type(action.data) == "function" then
			actionType = "thunk"
			actionBody = "<function>"
		elseif type(action.data) == "table" then
			actionType = action.data.type
			actionBody = game:GetService("HttpService"):JSONEncode(action.data)
		else
			actionType = type(action.data)
			actionBody = tostring(action.data)
		end

		local mutationDuration = 0
		if action.mutatedTime then
			mutationDuration = (action.mutatedTime - action.startTime) * 1000
		end

		local duration = 0
		if action.endTime then
			duration = (action.endTime - action.startTime) * 1000
		end

		local object = Create "Frame" {
			Name = "log-" .. key,
			LayoutOrder = key,
			Size = UDim2.new(1, 0, 0, 34),
			BackgroundColor3 = Color3.new(0.7, 0.7, 0.7),

			Create "Frame" {
				Name = "Inner",
				Size = UDim2.new(1, -16, 1, -2),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,

				Create "UIListLayout" {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, 8)
				},

				Create "TextLabel" {
					Name = "LogNumber",
					LayoutOrder = 0,
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 30, 1, 0),
					TextXAlignment = Enum.TextXAlignment.Left,
					Text = tostring(key)
				},

				Create "TextLabel" {
					Name = "MutationTime",
					LayoutOrder = 1,
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 60, 1, 0),
					TextXAlignment = Enum.TextXAlignment.Left,
					Text = ("%.2f ms"):format(mutationDuration)
				},

				Create "TextLabel" {
					Name = "ElapsedTime",
					LayoutOrder = 2,
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 60, 1, 0),
					TextXAlignment = Enum.TextXAlignment.Left,
					Text = ("%.2f ms"):format(duration)
				},

				Create "TextLabel" {
					Name = "Status",
					LayoutOrder = 3,
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 60, 1, 0),
					TextXAlignment = Enum.TextXAlignment.Left,
					Text = action.status
				},

				Create "TextLabel" {
					Name = "ActionType",
					LayoutOrder = 4,
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 150, 1, 0),
					TextXAlignment = Enum.TextXAlignment.Left,
					Text = actionType
				},

				Create "TextButton" {
					Name = "Details",
					LayoutOrder = 5,
					Size = UDim2.new(0, 90, 1, -10),
					Text = "Details",
					BackgroundColor3 = COLOR_BUTTON_ENABLED,

					[Create.events] = {
						MouseButton1Click = function()
							print(("Action %d:\n"):format(key))
							print(actionBody)
							print("\n")
						end
					}
				}
			}
		}

		table.insert(children, object)
	end

	local container = Create "ScrollingFrame"({
		Size = UDim2.new(0, 520, 1, 0),
		Name = "ActionDebug",
		Active = true,

		Create "UIListLayout" {
			SortOrder = Enum.SortOrder.LayoutOrder
		}
	}, children)

	local height = 0
	for _, child in ipairs(children) do
		height = height + child.AbsoluteSize.Y
	end

	container.CanvasSize = UDim2.new(0, 350, 0, height)

	return container
end

return ActionDebug