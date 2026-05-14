PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R4 R0 K1 ["action"]
        7 GETTABLEKS                       R4 R4 K2 ["uuid"]
        9 GETTABLEKS                       R6 R0 K3 ["LayoutOrder"]
       11 FASTCALL1                        TOSTRING R6 ; [+2]
       12 GETIMPORT                        R5 K5 [tostring]
       14 CALL                             R5 1 1
       15 CONCAT                           R3 R4 R5
       16 GETTABLEKS                       R4 R0 K1 ["action"]
       18 LOADK                            R5 K6 ["InputAction"]
       19 CALL                             R2 3 2
       20 LOADB                            R4 0
       21 LOADB                            R5 0
       22 GETUPVAL                         R6 2
       23 CALL                             R6 0 3
       24 FORGPREP                         R6
       25 GETTABLEKS                       R12 R0 K7 ["bindings"]
       27 GETTABLE                         R11 R12 R10
       28 JUMPIFNOT                        R11 ; [+14]
       29 GETTABLEKS                       R12 R11 K8 ["primaryModifier"]
       31 GETIMPORT                        R13 K12 [Enum.KeyCode.Unknown]
       33 JUMPIFEQ                         R12 R13 ; [+2]
       35 LOADB                            R4 1
       36 GETTABLEKS                       R12 R11 K13 ["secondaryModifier"]
       38 GETIMPORT                        R13 K12 [Enum.KeyCode.Unknown]
       40 JUMPIFEQ                         R12 R13 ; [+2]
       42 LOADB                            R5 1
       43 FORGLOOP                         R6 2 ; [-19]
       45 OR                               R6 R4 R5
       46 NEWTABLE                         R7 2 0
       48 JUMPIFNOT                        R2 ; [+77]
       49 JUMPIFNOT                        R6 ; [+76]
       50 JUMPIFNOT                        R4 ; [+37]
       51 GETUPVAL                         R8 3
       52 GETTABLEKS                       R8 R8 K14 ["createElement"]
       54 GETUPVAL                         R9 4
       55 DUPTABLE                         R10 K19 [{"action", "bindings", "depth", "icon", "LayoutOrder", "name", "property"}]
       56 GETTABLEKS                       R11 R0 K1 ["action"]
       58 SETTABLEKS                       R11 R10 K1 ["action"]
       60 GETTABLEKS                       R11 R0 K7 ["bindings"]
       62 SETTABLEKS                       R11 R10 K7 ["bindings"]
       64 GETTABLEKS                       R12 R0 K17 ["name"]
       66 JUMPIFNOT                        R12 ; [+2]
       67 LOADN                            R11 2
       68 JUMP                             ; [+1]
       69 LOADN                            R11 3
       70 SETTABLEKS                       R11 R10 K15 ["depth"]
       72 LOADK                            R11 K20 ["InputBinding"]
       73 SETTABLEKS                       R11 R10 K16 ["icon"]
       75 MOVE                             R11 R1
       76 CALL                             R11 0 1
       77 SETTABLEKS                       R11 R10 K3 ["LayoutOrder"]
       79 LOADK                            R11 K21 ["Primary Modifier"]
       80 SETTABLEKS                       R11 R10 K17 ["name"]
       82 LOADK                            R11 K8 ["primaryModifier"]
       83 SETTABLEKS                       R11 R10 K18 ["property"]
       85 CALL                             R8 2 1
       86 SETTABLEKS                       R8 R7 K8 ["primaryModifier"]
       88 JUMPIFNOT                        R5 ; [+37]
       89 GETUPVAL                         R8 3
       90 GETTABLEKS                       R8 R8 K14 ["createElement"]
       92 GETUPVAL                         R9 4
       93 DUPTABLE                         R10 K19 [{"action", "bindings", "depth", "icon", "LayoutOrder", "name", "property"}]
       94 GETTABLEKS                       R11 R0 K1 ["action"]
       96 SETTABLEKS                       R11 R10 K1 ["action"]
       98 GETTABLEKS                       R11 R0 K7 ["bindings"]
      100 SETTABLEKS                       R11 R10 K7 ["bindings"]
      102 GETTABLEKS                       R12 R0 K17 ["name"]
      104 JUMPIFNOT                        R12 ; [+2]
      105 LOADN                            R11 2
      106 JUMP                             ; [+1]
      107 LOADN                            R11 3
      108 SETTABLEKS                       R11 R10 K15 ["depth"]
      110 LOADK                            R11 K20 ["InputBinding"]
      111 SETTABLEKS                       R11 R10 K16 ["icon"]
      113 MOVE                             R11 R1
      114 CALL                             R11 0 1
      115 SETTABLEKS                       R11 R10 K3 ["LayoutOrder"]
      117 LOADK                            R11 K22 ["Secondary Modifier"]
      118 SETTABLEKS                       R11 R10 K17 ["name"]
      120 LOADK                            R11 K13 ["secondaryModifier"]
      121 SETTABLEKS                       R11 R10 K18 ["property"]
      123 CALL                             R8 2 1
      124 SETTABLEKS                       R8 R7 K13 ["secondaryModifier"]
      126 GETUPVAL                         R8 3
      127 GETTABLEKS                       R8 R8 K14 ["createElement"]
      129 GETUPVAL                         R9 5
      130 DUPTABLE                         R10 K25 [{"LayoutOrder", "tag", "testId"}]
      131 GETTABLEKS                       R11 R0 K3 ["LayoutOrder"]
      133 SETTABLEKS                       R11 R10 K3 ["LayoutOrder"]
      135 LOADK                            R11 K26 ["size-full-0 auto-y col"]
      136 SETTABLEKS                       R11 R10 K23 ["tag"]
      138 LOADK                            R12 K27 ["key-code-binding-%*"]
      139 GETTABLEKS                       R14 R0 K28 ["index"]
      141 NAMECALL                         R12 R12 K29 ["format"]
      143 CALL                             R12 2 1
      144 MOVE                             R11 R12
      145 SETTABLEKS                       R11 R10 K24 ["testId"]
      147 DUPTABLE                         R11 K32 [{"HeaderRow", "Children"}]
      148 GETUPVAL                         R12 3
      149 GETTABLEKS                       R12 R12 K14 ["createElement"]
      151 GETUPVAL                         R13 4
      152 DUPTABLE                         R14 K35 [{"action", "bindings", "depth", "expanded", "setExpanded", "icon", "LayoutOrder", "name", "property"}]
      153 GETTABLEKS                       R15 R0 K1 ["action"]
      155 SETTABLEKS                       R15 R14 K1 ["action"]
      157 GETTABLEKS                       R15 R0 K7 ["bindings"]
      159 SETTABLEKS                       R15 R14 K7 ["bindings"]
      161 GETTABLEKS                       R16 R0 K17 ["name"]
      163 JUMPIFNOT                        R16 ; [+2]
      164 LOADN                            R15 1
      165 JUMP                             ; [+1]
      166 LOADN                            R15 2
      167 SETTABLEKS                       R15 R14 K15 ["depth"]
      169 JUMPIFNOT                        R6 ; [+2]
      170 MOVE                             R15 R2
      171 JUMP                             ; [+1]
      172 LOADNIL                          R15
      173 SETTABLEKS                       R15 R14 K33 ["expanded"]
      175 JUMPIFNOT                        R6 ; [+2]
      176 MOVE                             R15 R3
      177 JUMP                             ; [+1]
      178 LOADNIL                          R15
      179 SETTABLEKS                       R15 R14 K34 ["setExpanded"]
      181 GETTABLEKS                       R16 R0 K17 ["name"]
      183 JUMPIFNOT                        R16 ; [+2]
      184 LOADK                            R15 K6 ["InputAction"]
      185 JUMP                             ; [+1]
      186 LOADK                            R15 K20 ["InputBinding"]
      187 SETTABLEKS                       R15 R14 K16 ["icon"]
      189 MOVE                             R15 R1
      190 CALL                             R15 0 1
      191 SETTABLEKS                       R15 R14 K3 ["LayoutOrder"]
      193 GETTABLEKS                       R16 R0 K17 ["name"]
      195 ORK                              R15 R16 K36 ["Keycode"]
      196 SETTABLEKS                       R15 R14 K17 ["name"]
      198 LOADK                            R15 K37 ["keyCode"]
      199 SETTABLEKS                       R15 R14 K18 ["property"]
      201 CALL                             R12 2 1
      202 SETTABLEKS                       R12 R11 K30 ["HeaderRow"]
      204 MOVE                             R12 R6
      205 JUMPIFNOT                        R12 ; [+14]
      206 GETUPVAL                         R12 3
      207 GETTABLEKS                       R12 R12 K14 ["createElement"]
      209 GETUPVAL                         R13 5
      210 DUPTABLE                         R14 K38 [{"LayoutOrder", "tag"}]
      211 MOVE                             R15 R1
      212 CALL                             R15 0 1
      213 SETTABLEKS                       R15 R14 K3 ["LayoutOrder"]
      215 LOADK                            R15 K26 ["size-full-0 auto-y col"]
      216 SETTABLEKS                       R15 R14 K23 ["tag"]
      218 MOVE                             R15 R7
      219 CALL                             R12 3 1
      220 SETTABLEKS                       R12 R11 K31 ["Children"]
      222 CALL                             R8 3 -1
      223 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["View"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Components"]
       36 GETTABLEKS                       R6 R6 K13 ["Tree"]
       38 GETTABLEKS                       R6 R6 K14 ["EditableRow"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K11 ["Src"]
       45 GETTABLEKS                       R7 R7 K15 ["Types"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R0 K11 ["Src"]
       52 GETTABLEKS                       R8 R8 K16 ["Util"]
       54 GETTABLEKS                       R8 R8 K17 ["getSchemas"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R9 R0 K11 ["Src"]
       61 GETTABLEKS                       R9 R9 K18 ["Hooks"]
       63 GETTABLEKS                       R9 R9 K19 ["useExpanded"]
       65 CALL                             R8 1 1
       66 DUPCLOSURE                       R9 K20 [PROTO_0]
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R4
       73 RETURN                           R9 1
