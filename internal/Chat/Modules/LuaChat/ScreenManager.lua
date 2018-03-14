local GuiService = game:GetService("GuiService")

local Modules = script.Parent

local ScreenRouter = require(Modules.ScreenRouter)
local Device = require(Modules.Device)
local DialogFrame = require(Modules.Views.DialogFrame)

local ScreenManager = {}

--[[
	Create a new ScreenManager that uses the given 'root'
]]
function ScreenManager.new(root, appState)
	local self = {
		_stack = {},
		_framesToViews = {},
		rbx = root,
		appState = appState,
		route = nil,
		routeMap = nil,
		paused = false,
	}

	local dialogFrame = DialogFrame.new(appState, nil)
	dialogFrame.rbx.Parent = self.rbx
	self.dialogFrame = dialogFrame

	setmetatable(self, {
		__index = ScreenManager
	})

	if self.appState then
		self.appState.store.Changed:Connect(function(current, previous)
			self:Update(current, previous)
		end)
	end

	return self
end

function ScreenManager:Update(current, previous)
	if current == previous then
		return
	end

	if self.paused ~= self.appState.store:GetState().ChatAppReducer.ToggleChatPaused then
		self.paused = self.appState.store:GetState().ChatAppReducer.ToggleChatPaused
		if self.paused then
			self:DisableAllViews()
		else
			self:EnableAllViews()
			self:SetTabBarVisible(current.ChatAppReducer.TabBarVisible)
		end
	end

	if self.paused then
		return
	end

	if current.ChatAppReducer.TabBarVisible ~= previous.ChatAppReducer.TabBarVisible then
		self:SetTabBarVisible(current.ChatAppReducer.TabBarVisible)
	end

	if not next(current.ChatAppReducer.Location.current) then
		for _, view in ipairs(self._stack) do
			self:PopView(view)
		end
		return
	end

	if current.ChatAppReducer.Location.current == self.route then

		return
	end

	if current.FormFactor == Device.FormFactor.UNKNOWN then
		return
	end

	local routeMap = ScreenRouter.RouteMaps[current.FormFactor]

	if routeMap[current.ChatAppReducer.Location.current.intent] == nil then
		return
	end

	--If a view representing this route already exists on the stack, we'll just pop down to it
	local viewInStack = false
	for _, view in ipairs(self._stack) do
		if ScreenRouter:Compare(view.route, current.ChatAppReducer.Location.current) then
			viewInStack = true
			break
		end
	end

	if viewInStack then
		while not ScreenRouter:Compare(self:GetCurrentView().route, current.ChatAppReducer.Location.current) do
			self:PopView(self:GetCurrentView())
		end
	else
		if current.ChatAppReducer.Location.current.popToIntent ~= nil then
			while #self._stack > 1 and current.ChatAppReducer.Location.current.popToIntent ~= self:GetCurrentView().route.intent do
				self:PopView(self:GetCurrentView())
			end
		end
		local newView = ScreenRouter:GetView(self.appState, current.ChatAppReducer.Location.current, routeMap)
		self:PushView(newView, current.ChatAppReducer.Location.current.intent)
	end

	self.route = current.ChatAppReducer.Location.current
end

function ScreenManager:GetViewOrderMap()
	local indexMap = {}

	for i = #self._stack, 1, -1 do
		local view = self._stack[i]
		if not indexMap[view] then
			indexMap[view] = i
		end
	end

	return indexMap
end

function ScreenManager:SortViews()
	local indexMap = self:GetViewOrderMap()

	for frame, view in pairs(self._framesToViews) do
		local order = indexMap[view] or 0
		-- TODO: CLIPLAYEREX-1051: We shoud set the frame sort order here. This is something that the player experience
		-- team is working on. It should be fine for us not to do this for now.
		frame.Name = ("LuaChat-layer%d"):format(order)
	end
end

function ScreenManager:GetCurrentView()
	return self._stack[#self._stack]
end

function ScreenManager:GetViewStack()
	return self._stack
end

function ScreenManager:PushView(view, intent)

	local current = self:GetCurrentView()

	-- There are no reasons to push a view on top of itself!
	if current == view then
		error("Tried to push a view on top of itself!", 2)
	end

	local newViewIntent
	if view then
		newViewIntent = view.route.intent
	end
	local curIntent
	if current then
		curIntent = current.route.intent
	end

	if current then
		current:Pause(view)
		self.dialogFrame:TransitionDialogFrame(current, curIntent, newViewIntent, DialogFrame.TransitionType.Pause, nil)
	end

	table.insert(self._stack, view)

	if view and view.rbx then
		local frame = self.dialogFrame:AddDialogFrame(intent)
		self._framesToViews[frame] = view

		frame.ChildRemoved:Connect(function()
			self._framesToViews[frame] = nil
			frame:Destroy()
		end)

		view.rbx.Parent = frame

		self:SortViews()
	end

	view:Start(current)
	-- If we're the only view, we don't need to transition in.
	if #self._stack > 1 then
		self.dialogFrame:TransitionDialogFrame(view, newViewIntent, curIntent, DialogFrame.TransitionType.Start, nil)
	end
end

--[[
	Pop the view that's currently being shown.

	Optionally, pass in a view to make the ScreenManager only pop if that view
	is the one on top of the stack. This makes the pop operation idempotent.
]]
function ScreenManager:PopView(expectView)
	if expectView and expectView ~= self:GetCurrentView() then
		return
	end

	local last = self._stack[#self._stack]
	local current = self._stack[#self._stack - 1]
	local lastIntent
	if last then
		lastIntent = last.route.intent
	end
	local curIntent
	if current then
		curIntent = current.route.intent
	end

	if last then
		self:SortViews()

		last:Stop(current)
		self.dialogFrame:TransitionDialogFrame(last, lastIntent, curIntent, DialogFrame.TransitionType.Stop,
			function(playbackState)
				if playbackState == Enum.PlaybackState.Completed then
					last:Destruct()
					if last.rbx then
						last.rbx.Parent = nil
					end
				end
			end)
	end

	table.remove(self._stack, #self._stack)

	if current then
		current:Resume(last)
		self.dialogFrame:TransitionDialogFrame(current, curIntent, lastIntent, DialogFrame.TransitionType.Resume, nil)
	end

	self.dialogFrame:ConfigureModalFrame()

	return last
end

function ScreenManager:EnableAllViews()
	self.dialogFrame.rbx.Enabled = true
end

function ScreenManager:DisableAllViews()
	self.dialogFrame.rbx.Enabled = false
end

function ScreenManager:SetTabBarVisible(visible)
	if visible then
		GuiService:BroadcastNotification("", GuiService:GetNotificationTypeList().SHOW_TAB_BAR)
	else
		GuiService:BroadcastNotification("", GuiService:GetNotificationTypeList().HIDE_TAB_BAR)
	end
end

return ScreenManager