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
local srcWorkspace = script.Parent.Parent.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
type Object = LuauPolyfill.Object

local React = require(Packages.React)
local Change = React.Change

local ScrollContentViewNativeComponent = React.Component:extend("ScrollContentViewNativeComponent")

function ScrollContentViewNativeComponent:init(props)
	self.props = props
end

function ScrollContentViewNativeComponent:render()
	local styleProps = if Array.isArray(self.props.style)
		then Array.reduce(self.props.style, function(obj: Object, prop)
			return Object.assign(obj, prop)
		end, {})
		else self.props.style

	local nativeProps = Object.assign({
		Name = "RCTScrollContentView",
		[Change.AbsoluteSize] = self.props.onLayout,
		Size = UDim2.new(1, 0, 1, 0),
	}, if self.props.AutomaticSize then { AutomaticSize = self.props.AutomaticSize } else nil, styleProps)

	return React.createElement("Frame", nativeProps, self.props.children)
end

return ScrollContentViewNativeComponent
