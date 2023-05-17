--[[
	* Copyright (c) Roblox Corporation. All rights reserved.
	* Licensed under the MIT License (the "License");
	* you may not use this file except in compliance with the License.
	* You may obtain a copy of the License at
	*
	*     https://opensource.org/licenses/MIT
	*
	* Unless required by applicable law or agreed to in writing, software
	* distributed under the License is distributed on an "AS IS" BASIS,
	* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	* See the License for the specific language governing permissions and
	* limitations under the License.
]]

local GuiService = game:GetService("GuiService")

local srcWorkspace = script.Parent.Parent.Parent
local Packages = srcWorkspace.Parent

local React = require(Packages.React)

local FlatList = require(script.Parent.Parent.FlatList)
type FlatList<T> = FlatList.FlatList<T>

type ScrollConfig<T> = {
	listRef: React.Ref<FlatList<T>>,
	onSelectedIndexChanged: ((index: number) -> ())?,
	initialIndex: number?,
	cellRendererKey: string?,
	viewOffset: number?,
	animated: boolean?,
	data: { any },
}

type ScrollToIndexFailedInfo = {
	index: number,
	highestMeasuredFrameIndex: number,
	averageItemLength: number,
}

local function useFocusNavigationScrolling<T>(scrollConfig: ScrollConfig<T>)
	local cellRendererKey = if scrollConfig.cellRendererKey then scrollConfig.cellRendererKey else "CellRendererView"
	local initialIndex = if scrollConfig.initialIndex then scrollConfig.initialIndex else 1
	local listRef = scrollConfig.listRef :: { current: FlatList<T>? }
	local onSelectedIndexChanged = scrollConfig.onSelectedIndexChanged
	local viewOffset = scrollConfig.viewOffset
	local animated = if scrollConfig.animated ~= nil then scrollConfig.animated else true
	local focusedIndex = React.useRef(initialIndex)
	local data = scrollConfig.data

	local onScrollToIndexFailed = React.useCallback(function(info: ScrollToIndexFailedInfo)
		local offsetEstimate = info.index * info.averageItemLength
		if listRef and listRef.current then
			listRef.current:scrollToOffset({
				offset = offsetEstimate,
			})
		else
			warn(
				"Animated scrolling failed, the ref to the ScrollView is nil."
					.. "This could indicate that you are selecting focus before the ScrollView has mounted."
			)
		end
	end, { listRef })

	React.useEffect(function()
		local function scrollToFocusSelection(changedValue: string)
			local selectedCoreObject = nil
			if changedValue == "SelectedObject" then
				selectedCoreObject = GuiService.SelectedObject
			elseif changedValue == "SelectedCoreObject" then
				selectedCoreObject = GuiService.SelectedCoreObject
			end

			if not selectedCoreObject then
				return nil
			end

			local parentView = (selectedCoreObject :: GuiObject):FindFirstAncestor(cellRendererKey) :: GuiObject
			if not parentView or not parentView.LayoutOrder then
				return nil
			end

			if
				parentView.LayoutOrder == focusedIndex.current
				or parentView.LayoutOrder > #data
				or parentView.LayoutOrder < 1
			then
				-- FlatList maps index in data to LayoutOrder.
				-- If the index hasn't changed or is out of bounds, we shouldn't animate
				return nil
			end

			focusedIndex.current = parentView.LayoutOrder

			if onSelectedIndexChanged then
				onSelectedIndexChanged(focusedIndex.current :: number)
			end

			if not listRef or not listRef.current then
				return nil
			end

			(listRef.current :: FlatList<T>):scrollToIndex({
				index = focusedIndex.current :: number,
				animated = animated,
				viewOffset = viewOffset,
			})
			return nil
		end

		local connection = GuiService.Changed:Connect(scrollToFocusSelection)

		return function()
			if connection then
				connection:Disconnect()
			end
		end
	end, { listRef, focusedIndex, cellRendererKey, onSelectedIndexChanged, animated, viewOffset } :: { any })

	return onScrollToIndexFailed
end

return useFocusNavigationScrolling
