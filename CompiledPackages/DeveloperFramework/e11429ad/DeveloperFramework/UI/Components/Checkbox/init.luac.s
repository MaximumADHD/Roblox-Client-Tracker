PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Disabled"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["OnClick"]
       10 JUMPIF                           R0 ; [+8]
       11 JUMPIFNOT                        R1 ; [+7]
       12 MOVE                             R2 R1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K0 ["props"]
       16 GETTABLEKS                       R3 R3 K3 ["Key"]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onClick"]
        4 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Checked"]
        4 GETTABLEKS                       R3 R1 K2 ["Disabled"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R6 R1 K5 ["Text"]
       10 ORK                              R5 R6 K4 [""]
       11 GETTABLEKS                       R6 R1 K6 ["TextWrapped"]
       13 GETTABLEKS                       R7 R1 K7 ["Stylizer"]
       15 LOADNIL                          R8
       16 LOADNIL                          R9
       17 JUMPIFNOT                        R3 ; [+7]
       18 GETUPVAL                         R10 0
       19 JUMPIF                           R10 ; [+3]
       20 GETUPVAL                         R10 1
       21 GETTABLEKS                       R8 R10 K2 ["Disabled"]
       23 LOADK                            R9 K2 ["Disabled"]
       24 JUMP                             ; [+19]
       25 GETUPVAL                         R10 2
       26 GETTABLEKS                       R10 R10 K8 ["Indeterminate"]
       28 JUMPIFNOTEQ                      R2 R10 ; [+8]
       30 GETUPVAL                         R10 0
       31 JUMPIF                           R10 ; [+3]
       32 GETUPVAL                         R10 1
       33 GETTABLEKS                       R8 R10 K8 ["Indeterminate"]
       35 LOADK                            R9 K8 ["Indeterminate"]
       36 JUMP                             ; [+7]
       37 JUMPIFNOT                        R2 ; [+6]
       38 GETUPVAL                         R10 0
       39 JUMPIF                           R10 ; [+3]
       40 GETUPVAL                         R10 1
       41 GETTABLEKS                       R8 R10 K9 ["Selected"]
       43 LOADK                            R9 K1 ["Checked"]
       44 GETUPVAL                         R11 0
       45 JUMPIFNOT                        R11 ; [+10]
       46 GETUPVAL                         R10 3
       47 LOADK                            R11 K10 ["Component-Checkbox"]
       48 MOVE                             R12 R9
       49 GETUPVAL                         R15 4
       50 GETTABLEKS                       R15 R15 K12 ["Tag"]
       52 GETTABLE                         R14 R1 R15
       53 ORK                              R13 R14 K11 ["X-Fit X-Left X-Middle X-RowS IconOnly Compact"]
       54 CALL                             R10 3 1
       55 JUMP                             ; [+1]
       56 LOADNIL                          R10
       57 GETUPVAL                         R12 0
       58 JUMPIFNOT                        R12 ; [+15]
       59 NEWTABLE                         R11 4 0
       61 NEWTABLE                         R12 0 0
       63 SETTABLEKS                       R12 R11 K13 ["LeftIcon"]
       65 GETTABLEKS                       R12 R0 K14 ["onClick"]
       67 SETTABLEKS                       R12 R11 K15 ["OnClick"]
       69 GETUPVAL                         R12 4
       70 GETTABLEKS                       R12 R12 K12 ["Tag"]
       72 SETTABLE                         R10 R11 R12
       73 JUMP                             ; [+13]
       74 DUPTABLE                         R11 K19 [{"OnClick", "Size", "Style", "StyleModifier"}]
       75 GETTABLEKS                       R12 R0 K14 ["onClick"]
       77 SETTABLEKS                       R12 R11 K15 ["OnClick"]
       79 GETTABLEKS                       R12 R7 K20 ["ImageSize"]
       81 SETTABLEKS                       R12 R11 K16 ["Size"]
       83 SETTABLEKS                       R7 R11 K17 ["Style"]
       85 SETTABLEKS                       R8 R11 K18 ["StyleModifier"]
       87 JUMPIFNOTEQKS                    R5 K4 [""] ; [+21]
       89 GETUPVAL                         R12 5
       90 GETTABLEKS                       R12 R12 K21 ["createElement"]
       92 GETUPVAL                         R14 0
       93 JUMPIFNOT                        R14 ; [+2]
       94 GETUPVAL                         R13 6
       95 JUMP                             ; [+1]
       96 GETUPVAL                         R13 7
       97 GETUPVAL                         R14 8
       98 MOVE                             R15 R11
       99 DUPTABLE                         R16 K22 [{"LayoutOrder"}]
      100 SETTABLEKS                       R4 R16 K3 ["LayoutOrder"]
      102 CALL                             R14 2 1
      103 GETUPVAL                         R16 5
      104 GETTABLEKS                       R16 R16 K23 ["Children"]
      106 GETTABLE                         R15 R1 R16
      107 CALL                             R12 3 -1
      108 RETURN                           R12 -1
      109 DUPTABLE                         R12 K26 [{"Button", "Label"}]
      110 GETUPVAL                         R13 5
      111 GETTABLEKS                       R13 R13 K21 ["createElement"]
      113 GETUPVAL                         R15 0
      114 JUMPIFNOT                        R15 ; [+2]
      115 GETUPVAL                         R14 6
      116 JUMP                             ; [+1]
      117 GETUPVAL                         R14 7
      118 GETUPVAL                         R15 8
      119 MOVE                             R16 R11
      120 DUPTABLE                         R17 K28 [{["LayoutOrder"] = 1}]
      121 CALL                             R15 2 -1
      122 CALL                             R13 -1 1
      123 SETTABLEKS                       R13 R12 K24 ["Button"]
      125 GETUPVAL                         R13 5
      126 GETTABLEKS                       R13 R13 K21 ["createElement"]
      128 GETUPVAL                         R14 9
      129 GETUPVAL                         R16 0
      130 JUMPIFNOT                        R16 ; [+18]
      131 NEWTABLE                         R15 4 0
      133 LOADN                            R16 2
      134 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
      136 SETTABLEKS                       R5 R15 K5 ["Text"]
      138 SETTABLEKS                       R6 R15 K6 ["TextWrapped"]
      140 GETUPVAL                         R16 4
      141 GETTABLEKS                       R16 R16 K12 ["Tag"]
      143 GETUPVAL                         R17 3
      144 LOADK                            R18 K29 ["X-Fit"]
      145 MOVE                             R19 R9
      146 CALL                             R17 2 1
      147 SETTABLE                         R17 R15 R16
      148 JUMP                             ; [+11]
      149 DUPTABLE                         R15 K32 [{["AutomaticSize"], ["LayoutOrder"] = 2, ["StyleModifier"], ["Text"], ["TextWrapped"]}]
      150 GETIMPORT                        R16 K35 [Enum.AutomaticSize.XY]
      152 SETTABLEKS                       R16 R15 K30 ["AutomaticSize"]
      154 SETTABLEKS                       R8 R15 K18 ["StyleModifier"]
      156 SETTABLEKS                       R5 R15 K5 ["Text"]
      158 SETTABLEKS                       R6 R15 K6 ["TextWrapped"]
      160 CALL                             R13 2 1
      161 SETTABLEKS                       R13 R12 K25 ["Label"]
      163 GETUPVAL                         R14 0
      164 JUMPIFNOT                        R14 ; [+11]
      165 NEWTABLE                         R13 2 0
      167 GETTABLEKS                       R14 R1 K36 ["Position"]
      169 SETTABLEKS                       R14 R13 K36 ["Position"]
      171 GETUPVAL                         R14 4
      172 GETTABLEKS                       R14 R14 K12 ["Tag"]
      174 SETTABLE                         R10 R13 R14
      175 JUMP                             ; [+25]
      176 DUPTABLE                         R13 K40 [{"AutomaticSize", "HorizontalAlignment", "Layout", "OnClick", "Position", "Spacing"}]
      177 GETIMPORT                        R14 K35 [Enum.AutomaticSize.XY]
      179 SETTABLEKS                       R14 R13 K30 ["AutomaticSize"]
      181 GETIMPORT                        R14 K42 [Enum.HorizontalAlignment.Left]
      183 SETTABLEKS                       R14 R13 K37 ["HorizontalAlignment"]
      185 GETIMPORT                        R14 K45 [Enum.FillDirection.Horizontal]
      187 SETTABLEKS                       R14 R13 K38 ["Layout"]
      189 GETTABLEKS                       R14 R0 K14 ["onClick"]
      191 SETTABLEKS                       R14 R13 K15 ["OnClick"]
      193 GETTABLEKS                       R14 R1 K36 ["Position"]
      195 SETTABLEKS                       R14 R13 K36 ["Position"]
      197 GETTABLEKS                       R14 R7 K39 ["Spacing"]
      199 SETTABLEKS                       R14 R13 K39 ["Spacing"]
      201 GETUPVAL                         R15 5
      202 GETTABLEKS                       R15 R15 K23 ["Children"]
      204 GETTABLE                         R14 R1 R15
      205 JUMPIFNOT                        R14 ; [+31]
      206 GETUPVAL                         R14 8
      207 DUPTABLE                         R15 K47 [{"Wrapper"}]
      208 GETUPVAL                         R16 5
      209 GETTABLEKS                       R16 R16 K21 ["createElement"]
      211 GETUPVAL                         R17 10
      212 MOVE                             R18 R13
      213 MOVE                             R19 R12
      214 CALL                             R16 3 1
      215 SETTABLEKS                       R16 R15 K46 ["Wrapper"]
      217 GETUPVAL                         R17 5
      218 GETTABLEKS                       R17 R17 K23 ["Children"]
      220 GETTABLE                         R16 R1 R17
      221 CALL                             R14 2 1
      222 MOVE                             R12 R14
      223 GETUPVAL                         R14 5
      224 GETTABLEKS                       R14 R14 K21 ["createElement"]
      226 GETUPVAL                         R15 10
      227 DUPTABLE                         R16 K48 [{"AutomaticSize", "LayoutOrder"}]
      228 GETIMPORT                        R17 K35 [Enum.AutomaticSize.XY]
      230 SETTABLEKS                       R17 R16 K30 ["AutomaticSize"]
      232 SETTABLEKS                       R4 R16 K3 ["LayoutOrder"]
      234 MOVE                             R17 R12
      235 CALL                             R14 3 -1
      236 RETURN                           R14 -1
      237 GETUPVAL                         R14 5
      238 GETTABLEKS                       R14 R14 K21 ["createElement"]
      240 GETUPVAL                         R15 10
      241 GETUPVAL                         R16 8
      242 MOVE                             R17 R13
      243 DUPTABLE                         R18 K22 [{"LayoutOrder"}]
      244 SETTABLEKS                       R4 R18 K3 ["LayoutOrder"]
      246 CALL                             R16 2 1
      247 MOVE                             R17 R12
      248 CALL                             R14 3 -1
      249 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETTABLEKS                       R5 R0 K4 ["Parent"]
       27 LOADK                            R7 K10 ["React"]
       28 NAMECALL                         R5 R5 K11 ["FindFirstChild"]
       30 CALL                             R5 2 1
       31 JUMPIFNOT                        R5 ; [+8]
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R5 R0 K4 ["Parent"]
       36 GETTABLEKS                       R5 R5 K10 ["React"]
       38 CALL                             R4 1 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R4
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R6 R0 K12 ["Styling"]
       45 GETTABLEKS                       R6 R6 K13 ["supportsStyleSheets"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K6 [require]
       50 GETTABLEKS                       R7 R0 K12 ["Styling"]
       52 GETTABLEKS                       R7 R7 K14 ["joinTags"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K6 [require]
       57 GETTABLEKS                       R8 R0 K2 ["UI"]
       59 GETTABLEKS                       R8 R8 K15 ["Components"]
       61 GETTABLEKS                       R8 R8 K16 ["DEPRECATED_Button"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K6 [require]
       66 GETTABLEKS                       R9 R0 K2 ["UI"]
       68 GETTABLEKS                       R9 R9 K15 ["Components"]
       70 GETTABLEKS                       R9 R9 K17 ["IconButton"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K6 [require]
       75 GETTABLEKS                       R10 R0 K2 ["UI"]
       77 GETTABLEKS                       R10 R10 K15 ["Components"]
       79 GETTABLEKS                       R10 R10 K18 ["Pane"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K6 [require]
       84 GETTABLEKS                       R11 R0 K2 ["UI"]
       86 GETTABLEKS                       R11 R11 K15 ["Components"]
       88 GETTABLEKS                       R11 R11 K19 ["TextLabel"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K6 [require]
       93 GETTABLEKS                       R12 R0 K20 ["Util"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K6 [require]
       98 GETTABLEKS                       R13 R0 K20 ["Util"]
      100 GETTABLEKS                       R13 R13 K21 ["StyleModifier"]
      102 CALL                             R12 1 1
      103 GETTABLEKS                       R13 R11 K22 ["Symbol"]
      105 GETIMPORT                        R14 K6 [require]
      107 GETTABLEKS                       R15 R0 K20 ["Util"]
      109 GETTABLEKS                       R15 R15 K23 ["Typecheck"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K6 [require]
      114 GETTABLEKS                       R16 R0 K4 ["Parent"]
      116 GETTABLEKS                       R16 R16 K24 ["Dash"]
      118 CALL                             R15 1 1
      119 GETTABLEKS                       R16 R15 K25 ["join"]
      121 GETTABLEKS                       R17 R1 K26 ["PureComponent"]
      123 LOADK                            R19 K27 ["Checkbox"]
      124 NAMECALL                         R17 R17 K28 ["extend"]
      126 CALL                             R17 2 1
      127 GETTABLEKS                       R18 R14 K29 ["wrap"]
      129 MOVE                             R19 R17
      130 GETIMPORT                        R20 K1 [script]
      132 CALL                             R18 2 0
      133 GETTABLEKS                       R18 R13 K30 ["named"]
      135 LOADK                            R19 K31 ["Indeterminate"]
      136 CALL                             R18 1 1
      137 SETTABLEKS                       R18 R17 K31 ["Indeterminate"]
      139 DUPTABLE                         R18 K38 [{["Checked"] = False, ["Disabled"] = False, ["Key"] = "", ["OnClick"]}]
      140 DUPCLOSURE                       R19 K39 [PROTO_0]
      141 SETTABLEKS                       R19 R18 K37 ["OnClick"]
      143 SETTABLEKS                       R18 R17 K40 ["defaultProps"]
      145 DUPCLOSURE                       R18 K41 [PROTO_2]
      146 SETTABLEKS                       R18 R17 K42 ["init"]
      148 NEWCLOSURE                       R18 P2
      149 CAPTURE                          VAL R5
      150 CAPTURE                          VAL R12
      151 CAPTURE                          REF R17
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R16
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R9
      160 SETTABLEKS                       R18 R17 K43 ["render"]
      162 JUMPIF                           R5 ; [+10]
      163 MOVE                             R18 R3
      164 DUPTABLE                         R19 K45 [{"Stylizer"}]
      165 GETTABLEKS                       R20 R2 K44 ["Stylizer"]
      167 SETTABLEKS                       R20 R19 K44 ["Stylizer"]
      169 CALL                             R18 1 1
      170 MOVE                             R19 R17
      171 CALL                             R18 1 1
      172 MOVE                             R17 R18
      173 CLOSEUPVALS                      R17
      174 RETURN                           R17 1
