local Packages = script.Parent.Parent.Parent.Parent

local Roact = require(Packages.Roact)
local RoactGamepad = require(Packages.RoactGamepad)
local Cryo = require(Packages.Cryo)

local CursorKind = require(script.Parent.CursorKind)
local SelectionImageContext = require(script.Parent.SelectionImageContext)

local SelectionCursorProvider = Roact.PureComponent:extend("SelectionCursorProvider")

function SelectionCursorProvider:init()
	self.refs = RoactGamepad.createRefCache()
	self:setState({
		mountedCursors = {}
	})

	self.getSelectionCursor = function(cursorKind)
		assert(CursorKind.isEnumValue(cursorKind),
			("Invalid arg #1: expected a CursorKind enum variant, got %s"):format(tostring(cursorKind)))

		if self.state.mountedCursors[cursorKind] == nil then
			self:setState(function(state)
				return {
					mountedCursors = Cryo.Dictionary.join(state.mountedCursors, {
						[cursorKind] = true,
					})
				}
			end)
		end

		-- Note that we return the ref here even if it shouldn't exist yet;
		-- thanks to the refCache, we know that the ref created here is the same
		-- one that will be ultimately assigned to the cursor component once the
		-- setState completes and the component does re-render
		return self.refs[cursorKind]
	end
end

function SelectionCursorProvider:render()
	local cursors = {}
	for cursorKind, _ in pairs(self.state.mountedCursors) do
		local CursorComponent = cursorKind.rawValue()
		local key = tostring(CursorComponent)
		cursors[key] = Roact.createElement(CursorComponent, {
			[Roact.Ref] = self.refs[cursorKind],
		})
	end

	return Roact.createElement(SelectionImageContext.Provider, {
		value = self.getSelectionCursor,
	}, {
		CursorContainer = Roact.createElement("Frame", {
			Size = UDim2.new(0, 0, 0, 0),
			Visible = false,
		}, cursors),
		Children = Roact.createFragment(self.props[Roact.Children]),
	})
end

return SelectionCursorProvider
