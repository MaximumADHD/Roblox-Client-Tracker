<h1 align="center">Motion Internal</h1>
<div align="center">
	<a href="https://github.com/Roblox/motion-internal/actions/workflows/test.yml">
		<img src="https://github.com/Roblox/motion-internal/actions/workflows/test.yml/badge.svg" alt="GitHub CI" />
	</a>
	<a href='https://coveralls.io/github/Roblox/motion-internal?branch=main'>
		<img src='https://coveralls.io/repos/github/Roblox/motion-internal/badge.svg?branch=main&amp;t=r8LIRE' alt='Coverage Status' />
	</a>
	<a href="https://roblox.github.io/motion-internal">
		<img src="https://img.shields.io/badge/docs-website-green.svg" alt="Documentation" />
	</a>
</div>

<div align="center">
	State-based animation library for Lua.
</div>

<div>&nbsp;</div>

Motion is an animation library for Lua that allows for smooth transitions between states. It follows a state-based animation approach, allowing developers to define state properties and transitions between them.

## Quick Start
### Initialize states
Define the property values of an object at different states, for example checked and unchecked. 

```lua
local states = {
    unchecked = Motion.createState({
        size = UDim2.fromOffset(100, 100),
    }),
    checked = Motion.createState({
        size = UDim2.fromOffset(200, 200),
    }),
}
```

### Binding values
Bind the state values with the useMotion() hook and provide an initial value.

```lua
local values, animate = useMotion(states.unchecked)
Box = React.createElement("Frame", {
    Size = values.size,
    ...
})
```

### Transition
Transition from one state to another by passing a new state to animate()

```lua
animate(states[if toggled then "checked" else "unchecked"])
```

## License
Licensed under the MIT license ([LICENSE.txt](LICENSE.txt) or http://opensource.org/licenses/MIT).

### Contribution
Unless you explicitly state otherwise, any contribution intentionally submitted for inclusion in the work by you, as defined in the MIT license, shall be licensed as above, without any additional terms or conditions.

Take a look at the [contributing guide](CONTRIBUTING.md) for guidelines on how to contribute to Motion Internal.