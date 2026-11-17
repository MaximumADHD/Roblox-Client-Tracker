--!nonstrict

-- Read-only legend (bottom-right) of each active ability's icon and the key to press it.
-- Shown only on KeyboardAndMouse and Gamepad, hidden on Touch.

local UserInputService = game:GetService("UserInputService")

local CommonUtils = require(script.Parent.Parent:WaitForChild("CommonUtils"))
local InputSlots = require(script.Parent:WaitForChild("InputSlots"))
local ConnectionUtil = CommonUtils.get("ConnectionUtil")

-- Connection-tracking key.
local RESOLVE_WATCHER_KEY = "ResolveWatcher"

-- The trailing "More Actions" entry and the key shown for it on each input type.
local MORE_ACTIONS_LABEL = "More Actions" -- This isn't yet localized. Likely, this code will move to core scripts and localization can happen then.
local MORE_ACTIONS_KEYCODE_GAMEPAD = Enum.KeyCode.DPadUp
local MORE_ACTIONS_KEYCODE_KEYBOARD = Enum.KeyCode.M

-- Bar container: inset from the bottom-right screen corner, inner padding, and background.
local BAR_MARGIN = 17
local BAR_PADDING_X = 12
local BAR_PADDING_LEFT_EXTRA = 4
local BAR_PADDING_Y = 4
local BAR_COLOR = Color3.fromRGB(18, 18, 21)
local BAR_TRANSPARENCY = 0.4

-- Each entry (key indicator + action name) and the spacing between entries.
local ENTRY_SPACING = 8
local ENTRY_HEIGHT = 28
local NAME_RIGHT_PADDING = 8
local NAME_FONT = Enum.Font.BuilderSans
local NAME_TEXT_SIZE = 18
local NAME_TEXT_Y_NUDGE = 0
local ACTION_LABEL_COLOR = Color3.fromRGB(247, 247, 248)

-- Keyboard keycap box. The Y nudge shifts the text within the box to visually center the glyphs.
local KEY_FONT = Enum.Font.BuilderSansBold
local KEY_TEXT_SIZE = 14
local KEY_BOX_COLOR = Color3.fromRGB(247, 247, 248)
local KEY_TEXT_COLOR = Color3.fromRGB(18, 18, 21)
local KEY_BOX_MIN_SIZE = 10
local KEY_BOX_CORNER = 2
local KEY_BOX_PADDING_X = 5
local KEY_BOX_PADDING_Y = 2
local KEY_TEXT_Y_NUDGE = 1

-- Gamepad button glyph image, used in place of the keycap when available.
local GAMEPAD_GLYPH_SIZE = 24

local GAMEPAD_KEYCODES = {}
for _, keyCode in
	{
		Enum.KeyCode.ButtonA,
		Enum.KeyCode.ButtonB,
		Enum.KeyCode.ButtonX,
		Enum.KeyCode.ButtonY,
		Enum.KeyCode.ButtonL1,
		Enum.KeyCode.ButtonR1,
		Enum.KeyCode.ButtonL2,
		Enum.KeyCode.ButtonR2,
		Enum.KeyCode.ButtonL3,
		Enum.KeyCode.ButtonR3,
		Enum.KeyCode.ButtonStart,
		Enum.KeyCode.ButtonSelect,
		Enum.KeyCode.DPadLeft,
		Enum.KeyCode.DPadRight,
		Enum.KeyCode.DPadUp,
		Enum.KeyCode.DPadDown,
		Enum.KeyCode.Thumbstick1,
		Enum.KeyCode.Thumbstick2,
	}
do
	GAMEPAD_KEYCODES[keyCode] = true
end

local TV_REMOTE_KEYCODES = {
	[Enum.KeyCode.ButtonCenter] = true,
	[Enum.KeyCode.ButtonUp] = true,
	[Enum.KeyCode.ButtonDown] = true,
	[Enum.KeyCode.ButtonLeft] = true,
	[Enum.KeyCode.ButtonRight] = true,
}

local function actionKeyCode(action: InputAction): Enum.KeyCode?
	for _, child in action:GetChildren() do
		if child:IsA("InputBinding") then
			local keyCode = child.KeyCode
			local matchesInput
			if UserInputService.PreferredInput == Enum.PreferredInput.Gamepad then
				matchesInput = GAMEPAD_KEYCODES[keyCode] == true
			else
				matchesInput = keyCode ~= Enum.KeyCode.None
					and not GAMEPAD_KEYCODES[keyCode]
					and not TV_REMOTE_KEYCODES[keyCode]
			end
			if matchesInput then
				return keyCode
			end
		end
	end
	return nil
end

local function createEntryFrame(parent: Instance, name: string, layoutOrder: number): Frame
	local entry = Instance.new("Frame")
	entry.Name = name
	entry.LayoutOrder = layoutOrder
	entry.Size = UDim2.new(0, 0, 0, ENTRY_HEIGHT)
	entry.AutomaticSize = Enum.AutomaticSize.X
	entry.BackgroundTransparency = 1
	entry.BorderSizePixel = 0
	entry.Parent = parent

	local padding = Instance.new("UIPadding")
	padding.PaddingRight = UDim.new(0, NAME_RIGHT_PADDING)
	padding.Parent = entry

	local row = Instance.new("UIListLayout")
	row.FillDirection = Enum.FillDirection.Horizontal
	row.VerticalAlignment = Enum.VerticalAlignment.Center
	row.SortOrder = Enum.SortOrder.LayoutOrder
	row.Padding = UDim.new(0, 4)
	row.Parent = entry

	return entry
end

-- Gamepad: the platform button glyph via GetImageForKeyCode; otherwise (or if it has no glyph) the key box.
local function createKeyIndicator(entry: Frame, keyCode: Enum.KeyCode?, layoutOrder: number)
	if keyCode and UserInputService.PreferredInput == Enum.PreferredInput.Gamepad then
		local image = UserInputService:GetImageForKeyCode(keyCode)
		if image ~= "" then
			local glyph = Instance.new("ImageLabel")
			glyph.Name = "Key"
			glyph.LayoutOrder = layoutOrder
			glyph.Size = UDim2.new(0, GAMEPAD_GLYPH_SIZE, 0, GAMEPAD_GLYPH_SIZE)
			glyph.BackgroundTransparency = 1
			glyph.Image = image
			glyph.Parent = entry
			return
		end
	end

	local keyLabel = "?"
	if keyCode and keyCode ~= Enum.KeyCode.None then
		keyLabel = UserInputService:GetStringForKeyCode(keyCode, Enum.KeyCodeStringFormat.Abbreviated)
		if keyLabel:match("^%s*$") then
			keyLabel = keyCode.Name
		end
	end

	local keycap = Instance.new("TextLabel")
	keycap.Name = "Key"
	keycap.LayoutOrder = layoutOrder
	keycap.AutomaticSize = Enum.AutomaticSize.XY
	keycap.Size = UDim2.new(0, 0, 0, 0)
	keycap.BackgroundColor3 = KEY_BOX_COLOR
	keycap.BackgroundTransparency = 0
	keycap.BorderSizePixel = 0
	keycap.Font = KEY_FONT
	keycap.TextSize = KEY_TEXT_SIZE
	keycap.TextColor3 = KEY_TEXT_COLOR
	keycap.Text = keyLabel
	keycap.Parent = entry

	local keycapCorner = Instance.new("UICorner")
	keycapCorner.CornerRadius = UDim.new(0, KEY_BOX_CORNER)
	keycapCorner.Parent = keycap

	local keycapMin = Instance.new("UISizeConstraint")
	keycapMin.MinSize = Vector2.new(KEY_BOX_MIN_SIZE, KEY_BOX_MIN_SIZE)
	keycapMin.Parent = keycap

	local keycapPad = Instance.new("UIPadding")
	keycapPad.PaddingLeft = UDim.new(0, KEY_BOX_PADDING_X)
	keycapPad.PaddingRight = UDim.new(0, KEY_BOX_PADDING_X)
	keycapPad.PaddingTop = UDim.new(0, KEY_BOX_PADDING_Y - KEY_TEXT_Y_NUDGE)
	keycapPad.PaddingBottom = UDim.new(0, KEY_BOX_PADDING_Y + KEY_TEXT_Y_NUDGE - 1)
	keycapPad.Parent = keycap
end

local function createLabel(entry: Frame, text: string, layoutOrder: number)
	local label = Instance.new("TextLabel")
	label.Name = "Label"
	label.LayoutOrder = layoutOrder
	label.AutomaticSize = Enum.AutomaticSize.X
	label.Size = UDim2.new(0, 0, 0, ENTRY_HEIGHT)
	label.BackgroundTransparency = 1
	label.Font = NAME_FONT
	label.TextSize = NAME_TEXT_SIZE
	label.TextColor3 = ACTION_LABEL_COLOR
	label.Text = text
	label.Parent = entry

	local labelPad = Instance.new("UIPadding")
	labelPad.PaddingTop = UDim.new(0, -NAME_TEXT_Y_NUDGE)
	labelPad.PaddingBottom = UDim.new(0, NAME_TEXT_Y_NUDGE)
	labelPad.Parent = label
end

type AbilitiesKeybindBarClass = {
	new: (Instance) -> AbilitiesKeybindBar,
}

export type AbilitiesKeybindBar = typeof(setmetatable({} :: {}, {} :: AbilitiesKeybindBarClass))

local AbilitiesKeybindBar = {}
AbilitiesKeybindBar.__index = AbilitiesKeybindBar

function AbilitiesKeybindBar.new(parent: Instance)
	local self = setmetatable({}, AbilitiesKeybindBar)

	self.parent = parent
	self.characterContext = nil
	self.created = false
	self.enabled = false
	self.bar = nil
	self.connections = ConnectionUtil.new()
	-- Separate from self.connections so they can be dropped and rewired when the context re-resolves.
	self.contextConnections = ConnectionUtil.new()

	return self
end

function AbilitiesKeybindBar:GetInputContextsParent(): Instance?
	return script:FindFirstAncestor("PlayerModule")
end

function AbilitiesKeybindBar:ResolveCharacterContext(): Instance?
	local parent = self:GetInputContextsParent()
	local inputContexts = parent and parent:FindFirstChild("InputContexts")
	if not inputContexts then
		return nil
	end
	return inputContexts:FindFirstChild("CharacterContext")
end

function AbilitiesKeybindBar:ResolveAndBind()
	self.connections:disconnect(RESOLVE_WATCHER_KEY)

	local characterContext = self:ResolveCharacterContext()
	if characterContext then
		self:BindCharacterContext(characterContext)
		return
	end

	local parent = self:GetInputContextsParent()
	if not parent then
		return
	end

	local function bindWhenCharacterContextReady(inputContexts: Instance)
		local existing = inputContexts:FindFirstChild("CharacterContext")
		if existing then
			self.connections:disconnect(RESOLVE_WATCHER_KEY)
			self:BindCharacterContext(existing)
			return
		end
		self.connections:trackConnection(
			RESOLVE_WATCHER_KEY,
			inputContexts.ChildAdded:Connect(function(child)
				if child.Name == "CharacterContext" then
					self.connections:disconnect(RESOLVE_WATCHER_KEY)
					self:BindCharacterContext(child)
				end
			end)
		)
	end

	local inputContexts = parent:FindFirstChild("InputContexts")
	if inputContexts then
		bindWhenCharacterContextReady(inputContexts)
		return
	end
	self.connections:trackConnection(
		RESOLVE_WATCHER_KEY,
		parent.ChildAdded:Connect(function(child)
			if child.Name == "InputContexts" then
				bindWhenCharacterContextReady(child)
			end
		end)
	)
end

function AbilitiesKeybindBar:BindCharacterContext(characterContext: Instance?)
	self.characterContext = characterContext

	self.contextConnections:disconnectAll()

	if characterContext then
		local function watchAction(action: InputAction)
			self.contextConnections:trackConnection(
				action.Name .. "_Enabled",
				action:GetPropertyChangedSignal("Enabled"):Connect(function()
					self:Rebuild()
				end)
			)
			self.contextConnections:trackConnection(
				action.Name .. "_AttributeChanged",
				action.AttributeChanged:Connect(function()
					self:Rebuild()
				end)
			)
		end
		for slot = 1, InputSlots.GetNumAbilitySlots() do
			local action = characterContext:FindFirstChild("AbilityAction" .. slot)
			if action then
				watchAction(action)
			end
		end
		self.contextConnections:trackConnection(
			"ChildAdded",
			characterContext.ChildAdded:Connect(function(child)
				if child:IsA("InputAction") and string.match(child.Name, "^AbilityAction%d+$") then
					watchAction(child)
					self:Rebuild()
				end
			end)
		)
		self.contextConnections:trackConnection(
			"ChildRemoved",
			characterContext.ChildRemoved:Connect(function(child)
				if child:IsA("InputAction") and string.match(child.Name, "^AbilityAction%d+$") then
					self.contextConnections:disconnect(child.Name .. "_Enabled")
					self.contextConnections:disconnect(child.Name .. "_AttributeChanged")
					self:Rebuild()
				end
			end)
		)
	end

	self:Rebuild()
end

function AbilitiesKeybindBar:IsVisiblePlatform(): boolean
	local preferred = UserInputService.PreferredInput
	return preferred == Enum.PreferredInput.KeyboardAndMouse or preferred == Enum.PreferredInput.Gamepad
end

function AbilitiesKeybindBar:Enable(enable: boolean)
	if self.enabled == enable then
		return
	end
	self.enabled = enable

	if enable and not self.created then
		self:Create()
		self.created = true
	end

	self:Rebuild()
end

function AbilitiesKeybindBar:CreateEntry(slot: number, displayName: string, keyCode: Enum.KeyCode?)
	local entry = createEntryFrame(self.bar, "Slot" .. slot, slot)

	createKeyIndicator(entry, keyCode, 1)
	createLabel(entry, displayName, 2)
end

function AbilitiesKeybindBar:CreateActionEntry(
	name: string,
	layoutOrder: number,
	labelText: string,
	keyCode: Enum.KeyCode
)
	local entry = createEntryFrame(self.bar, name, layoutOrder)

	createKeyIndicator(entry, keyCode, 1)
	createLabel(entry, labelText, 2)
end

function AbilitiesKeybindBar:Rebuild()
	if not self.bar then
		return
	end
	for _, child in self.bar:GetChildren() do
		if child:IsA("Frame") then
			child:Destroy()
		end
	end

	local characterContext = self.characterContext
	if not self.enabled or not self:IsVisiblePlatform() or not characterContext then
		self.bar.Visible = false
		return
	end

	local hasEntries = false
	local preferred = UserInputService.PreferredInput
	if #InputSlots.GetAbilitiesInOverflow() > 0 then
		local moreActionsKeyCode = if preferred == Enum.PreferredInput.Gamepad
			then MORE_ACTIONS_KEYCODE_GAMEPAD
			elseif preferred == Enum.PreferredInput.KeyboardAndMouse then MORE_ACTIONS_KEYCODE_KEYBOARD
			else nil
		if moreActionsKeyCode then
			self:CreateActionEntry(
				"MoreActions",
				InputSlots.GetNumAbilitySlots() + 1,
				MORE_ACTIONS_LABEL,
				moreActionsKeyCode
			)
			hasEntries = true
		end
	end

	for slot = 1, InputSlots.GetNumAbilitySlots() do
		local action = characterContext:FindFirstChild("AbilityAction" .. slot)
		if action and action.Enabled then
			local displayName = action.DisplayName
			if type(displayName) == "string" and displayName ~= "" then
				self:CreateEntry(slot, displayName, actionKeyCode(action))
				hasEntries = true
			end
		end
	end

	self.bar.Visible = hasEntries
end

function AbilitiesKeybindBar:Create()
	if not self.parent then
		return
	end

	local bar = Instance.new("Frame")
	bar.Name = "AbilityKeybindBar"
	bar.AnchorPoint = Vector2.new(1, 1)
	bar.Position = UDim2.new(1, -BAR_MARGIN, 1, -BAR_MARGIN)
	bar.Size = UDim2.new(0, 0, 0, ENTRY_HEIGHT)
	bar.AutomaticSize = Enum.AutomaticSize.XY
	bar.BackgroundColor3 = BAR_COLOR
	bar.BackgroundTransparency = BAR_TRANSPARENCY
	bar.BorderSizePixel = 0
	bar.Visible = false
	bar.Parent = self.parent
	self.bar = bar

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(1, 0)
	corner.Parent = bar

	local padding = Instance.new("UIPadding")
	padding.PaddingLeft = UDim.new(0, BAR_PADDING_X + BAR_PADDING_LEFT_EXTRA)
	padding.PaddingRight = UDim.new(0, BAR_PADDING_X)
	padding.PaddingTop = UDim.new(0, BAR_PADDING_Y)
	padding.PaddingBottom = UDim.new(0, BAR_PADDING_Y)
	padding.Parent = bar

	local layout = Instance.new("UIListLayout")
	layout.FillDirection = Enum.FillDirection.Horizontal
	layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	layout.VerticalAlignment = Enum.VerticalAlignment.Center
	layout.SortOrder = Enum.SortOrder.LayoutOrder
	layout.Padding = UDim.new(0, ENTRY_SPACING)
	layout.Parent = bar

	self.connections:trackConnection(
		"PreferredInput",
		UserInputService:GetPropertyChangedSignal("PreferredInput"):Connect(function()
			self:Rebuild()
		end)
	)

	self.connections:trackConnection(
		"SlotMapChanged",
		InputSlots.GetSlotMapChangedSignal():Connect(function()
			self:Rebuild()
		end)
	)

	self.connections:trackConnection(
		"ParentDestroying",
		self.parent.Destroying:Connect(function()
			self:Teardown()
		end)
	)

	self:ResolveAndBind()
end

function AbilitiesKeybindBar:Teardown()
	self.connections:disconnectAll()
	self.contextConnections:disconnectAll()
	if self.bar then
		self.bar:Destroy()
		self.bar = nil
	end
	-- Allow Enable(true) to rebuild if this controller is reused after teardown.
	self.created = false
end

return AbilitiesKeybindBar
