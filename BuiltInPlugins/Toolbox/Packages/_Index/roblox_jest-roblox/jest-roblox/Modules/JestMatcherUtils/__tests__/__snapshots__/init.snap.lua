-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/jest-matcher-utils/src/__tests__/__snapshots__/index.test.ts.snap
local snapshots = {}

--[[
	deviation: edited several of the following snapshots to say
	'Matcher error: expected value must be a number'
	instead of:
	'Matcher error: expected value must be a number or bigint'

	deviation: edited several of the following snapshots to use 'Table' in
	place of 'Object'

	deviation: edited several of the following snapshots to use 'nil' in place
	of 'null' and 'undefined'
]]
snapshots["ensureNoExpected() throws error when expected is not undefined with matcherName 1"] = [[
[2mexpect([22m[31mreceived[39m[2m)[.never].toBeDefined()[22m

[1mMatcher error[22m: this matcher must not have an expected argument

Expected has type:  table
Expected has value: [32m{"a": 1}[39m]]

snapshots["ensureNoExpected() throws error when expected is not undefined with matcherName and options 1"] = [[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeDefined[2m()[22m

[1mMatcher error[22m: this matcher must not have an expected argument

Expected has type:  table
Expected has value: [32m{"a": 1}[39m]]

snapshots["ensureNumbers() throws error when expected is not a number (backward compatibility) 1"] = [[
[2mexpect([22m[31mreceived[39m[2m)[.never].toBeCloseTo([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a number

Expected has type:  string
Expected has value: [32m"not_a_number"[39m]]

snapshots["ensureNumbers() throws error when received is not a number (backward compatibility) 1"] = [[
[2mexpect([22m[31mreceived[39m[2m)[.never].toBeCloseTo([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a number

Received has type:  string
Received has value: [31m"not_a_number"[39m]]

snapshots["ensureNumbers() with options promise empty isNot false received 1"] = [[
[2mexpect([22m[31mreceived[39m[2m).[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m, [22m[32mprecision[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a number

Received has type:  string
Received has value: [31m""[39m]]

snapshots["ensureNumbers() with options promise empty isNot true expected 1"] = [[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a number

Expected has value: [32mnil[39m]]

snapshots["ensureNumbers() with options promise rejects isNot false expected 1"] = [[
[2mexpect([22m[31mreceived[39m[2m).[22mrejects[2m.[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a number

Expected has type:  string
Expected has value: [32m"0"[39m]]

snapshots["ensureNumbers() with options promise rejects isNot true received 1"] = [[
[2mexpect([22m[31mreceived[39m[2m).[22mrejects[2m.[22mnever[2m.[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a number

Received has type:  symbol
Received has value: [31mSymbol(0.1)[39m]]

snapshots["ensureNumbers() with options promise resolves isNot false received 1"] = [[
[2mexpect([22m[31mreceived[39m[2m).[22mresolves[2m.[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [31mreceived[39m value must be a number

Received has type:  boolean
Received has value: [31mfalse[39m]]

snapshots["ensureNumbers() with options promise resolves isNot true expected 1"] = [[
[2mexpect([22m[31mreceived[39m[2m).[22mresolves[2m.[22mnever[2m.[22mtoBeCloseTo[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a number

Expected has value: [32mnil[39m]]

-- Additional snapshots NOT in upstream so that we can run the jest-diff tests
-- We don't have mocking capabilities so we compare with the actual output of
-- jest-diff

snapshots["diff forwards to jest-diff 1"] = [[
[32m- Expected[39m
[31m+ Received[39m

[32m- a[39m
[31m+ b[39m]]

snapshots["diff forwards to jest-diff 2"] = [[
  Comparing two different types of values. Expected [32mstring[39m but received [31mtable[39m.]]

snapshots["diff forwards to jest-diff 3"] = [[
  Comparing two different types of values. Expected [32mstring[39m but received [31mnil[39m.]]

snapshots["diff forwards to jest-diff 4"] = [[
  Comparing two different types of values. Expected [32mstring[39m but received [31mnumber[39m.]]

snapshots["diff forwards to jest-diff 5"] = [[
  Comparing two different types of values. Expected [32mstring[39m but received [31mboolean[39m.]]

snapshots["diff forwards to jest-diff 6"] = [[
  Comparing two different types of values. Expected [32mnumber[39m but received [31mboolean[39m.]]

return snapshots
