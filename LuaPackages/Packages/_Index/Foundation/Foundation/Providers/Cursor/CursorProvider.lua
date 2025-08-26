local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local CoreGui = require(Foundation.Utility.Wrappers).Services.CoreGui
local GuiService = require(Foundation.Utility.Wrappers).Services.GuiService

local Cryo = require(Packages.Cryo)
local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)
local useRefCache = ReactUtils.useRefCache
local isPluginSecurity = require(Foundation.Utility.isPluginSecurity)

local CursorContext = require(script.Parent.CursorContext)
local CursorComponent = require(script.Parent.CursorComponent)
local Cursor = require(script.Parent.Cursors.Cursor)
local KeyUtilities = require(script.Parent.KeyUtilities)
local CursorType = require(Foundation.Enums.CursorType)
type CursorType = CursorType.CursorType
local useTokens = require(Foundation.Providers.Style.useTokens)
local Types = require(Foundation.Components.Types)

local Flags = require(Foundation.Utility.Flags)

type Props = {
	children: React.ReactNode,
}

local function CursorProvider(props: Props)
	local mountedCursors, setMountedCursors = React.useState({} :: { [string]: boolean })
	local frameRef = React.useRef(nil :: GuiObject?)
	local selectionImageObject, setSelectionImageObject = React.useState(nil)
	local refCache = useRefCache()
	local tokens = useTokens()

	local contextValue = React.useMemo(function()
		return {
			refCache = refCache,
			setMountedCursors = setMountedCursors,
			getCursor = function(cursor: Types.Cursor?)
				local key = KeyUtilities.mapCursorToKey(cursor, tokens)

				setMountedCursors(function(mountedExisting)
					if mountedExisting[key] == nil then
						return Cryo.Dictionary.union(mountedExisting, {
							[key] = true,
						})
					end
					return mountedExisting
				end)

				return refCache[key]
			end,
		}
	end, { refCache :: any, setMountedCursors, tokens })

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
				local cornerRadius, offset, borderWidth = KeyUtilities.decodeKey(key)

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

		local isDescendantOfCoreGui = if Flags.FoundationCheckCoreGuiAccessCursorProvider
			then isPluginSecurity() and frameRef.current:IsDescendantOf(CoreGui)
			else frameRef.current:IsDescendantOf(CoreGui)

		local function setUpSelectionImageObjectConnection()
			-- Listen to different signals depending on whether it's under CoreGui or PlayerGui.
			-- Trigger a re-render when UI selection changes, so that we can choose whether to play
			-- an animated gradient on each cursor, depending on whether or not the cursor is visible.
			if isDescendantOfCoreGui then
				return GuiService:GetPropertyChangedSignal("SelectedCoreObject"):Connect(function()
					if GuiService.SelectedCoreObject == nil then
						setSelectionImageObject(nil)
					else
						if Flags.FoundationFallbackCoreGuiSelectionCursor then
							setSelectionImageObject(
								GuiService.SelectedCoreObject.SelectionImageObject
									or CoreGui.SelectionImageObject :: any
							)
						else
							setSelectionImageObject(GuiService.SelectedCoreObject.SelectionImageObject :: any)
						end
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

	return React.createElement(CursorContext.Provider, {
		value = contextValue,
	}, {
		Children = React.createElement(React.Fragment, {}, props.children),
		FoundationCursorContainer = React.createElement("Frame", {
			Size = UDim2.new(0, 0, 0, 0),
			Visible = false,
			ref = frameRef,
		}, renderCursors()),
	})
end

return CursorProvider
