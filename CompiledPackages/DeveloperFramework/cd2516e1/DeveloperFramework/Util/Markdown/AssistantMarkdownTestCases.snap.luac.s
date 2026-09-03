MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 3
        3 DUPTABLE                         R1 K5 [{[1] = "incomplete code block", ["markdown"] = "# Assistant Response\n\nHere's some code that I am in middle of writing:\n\n```lua\n-- factorial function\nfunction fact(n)\n  if n == 0 then\n    -- comment\n    return 1\n  else\n    return n * fact(n-1)", ["ast"]}]
        4 DUPTABLE                         R2 K11 [{[1] = "ROOT", ["index"] = 1, ["offset"] = 1, ["children"]}]
        5 NEWTABLE                         R3 0 3
        7 DUPTABLE                         R4 K17 [{["index"] = 1, ["isBlock"] = True, [3] = "HEADING", ["offset"] = 0, ["attributes"], ["children"]}]
        8 DUPTABLE                         R5 K19 [{["depth"] = 1}]
        9 SETTABLEKS                       R5 R4 K16 ["attributes"]
       11 NEWTABLE                         R5 0 1
       13 DUPTABLE                         R6 K24 [{["children"], ["index"] = 1, [3] = "TEXT", ["offset"] = 2, ["text"] = "Assistant Response"}]
       14 NEWTABLE                         R7 0 0
       16 SETTABLEKS                       R7 R6 K10 ["children"]
       18 SETLIST                          R5 R6 1 [1]
       20 SETTABLEKS                       R5 R4 K10 ["children"]
       22 DUPTABLE                         R5 K27 [{["index"] = 2, [2] = "PARAGRAPH", ["offset"] = 22, ["children"]}]
       23 NEWTABLE                         R6 0 1
       25 DUPTABLE                         R7 K29 [{["children"], ["index"] = 1, [3] = "TEXT", ["offset"] = 22, ["text"] = "Here's some code that I am in middle of writing:"}]
       26 NEWTABLE                         R8 0 0
       28 SETTABLEKS                       R8 R7 K10 ["children"]
       30 SETLIST                          R6 R7 1 [1]
       32 SETTABLEKS                       R6 R5 K10 ["children"]
       34 DUPTABLE                         R6 K34 [{["index"] = 3, [2] = "CODE_BLOCK", ["offset"] = 72, ["attributes"], ["children"], ["text"] = "-- factorial function\nfunction fact(n)\n  if n == 0 then\n    -- comment\n    return 1\n  else\n    return n * fact(n-1)"}]
       35 DUPTABLE                         R7 K37 [{["language"] = "lua"}]
       36 SETTABLEKS                       R7 R6 K16 ["attributes"]
       38 NEWTABLE                         R7 0 0
       40 SETTABLEKS                       R7 R6 K10 ["children"]
       42 SETLIST                          R3 R4 3 [1]
       44 SETTABLEKS                       R3 R2 K10 ["children"]
       46 SETTABLEKS                       R2 R1 K4 ["ast"]
       48 DUPTABLE                         R2 K40 [{[1] = "incomplete inline code", ["markdown"] = "Here's some `inline code that doesn't have an end", ["ast"]}]
       49 DUPTABLE                         R3 K11 [{[1] = "ROOT", ["index"] = 1, ["offset"] = 1, ["children"]}]
       50 NEWTABLE                         R4 0 1
       52 DUPTABLE                         R5 K41 [{[1] = "PARAGRAPH", ["index"] = 1, ["offset"] = 0, ["children"]}]
       53 NEWTABLE                         R6 0 2
       55 DUPTABLE                         R7 K43 [{[1] = "TEXT", ["index"] = 1, ["offset"] = 0, ["text"] = "Here's some ", ["children"]}]
       56 NEWTABLE                         R8 0 0
       58 SETTABLEKS                       R8 R7 K10 ["children"]
       60 DUPTABLE                         R8 K46 [{[1] = "STYLED_TEXT", ["index"] = 2, ["offset"] = 13, ["attributes"], ["children"]}]
       61 DUPTABLE                         R9 K49 [{["style"] = "INLINE_CODE"}]
       62 SETTABLEKS                       R9 R8 K16 ["attributes"]
       64 NEWTABLE                         R9 0 1
       66 DUPTABLE                         R10 K52 [{[1] = "TEXT", ["index"] = 1, ["offset"] = 14, ["text"] = "inline code that doesn't have an end", ["children"]}]
       67 NEWTABLE                         R11 0 0
       69 SETTABLEKS                       R11 R10 K10 ["children"]
       71 SETLIST                          R9 R10 1 [1]
       73 SETTABLEKS                       R9 R8 K10 ["children"]
       75 SETLIST                          R6 R7 2 [1]
       77 SETTABLEKS                       R6 R5 K10 ["children"]
       79 SETLIST                          R4 R5 1 [1]
       81 SETTABLEKS                       R4 R3 K10 ["children"]
       83 SETTABLEKS                       R3 R2 K4 ["ast"]
       85 DUPTABLE                         R3 K55 [{[1] = "overlapping styles", ["markdown"] = "Here's some *styling _like* this_ with overlapping styles", ["ast"]}]
       86 DUPTABLE                         R4 K11 [{[1] = "ROOT", ["index"] = 1, ["offset"] = 1, ["children"]}]
       87 NEWTABLE                         R5 0 1
       89 DUPTABLE                         R6 K56 [{["index"] = 1, ["offset"] = 0, [3] = "PARAGRAPH", ["children"]}]
       90 NEWTABLE                         R7 0 3
       92 DUPTABLE                         R8 K57 [{["index"] = 1, ["children"], [3] = "TEXT", ["offset"] = 0, ["text"] = "Here's some "}]
       93 NEWTABLE                         R9 0 0
       95 SETTABLEKS                       R9 R8 K10 ["children"]
       97 DUPTABLE                         R9 K58 [{["index"] = 2, ["children"], ["attributes"], [4] = "STYLED_TEXT", ["offset"] = 13}]
       98 NEWTABLE                         R10 0 1
      100 DUPTABLE                         R11 K60 [{["index"] = 1, ["children"], [3] = "TEXT", ["offset"] = 14, ["text"] = "styling _like"}]
      101 NEWTABLE                         R12 0 0
      103 SETTABLEKS                       R12 R11 K10 ["children"]
      105 SETLIST                          R10 R11 1 [1]
      107 SETTABLEKS                       R10 R9 K10 ["children"]
      109 DUPTABLE                         R10 K62 [{["style"] = "BOLD"}]
      110 SETTABLEKS                       R10 R9 K16 ["attributes"]
      112 DUPTABLE                         R10 K65 [{["index"] = 3, ["children"], [3] = "TEXT", ["offset"] = 28, ["text"] = " this_ with overlapping styles"}]
      113 NEWTABLE                         R11 0 0
      115 SETTABLEKS                       R11 R10 K10 ["children"]
      117 SETLIST                          R7 R8 3 [1]
      119 SETTABLEKS                       R7 R6 K10 ["children"]
      121 SETLIST                          R5 R6 1 [1]
      123 SETTABLEKS                       R5 R4 K10 ["children"]
      125 SETTABLEKS                       R4 R3 K4 ["ast"]
      127 SETLIST                          R0 R1 3 [1]
      129 RETURN                           R0 1
