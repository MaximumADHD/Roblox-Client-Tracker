---
title: Promise
docs:
  desc: A Promise is an object that represents a value that will exist in the future, but doesn't right now. Promises allow you to then attach callbacks that can run once the value becomes available (known as *resolving*), or if an error has occurred (known as *rejecting*).

  types:
    - name: Status
      desc: An enum value used to represent the Promise's status.
      kind: enum
      type:
        Started:
          desc: The Promise is executing, and not settled yet.
        Resolved:
          desc: The Promise finished successfully.
        Rejected:
          desc: The Promise was rejected.
        Cancelled:
          desc: The Promise was cancelled before it finished.

  properties:
    - name: Status
      tags: [ 'read only', 'static', 'enums' ]
      type: Status
      desc: A table containing all members of the `Status` enum, e.g., `Promise.Status.Resolved`.


  functions:
    - name: new
      desc: |
        Construct a new Promise that will be resolved or rejected with the given callbacks.

        If you `resolve` with a Promise, it will be chained onto.

        You can safely yield within the executor function and it will not block the creating thread.

        ```lua
        local myFunction()
          return Promise.new(function(resolve, reject, onCancel)
            wait(1)
            resolve("Hello world!")
          end)
        end

        myFunction():andThen(print)
        ```

        You do not need to use `pcall` within a Promise. Errors that occur during execution will be caught and turned into a rejection automatically. If `error()` is called with a table, that table will be the rejection value. Otherwise, string errors will be converted into `Promise.Error(Promise.Error.Kind.ExecutionError)` objects for tracking debug information.

        You may register an optional cancellation hook by using the `onCancel` argument:
          * This should be used to abort any ongoing operations leading up to the promise being settled.
          * Call the `onCancel` function with a function callback as its only argument to set a hook which will in turn be called when/if the promise is cancelled.
          * `onCancel` returns `true` if the Promise was already cancelled when you called `onCancel`.
          * Calling `onCancel` with no argument will not override a previously set cancellation hook, but it will still return `true` if the Promise is currently cancelled.
          * You can set the cancellation hook at any time before resolving.
          * When a promise is cancelled, calls to `resolve` or `reject` will be ignored, regardless of if you set a cancellation hook or not.
      static: true
      params:
        - name: executor
          type:
            kind: function
            params:
              - name: resolve
                type:
                  kind: function
                  params:
                    - name: "..."
                      type: ...any?
                  returns: void
              - name: reject
                type:
                  kind: function
                  params:
                    - name: "..."
                      type: ...any?
                  returns: void
              - name: onCancel
                type:
                  kind: function
                  params:
                    - name: abortHandler
                      kind: function
                  returns:
                    - type: boolean
                      desc: "Returns `true` if the Promise was already cancelled at the time of calling `onCancel`."
      returns: Promise
    - name: defer
      since: 3.0.0
      desc: |
        The same as [[Promise.new]], except execution begins after the next `Heartbeat` event.

        This is a spiritual replacement for `spawn`, but it does not suffer from the same [issues](https://eryn.io/gist/3db84579866c099cdd5bb2ff37947cec) as `spawn`.

        ```lua
        local function waitForChild(instance, childName, timeout)
          return Promise.defer(function(resolve, reject)
            local child = instance:WaitForChild(childName, timeout)

            ;(child and resolve or reject)(child)
          end)
        end
        ```

      static: true
      params:
        - name: deferExecutor
          type:
            kind: function
            params:
              - name: resolve
                type:
                  kind: function
                  params:
                    - name: "..."
                      type: ...any?
                  returns: void
              - name: reject
                type:
                  kind: function
                  params:
                    - name: "..."
                      type: ...any?
                  returns: void
              - name: onCancel
                type:
                  kind: function
                  params:
                    - name: abortHandler
                      kind: function
                  returns:
                    - type: boolean
                      desc: "Returns `true` if the Promise was already cancelled at the time of calling `onCancel`."
      returns: Promise

    - name: try
      desc: |
        Begins a Promise chain, calling a function and returning a Promise resolving with its return value. If the function errors, the returned Promise will be rejected with the error. You can safely yield within the Promise.try callback.

        ::: tip
        `Promise.try` is similar to [[Promise.promisify]], except the callback is invoked immediately instead of returning a new function.
        :::

        ```lua
        Promise.try(function()
          return math.random(1, 2) == 1 and "ok" or error("Oh an error!")
        end)
          :andThen(function(text)
            print(text)
          end)
          :catch(function(err)
            warn("Something went wrong")
          end)
        ```
      static: true
      params:
        - name: callback
          type:
            kind: function
            params: "...: ...any?"
            returns: "...any?"
        - name: "..."
          type: "...any?"
          desc: Arguments for the callback
      returns:
        - type: "Promise<...any?>"
          desc: The return value of the passed callback.

    - name: promisify
      desc: |
        Wraps a function that yields into one that returns a Promise.

        Any errors that occur while executing the function will be turned into rejections.

        ::: tip
        `Promise.promisify` is similar to [[Promise.try]], except the callback is returned as a callable function instead of being invoked immediately.
        :::

        ```lua
        local sleep = Promise.promisify(wait)

        sleep(1):andThen(print)
        ```

        ```lua
        local isPlayerInGroup = Promise.promisify(function(player, groupId)
          return player:IsInGroup(groupId)
        end)
        ```
      static: true
      params:
        - name: callback
          type:
            kind: function
            params: "...: ...any?"
      returns:
        - desc: The function acts like the passed function but now returns a Promise of its return values.
          type:
            kind: function
            params:
              - name: "..."
                type: "...any?"
                desc: The same arguments the wrapped function usually takes.
            returns:
              - name: "*"
                desc: The return values from the wrapped function.

    - name: resolve
      desc: Creates an immediately resolved Promise with the given value.
      static: true
      params: "value: ...any"
      returns: Promise<...any>
    - name: reject
      desc: |
        Creates an immediately rejected Promise with the given value.

        ::: tip
        Someone needs to consume this rejection (i.e. `:catch()` it), otherwise it will emit an unhandled Promise rejection warning on the next frame. Thus, you should not create and store rejected Promises for later use. Only create them on-demand as needed.
        :::

        ```lua
          -- Example using Promise.resolve to deliver cached values:
          function getSomething(name)
            if cache[name] then
              return Promise.resolve(cache[name])
            else
              return Promise.new(function(resolve, reject)
                local thing = getTheThing()
                cache[name] = thing

                resolve(thing)
              end)
            end
          end
        ```
      static: true
      params: "value: ...any"
      returns: Promise<...any>

    - name: all
      desc: |
        Accepts an array of Promises and returns a new promise that:
          * is resolved after all input promises resolve.
          * is rejected if *any* input promises reject.

        Note: Only the first return value from each promise will be present in the resulting array.

        After any input Promise rejects, all other input Promises that are still pending will be cancelled if they have no other consumers.

        ```lua
          local promises = {
            returnsAPromise("example 1"),
            returnsAPromise("example 2"),
            returnsAPromise("example 3"),
          }

          return Promise.all(promises)
        ```
      static: true
      params: "promises: array<Promise<T>>"
      returns: Promise<array<T>>

    - name: allSettled
      desc: |
        Accepts an array of Promises and returns a new Promise that resolves with an array of in-place Statuses when all input Promises have settled. This is equivalent to mapping `promise:finally` over the array of Promises.

        ```lua
          local promises = {
            returnsAPromise("example 1"),
            returnsAPromise("example 2"),
            returnsAPromise("example 3"),
          }

          return Promise.allSettled(promises)
        ```
      static: true
      params: "promises: array<Promise<T>>"
      returns: Promise<array<Status>>

    - name: race
      desc: |
        Accepts an array of Promises and returns a new promise that is resolved or rejected as soon as any Promise in the array resolves or rejects.

        ::: warning
        If the first Promise to settle from the array settles with a rejection, the resulting Promise from `race` will reject.

        If you instead want to tolerate rejections, and only care about at least one Promise resolving, you should use [[Promise.any]] or [[Promise.some]] instead.
        :::

        All other Promises that don't win the race will be cancelled if they have no other consumers.

        ```lua
          local promises = {
            returnsAPromise("example 1"),
            returnsAPromise("example 2"),
            returnsAPromise("example 3"),
          }

          return Promise.race(promises) -- Only returns 1st value to resolve or reject
        ```
      static: true
      params: "promises: array<Promise<T>>"
      returns: Promise<T>

    - name: some
      desc: |
        Accepts an array of Promises and returns a Promise that is resolved as soon as `count` Promises are resolved from the input array. The resolved array values are in the order that the Promises resolved in. When this Promise resolves, all other pending Promises are cancelled if they have no other consumers.

        `count` 0 results in an empty array. The resultant array will never have more than `count` elements.

        ```lua
          local promises = {
            returnsAPromise("example 1"),
            returnsAPromise("example 2"),
            returnsAPromise("example 3"),
          }

          return Promise.some(promises, 2) -- Only resolves with first 2 promises to resolve
        ```
      static: true
      params: "promises: array<Promise<T>>, count: number"
      returns: Promise<array<T>>

    - name: any
      desc: |
        Accepts an array of Promises and returns a Promise that is resolved as soon as *any* of the input Promises resolves. It will reject only if *all* input Promises reject. As soon as one Promises resolves, all other pending Promises are cancelled if they have no other consumers.

        Resolves directly with the value of the first resolved Promise. This is essentially [[Promise.some]] with `1` count, except the Promise resolves with the value directly instead of an array with one element.

        ```lua
          local promises = {
            returnsAPromise("example 1"),
            returnsAPromise("example 2"),
            returnsAPromise("example 3"),
          }

          return Promise.any(promises) -- Resolves with first value to resolve (only rejects if all 3 rejected)
        ```

      static: true
      params: "promises: array<Promise<T>>"
      returns: Promise<T>

    - name: delay
      desc: |
        Returns a Promise that resolves after `seconds` seconds have passed. The Promise resolves with the actual amount of time that was waited.

        This function is **not** a wrapper around `wait`. `Promise.delay` uses a custom scheduler which provides more accurate timing. As an optimization, cancelling this Promise instantly removes the task from the scheduler.

        ::: warning
          Passing `NaN`, infinity, or a number less than 1/60 is equivalent to passing 1/60.
        :::

        ```lua
          Promise.delay(5):andThenCall(print, "This prints after 5 seconds")
        ```
      params: "seconds: number"
      returns: Promise<number>
      static: true

    - name: fold
      since: 3.1.0
      desc: |
        Folds an array of values or promises into a single value. The array is traversed sequentially.

        The reducer function can return a promise or value directly. Each iteration receives the resolved value from the previous, and the first receives your defined initial value.

        The folding will stop at the first rejection encountered.
        ```lua
        local basket = {"blueberry", "melon", "pear", "melon"}
        Promise.fold(basket, function(cost, fruit)
          if fruit == "blueberry" then
            return cost -- blueberries are free!
          else
            -- call a function that returns a promise with the fruit price
            return fetchPrice(fruit):andThen(function(fruitCost)
              return cost + fruitCost
            end)
          end
        end, 0)
        ```
      params:
        - name: list
          type: "array<T | Promise<T>>"
        - name: reducer
          desc: The function to call with the accumulated value, the current element from the array and its index.
          type:
            kind: function
            params: "accumulator: U, value: T, index: number"
            returns: U | Promise<U>
        - name: initialValue
          type: "U"
      returns: Promise<U>
      static: true

    - name: each
      since: 3.0.0
      desc: |
        Iterates serially over the given an array of values, calling the predicate callback on each value before continuing.

        If the predicate returns a Promise, we wait for that Promise to resolve before moving on to the next item
        in the array.

        ::: tip
        `Promise.each` is similar to `Promise.all`, except the Promises are ran in order instead of all at once.

        But because Promises are eager, by the time they are created, they're already running. Thus, we need a way to defer creation of each Promise until a later time.

        The predicate function exists as a way for us to operate on our data instead of creating a new closure for each Promise. If you would prefer, you can pass in an array of functions, and in the predicate, call the function and return its return value.
        :::

        ```lua
        Promise.each({
          "foo",
          "bar",
          "baz",
          "qux"
        }, function(value, index)
          return Promise.delay(1):andThen(function()
            print(("%d) Got %s!"):format(index, value))
          end)
        end)

        --[[
          (1 second passes)
          > 1) Got foo!
          (1 second passes)
          > 2) Got bar!
          (1 second passes)
          > 3) Got baz!
          (1 second passes)
          > 4) Got qux!
        ]]
        ```

        If the Promise a predicate returns rejects, the Promise from `Promise.each` is also rejected with the same value.

        If the array of values contains a Promise, when we get to that point in the list, we wait for the Promise to resolve before calling the predicate with the value.

        If a Promise in the array of values is already Rejected when `Promise.each` is called, `Promise.each` rejects with that value immediately (the predicate callback will never be called even once). If a Promise in the list is already Cancelled when `Promise.each` is called, `Promise.each` rejects with `Promise.Error(Promise.Error.Kind.AlreadyCancelled`). If a Promise in the array of values is Started at first, but later rejects, `Promise.each` will reject with that value and iteration will not continue once iteration encounters that value.

        Returns a Promise containing an array of the returned/resolved values from the predicate for each item in the array of values.

        If this Promise returned from `Promise.each` rejects or is cancelled for any reason, the following are true:
        - Iteration will not continue.
        - Any Promises within the array of values will now be cancelled if they have no other consumers.
        - The Promise returned from the currently active predicate will be cancelled if it hasn't resolved yet.
      params:
        - name: list
          type: "array<T | Promise<T>>"
        - name: predicate
          desc: The callback to call for each value in the list.
          type:
            kind: function
            params: "value: T, index: number"
            returns: U | Promise<U>
      returns: Promise<array<U>>
      static: true

    - name: retry
      since: 3.0.0
      desc: |
        Repeatedly calls a Promise-returning function up to `times` number of times, until the returned Promise resolves.

        If the amount of retries is exceeded, the function will return the latest rejected Promise.

        ```lua
          local function canFail(a, b, c)
            return Promise.new(function(resolve, reject)
              -- do something that can fail

              local failed, thing = doSomethingThatCanFail(a, b, c)

              if failed then
                reject("it failed")
              else
                resolve(thing)
              end
            end)
          end

          local MAX_RETRIES = 10
          local value = Promise.retry(canFail, MAX_RETRIES, "foo", "bar", "baz") -- args to send to canFail
        ```
      params:
        - name: callback
          type:
            kind: function
            params: "...: P"
            returns: Promise<T>
        - name: times
          type: number
        - name: "..."
          type: "P"
          optional: true

      returns: Promise<T>
      static: true

    - name: fromEvent
      since: 3.0.0
      desc: |
        Converts an event into a Promise which resolves the next time the event fires.

        The optional `predicate` callback, if passed, will receive the event arguments and should return `true` or `false`, based on if this fired event should resolve the Promise or not. If `true`, the Promise resolves. If `false`, nothing happens and the predicate will be rerun the next time the event fires.

        The Promise will resolve with the event arguments.

        ::: tip
        This function will work given any object with a `Connect` method. This includes all Roblox events.
        :::

        ```lua
        -- Creates a Promise which only resolves when `somePart` is touched by a part named `"Something specific"`.
        return Promise.fromEvent(somePart.Touched, function(part)
          return part.Name == "Something specific"
        end)
        ```
      params:
        - name: event
          type:
            kind: interface
            type:
              Connect:
                type:
                  kind: function
                  params:
                    - name: callback
                      type:
                        kind: function
                        params: "...: P"
                desc: Any object with a `Connect` method. This includes all Roblox events.
        - name: predicate
          optional: true
          type:
            kind: function
            params: "...: P"
            returns: boolean
            desc: A function which determines if the Promise should resolve with the given value, or wait for the next event to check again.
      returns: Promise<P>
      static: true

    - name: is
      desc: Checks whether the given object is a Promise via duck typing. This only checks if the object is a table and has an `andThen` method.
      static: true
      params: "object: any"
      returns:
        - type: boolean
          desc: "`true` if the given `object` is a Promise."

    # Instance methods
    - name: andThen
      desc: |
        Chains onto an existing Promise and returns a new Promise.

        ::: warning
        Within the failure handler, you should never assume that the rejection value is a string. Some rejections within the Promise library are represented by [[Error]] objects. If you want to treat it as a string for debugging, you should call `tostring` on it first.
        :::

        Return a Promise from the success or failure handler and it will be chained onto.
      params:
        - name: successHandler
          type:
            kind: function
            params: "...: ...any?"
            returns: ...any?
        - name: failureHandler
          optional: true
          type:
            kind: function
            params: "...: ...any?"
            returns: ...any?
      returns: Promise<...any?>
      overloads:
        - params:
          - name: successHandler
            type:
              kind: function
              params: "...: ...any?"
              returns: Promise<T>
          - name: failureHandler
            optional: true
            type:
              kind: function
              params: "...: ...any?"
              returns: Promise<T>
          returns: Promise<T>

    - name: catch
      desc: |
        Shorthand for `Promise:andThen(nil, failureHandler)`.

        Returns a Promise that resolves if the `failureHandler` worked without encountering an additional error.

        ::: warning
        Within the failure handler, you should never assume that the rejection value is a string. Some rejections within the Promise library are represented by [[Error]] objects. If you want to treat it as a string for debugging, you should call `tostring` on it first.
        :::
      params:
        - name: failureHandler
          type:
            kind: function
            params: "...: ...any?"
            returns: ...any?
      returns: Promise<...any?>
      overloads:
        - params:
          - name: failureHandler
            type:
              kind: function
              params: "...: ...any?"
              returns: Promise<T>
          returns: Promise<T>

    - name: tap
      desc: |
        Similar to [[Promise.andThen]], except the return value is the same as the value passed to the handler. In other words, you can insert a `:tap` into a Promise chain without affecting the value that downstream Promises receive.

        ```lua
          getTheValue()
            :tap(print)
            :andThen(function(theValue)
              print("Got", theValue, "even though print returns nil!")
            end)
        ```

        If you return a Promise from the tap handler callback, its value will be discarded but `tap` will still wait until it resolves before passing the original value through.
      params:
        - name: tapHandler
          type:
            kind: function
            params: "...: ...any?"
            returns: ...any?
      returns: Promise<...any?>

    - name: finally
      desc: |
        Set a handler that will be called regardless of the promise's fate. The handler is called when the promise is resolved, rejected, *or* cancelled.

        Returns a new promise chained from this promise.

        ::: warning
        If the Promise is cancelled, any Promises chained off of it with `andThen` won't run. Only Promises chained with `finally` or `done` will run in the case of cancellation.
        :::

        ```lua
          local thing = createSomething()

          doSomethingWith(thing)
            :andThen(function()
              print("It worked!")
              -- do something..
            end)
            :catch(function()
              warn("Oh no it failed!")
            end)
            :finally(function()
              -- either way, destroy thing

              thing:Destroy()
            end)

        ```
      params:
        - name: finallyHandler
          type:
            kind: function
            params: "status: Status"
            returns: ...any?
      returns: Promise<...any?>
      overloads:
        - params:
          - name: finallyHandler
            type:
              kind: function
              params: "status: Status"
              returns: Promise<T>
          returns: Promise<T>

    - name: done
      desc: |
        Set a handler that will be called only if the Promise resolves or is cancelled. This method is similar to `finally`, except it doesn't catch rejections.

        ::: tip
        `done` should be reserved specifically when you want to perform some operation after the Promise is finished (like `finally`), but you don't want to consume rejections (like in <a href="/roblox-lua-promise/lib/Examples.html#cancellable-animation-sequence">this example</a>). You should use `andThen` instead if you only care about the Resolved case.
        :::

        ::: warning
        Like `finally`, if the Promise is cancelled, any Promises chained off of it with `andThen` won't run. Only Promises chained with `done` and `finally` will run in the case of cancellation.
        :::

        Returns a new promise chained from this promise.
      params:
        - name: doneHandler
          type:
            kind: function
            params: "status: Status"
            returns: ...any?
      returns: Promise<...any?>
      overloads:
        - params:
          - name: doneHandler
            type:
              kind: function
              params: "status: Status"
              returns: Promise<T>
          returns: Promise<T>

    - name: andThenCall
      desc: |
        Attaches an `andThen` handler to this Promise that calls the given callback with the predefined arguments. The resolved value is discarded.

        ```lua
          promise:andThenCall(someFunction, "some", "arguments")
        ```

        This is sugar for

        ```lua
          promise:andThen(function()
            return someFunction("some", "arguments")
          end)
        ```
      params:
        - name: callback
          type:
            kind: function
            params: "...: ...any?"
            returns: "any"
        - name: "..."
          type: "...any?"
          desc: Arguments which will be passed to the callback.
      returns: Promise

    - name: finallyCall
      desc: |
        Same as `andThenCall`, except for `finally`.

        Attaches a `finally` handler to this Promise that calls the given callback with the predefined arguments.
      params:
        - name: callback
          type:
            kind: function
            params: "...: ...any?"
            returns: "any"
        - name: "..."
          type: "...any?"
          desc: Arguments which will be passed to the callback.
      returns: Promise

    - name: doneCall
      desc: |
        Same as `andThenCall`, except for `done`.

        Attaches a `done` handler to this Promise that calls the given callback with the predefined arguments.
      params:
        - name: callback
          type:
            kind: function
            params: "...: ...any?"
            returns: "any"
        - name: "..."
          type: "...any?"
          desc: Arguments which will be passed to the callback.
      returns: Promise

    - name: andThenReturn
      desc: |
        Attaches an `andThen` handler to this Promise that discards the resolved value and returns the given value from it.

        ```lua
          promise:andThenReturn("some", "values")
        ```

        This is sugar for

        ```lua
          promise:andThen(function()
            return "some", "values"
          end)
        ```

        ::: warning
        Promises are eager, so if you pass a Promise to `andThenReturn`, it will begin executing before `andThenReturn` is reached in the chain. Likewise, if you pass a Promise created from [[Promise.reject]] into `andThenReturn`, it's possible that this will trigger the unhandled rejection warning. If you need to return a Promise, it's usually best practice to use [[Promise.andThen]].
        :::
      params:
        - name: "..."
          type: "...any?"
          desc: Values to return from the function.
      returns: Promise<...any?>

    - name: finallyReturn
      desc: |
        Attaches a `finally` handler to this Promise that discards the resolved value and returns the given value from it.

        ```lua
          promise:finallyReturn("some", "values")
        ```

        This is sugar for

        ```lua
          promise:finally(function()
            return "some", "values"
          end)
        ```
      params:
        - name: "..."
          type: "...any?"
          desc: Values to return from the function.
      returns: Promise<...any?>

    - name: doneReturn
      desc: |
        Attaches a `done` handler to this Promise that discards the resolved value and returns the given value from it.

        ```lua
          promise:doneReturn("some", "values")
        ```

        This is sugar for

        ```lua
          promise:done(function()
            return "some", "values"
          end)
        ```

      params:
        - name: "..."
          type: "...any?"
          desc: Values to return from the function.
      returns: Promise<...any?>

    - name: timeout
      params: "seconds: number, rejectionValue: T?"
      desc: |
        Returns a new Promise that resolves if the chained Promise resolves within `seconds` seconds, or rejects if execution time exceeds `seconds`. The chained Promise will be cancelled if the timeout is reached.

        Rejects with `rejectionValue` if it is non-nil. If a `rejectionValue` is not given, it will reject with a `Promise.Error(Promise.Error.Kind.TimedOut)`. This can be checked with [[Error.isKind]].

        ```lua
          getSomething():timeout(5):andThen(function(something)
            -- got something and it only took at max 5 seconds
          end):catch(function(e)
            -- Either getting something failed or the time was exceeded.

            if Promise.Error.isKind(e, Promise.Error.Kind.TimedOut) then
              warn("Operation timed out!")
            else
              warn("Operation encountered an error!")
            end
          end)
        ```

        Sugar for:

        ```lua
        Promise.race({
          Promise.delay(seconds):andThen(function()
            return Promise.reject(rejectionValue == nil and Promise.Error.new({ kind = Promise.Error.Kind.TimedOut }) or rejectionValue)
          end),
          promise
        })
        ```
      returns: Promise<T>

    - name: cancel
      desc: |
        Cancels this promise, preventing the promise from resolving or rejecting. Does not do anything if the promise is already settled.

        Cancellations will propagate upwards and downwards through chained promises.

        Promises will only be cancelled if all of their consumers are also cancelled. This is to say that if you call `andThen` twice on the same promise, and you cancel only one of the child promises, it will not cancel the parent promise until the other child promise is also cancelled.

        ```lua
          promise:cancel()
        ```

    - name: now
      desc: |
        Chains a Promise from this one that is resolved if this Promise is already resolved, and rejected if it is not resolved at the time of calling `:now()`. This can be used to ensure your `andThen` handler occurs on the same frame as the root Promise execution.

        ```lua
          doSomething()
            :now()
            :andThen(function(value)
              print("Got", value, "synchronously.")
            end)
        ```

        If this Promise is still running, Rejected, or Cancelled, the Promise returned from `:now()` will reject with the `rejectionValue` if passed, otherwise with a `Promise.Error(Promise.Error.Kind.NotResolvedInTime)`. This can be checked with [[Error.isKind]].
      params: "rejectionValue: T?"
      returns: Promise<T>

    - name: await
      tags: [ 'yields' ]
      desc: |
        Yields the current thread until the given Promise completes. Returns true if the Promise resolved, followed by the values that the promise resolved or rejected with.

        ::: warning
        If the Promise gets cancelled, this function will return `false`, which is indistinguishable from a rejection. If you need to differentiate, you should use [[Promise.awaitStatus]] instead.
        :::

        ```lua
          local worked, value = getTheValue():await()

          if worked then
            print("got", value)
          else
            warn("it failed")
          end
        ```
      returns:
        - desc: "`true` if the Promise successfully resolved."
          type: boolean
        - desc: The values that the Promise resolved or rejected with.
          type: ...any?

    - name: awaitStatus
      tags: [ 'yields' ]
      desc: Yields the current thread until the given Promise completes. Returns the Promise's status, followed by the values that the promise resolved or rejected with.
      returns:
        - type: Status
          desc: The Promise's status.
        - type: ...any?
          desc: The values that the Promise resolved or rejected with.
    - name: expect
      tags: [ 'yields' ]
      desc: |
        Yields the current thread until the given Promise completes. Returns the the values that the promise resolved with.

        ```lua
          local worked = pcall(function()
            print("got", getTheValue():expect())
          end)

          if not worked then
            warn("it failed")
          end
        ```

        This is essentially sugar for:

        ```lua
        select(2, assert(promise:await()))
        ```

        **Errors** if the Promise rejects or gets cancelled.
      returns:
        - type: ...any?
          desc: The values that the Promise resolved with.

    - name: getStatus
      desc: Returns the current Promise status.
      returns: Status
---

<ApiDocs />