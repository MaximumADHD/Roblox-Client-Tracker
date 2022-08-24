-- ROBLOX upstream: https://github.com/facebook/react-native/blob/v0.68.0-rc.2/Libraries/Utilities/setAndForwardRef.js
--[[*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @format
 * @flow
 ]]
local srcWorkspace = script.Parent.Parent
local Packages = srcWorkspace.Parent

-- ROBLOX deviation: unavailable types
type ReadOnly<T> = T

local React = require(Packages.React)
type ElementRef<C> = React.ElementRef<C>
type Ref<C> = React.Ref<C>

type Args = ReadOnly<{
	getForwardedRef: () -> Ref<any> | nil,
	setLocalRef: (ref: ElementRef<any>) -> any,
}>

--[[*
 * This is a helper function for when a component needs to be able to forward a ref
 * to a child component, but still needs to have access to that component as part of
 * its implementation.
 *
 * Its main use case is in wrappers for native components.
 *
 * Usage:
 *
 *   class MyView extends React.Component {
 *     _nativeRef = null;
 *
 *     _setNativeRef = setAndForwardRef({
 *       getForwardedRef: () => this.props.forwardedRef,
 *       setLocalRef: ref => {
 *         this._nativeRef = ref;
 *       },
 *     });
 *
 *     render() {
 *       return <View ref={this._setNativeRef} />;
 *     }
 *   }
 *
 *   const MyViewWithRef = React.forwardRef((props, ref) => (
 *     <MyView {...props} forwardedRef={ref} />
 *   ));
 *
 *   module.exports = MyViewWithRef;
 ]]

local function setAndForwardRef(ref_: Args): (ref: ElementRef<any>) -> ()
	local getForwardedRef, setLocalRef = ref_.getForwardedRef, ref_.setLocalRef
	return function(ref: ElementRef<any>)
		local forwardedRef = getForwardedRef()
		setLocalRef(ref)

		-- Forward to user ref prop (if one has been specified)
		if typeof(forwardedRef) == "function" then
			-- Handle function-based refs. String-based refs are handled as functions.
			forwardedRef(ref)
		elseif typeof(forwardedRef) == "table" then
			-- Handle createRef-based refs
			forwardedRef.current = ref
		end
	end
end

return setAndForwardRef
