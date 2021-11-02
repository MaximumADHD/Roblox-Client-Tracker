-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/expect/src/__tests__/__snapshots__/spyMatchers.test.ts.snap

--[[
       deviations:
              - changed many instances of undefined to nil
              - changed "Infinity" to "inf"
              - snapshots that have "works with map" in their description were changed from Map to Table

]]

local snapshots = {}

snapshots['lastCalledWith includes the custom mock name in the error message 1'] = [=[
[2mexpect([22m[31mnamed-mock[39m[2m).[22mnever[2m.[22mlastCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: never [32m"foo"[39m, [32m"bar"[39m

Number of calls: [31m1[39m]=]

snapshots['lastCalledWith works only on spies or jest.fn 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mlastCalledWith[2m([22m[32m...expected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a mock or spy function

Received has type:  function
Received has value: [31m[Function anonymous][39m]=]

snapshots['lastCalledWith works when not called 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mlastCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: [32m"foo"[39m, [32m"bar"[39m

Number of calls: [31m0[39m]=]

snapshots['lastCalledWith works with Immutable.js objects 1'] = [=[
expect(jest:fn()).never.lastCalledWith(...expected)

Expected: never Immutable.Map {"a": {"b": "c"}}, Immutable.Map {"a": {"b": "c"}}

Number of calls: 1]=]

snapshots['lastCalledWith works with Map 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mlastCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: never [32m{{1, 2}, {2, 1}}[39m

Number of calls: [31m1[39m]=]

snapshots['lastCalledWith works with Map 2'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mlastCalledWith[2m([22m[32m...expected[39m[2m)[22m

[32m- Expected[39m
[31m+ Received[39m

[2m  Table {[22m
[2m    Table {[22m
[32m-     "a",[39m
[32m-     "b",[39m
[31m+     1,[39m
[31m+     2,[39m
[2m    },[22m
[2m    Table {[22m
[32m-     "b",[39m
[32m-     "a",[39m
[31m+     2,[39m
[31m+     1,[39m
[2m    },[22m
[2m  }[22m,

Number of calls: [31m1[39m]=]

snapshots['lastCalledWith works with Set 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mlastCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: never [32mSet {1, 2}[39m

Number of calls: [31m1[39m]=]

snapshots['lastCalledWith works with Set 2'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mlastCalledWith[2m([22m[32m...expected[39m[2m)[22m

[32m- Expected[39m
[31m+ Received[39m

[2m  Set {[22m
[32m-   3,[39m
[32m-   4,[39m
[31m+   1,[39m
[31m+   2,[39m
[2m  }[22m,

Number of calls: [31m1[39m]=]

snapshots['lastCalledWith works with arguments that don\'t match 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mlastCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: [32m"foo"[39m, [32m"bar"[39m
Received: [2m"foo"[22m, [31m"bar1"[39m

Number of calls: [31m1[39m]=]

snapshots['lastCalledWith works with arguments that match 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mlastCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: never [32m"foo"[39m, [32m"bar"[39m

Number of calls: [31m1[39m]=]

snapshots['lastCalledWith works with many arguments 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mlastCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: never [32m"foo"[39m, [32m"bar"[39m
Received
       2:       [2m"foo"[22m, [31m"bar1"[39m
->     3:       [2m"foo"[22m, [31m"bar"[39m

Number of calls: [31m3[39m]=]

snapshots['lastCalledWith works with many arguments that don\'t match 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mlastCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: [32m"foo"[39m, [32m"bar"[39m
Received
       2: [2m"foo"[22m, [31m"bar2"[39m
->     3: [2m"foo"[22m, [31m"bar3"[39m

Number of calls: [31m3[39m]=]

-- deviation: changed undefined to false
snapshots['lastCalledWith works with trailing undefined arguments 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mlastCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: [32m"foo"[39m
Received: [31m"foo"[39m, [31mfalse[39m

Number of calls: [31m1[39m]=]

snapshots['lastReturnedWith a call that throws is not considered to have returned 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mlastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32mnil[39m
Received: function call threw an error

Number of returns: [31m0[39m
Number of calls:   [31m1[39m]=]

snapshots['lastReturnedWith a call that throws undefined is not considered to have returned 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mlastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32mnil[39m
Received: function call threw an error

Number of returns: [31m0[39m
Number of calls:   [31m1[39m]=]

snapshots['lastReturnedWith includes the custom mock name in the error message 1'] = [=[
expect(named-mock).lastReturnedWith(expected)

Expected: "foo"

Number of returns: 0]=]

snapshots['lastReturnedWith lastReturnedWith incomplete recursive calls are handled properly 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mlastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32m0[39m
Received
       3: function call has not returned yet
->     4: function call has not returned yet

Number of returns: [31m0[39m
Number of calls:   [31m4[39m]=]

snapshots['lastReturnedWith lastReturnedWith works with three calls 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mlastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m"foo3"[39m
Received
       2:       [31m"foo2"[39m
->     3:       [2m"foo3"[22m

Number of returns: [31m3[39m]=]

snapshots['lastReturnedWith works only on spies or jest.fn 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mlastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a mock function

Received has type:  function
Received has value: [31m[Function anonymous][39m]=]

snapshots['lastReturnedWith works when not called 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mlastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32m"foo"[39m

Number of returns: [31m0[39m]=]

snapshots['lastReturnedWith works with Immutable.js objects directly created 1'] = [=[
expect(jest:fn()).never.lastReturnedWith(expected)

Expected: never Immutable.Map {"a": {"b": "c"}}

Number of returns: 1]=]

snapshots['lastReturnedWith works with Immutable.js objects indirectly created 1'] = [=[
expect(jest:fn()).never.lastReturnedWith(expected)

Expected: never Immutable.Map {"a": {"b": "c"}}

Number of returns: 1]=]

snapshots['lastReturnedWith works with Map 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mlastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m{{1, 2}, {2, 1}}[39m

Number of returns: [31m1[39m]=]

snapshots['lastReturnedWith works with Map 2'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mlastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32m{{"a", "b"}, {"b", "a"}}[39m
Received: [31m{{1, 2}, {2, 1}}[39m

Number of returns: [31m1[39m]=]

snapshots['lastReturnedWith works with Set 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mlastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32mSet {1, 2}[39m

Number of returns: [31m1[39m]=]

snapshots['lastReturnedWith works with Set 2'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mlastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32mSet {3, 4}[39m
Received: [31mSet {1, 2}[39m

Number of returns: [31m1[39m]=]

snapshots['lastReturnedWith works with argument that does match 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mlastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m"foo"[39m

Number of returns: [31m1[39m]=]

snapshots['lastReturnedWith works with argument that does not match 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mlastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32m"bar"[39m
Received: [31m"foo"[39m

Number of returns: [31m1[39m]=]

snapshots['lastReturnedWith works with undefined 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mlastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32mnil[39m

Number of returns: [31m1[39m]=]

snapshots['nthCalledWith includes the custom mock name in the error message 1'] = [=[
[22m[32m...expected[39m[2m)[22m

n: 1
Expected: never [32m"foo"[39m, [32m"bar"[39m

Number of calls: [31m1[39m]=]

snapshots['nthCalledWith negative throw matcher error for n that is not integer 1'] = [=[
[22m[32m...expected[39m[2m)[22m

[1mMatcher error[22m: n must be a positive integer

n has type:  number
n has value: inf]=]

snapshots['nthCalledWith positive throw matcher error for n that is not integer 1'] = [=[
[22m[32m...expected[39m[2m)[22m

[1mMatcher error[22m: n must be a positive integer

n has type:  number
n has value: 0.1]=]

snapshots['nthCalledWith positive throw matcher error for n that is not positive integer 1'] = [=[
[22m[32m...expected[39m[2m)[22m

[1mMatcher error[22m: n must be a positive integer

n has type:  number
n has value: 0]=]

snapshots['nthCalledWith works only on spies or jest.fn 1'] = [=[
[22m[32m...expected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a mock or spy function

Received has type:  function
Received has value: [31m[Function anonymous][39m]=]

snapshots['nthCalledWith works when not called 1'] = [=[
[22m[32m...expected[39m[2m)[22m

n: 1
Expected: [32m"foo"[39m, [32m"bar"[39m

Number of calls: [31m0[39m]=]

snapshots['nthCalledWith works with Immutable.js objects 1'] = [=[
expect(jest:fn()).never.nthCalledWith(n, ...expected)

n: 1
Expected: never Immutable.Map {"a": {"b": "c"}}, Immutable.Map {"a": {"b": "c"}}

Number of calls: 1]=]

snapshots['nthCalledWith works with Map 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mnthCalledWith[2m([22mn[2m, [22m[32m...expected[39m[2m)[22m

n: 1
Expected: never [32m{{1, 2}, {2, 1}}[39m

Number of calls: [31m1[39m]=]

snapshots['nthCalledWith works with Map 2'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnthCalledWith[2m([22mn[2m, [22m[32m...expected[39m[2m)[22m

n: 1
[32m- Expected[39m
[31m+ Received[39m

[2m  Table {[22m
[2m    Table {[22m
[32m-     "a",[39m
[32m-     "b",[39m
[31m+     1,[39m
[31m+     2,[39m
[2m    },[22m
[2m    Table {[22m
[32m-     "b",[39m
[32m-     "a",[39m
[31m+     2,[39m
[31m+     1,[39m
[2m    },[22m
[2m  }[22m,

Number of calls: [31m1[39m]=]

snapshots['nthCalledWith works with Set 1'] = [=[
[22m[32m...expected[39m[2m)[22m

n: 1
Expected: never [32mSet {1, 2}[39m

Number of calls: [31m1[39m]=]

snapshots['nthCalledWith works with Set 2'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnthCalledWith[2m([22mn[2m, [22m[32m...expected[39m[2m)[22m

n: 1
[32m- Expected[39m
[31m+ Received[39m

[2m  Set {[22m
[32m-   3,[39m
[32m-   4,[39m
[31m+   1,[39m
[31m+   2,[39m
[2m  }[22m,

Number of calls: [31m1[39m]=]

snapshots['nthCalledWith works with arguments that don\'t match 1'] = [=[
[22m[32m...expected[39m[2m)[22m

n: 1
Expected: [32m"foo"[39m, [32m"bar"[39m
Received: [2m"foo"[22m, [31m"bar1"[39m

Number of calls: [31m1[39m]=]

snapshots['nthCalledWith works with arguments that match 1'] = [=[
[22m[32m...expected[39m[2m)[22m

n: 1
Expected: never [32m"foo"[39m, [32m"bar"[39m

Number of calls: [31m1[39m]=]

snapshots['nthCalledWith works with three calls 1'] = [=[
[22m[32m...expected[39m[2m)[22m

n: 1
Expected: never [32m"foo1"[39m, [32m"bar"[39m
Received
->     1:       [2m"foo1"[22m, [31m"bar"[39m
       2:       [31m"foo"[39m, [31m"bar1"[39m

Number of calls: [31m3[39m]=]

-- deviation: changed undefined to false
snapshots['nthCalledWith works with trailing undefined arguments 1'] = [=[
[22m[32m...expected[39m[2m)[22m

n: 1
Expected: [32m"foo"[39m
Received: [31m"foo"[39m, [31mfalse[39m

Number of calls: [31m1[39m]=]

snapshots['nthReturnedWith a call that throws is not considered to have returned 1'] = [=[
[22m[32mexpected[39m[2m)[22m

n: 1
Expected: [32mnil[39m
Received: function call threw an error

Number of returns: [31m0[39m
Number of calls:   [31m1[39m]=]

snapshots['nthReturnedWith a call that throws undefined is not considered to have returned 1'] = [=[
[22m[32mexpected[39m[2m)[22m

n: 1
Expected: [32mnil[39m
Received: function call threw an error

Number of returns: [31m0[39m
Number of calls:   [31m1[39m]=]

snapshots['nthReturnedWith includes the custom mock name in the error message 1'] = [=[
expect(named-mock).nthReturnedWith(n, expected)

n: 1
Expected: "foo"

Number of returns: 0]=]

snapshots['nthReturnedWith nthReturnedWith incomplete recursive calls are handled properly 1'] = [=[
expect(jest:fn()).nthReturnedWith(n, expected)

n: 1
Expected: 6
Received
->     1: function call has not returned yet
       2: function call has not returned yet

Number of returns: 2
Number of calls:   4]=]

snapshots['nthReturnedWith nthReturnedWith incomplete recursive calls are handled properly 2'] = [=[
expect(jest:fn()).nthReturnedWith(n, expected)

n: 2
Expected: 3
Received
       1: function call has not returned yet
->     2: function call has not returned yet
       3: 1

Number of returns: 2
Number of calls:   4]=]

snapshots['nthReturnedWith nthReturnedWith incomplete recursive calls are handled properly 3'] = [=[
expect(jest:fn()).never.nthReturnedWith(n, expected)

n: 3
Expected: never 1
Received
       2:     function call has not returned yet
->     3:     1
       4:     0

Number of returns: 2
Number of calls:   4]=]

snapshots['nthReturnedWith nthReturnedWith incomplete recursive calls are handled properly 4'] = [=[
expect(jest:fn()).never.nthReturnedWith(n, expected)

n: 4
Expected: never 0
Received
       3:     1
->     4:     0

Number of returns: 2
Number of calls:   4]=]

snapshots['nthReturnedWith nthReturnedWith negative throw matcher error for n that is not number 1'] = [=[
[22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: n must be a positive integer

n has value: nil]=]

snapshots['nthReturnedWith nthReturnedWith positive throw matcher error for n that is not integer 1'] = [=[
[22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: n must be a positive integer

n has type:  number
n has value: 0.1]=]

snapshots['nthReturnedWith nthReturnedWith positive throw matcher error for n that is not positive integer 1'] = [=[
[22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: n must be a positive integer

n has type:  number
n has value: 0]=]

snapshots['nthReturnedWith nthReturnedWith should reject nth value greater than number of calls 1'] = [=[
[22m[32mexpected[39m[2m)[22m

n: 4
Expected: [32m"foo"[39m
Received
       3: [2m"foo"[22m

Number of returns: [31m3[39m]=]

snapshots['nthReturnedWith nthReturnedWith should replace 1st, 2nd, 3rd with first, second, third 1'] = [=[
[22m[32mexpected[39m[2m)[22m

n: 1
Expected: [32m"bar1"[39m
Received
->     1: [31m"foo1"[39m
       2: [31m"foo2"[39m

Number of returns: [31m3[39m]=]

snapshots['nthReturnedWith nthReturnedWith should replace 1st, 2nd, 3rd with first, second, third 2'] = [=[
[22m[32mexpected[39m[2m)[22m

n: 1
Expected: never [32m"foo1"[39m
Received
->     1:       [2m"foo1"[22m
       2:       [31m"foo2"[39m

Number of returns: [31m3[39m]=]

snapshots['nthReturnedWith nthReturnedWith works with three calls 1'] = [=[
[22m[32mexpected[39m[2m)[22m

n: 1
Expected: never [32m"foo1"[39m
Received
->     1:       [2m"foo1"[22m
       2:       [31m"foo2"[39m

Number of returns: [31m3[39m]=]

snapshots['nthReturnedWith works only on spies or jest.fn 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnthReturnedWith[2m([22mn[2m, [22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a mock function

Received has type:  function
Received has value: [31m[Function anonymous][39m]=]

snapshots['nthReturnedWith works when not called 1'] = [=[
[22m[32mexpected[39m[2m)[22m

n: 1
Expected: [32m"foo"[39m

Number of returns: [31m0[39m]=]

snapshots['nthReturnedWith works with Immutable.js objects directly created 1'] = [=[
expect(jest:fn()).never.nthReturnedWith(n, expected)

n: 1
Expected: never Immutable.Map {"a": {"b": "c"}}

Number of returns: 1]=]

snapshots['nthReturnedWith works with Immutable.js objects indirectly created 1'] = [=[
expect(jest:fn()).never.nthReturnedWith(n, expected)

n: 1
Expected: never Immutable.Map {"a": {"b": "c"}}

Number of returns: 1]=]

snapshots['nthReturnedWith works with Map 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mnthReturnedWith[2m([22mn[2m, [22m[32mexpected[39m[2m)[22m

n: 1
Expected: never [32m{{1, 2}, {2, 1}}[39m

Number of returns: [31m1[39m]=]

snapshots['nthReturnedWith works with Map 2'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnthReturnedWith[2m([22mn[2m, [22m[32mexpected[39m[2m)[22m

n: 1
Expected: [32m{{"a", "b"}, {"b", "a"}}[39m
Received: [31m{{1, 2}, {2, 1}}[39m

Number of returns: [31m1[39m]=]

snapshots['nthReturnedWith works with Set 1'] = [=[
[22m[32mexpected[39m[2m)[22m

n: 1
Expected: never [32mSet {1, 2}[39m

Number of returns: [31m1[39m]=]

snapshots['nthReturnedWith works with Set 2'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnthReturnedWith[2m([22mn[2m, [22m[32mexpected[39m[2m)[22m

n: 1
Expected: [32mSet {3, 4}[39m
Received: [31mSet {1, 2}[39m

Number of returns: [31m1[39m]=]

snapshots['nthReturnedWith works with argument that does match 1'] = [=[
[22m[32mexpected[39m[2m)[22m

n: 1
Expected: never [32m"foo"[39m

Number of returns: [31m1[39m]=]

snapshots['nthReturnedWith works with argument that does not match 1'] = [=[
[22m[32mexpected[39m[2m)[22m

n: 1
Expected: [32m"bar"[39m
Received: [31m"foo"[39m

Number of returns: [31m1[39m]=]

snapshots['nthReturnedWith works with undefined 1'] = [=[
[22m[32mexpected[39m[2m)[22m

n: 1
Expected: never [32mnil[39m

Number of returns: [31m1[39m]=]

snapshots['toBeCalled .not fails with any argument passed 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeCalled[2m()[22m

[1mMatcher error[22m: this matcher must not have an expected argument

Expected has type:  number
Expected has value: [32m555[39m]=]

snapshots['toBeCalled .not passes when called 1'] = [=[
[2mexpect([22m[31mspy[39m[2m).[22mtoBeCalled[2m()[22m

Expected number of calls: >= [32m1[39m
Received number of calls:    [31m0[39m]=]

snapshots['toBeCalled fails with any argument passed 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeCalled[2m()[22m

[1mMatcher error[22m: this matcher must not have an expected argument

Expected has type:  number
Expected has value: [32m555[39m]=]

snapshots['toBeCalled includes the custom mock name in the error message 1'] = [=[
[2mexpect([22m[31mnamed-mock[39m[2m).[22mnever[2m.[22mtoBeCalled[2m()[22m

Expected number of calls: [32m0[39m
Received number of calls: [31m1[39m

1: called with 0 arguments]=]

snapshots['toBeCalled passes when called 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoBeCalled[2m()[22m

Expected number of calls: [32m0[39m
Received number of calls: [31m1[39m

1: [31m"arg0"[39m, [31m"arg1"[39m, [31m"arg2"[39m]=]

snapshots['toBeCalled works only on spies or jest.fn 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeCalled[2m()[22m

[1mMatcher error[22m: [31mreceived[39m value must be a mock or spy function

Received has type:  function
Received has value: [31m[Function anonymous][39m]=]

snapshots['toBeCalledTimes .not only accepts a number argument 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeCalledTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  table
Expected has value: [32m{}[39m]=]

-- snapshots['toBeCalledTimes .not only accepts a number argument 2'] = [=[
-- expect(received).never.toBeCalledTimes(expected)

-- Matcher error: expected value must be a non-negative integer

-- Expected has type:  array
-- Expected has value: []]=]

snapshots['toBeCalledTimes .not only accepts a number argument 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeCalledTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  boolean
Expected has value: [32mtrue[39m]=]

snapshots['toBeCalledTimes .not only accepts a number argument 3'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeCalledTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  string
Expected has value: [32m"a"[39m]=]

-- snapshots['toBeCalledTimes .not only accepts a number argument 5'] = [=[
-- expect(received).never.toBeCalledTimes(expected)

-- Matcher error: expected value must be a non-negative integer

-- Expected has type:  map
-- Expected has value: Map {}]=]

snapshots['toBeCalledTimes .not only accepts a number argument 4'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeCalledTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  function
Expected has value: [32m[Function anonymous][39m]=]

snapshots['toBeCalledTimes .not passes if function called less than expected times 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoBeCalledTimes[2m([22m[32mexpected[39m[2m)[22m

Expected number of calls: [32m2[39m
Received number of calls: [31m1[39m]=]

snapshots['toBeCalledTimes .not passes if function called more than expected times 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoBeCalledTimes[2m([22m[32mexpected[39m[2m)[22m

Expected number of calls: [32m2[39m
Received number of calls: [31m3[39m]=]

snapshots['toBeCalledTimes .not works only on spies or jest.fn 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeCalledTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a mock or spy function

Received has type:  function
Received has value: [31m[Function anonymous][39m]=]

snapshots['toBeCalledTimes includes the custom mock name in the error message 1'] = [=[
[2mexpect([22m[31mnamed-mock[39m[2m).[22mtoBeCalledTimes[2m([22m[32mexpected[39m[2m)[22m

Expected number of calls: [32m2[39m
Received number of calls: [31m1[39m]=]

snapshots['toBeCalledTimes only accepts a number argument 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeCalledTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  table
Expected has value: [32m{}[39m]=]

-- snapshots['toBeCalledTimes only accepts a number argument 2'] = [=[
-- expect(received).toBeCalledTimes(expected)

-- Matcher error: expected value must be a non-negative integer

-- Expected has type:  array
-- Expected has value: []]=]

snapshots['toBeCalledTimes only accepts a number argument 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeCalledTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  boolean
Expected has value: [32mtrue[39m]=]

snapshots['toBeCalledTimes only accepts a number argument 3'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeCalledTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  string
Expected has value: [32m"a"[39m]=]

-- snapshots['toBeCalledTimes only accepts a number argument 5'] = [=[
-- expect(received).toBeCalledTimes(expected)

-- Matcher error: expected value must be a non-negative integer

-- Expected has type:  map
-- Expected has value: Map {}]=]

snapshots['toBeCalledTimes only accepts a number argument 4'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeCalledTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  function
Expected has value: [32m[Function anonymous][39m]=]

snapshots['toBeCalledTimes passes if function called equal to expected times 1'] = [=[
[2mexpect([22m[31mspy[39m[2m).[22mnever[2m.[22mtoBeCalledTimes[2m([22m[32mexpected[39m[2m)[22m

Expected number of calls: never [32m2[39m]=]

snapshots['toBeCalledWith includes the custom mock name in the error message 1'] = [=[
[2mexpect([22m[31mnamed-mock[39m[2m).[22mnever[2m.[22mtoBeCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: never [32m"foo"[39m, [32m"bar"[39m

Number of calls: [31m1[39m]=]

snapshots['toBeCalledWith works only on spies or jest.fn 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeCalledWith[2m([22m[32m...expected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a mock or spy function

Received has type:  function
Received has value: [31m[Function anonymous][39m]=]

snapshots['toBeCalledWith works when not called 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoBeCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: [32m"foo"[39m, [32m"bar"[39m

Number of calls: [31m0[39m]=]

snapshots['toBeCalledWith works with Immutable.js objects 1'] = [=[
expect(jest:fn()).never.toBeCalledWith(...expected)

Expected: never Immutable.Map {"a": {"b": "c"}}, Immutable.Map {"a": {"b": "c"}}

Number of calls: 1]=]

snapshots['toBeCalledWith works with Map 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoBeCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: never [32m{{1, 2}, {2, 1}}[39m

Number of calls: [31m1[39m]=]

snapshots['toBeCalledWith works with Map 2'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoBeCalledWith[2m([22m[32m...expected[39m[2m)[22m

[32m- Expected[39m
[31m+ Received[39m

[2m  Table {[22m
[2m    Table {[22m
[32m-     "a",[39m
[32m-     "b",[39m
[31m+     1,[39m
[31m+     2,[39m
[2m    },[22m
[2m    Table {[22m
[32m-     "b",[39m
[32m-     "a",[39m
[31m+     2,[39m
[31m+     1,[39m
[2m    },[22m
[2m  }[22m,

Number of calls: [31m1[39m]=]

snapshots['toBeCalledWith works with Set 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoBeCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: never [32mSet {1, 2}[39m

Number of calls: [31m1[39m]=]

snapshots['toBeCalledWith works with Set 2'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoBeCalledWith[2m([22m[32m...expected[39m[2m)[22m

[32m- Expected[39m
[31m+ Received[39m

[2m  Set {[22m
[32m-   3,[39m
[32m-   4,[39m
[31m+   1,[39m
[31m+   2,[39m
[2m  }[22m,

Number of calls: [31m1[39m]=]

snapshots['toBeCalledWith works with arguments that don\'t match 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoBeCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: [32m"foo"[39m, [32m"bar"[39m
Received: [2m"foo"[22m, [31m"bar1"[39m

Number of calls: [31m1[39m]=]

snapshots['toBeCalledWith works with arguments that match 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoBeCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: never [32m"foo"[39m, [32m"bar"[39m

Number of calls: [31m1[39m]=]

snapshots['toBeCalledWith works with many arguments 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoBeCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: never [32m"foo"[39m, [32m"bar"[39m
Received
       3:       [2m"foo"[22m, [31m"bar"[39m

Number of calls: [31m3[39m]=]

snapshots['toBeCalledWith works with many arguments that don\'t match 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoBeCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: [32m"foo"[39m, [32m"bar"[39m
Received
       1: [2m"foo"[22m, [31m"bar1"[39m
       2: [2m"foo"[22m, [31m"bar2"[39m
       3: [2m"foo"[22m, [31m"bar3"[39m

Number of calls: [31m3[39m]=]

-- deviation: changed undefined to false
snapshots['toBeCalledWith works with trailing undefined arguments 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoBeCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: [32m"foo"[39m
Received: [31m"foo"[39m, [31mfalse[39m

Number of calls: [31m1[39m]=]

snapshots['toHaveBeenCalled .not fails with any argument passed 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveBeenCalled[2m()[22m

[1mMatcher error[22m: this matcher must not have an expected argument

Expected has type:  number
Expected has value: [32m555[39m]=]

snapshots['toHaveBeenCalled .not passes when called 1'] = [=[
[2mexpect([22m[31mspy[39m[2m).[22mtoHaveBeenCalled[2m()[22m

Expected number of calls: >= [32m1[39m
Received number of calls:    [31m0[39m]=]

snapshots['toHaveBeenCalled fails with any argument passed 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveBeenCalled[2m()[22m

[1mMatcher error[22m: this matcher must not have an expected argument

Expected has type:  number
Expected has value: [32m555[39m]=]

snapshots['toHaveBeenCalled includes the custom mock name in the error message 1'] = [=[
[2mexpect([22m[31mnamed-mock[39m[2m).[22mnever[2m.[22mtoHaveBeenCalled[2m()[22m

Expected number of calls: [32m0[39m
Received number of calls: [31m1[39m

1: called with 0 arguments]=]

snapshots['toHaveBeenCalled passes when called 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveBeenCalled[2m()[22m

Expected number of calls: [32m0[39m
Received number of calls: [31m1[39m

1: [31m"arg0"[39m, [31m"arg1"[39m, [31m"arg2"[39m]=]

snapshots['toHaveBeenCalled works only on spies or jest.fn 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveBeenCalled[2m()[22m

[1mMatcher error[22m: [31mreceived[39m value must be a mock or spy function

Received has type:  function
Received has value: [31m[Function anonymous][39m]=]

snapshots['toHaveBeenCalledTimes .not only accepts a number argument 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveBeenCalledTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  table
Expected has value: [32m{}[39m]=]

-- snapshots['toHaveBeenCalledTimes .not only accepts a number argument 2'] = [=[
-- expect(received).never.toHaveBeenCalledTimes(expected)

-- Matcher error: expected value must be a non-negative integer

-- Expected has type:  array
-- Expected has value: []]=]

snapshots['toHaveBeenCalledTimes .not only accepts a number argument 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveBeenCalledTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  boolean
Expected has value: [32mtrue[39m]=]

snapshots['toHaveBeenCalledTimes .not only accepts a number argument 3'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveBeenCalledTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  string
Expected has value: [32m"a"[39m]=]

-- snapshots['toHaveBeenCalledTimes .not only accepts a number argument 5'] = [=[
-- expect(received).never.toHaveBeenCalledTimes(expected)

-- Matcher error: expected value must be a non-negative integer

-- Expected has type:  map
-- Expected has value: Map {}]=]

snapshots['toHaveBeenCalledTimes .not only accepts a number argument 4'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveBeenCalledTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  function
Expected has value: [32m[Function anonymous][39m]=]

snapshots['toHaveBeenCalledTimes .not passes if function called less than expected times 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveBeenCalledTimes[2m([22m[32mexpected[39m[2m)[22m

Expected number of calls: [32m2[39m
Received number of calls: [31m1[39m]=]

snapshots['toHaveBeenCalledTimes .not passes if function called more than expected times 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveBeenCalledTimes[2m([22m[32mexpected[39m[2m)[22m

Expected number of calls: [32m2[39m
Received number of calls: [31m3[39m]=]

snapshots['toHaveBeenCalledTimes .not works only on spies or jest.fn 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveBeenCalledTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a mock or spy function

Received has type:  function
Received has value: [31m[Function anonymous][39m]=]

snapshots['toHaveBeenCalledTimes includes the custom mock name in the error message 1'] = [=[
[2mexpect([22m[31mnamed-mock[39m[2m).[22mtoHaveBeenCalledTimes[2m([22m[32mexpected[39m[2m)[22m

Expected number of calls: [32m2[39m
Received number of calls: [31m1[39m]=]

snapshots['toHaveBeenCalledTimes only accepts a number argument 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveBeenCalledTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  table
Expected has value: [32m{}[39m]=]

-- snapshots['toHaveBeenCalledTimes only accepts a number argument 2'] = [=[
-- expect(received).toHaveBeenCalledTimes(expected)

-- Matcher error: expected value must be a non-negative integer

-- Expected has type:  array
-- Expected has value: []]=]

snapshots['toHaveBeenCalledTimes only accepts a number argument 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveBeenCalledTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  boolean
Expected has value: [32mtrue[39m]=]

snapshots['toHaveBeenCalledTimes only accepts a number argument 3'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveBeenCalledTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  string
Expected has value: [32m"a"[39m]=]

-- snapshots['toHaveBeenCalledTimes only accepts a number argument 5'] = [=[
-- expect(received).toHaveBeenCalledTimes(expected)

-- Matcher error: expected value must be a non-negative integer

-- Expected has type:  map
-- Expected has value: Map {}]=]

snapshots['toHaveBeenCalledTimes only accepts a number argument 4'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveBeenCalledTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  function
Expected has value: [32m[Function anonymous][39m]=]

snapshots['toHaveBeenCalledTimes passes if function called equal to expected times 1'] = [=[
[2mexpect([22m[31mspy[39m[2m).[22mnever[2m.[22mtoHaveBeenCalledTimes[2m([22m[32mexpected[39m[2m)[22m

Expected number of calls: never [32m2[39m]=]

snapshots['toHaveBeenCalledWith includes the custom mock name in the error message 1'] = [=[
[2mexpect([22m[31mnamed-mock[39m[2m).[22mnever[2m.[22mtoHaveBeenCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: never [32m"foo"[39m, [32m"bar"[39m

Number of calls: [31m1[39m]=]

snapshots['toHaveBeenCalledWith works only on spies or jest.fn 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveBeenCalledWith[2m([22m[32m...expected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a mock or spy function

Received has type:  function
Received has value: [31m[Function anonymous][39m]=]

snapshots['toHaveBeenCalledWith works when not called 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveBeenCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: [32m"foo"[39m, [32m"bar"[39m

Number of calls: [31m0[39m]=]

snapshots['toHaveBeenCalledWith works with Immutable.js objects 1'] = [=[
expect(jest:fn()).never.toHaveBeenCalledWith(...expected)

Expected: never Immutable.Map {"a": {"b": "c"}}, Immutable.Map {"a": {"b": "c"}}

Number of calls: 1]=]

snapshots['toHaveBeenCalledWith works with Map 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveBeenCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: never [32m{{1, 2}, {2, 1}}[39m

Number of calls: [31m1[39m]=]

snapshots['toHaveBeenCalledWith works with Map 2'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveBeenCalledWith[2m([22m[32m...expected[39m[2m)[22m

[32m- Expected[39m
[31m+ Received[39m

[2m  Table {[22m
[2m    Table {[22m
[32m-     "a",[39m
[32m-     "b",[39m
[31m+     1,[39m
[31m+     2,[39m
[2m    },[22m
[2m    Table {[22m
[32m-     "b",[39m
[32m-     "a",[39m
[31m+     2,[39m
[31m+     1,[39m
[2m    },[22m
[2m  }[22m,

Number of calls: [31m1[39m]=]

snapshots['toHaveBeenCalledWith works with Set 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveBeenCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: never [32mSet {1, 2}[39m

Number of calls: [31m1[39m]=]

snapshots['toHaveBeenCalledWith works with Set 2'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveBeenCalledWith[2m([22m[32m...expected[39m[2m)[22m

[32m- Expected[39m
[31m+ Received[39m

[2m  Set {[22m
[32m-   3,[39m
[32m-   4,[39m
[31m+   1,[39m
[31m+   2,[39m
[2m  }[22m,

Number of calls: [31m1[39m]=]

snapshots['toHaveBeenCalledWith works with arguments that don\'t match 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveBeenCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: [32m"foo"[39m, [32m"bar"[39m
Received: [2m"foo"[22m, [31m"bar1"[39m

Number of calls: [31m1[39m]=]

snapshots['toHaveBeenCalledWith works with arguments that match 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveBeenCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: never [32m"foo"[39m, [32m"bar"[39m

Number of calls: [31m1[39m]=]

snapshots['toHaveBeenCalledWith works with many arguments 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveBeenCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: never [32m"foo"[39m, [32m"bar"[39m
Received
       3:       [2m"foo"[22m, [31m"bar"[39m

Number of calls: [31m3[39m]=]

snapshots['toHaveBeenCalledWith works with many arguments that don\'t match 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveBeenCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: [32m"foo"[39m, [32m"bar"[39m
Received
       1: [2m"foo"[22m, [31m"bar1"[39m
       2: [2m"foo"[22m, [31m"bar2"[39m
       3: [2m"foo"[22m, [31m"bar3"[39m

Number of calls: [31m3[39m]=]

-- deviation: changed undefined to false
snapshots['toHaveBeenCalledWith works with trailing undefined arguments 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveBeenCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: [32m"foo"[39m
Received: [31m"foo"[39m, [31mfalse[39m

Number of calls: [31m1[39m]=]

snapshots['toHaveBeenLastCalledWith includes the custom mock name in the error message 1'] = [=[
[2mexpect([22m[31mnamed-mock[39m[2m).[22mnever[2m.[22mtoHaveBeenLastCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: never [32m"foo"[39m, [32m"bar"[39m

Number of calls: [31m1[39m]=]

snapshots['toHaveBeenLastCalledWith works only on spies or jest.fn 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveBeenLastCalledWith[2m([22m[32m...expected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a mock or spy function

Received has type:  function
Received has value: [31m[Function anonymous][39m]=]

snapshots['toHaveBeenLastCalledWith works when not called 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveBeenLastCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: [32m"foo"[39m, [32m"bar"[39m

Number of calls: [31m0[39m]=]

snapshots['toHaveBeenLastCalledWith works with Immutable.js objects 1'] = [=[
expect(jest:fn()).never.toHaveBeenLastCalledWith(...expected)

Expected: never Immutable.Map {"a": {"b": "c"}}, Immutable.Map {"a": {"b": "c"}}

Number of calls: 1]=]

snapshots['toHaveBeenLastCalledWith works with Map 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveBeenLastCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: never [32m{{1, 2}, {2, 1}}[39m

Number of calls: [31m1[39m]=]

snapshots['toHaveBeenLastCalledWith works with Map 2'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveBeenLastCalledWith[2m([22m[32m...expected[39m[2m)[22m

[32m- Expected[39m
[31m+ Received[39m

[2m  Table {[22m
[2m    Table {[22m
[32m-     "a",[39m
[32m-     "b",[39m
[31m+     1,[39m
[31m+     2,[39m
[2m    },[22m
[2m    Table {[22m
[32m-     "b",[39m
[32m-     "a",[39m
[31m+     2,[39m
[31m+     1,[39m
[2m    },[22m
[2m  }[22m,

Number of calls: [31m1[39m]=]

snapshots['toHaveBeenLastCalledWith works with Set 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveBeenLastCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: never [32mSet {1, 2}[39m

Number of calls: [31m1[39m]=]

snapshots['toHaveBeenLastCalledWith works with Set 2'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveBeenLastCalledWith[2m([22m[32m...expected[39m[2m)[22m

[32m- Expected[39m
[31m+ Received[39m

[2m  Set {[22m
[32m-   3,[39m
[32m-   4,[39m
[31m+   1,[39m
[31m+   2,[39m
[2m  }[22m,

Number of calls: [31m1[39m]=]

snapshots['toHaveBeenLastCalledWith works with arguments that don\'t match 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveBeenLastCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: [32m"foo"[39m, [32m"bar"[39m
Received: [2m"foo"[22m, [31m"bar1"[39m

Number of calls: [31m1[39m]=]

snapshots['toHaveBeenLastCalledWith works with arguments that match 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveBeenLastCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: never [32m"foo"[39m, [32m"bar"[39m

Number of calls: [31m1[39m]=]

snapshots['toHaveBeenLastCalledWith works with many arguments 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveBeenLastCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: never [32m"foo"[39m, [32m"bar"[39m
Received
       2:       [2m"foo"[22m, [31m"bar1"[39m
->     3:       [2m"foo"[22m, [31m"bar"[39m

Number of calls: [31m3[39m]=]

snapshots['toHaveBeenLastCalledWith works with many arguments that don\'t match 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveBeenLastCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: [32m"foo"[39m, [32m"bar"[39m
Received
       2: [2m"foo"[22m, [31m"bar2"[39m
->     3: [2m"foo"[22m, [31m"bar3"[39m

Number of calls: [31m3[39m]=]

-- deviation: changed undefined to false
snapshots['toHaveBeenLastCalledWith works with trailing undefined arguments 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveBeenLastCalledWith[2m([22m[32m...expected[39m[2m)[22m

Expected: [32m"foo"[39m
Received: [31m"foo"[39m, [31mfalse[39m

Number of calls: [31m1[39m]=]

snapshots['toHaveBeenNthCalledWith includes the custom mock name in the error message 1'] = [=[
[22m[32m...expected[39m[2m)[22m

n: 1
Expected: never [32m"foo"[39m, [32m"bar"[39m

Number of calls: [31m1[39m]=]

snapshots['toHaveBeenNthCalledWith negative throw matcher error for n that is not integer 1'] = [=[
[22m[32m...expected[39m[2m)[22m

[1mMatcher error[22m: n must be a positive integer

n has type:  number
n has value: inf]=]

snapshots['toHaveBeenNthCalledWith positive throw matcher error for n that is not integer 1'] = [=[
[22m[32m...expected[39m[2m)[22m

[1mMatcher error[22m: n must be a positive integer

n has type:  number
n has value: 0.1]=]

snapshots['toHaveBeenNthCalledWith positive throw matcher error for n that is not positive integer 1'] = [=[
[22m[32m...expected[39m[2m)[22m

[1mMatcher error[22m: n must be a positive integer

n has type:  number
n has value: 0]=]

snapshots['toHaveBeenNthCalledWith works only on spies or jest.fn 1'] = [=[
[22m[32m...expected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a mock or spy function

Received has type:  function
Received has value: [31m[Function anonymous][39m]=]

snapshots['toHaveBeenNthCalledWith works when not called 1'] = [=[
[22m[32m...expected[39m[2m)[22m

n: 1
Expected: [32m"foo"[39m, [32m"bar"[39m

Number of calls: [31m0[39m]=]

snapshots['toHaveBeenNthCalledWith works with Immutable.js objects 1'] = [=[
expect(jest:fn()).never.toHaveBeenNthCalledWith(n, ...expected)

n: 1
Expected: never Immutable.Map {"a": {"b": "c"}}, Immutable.Map {"a": {"b": "c"}}

Number of calls: 1]=]

snapshots['toHaveBeenNthCalledWith works with Map 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveBeenNthCalledWith[2m([22mn[2m, [22m[32m...expected[39m[2m)[22m

n: 1
Expected: never [32m{{1, 2}, {2, 1}}[39m

Number of calls: [31m1[39m]=]

snapshots['toHaveBeenNthCalledWith works with Map 2'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveBeenNthCalledWith[2m([22mn[2m, [22m[32m...expected[39m[2m)[22m

n: 1
[32m- Expected[39m
[31m+ Received[39m

[2m  Table {[22m
[2m    Table {[22m
[32m-     "a",[39m
[32m-     "b",[39m
[31m+     1,[39m
[31m+     2,[39m
[2m    },[22m
[2m    Table {[22m
[32m-     "b",[39m
[32m-     "a",[39m
[31m+     2,[39m
[31m+     1,[39m
[2m    },[22m
[2m  }[22m,

Number of calls: [31m1[39m]=]

snapshots['toHaveBeenNthCalledWith works with Set 1'] = [=[
[22m[32m...expected[39m[2m)[22m

n: 1
Expected: never [32mSet {1, 2}[39m

Number of calls: [31m1[39m]=]

snapshots['toHaveBeenNthCalledWith works with Set 2'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveBeenNthCalledWith[2m([22mn[2m, [22m[32m...expected[39m[2m)[22m

n: 1
[32m- Expected[39m
[31m+ Received[39m

[2m  Set {[22m
[32m-   3,[39m
[32m-   4,[39m
[31m+   1,[39m
[31m+   2,[39m
[2m  }[22m,

Number of calls: [31m1[39m]=]

snapshots['toHaveBeenNthCalledWith works with arguments that don\'t match 1'] = [=[
[22m[32m...expected[39m[2m)[22m

n: 1
Expected: [32m"foo"[39m, [32m"bar"[39m
Received: [2m"foo"[22m, [31m"bar1"[39m

Number of calls: [31m1[39m]=]

snapshots['toHaveBeenNthCalledWith works with arguments that match 1'] = [=[
[22m[32m...expected[39m[2m)[22m

n: 1
Expected: never [32m"foo"[39m, [32m"bar"[39m

Number of calls: [31m1[39m]=]

snapshots['toHaveBeenNthCalledWith works with three calls 1'] = [=[
[22m[32m...expected[39m[2m)[22m

n: 1
Expected: never [32m"foo1"[39m, [32m"bar"[39m
Received
->     1:       [2m"foo1"[22m, [31m"bar"[39m
       2:       [31m"foo"[39m, [31m"bar1"[39m

Number of calls: [31m3[39m]=]

-- deviation: changed undefined to false
snapshots['toHaveBeenNthCalledWith works with trailing undefined arguments 1'] = [=[
[22m[32m...expected[39m[2m)[22m

n: 1
Expected: [32m"foo"[39m
Received: [31m"foo"[39m, [31mfalse[39m

Number of calls: [31m1[39m]=]

snapshots['toHaveLastReturnedWith a call that throws is not considered to have returned 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveLastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32mnil[39m
Received: function call threw an error

Number of returns: [31m0[39m
Number of calls:   [31m1[39m]=]

snapshots['toHaveLastReturnedWith a call that throws undefined is not considered to have returned 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveLastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32mnil[39m
Received: function call threw an error

Number of returns: [31m0[39m
Number of calls:   [31m1[39m]=]

snapshots['toHaveLastReturnedWith includes the custom mock name in the error message 1'] = [=[
expect(named-mock).toHaveLastReturnedWith(expected)

Expected: "foo"

Number of returns: 0]=]

snapshots['toHaveLastReturnedWith lastReturnedWith incomplete recursive calls are handled properly 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveLastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32m0[39m
Received
       3: function call has not returned yet
->     4: function call has not returned yet

Number of returns: [31m0[39m
Number of calls:   [31m4[39m]=]

snapshots['toHaveLastReturnedWith lastReturnedWith works with three calls 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveLastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m"foo3"[39m
Received
       2:       [31m"foo2"[39m
->     3:       [2m"foo3"[22m

Number of returns: [31m3[39m]=]

snapshots['toHaveLastReturnedWith works only on spies or jest.fn 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveLastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a mock function

Received has type:  function
Received has value: [31m[Function anonymous][39m]=]

snapshots['toHaveLastReturnedWith works when not called 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveLastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32m"foo"[39m

Number of returns: [31m0[39m]=]

snapshots['toHaveLastReturnedWith works with Immutable.js objects directly created 1'] = [=[
expect(jest:fn()).never.toHaveLastReturnedWith(expected)

Expected: never Immutable.Map {"a": {"b": "c"}}

Number of returns: 1]=]

snapshots['toHaveLastReturnedWith works with Immutable.js objects indirectly created 1'] = [=[
expect(jest:fn()).never.toHaveLastReturnedWith(expected)

Expected: never Immutable.Map {"a": {"b": "c"}}

Number of returns: 1]=]

snapshots['toHaveLastReturnedWith works with Map 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveLastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m{{1, 2}, {2, 1}}[39m

Number of returns: [31m1[39m]=]

snapshots['toHaveLastReturnedWith works with Map 2'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveLastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32m{{"a", "b"}, {"b", "a"}}[39m
Received: [31m{{1, 2}, {2, 1}}[39m

Number of returns: [31m1[39m]=]

snapshots['toHaveLastReturnedWith works with Set 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveLastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32mSet {1, 2}[39m

Number of returns: [31m1[39m]=]

snapshots['toHaveLastReturnedWith works with Set 2'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveLastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32mSet {3, 4}[39m
Received: [31mSet {1, 2}[39m

Number of returns: [31m1[39m]=]

snapshots['toHaveLastReturnedWith works with argument that does match 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveLastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m"foo"[39m

Number of returns: [31m1[39m]=]

snapshots['toHaveLastReturnedWith works with argument that does not match 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveLastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32m"bar"[39m
Received: [31m"foo"[39m

Number of returns: [31m1[39m]=]

snapshots['toHaveLastReturnedWith works with undefined 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveLastReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32mnil[39m

Number of returns: [31m1[39m]=]

snapshots['toHaveNthReturnedWith a call that throws is not considered to have returned 1'] = [=[
[22m[32mexpected[39m[2m)[22m

n: 1
Expected: [32mnil[39m
Received: function call threw an error

Number of returns: [31m0[39m
Number of calls:   [31m1[39m]=]

snapshots['toHaveNthReturnedWith a call that throws undefined is not considered to have returned 1'] = [=[
[22m[32mexpected[39m[2m)[22m

n: 1
Expected: [32mnil[39m
Received: function call threw an error

Number of returns: [31m0[39m
Number of calls:   [31m1[39m]=]

snapshots['toHaveNthReturnedWith includes the custom mock name in the error message 1'] = [=[
expect(named-mock).toHaveNthReturnedWith(n, expected)

n: 1
Expected: "foo"

Number of returns: 0]=]

snapshots['toHaveNthReturnedWith nthReturnedWith incomplete recursive calls are handled properly 1'] = [=[
expect(jest:fn()).toHaveNthReturnedWith(n, expected)

n: 1
Expected: 6
Received
->     1: function call has not returned yet
       2: function call has not returned yet

Number of returns: 2
Number of calls:   4]=]

snapshots['toHaveNthReturnedWith nthReturnedWith incomplete recursive calls are handled properly 2'] = [=[
expect(jest:fn()).toHaveNthReturnedWith(n, expected)

n: 2
Expected: 3
Received
       1: function call has not returned yet
->     2: function call has not returned yet
       3: 1

Number of returns: 2
Number of calls:   4]=]

snapshots['toHaveNthReturnedWith nthReturnedWith incomplete recursive calls are handled properly 3'] = [=[
expect(jest:fn()).never.toHaveNthReturnedWith(n, expected)

n: 3
Expected: never 1
Received
       2:     function call has not returned yet
->     3:     1
       4:     0

Number of returns: 2
Number of calls:   4]=]

snapshots['toHaveNthReturnedWith nthReturnedWith incomplete recursive calls are handled properly 4'] = [=[
expect(jest:fn()).never.toHaveNthReturnedWith(n, expected)

n: 4
Expected: never 0
Received
       3:     1
->     4:     0

Number of returns: 2
Number of calls:   4]=]

snapshots['toHaveNthReturnedWith nthReturnedWith negative throw matcher error for n that is not number 1'] = [=[
[22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: n must be a positive integer

n has value: nil]=]

snapshots['toHaveNthReturnedWith nthReturnedWith positive throw matcher error for n that is not integer 1'] = [=[
[22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: n must be a positive integer

n has type:  number
n has value: 0.1]=]

snapshots['toHaveNthReturnedWith nthReturnedWith positive throw matcher error for n that is not positive integer 1'] = [=[
[22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: n must be a positive integer

n has type:  number
n has value: 0]=]

snapshots['toHaveNthReturnedWith nthReturnedWith should reject nth value greater than number of calls 1'] = [=[
[22m[32mexpected[39m[2m)[22m

n: 4
Expected: [32m"foo"[39m
Received
       3: [2m"foo"[22m

Number of returns: [31m3[39m]=]

snapshots['toHaveNthReturnedWith nthReturnedWith should replace 1st, 2nd, 3rd with first, second, third 1'] = [=[
[22m[32mexpected[39m[2m)[22m

n: 1
Expected: [32m"bar1"[39m
Received
->     1: [31m"foo1"[39m
       2: [31m"foo2"[39m

Number of returns: [31m3[39m]=]

snapshots['toHaveNthReturnedWith nthReturnedWith should replace 1st, 2nd, 3rd with first, second, third 2'] = [=[
[22m[32mexpected[39m[2m)[22m

n: 1
Expected: never [32m"foo1"[39m
Received
->     1:       [2m"foo1"[22m
       2:       [31m"foo2"[39m

Number of returns: [31m3[39m]=]

snapshots['toHaveNthReturnedWith nthReturnedWith works with three calls 1'] = [=[
[22m[32mexpected[39m[2m)[22m

n: 1
Expected: never [32m"foo1"[39m
Received
->     1:       [2m"foo1"[22m
       2:       [31m"foo2"[39m

Number of returns: [31m3[39m]=]

snapshots['toHaveNthReturnedWith works only on spies or jest.fn 1'] = [=[
[22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a mock function

Received has type:  function
Received has value: [31m[Function anonymous][39m]=]

snapshots['toHaveNthReturnedWith works when not called 1'] = [=[
[22m[32mexpected[39m[2m)[22m

n: 1
Expected: [32m"foo"[39m

Number of returns: [31m0[39m]=]

snapshots['toHaveNthReturnedWith works with Immutable.js objects directly created 1'] = [=[
expect(jest:fn()).never.toHaveNthReturnedWith(n, expected)

n: 1
Expected: never Immutable.Map {"a": {"b": "c"}}

Number of returns: 1]=]

snapshots['toHaveNthReturnedWith works with Immutable.js objects indirectly created 1'] = [=[
expect(jest:fn()).never.toHaveNthReturnedWith(n, expected)

n: 1
Expected: never Immutable.Map {"a": {"b": "c"}}

Number of returns: 1]=]

snapshots['toHaveNthReturnedWith works with Map 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveNthReturnedWith[2m([22mn[2m, [22m[32mexpected[39m[2m)[22m

n: 1
Expected: never [32m{{1, 2}, {2, 1}}[39m

Number of returns: [31m1[39m]=]

snapshots['toHaveNthReturnedWith works with Map 2'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveNthReturnedWith[2m([22mn[2m, [22m[32mexpected[39m[2m)[22m

n: 1
Expected: [32m{{"a", "b"}, {"b", "a"}}[39m
Received: [31m{{1, 2}, {2, 1}}[39m

Number of returns: [31m1[39m]=]

snapshots['toHaveNthReturnedWith works with Set 1'] = [=[
[22m[32mexpected[39m[2m)[22m

n: 1
Expected: never [32mSet {1, 2}[39m

Number of returns: [31m1[39m]=]

snapshots['toHaveNthReturnedWith works with Set 2'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveNthReturnedWith[2m([22mn[2m, [22m[32mexpected[39m[2m)[22m

n: 1
Expected: [32mSet {3, 4}[39m
Received: [31mSet {1, 2}[39m

Number of returns: [31m1[39m]=]

snapshots['toHaveNthReturnedWith works with argument that does match 1'] = [=[
[22m[32mexpected[39m[2m)[22m

n: 1
Expected: never [32m"foo"[39m

Number of returns: [31m1[39m]=]

snapshots['toHaveNthReturnedWith works with argument that does not match 1'] = [=[
[22m[32mexpected[39m[2m)[22m

n: 1
Expected: [32m"bar"[39m
Received: [31m"foo"[39m

Number of returns: [31m1[39m]=]

snapshots['toHaveNthReturnedWith works with undefined 1'] = [=[
[22m[32mexpected[39m[2m)[22m

n: 1
Expected: never [32mnil[39m

Number of returns: [31m1[39m]=]

snapshots['toHaveReturned .not fails with any argument passed 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveReturned[2m()[22m

[1mMatcher error[22m: this matcher must not have an expected argument

Expected has type:  number
Expected has value: [32m555[39m]=]

snapshots['toHaveReturned .not passes when a call throws undefined 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveReturned[2m()[22m

Expected number of returns: >= [32m1[39m
Received number of returns:    [31m0[39m
Received number of calls:      [31m1[39m]=]

snapshots['toHaveReturned .not passes when all calls throw 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveReturned[2m()[22m

Expected number of returns: >= [32m1[39m
Received number of returns:    [31m0[39m
Received number of calls:      [31m2[39m]=]

snapshots['toHaveReturned .not passes when not returned 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveReturned[2m()[22m

Expected number of returns: >= [32m1[39m
Received number of returns:    [31m0[39m]=]

snapshots['toHaveReturned .not works only on jest.fn 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveReturned[2m()[22m

[1mMatcher error[22m: [31mreceived[39m value must be a mock function

Received has type:  function
Received has value: [31m[Function anonymous][39m]=]

snapshots['toHaveReturned fails with any argument passed 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveReturned[2m()[22m

[1mMatcher error[22m: this matcher must not have an expected argument

Expected has type:  number
Expected has value: [32m555[39m]=]

snapshots['toHaveReturned includes the custom mock name in the error message 1'] = [=[
[2mexpect([22m[31mnamed-mock[39m[2m).[22mnever[2m.[22mtoHaveReturned[2m()[22m

Expected number of returns: [32m0[39m
Received number of returns: [31m1[39m

1: [31m42[39m]=]

snapshots['toHaveReturned incomplete recursive calls are handled properly 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveReturned[2m()[22m

Expected number of returns: >= [32m1[39m
Received number of returns:    [31m0[39m
Received number of calls:      [31m4[39m]=]

snapshots['toHaveReturned passes when at least one call does not throw 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveReturned[2m()[22m

Expected number of returns: [32m0[39m
Received number of returns: [31m2[39m

1: [31m42[39m
3: [31m42[39m

Received number of calls:   [31m3[39m]=]

snapshots['toHaveReturned passes when returned 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveReturned[2m()[22m

Expected number of returns: [32m0[39m
Received number of returns: [31m1[39m

1: [31m42[39m]=]

snapshots['toHaveReturned passes when undefined is returned 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveReturned[2m()[22m

Expected number of returns: [32m0[39m
Received number of returns: [31m1[39m

1: [31mnil[39m]=]

-- deviation: this snapshot is heavily changed
snapshots['toHaveReturned throw matcher error if received is spy 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveReturned[2m()[22m

[1mMatcher error[22m: [31mreceived[39m value must be a mock function

Received has type:  table
Received has value: [31m{"calls": {"all": [Function anonymous], "count": [Function anonymous]}}[39m
]=]

snapshots['toHaveReturnedTimes .not only accepts a number argument 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveReturnedTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  table
Expected has value: [32m{}[39m]=]

-- snapshots['toHaveReturnedTimes .not only accepts a number argument 2'] = [=[
-- expect(received).never.toHaveReturnedTimes(expected)

-- Matcher error: expected value must be a non-negative integer

-- Expected has type:  array
-- Expected has value: []]=]

snapshots['toHaveReturnedTimes .not only accepts a number argument 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveReturnedTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  boolean
Expected has value: [32mtrue[39m]=]

snapshots['toHaveReturnedTimes .not only accepts a number argument 3'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveReturnedTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  string
Expected has value: [32m"a"[39m]=]

-- snapshots['toHaveReturnedTimes .not only accepts a number argument 5'] = [=[
-- expect(received).never.toHaveReturnedTimes(expected)

-- Matcher error: expected value must be a non-negative integer

-- Expected has type:  map
-- Expected has value: Map {}]=]

snapshots['toHaveReturnedTimes .not only accepts a number argument 4'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveReturnedTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  function
Expected has value: [32m[Function anonymous][39m]=]

snapshots['toHaveReturnedTimes .not passes if function called less than expected times 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveReturnedTimes[2m([22m[32mexpected[39m[2m)[22m

Expected number of returns: [32m2[39m
Received number of returns: [31m1[39m]=]

snapshots['toHaveReturnedTimes .not passes if function returned more than expected times 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveReturnedTimes[2m([22m[32mexpected[39m[2m)[22m

Expected number of returns: [32m2[39m
Received number of returns: [31m3[39m]=]

snapshots['toHaveReturnedTimes calls that return undefined are counted as returns 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveReturnedTimes[2m([22m[32mexpected[39m[2m)[22m

Expected number of returns: never [32m2[39m]=]

snapshots['toHaveReturnedTimes calls that throw are not counted 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveReturnedTimes[2m([22m[32mexpected[39m[2m)[22m

Expected number of returns: [32m3[39m
Received number of returns: [31m2[39m
Received number of calls:   [31m3[39m]=]

snapshots['toHaveReturnedTimes calls that throw undefined are not counted 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveReturnedTimes[2m([22m[32mexpected[39m[2m)[22m

Expected number of returns: never [32m2[39m

Received number of calls:         [31m3[39m]=]

snapshots['toHaveReturnedTimes includes the custom mock name in the error message 1'] = [=[
[2mexpect([22m[31mnamed-mock[39m[2m).[22mtoHaveReturnedTimes[2m([22m[32mexpected[39m[2m)[22m

Expected number of returns: [32m1[39m
Received number of returns: [31m2[39m]=]

snapshots['toHaveReturnedTimes incomplete recursive calls are handled properly 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveReturnedTimes[2m([22m[32mexpected[39m[2m)[22m

Expected number of returns: never [32m2[39m

Received number of calls:         [31m4[39m]=]

snapshots['toHaveReturnedTimes only accepts a number argument 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveReturnedTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  table
Expected has value: [32m{}[39m]=]

-- snapshots['toHaveReturnedTimes only accepts a number argument 2'] = [=[
-- expect(received).toHaveReturnedTimes(expected)

-- Matcher error: expected value must be a non-negative integer

-- Expected has type:  array
-- Expected has value: []]=]

snapshots['toHaveReturnedTimes only accepts a number argument 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveReturnedTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  boolean
Expected has value: [32mtrue[39m]=]

snapshots['toHaveReturnedTimes only accepts a number argument 3'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveReturnedTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  string
Expected has value: [32m"a"[39m]=]

-- snapshots['toHaveReturnedTimes only accepts a number argument 5'] = [=[
-- expect(received).toHaveReturnedTimes(expected)

-- Matcher error: expected value must be a non-negative integer

-- Expected has type:  map
-- Expected has value: Map {}]=]

snapshots['toHaveReturnedTimes only accepts a number argument 4'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveReturnedTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  function
Expected has value: [32m[Function anonymous][39m]=]

snapshots['toHaveReturnedTimes passes if function returned equal to expected times 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveReturnedTimes[2m([22m[32mexpected[39m[2m)[22m

Expected number of returns: never [32m2[39m]=]

-- deviation: this snapshot is heavily changed
snapshots['toHaveReturnedTimes throw matcher error if received is spy 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveReturnedTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a mock function

Received has type:  table
Received has value: [31m{"calls": {"all": [Function anonymous], "count": [Function anonymous]}}[39m]=]

snapshots['toHaveReturnedWith a call that throws is not considered to have returned 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32mnil[39m
Received: function call threw an error

Number of returns: [31m0[39m
Number of calls:   [31m1[39m]=]

snapshots['toHaveReturnedWith a call that throws undefined is not considered to have returned 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32mnil[39m
Received: function call threw an error

Number of returns: [31m0[39m
Number of calls:   [31m1[39m]=]

snapshots['toHaveReturnedWith includes the custom mock name in the error message 1'] = [=[
expect(named-mock).toHaveReturnedWith(expected)

Expected: "foo"

Number of returns: 0]=]

snapshots['toHaveReturnedWith returnedWith incomplete recursive calls are handled properly 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32mnil[39m
Received
       1: function call has not returned yet
       2: function call has not returned yet
       3: function call has not returned yet

Number of returns: [31m0[39m
Number of calls:   [31m4[39m]=]

snapshots['toHaveReturnedWith returnedWith works with more calls than the limit 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32m"bar"[39m
Received
       1: [31m"foo1"[39m
       2: [31m"foo2"[39m
       3: [31m"foo3"[39m

Number of returns: [31m6[39m]=]

snapshots['toHaveReturnedWith works only on spies or jest.fn 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveReturnedWith[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a mock function

Received has type:  function
Received has value: [31m[Function anonymous][39m]=]

snapshots['toHaveReturnedWith works when not called 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32m"foo"[39m

Number of returns: [31m0[39m]=]

snapshots['toHaveReturnedWith works with Immutable.js objects directly created 1'] = [=[
expect(jest:fn()).never.toHaveReturnedWith(expected)

Expected: never Immutable.Map {"a": {"b": "c"}}

Number of returns: 1]=]

snapshots['toHaveReturnedWith works with Immutable.js objects indirectly created 1'] = [=[
expect(jest:fn()).never.toHaveReturnedWith(expected)

Expected: never Immutable.Map {"a": {"b": "c"}}

Number of returns: 1]=]

snapshots['toHaveReturnedWith works with Map 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m{{1, 2}, {2, 1}}[39m

Number of returns: [31m1[39m]=]

snapshots['toHaveReturnedWith works with Map 2'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32m{{"a", "b"}, {"b", "a"}}[39m
Received: [31m{{1, 2}, {2, 1}}[39m

Number of returns: [31m1[39m]=]

snapshots['toHaveReturnedWith works with Set 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32mSet {1, 2}[39m

Number of returns: [31m1[39m]=]

snapshots['toHaveReturnedWith works with Set 2'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32mSet {3, 4}[39m
Received: [31mSet {1, 2}[39m

Number of returns: [31m1[39m]=]

snapshots['toHaveReturnedWith works with argument that does match 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m"foo"[39m

Number of returns: [31m1[39m]=]

snapshots['toHaveReturnedWith works with argument that does not match 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoHaveReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32m"bar"[39m
Received: [31m"foo"[39m

Number of returns: [31m1[39m]=]

snapshots['toHaveReturnedWith works with undefined 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoHaveReturnedWith[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32mnil[39m

Number of returns: [31m1[39m]=]

snapshots['toReturn .not fails with any argument passed 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoReturn[2m()[22m

[1mMatcher error[22m: this matcher must not have an expected argument

Expected has type:  number
Expected has value: [32m555[39m]=]

snapshots['toReturn .not passes when a call throws undefined 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoReturn[2m()[22m

Expected number of returns: >= [32m1[39m
Received number of returns:    [31m0[39m
Received number of calls:      [31m1[39m]=]

snapshots['toReturn .not passes when all calls throw 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoReturn[2m()[22m

Expected number of returns: >= [32m1[39m
Received number of returns:    [31m0[39m
Received number of calls:      [31m2[39m]=]

snapshots['toReturn .not passes when not returned 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoReturn[2m()[22m

Expected number of returns: >= [32m1[39m
Received number of returns:    [31m0[39m]=]

snapshots['toReturn .not works only on jest.fn 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoReturn[2m()[22m

[1mMatcher error[22m: [31mreceived[39m value must be a mock function

Received has type:  function
Received has value: [31m[Function anonymous][39m]=]

snapshots['toReturn fails with any argument passed 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoReturn[2m()[22m

[1mMatcher error[22m: this matcher must not have an expected argument

Expected has type:  number
Expected has value: [32m555[39m]=]

snapshots['toReturn includes the custom mock name in the error message 1'] = [=[
[2mexpect([22m[31mnamed-mock[39m[2m).[22mnever[2m.[22mtoReturn[2m()[22m

Expected number of returns: [32m0[39m
Received number of returns: [31m1[39m

1: [31m42[39m]=]

snapshots['toReturn incomplete recursive calls are handled properly 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoReturn[2m()[22m

Expected number of returns: >= [32m1[39m
Received number of returns:    [31m0[39m
Received number of calls:      [31m4[39m]=]

snapshots['toReturn passes when at least one call does not throw 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoReturn[2m()[22m

Expected number of returns: [32m0[39m
Received number of returns: [31m2[39m

1: [31m42[39m
3: [31m42[39m

Received number of calls:   [31m3[39m]=]

snapshots['toReturn passes when returned 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoReturn[2m()[22m

Expected number of returns: [32m0[39m
Received number of returns: [31m1[39m

1: [31m42[39m]=]

snapshots['toReturn passes when undefined is returned 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoReturn[2m()[22m

Expected number of returns: [32m0[39m
Received number of returns: [31m1[39m

1: [31mnil[39m]=]

-- deviation: this snapshot is heavily changed
snapshots['toReturn throw matcher error if received is spy 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoReturn[2m()[22m

[1mMatcher error[22m: [31mreceived[39m value must be a mock function

Received has type:  table
Received has value: [31m{"calls": {"all": [Function anonymous], "count": [Function anonymous]}}[39m]=]

snapshots['toReturnTimes .not only accepts a number argument 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoReturnTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  table
Expected has value: [32m{}[39m]=]

-- snapshots['toReturnTimes .not only accepts a number argument 2'] = [=[
-- expect(received).never.toReturnTimes(expected)

-- Matcher error: expected value must be a non-negative integer

-- Expected has type:  array
-- Expected has value: []]=]

snapshots['toReturnTimes .not only accepts a number argument 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoReturnTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  boolean
Expected has value: [32mtrue[39m]=]

snapshots['toReturnTimes .not only accepts a number argument 3'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoReturnTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  string
Expected has value: [32m"a"[39m]=]

-- snapshots['toReturnTimes .not only accepts a number argument 5'] = [=[
-- expect(received).never.toReturnTimes(expected)

-- Matcher error: expected value must be a non-negative integer

-- Expected has type:  map
-- Expected has value: Map {}]=]

snapshots['toReturnTimes .not only accepts a number argument 4'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoReturnTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  function
Expected has value: [32m[Function anonymous][39m]=]

snapshots['toReturnTimes .not passes if function called less than expected times 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoReturnTimes[2m([22m[32mexpected[39m[2m)[22m

Expected number of returns: [32m2[39m
Received number of returns: [31m1[39m]=]

snapshots['toReturnTimes .not passes if function returned more than expected times 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoReturnTimes[2m([22m[32mexpected[39m[2m)[22m

Expected number of returns: [32m2[39m
Received number of returns: [31m3[39m]=]

snapshots['toReturnTimes calls that return undefined are counted as returns 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoReturnTimes[2m([22m[32mexpected[39m[2m)[22m

Expected number of returns: never [32m2[39m]=]

snapshots['toReturnTimes calls that throw are not counted 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoReturnTimes[2m([22m[32mexpected[39m[2m)[22m

Expected number of returns: [32m3[39m
Received number of returns: [31m2[39m
Received number of calls:   [31m3[39m]=]

snapshots['toReturnTimes calls that throw undefined are not counted 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoReturnTimes[2m([22m[32mexpected[39m[2m)[22m

Expected number of returns: never [32m2[39m

Received number of calls:         [31m3[39m]=]

snapshots['toReturnTimes includes the custom mock name in the error message 1'] = [=[
[2mexpect([22m[31mnamed-mock[39m[2m).[22mtoReturnTimes[2m([22m[32mexpected[39m[2m)[22m

Expected number of returns: [32m1[39m
Received number of returns: [31m2[39m]=]

snapshots['toReturnTimes incomplete recursive calls are handled properly 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoReturnTimes[2m([22m[32mexpected[39m[2m)[22m

Expected number of returns: never [32m2[39m

Received number of calls:         [31m4[39m]=]

snapshots['toReturnTimes only accepts a number argument 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoReturnTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  table
Expected has value: [32m{}[39m]=]

-- snapshots['toReturnTimes only accepts a number argument 2'] = [=[
-- expect(received).toReturnTimes(expected)

-- Matcher error: expected value must be a non-negative integer

-- Expected has type:  array
-- Expected has value: []]=]

snapshots['toReturnTimes only accepts a number argument 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoReturnTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  boolean
Expected has value: [32mtrue[39m]=]

snapshots['toReturnTimes only accepts a number argument 3'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoReturnTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  string
Expected has value: [32m"a"[39m]=]

-- snapshots['toReturnTimes only accepts a number argument 5'] = [=[
-- expect(received).toReturnTimes(expected)

-- Matcher error: expected value must be a non-negative integer

-- Expected has type:  map
-- Expected has value: Map {}]=]

snapshots['toReturnTimes only accepts a number argument 4'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoReturnTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  function
Expected has value: [32m[Function anonymous][39m]=]

snapshots['toReturnTimes passes if function returned equal to expected times 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoReturnTimes[2m([22m[32mexpected[39m[2m)[22m

Expected number of returns: never [32m2[39m]=]

-- deviation: this snapshot is heavily changed
snapshots['toReturnTimes throw matcher error if received is spy 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoReturnTimes[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a mock function

Received has type:  table
Received has value: [31m{"calls": {"all": [Function anonymous], "count": [Function anonymous]}}[39m]=]

snapshots['toReturnWith a call that throws is not considered to have returned 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoReturnWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32mnil[39m
Received: function call threw an error

Number of returns: [31m0[39m
Number of calls:   [31m1[39m]=]

snapshots['toReturnWith a call that throws undefined is not considered to have returned 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoReturnWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32mnil[39m
Received: function call threw an error

Number of returns: [31m0[39m
Number of calls:   [31m1[39m]=]

snapshots['toReturnWith includes the custom mock name in the error message 1'] = [=[
expect(named-mock).toReturnWith(expected)

Expected: "foo"

Number of returns: 0]=]

snapshots['toReturnWith returnedWith incomplete recursive calls are handled properly 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoReturnWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32mnil[39m
Received
       1: function call has not returned yet
       2: function call has not returned yet
       3: function call has not returned yet

Number of returns: [31m0[39m
Number of calls:   [31m4[39m]=]

snapshots['toReturnWith returnedWith works with more calls than the limit 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoReturnWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32m"bar"[39m
Received
       1: [31m"foo1"[39m
       2: [31m"foo2"[39m
       3: [31m"foo3"[39m

Number of returns: [31m6[39m]=]

snapshots['toReturnWith works only on spies or jest.fn 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoReturnWith[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a mock function

Received has type:  function
Received has value: [31m[Function anonymous][39m]=]

snapshots['toReturnWith works when not called 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoReturnWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32m"foo"[39m

Number of returns: [31m0[39m]=]

snapshots['toReturnWith works with Immutable.js objects directly created 1'] = [=[
expect(jest:fn()).never.toReturnWith(expected)

Expected: never Immutable.Map {"a": {"b": "c"}}

Number of returns: 1]=]

snapshots['toReturnWith works with Immutable.js objects indirectly created 1'] = [=[
expect(jest:fn()).never.toReturnWith(expected)

Expected: never Immutable.Map {"a": {"b": "c"}}

Number of returns: 1]=]

snapshots['toReturnWith works with Map 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoReturnWith[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m{{1, 2}, {2, 1}}[39m

Number of returns: [31m1[39m]=]

snapshots['toReturnWith works with Map 2'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoReturnWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32m{{"a", "b"}, {"b", "a"}}[39m
Received: [31m{{1, 2}, {2, 1}}[39m

Number of returns: [31m1[39m]=]
snapshots['toReturnWith works with Set 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoReturnWith[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32mSet {1, 2}[39m

Number of returns: [31m1[39m]=]

snapshots['toReturnWith works with Set 2'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoReturnWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32mSet {3, 4}[39m
Received: [31mSet {1, 2}[39m

Number of returns: [31m1[39m]=]

snapshots['toReturnWith works with argument that does match 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoReturnWith[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m"foo"[39m

Number of returns: [31m1[39m]=]

snapshots['toReturnWith works with argument that does not match 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mtoReturnWith[2m([22m[32mexpected[39m[2m)[22m

Expected: [32m"bar"[39m
Received: [31m"foo"[39m

Number of returns: [31m1[39m]=]

snapshots['toReturnWith works with undefined 1'] = [=[
[2mexpect([22m[31mjest:fn()[39m[2m).[22mnever[2m.[22mtoReturnWith[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32mnil[39m

Number of returns: [31m1[39m]=]

return snapshots