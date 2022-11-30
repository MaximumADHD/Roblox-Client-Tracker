-- ROBLOX note: no upstream
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
-- ROBLOX comment: in the future we may want to replace this with a full implementation of the View component
local Packages = script.Parent.Parent.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
type Object = LuauPolyfill.Object

local React = require(Packages.React)
local Change = React.Change

local View = React.Component:extend("View")
function View:init(props)
	self.props = props
	self._nativeRef = self.props.nativeRef or React.createRef()
end

function View:render()
	local styleProps = if Array.isArray(self.props.style)
		then Array.reduce(self.props.style, function(obj: Object, prop)
			return Object.assign(obj, prop)
		end, {})
		else self.props.style

	local props = Object.assign(table.clone(self.props), styleProps)

	self.nativeProps = {
		ref = self._nativeRef,
		-- ROBLOX TODO: We need to handle all valid Frame props / fail
		BackgroundColor3 = props.BackgroundColor3,
		Name = props.Name or "View",
		Size = props.Size or UDim2.new(1, 0, 0, 0),
		AutomaticSize = props.AutomaticSize or Enum.AutomaticSize.Y,
		ZIndex = props.ZIndex or nil,
		LayoutOrder = props.LayoutOrder or nil,
		BorderSizePixel = props.BorderSizePixel or 0,
		BackgroundTransparency = props.BackgroundTransparency or 1,
		[Change.AbsoluteSize] = props.onLayout,
	}
	return React.createElement("Frame", self.nativeProps, self.props.children)
end

return View
