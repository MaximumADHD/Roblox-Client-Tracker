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
       17 NEWTABLE                         R9 8 0
       19 GETIMPORT                        R10 K11 [UDim.new]
       21 LOADN                            R11 0
       22 GETTABLEKS                       R12 R2 K12 ["buttonBar"]
       24 GETTABLEKS                       R12 R12 K13 ["padding"]
       26 CALL                             R10 2 1
       27 SETTABLEKS                       R10 R9 K14 ["Padding"]
       29 SETTABLEKS                       R3 R9 K2 ["HorizontalAlignment"]
       31 GETUPVAL                         R11 1
       32 JUMPIFNOT                        R11 ; [+3]
       33 GETIMPORT                        R10 K18 [Enum.VerticalAlignment.Center]
       35 JUMP                             ; [+1]
       36 LOADNIL                          R10
       37 SETTABLEKS                       R10 R9 K16 ["VerticalAlignment"]
       39 GETIMPORT                        R10 K21 [Enum.SortOrder.LayoutOrder]
       41 SETTABLEKS                       R10 R9 K19 ["SortOrder"]
       43 GETIMPORT                        R10 K24 [Enum.FillDirection.Horizontal]
       45 SETTABLEKS                       R10 R9 K22 ["FillDirection"]
       47 GETUPVAL                         R10 0
       48 GETTABLEKS                       R10 R10 K25 ["Change"]
       50 GETTABLEKS                       R10 R10 K26 ["AbsoluteContentSize"]
       52 GETTABLEKS                       R11 R1 K27 ["OnContentSizeChanged"]
       54 SETTABLE                         R11 R9 R10
       55 MOVE                             R10 R5
       56 CALL                             R7 3 1
       57 SETTABLEKS                       R7 R6 K5 ["Layout"]
       59 GETIMPORT                        R7 K28 [Enum.HorizontalAlignment.Center]
       61 JUMPIFEQ                         R3 R7 ; [+29]
       63 MOVE                             R8 R6
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R9 R9 K7 ["createElement"]
       67 LOADK                            R10 K29 ["UIPadding"]
       68 DUPTABLE                         R11 K32 [{"PaddingRight", "PaddingLeft"}]
       69 GETIMPORT                        R12 K11 [UDim.new]
       71 LOADN                            R13 0
       72 GETTABLEKS                       R14 R2 K12 ["buttonBar"]
       74 GETTABLEKS                       R14 R14 K33 ["edgePadding"]
       76 CALL                             R12 2 1
       77 SETTABLEKS                       R12 R11 K30 ["PaddingRight"]
       79 GETIMPORT                        R12 K11 [UDim.new]
       81 LOADN                            R13 0
       82 LOADN                            R14 0
       83 CALL                             R12 2 1
       84 SETTABLEKS                       R12 R11 K31 ["PaddingLeft"]
       86 CALL                             R9 2 -1
       87 FASTCALL                         TABLE_INSERT ; [+2]
       88 GETIMPORT                        R7 K36 [table.insert]
       90 CALL                             R7 -1 0
       91 GETIMPORT                        R7 K38 [ipairs]
       93 MOVE                             R8 R4
       94 CALL                             R7 1 3
       95 FORGPREP_INEXT                   R7
       96 GETUPVAL                         R15 1
       97 JUMPIFNOT                        R15 ; [+35]
       98 GETUPVAL                         R14 2
       99 GETTABLEKS                       R14 R14 K7 ["createElement"]
      101 GETUPVAL                         R15 3
      102 DUPTABLE                         R16 K47 [{["LayoutOrder"], ["variant"], ["size"] = "Medium", ["text"], ["ZIndex"], ["onActivated"], ["isDisabled"], ["isLoading"]}]
      103 SETTABLEKS                       R10 R16 K20 ["LayoutOrder"]
      105 GETTABLEKS                       R18 R11 K39 ["variant"]
      107 ORK                              R17 R18 K48 ["Standard"]
      108 SETTABLEKS                       R17 R16 K39 ["variant"]
      110 GETTABLEKS                       R17 R11 K42 ["text"]
      112 SETTABLEKS                       R17 R16 K42 ["text"]
      114 GETTABLEKS                       R18 R1 K43 ["ZIndex"]
      116 ORK                              R17 R18 K49 [1]
      117 SETTABLEKS                       R17 R16 K43 ["ZIndex"]
      119 GETTABLEKS                       R17 R11 K44 ["onActivated"]
      121 SETTABLEKS                       R17 R16 K44 ["onActivated"]
      123 GETTABLEKS                       R17 R11 K45 ["isDisabled"]
      125 SETTABLEKS                       R17 R16 K45 ["isDisabled"]
      127 GETTABLEKS                       R17 R11 K46 ["isLoading"]
      129 SETTABLEKS                       R17 R16 K46 ["isLoading"]
      131 CALL                             R14 2 1
      132 JUMP                             ; [+40]
      133 GETUPVAL                         R14 0
      134 GETTABLEKS                       R14 R14 K7 ["createElement"]
      136 GETUPVAL                         R15 3
      137 DUPTABLE                         R16 K55 [{"LayoutOrder", "Style", "Size", "StyleModifier", "Text", "ZIndex", "OnClick"}]
      138 SETTABLEKS                       R10 R16 K20 ["LayoutOrder"]
      140 GETTABLEKS                       R17 R11 K50 ["Style"]
      142 SETTABLEKS                       R17 R16 K50 ["Style"]
      144 GETIMPORT                        R17 K57 [UDim2.new]
      146 LOADN                            R18 0
      147 GETUPVAL                         R19 4
      148 GETTABLEKS                       R19 R19 K58 ["BUTTON_WIDTH"]
      150 LOADN                            R20 1
      151 LOADN                            R21 0
      152 CALL                             R17 4 1
      153 SETTABLEKS                       R17 R16 K51 ["Size"]
      155 GETTABLEKS                       R17 R11 K52 ["StyleModifier"]
      157 SETTABLEKS                       R17 R16 K52 ["StyleModifier"]
      159 GETTABLEKS                       R17 R11 K59 ["Name"]
      161 SETTABLEKS                       R17 R16 K53 ["Text"]
      163 GETTABLEKS                       R18 R1 K43 ["ZIndex"]
      165 ORK                              R17 R18 K49 [1]
      166 SETTABLEKS                       R17 R16 K43 ["ZIndex"]
      168 GETTABLEKS                       R17 R11 K60 ["OnPressed"]
      170 SETTABLEKS                       R17 R16 K54 ["OnClick"]
      172 CALL                             R14 2 1
      173 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      175 MOVE                             R13 R6
      176 GETIMPORT                        R12 K36 [table.insert]
      178 CALL                             R12 2 0
      179 FORGLOOP                         R7 2 [inext] ; [-84]
      181 GETUPVAL                         R7 0
      182 GETTABLEKS                       R7 R7 K7 ["createElement"]
      184 LOADK                            R8 K61 ["Frame"]
      185 GETUPVAL                         R10 1
      186 JUMPIFNOT                        R10 ; [+16]
      187 DUPTABLE                         R9 K63 [{["LayoutOrder"], ["Size"], ["BackgroundTransparency"] = 1}]
      188 GETTABLEKS                       R11 R1 K20 ["LayoutOrder"]
      190 ORK                              R10 R11 K49 [1]
      191 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
      193 GETIMPORT                        R10 K57 [UDim2.new]
      195 LOADN                            R11 1
      196 LOADN                            R12 0
      197 LOADN                            R13 1
      198 LOADN                            R14 0
      199 CALL                             R10 4 1
      200 SETTABLEKS                       R10 R9 K51 ["Size"]
      202 JUMP                             ; [+39]
      203 DUPTABLE                         R9 K66 [{["LayoutOrder"], ["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1}]
      204 GETTABLEKS                       R11 R1 K20 ["LayoutOrder"]
      206 ORK                              R10 R11 K49 [1]
      207 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
      209 GETIMPORT                        R10 K57 [UDim2.new]
      211 LOADN                            R11 1
      212 LOADN                            R12 0
      213 LOADN                            R13 0
      214 GETUPVAL                         R14 4
      215 GETTABLEKS                       R14 R14 K67 ["BUTTON_HEIGHT"]
      217 CALL                             R10 4 1
      218 SETTABLEKS                       R10 R9 K51 ["Size"]
      220 GETTABLEKS                       R10 R1 K64 ["AnchorPoint"]
      222 JUMPIF                           R10 ; [+5]
      223 GETIMPORT                        R10 K69 [Vector2.new]
      225 LOADN                            R11 0
      226 LOADK                            R12 K70 [0.5]
      227 CALL                             R10 2 1
      228 SETTABLEKS                       R10 R9 K64 ["AnchorPoint"]
      230 GETTABLEKS                       R10 R1 K65 ["Position"]
      232 JUMPIF                           R10 ; [+7]
      233 GETIMPORT                        R10 K57 [UDim2.new]
      235 LOADN                            R11 0
      236 LOADN                            R12 0
      237 LOADK                            R13 K70 [0.5]
      238 LOADN                            R14 0
      239 CALL                             R10 4 1
      240 SETTABLEKS                       R10 R9 K65 ["Position"]
      242 MOVE                             R10 R6
      243 CALL                             R7 3 -1
      244 RETURN                           R7 -1

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
