local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules
local Common = Modules.Common
local LuaChat = Modules.LuaChat

local Create = require(LuaChat.Create)
local Signal = require(Common.Signal)

local COLOR_BUTTON_DISABLED = Color3.new(0.6, 0.6, 0.6)
local COLOR_BUTTON_ENABLED = Color3.new(0.85, 0.85, 0.85)

local function reportButton(order, displayName, value)
	local enabled = (value ~= nil)

	return Create "TextButton" {
		Name = displayName,
		LayoutOrder = 4,
		Size = UDim2.new(0, 90, 1, -10),
		Text = displayName,
		AutoButtonColor = enabled,
		BackgroundColor3 = enabled and COLOR_BUTTON_ENABLED or COLOR_BUTTON_DISABLED,
		BorderSizePixel = enabled and 1 or 0,

		[Create.events] = {
			MouseButton1Click = function()
				if value == nil then
					return
				end

				print("\n")
				print(value)
				print("\n")
			end
		}
	}
end

local function getColor(status)
	if status == "pending" then
		return Color3.fromRGB(255, 255, 0)
	elseif type(status) == "number" then
		if status < 100 or status >= 400 then
			return Color3.fromRGB(200, 0, 0)
		else
			return Color3.fromRGB(0, 200, 0)
		end
	else
		return Color3.fromRGB(128, 128, 128)
	end
end

local HttpDebug = {
	Updated = Signal.new(),
	log = {},
	enabled = false
}

function HttpDebug:SetEnabled(value)
	self.enabled = value
end

function HttpDebug:AddRequest(method, url, requestBody)
	if not self.enabled then
		return
	end

	local request = {
		method = method,
		url = url,
		status = "pending",
		startTime = tick(),
		requestBody = requestBody,
		stackTrace = debug.traceback()
	}

	table.insert(self.log, request)

	local requestId = #self.log

	self.Updated:Fire()

	return requestId
end

function HttpDebug:FinishRequest(requestId, status, response)
	if not self.enabled then
		return
	end

	local request = self.log[requestId]

	if not request then
		warn("Couldn't find request with ID " .. tostring(requestId))
		return
	end

	request.status = status
	request.response = response
	request.endTime = tick()

	self.Updated:Fire()
end

function HttpDebug:Render()
	local children = {}

	for key, request in ipairs(self.log) do
		local color = getColor(request.status)
		local duration = 0

		if request.endTime then
			duration = (request.endTime - request.startTime) * 1000
		end

		local object = Create "Frame" {
			Name = "log-" .. key,
			LayoutOrder = key,
			Size = UDim2.new(1, 0, 0, 40),
			BackgroundColor3 = color,

			Create "Frame" {
				Name = "Inner",
				Size = UDim2.new(1, -16, 1, -8),
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
					Name = "Method",
					LayoutOrder = 0,
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 60, 1, 0),
					TextXAlignment = Enum.TextXAlignment.Left,
					Text = request.method
				},

				Create "TextLabel" {
					Name = "Status",
					LayoutOrder = 1,
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 60, 1, 0),
					TextXAlignment = Enum.TextXAlignment.Left,
					Text = request.status
				},

				Create "TextLabel" {
					Name = "Duration",
					LayoutOrder = 2,
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 80, 1, 0),
					TextXAlignment = Enum.TextXAlignment.Left,
					Text = ("%.2f ms"):format(duration)
				},

				Create "TextButton" {
					Name = "URL",
					LayoutOrder = 3,
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 375, 1, 0),
					TextXAlignment = Enum.TextXAlignment.Left,
					Text = request.url,
					ClipsDescendants = true,

					[Create.events] = {
						MouseButton1Click = function()
							print("\n")
							print(request.url)
							print("\n")
						end
					}
				},

				reportButton(4, "Stack Trace", request.stackTrace),
				reportButton(5, "Request", request.requestBody),
				reportButton(6, "Response", request.response)
			}
		}

		table.insert(children, object)
	end

	local container = Create "ScrollingFrame"({
		Size = UDim2.new(0, 940, 1, 0),
		Name = "HttpDebug",
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

return HttpDebug