PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["HorizontalAlignment"]
        6 GETTABLEKS                       R4 R1 K3 ["Buttons"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K4 ["Children"]
       11 GETTABLE                         R5 R1 R6
       12 DUPTABLE                         R6 K6 [{"Layout"}]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K7 ["createElement"]
       16 LOADK                            R8 K8 ["UIListLayout"]
       17 DUPTABLE                         R9 K13 [{"Padding", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "FillDirection"}]
       18 GETIMPORT                        R10 K16 [UDim.new]
       20 LOADN                            R11 0
       21 GETTABLEKS                       R12 R2 K17 ["buttonBar"]
       23 GETTABLEKS                       R12 R12 K18 ["padding"]
       25 CALL                             R10 2 1
       26 SETTABLEKS                       R10 R9 K9 ["Padding"]
       28 SETTABLEKS                       R3 R9 K2 ["HorizontalAlignment"]
       30 GETUPVAL                         R11 1
       31 JUMPIFNOT                        R11 ; [+3]
       32 GETIMPORT                        R10 K21 [Enum.VerticalAlignment.Center]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R10
       36 SETTABLEKS                       R10 R9 K10 ["VerticalAlignment"]
       38 GETIMPORT                        R10 K23 [Enum.SortOrder.LayoutOrder]
       40 SETTABLEKS                       R10 R9 K11 ["SortOrder"]
       42 GETIMPORT                        R10 K25 [Enum.FillDirection.Horizontal]
       44 SETTABLEKS                       R10 R9 K12 ["FillDirection"]
       46 MOVE                             R10 R5
       47 CALL                             R7 3 1
       48 SETTABLEKS                       R7 R6 K5 ["Layout"]
       50 GETIMPORT                        R7 K26 [Enum.HorizontalAlignment.Center]
       52 JUMPIFEQ                         R3 R7 ; [+29]
       54 MOVE                             R8 R6
       55 GETUPVAL                         R9 0
       56 GETTABLEKS                       R9 R9 K7 ["createElement"]
       58 LOADK                            R10 K27 ["UIPadding"]
       59 DUPTABLE                         R11 K30 [{"PaddingRight", "PaddingLeft"}]
       60 GETIMPORT                        R12 K16 [UDim.new]
       62 LOADN                            R13 0
       63 GETTABLEKS                       R14 R2 K17 ["buttonBar"]
       65 GETTABLEKS                       R14 R14 K31 ["edgePadding"]
       67 CALL                             R12 2 1
       68 SETTABLEKS                       R12 R11 K28 ["PaddingRight"]
       70 GETIMPORT                        R12 K16 [UDim.new]
       72 LOADN                            R13 0
       73 LOADN                            R14 0
       74 CALL                             R12 2 1
       75 SETTABLEKS                       R12 R11 K29 ["PaddingLeft"]
       77 CALL                             R9 2 -1
       78 FASTCALL                         TABLE_INSERT ; [+2]
       79 GETIMPORT                        R7 K34 [table.insert]
       81 CALL                             R7 -1 0
       82 GETIMPORT                        R7 K36 [ipairs]
       84 MOVE                             R8 R4
       85 CALL                             R7 1 3
       86 FORGPREP_INEXT                   R7
       87 GETUPVAL                         R15 1
       88 JUMPIFNOT                        R15 ; [+34]
       89 GETUPVAL                         R14 2
       90 GETTABLEKS                       R14 R14 K7 ["createElement"]
       92 GETUPVAL                         R15 3
       93 DUPTABLE                         R16 K43 [{"LayoutOrder", "variant", "size", "text", "ZIndex", "onActivated", "isDisabled"}]
       94 SETTABLEKS                       R10 R16 K22 ["LayoutOrder"]
       96 GETTABLEKS                       R18 R11 K37 ["variant"]
       98 ORK                              R17 R18 K44 ["Standard"]
       99 SETTABLEKS                       R17 R16 K37 ["variant"]
      101 LOADK                            R17 K45 ["Medium"]
      102 SETTABLEKS                       R17 R16 K38 ["size"]
      104 GETTABLEKS                       R17 R11 K39 ["text"]
      106 SETTABLEKS                       R17 R16 K39 ["text"]
      108 GETTABLEKS                       R18 R1 K40 ["ZIndex"]
      110 ORK                              R17 R18 K46 [1]
      111 SETTABLEKS                       R17 R16 K40 ["ZIndex"]
      113 GETTABLEKS                       R17 R11 K41 ["onActivated"]
      115 SETTABLEKS                       R17 R16 K41 ["onActivated"]
      117 GETTABLEKS                       R17 R11 K42 ["isDisabled"]
      119 SETTABLEKS                       R17 R16 K42 ["isDisabled"]
      121 CALL                             R14 2 1
      122 JUMP                             ; [+40]
      123 GETUPVAL                         R14 0
      124 GETTABLEKS                       R14 R14 K7 ["createElement"]
      126 GETUPVAL                         R15 3
      127 DUPTABLE                         R16 K52 [{"LayoutOrder", "Style", "Size", "StyleModifier", "Text", "ZIndex", "OnClick"}]
      128 SETTABLEKS                       R10 R16 K22 ["LayoutOrder"]
      130 GETTABLEKS                       R17 R11 K47 ["Style"]
      132 SETTABLEKS                       R17 R16 K47 ["Style"]
      134 GETIMPORT                        R17 K54 [UDim2.new]
      136 LOADN                            R18 0
      137 GETUPVAL                         R19 4
      138 GETTABLEKS                       R19 R19 K55 ["BUTTON_WIDTH"]
      140 LOADN                            R20 1
      141 LOADN                            R21 0
      142 CALL                             R17 4 1
      143 SETTABLEKS                       R17 R16 K48 ["Size"]
      145 GETTABLEKS                       R17 R11 K49 ["StyleModifier"]
      147 SETTABLEKS                       R17 R16 K49 ["StyleModifier"]
      149 GETTABLEKS                       R17 R11 K56 ["Name"]
      151 SETTABLEKS                       R17 R16 K50 ["Text"]
      153 GETTABLEKS                       R18 R1 K40 ["ZIndex"]
      155 ORK                              R17 R18 K46 [1]
      156 SETTABLEKS                       R17 R16 K40 ["ZIndex"]
      158 GETTABLEKS                       R17 R11 K57 ["OnPressed"]
      160 SETTABLEKS                       R17 R16 K51 ["OnClick"]
      162 CALL                             R14 2 1
      163 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      165 MOVE                             R13 R6
      166 GETIMPORT                        R12 K34 [table.insert]
      168 CALL                             R12 2 0
      169 FORGLOOP                         R7 2 [inext] ; [-83]
      171 GETUPVAL                         R7 0
      172 GETTABLEKS                       R7 R7 K7 ["createElement"]
      174 LOADK                            R8 K58 ["Frame"]
      175 GETUPVAL                         R10 1
      176 JUMPIFNOT                        R10 ; [+19]
      177 DUPTABLE                         R9 K60 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
      178 GETTABLEKS                       R11 R1 K22 ["LayoutOrder"]
      180 ORK                              R10 R11 K46 [1]
      181 SETTABLEKS                       R10 R9 K22 ["LayoutOrder"]
      183 GETIMPORT                        R10 K54 [UDim2.new]
      185 LOADN                            R11 1
      186 LOADN                            R12 0
      187 LOADN                            R13 1
      188 LOADN                            R14 0
      189 CALL                             R10 4 1
      190 SETTABLEKS                       R10 R9 K48 ["Size"]
      192 LOADN                            R10 1
      193 SETTABLEKS                       R10 R9 K59 ["BackgroundTransparency"]
      195 JUMP                             ; [+42]
      196 DUPTABLE                         R9 K63 [{"LayoutOrder", "Size", "AnchorPoint", "Position", "BackgroundTransparency"}]
      197 GETTABLEKS                       R11 R1 K22 ["LayoutOrder"]
      199 ORK                              R10 R11 K46 [1]
      200 SETTABLEKS                       R10 R9 K22 ["LayoutOrder"]
      202 GETIMPORT                        R10 K54 [UDim2.new]
      204 LOADN                            R11 1
      205 LOADN                            R12 0
      206 LOADN                            R13 0
      207 GETUPVAL                         R14 4
      208 GETTABLEKS                       R14 R14 K64 ["BUTTON_HEIGHT"]
      210 CALL                             R10 4 1
      211 SETTABLEKS                       R10 R9 K48 ["Size"]
      213 GETTABLEKS                       R10 R1 K61 ["AnchorPoint"]
      215 JUMPIF                           R10 ; [+5]
      216 GETIMPORT                        R10 K66 [Vector2.new]
      218 LOADN                            R11 0
      219 LOADK                            R12 K67 [0.5]
      220 CALL                             R10 2 1
      221 SETTABLEKS                       R10 R9 K61 ["AnchorPoint"]
      223 GETTABLEKS                       R10 R1 K62 ["Position"]
      225 JUMPIF                           R10 ; [+7]
      226 GETIMPORT                        R10 K54 [UDim2.new]
      228 LOADN                            R11 0
      229 LOADN                            R12 0
      230 LOADK                            R13 K67 [0.5]
      231 LOADN                            R14 0
      232 CALL                             R10 4 1
      233 SETTABLEKS                       R10 R9 K62 ["Position"]
      235 LOADN                            R10 1
      236 SETTABLEKS                       R10 R9 K59 ["BackgroundTransparency"]
      238 MOVE                             R10 R6
      239 CALL                             R7 3 -1
      240 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Collab9031_ManageCollaboratorsEarlyFoundationMigration1"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["Framework"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K12 ["Style"]
       31 GETTABLEKS                       R4 R4 K13 ["Stylizer"]
       33 GETIMPORT                        R5 K8 [require]
       35 GETTABLEKS                       R6 R1 K9 ["Packages"]
       37 GETTABLEKS                       R6 R6 K11 ["Framework"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R5 R5 K14 ["ContextServices"]
       42 GETTABLEKS                       R6 R5 K15 ["withContext"]
       44 GETIMPORT                        R7 K8 [require]
       46 GETTABLEKS                       R8 R1 K16 ["Src"]
       48 GETTABLEKS                       R8 R8 K17 ["Util"]
       50 GETTABLEKS                       R8 R8 K18 ["Constants"]
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R8 R2 K19 ["PureComponent"]
       55 LOADK                            R10 K20 ["ButtonBar"]
       56 NAMECALL                         R8 R8 K21 ["extend"]
       58 CALL                             R8 2 1
       59 LOADNIL                          R9
       60 LOADNIL                          R10
       61 LOADNIL                          R11
       62 JUMPIFNOT                        R0 ; [+19]
       63 GETIMPORT                        R12 K8 [require]
       65 GETTABLEKS                       R13 R1 K9 ["Packages"]
       67 GETTABLEKS                       R13 R13 K22 ["React"]
       69 CALL                             R12 1 1
       70 MOVE                             R9 R12
       71 GETIMPORT                        R12 K8 [require]
       73 GETTABLEKS                       R13 R1 K9 ["Packages"]
       75 GETTABLEKS                       R13 R13 K23 ["Foundation"]
       77 CALL                             R12 1 1
       78 MOVE                             R10 R12
       79 GETTABLEKS                       R11 R10 K24 ["Button"]
       81 JUMP                             ; [+4]
       82 GETTABLEKS                       R12 R3 K25 ["UI"]
       84 GETTABLEKS                       R11 R12 K24 ["Button"]
       86 NEWCLOSURE                       R12 P0
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R0
       89 CAPTURE                          REF R9
       90 CAPTURE                          REF R11
       91 CAPTURE                          VAL R7
       92 SETTABLEKS                       R12 R8 K26 ["render"]
       94 MOVE                             R12 R6
       95 DUPTABLE                         R13 K27 [{"Stylizer"}]
       96 SETTABLEKS                       R4 R13 K13 ["Stylizer"]
       98 CALL                             R12 1 1
       99 MOVE                             R13 R8
      100 CALL                             R12 1 1
      101 MOVE                             R8 R12
      102 CLOSEUPVALS                      R9
      103 RETURN                           R8 1
