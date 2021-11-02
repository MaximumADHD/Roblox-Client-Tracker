-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/jest-diff/src/__tests__/__snapshots__/diff.test.ts.snap

local snapshots = {}

-- deviation: } instead of }
snapshots['collapses big diffs to patch format 1'] = [[
[32m- Expected[39m
[31m+ Received[39m

[33m@@ -6,9 +6,9 @@[39m
[2m      4,[22m
[2m      5,[22m
[2m      6,[22m
[2m      7,[22m
[2m      8,[22m
[32m-     9,[39m
[2m      10,[22m
[31m+     9,[39m
[2m    },[22m
[2m  }[22m]]

snapshots['color of text (expanded) 1'] = [[
[32m- Expected[39m
[31m+ Received[39m

[2m  Table {[22m
[2m    "searching": "",[22m
[2m    "sorting": Table {[22m
[31m+     Table {[39m
[2m        "descending": false,[22m
[2m        "fieldKey": "what",[22m
[31m+     },[39m
[2m    },[22m
[2m  }[22m]]

-- deviation: all context number of lines tests use } instead of }
snapshots['context number of lines: -1 (5 default) 1'] = [[
[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m@@ -6,9 +6,9 @@[22m
[2m      4,[22m
[2m      5,[22m
[2m      6,[22m
[2m      7,[22m
[2m      8,[22m
[32m-     9,[39m
[2m      10,[22m
[31m+     9,[39m
[2m    },[22m
[2m  }[22m]]

snapshots['context number of lines: 0  1'] = [[
[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[33m@@ -11,1 +11,0 @@[39m
[32m-     9,[39m
[33m@@ -13,0 +12,1 @@[39m
[31m+     9,[39m]]

snapshots['context number of lines: 1  1'] = [[
[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[33m@@ -10,4 +10,4 @@[39m
[2m      8,[22m
[32m-     9,[39m
[2m      10,[22m
[31m+     9,[39m
[2m    },[22m]]

snapshots['context number of lines: 2  1'] = [[
[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[33m@@ -9,6 +9,6 @@[39m
[2m      7,[22m
[2m      8,[22m
[32m-     9,[39m
[2m      10,[22m
[31m+     9,[39m
[2m    },[22m
[2m  }[22m]]

snapshots['context number of lines: 3.1 (5 default) 1'] = [[
[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m@@ -6,9 +6,9 @@[22m
[2m      4,[22m
[2m      5,[22m
[2m      6,[22m
[2m      7,[22m
[2m      8,[22m
[32m-     9,[39m
[2m      10,[22m
[31m+     9,[39m
[2m    },[22m
[2m  }[22m]]

-- deviation: nil instead of undefined
snapshots['context number of lines: nil (5 default) 1'] = [[
[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m@@ -6,9 +6,9 @@[22m
[2m      4,[22m
[2m      5,[22m
[2m      6,[22m
[2m      7,[22m
[2m      8,[22m
[32m-     9,[39m
[2m      10,[22m
[31m+     9,[39m
[2m    },[22m
[2m  }[22m]]

snapshots['diffStringsUnified edge cases empty both a and b 1'] = [[
[32m- Expected  - 0[39m
[31m+ Received  + 0[39m

]]

snapshots['diffStringsUnified edge cases empty only a 1'] = [[
[32m- Expected  - 0[39m
[31m+ Received  + 1[39m

[31m+ one-line string[39m]]

snapshots['diffStringsUnified edge cases empty only b 1'] = [[
[32m- Expected  - 1[39m
[31m+ Received  + 0[39m

[32m- one-line string[39m]]

snapshots['diffStringsUnified edge cases equal both non-empty 1'] = [[
[32m- Expected  - 0[39m
[31m+ Received  + 0[39m

[2m  one-line string[22m]]

snapshots['diffStringsUnified edge cases multiline has no common after clean up chaff 1'] = [[
[32m- Expected  - 2[39m
[31m+ Received  + 2[39m

[32m- delete[39m
[32m- two[39m
[31m+ insert[39m
[31m+ 2[39m]]

snapshots['diffStringsUnified edge cases one-line has no common after clean up chaff 1'] = [[
[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[32m- delete[39m
[31m+ insert[39m]]

-- deviation: edited to say 'Table' and 'Function anonymous', ordering changed
snapshots['falls back to not call toJSON if it throws and then objects have differences 1'] = [[
[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[32m-   "line": 1,[39m
[31m+   "line": 2,[39m
[2m    "toJSON": [Function anonymous],[22m
[2m  }[22m]]

-- deviation: edited to say 'Table' and 'Function anonymous', ordering changed, unescaped backticks
snapshots['falls back to not call toJSON if serialization has no differences but then objects have differences 1'] = [[
[2mCompared values serialize to the same structure.
Printing internal object structure without calling `toJSON` instead.[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[32m-   "line": 1,[39m
[31m+   "line": 2,[39m
[2m    "toJSON": [Function anonymous],[22m
[2m  }[22m]]

snapshots['oneline strings 1'] = [[
[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[32m- ab[39m
[31m+ aa[39m]]

snapshots['oneline strings 2'] = [[
[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[32m- 123456789[39m
[31m+ 234567890[39m]]

snapshots['oneline strings 3'] = [[
[32m- Expected  - 1[39m
[31m+ Received  + 2[39m

[32m- oneline[39m
[31m+ multi[39m
[31m+ line[39m]]

snapshots['oneline strings 4'] = [[
[32m- Expected  - 2[39m
[31m+ Received  + 1[39m

[32m- multi[39m
[32m- line[39m
[31m+ oneline[39m]]

-- deviation: unescaped backticks and ${}
snapshots['options 7980 diff 1'] = [[
[31m- Original[39m
[32m+ Modified[39m

[31m- `${Ti.App.name} ${Ti.App.version} ${Ti.Platform.name} ${Ti.Platform.version}`[39m
[32m+ `${Ti.App.getName()} ${Ti.App.getVersion()} ${Ti.Platform.getName()} ${Ti.Platform.getVersion()}`[39m]]

-- deviation: unescaped backticks and ${}
snapshots['options 7980 diffStringsUnified 1'] = [[
[31m- Original[39m
[32m+ Modified[39m

[31m- `${Ti.App.[7mn[27mame} ${Ti.App.[7mv[27mersion} ${Ti.Platform.[7mn[27mame} ${Ti.Platform.[7mv[27mersion}`[39m
[32m+ `${Ti.App.[7mgetN[27mame[7m()[27m} ${Ti.App.[7mgetV[27mersion[7m()[27m} ${Ti.Platform.[7mgetN[27mame[7m()[27m} ${Ti.Platform.[7mgetV[27mersion[7m()[27m}`[39m]]

snapshots['options change color diffStringsUnified 1'] = [[
[32m- Expected[39m
[31m+ Received[39m

[32m- delete[39m
[32m- changed [1mfrom[22m[39m
[31m+ changed [1mto[22m[39m
[31m+ insert[39m
[33m  common[39m]]

snapshots['options change color no diff 1'] = [[[33mCompared values have no visual difference.[39m]]

-- deviation: Table {} instead of Array []
snapshots['options change indicators diff 1'] = [=[
[32m< Expected[39m
[31m> Received[39m

[2m  Table {[22m
[32m<   "delete",[39m
[32m<   "change from",[39m
[31m>   "change to",[39m
[31m>   "insert",[39m
[2m    "common",[22m
[2m  }[22m]=]

-- deviation: Table {} instead of Array []
snapshots['options common diff 1'] = [=[
[32m- Expected[39m
[31m+ Received[39m

= Table {
[32m-   "delete",[39m
[32m-   "change from",[39m
[31m+   "change to",[39m
[31m+   "insert",[39m
=   "common",
= }]=]

-- deviation: Table {} instead of Array []
snapshots['options includeChangeCounts false diffLinesUnified 1'] = [=[
[32m- Expected[39m
[31m+ Received[39m

[2m  Table {[22m
[32m-   "delete",[39m
[32m-   "change from",[39m
[31m+   "change to",[39m
[31m+   "insert",[39m
[2m    "common",[22m
[2m  }[22m]=]

snapshots['options includeChangeCounts false diffStringsUnified 1'] = [[
[32m- Expected[39m
[31m+ Received[39m

[32m- change [7mfrom[27m[39m
[31m+ change [7mto[27m[39m
[2m  common[22m]]

snapshots['options includeChangeCounts true padding diffLinesUnified a has 2 digits 1'] = [[
[32m- Before  - 10[39m
[31m+ After   +  1[39m

[2m  common[22m
[32m- a[39m
[32m- a[39m
[32m- a[39m
[32m- a[39m
[32m- a[39m
[32m- a[39m
[32m- a[39m
[32m- a[39m
[32m- a[39m
[32m- a[39m
[31m+ b[39m]]

snapshots['options includeChangeCounts true padding diffLinesUnified b has 2 digits 1'] = [[
[32m- Before  -  1[39m
[31m+ After   + 10[39m

[2m  common[22m
[32m- a[39m
[31m+ b[39m
[31m+ b[39m
[31m+ b[39m
[31m+ b[39m
[31m+ b[39m
[31m+ b[39m
[31m+ b[39m
[31m+ b[39m
[31m+ b[39m
[31m+ b[39m]]

snapshots['options includeChangeCounts true padding diffStringsUnified 1'] = [[
[32m- Before  - 1[39m
[31m+ After   + 1[39m

[32m- change [7mfrom[27m[39m
[31m+ change [7mto[27m[39m
[2m  common[22m]]

-- deviation: Table {} instead of Array []
snapshots['options omitAnnotationLines true diff 1'] = [=[
[2m  Table {[22m
[32m-   "delete",[39m
[32m-   "change from",[39m
[31m+   "change to",[39m
[31m+   "insert",[39m
[2m    "common",[22m
[2m  }[22m]=]

snapshots['options omitAnnotationLines true diffStringsUnified and includeChangeCounts true 1'] = [[
[32m- change [7mfrom[27m[39m
[31m+ change [7mto[27m[39m
[2m  common[22m]]

snapshots['options omitAnnotationLines true diffStringsUnified empty strings 1'] = ''

snapshots['options trailingSpaceFormatter diffDefault default no color 1'] = [[
[32m- Expected[39m
[31m+ Received[39m

[32m- delete 1 trailing space: [39m
[31m+ delete 1 trailing space:[39m
[2m  common 2 trailing spaces:  [22m
[32m- insert 1 trailing space:[39m
[31m+ insert 1 trailing space: [39m]]

snapshots['options trailingSpaceFormatter diffDefault middle dot 1'] = [[
[32m- Expected[39m
[31m+ Received[39m

[32m- delete 1 trailing space:·[39m
[31m+ delete 1 trailing space:[39m
[2m  common 2 trailing spaces:··[22m
[32m- insert 1 trailing space:[39m
[31m+ insert 1 trailing space:·[39m]]

snapshots['options trailingSpaceFormatter diffDefault yellowish common 1'] = [[
[32m- Expected[39m
[31m+ Received[39m

[32m- delete 1 trailing space: [39m
[31m+ delete 1 trailing space:[39m
[2m  common 2 trailing spaces:[43m  [49m[22m
[32m- insert 1 trailing space:[39m
[31m+ insert 1 trailing space: [39m]]

return snapshots