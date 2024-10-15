local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")

local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local RoactGamepad = require(Packages.RoactGamepad)

local CursorContext = require(script.Parent.CursorContext)
local CursorComponent = require(script.Parent.CursorComponent)
local Cursor = require(script.Parent.Cursors.Cursor)
local CursorType = require(Foundation.Enums.CursorType)
type CursorType = CursorType.CursorType

type Props = {
	children: React.ReactNode,
}

local decodeKey = function(key: string): (UDim, number, number)
	local radius1 = math.huge
	local radius2 = math.huge
	local offset = math.huge
	local borderWidth = math.huge

	for idx, token in string.split(key, " ") do
		local num = tonumber(token)
		if num ~= nil then
			if idx == 1 then
				radius1 = num
			elseif idx == 2 then
				radius2 = num
			elseif idx == 3 then
				offset = num
			elseif idx == 4 then
				borderWidth = num
			end
		end
	end
	assert(
		radius1 ~= math.huge and radius2 ~= math.huge and offset ~= math.huge and borderWidth ~= math.huge,
		"Error! Not all parameters are decoded."
	)
	local cornerRadius = UDim.new(radius1, math.max(0, radius2 + offset))

	return cornerRadius, offset, borderWidth
end

local function CursorProvider(props: Props)
	local mountedCursors, setMountedCursors = React.useState({} :: { [string]: boolean })
	local frameRef = React.useRef(nil :: GuiObject?)
	local selectionImageObject, setSelectionImageObject = React.useState(nil)
	local refCache = RoactGamepad.useRefCache()

	local contextValue = React.useMemo(function()
		return {
			refCache = refCache,
			setMountedCursors = setMountedCursors,
		}
	end, { refCache :: any, setMountedCursors })

	local renderCursors = function(): any
		local cursors: { [string | CursorType]: React.ReactElement<any> } = {}
		-- param cursors
		for key, _ in mountedCursors do
			local isVisible = refCache[key] ~= nil
				and selectionImageObject ~= nil
				and refCache[key].current == selectionImageObject

			-- Check if the key is a cursor type
			if CursorType[key] ~= nil then
				cursors[key] = React.createElement(Cursor, {
					ref = refCache[key],
					isVisible = isVisible,
					cursorType = key :: CursorType,
				})
			else
				local cornerRadius, offset, borderWidth = decodeKey(key)

				cursors[key] = React.createElement(CursorComponent, {
					ref = refCache[key],
					isVisible = isVisible,
					cornerRadius = cornerRadius,
					offset = offset,
					borderWidth = borderWidth,
				})
			end
		end

		return cursors
	end

	React.useEffect(function()
		if frameRef.current == nil or not frameRef.current:IsDescendantOf(game) then
			return
		end

		local isDescendantOfCoreGui = if frameRef.current ~= nil
			then frameRef.current:IsDescendantOf(CoreGui)
			else false

		local function setUpSelectionImageObjectConnection()
			-- Listen to different signals depending on whether it's under CoreGui or PlayerGui.
			-- Trigger a re-render when UI selection changes, so that we can choose whether to play
			-- an animated gradient on each cursor, depending on whether or not the cursor is visible.
			if isDescendantOfCoreGui then
				return GuiService:GetPropertyChangedSignal("SelectedCoreObject"):Connect(function()
					if GuiService.SelectedCoreObject == nil then
						setSelectionImageObject(nil)
					else
						setSelectionImageObject(GuiService.SelectedCoreObject.SelectionImageObject :: any)
					end
				end)
			else
				return GuiService:GetPropertyChangedSignal("SelectedObject"):Connect(function()
					if GuiService.SelectedObject == nil then
						setSelectionImageObject(nil)
					else
						setSelectionImageObject(GuiService.SelectedObject.SelectionImageObject :: any)
					end
				end)
			end
		end

		local selectionImageObjectConnection = setUpSelectionImageObjectConnection()
		local ancestryConnection = if frameRef.current ~= nil
			then frameRef.current.AncestryChanged:Connect(function()
				-- This component listens for the event "all parents have been set".
				-- In didMount, parents of the mounted component are not required to be set,
				-- therefore we can't do ancestry checks (like checking to see if the mounted
				-- component is a child of CoreGui or PlayerGui). This component makes it easy to
				-- do this check and trigger functions when all parents are assigned after didMount.
				selectionImageObjectConnection:Disconnect()
				selectionImageObjectConnection = setUpSelectionImageObjectConnection()
			end)
			else nil

		return function()
			selectionImageObjectConnection:Disconnect()
			if ancestryConnection ~= nil then
				ancestryConnection:Disconnect()
			end
		end
	end, {})

	return React.createElement(CursorContext.Provider, {
		value = contextValue,
	}, {
		FoundationInvisibleContainer = React.createElement("Frame", {
			Size = UDim2.new(0, 0, 0, 0),
			Visible = false,
			ref = frameRef,
		}, renderCursors()),
		Children = React.createElement(React.Fragment, {}, props.children),
	})
end

return CursorProvider
