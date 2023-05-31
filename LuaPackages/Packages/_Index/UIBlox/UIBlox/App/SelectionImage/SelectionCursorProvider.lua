--!nonstrict
local Packages = script.Parent.Parent.Parent.Parent

local Roact = require(Packages.Roact)
local RoactGamepad = require(Packages.RoactGamepad)
local Cryo = require(Packages.Cryo)

local CursorKind = require(script.Parent.CursorKind)
local SelectionImageContext = require(script.Parent.SelectionImageContext)
local OnRootedListener = require(script.Parent.OnRootedListener)
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")

local SelectionCursorProvider = Roact.PureComponent:extend("SelectionCursorProvider")

function SelectionCursorProvider:init()
	self.ref = Roact.createRef()
	self.refs = RoactGamepad.createRefCache()
	self.state = {
		mountedCursors = {},
		currentSelection = nil, -- The object which is currently selected in game UI
		currentCoreSelection = nil, -- The object which is currently selected in core UI
	}

	self.getSelectionCursor = function(cursorKind)
		assert(
			CursorKind.isEnumValue(cursorKind),
			("Invalid arg #1: expected a CursorKind enum variant, got %s"):format(tostring(cursorKind))
		)

		if self.state.mountedCursors[cursorKind] == nil then
			self:setState(function(state)
				return {
					mountedCursors = Cryo.Dictionary.join(state.mountedCursors, {
						[cursorKind] = true,
					}),
				}
			end)
		end

		-- Note that we return the ref here even if it shouldn't exist yet;
		-- thanks to the refCache, we know that the ref created here is the same
		-- one that will be ultimately assigned to the cursor component once the
		-- setState completes and the component does re-render
		return self.refs[cursorKind]
	end

	self.initSelectionChangedListener = function(instance)
		if instance == nil then
			return
		end

		-- Disconnect any existing listeners
		if self.coreSelectionListener ~= nil then
			self.coreSelectionListener:Disconnect()
			self.coreSelectionListener = nil
		end
		if self.selectionListener ~= nil then
			self.selectionListener:Disconnect()
			self.selectionListener = nil
		end

		-- Register new listeners. We listen to different signals depending on whether we're under CoreGui or PlayerGui.
		if instance:IsDescendantOf(CoreGui) then
			self.coreSelectionListener = GuiService:GetPropertyChangedSignal("SelectedCoreObject"):Connect(function()
				-- Trigger a re-render when UI selection changes and we're using a new cursor, so that we can choose whether to add
				-- an animated gradient child to each cursor, depending on whether or not the cursor is visible.
				if
					self.state.currentCoreSelection == nil
					or GuiService.SelectedCoreObject == nil
					or self.state.currentCoreSelection.SelectionImageObject
						~= GuiService.SelectedCoreObject.SelectionImageObject
				then
					self:setState({ currentCoreSelection = GuiService.SelectedCoreObject })
				end
			end)
		else
			self.selectionListener = GuiService:GetPropertyChangedSignal("SelectedObject"):Connect(function()
				if
					self.state.currentSelection == nil
					or GuiService.SelectedObject == nil
					or self.state.currentSelection.SelectionImageObject
						~= GuiService.SelectedObject.SelectionImageObject
				then
					self:setState({ currentSelection = GuiService.SelectedObject })
				end
			end)
		end
	end
end

function SelectionCursorProvider:didMount()
	self.initSelectionChangedListener(self.ref:getValue())
end

function SelectionCursorProvider:willUnmount()
	-- Disconnect any existing listeners
	if self.coreSelectionListener ~= nil then
		self.coreSelectionListener:Disconnect()
		self.coreSelectionListener = nil
	end
	if self.selectionListener ~= nil then
		self.selectionListener:Disconnect()
		self.selectionListener = nil
	end
end

function SelectionCursorProvider:render()
	-- Determine which cursors are mounted and visible
	local cursors = {}
	for cursorKind, _ in pairs(self.state.mountedCursors) do
		local CursorComponent = cursorKind.rawValue()
		local key = tostring(CursorComponent)
		local visible = false
		if
			self.refs[cursorKind] ~= nil
			and (
				(
					self.state.currentSelection ~= nil
					and self.refs[cursorKind].current == self.state.currentSelection.SelectionImageObject
				)
				or (
					self.state.currentCoreSelection ~= nil
					and self.refs[cursorKind].current == self.state.currentCoreSelection.SelectionImageObject
				)
			)
		then
			visible = true
		end

		cursors[key] = Roact.createElement(CursorComponent, {
			isVisible = visible,
			cursorRef = self.refs[cursorKind],
		})
	end

	return Roact.createElement(SelectionImageContext.Provider, {
		value = self.getSelectionCursor,
	}, {
		CursorContainer = Roact.createElement("Frame", {
			Size = UDim2.new(0, 0, 0, 0),
			Visible = false,
		}, cursors),
		OnRootedListener = Roact.createElement(OnRootedListener, {
			onRooted = self.initSelectionChangedListener,
		}),
		Children = Roact.createFragment(self.props[Roact.Children]),
	})
end

return SelectionCursorProvider
