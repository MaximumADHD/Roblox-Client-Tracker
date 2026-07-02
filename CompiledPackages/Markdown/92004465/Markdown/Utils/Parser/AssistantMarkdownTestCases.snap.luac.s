MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Utils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["FFlagMarkdownCommonMarkCompliance"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 0 3
       18 DUPTABLE                         R3 K14 [{["name"] = "incomplete code block", ["markdown"] = "# Assistant Response\n\nHere's some code that I am in middle of writing:\n\n```lua\n-- factorial function\nfunction fact(n)\n  if n == 0 then\n    -- comment\n    return 1\n  else\n    return n * fact(n-1)", ["ast"]}]
       19 DUPTABLE                         R4 K20 [{["name"] = "ROOT", ["index"] = 1, ["offset"] = 1, ["children"]}]
       20 NEWTABLE                         R5 0 3
       22 DUPTABLE                         R6 K26 [{["index"] = 1, ["isBlock"] = True, ["name"] = "HEADING", ["offset"] = 0, ["attributes"], ["children"]}]
       23 DUPTABLE                         R7 K28 [{["depth"] = 1}]
       24 SETTABLEKS                       R7 R6 K25 ["attributes"]
       26 NEWTABLE                         R7 0 1
       28 DUPTABLE                         R8 K33 [{["children"], ["index"] = 1, ["name"] = "TEXT", ["offset"] = 2, ["text"] = "Assistant Response"}]
       29 NEWTABLE                         R9 0 0
       31 SETTABLEKS                       R9 R8 K19 ["children"]
       33 SETLIST                          R7 R8 1 [1]
       35 SETTABLEKS                       R7 R6 K19 ["children"]
       37 DUPTABLE                         R7 K36 [{["index"] = 2, ["name"] = "PARAGRAPH", ["offset"] = 22, ["children"]}]
       38 NEWTABLE                         R8 0 1
       40 DUPTABLE                         R9 K38 [{["children"], ["index"] = 1, ["name"] = "TEXT", ["offset"] = 22, ["text"] = "Here's some code that I am in middle of writing:"}]
       41 NEWTABLE                         R10 0 0
       43 SETTABLEKS                       R10 R9 K19 ["children"]
       45 SETLIST                          R8 R9 1 [1]
       47 SETTABLEKS                       R8 R7 K19 ["children"]
       49 DUPTABLE                         R8 K43 [{["index"] = 3, ["name"] = "CODE_BLOCK", ["offset"] = 72, ["attributes"], ["children"], ["text"] = "-- factorial function\nfunction fact(n)\n  if n == 0 then\n    -- comment\n    return 1\n  else\n    return n * fact(n-1)"}]
       50 DUPTABLE                         R9 K46 [{["language"] = "lua"}]
       51 SETTABLEKS                       R9 R8 K25 ["attributes"]
       53 NEWTABLE                         R9 0 0
       55 SETTABLEKS                       R9 R8 K19 ["children"]
       57 SETLIST                          R5 R6 3 [1]
       59 SETTABLEKS                       R5 R4 K19 ["children"]
       61 SETTABLEKS                       R4 R3 K13 ["ast"]
       63 JUMPIFNOT                        R1 ; [+38]
       64 DUPTABLE                         R4 K49 [{["name"] = "incomplete inline code", ["markdown"] = "Here's some `inline code that doesn't have an end", ["ast"]}]
       65 DUPTABLE                         R5 K20 [{["name"] = "ROOT", ["index"] = 1, ["offset"] = 1, ["children"]}]
       66 NEWTABLE                         R6 0 1
       68 DUPTABLE                         R7 K50 [{["name"] = "PARAGRAPH", ["index"] = 1, ["offset"] = 0, ["children"]}]
       69 NEWTABLE                         R8 0 2
       71 DUPTABLE                         R9 K52 [{["name"] = "TEXT", ["index"] = 1, ["offset"] = 0, ["text"] = "Here's some ", ["children"]}]
       72 NEWTABLE                         R10 0 0
       74 SETTABLEKS                       R10 R9 K19 ["children"]
       76 DUPTABLE                         R10 K55 [{["name"] = "STYLED_TEXT", ["index"] = 2, ["offset"] = 13, ["attributes"], ["children"]}]
       77 DUPTABLE                         R11 K58 [{["style"] = "INLINE_CODE"}]
       78 SETTABLEKS                       R11 R10 K25 ["attributes"]
       80 NEWTABLE                         R11 0 1
       82 DUPTABLE                         R12 K61 [{["name"] = "TEXT", ["index"] = 1, ["offset"] = 14, ["text"] = "inline code that doesn't have an end", ["children"]}]
       83 NEWTABLE                         R13 0 0
       85 SETTABLEKS                       R13 R12 K19 ["children"]
       87 SETLIST                          R11 R12 1 [1]
       89 SETTABLEKS                       R11 R10 K19 ["children"]
       91 SETLIST                          R8 R9 2 [1]
       93 SETTABLEKS                       R8 R7 K19 ["children"]
       95 SETLIST                          R6 R7 1 [1]
       97 SETTABLEKS                       R6 R5 K19 ["children"]
       99 SETTABLEKS                       R5 R4 K13 ["ast"]
      101 JUMP                             ; [+27]
      102 DUPTABLE                         R4 K49 [{["name"] = "incomplete inline code", ["markdown"] = "Here's some `inline code that doesn't have an end", ["ast"]}]
      103 DUPTABLE                         R5 K20 [{["name"] = "ROOT", ["index"] = 1, ["offset"] = 1, ["children"]}]
      104 NEWTABLE                         R6 0 1
      106 DUPTABLE                         R7 K62 [{["index"] = 1, ["offset"] = 0, ["name"] = "PARAGRAPH", ["children"]}]
      107 NEWTABLE                         R8 0 2
      109 DUPTABLE                         R9 K63 [{["children"], ["index"] = 1, ["name"] = "TEXT", ["offset"] = 0, ["text"] = "Here's some "}]
      110 NEWTABLE                         R10 0 0
      112 SETTABLEKS                       R10 R9 K19 ["children"]
      114 DUPTABLE                         R10 K64 [{["children"], ["index"] = 2, ["name"] = "INLINE_CODE", ["offset"] = 13, ["text"] = "inline code that doesn't have an end"}]
      115 NEWTABLE                         R11 0 0
      117 SETTABLEKS                       R11 R10 K19 ["children"]
      119 SETLIST                          R8 R9 2 [1]
      121 SETTABLEKS                       R8 R7 K19 ["children"]
      123 SETLIST                          R6 R7 1 [1]
      125 SETTABLEKS                       R6 R5 K19 ["children"]
      127 SETTABLEKS                       R5 R4 K13 ["ast"]
      129 JUMPIFNOT                        R1 ; [+43]
      130 DUPTABLE                         R5 K67 [{["name"] = "overlapping styles", ["markdown"] = "Here's some *styling _like* this_ with overlapping styles", ["ast"]}]
      131 DUPTABLE                         R6 K20 [{["name"] = "ROOT", ["index"] = 1, ["offset"] = 1, ["children"]}]
      132 NEWTABLE                         R7 0 1
      134 DUPTABLE                         R8 K62 [{["index"] = 1, ["offset"] = 0, ["name"] = "PARAGRAPH", ["children"]}]
      135 NEWTABLE                         R9 0 3
      137 DUPTABLE                         R10 K68 [{["index"] = 1, ["children"], ["name"] = "TEXT", ["offset"] = 0, ["text"] = "Here's some "}]
      138 NEWTABLE                         R11 0 0
      140 SETTABLEKS                       R11 R10 K19 ["children"]
      142 DUPTABLE                         R11 K69 [{["index"] = 2, ["children"], ["attributes"], ["name"] = "STYLED_TEXT", ["offset"] = 13}]
      143 NEWTABLE                         R12 0 1
      145 DUPTABLE                         R13 K71 [{["index"] = 1, ["children"], ["name"] = "TEXT", ["offset"] = 14, ["text"] = "styling _like"}]
      146 NEWTABLE                         R14 0 0
      148 SETTABLEKS                       R14 R13 K19 ["children"]
      150 SETLIST                          R12 R13 1 [1]
      152 SETTABLEKS                       R12 R11 K19 ["children"]
      154 DUPTABLE                         R12 K73 [{["style"] = "BOLD"}]
      155 SETTABLEKS                       R12 R11 K25 ["attributes"]
      157 DUPTABLE                         R12 K76 [{["index"] = 3, ["children"], ["name"] = "TEXT", ["offset"] = 28, ["text"] = " this_ with overlapping styles"}]
      158 NEWTABLE                         R13 0 0
      160 SETTABLEKS                       R13 R12 K19 ["children"]
      162 SETLIST                          R9 R10 3 [1]
      164 SETTABLEKS                       R9 R8 K19 ["children"]
      166 SETLIST                          R7 R8 1 [1]
      168 SETTABLEKS                       R7 R6 K19 ["children"]
      170 SETTABLEKS                       R6 R5 K13 ["ast"]
      172 JUMP                             ; [+1]
      173 LOADNIL                          R5
      174 SETLIST                          R2 R3 3 [1]
      176 RETURN                           R2 1
