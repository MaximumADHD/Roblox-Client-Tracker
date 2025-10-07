# Otter


## Installation

### Filesystem

- Add this repository as a Git submodule or copy it into your project
- Use a plugin like [Rojo](https://github.com/LPGhatguy/rojo) to sync the `lib` folder into a place

### Model File

- Download the `rbxmx` model file attached to the latest release from the [GitHub releases page](https://github.com/Roblox/otter-internal/releases)
- Insert the model into Studio into a place like `ReplicatedStorage`

## Documentation

Documentation for Otter is available on [the official documentation website](https://roblox.github.io/otter-internal).

## Usage

For each value that needs to be animated, create a motor object and subscribe to it.

You can create a _single_ motor to track a single value:

```lua
local object = Instance.new("Frame")
object.Size = UDim2.new(0, 50, 0, 50)

-- Our initial value is 0
local motor = Otter.createSingleMotor(0)

-- ...but we're moving to 50!
motor:setGoal(Otter.spring(50))

motor:onStep(function(value)
	object.Position = UDim2.new(0, value, 0, 0)
end)

-- Once started, our motor will run every frame until it reaches its goal.
motor:start()
```

Or you can create a _group_ motor for transitioning multiple values:

```lua
local object = Instance.new("Frame")
object.Size = UDim2.new(0, 50, 0, 50)

-- Our initial value is { x = 0, y = 0 }.
local multimotor = Otter.createGroupMotor({
	x = 0,
	y = 0,
})

-- We're moving to { x = 50, y = 50 } with a spring on the X axis.
multimotor:setGoal({
	x = Otter.spring(50),
	y = Otter.instant(50),
})

multimotor:onStep(function(values)
	object.Position = UDim2.new(0, values.x, 0, values.y)
end)

-- Start your engine!
multimotor:start()
```

The motor object is in charge of tracking all of the values involved in an animation. `Otter.spring` and `Otter.instant` are called _goal_ specifiers. They describe what value we're trying to animate to and how to get there.

We can update our goals whenever and Otter will continue our animation:

```lua
-- Immediately move the motor's value to 100
motor:setGoal(Otter.instant(100))

-- Spring on both axes to 300
multimotor:setGoal({
	x = Otter.spring(300),
	y = Otter.spring(300),
})
```

At any time, we can stop our motor, and even step it manually. This is useful for tests!

```lua
motor:stop()

motor:step(0.5)

motor:start()
```

When you're done, destructing a motor object will tear everything down and stop it:

```lua
motor:destroy()
multimotor:destroy()
```

## Demo App

You can play with spring settings in a demo app on Roblox: https://www.roblox.com/games/4739513533\
Try setting Damping Ratio to 0.1.

## License

Licensed under MIT license ([LICENSE](LICENSE) or http://opensource.org/licenses/MIT)

### Contribution

Take a look at the [contributing guide](CONTRIBUTING.md) for guidelines on how to contribute to Otter.
