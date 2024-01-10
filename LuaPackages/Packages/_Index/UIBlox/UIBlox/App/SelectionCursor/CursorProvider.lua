local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")

local UIBlox = script.Parent.Parent.Parent
local Packages = UIBlox.Parent

local Cryo = require(Packages.Cryo)
local React = require(Packages.React)
local RoactGamepad = require(Packages.RoactGamepad)
local useStyle = require(UIBlox.Core.Style.useStyle)

local CursorContext = require(script.Parent.CursorContext)
local CursorComponent = require(script.Parent.CursorComponent)
local CursorType = require(script.Parent.CursorType)

export type Props = {
	children: React.ReactNode,
}

local encodeKey = function(radius: UDim, offset: number, borderWidth: number): string
	return string.format("%f %f %f %f", radius.Scale, radius.Offset, offset, borderWidth)
end

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

local CursorProvider = function(props: Props)
	local mounted, setMounted = React.useState({})
	local mountedImageCursors, setMountedImageCursors = React.useState({})
	local frameRef = React.createRef()
	local selectionImageObject, setSelectionImageObject = React.useState(nil)
	local refCache = RoactGamepad.useRefCache()
	local componentTokens = useStyle().Tokens.Component.SelectionCursor

	local getCursor = function(radius: UDim?, offset: number?, borderWidth: number?): React.Ref<GuiObject>
		local pRadius = UDim.new(0, 0)
		if radius ~= nil then
			pRadius = radius
		end
		local pBorderWidth = 0
		if borderWidth ~= nil then
			assert(borderWidth > 0, "Error! borderWidth should be larger than 0.")
			pBorderWidth = borderWidth
		else
			pBorderWidth = componentTokens.BorderWidth
		end
		local pOffset = 0
		if offset ~= nil then
			pOffset = (offset - pBorderWidth)
		else
			pOffset = (componentTokens.Offset - pBorderWidth)
		end
		local key = encodeKey(pRadius, pOffset, pBorderWidth)

		if mounted[key] == nil then
			setMounted(Cryo.Dictionary.join(mounted, {
				[key] = true,
			}))
		end

		-- Note that we return the ref here even if it shouldn't exist yet.
		-- Thanks to the refCache, we know that the ref created here is the same
		-- one that will be ultimately assigned to the cursor component once the
		-- setState completes and the component does re-render.
		return refCache[key]
	end

	local getCursorByType = function(cursorType): React.Ref<GuiObject>
		assert(
			CursorType.isEnumValue(cursorType),
			("Error! expected a CursorType enum, got %s"):format(tostring(cursorType))
		)

		if mountedImageCursors[cursorType] == nil then
			setMountedImageCursors(Cryo.Dictionary.join(mountedImageCursors, {
				[cursorType] = true,
			}))
		end

		return refCache[cursorType]
	end

	local renderCursors = function(): any
		local cursors = {}
		-- param cursors
		for key, _ in pairs(mounted) do
			local isVisible = refCache[key] ~= nil
				and selectionImageObject ~= nil
				and refCache[key].current == selectionImageObject
			local cornerRadius, offset, borderWidth = decodeKey(key)

			cursors[key] = React.createElement(CursorComponent, {
				ref = refCache[key],
				isVisible = isVisible,
				cornerRadius = cornerRadius,
				offset = offset,
				borderWidth = borderWidth,
			})
		end
		-- image cursors
		for cursorType, _ in pairs(mountedImageCursors) do
			local component = cursorType.rawValue()
			local isVisible = refCache[cursorType] ~= nil
				and selectionImageObject ~= nil
				and refCache[cursorType].current == selectionImageObject

			cursors[cursorType] = React.createElement(component, {
				ref = refCache[cursorType],
				isVisible = isVisible,
			})
		end

		return cursors
	end

	React.useEffect(function()
		if frameRef.current == nil or not frameRef.current:IsDescendantOf(game) then
			return
		end

		local isDescendantOfCoreGui = frameRef.current:IsDescendantOf(CoreGui)

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
		local ancestryConnection = frameRef.current.AncestryChanged:Connect(function()
			-- This component listens for the event "all parents have been set".
			-- In didMount, parents of the mounted component are not required to be set,
			-- therefore we can't do ancestry checks (like checking to see if the mounted
			-- component is a child of CoreGui or PlayerGui). This component makes it easy to
			-- do this check and trigger functions when all parents are assigned after didMount.
			selectionImageObjectConnection:Disconnect()
			selectionImageObjectConnection = setUpSelectionImageObjectConnection()
		end)

		return function()
			selectionImageObjectConnection:Disconnect()
			ancestryConnection:Disconnect()
		end
	end, {})

	return React.createElement(
		CursorContext.Provider,
		{
			value = {
				getCursor = getCursor,
				getCursorByType = getCursorByType,
			},
		},
		Cryo.Dictionary.join({
			InvisibleContainer = React.createElement("Frame", {
				Size = UDim2.new(0, 0, 0, 0),
				Visible = false,
				ref = frameRef,
			}, renderCursors()),
		}, props.children)
	)
end

return CursorProvider
