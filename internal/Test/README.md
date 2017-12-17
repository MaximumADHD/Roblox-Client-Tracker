# TestEZ - Testing Framework for Lua
TestEZ is a testing framework designed to make it easy and fun to write good tests for all your Lua code.

TestEZ is inspired by BDD frameworks like RSpec (Ruby), Ginkgo (Go), busted (Lua), and Chai (JavaScript).

Tests in TestEZ are co-located with the code that they test, letting you know when a file has any tests written for it at a glance!

## Running Tests in Studio
In your Roblox Studio `Game Options`, add the **full path** to the `Client\content\internal\Test` folder to the `AdditionalCoreIncludeDirs` setting.

The full value of the setting should resemble:

`C:\Users\lgreathouse\Perforce\lpgroblox2\Branches\MobileLuaChat\Client\content\scripts\CoreScripts;C:\Users\lgreathouse\Perforce\lpgroblox2\Branches\MobileLuaChat\Client\content\internal\Test`

Install the [Test Service GUI plugin](https://www.roblox.com/library/725256818/TestService-GUI). It provides a button and hotkey to run TestService-based tests, including TestEZ.

If you have a studio test place for your project, open it. Press `F5` to start the place, then `F4` to run your tests. You should see test results stream onto your screen!

## Creating Project Test Place
Each project that has tests should have a test place associated with it. These places have a `Script` in `TestService` that tells the test runner where the tests for the project are located, and hooks the runner up to TestService.

The test script for Mobile Lua Chat on mobile looks like this:

```lua
local Root = game.CoreGui.RobloxGui.Modules.LuaChat
local Test = game.CoreGui.RobloxGui.Modules:FindFirstChild("Test")

if not Test then
	error("Couldn't locate test harness. Make sure 'Test' is in your AdditionalCoreIncludeDirs!")
end

local TestBootstrap = require(Test.TestBootstrap)
local StudioReporter = require(Test.Reporters.StudioReporter)

TestBootstrap:run(Root, StudioReporter)
```

In it, `Root` points to the folder that contains all of the Lua chat source and tests. Calling `TestBootstrap:run` kicks off the actual testing, telling the system that we want to show results using `StudioReporter`, which creates a GUI and outputs to the console.

For a full example, check out the Mobile Lua Chat test place in `Client/content/places/MobileChatPlace.rbxl`.

## Writing Tests
Create `.spec.lua` files for each file you want to test. These files should return a function that in turn calls functions from TestEZ.

A simple module and associated TestEZ spec might look like:

`Greeter.lua`
```lua
local Greeter = {}

function Greeter:greet(person)
	return "Hello, " .. person
end

return Greeter
```

`Greeter.spec.lua`
```lua
return function()
	local Greeter = require(script.Parent.Greeter)

	describe("greet", function()
		it("should include the customary English greeting", function()
			local greeting = Greeter:greet("X")
			expect(greeting:match("Hello")).to.be.ok()
		end)

		it("should include the person being greeted", function()
			local greeting = Greeter:greet("Joe")
			expect(greeting:match("Joe")).to.be.ok()
		end)
	end)
end
```

The functions `describe`, `it`, and `expect` are injected by TestEZ and automatically hook into the current testing context.

Every module is implicitly scoped according to its path, meaning the tree that the above test represents might be:

```
LuaChat
    Greeter
        greet
            [+] should include the customary English greeting
            [+] should include the person being greeted
```

## Debugging Tests
Often during development, you'll want to only run the test that's concerned with the specific code you're working on.

TestEZ provides the `SKIP()` and `FOCUS()` functions to either skip or focus the block that the call is contained in.

This mechanism does not work for `it` blocks, where you can instead is `itSKIP` and `itFOCUS`. This is because the code inside `it` blocks is not run until the test is executed.

For example, I might want to run the tests targeting a specific method for my `DateTime` module:

`DateTime.spec.lua
```lua
return function()
	describe("ImportantFeature", function()
		FOCUS()

		it("does really important things", function()
			-- This callback *will* run!
		end)
	end)

	describe("Format", function()
		it("formats things", function()
			-- This callback will never run!
		end)
	end)
end
```

***`FOCUS` and `SKIP` are intended exclusively for development; code checked in with these markers will be marked as failing!***

## TestEZ API

### `describe(phrase, callback)`
This function creates a new `describe` block. These blocks correspond to the things that are being tested.

Put `it` blocks inside of `describe` blocks to describe what behavior should be correct.

For example:

```lua
describe("This cheese", function()
	it("should be moldy", function()
		expect(cheese.moldy).to.equal(true)
	end)
end)
```

### `it(phrase, callback)`
This function creates a new 'it' block. These blocks correspond to the behaviors that should be expected of the thing you're testing.

For example:

```lua
it("should add 1 and 1", function()
	expect(1 + 1).to.equal(2)
end)
```

### `FOCUS()`
When called inside a block, `FOCUS()` marks that block as *focused*. If there are any focused blocks inside your test tree, *only* focused blocks will be executed, and all other tests will be skipped.

When you're writing a new set of tests as part of a larger codebase, use `FOCUS()` while debugging them to reduce the amount of noise you need to scroll through.

For example:

```lua
describe("Secret Feature X", function()
	FOCUS()

	it("should do something", function()
	end)
end)

describe("Secret Feature Y", function()
	it("should do nothing", function()
		-- This code will not run!
	end)
end)
```

**Note: `FOCUS` will not work inside an `it` block. The bodies of these blocks aren't executed until the tests run, which is too late to change the test plan. **

### `SKIP()`
This function works similarly to `FOCUS()`, except instead of marking a block as *focused*, it will mark a block as *skipped*, which stops any of the test assertions in the block from being executed.

**Note: `SKIP` will not work inside an `it` block. The bodies of these blocks aren't executed until the tests run, which is too late to change the test plan. **

### `HACK_NO_XPCALL()`
This function works similar to both `FOCUS()` and `SKIP()`. It tells the testing system that the tests rely on yielding, and thus cannot be executed by wrapping them in `xpcall`.

Currently, Roblox does not allow callbacks inside `xpcall` to yield, so testing asynchronous objects requires this flag.

Stack traces will not be reported for test failures when using this feature, which is why `xpcall` is used for the majority of tests.

**Note: `HACK_NO_XPCALL` will not work inside an `it` block. The bodies of these blocks aren't executed until the tests run, which is too late to change the test plan. **

### `expect(value)`
Creates a new `Expectation`, used for testing the properties of the given value.

Expectations are intended to be read like English assertions. These are all true:

```lua
-- Equality
expect(1).to.equal(1)
expect(1).never.to.equal(2)

-- Nil checking
expect(1).to.be.ok()
expect(false).to.be.ok()
expect(nil).never.to.be.ok()

-- Type checking
expect(1).to.be.a("number")
expect(newproxy(true)).to.be.a("userdata")

-- Function throwing
expect(function()
	error("nope")
end).to.throw()

expect(function()
	-- I don't throw!
end).never.to.throw()
```

## Inspiration and Prior Work
The `describe` and `it` syntax in TestEZ is based on the [Behavior-Driven Development](https://en.wikipedia.org/wiki/Behavior-driven_development) methodology, notably as implemented in RSpec, busted, Mocha, Jasmine, and Ginkgo.

The `expect` syntax is based on Chai, a JavaScript assertion library commonly used with Mocha. Similar expectation systems are also used in RSpec and Ginkgo, with slightly different syntax.

## Changes
### 2017-08-11
- Removed `Spy`
- ok() now checks for nil instead of truthiness
- Added 'at' self-word, no use for it yet
- Added 'an' as an alias for 'a'
- Assertions can now be chained, but it looks odd
- Improved tests for function throwing
- Improved all error messages

### 2017-08-03
- Removed `describeSKIP` and `describeFOCUS`; use `SKIP()` and `FOCUS()` inside the describe block instead.