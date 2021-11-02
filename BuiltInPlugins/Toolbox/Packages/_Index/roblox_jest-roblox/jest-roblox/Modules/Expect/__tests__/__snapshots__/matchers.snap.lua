-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/expect/src/__tests__/__snapshots__/matchers.test.js.snap

--[[
  deviation: We changed output from If it should pass with deep equality, replace "toBe" with "toEqual"
  to say toEqual instead of toStrictEqual since strict equality isn't currently any different from our
  definition of regular deep equality.
  deviation: Console output formatting is stripped from the snapshots.
]]
local snapshots = {}

snapshots['.toBe() does not crash on circular references 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBe[2m([22m[32mexpected[39m[2m) -- shallow equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 3[39m

[32m- Table {}[39m
[31m+ Table {[39m
[31m+   "circular": [Circular],[39m
[31m+ }[39m]=]

snapshots['.toBe() fails for "a" with .never 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBe[2m([22m[32mexpected[39m[2m) -- shallow equality[22m

Expected: never [32m"a"[39m]=]

snapshots['.toBe() fails for {} with .never 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBe[2m([22m[32mexpected[39m[2m) -- shallow equality[22m

Expected: never [32m{}[39m]=]

snapshots['.toBe() fails for 1 with .never 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBe[2m([22m[32mexpected[39m[2m) -- shallow equality[22m

Expected: never [32m1[39m]=]

snapshots['.toBe() fails for false with .never 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBe[2m([22m[32mexpected[39m[2m) -- shallow equality[22m

Expected: never [32mfalse[39m]=]

snapshots['.toBe() fails for nil with .never 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBe[2m([22m[32mexpected[39m[2m) -- shallow equality[22m

Expected: never [32mnil[39m]=]

snapshots['.toBe() fails for: "" and "compare one-line string to empty string" 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBe[2m([22m[32mexpected[39m[2m) -- shallow equality[22m

Expected: [32m"compare one-line string to empty string"[39m
Received: [31m""[39m]=]

snapshots['.toBe() fails for: "abc" and "cde" 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBe[2m([22m[32mexpected[39m[2m) -- shallow equality[22m

Expected: [32m"cde"[39m
Received: [31m"abc"[39m]=]

snapshots['.toBe() fails for: "four\n4\nline\nstring" and "3\nline\nstring" 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBe[2m([22m[32mexpected[39m[2m) -- shallow equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 2[39m

[32m- 3[39m
[31m+ four[39m
[31m+ 4[39m
[2m  line[22m
[2m  string[22m]=]

snapshots['.toBe() fails for: "painless JavaScript testing" and "delightful JavaScript testing" 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBe[2m([22m[32mexpected[39m[2m) -- shallow equality[22m

Expected: [32m"[7mdelightful[27m JavaScript testing"[39m
Received: [31m"[7mpainless[27m JavaScript testing"[39m]=]

snapshots['.toBe() fails for: "with \ntrailing space" and "without trailing space" 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBe[2m([22m[32mexpected[39m[2m) -- shallow equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 2[39m

[32m- with[7mout[27m trailing space[39m
[31m+ with[43m [49m[39m
[31m+ trailing space[39m]=]

-- deviation: changed from regex to string
snapshots['.toBe() fails for: "received" and "expected" 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBe[2m([22m[32mexpected[39m[2m) -- shallow equality[22m

Expected: [32m"[7mexpect[27med"[39m
Received: [31m"[7mreceiv[27med"[39m]=]

snapshots['.toBe() fails for: [Function anonymous] and [Function anonymous] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBe[2m([22m[32mexpected[39m[2m) -- shallow equality[22m

Expected: [32m[Function anonymous][39m
Received: serializes to the same string]=]

--deviation: changed from a to anonymous
snapshots['.toBe() fails for: {"a": [Function anonymous], "b": 2} and {"a": Any<function>, "b": 2} 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBe[2m([22m[32mexpected[39m[2m) -- shallow equality[22m

[2mIf it should pass with deep equality, replace "toBe" with "toEqual"[22m

Expected: [32m{"a": Any<function>, "b": 2}[39m
Received: [31m{"a": [Function anonymous], "b": 2}[39m]=]

snapshots['.toBe() fails for: {"a": 1} and {"a": 1} 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBe[2m([22m[32mexpected[39m[2m) -- shallow equality[22m

[2mIf it should pass with deep equality, replace "toBe" with "toEqual"[22m

Expected: [32m{"a": 1}[39m
Received: serializes to the same string]=]

snapshots['.toBe() fails for: {"a": 1} and {"a": 5} 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBe[2m([22m[32mexpected[39m[2m) -- shallow equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[32m-   "a": 5,[39m
[31m+   "a": 1,[39m
[2m  }[22m]=]

-- deviation: changed from nil to false and therefore removed the line about
-- replacing toBe with toEqual
snapshots['.toBe() fails for: {"a": false, "b": 2} and {"b": 2} 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBe[2m([22m[32mexpected[39m[2m) -- shallow equality[22m

[32m- Expected  - 0[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[31m+   "a": false,[39m
[2m    "b": 2,[22m
[2m  }[22m]=]

snapshots['.toBe() fails for: {} and {} 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBe[2m([22m[32mexpected[39m[2m) -- shallow equality[22m

[2mIf it should pass with deep equality, replace "toBe" with "toEqual"[22m

Expected: [32m{}[39m
Received: serializes to the same string]=]

-- deviation: changed from -0 and 0 to -inf and inf
snapshots['.toBe() fails for: -inf and inf 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBe[2m([22m[32mexpected[39m[2m) -- shallow equality[22m

Expected: [32minf[39m
Received: [31m-inf[39m]=]

snapshots['.toBe() fails for: 1 and 2 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBe[2m([22m[32mexpected[39m[2m) -- shallow equality[22m

Expected: [32m2[39m
Received: [31m1[39m]=]

snapshots['.toBe() fails for: 2020-02-21T00:00:00.000Z and 2020-02-20T00:00:00.000Z 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBe[2m([22m[32mexpected[39m[2m) -- shallow equality[22m

Expected: [32m2020-02-20T00:00:00.000Z[39m
Received: [31m2020-02-21T00:00:00.000Z[39m]=]

snapshots['.toBe() fails for: Symbol(received) and Symbol(expected) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBe[2m([22m[32mexpected[39m[2m) -- shallow equality[22m

Expected: [32mSymbol(expected)[39m
Received: [31mSymbol(received)[39m]=]

snapshots['.toBe() fails for: true and false 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBe[2m([22m[32mexpected[39m[2m) -- shallow equality[22m

Expected: [32mfalse[39m
Received: [31mtrue[39m]=]

snapshots['.toBeCloseTo {pass: false} expect(-inf).toBeCloseTo(-1.23) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m)[22m

Expected: [32m-1.23[39m
Received: [31m-inf[39m

Expected precision:    2
Expected difference: < [32m0.005[39m
Received difference:   [31minf[39m]=]

snapshots['.toBeCloseTo {pass: false} expect(0).toBeCloseTo(0.01) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m)[22m

Expected: [32m0.01[39m
Received: [31m0[39m

Expected precision:    2
Expected difference: < [32m0.005[39m
Received difference:   [31m0.01[39m]=]

snapshots['.toBeCloseTo {pass: false} expect(1).toBeCloseTo(1.23) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m)[22m

Expected: [32m1.23[39m
Received: [31m1[39m

Expected precision:    2
Expected difference: < [32m0.005[39m
Received difference:   [31m0.23[39m]=]

snapshots['.toBeCloseTo {pass: false} expect(1.23).toBeCloseTo(1.2249999) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m)[22m

Expected: [32m1.2249999[39m
Received: [31m1.23[39m

Expected precision:    2
Expected difference: < [32m0.005[39m
Received difference:   [31m0.0050001[39m]=]

snapshots['.toBeCloseTo {pass: false} expect(inf).toBeCloseTo(-inf) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m)[22m

Expected: [32m-inf[39m
Received: [31minf[39m

Expected precision:    2
Expected difference: < [32m0.005[39m
Received difference:   [31minf[39m]=]

snapshots['.toBeCloseTo {pass: false} expect(inf).toBeCloseTo(1.23) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m)[22m

Expected: [32m1.23[39m
Received: [31minf[39m

Expected precision:    2
Expected difference: < [32m0.005[39m
Received difference:   [31minf[39m]=]

snapshots['.toBeCloseTo {pass: true} expect(-inf).toBeCloseTo(-inf) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m-inf[39m]=]

snapshots['.toBeCloseTo {pass: true} expect(0).toBeCloseTo(0) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m0[39m]=]

-- deviation: upstream's printing of the expected value is 0.000004 but Lua
-- prints such a value in exponential format by default so we follow the convention
snapshots['.toBeCloseTo {pass: true} expect(0).toBeCloseTo(4e-06, 5) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m, [22mprecision[2m)[22m

Expected: never [32m4e-06[39m
Received:       [31m0[39m

Expected precision:          5
Expected difference: never < [32m5e-6[39m
Received difference:         [31m4e-6[39m]=]

snapshots['.toBeCloseTo {pass: true} expect(0).toBeCloseTo(0.0001, 3) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m, [22mprecision[2m)[22m

Expected: never [32m0.0001[39m
Received:       [31m0[39m

Expected precision:          3
Expected difference: never < [32m0.0005[39m
Received difference:         [31m0.0001[39m]=]

snapshots['.toBeCloseTo {pass: true} expect(0).toBeCloseTo(0.001) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m0.001[39m
Received:       [31m0[39m

Expected precision:          2
Expected difference: never < [32m0.005[39m
Received difference:         [31m0.001[39m]=]

snapshots['.toBeCloseTo {pass: true} expect(0).toBeCloseTo(0.1, 0) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m, [22mprecision[2m)[22m

Expected: never [32m0.1[39m
Received:       [31m0[39m

Expected precision:          0
Expected difference: never < [32m0.5[39m
Received difference:         [31m0.1[39m]=]

snapshots['.toBeCloseTo {pass: true} expect(1.23).toBeCloseTo(1.225) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m1.225[39m
Received:       [31m1.23[39m

Expected precision:          2
Expected difference: never < [32m0.005[39m
Received difference:         [31m0.0049999999999999[39m]=]

snapshots['.toBeCloseTo {pass: true} expect(1.23).toBeCloseTo(1.226) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m1.226[39m
Received:       [31m1.23[39m

Expected precision:          2
Expected difference: never < [32m0.005[39m
Received difference:         [31m0.004[39m]=]

snapshots['.toBeCloseTo {pass: true} expect(1.23).toBeCloseTo(1.229) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m1.229[39m
Received:       [31m1.23[39m

Expected precision:          2
Expected difference: never < [32m0.005[39m
Received difference:         [31m0.00099999999999989[39m]=]

snapshots['.toBeCloseTo {pass: true} expect(1.23).toBeCloseTo(1.234) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m1.234[39m
Received:       [31m1.23[39m

Expected precision:          2
Expected difference: never < [32m0.005[39m
Received difference:         [31m0.004[39m]=]

snapshots['.toBeCloseTo {pass: true} expect(2.0000002).toBeCloseTo(2, 5) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m, [22mprecision[2m)[22m

Expected: never [32m2[39m
Received:       [31m2.0000002[39m

Expected precision:          5
Expected difference: never < [32m5e-6[39m
Received difference:         [31m2.0000000011677e-7[39m]=]

snapshots['.toBeCloseTo {pass: true} expect(inf).toBeCloseTo(inf) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32minf[39m]=]

snapshots['.toBeCloseTo throws: Matcher error promise empty isNot false received 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m, [22mprecision[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a number

Received has type:  string
Received has value: [31m""[39m]=]

snapshots['.toBeCloseTo throws: Matcher error promise empty isNot true expected 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a number

Expected has value: [32mnil[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() equal numbers: [-inf, -inf] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeGreaterThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: never >= [32m-inf[39m
Received:          [31m-inf[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() equal numbers: [-inf, -inf] 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeLessThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: never <= [32m-inf[39m
Received:          [31m-inf[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() equal numbers: [1, 1] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeGreaterThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: never >= [32m1[39m
Received:          [31m1[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() equal numbers: [1, 1] 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeLessThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: never <= [32m1[39m
Received:          [31m1[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() equal numbers: [9.007199254741e+15, 9.007199254741e+15] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeGreaterThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: never >= [32m9.007199254741e+15[39m
Received:          [31m9.007199254741e+15[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() equal numbers: [9.007199254741e+15, 9.007199254741e+15] 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeLessThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: never <= [32m9.007199254741e+15[39m
Received:          [31m9.007199254741e+15[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() equal numbers: [-9.007199254741e+15, -9.007199254741e+15] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeGreaterThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: never >= [32m-9.007199254741e+15[39m
Received:          [31m-9.007199254741e+15[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() equal numbers: [-9.007199254741e+15, -9.007199254741e+15] 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeLessThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: never <= [32m-9.007199254741e+15[39m
Received:          [31m-9.007199254741e+15[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() equal numbers: [inf, inf] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeGreaterThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: never >= [32minf[39m
Received:          [31minf[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() equal numbers: [inf, inf] 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeLessThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: never <= [32minf[39m
Received:          [31minf[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [-inf, inf] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeGreaterThan[2m([22m[32mexpected[39m[2m)[22m

Expected: > [32minf[39m
Received:   [31m-inf[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [-inf, inf] 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeLessThan[2m([22m[32mexpected[39m[2m)[22m

Expected: never < [32minf[39m
Received:         [31m-inf[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [-inf, inf] 3'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeGreaterThan[2m([22m[32mexpected[39m[2m)[22m

Expected: never > [32m-inf[39m
Received:         [31minf[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [-inf, inf] 4'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeLessThan[2m([22m[32mexpected[39m[2m)[22m

Expected: < [32m-inf[39m
Received:   [31minf[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [-inf, inf] 5'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeGreaterThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: >= [32minf[39m
Received:    [31m-inf[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [-inf, inf] 6'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeLessThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: never <= [32minf[39m
Received:          [31m-inf[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [-inf, inf] 7'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeGreaterThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: never >= [32m-inf[39m
Received:          [31minf[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [-inf, inf] 8'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeLessThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: <= [32m-inf[39m
Received:    [31minf[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [0.1, 0.2] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeGreaterThan[2m([22m[32mexpected[39m[2m)[22m

Expected: > [32m0.2[39m
Received:   [31m0.1[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [0.1, 0.2] 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeLessThan[2m([22m[32mexpected[39m[2m)[22m

Expected: never < [32m0.2[39m
Received:         [31m0.1[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [0.1, 0.2] 3'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeGreaterThan[2m([22m[32mexpected[39m[2m)[22m

Expected: never > [32m0.1[39m
Received:         [31m0.2[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [0.1, 0.2] 4'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeLessThan[2m([22m[32mexpected[39m[2m)[22m

Expected: < [32m0.1[39m
Received:   [31m0.2[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [0.1, 0.2] 5'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeGreaterThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: >= [32m0.2[39m
Received:    [31m0.1[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [0.1, 0.2] 6'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeLessThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: never <= [32m0.2[39m
Received:          [31m0.1[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [0.1, 0.2] 7'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeGreaterThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: never >= [32m0.1[39m
Received:          [31m0.2[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [0.1, 0.2] 8'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeLessThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: <= [32m0.1[39m
Received:    [31m0.2[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [1, 2] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeGreaterThan[2m([22m[32mexpected[39m[2m)[22m

Expected: > [32m2[39m
Received:   [31m1[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [1, 2] 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeLessThan[2m([22m[32mexpected[39m[2m)[22m

Expected: never < [32m2[39m
Received:         [31m1[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [1, 2] 3'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeGreaterThan[2m([22m[32mexpected[39m[2m)[22m

Expected: never > [32m1[39m
Received:         [31m2[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [1, 2] 4'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeLessThan[2m([22m[32mexpected[39m[2m)[22m

Expected: < [32m1[39m
Received:   [31m2[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [1, 2] 5'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeGreaterThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: >= [32m2[39m
Received:    [31m1[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [1, 2] 6'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeLessThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: never <= [32m2[39m
Received:          [31m1[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [1, 2] 7'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeGreaterThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: never >= [32m1[39m
Received:          [31m2[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [1, 2] 8'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeLessThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: <= [32m1[39m
Received:    [31m2[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [3, 7] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeGreaterThan[2m([22m[32mexpected[39m[2m)[22m

Expected: > [32m7[39m
Received:   [31m3[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [3, 7] 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeLessThan[2m([22m[32mexpected[39m[2m)[22m

Expected: never < [32m7[39m
Received:         [31m3[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [3, 7] 3'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeGreaterThan[2m([22m[32mexpected[39m[2m)[22m

Expected: never > [32m3[39m
Received:         [31m7[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [3, 7] 4'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeLessThan[2m([22m[32mexpected[39m[2m)[22m

Expected: < [32m3[39m
Received:   [31m7[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [3, 7] 5'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeGreaterThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: >= [32m7[39m
Received:    [31m3[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [3, 7] 6'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeLessThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: never <= [32m7[39m
Received:          [31m3[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [3, 7] 7'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeGreaterThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: never >= [32m3[39m
Received:          [31m7[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [3, 7] 8'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeLessThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: <= [32m3[39m
Received:    [31m7[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [-9.007199254741e+15, 9.007199254741e+15] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeGreaterThan[2m([22m[32mexpected[39m[2m)[22m

Expected: > [32m9.007199254741e+15[39m
Received:   [31m-9.007199254741e+15[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [-9.007199254741e+15, 9.007199254741e+15] 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeLessThan[2m([22m[32mexpected[39m[2m)[22m

Expected: never < [32m9.007199254741e+15[39m
Received:         [31m-9.007199254741e+15[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [-9.007199254741e+15, 9.007199254741e+15] 3'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeGreaterThan[2m([22m[32mexpected[39m[2m)[22m

Expected: never > [32m-9.007199254741e+15[39m
Received:         [31m9.007199254741e+15[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [-9.007199254741e+15, 9.007199254741e+15] 4'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeLessThan[2m([22m[32mexpected[39m[2m)[22m

Expected: < [32m-9.007199254741e+15[39m
Received:   [31m9.007199254741e+15[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [-9.007199254741e+15, 9.007199254741e+15] 5'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeGreaterThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: >= [32m9.007199254741e+15[39m
Received:    [31m-9.007199254741e+15[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [-9.007199254741e+15, 9.007199254741e+15] 6'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeLessThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: never <= [32m9.007199254741e+15[39m
Received:          [31m-9.007199254741e+15[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [-9.007199254741e+15, 9.007199254741e+15] 7'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeGreaterThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: never >= [32m-9.007199254741e+15[39m
Received:          [31m9.007199254741e+15[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [-9.007199254741e+15, 9.007199254741e+15] 8'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeLessThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: <= [32m-9.007199254741e+15[39m
Received:    [31m9.007199254741e+15[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [9, 18] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeGreaterThan[2m([22m[32mexpected[39m[2m)[22m

Expected: > [32m18[39m
Received:   [31m9[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [9, 18] 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeLessThan[2m([22m[32mexpected[39m[2m)[22m

Expected: never < [32m18[39m
Received:         [31m9[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [9, 18] 3'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeGreaterThan[2m([22m[32mexpected[39m[2m)[22m

Expected: never > [32m9[39m
Received:         [31m18[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [9, 18] 4'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeLessThan[2m([22m[32mexpected[39m[2m)[22m

Expected: < [32m9[39m
Received:   [31m18[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [9, 18] 5'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeGreaterThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: >= [32m18[39m
Received:    [31m9[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [9, 18] 6'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeLessThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: never <= [32m18[39m
Received:          [31m9[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [9, 18] 7'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeGreaterThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: never >= [32m9[39m
Received:          [31m18[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [9, 18] 8'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeLessThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: <= [32m9[39m
Received:    [31m18[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [17, 34] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeGreaterThan[2m([22m[32mexpected[39m[2m)[22m

Expected: > [32m34[39m
Received:   [31m17[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [17, 34] 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeLessThan[2m([22m[32mexpected[39m[2m)[22m

Expected: never < [32m34[39m
Received:         [31m17[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [17, 34] 3'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeGreaterThan[2m([22m[32mexpected[39m[2m)[22m

Expected: never > [32m17[39m
Received:         [31m34[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [17, 34] 4'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeLessThan[2m([22m[32mexpected[39m[2m)[22m

Expected: < [32m17[39m
Received:   [31m34[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [17, 34] 5'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeGreaterThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: >= [32m34[39m
Received:    [31m17[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [17, 34] 6'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeLessThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: never <= [32m34[39m
Received:          [31m17[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [17, 34] 7'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeGreaterThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: never >= [32m17[39m
Received:          [31m34[39m]=]

snapshots['.toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [17, 34] 8'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeLessThanOrEqual[2m([22m[32mexpected[39m[2m)[22m

Expected: <= [32m17[39m
Received:    [31m34[39m]=]

snapshots['.toBeNan() {pass: true} expect(nan).toBeNan() 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeNan[2m()[22m

Received: [31mnan[39m]=]

snapshots['.toBeNan() {pass: true} expect(nan).toBeNan() 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeNan[2m()[22m

Received: [31mnan[39m]=]

snapshots['.toBeNan() {pass: true} expect(nan).toBeNan() 3'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeNan[2m()[22m

Received: [31mnan[39m]=]

snapshots['.toBeNan() throws 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeNan[2m()[22m

Received: [31m1[39m]=]

snapshots['.toBeNan() throws 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeNan[2m()[22m

Received: [31m""[39m]=]

snapshots['.toBeNan() throws 3'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeNan[2m()[22m

Received: [31m{}[39m]=]

snapshots['.toBeNan() throws 4'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeNan[2m()[22m

Received: [31m0.2[39m]=]

snapshots['.toBeNan() throws 5'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeNan[2m()[22m

Received: [31m0[39m]=]

snapshots['.toBeNan() throws 6'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeNan[2m()[22m

Received: [31minf[39m]=]

snapshots['.toBeNan() throws 7'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeNan[2m()[22m

Received: [31m-inf[39m]=]

snapshots['.toBeNil() fails for "a" 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeNil[2m()[22m

Received: [31m"a"[39m]=]

snapshots['.toBeNil() fails for [Function anonymous] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeNil[2m()[22m

Received: [31m[Function anonymous][39m]=]

snapshots['.toBeNil() fails for {} 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeNil[2m()[22m

Received: [31m{}[39m]=]

snapshots['.toBeNil() fails for 0.5 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeNil[2m()[22m

Received: [31m0.5[39m]=]

snapshots['.toBeNil() fails for 1 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeNil[2m()[22m

Received: [31m1[39m]=]

snapshots['.toBeNil() fails for inf 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeNil[2m()[22m

Received: [31minf[39m]=]

snapshots['.toBeNil() fails for true 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeNil[2m()[22m

Received: [31mtrue[39m]=]

snapshots['.toBeNil() fails for nil with .never 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeNil[2m()[22m

Received: [31mnil[39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() "" is truthy 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeTruthy[2m()[22m

Received: [31m""[39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() "" is truthy 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeFalsy[2m()[22m

Received: [31m""[39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() "a" is truthy 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeTruthy[2m()[22m

Received: [31m"a"[39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() "a" is truthy 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeFalsy[2m()[22m

Received: [31m"a"[39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() [Function anonymous] is truthy 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeTruthy[2m()[22m

Received: [31m[Function anonymous][39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() [Function anonymous] is truthy 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeFalsy[2m()[22m

Received: [31m[Function anonymous][39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() {} is truthy 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeTruthy[2m()[22m

Received: [31m{}[39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() {} is truthy 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeFalsy[2m()[22m

Received: [31m{}[39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() 0 is truthy 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeTruthy[2m()[22m

Received: [31m0[39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() 0 is truthy 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeFalsy[2m()[22m

Received: [31m0[39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() 0.5 is truthy 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeTruthy[2m()[22m

Received: [31m0.5[39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() 0.5 is truthy 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeFalsy[2m()[22m

Received: [31m0.5[39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() 1 is truthy 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeTruthy[2m()[22m

Received: [31m1[39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() 1 is truthy 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeFalsy[2m()[22m

Received: [31m1[39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() inf is truthy 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeTruthy[2m()[22m

Received: [31minf[39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() inf is truthy 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeFalsy[2m()[22m

Received: [31minf[39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() nan is truthy 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeTruthy[2m()[22m

Received: [31mnan[39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() nan is truthy 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeFalsy[2m()[22m

Received: [31mnan[39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() false is falsy 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeTruthy[2m()[22m

Received: [31mfalse[39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() false is falsy 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeFalsy[2m()[22m

Received: [31mfalse[39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() true is truthy 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeTruthy[2m()[22m

Received: [31mtrue[39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() true is truthy 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeFalsy[2m()[22m

Received: [31mtrue[39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() nil is falsy 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeTruthy[2m()[22m

Received: [31mnil[39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() nil is falsy 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeFalsy[2m()[22m

Received: [31mnil[39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() does not accept arguments 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeTruthy[2m()[22m

[1mMatcher error[22m: this matcher must not have an expected argument

Expected has type:  number
Expected has value: [32m1[39m]=]

snapshots['.toBeTruthy(), .toBeFalsy() does not accept arguments 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeFalsy[2m()[22m

[1mMatcher error[22m: this matcher must not have an expected argument

Expected has type:  number
Expected has value: [32m1[39m]=]

snapshots['.toContain(), .toContainEqual() "11112111" contains "2" 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoContain[2m([22m[32mexpected[39m[2m) -- string.find or table.find[22m

Expected substring: never [32m"2"[39m
Received string:          [31m"1111[39m[7m2[27m[31m111[39m"]=]

snapshots['.toContain(), .toContainEqual() "abcdef" contains "abc" 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoContain[2m([22m[32mexpected[39m[2m) -- string.find or table.find[22m

Expected substring: never [32m"abc"[39m
Received string:          [31m"[39m[7mabc[27m[31mdef[39m"]=]

snapshots['.toContain(), .toContainEqual() {"a", "b", "c", "d"} contains "a" 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoContain[2m([22m[32mexpected[39m[2m) -- string.find or table.find[22m

Expected value: never [32m"a"[39m
Received table:       [31m{[39m[7m"a"[27m[31m, [39m[31m"b"[39m[31m, [39m[31m"c"[39m[31m, [39m[31m"d"[39m[31m}[39m]=]

snapshots['.toContain(), .toContainEqual() {"a", "b", "c", "d"} contains a value equal to "a" 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoContainEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected value: never [32m"a"[39m
Received table:       [31m{[39m[7m"a"[27m[31m, [39m[31m"b"[39m[31m, [39m[31m"c"[39m[31m, [39m[31m"d"[39m[31m}[39m]=]

snapshots['.toContain(), .toContainEqual() {{"a": "b"}, {"a": "c"}} contains a value equal to {"a": "b"} 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoContainEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected value: never [32m{"a": "b"}[39m
Received table:       [31m{[39m[7m{"a": "b"}[27m[31m, [39m[31m{"a": "c"}[39m[31m}[39m]=]

snapshots['.toContain(), .toContainEqual() {{"a": "b"}, {"a": "c"}} does not contain a value equal to {"a": "d"} 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoContainEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected value: [32m{"a": "d"}[39m
Received table: [31m{{"a": "b"}, {"a": "c"}}[39m]=]

snapshots['.toContain(), .toContainEqual() {{}, {}} does not contain {} 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) -- string.find or table.find[22m

Expected value: [32m{}[39m
Received table: [31m{{}, {}}[39m

Looks like you wanted to test for object/array equality with the stricter `toContain` matcher. You probably need to use `toContainEqual` instead.]=]

snapshots['.toContain(), .toContainEqual() {0, 1} contains 1 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoContain[2m([22m[32mexpected[39m[2m) -- string.find or table.find[22m

Expected value: never [32m1[39m
Received table:       [31m{[39m[31m0[39m[31m, [39m[7m1[27m[31m}[39m]=]

snapshots['.toContain(), .toContainEqual() {0, 1} contains a value equal to 1 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoContainEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected value: never [32m1[39m
Received table:       [31m{[39m[31m0[39m[31m, [39m[7m1[27m[31m}[39m]=]

snapshots['.toContain(), .toContainEqual() {1, 2, 3, 4} contains 1 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoContain[2m([22m[32mexpected[39m[2m) -- string.find or table.find[22m

Expected value: never [32m1[39m
Received table:       [31m{[39m[7m1[27m[31m, [39m[31m2[39m[31m, [39m[31m3[39m[31m, [39m[31m4[39m[31m}[39m]=]

snapshots['.toContain(), .toContainEqual() {1, 2, 3, 4} contains a value equal to 1 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoContainEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected value: never [32m1[39m
Received table:       [31m{[39m[7m1[27m[31m, [39m[31m2[39m[31m, [39m[31m3[39m[31m, [39m[31m4[39m[31m}[39m]=]

snapshots['.toContain(), .toContainEqual() {{1, 2}, {3, 4}} contains a value equal to {3, 4} 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoContainEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected value: never [32m{3, 4}[39m
Received table:       [31m{[39m[31m{1, 2}[39m[31m, [39m[7m{3, 4}[27m[31m}[39m]=]

snapshots['.toContain(), .toContainEqual() {1, 2, 3} does not contain 4 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) -- string.find or table.find[22m

Expected value: [32m4[39m
Received table: [31m{1, 2, 3}[39m]=]

snapshots['.toContain(), .toContainEqual() {Symbol(a)} contains Symbol(a) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoContain[2m([22m[32mexpected[39m[2m) -- string.find or table.find[22m

Expected value: never [32mSymbol(a)[39m
Received table:       [31m{[39m[7mSymbol(a)[27m[31m}[39m]=]

snapshots['.toContain(), .toContainEqual() {Symbol(a)} contains a value equal to Symbol(a) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoContainEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected value: never [32mSymbol(a)[39m
Received table:       [31m{[39m[7mSymbol(a)[27m[31m}[39m]=]

snapshots['.toContain(), .toContainEqual() error cases 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) -- string.find or table.find[22m

[1mMatcher error[22m: [31mreceived[39m value must not be nil

Received has value: [31mnil[39m]=]

snapshots['.toContain(), .toContainEqual() error cases for toContainEqual 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoContainEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[1mMatcher error[22m: [31mreceived[39m value must not be nil

Received has value: [31mnil[39m]=]

snapshots['.toEqual() {pass: false} expect("1 234,57 $").toEqual("1 234,57 $") 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: [32m"1[7m [27m234,57[7m [27m$"[39m
Received: [31m"1[7m [27m234,57[7m [27m$"[39m]=]

snapshots['.toEqual() {pass: false} expect("Eve").toEqual({"asymmetricMatch": [Function anonymous]}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: [32m{"asymmetricMatch": [Function anonymous]}[39m
Received: [31m"Eve"[39m]=]

snapshots['.toEqual() {pass: false} expect("abd").toEqual(StringContaining "bc") 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: [32mStringContaining "bc"[39m
Received: [31m"abd"[39m]=]

snapshots['.toEqual() {pass: false} expect("abd").toEqual(StringMatching "bc") 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: [32mStringMatching "bc"[39m
Received: [31m"abd"[39m]=]

snapshots['.toEqual() {pass: false} expect("banana").toEqual("apple") 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: [32m"apple"[39m
Received: [31m"banana"[39m]=]

snapshots['.toEqual() {pass: false} expect("type TypeName<T> = T extends Function ? \\"function\\" : \\"object\\";").toEqual("type TypeName<T> = T extends Function\n? \\"function\\"\n: \\"object\\";") 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 3[39m
[31m+ Received  + 1[39m

[32m- type TypeName<T> = T extends Function[39m
[32m- ? "function"[39m
[32m- : "object";[39m
[31m+ type TypeName<T> = T extends Function[7m [27m? "function"[7m [27m: "object";[39m]=]

snapshots['.toEqual() {pass: false} expect({1, 3}).toEqual(ArrayContaining [1, 2]) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: [32mArrayContaining [1, 2][39m
Received: [31m{1, 3}[39m]=]

snapshots['.toEqual() {pass: false} expect({1}).toEqual({2}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[32m-   2,[39m
[31m+   1,[39m
[2m  }[22m]=]

snapshots['.toEqual() {pass: false} expect({97, 98, 99}).toEqual({97, 98, 100}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[2m    97,[22m
[2m    98,[22m
[32m-   100,[39m
[31m+   99,[39m
[2m  }[22m]=]

snapshots['.toEqual() {pass: false} expect({"a": 1, "b": 2}).toEqual(ObjectContaining {"a": 2}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: [32mObjectContaining {"a": 2}[39m
Received: [31m{"a": 1, "b": 2}[39m]=]

snapshots['.toEqual() {pass: false} expect({"a": 1}).toEqual({"a": 2}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[32m-   "a": 2,[39m
[31m+   "a": 1,[39m
[2m  }[22m]=]

snapshots['.toEqual() {pass: false} expect({"a": 5}).toEqual({"b": 6}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[32m-   "b": 6,[39m
[31m+   "a": 5,[39m
[2m  }[22m]=]

snapshots['.toEqual() {pass: false} expect({"foo": {"bar": 1}}).toEqual({"foo": {}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 3[39m

[2m  Table {[22m
[32m-   "foo": Table {},[39m
[31m+   "foo": Table {[39m
[31m+     "bar": 1,[39m
[31m+   },[39m
[2m  }[22m]=]

snapshots['.toEqual() {pass: false} expect({"nodeName": "div", "nodeType": 1}).toEqual({"nodeName": "p", "nodeType": 1}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[32m-   "nodeName": "p",[39m
[31m+   "nodeName": "div",[39m
[2m    "nodeType": 1,[22m
[2m  }[22m]=]

snapshots['.toEqual() {pass: false} expect({"target": {"nodeType": 1, "value": "a"}}).toEqual({"target": {"nodeType": 1, "value": "b"}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[2m    "target": Table {[22m
[2m      "nodeType": 1,[22m
[32m-     "value": "b",[39m
[31m+     "value": "a",[39m
[2m    },[22m
[2m  }[22m]=]

snapshots['.toEqual() {pass: false} expect({Symbol(bar): 2, Symbol(foo): 1}).toEqual({Symbol(bar): 1, Symbol(foo): Any<number>}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[32m-   Symbol(bar): 1,[39m
[31m+   Symbol(bar): 2,[39m
[2m    Symbol(foo): Any<number>,[22m
[2m  }[22m]=]

snapshots['.toEqual() {pass: false} expect(0).toEqual(1) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: [32m1[39m
Received: [31m0[39m]=]

snapshots['.toEqual() {pass: false} expect(0).toEqual(-9.007199254741e+15) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: [32m-9.007199254741e+15[39m
Received: [31m0[39m]=]

snapshots['.toEqual() {pass: false} expect(1).toEqual(2) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: [32m2[39m
Received: [31m1[39m]=]

snapshots['.toEqual() {pass: false} expect(1).toEqual(ArrayContaining [1, 2]) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: [32mArrayContaining [1, 2][39m
Received: [31m1[39m]=]

snapshots['.toEqual() {pass: false} expect(-9.007199254741e+15).toEqual(0) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: [32m0[39m
Received: [31m-9.007199254741e+15[39m]=]

snapshots['.toEqual() {pass: false} expect({"1": {"2": {"a": 99}}}).toEqual({"1": {"2": {"a": 11}}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[2m    "1": Table {[22m
[2m      "2": Table {[22m
[32m-       "a": 11,[39m
[31m+       "a": 99,[39m
[2m      },[22m
[2m    },[22m
[2m  }[22m]=]

snapshots['.toEqual() {pass: false} expect({"a": 0}).toEqual({"b": 0}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[32m-   "b": 0,[39m
[31m+   "a": 0,[39m
[2m  }[22m]=]

snapshots['.toEqual() {pass: false} expect({1, 2}).toEqual({2, 1}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[32m-   2,[39m
[2m    1,[22m
[31m+   2,[39m
[2m  }[22m]=]

snapshots['.toEqual() {pass: false} expect({1, 2}).toEqual({}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 4[39m

[32m- Table {}[39m
[31m+ Table {[39m
[31m+   1,[39m
[31m+   2,[39m
[31m+ }[39m]=]

snapshots['.toEqual() {pass: false} expect({"v": 1}).toEqual({"v": 2}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[32m-   "v": 2,[39m
[31m+   "v": 1,[39m
[2m  }[22m]=]

snapshots['.toEqual() {pass: false} expect({{"v"}: 1}).toEqual({{"v"}: 2}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[2m    Table {[22m
[2m      "v",[22m
[32m-   }: 2,[39m
[31m+   }: 1,[39m
[2m  }[22m]=]

snapshots['.toEqual() {pass: false} expect({{1}: {{1}: "one"}}).toEqual({{1}: {{1}: "two"}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[33m@@ -2,8 +2,8 @@[39m
[2m    Table {[22m
[2m      1,[22m
[2m    }: Table {[22m
[2m      Table {[22m
[2m        1,[22m
[32m-     }: "two",[39m
[31m+     }: "one",[39m
[2m    },[22m
[2m  }[22m]=]

snapshots['.toEqual() {pass: false} expect({"one", "two"}).toEqual({"one"}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 0[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[2m    "one",[22m
[31m+   "two",[39m
[2m  }[22m]=]

snapshots['.toEqual() {pass: false} expect({{1}, {2}}).toEqual({{1}, {2}, {2}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 3[39m
[31m+ Received  + 0[39m

[33m@@ -3,9 +3,6 @@[39m
[2m      1,[22m
[2m    },[22m
[2m    Table {[22m
[2m      2,[22m
[2m    },[22m
[32m-   Table {[39m
[32m-     2,[39m
[32m-   },[39m
[2m  }[22m]=]

snapshots['.toEqual() {pass: false} expect({{1}, {2}}).toEqual({{1}, {2}, {3}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 3[39m
[31m+ Received  + 0[39m

[33m@@ -3,9 +3,6 @@[39m
[2m      1,[22m
[2m    },[22m
[2m    Table {[22m
[2m      2,[22m
[2m    },[22m
[32m-   Table {[39m
[32m-     3,[39m
[32m-   },[39m
[2m  }[22m]=]

snapshots['.toEqual() {pass: false} expect({1, 2}).toEqual({1, 2, 3}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 0[39m

[2m  Table {[22m
[2m    1,[22m
[2m    2,[22m
[32m-   3,[39m
[2m  }[22m]=]

snapshots['.toEqual() {pass: false} expect({{1}, {2}}).toEqual({{1}, {3}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[2m    Table {[22m
[2m      1,[22m
[2m    },[22m
[2m    Table {[22m
[32m-     3,[39m
[31m+     2,[39m
[2m    },[22m
[2m  }[22m]=]

snapshots['.toEqual() {pass: false} expect(false).toEqual(ObjectContaining {"a": 2}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: [32mObjectContaining {"a": 2}[39m
Received: [31mfalse[39m]=]

snapshots['.toEqual() {pass: false} expect(true).toEqual(false) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: [32mfalse[39m
Received: [31mtrue[39m]=]

snapshots['.toEqual() {pass: false} expect(nil).toEqual(Any<function>) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: [32mAny<function>[39m
Received: [31mnil[39m]=]

snapshots['.toEqual() {pass: false} expect(nil).toEqual(Anything) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: [32mAnything[39m
Received: [31mnil[39m]=]

snapshots['.toEqual() {pass: true} expect("Alice").never.toEqual({"asymmetricMatch": [Function anonymous]}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: never [32m{"asymmetricMatch": [Function anonymous]}[39m
Received:       [31m"Alice"[39m]=]

snapshots['.toEqual() {pass: true} expect("abc").never.toEqual("abc") 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: never [32m"abc"[39m
]=]

snapshots['.toEqual() {pass: true} expect("abcd").never.toEqual(StringContaining "bc") 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: never [32mStringContaining "bc"[39m
Received:       [31m"abcd"[39m]=]

snapshots['.toEqual() {pass: true} expect("abcd").never.toEqual(StringMatching "bc") 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: never [32mStringMatching "bc"[39m
Received:       [31m"abcd"[39m]=]

snapshots['.toEqual() {pass: true} expect({1, 2, 3}).never.toEqual(ArrayContaining [2, 3]) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: never [32mArrayContaining [2, 3][39m
Received:       [31m{1, 2, 3}[39m]=]

snapshots['.toEqual() {pass: true} expect({1}).never.toEqual({1}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: never [32m{1}[39m
]=]

snapshots['.toEqual() {pass: true} expect({97, 98, 99}).never.toEqual({97, 98, 99}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: never [32m{97, 98, 99}[39m
]=]

snapshots['.toEqual() {pass: true} expect([Function anonymous]).never.toEqual(Any<function>) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: never [32mAny<function>[39m
Received:       [31m[Function anonymous][39m]=]

snapshots['.toEqual() {pass: true} expect({"a": 1, "b": [Function anonymous], "c": true}).never.toEqual({"a": 1, "b": Any<function>, "c": Anything}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: never [32m{"a": 1, "b": Any<function>, "c": Anything}[39m
Received:       [31m{"a": 1, "b": [Function anonymous], "c": true}[39m]=]

snapshots['.toEqual() {pass: true} expect({"a": 1, "b": 2}).never.toEqual(ObjectContaining {"a": 1}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: never [32mObjectContaining {"a": 1}[39m
Received:       [31m{"a": 1, "b": 2}[39m]=]

snapshots['.toEqual() {pass: true} expect({"a": 99}).never.toEqual({"a": 99}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: never [32m{"a": 99}[39m
]=]

snapshots['.toEqual() {pass: true} expect({"nodeName": "div", "nodeType": 1}).never.toEqual({"nodeName": "div", "nodeType": 1}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: never [32m{"nodeName": "div", "nodeType": 1}[39m
]=]

snapshots['.toEqual() {pass: true} expect({}).never.toEqual({}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: never [32m{}[39m
]=]

snapshots['.toEqual() {pass: true} expect(0).never.toEqual(0) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: never [32m0[39m
]=]

snapshots['.toEqual() {pass: true} expect(1).never.toEqual(1) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: never [32m1[39m
]=]

snapshots['.toEqual() {pass: true} expect({{2: {"a": 99}}}).never.toEqual({{2: {"a": 99}}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: never [32m{{2: {"a": 99}}}[39m
]=]

snapshots['.toEqual() {pass: true} expect({"one", "two"}).never.toEqual({"one", "two"}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: never [32m{"one", "two"}[39m
]=]

snapshots['.toEqual() {pass: true} expect({1, 2}).never.toEqual({1, 2}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: never [32m{1, 2}[39m
]=]

snapshots['.toEqual() {pass: true} expect({{"one"}, {"two"}}).never.toEqual({{"one"}, {"two"}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: never [32m{{"one"}, {"two"}}[39m
]=]
snapshots['.toEqual() {pass: true} expect(nan).never.toEqual(nan) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: never [32mnan[39m
]=]

snapshots['.toEqual() {pass: true} expect(true).never.toEqual(Anything) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: never [32mAnything[39m
Received:       [31mtrue[39m]=]

snapshots['.toEqual() {pass: true} expect(true).never.toEqual(true) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

Expected: never [32mtrue[39m
]=]

snapshots['.toHaveLength {pass: false} expect("").toHaveLength(1) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveLength[2m([22m[32mexpected[39m[2m)[22m

Expected length: [32m1[39m
Received length: [31m0[39m
Received string: [31m""[39m]=]

snapshots['.toHaveLength {pass: false} expect("abc").toHaveLength(66) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveLength[2m([22m[32mexpected[39m[2m)[22m

Expected length: [32m66[39m
Received length: [31m3[39m
Received string: [31m"abc"[39m]=]

snapshots['.toHaveLength {pass: false} expect({"a", "b"}).toHaveLength(99) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveLength[2m([22m[32mexpected[39m[2m)[22m

Expected length: [32m99[39m
Received length: [31m2[39m
Received table:  [31m{"a", "b"}[39m]=]

snapshots['.toHaveLength {pass: false} expect({}).toHaveLength(1) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveLength[2m([22m[32mexpected[39m[2m)[22m

Expected length: [32m1[39m
Received length: [31m0[39m
Received table:  [31m{}[39m]=]

snapshots['.toHaveLength {pass: false} expect({1, 2}).toHaveLength(3) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveLength[2m([22m[32mexpected[39m[2m)[22m

Expected length: [32m3[39m
Received length: [31m2[39m
Received table:  [31m{1, 2}[39m]=]

snapshots['.toHaveLength {pass: true} expect("").toHaveLength(0) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveLength[2m([22m[32mexpected[39m[2m)[22m

Expected length: never [32m0[39m
Received string:       [31m""[39m]=]

snapshots['.toHaveLength {pass: true} expect({"a", "b"}).toHaveLength(2) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveLength[2m([22m[32mexpected[39m[2m)[22m

Expected length: never [32m2[39m
Received table:        [31m{"a", "b"}[39m]=]

snapshots['.toHaveLength {pass: true} expect({}).toHaveLength(0) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveLength[2m([22m[32mexpected[39m[2m)[22m

Expected length: never [32m0[39m
Received table:        [31m{}[39m]=]

snapshots['.toHaveLength {pass: true} expect({1, 2}).toHaveLength(2) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveLength[2m([22m[32mexpected[39m[2m)[22m

Expected length: never [32m2[39m
Received table:        [31m{1, 2}[39m]=]

snapshots['.toHaveLength error cases 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveLength[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must have a length property whose value must be a number

Received has type:  table
Received has value: [31m{"a": 9}[39m]=]

snapshots['.toHaveLength error cases 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveLength[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must have a length property whose value must be a number

Received has type:  number
Received has value: [31m0[39m]=]

snapshots['.toHaveLength error cases 3'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveLength[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must have a length property whose value must be a number

Received has value: [31mnil[39m]=]

snapshots['.toHaveLength matcher error expected length not number 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveLength[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  string
Expected has value: [32m"3"[39m]=]

snapshots['.toHaveLength matcher error expected length number inf 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveLength[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  number
Expected has value: [32minf[39m]=]

snapshots['.toHaveLength matcher error expected length number nan 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveLength[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  number
Expected has value: [32mnan[39m]=]

snapshots['.toHaveLength matcher error expected length number float 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveLength[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  number
Expected has value: [32m0.5[39m]=]

snapshots['.toHaveLength matcher error expected length number negative integer 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveLength[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-negative integer

Expected has type:  number
Expected has value: [32m-3[39m]=]

snapshots['.toHaveProperty() {error} expect({"a": {"b": {}}}).toHaveProperty(1) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveProperty[2m([22m[32mpath[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m path must be a string or array

Expected has type:  number
Expected has value: [32m1[39m]=]

snapshots['.toHaveProperty() {error} expect({"a": {"b": {}}}).toHaveProperty(nil) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveProperty[2m([22m[32mpath[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m path must be a string or array

Expected has value: [32mnil[39m]=]

snapshots['.toHaveProperty() {error} expect({}).toHaveProperty({}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveProperty[2m([22m[32mpath[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m path must not be an empty array

Expected has type:  table
Expected has value: [32m{}[39m]=]

snapshots['.toHaveProperty() {error} expect(nil).toHaveProperty("a.b") 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveProperty[2m([22m[32mpath[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must not be nil

Received has value: [31mnil[39m]=]

snapshots['.toHaveProperty() {error} expect(nil).toHaveProperty("a") 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveProperty[2m([22m[32mpath[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must not be nil

Received has value: [31mnil[39m]=]

snapshots['.toHaveProperty() {pass: false} expect("abc").toHaveProperty("a.b.c", {"a": 5}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveProperty[2m([22m[32mpath[39m[2m, [22m[32mvalue[39m[2m)[22m

Expected path: [32m"a.b.c"[39m
Received path: [31m{}[39m

Expected value: [32m{"a": 5}[39m
Received value: [31m"abc"[39m]=]

snapshots['.toHaveProperty() {pass: false} expect({"a": {"b": {"c": {"d": 1}}}}).toHaveProperty({"a", "b", "c", "d"}, 2) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveProperty[2m([22m[32mpath[39m[2m, [22m[32mvalue[39m[2m)[22m

Expected path: [32m{"a", "b", "c", "d"}[39m

Expected value: [32m2[39m
Received value: [31m1[39m]=]

snapshots['.toHaveProperty() {pass: false} expect({"a": {"b": {"c": {"d": 1}}}}).toHaveProperty("a.b.c.d", 2) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveProperty[2m([22m[32mpath[39m[2m, [22m[32mvalue[39m[2m)[22m

Expected path: [32m"a.b.c.d"[39m

Expected value: [32m2[39m
Received value: [31m1[39m]=]

snapshots['.toHaveProperty() {pass: false} expect({"a": {"b": {"c": {"d": 1}}}}).toHaveProperty("a.b.ttt.d", 1) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveProperty[2m([22m[32mpath[39m[2m, [22m[32mvalue[39m[2m)[22m

Expected path: [32m"a.b.ttt.d"[39m
Received path: [31m"a.b"[39m

Expected value: [32m1[39m
Received value: [31m{"c": {"d": 1}}[39m]=]

snapshots['.toHaveProperty() {pass: false} expect({"a": {"b": {"c": {}}}}).toHaveProperty("a.b.c.d", 1) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveProperty[2m([22m[32mpath[39m[2m, [22m[32mvalue[39m[2m)[22m

Expected path: [32m"a.b.c.d"[39m
Received path: [31m"a.b.c"[39m

Expected value: [32m1[39m
Received value: [31m{}[39m]=]

snapshots['.toHaveProperty() {pass: false} expect({"a": {"b": {"c": 5}}}).toHaveProperty("a.b", {"c": 4}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveProperty[2m([22m[32mpath[39m[2m, [22m[32mvalue[39m[2m)[22m

Expected path: [32m"a.b"[39m

[32m- Expected value  - 1[39m
[31m+ Received value  + 1[39m

[2m  Table {[22m
[32m-   "c": 4,[39m
[31m+   "c": 5,[39m
[2m  }[22m]=]

snapshots['.toHaveProperty() {pass: false} expect({"a": 1}).toHaveProperty("a.b.c.d", 5) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveProperty[2m([22m[32mpath[39m[2m, [22m[32mvalue[39m[2m)[22m

Expected path: [32m"a.b.c.d"[39m
Received path: [31m"a"[39m

Expected value: [32m5[39m
Received value: [31m1[39m]=]

snapshots['.toHaveProperty() {pass: false} expect({"a.b.c.d": 1}).toHaveProperty("a.b.c.d", 2) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveProperty[2m([22m[32mpath[39m[2m, [22m[32mvalue[39m[2m)[22m

Expected path: [32m"a.b.c.d"[39m
Received path: [31m{}[39m

Expected value: [32m2[39m
Received value: [31m{"a.b.c.d": 1}[39m]=]

snapshots['.toHaveProperty() {pass: false} expect({"a.b.c.d": 1}).toHaveProperty({"a.b.c.d"}, 2) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveProperty[2m([22m[32mpath[39m[2m, [22m[32mvalue[39m[2m)[22m

Expected path: [32m{"a.b.c.d"}[39m

Expected value: [32m2[39m
Received value: [31m1[39m]=]

snapshots['.toHaveProperty() {pass: false} expect({"children": {"\\"That cartoon\\""}, "type": "p"}).toHaveProperty({"children", 1}, "\\"That cat cartoon\\"") 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveProperty[2m([22m[32mpath[39m[2m, [22m[32mvalue[39m[2m)[22m

Expected path: [32m{"children", 1}[39m

Expected value: [32m"\"That [7mcat [27mcartoon\""[39m
Received value: [31m"\"That cartoon\""[39m]=]

snapshots['.toHaveProperty() {pass: false} expect({"children": {"Roses are red.\nViolets are blue.\nTesting with Jest is good for you."}, "type": "pre"}).toHaveProperty({"children", 1}, "Roses are red, violets are blue.\nTesting with Jest\nIs good for you.") 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveProperty[2m([22m[32mpath[39m[2m, [22m[32mvalue[39m[2m)[22m

Expected path: [32m{"children", 1}[39m

[32m- Expected value  - 3[39m
[31m+ Received value  + 3[39m

[32m- Roses are red[7m, v[27miolets are blue.[39m
[31m+ Roses are red[7m.[27m[39m
[31m+ [7mV[27miolets are blue.[39m
[32m- Testing with Jest[39m
[32m- [7mI[27ms good for you.[39m
[31m+ Testing with Jest[7m i[27ms good for you.[39m]=]

snapshots['.toHaveProperty() {pass: false} expect({}).toHaveProperty("a", "test") 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveProperty[2m([22m[32mpath[39m[2m, [22m[32mvalue[39m[2m)[22m

Expected path: [32m"a"[39m
Received path: [31m{}[39m

Expected value: [32m"test"[39m
Received value: [31m{}[39m]=]

snapshots['.toHaveProperty() {pass: false} expect(1).toHaveProperty("a.b.c", "test") 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoHaveProperty[2m([22m[32mpath[39m[2m, [22m[32mvalue[39m[2m)[22m

Expected path: [32m"a.b.c"[39m
Received path: [31m{}[39m

Expected value: [32m"test"[39m
Received value: [31m1[39m]=]

snapshots['.toHaveProperty() {pass: true} expect("").toHaveProperty("len", Any<function>) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveProperty[2m([22m[32mpath[39m[2m, [22m[32mvalue[39m[2m)[22m

Expected path: [32m"len"[39m

Expected value: never [32mAny<function>[39m
Received value:       [31m[Function anonymous][39m]=]

snapshots['.toHaveProperty() {pass: true} expect({"a": {"b": {1, 2, 3}}}).toHaveProperty({"a", "b", 2}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveProperty[2m([22m[32mpath[39m[2m)[22m

Expected path: never [32m{"a", "b", 2}[39m

Received value: [31m2[39m]=]

snapshots['.toHaveProperty() {pass: true} expect({"a": {"b": {1, 2, 3}}}).toHaveProperty({"a", "b", 2}, 2) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveProperty[2m([22m[32mpath[39m[2m, [22m[32mvalue[39m[2m)[22m

Expected path: [32m{"a", "b", 2}[39m

Expected value: never [32m2[39m]=]

snapshots['.toHaveProperty() {pass: true} expect({"a": {"b": {1, 2, 3}}}).toHaveProperty({"a", "b", 2}, Any<number>) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveProperty[2m([22m[32mpath[39m[2m, [22m[32mvalue[39m[2m)[22m

Expected path: [32m{"a", "b", 2}[39m

Expected value: never [32mAny<number>[39m
Received value:       [31m2[39m]=]

snapshots['.toHaveProperty() {pass: true} expect({"a": {"b": {"c": {"d": 1}}}}).toHaveProperty({"a", "b", "c", "d"}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveProperty[2m([22m[32mpath[39m[2m)[22m

Expected path: never [32m{"a", "b", "c", "d"}[39m

Received value: [31m1[39m]=]

snapshots['.toHaveProperty() {pass: true} expect({"a": {"b": {"c": {"d": 1}}}}).toHaveProperty({"a", "b", "c", "d"}, 1) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveProperty[2m([22m[32mpath[39m[2m, [22m[32mvalue[39m[2m)[22m

Expected path: [32m{"a", "b", "c", "d"}[39m

Expected value: never [32m1[39m]=]

snapshots['.toHaveProperty() {pass: true} expect({"a": {"b": {"c": {"d": 1}}}}).toHaveProperty("a.b.c.d") 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveProperty[2m([22m[32mpath[39m[2m)[22m

Expected path: never [32m"a.b.c.d"[39m

Received value: [31m1[39m]=]

snapshots['.toHaveProperty() {pass: true} expect({"a": {"b": {"c": {"d": 1}}}}).toHaveProperty("a.b.c.d", 1) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveProperty[2m([22m[32mpath[39m[2m, [22m[32mvalue[39m[2m)[22m

Expected path: [32m"a.b.c.d"[39m

Expected value: never [32m1[39m]=]

snapshots['.toHaveProperty() {pass: true} expect({"a": {"b": {"c": 5}}}).toHaveProperty("a.b", {"c": 5}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveProperty[2m([22m[32mpath[39m[2m, [22m[32mvalue[39m[2m)[22m

Expected path: [32m"a.b"[39m

Expected value: never [32m{"c": 5}[39m]=]

snapshots['.toHaveProperty() {pass: true} expect({"a": {"b": false}}).toHaveProperty("a.b") 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveProperty[2m([22m[32mpath[39m[2m)[22m

Expected path: never [32m"a.b"[39m

Received value: [31mfalse[39m]=]

snapshots['.toHaveProperty() {pass: true} expect({"a": {"b": false}}).toHaveProperty("a.b", false) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveProperty[2m([22m[32mpath[39m[2m, [22m[32mvalue[39m[2m)[22m

Expected path: [32m"a.b"[39m

Expected value: never [32mfalse[39m]=]

snapshots['.toHaveProperty() {pass: true} expect({"a": 0}).toHaveProperty("a") 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveProperty[2m([22m[32mpath[39m[2m)[22m

Expected path: never [32m"a"[39m

Received value: [31m0[39m]=]

snapshots['.toHaveProperty() {pass: true} expect({"a": 0}).toHaveProperty("a", 0) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveProperty[2m([22m[32mpath[39m[2m, [22m[32mvalue[39m[2m)[22m

Expected path: [32m"a"[39m

Expected value: never [32m0[39m]=]

snapshots['.toHaveProperty() {pass: true} expect({"a.b.c.d": 1}).toHaveProperty({"a.b.c.d"}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveProperty[2m([22m[32mpath[39m[2m)[22m

Expected path: never [32m{"a.b.c.d"}[39m

Received value: [31m1[39m]=]

snapshots['.toHaveProperty() {pass: true} expect({"a.b.c.d": 1}).toHaveProperty({"a.b.c.d"}, 1) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveProperty[2m([22m[32mpath[39m[2m, [22m[32mvalue[39m[2m)[22m

Expected path: [32m{"a.b.c.d"}[39m

Expected value: never [32m1[39m]=]

snapshots['.toHaveProperty() {pass: true} expect({"property": 1}).toHaveProperty("property", 1) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoHaveProperty[2m([22m[32mpath[39m[2m, [22m[32mvalue[39m[2m)[22m

Expected path: [32m"property"[39m

Expected value: never [32m1[39m]=]

snapshots['.toMatch() throws if non String actual value passed: [[Function anonymous], "foo"] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatch[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a string

Received has type:  function
Received has value: [31m[Function anonymous][39m]=]

snapshots['.toMatch() throws if non String actual value passed: [{}, "foo"] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatch[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a string

Received has type:  table
Received has value: [31m{}[39m]=]

snapshots['.toMatch() throws if non String actual value passed: [1, "foo"] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatch[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a string

Received has type:  number
Received has value: [31m1[39m]=]

snapshots['.toMatch() throws if non String actual value passed: [true, "foo"] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatch[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a string

Received has type:  boolean
Received has value: [31mtrue[39m]=]

snapshots['.toMatch() throws if non String actual value passed: [nil, "foo"] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatch[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a string

Received has value: [31mnil[39m]=]

snapshots['.toMatch() throws if non String/RegExp expected value passed: ["foo", [Function anonymous]] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatch[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a string or regular expression

Expected has type:  function
Expected has value: [32m[Function anonymous][39m]=]

snapshots['.toMatch() throws if non String/RegExp expected value passed: ["foo", {}] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatch[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a string or regular expression

Expected has type:  table
Expected has value: [32m{}[39m]=]

snapshots['.toMatch() throws if non String/RegExp expected value passed: ["foo", 1] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatch[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a string or regular expression

Expected has type:  number
Expected has value: [32m1[39m]=]

snapshots['.toMatch() throws if non String/RegExp expected value passed: ["foo", true] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatch[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a string or regular expression

Expected has type:  boolean
Expected has value: [32mtrue[39m]=]

snapshots['.toMatch() throws if non String/RegExp expected value passed: ["foo", nil] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatch[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a string or regular expression

Expected has value: [32mnil[39m]=]

snapshots['.toMatch() throws: [bar, foo] 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatch[2m([22m[32mexpected[39m[2m)[22m

Expected pattern: [32m"foo"[39m
Received string:  [31m"bar"[39m]=]

snapshots['toMatchObject() {pass: false} expect({0}).toMatchObject({-0}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[32m-   -0,[39m
[31m+   0,[39m
[2m  }[22m]=]

snapshots['toMatchObject() {pass: false} expect({1, 2}).toMatchObject({1, 3}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[2m    1,[22m
[32m-   3,[39m
[31m+   2,[39m
[2m  }[22m]=]

snapshots['toMatchObject() {pass: false} expect({"a": "a", "c": "d"}).toMatchObject({"a": Any<number>}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[32m-   "a": Any<number>,[39m
[31m+   "a": "a",[39m
[2m  }[22m]=]

snapshots['toMatchObject() {pass: false} expect({"a": "b", "c": "d"}).toMatchObject({"a": "b!", "c": "d"}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[32m-   "a": "b!",[39m
[31m+   "a": "b",[39m
[2m    "c": "d",[22m
[2m  }[22m]=]

snapshots['toMatchObject() {pass: false} expect({"a": "b", "c": "d"}).toMatchObject({"e": "b"}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[32m- Expected  - 1[39m
[31m+ Received  + 2[39m

[2m  Table {[22m
[32m-   "e": "b",[39m
[31m+   "a": "b",[39m
[31m+   "c": "d",[39m
[2m  }[22m]=]

snapshots['toMatchObject() {pass: false} expect({"a": "b", "t": {"x": {"r": "r"}, "z": "z"}}).toMatchObject({"a": "b", "t": {"z": {3}}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[32m- Expected  - 3[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[2m    "a": "b",[22m
[2m    "t": Table {[22m
[32m-     "z": Table {[39m
[32m-       3,[39m
[32m-     },[39m
[31m+     "z": "z",[39m
[2m    },[22m
[2m  }[22m]=]

snapshots['toMatchObject() {pass: false} expect({"a": "b", "t": {"x": {"r": "r"}, "z": "z"}}).toMatchObject({"t": {"l": {"r": "r"}}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[32m- Expected  - 1[39m
[31m+ Received  + 2[39m

[2m  Table {[22m
[2m    "t": Table {[22m
[32m-     "l": Table {[39m
[31m+     "x": Table {[39m
[2m        "r": "r",[22m
[2m      },[22m
[31m+     "z": "z",[39m
[2m    },[22m
[2m  }[22m]=]

snapshots['toMatchObject() {pass: false} expect({"a": {3, 4, "v"}, "b": "b"}).toMatchObject({"a": {"v"}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[32m- Expected  - 0[39m
[31m+ Received  + 2[39m

[2m  Table {[22m
[2m    "a": Table {[22m
[31m+     3,[39m
[31m+     4,[39m
[2m      "v",[22m
[2m    },[22m
[2m  }[22m]=]

snapshots['toMatchObject() {pass: false} expect({"a": {3, 4, 5}, "b": "b"}).toMatchObject({"a": {3, 4, 5, 6}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[32m- Expected  - 1[39m
[31m+ Received  + 0[39m

[2m  Table {[22m
[2m    "a": Table {[22m
[2m      3,[22m
[2m      4,[22m
[2m      5,[22m
[32m-     6,[39m
[2m    },[22m
[2m  }[22m]=]

snapshots['toMatchObject() {pass: false} expect({"a": {3, 4, 5}, "b": "b"}).toMatchObject({"a": {3, 4}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[32m- Expected  - 0[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[2m    "a": Table {[22m
[2m      3,[22m
[2m      4,[22m
[31m+     5,[39m
[2m    },[22m
[2m  }[22m]=]

snapshots['toMatchObject() {pass: false} expect({"a": {3, 4, 5}, "b": "b"}).toMatchObject({"a": {"b": 4}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[32m- Expected  - 1[39m
[31m+ Received  + 3[39m

[2m  Table {[22m
[2m    "a": Table {[22m
[32m-     "b": 4,[39m
[31m+     3,[39m
[31m+     4,[39m
[31m+     5,[39m
[2m    },[22m
[2m  }[22m]=]

-- deviation: snapshot changed since we don't have a difference as Objet and Array as in upstream
snapshots['toMatchObject() {pass: false} expect({"a": {3, 4, 5}, "b": "b"}).toMatchObject({"a": {"b": Any<string>}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[32m- Expected  - 1[39m
[31m+ Received  + 3[39m

[2m  Table {[22m
[2m    "a": Table {[22m
[32m-     "b": Any<string>,[39m
[31m+     3,[39m
[31m+     4,[39m
[31m+     5,[39m
[2m    },[22m
[2m  }[22m]=]

snapshots['toMatchObject() {pass: true} expect({}).toMatchObject({}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m{}[39m]=]

snapshots['toMatchObject() {pass: true} expect({1, 2}).toMatchObject({1, 2}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m{1, 2}[39m]=]

snapshots['toMatchObject() {pass: true} expect({"a": "b", "c": "d", Symbol(jest): "jest"}).toMatchObject({"a": "b", "c": "d", Symbol(jest): "jest"}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m{"a": "b", "c": "d", Symbol(jest): "jest"}[39m]=]

snapshots['toMatchObject() {pass: true} expect({"a": "b", "c": "d", Symbol(jest): "jest"}).toMatchObject({"a": "b", Symbol(jest): "jest"}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m{"a": "b", Symbol(jest): "jest"}[39m
Received:       [31m{"a": "b", "c": "d", Symbol(jest): "jest"}[39m]=]

snapshots['toMatchObject() {pass: true} expect({"a": "b", "c": "d"}).toMatchObject({"a": "b", "c": "d"}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m{"a": "b", "c": "d"}[39m]=]

snapshots['toMatchObject() {pass: true} expect({"a": "b", "c": "d"}).toMatchObject({"a": "b"}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m{"a": "b"}[39m
Received:       [31m{"a": "b", "c": "d"}[39m]=]

snapshots['toMatchObject() {pass: true} expect({"a": "b", "t": {"x": {"r": "r"}, "z": "z"}}).toMatchObject({"a": "b", "t": {"z": "z"}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m{"a": "b", "t": {"z": "z"}}[39m
Received:       [31m{"a": "b", "t": {"x": {"r": "r"}, "z": "z"}}[39m]=]

snapshots['toMatchObject() {pass: true} expect({"a": "b", "t": {"x": {"r": "r"}, "z": "z"}}).toMatchObject({"t": {"x": {"r": "r"}}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m{"t": {"x": {"r": "r"}}}[39m
Received:       [31m{"a": "b", "t": {"x": {"r": "r"}, "z": "z"}}[39m]=]

snapshots['toMatchObject() {pass: true} expect({"a": {{"a": "a", "b": "b"}}}).toMatchObject({"a": {{"a": "a"}}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m{"a": {{"a": "a"}}}[39m
Received:       [31m{"a": {{"a": "a", "b": "b"}}}[39m]=]

snapshots['toMatchObject() {pass: true} expect({"a": {3, 4, 5, "v"}, "b": "b"}).toMatchObject({"a": {3, 4, 5, "v"}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m{"a": {3, 4, 5, "v"}}[39m
Received:       [31m{"a": {3, 4, 5, "v"}, "b": "b"}[39m]=]

snapshots['toMatchObject() {pass: true} expect({"a": {3, 4, 5}, "b": "b"}).toMatchObject({"a": {3, 4, 5}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m{"a": {3, 4, 5}}[39m
Received:       [31m{"a": {3, 4, 5}, "b": "b"}[39m]=]

snapshots['toMatchObject() {pass: true} expect({"a": {"x": "x", "y": "y"}}).toMatchObject({"a": {"x": Any<string>}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m{"a": {"x": Any<string>}}[39m
Received:       [31m{"a": {"x": "x", "y": "y"}}[39m]=]

snapshots['toMatchObject() {pass: true} expect({"a": 1, "c": 2}).toMatchObject({"a": Any<number>}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m{"a": Any<number>}[39m
Received:       [31m{"a": 1, "c": 2}[39m]=]

snapshots['toMatchObject() {pass: true} expect({"a": 2015-11-30T00:00:00.000Z, "b": "b"}).toMatchObject({"a": 2015-11-30T00:00:00.000Z}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m{"a": 2015-11-30T00:00:00.000Z}[39m
Received:       [31m{"a": 2015-11-30T00:00:00.000Z, "b": "b"}[39m]=]

snapshots['toMatchObject() {pass: true} expect({"a": "undefined", "b": "b"}).toMatchObject({"a": "undefined"}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m{"a": "undefined"}[39m
Received:       [31m{"a": "undefined", "b": "b"}[39m]=]

snapshots['toMatchObject() circular references simple circular references {pass: false} expect({"a": "hello", "ref": [Circular]}).toMatchObject({"a": "world", "ref": [Circular]}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[32m-   "a": "world",[39m
[31m+   "a": "hello",[39m
[2m    "ref": [Circular],[22m
[2m  }[22m]=]

snapshots['toMatchObject() circular references simple circular references {pass: false} expect({"ref": "not a ref"}).toMatchObject({"a": "hello", "ref": [Circular]}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[32m- Expected  - 2[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[32m-   "a": "hello",[39m
[32m-   "ref": [Circular],[39m
[31m+   "ref": "not a ref",[39m
[2m  }[22m]=]

snapshots['toMatchObject() circular references simple circular references {pass: false} expect({}).toMatchObject({"a": "hello", "ref": [Circular]}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[32m- Expected  - 4[39m
[31m+ Received  + 1[39m

[32m- Table {[39m
[32m-   "a": "hello",[39m
[32m-   "ref": [Circular],[39m
[32m- }[39m
[31m+ Table {}[39m]=]

snapshots['toMatchObject() circular references simple circular references {pass: true} expect({"a": "hello", "ref": [Circular]}).toMatchObject({"a": "hello", "ref": [Circular]}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m{"a": "hello", "ref": [Circular]}[39m]=]

snapshots['toMatchObject() circular references simple circular references {pass: true} expect({"a": "hello", "ref": [Circular]}).toMatchObject({}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m{}[39m
Received:       [31m{"a": "hello", "ref": [Circular]}[39m]=]

snapshots['toMatchObject() circular references transitive circular references {pass: false} expect({"a": "world", "nestedObj": {"parentObj": [Circular]}}).toMatchObject({"a": "hello", "nestedObj": {"parentObj": [Circular]}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[32m-   "a": "hello",[39m
[31m+   "a": "world",[39m
[2m    "nestedObj": Table {[22m
[2m      "parentObj": [Circular],[22m
[2m    },[22m
[2m  }[22m]=]

snapshots['toMatchObject() circular references transitive circular references {pass: false} expect({"nestedObj": {"parentObj": "not the parent ref"}}).toMatchObject({"a": "hello", "nestedObj": {"parentObj": [Circular]}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[32m- Expected  - 2[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[32m-   "a": "hello",[39m
[2m    "nestedObj": Table {[22m
[32m-     "parentObj": [Circular],[39m
[31m+     "parentObj": "not the parent ref",[39m
[2m    },[22m
[2m  }[22m]=]

snapshots['toMatchObject() circular references transitive circular references {pass: false} expect({}).toMatchObject({"a": "hello", "nestedObj": {"parentObj": [Circular]}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[32m- Expected  - 6[39m
[31m+ Received  + 1[39m

[32m- Table {[39m
[32m-   "a": "hello",[39m
[32m-   "nestedObj": Table {[39m
[32m-     "parentObj": [Circular],[39m
[32m-   },[39m
[32m- }[39m
[31m+ Table {}[39m]=]

snapshots['toMatchObject() circular references transitive circular references {pass: true} expect({"a": "hello", "nestedObj": {"parentObj": [Circular]}}).toMatchObject({"a": "hello", "nestedObj": {"parentObj": [Circular]}}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m{"a": "hello", "nestedObj": {"parentObj": [Circular]}}[39m]=]

snapshots['toMatchObject() circular references transitive circular references {pass: true} expect({"a": "hello", "nestedObj": {"parentObj": [Circular]}}).toMatchObject({}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

Expected: never [32m{}[39m
Received:       [31m{"a": "hello", "nestedObj": {"parentObj": [Circular]}}[39m]=]

snapshots['toMatchObject() does not match properties up in the prototype chain 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[32m- Expected  - 1[39m
[31m+ Received  + 0[39m

[2m  Table {[22m
[2m    "other": "child",[22m
[32m-   "ref": [Circular],[39m
[2m  }[22m]=]

snapshots['toMatchObject() throws expect("44").toMatchObject({}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a non-nil object

Received has type:  string
Received has value: [31m"44"[39m]=]

snapshots['toMatchObject() throws expect({}).toMatchObject("some string") 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-nil object

Expected has type:  string
Expected has value: [32m"some string"[39m]=]

snapshots['toMatchObject() throws expect({}).toMatchObject(4) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-nil object

Expected has type:  number
Expected has value: [32m4[39m]=]

snapshots['toMatchObject() throws expect({}).toMatchObject(true) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-nil object

Expected has type:  boolean
Expected has value: [32mtrue[39m]=]

snapshots['toMatchObject() throws expect({}).toMatchObject(nil) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a non-nil object

Expected has value: [32mnil[39m]=]

snapshots['toMatchObject() throws expect(4).toMatchObject({}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a non-nil object

Received has type:  number
Received has value: [31m4[39m]=]

snapshots['toMatchObject() throws expect(true).toMatchObject({}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a non-nil object

Received has type:  boolean
Received has value: [31mtrue[39m]=]

snapshots['toMatchObject() throws expect(nil).toMatchObject({}) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoMatchObject[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a non-nil object

Received has value: [31mnil[39m]=]

snapshots['.toBeDefined() .toBeUndefined() "a" is defined 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeDefined[2m()[22m

Received: [31m"a"[39m]=]

snapshots['.toBeDefined() .toBeUndefined() [Function anonymous] is defined 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeDefined[2m()[22m

Received: [31m[Function anonymous][39m]=]

snapshots['.toBeDefined() .toBeUndefined() {} is defined 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeDefined[2m()[22m

Received: [31m{}[39m]=]

snapshots['.toBeDefined() .toBeUndefined() 0.5 is defined 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeDefined[2m()[22m

Received: [31m0.5[39m]=]

snapshots['.toBeDefined() .toBeUndefined() 1 is defined 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeDefined[2m()[22m

Received: [31m1[39m]=]

snapshots['.toBeDefined() .toBeUndefined() inf is defined 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeDefined[2m()[22m

Received: [31minf[39m]=]

snapshots['.toBeDefined() .toBeUndefined() true is defined 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeDefined[2m()[22m

Received: [31mtrue[39m]=]

snapshots['.toBeDefined() .toBeUndefined() "a" is defined 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeUndefined[2m()[22m

Received: [31m"a"[39m]=]

snapshots['.toBeDefined() .toBeUndefined() [Function anonymous] is defined 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeUndefined[2m()[22m

Received: [31m[Function anonymous][39m]=]

snapshots['.toBeDefined() .toBeUndefined() {} is defined 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeUndefined[2m()[22m

Received: [31m{}[39m]=]

snapshots['.toBeDefined() .toBeUndefined() 0.5 is defined 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeUndefined[2m()[22m

Received: [31m0.5[39m]=]

snapshots['.toBeDefined() .toBeUndefined() 1 is defined 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeUndefined[2m()[22m

Received: [31m1[39m]=]

snapshots['.toBeDefined() .toBeUndefined() inf is defined 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeUndefined[2m()[22m

Received: [31minf[39m]=]

snapshots['.toBeDefined() .toBeUndefined() true is defined 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeUndefined[2m()[22m

Received: [31mtrue[39m]=]

snapshots['.toBeDefined() .toBeUndefined() nil is undefined 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeDefined[2m()[22m

Received: [31mnil[39m]=]

snapshots['.toBeDefined() .toBeUndefined() nil is undefined 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeUndefined[2m()[22m

Received: [31mnil[39m]=]

return snapshots