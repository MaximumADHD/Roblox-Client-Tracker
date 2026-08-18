MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Util"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagDevFrameworkMarkdownCommonMarkCompliance"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 NEWTABLE                         R2 0 3
       19 DUPTABLE                         R3 K14 [{["name"] = "incomplete code block", ["markdown"] = "# Assistant Response\n\nHere's some code that I am in middle of writing:\n\n```lua\n-- factorial function\nfunction fact(n)\n  if n == 0 then\n    -- comment\n    return 1\n  else\n    return n * fact(n-1)", ["ast"]}]
       20 DUPTABLE                         R4 K20 [{["name"] = "ROOT", ["index"] = 1, ["offset"] = 1, ["children"]}]
       21 NEWTABLE                         R5 0 3
       23 DUPTABLE                         R6 K26 [{["index"] = 1, ["isBlock"] = True, ["name"] = "HEADING", ["offset"] = 0, ["attributes"], ["children"]}]
       24 DUPTABLE                         R7 K28 [{["depth"] = 1}]
       25 SETTABLEKS                       R7 R6 K25 ["attributes"]
       27 NEWTABLE                         R7 0 1
       29 DUPTABLE                         R8 K33 [{["children"], ["index"] = 1, ["name"] = "TEXT", ["offset"] = 2, ["text"] = "Assistant Response"}]
       30 NEWTABLE                         R9 0 0
       32 SETTABLEKS                       R9 R8 K19 ["children"]
       34 SETLIST                          R7 R8 1 [1]
       36 SETTABLEKS                       R7 R6 K19 ["children"]
       38 DUPTABLE                         R7 K36 [{["index"] = 2, ["name"] = "PARAGRAPH", ["offset"] = 22, ["children"]}]
       39 NEWTABLE                         R8 0 1
       41 DUPTABLE                         R9 K38 [{["children"], ["index"] = 1, ["name"] = "TEXT", ["offset"] = 22, ["text"] = "Here's some code that I am in middle of writing:"}]
       42 NEWTABLE                         R10 0 0
       44 SETTABLEKS                       R10 R9 K19 ["children"]
       46 SETLIST                          R8 R9 1 [1]
       48 SETTABLEKS                       R8 R7 K19 ["children"]
       50 DUPTABLE                         R8 K43 [{["index"] = 3, ["name"] = "CODE_BLOCK", ["offset"] = 72, ["attributes"], ["children"], ["text"] = "-- factorial function\nfunction fact(n)\n  if n == 0 then\n    -- comment\n    return 1\n  else\n    return n * fact(n-1)"}]
       51 DUPTABLE                         R9 K46 [{["language"] = "lua"}]
       52 SETTABLEKS                       R9 R8 K25 ["attributes"]
       54 NEWTABLE                         R9 0 0
       56 SETTABLEKS                       R9 R8 K19 ["children"]
       58 SETLIST                          R5 R6 3 [1]
       60 SETTABLEKS                       R5 R4 K19 ["children"]
       62 SETTABLEKS                       R4 R3 K13 ["ast"]
       64 JUMPIFNOT                        R1 ; [+38]
       65 DUPTABLE                         R4 K49 [{["name"] = "incomplete inline code", ["markdown"] = "Here's some `inline code that doesn't have an end", ["ast"]}]
       66 DUPTABLE                         R5 K20 [{["name"] = "ROOT", ["index"] = 1, ["offset"] = 1, ["children"]}]
       67 NEWTABLE                         R6 0 1
       69 DUPTABLE                         R7 K50 [{["name"] = "PARAGRAPH", ["index"] = 1, ["offset"] = 0, ["children"]}]
       70 NEWTABLE                         R8 0 2
       72 DUPTABLE                         R9 K52 [{["name"] = "TEXT", ["index"] = 1, ["offset"] = 0, ["text"] = "Here's some ", ["children"]}]
       73 NEWTABLE                         R10 0 0
       75 SETTABLEKS                       R10 R9 K19 ["children"]
       77 DUPTABLE                         R10 K55 [{["name"] = "STYLED_TEXT", ["index"] = 2, ["offset"] = 13, ["attributes"], ["children"]}]
       78 DUPTABLE                         R11 K58 [{["style"] = "INLINE_CODE"}]
       79 SETTABLEKS                       R11 R10 K25 ["attributes"]
       81 NEWTABLE                         R11 0 1
       83 DUPTABLE                         R12 K61 [{["name"] = "TEXT", ["index"] = 1, ["offset"] = 14, ["text"] = "inline code that doesn't have an end", ["children"]}]
       84 NEWTABLE                         R13 0 0
       86 SETTABLEKS                       R13 R12 K19 ["children"]
       88 SETLIST                          R11 R12 1 [1]
       90 SETTABLEKS                       R11 R10 K19 ["children"]
       92 SETLIST                          R8 R9 2 [1]
       94 SETTABLEKS                       R8 R7 K19 ["children"]
       96 SETLIST                          R6 R7 1 [1]
       98 SETTABLEKS                       R6 R5 K19 ["children"]
      100 SETTABLEKS                       R5 R4 K13 ["ast"]
      102 JUMP                             ; [+27]
      103 DUPTABLE                         R4 K49 [{["name"] = "incomplete inline code", ["markdown"] = "Here's some `inline code that doesn't have an end", ["ast"]}]
      104 DUPTABLE                         R5 K20 [{["name"] = "ROOT", ["index"] = 1, ["offset"] = 1, ["children"]}]
      105 NEWTABLE                         R6 0 1
      107 DUPTABLE                         R7 K62 [{["index"] = 1, ["offset"] = 0, ["name"] = "PARAGRAPH", ["children"]}]
      108 NEWTABLE                         R8 0 2
      110 DUPTABLE                         R9 K63 [{["children"], ["index"] = 1, ["name"] = "TEXT", ["offset"] = 0, ["text"] = "Here's some "}]
      111 NEWTABLE                         R10 0 0
      113 SETTABLEKS                       R10 R9 K19 ["children"]
      115 DUPTABLE                         R10 K64 [{["children"], ["index"] = 2, ["name"] = "INLINE_CODE", ["offset"] = 13, ["text"] = "inline code that doesn't have an end"}]
      116 NEWTABLE                         R11 0 0
      118 SETTABLEKS                       R11 R10 K19 ["children"]
      120 SETLIST                          R8 R9 2 [1]
      122 SETTABLEKS                       R8 R7 K19 ["children"]
      124 SETLIST                          R6 R7 1 [1]
      126 SETTABLEKS                       R6 R5 K19 ["children"]
      128 SETTABLEKS                       R5 R4 K13 ["ast"]
      130 JUMPIFNOT                        R1 ; [+43]
      131 DUPTABLE                         R5 K67 [{["name"] = "overlapping styles", ["markdown"] = "Here's some *styling _like* this_ with overlapping styles", ["ast"]}]
      132 DUPTABLE                         R6 K20 [{["name"] = "ROOT", ["index"] = 1, ["offset"] = 1, ["children"]}]
      133 NEWTABLE                         R7 0 1
      135 DUPTABLE                         R8 K62 [{["index"] = 1, ["offset"] = 0, ["name"] = "PARAGRAPH", ["children"]}]
      136 NEWTABLE                         R9 0 3
      138 DUPTABLE                         R10 K68 [{["index"] = 1, ["children"], ["name"] = "TEXT", ["offset"] = 0, ["text"] = "Here's some "}]
      139 NEWTABLE                         R11 0 0
      141 SETTABLEKS                       R11 R10 K19 ["children"]
      143 DUPTABLE                         R11 K69 [{["index"] = 2, ["children"], ["attributes"], ["name"] = "STYLED_TEXT", ["offset"] = 13}]
      144 NEWTABLE                         R12 0 1
      146 DUPTABLE                         R13 K71 [{["index"] = 1, ["children"], ["name"] = "TEXT", ["offset"] = 14, ["text"] = "styling _like"}]
      147 NEWTABLE                         R14 0 0
      149 SETTABLEKS                       R14 R13 K19 ["children"]
      151 SETLIST                          R12 R13 1 [1]
      153 SETTABLEKS                       R12 R11 K19 ["children"]
      155 DUPTABLE                         R12 K73 [{["style"] = "BOLD"}]
      156 SETTABLEKS                       R12 R11 K25 ["attributes"]
      158 DUPTABLE                         R12 K76 [{["index"] = 3, ["children"], ["name"] = "TEXT", ["offset"] = 28, ["text"] = " this_ with overlapping styles"}]
      159 NEWTABLE                         R13 0 0
      161 SETTABLEKS                       R13 R12 K19 ["children"]
      163 SETLIST                          R9 R10 3 [1]
      165 SETTABLEKS                       R9 R8 K19 ["children"]
      167 SETLIST                          R7 R8 1 [1]
      169 SETTABLEKS                       R7 R6 K19 ["children"]
      171 SETTABLEKS                       R6 R5 K13 ["ast"]
      173 JUMP                             ; [+1]
      174 LOADNIL                          R5
      175 SETLIST                          R2 R3 3 [1]
      177 RETURN                           R2 1
