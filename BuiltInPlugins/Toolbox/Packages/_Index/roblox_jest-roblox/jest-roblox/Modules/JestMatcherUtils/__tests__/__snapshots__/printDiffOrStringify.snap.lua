-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/jest-matcher-utils/src/__tests__/__snapshots__/printDiffOrStringify.test.ts.snap

--[[
    deviation: Many of the tests have their outputs rearranged (while
    maintaining the same contents) to align with the output order in Lua

    deviation: edited several of the following snapshots to use 'Table' in
    place of 'Object' and 'Array'
]]
local snapshots = {}

snapshots["printDiffOrStringify asymmetricMatcher array 1"] = [[
[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[2m    1,[22m
[2m    Any<number>,[22m
[32m-   3,[39m
[31m+   2,[39m
[2m  }[22m]]

snapshots["printDiffOrStringify asymmetricMatcher circular array 1"] = [[
[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[2m    1,[22m
[2m    Any<number>,[22m
[32m-   3,[39m
[31m+   2,[39m
[2m    [Circular],[22m
[2m  }[22m]]

-- deviation: The original snapshot had another level of information for the
-- "circular" reference rather than immediately saying it was Circular:
-- https://github.com/facebook/jest/blob/v26.5.3/packages/jest-matcher-utils/src/__tests__/__snapshots__/printDiffOrStringify.test.ts.snap#L37
-- However, in our implementation Maps and Objects are treated identically so
-- circular would be printed at the surface level in both cases
snapshots["printDiffOrStringify asymmetricMatcher circular map 1"] = [[
[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[2m    "a": 1,[22m
[2m    "b": Any<number>,[22m
[32m-   "c": 3,[39m
[31m+   "c": 2,[39m
[2m    "circular": [Circular],[22m
[2m  }[22m]]

snapshots["printDiffOrStringify asymmetricMatcher circular object 1"] = [[
[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[2m    "a": [Circular],[22m
[2m    "b": Any<number>,[22m
[32m-   "c": 3,[39m
[31m+   "c": 2,[39m
[2m  }[22m]]

snapshots["printDiffOrStringify asymmetricMatcher custom asymmetricMatcher 1"] = [[
- Expected  - 1
+ Received  + 1

  Object {
    "a": equal5<>,
-   "b": false,
+   "b": true,
  }
]]

-- deviation: test modified from having a Symbol as a key to having "h" as a
-- key, with "h" mapping to a table which in turn holds the original symbol.
-- This was done to prevent indeterministic output order in Lua
snapshots["printDiffOrStringify asymmetricMatcher jest asymmetricMatcher 1"] = [[
[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[2m    "a": Any<number>,[22m
[2m    "b": Anything,[22m
[2m    "c": ArrayContaining [[22m
[2m      1,[22m
[2m      3,[22m
[2m    ],[22m
[2m    "d": StringContaining "jest",[22m
[2m    "e": StringMatching "jest",[22m
[2m    "f": ObjectContaining {[22m
[2m      "a": Any<DateTime>,[22m
[2m    },[22m
[32m-   "g": true,[39m
[31m+   "g": false,[39m
[2m    "h": Table {[22m
[2m      Symbol(h): Any<string>,[22m
[2m    },[22m
[2m  }[22m]]

snapshots["printDiffOrStringify asymmetricMatcher map 1"] = [[
[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[2m    "a": 1,[22m
[2m    "b": Any<number>,[22m
[32m-   "c": 3,[39m
[31m+   "c": 2,[39m
[2m  }[22m]]

snapshots["printDiffOrStringify asymmetricMatcher minimal test 1"] = [[
[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[2m    "a": Any<number>,[22m
[32m-   "b": 2,[39m
[31m+   "b": 1,[39m
[2m  }[22m]]

snapshots["printDiffOrStringify asymmetricMatcher nested object 1"] = [[
[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[2m    "a": Any<number>,[22m
[2m    "b": Table {[22m
[2m      "a": 1,[22m
[2m      "b": Any<number>,[22m
[2m    },[22m
[32m-   "c": 2,[39m
[31m+   "c": 1,[39m
[2m  }[22m]]

snapshots["printDiffOrStringify asymmetricMatcher object in array 1"] = [[
[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[2m    1,[22m
[2m    Table {[22m
[2m      "a": 1,[22m
[2m      "b": Any<number>,[22m
[2m    },[22m
[32m-   3,[39m
[31m+   2,[39m
[2m  }[22m]]

snapshots["printDiffOrStringify asymmetricMatcher transitive circular 1"] = [[
[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[32m-   "a": 3,[39m
[31m+   "a": 2,[39m
[2m    "nested": Table {[22m
[2m      "b": Any<number>,[22m
[2m      "parent": [Circular],[22m
[2m    },[22m
[2m  }[22m]]

snapshots["printDiffOrStringify expected and received are multi line with trailing spaces 1"] = [[
[32m- Expected  - 3[39m
[31m+ Received  + 3[39m

[32m- [7mdelete[27m[43m [49m[39m
[31m+ [7minsert[27m[43m [49m[39m
[32m- common [7mexpect[27med common[39m
[31m+ common [7mreceiv[27med common[39m
[32m- [7mprev[27m[43m [49m[39m
[31m+ [7mnext[27m[43m [49m[39m]]

snapshots["printDiffOrStringify expected and received are single line with multiple changes 1"] = [[
Expected: [32m"[7mdelete[27m common [7mexpect[27med common [7mprev[27m"[39m
Received: [31m"[7minsert[27m common [7mreceiv[27med common [7mnext[27m"[39m]]

snapshots["printDiffOrStringify expected is empty and received is single line 1"] = [[
Expected: [32m""[39m
Received: [31m"single line"[39m]]

snapshots["printDiffOrStringify expected is multi line and received is empty 1"] = [[
Expected: [32m"multi
line"[39m
Received: [31m""[39m]]

snapshots["printDiffOrStringify has no common after clean up chaff multiline 1"] = [[
[32m- Expected  - 2[39m
[31m+ Received  + 2[39m

[32m- delete[39m
[32m- two[39m
[31m+ insert[39m
[31m+ 2[39m]]

snapshots["printDiffOrStringify has no common after clean up chaff one-line 1"] = [[
Expected: [32m"delete"[39m
Received: [31m"insert"[39m]]

snapshots["printDiffOrStringify object contain readonly symbol key object 1"] = [[
[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[2m    "a": Symbol(key),[22m
[32m-   "b": 2,[39m
[31m+   "b": 1,[39m
[2m  }[22m]]

return snapshots