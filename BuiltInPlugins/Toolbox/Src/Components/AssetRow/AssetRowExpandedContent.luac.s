PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["AbsoluteSize"]
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        8 GETTABLEKS                       R2 R2 K2 ["X"]
       10 JUMP                             ; [+1]
       11 LOADN                            R2 0
       12 GETUPVAL                         R3 1
       13 MOVE                             R4 R2
       14 CALL                             R3 1 2
       15 NEWTABLE                         R5 0 3
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K3 ["ASSET_ROW_COLUMNS"]
       20 GETTABLEKS                       R6 R6 K4 ["ICON"]
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R7 R7 K3 ["ASSET_ROW_COLUMNS"]
       25 GETTABLEKS                       R7 R7 K5 ["NAME"]
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R8 R8 K3 ["ASSET_ROW_COLUMNS"]
       30 GETTABLEKS                       R8 R8 K6 ["CREATOR"]
       32 SETLIST                          R5 R6 3 [1]
       34 JUMPIFNOTLE                      R4 R2 ; [+12]
       36 GETUPVAL                         R8 2
       37 GETTABLEKS                       R8 R8 K3 ["ASSET_ROW_COLUMNS"]
       39 GETTABLEKS                       R8 R8 K7 ["DATE_UPDATED"]
       41 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       43 MOVE                             R7 R5
       44 GETIMPORT                        R6 K10 [table.insert]
       46 CALL                             R6 2 0
       47 LOADN                            R6 0
       48 LOADN                            R7 0
       49 GETIMPORT                        R8 K12 [pairs]
       51 MOVE                             R9 R5
       52 CALL                             R8 1 3
       53 FORGPREP_NEXT                    R8
       54 GETTABLE                         R13 R3 R12
       55 JUMPIFNOT                        R13 ; [+12]
       56 GETTABLE                         R13 R3 R12
       57 GETTABLEKS                       R13 R13 K2 ["X"]
       59 GETTABLEKS                       R13 R13 K13 ["Scale"]
       61 ADD                              R6 R6 R13
       62 GETTABLE                         R13 R3 R12
       63 GETTABLEKS                       R13 R13 K2 ["X"]
       65 GETTABLEKS                       R13 R13 K14 ["Offset"]
       67 ADD                              R7 R7 R13
       68 FORGLOOP                         R8 2 ; [-15]
       70 RETURN                           R6 2

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 SETTABLEKS                       R1 R0 K0 ["getDescriptionWidth"]
        6 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["new"]
        7 CALL                             R3 0 1
        8 GETTABLEKS                       R4 R1 K3 ["AssetInfo"]
       10 GETTABLEKS                       R4 R4 K4 ["Asset"]
       12 GETTABLEKS                       R5 R4 K5 ["AssetGenres"]
       14 GETTABLEKS                       R7 R4 K7 ["Description"]
       16 ORK                              R6 R7 K6 ["---"]
       17 JUMPIFNOT                        R5 ; [+10]
       18 LENGTH                           R8 R5
       19 LOADN                            R9 0
       20 JUMPIFNOTLT                      R9 R8 ; [+7]
       22 GETIMPORT                        R7 K10 [table.concat]
       24 MOVE                             R8 R5
       25 LOADK                            R9 K11 [","]
       26 CALL                             R7 2 1
       27 JUMP                             ; [+1]
       28 LOADK                            R7 K6 ["---"]
       29 GETTABLEKS                       R8 R1 K12 ["AbsoluteSize"]
       31 JUMPIFNOT                        R8 ; [+5]
       32 GETTABLEKS                       R9 R1 K12 ["AbsoluteSize"]
       34 GETTABLEKS                       R9 R9 K13 ["X"]
       36 JUMP                             ; [+1]
       37 LOADN                            R9 0
       38 GETUPVAL                         R10 1
       39 MOVE                             R11 R9
       40 CALL                             R10 1 2
       41 GETTABLEKS                       R12 R0 K14 ["getDescriptionWidth"]
       43 CALL                             R12 0 2
       44 GETUPVAL                         R15 2
       45 GETTABLEKS                       R15 R15 K15 ["ASSET_ROW_COLUMNS"]
       47 GETTABLEKS                       R15 R15 K16 ["DATE_UPDATED"]
       49 GETTABLE                         R14 R10 R15
       50 GETUPVAL                         R15 3
       51 GETTABLEKS                       R15 R15 K17 ["createElement"]
       53 GETUPVAL                         R16 4
       54 GETUPVAL                         R17 5
       55 GETTABLEKS                       R17 R17 K18 ["join"]
       57 DUPTABLE                         R18 K25 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"], ["Padding"] = 10, ["Size"]}]
       58 GETIMPORT                        R19 K28 [Enum.AutomaticSize.Y]
       60 SETTABLEKS                       R19 R18 K19 ["AutomaticSize"]
       62 GETIMPORT                        R19 K31 [Enum.FillDirection.Vertical]
       64 SETTABLEKS                       R19 R18 K20 ["Layout"]
       66 GETTABLEKS                       R19 R1 K21 ["LayoutOrder"]
       68 SETTABLEKS                       R19 R18 K21 ["LayoutOrder"]
       70 GETTABLEKS                       R19 R1 K24 ["Size"]
       72 SETTABLEKS                       R19 R18 K24 ["Size"]
       74 GETTABLEKS                       R19 R1 K32 ["WrapperProps"]
       76 CALL                             R17 2 1
       77 DUPTABLE                         R18 K34 [{"DescriptionContainer"}]
       78 GETUPVAL                         R19 3
       79 GETTABLEKS                       R19 R19 K17 ["createElement"]
       81 GETUPVAL                         R20 4
       82 DUPTABLE                         R21 K36 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"], ["Spacing"] = 10, ["Size"]}]
       83 GETIMPORT                        R22 K28 [Enum.AutomaticSize.Y]
       85 SETTABLEKS                       R22 R21 K19 ["AutomaticSize"]
       87 GETIMPORT                        R22 K38 [Enum.FillDirection.Horizontal]
       89 SETTABLEKS                       R22 R21 K20 ["Layout"]
       91 NAMECALL                         R22 R3 K39 ["getNextOrder"]
       93 CALL                             R22 1 1
       94 SETTABLEKS                       R22 R21 K21 ["LayoutOrder"]
       96 GETIMPORT                        R22 K41 [UDim2.new]
       98 LOADN                            R23 1
       99 LOADN                            R24 0
      100 LOADN                            R25 0
      101 LOADN                            R26 0
      102 CALL                             R22 4 1
      103 SETTABLEKS                       R22 R21 K24 ["Size"]
      105 DUPTABLE                         R22 K43 [{"Description", "Category"}]
      106 GETUPVAL                         R23 3
      107 GETTABLEKS                       R23 R23 K17 ["createElement"]
      109 GETUPVAL                         R24 6
      110 DUPTABLE                         R25 K48 [{["LayoutOrder"], ["HeaderText"], ["MaxLinesOfText"] = 2, ["Size"], ["Text"]}]
      111 NAMECALL                         R26 R3 K39 ["getNextOrder"]
      113 CALL                             R26 1 1
      114 SETTABLEKS                       R26 R25 K21 ["LayoutOrder"]
      116 LOADK                            R28 K49 ["General"]
      117 LOADK                            R29 K7 ["Description"]
      118 NAMECALL                         R26 R2 K50 ["getText"]
      120 CALL                             R26 3 1
      121 NAMECALL                         R26 R26 K51 ["upper"]
      123 CALL                             R26 1 1
      124 SETTABLEKS                       R26 R25 K44 ["HeaderText"]
      126 GETIMPORT                        R26 K41 [UDim2.new]
      128 MOVE                             R27 R12
      129 MOVE                             R28 R13
      130 LOADN                            R29 0
      131 LOADN                            R30 0
      132 CALL                             R26 4 1
      133 SETTABLEKS                       R26 R25 K24 ["Size"]
      135 SETTABLEKS                       R6 R25 K47 ["Text"]
      137 CALL                             R23 2 1
      138 SETTABLEKS                       R23 R22 K7 ["Description"]
      140 GETUPVAL                         R23 3
      141 GETTABLEKS                       R23 R23 K17 ["createElement"]
      143 GETUPVAL                         R24 6
      144 DUPTABLE                         R25 K53 [{["LayoutOrder"], ["HeaderText"], ["MaxLinesOfText"] = , ["Padding"], ["Size"], ["Text"]}]
      145 NAMECALL                         R26 R3 K39 ["getNextOrder"]
      147 CALL                             R26 1 1
      148 SETTABLEKS                       R26 R25 K21 ["LayoutOrder"]
      150 LOADK                            R28 K49 ["General"]
      151 LOADK                            R29 K54 ["Genre"]
      152 NAMECALL                         R26 R2 K50 ["getText"]
      154 CALL                             R26 3 1
      155 NAMECALL                         R26 R26 K51 ["upper"]
      157 CALL                             R26 1 1
      158 SETTABLEKS                       R26 R25 K44 ["HeaderText"]
      160 DUPTABLE                         R26 K56 [{"Left"}]
      161 GETUPVAL                         R27 2
      162 GETTABLEKS                       R27 R27 K57 ["ITEM_ROW"]
      164 GETTABLEKS                       R27 R27 K58 ["LEFT_RIGHT_PADDING"]
      166 SETTABLEKS                       R27 R26 K55 ["Left"]
      168 SETTABLEKS                       R26 R25 K22 ["Padding"]
      170 GETIMPORT                        R26 K41 [UDim2.new]
      172 GETTABLEKS                       R27 R14 K13 ["X"]
      174 GETTABLEKS                       R27 R27 K59 ["Scale"]
      176 GETTABLEKS                       R28 R14 K13 ["X"]
      178 GETTABLEKS                       R28 R28 K60 ["Offset"]
      180 GETTABLEKS                       R29 R14 K27 ["Y"]
      182 GETTABLEKS                       R29 R29 K59 ["Scale"]
      184 GETTABLEKS                       R30 R14 K27 ["Y"]
      186 GETTABLEKS                       R30 R30 K60 ["Offset"]
      188 CALL                             R26 4 1
      189 SETTABLEKS                       R26 R25 K24 ["Size"]
      191 SETTABLEKS                       R7 R25 K47 ["Text"]
      193 CALL                             R23 2 1
      194 SETTABLEKS                       R23 R22 K42 ["Category"]
      196 CALL                             R19 3 1
      197 SETTABLEKS                       R19 R18 K33 ["DescriptionContainer"]
      199 CALL                             R15 3 -1
      200 RETURN                           R15 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"searchWithOptions"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["searchWithOptions"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["RoactRodux"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Framework"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Dash"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R4 K11 ["Util"]
       31 GETTABLEKS                       R6 R6 K12 ["LayoutOrderIterator"]
       33 GETTABLEKS                       R7 R4 K13 ["UI"]
       35 GETTABLEKS                       R7 R7 K14 ["Pane"]
       37 GETTABLEKS                       R8 R4 K15 ["Wrappers"]
       39 GETTABLEKS                       R8 R8 K16 ["withAbsoluteSize"]
       41 GETTABLEKS                       R9 R0 K17 ["Src"]
       43 GETTABLEKS                       R9 R9 K11 ["Util"]
       45 GETIMPORT                        R10 K6 [require]
       47 GETTABLEKS                       R11 R9 K18 ["Constants"]
       49 CALL                             R10 1 1
       50 GETTABLEKS                       R11 R4 K19 ["ContextServices"]
       52 GETTABLEKS                       R12 R11 K20 ["withContext"]
       54 GETIMPORT                        R13 K6 [require]
       56 GETTABLEKS                       R14 R0 K17 ["Src"]
       58 GETTABLEKS                       R14 R14 K19 ["ContextServices"]
       60 GETTABLEKS                       R14 R14 K21 ["NetworkContext"]
       62 CALL                             R13 1 1
       63 GETIMPORT                        R14 K6 [require]
       65 GETTABLEKS                       R15 R0 K17 ["Src"]
       67 GETTABLEKS                       R15 R15 K19 ["ContextServices"]
       69 GETTABLEKS                       R15 R15 K22 ["Settings"]
       71 CALL                             R14 1 1
       72 GETIMPORT                        R15 K6 [require]
       74 GETTABLEKS                       R16 R0 K17 ["Src"]
       76 GETTABLEKS                       R16 R16 K23 ["Components"]
       78 GETTABLEKS                       R16 R16 K24 ["AssetTable"]
       80 GETTABLEKS                       R16 R16 K25 ["GetAssetTableSizes"]
       82 CALL                             R15 1 1
       83 GETIMPORT                        R16 K6 [require]
       85 GETTABLEKS                       R17 R0 K17 ["Src"]
       87 GETTABLEKS                       R17 R17 K23 ["Components"]
       89 GETTABLEKS                       R17 R17 K26 ["ItemRow"]
       91 GETTABLEKS                       R17 R17 K27 ["ItemRowMetadata"]
       93 CALL                             R16 1 1
       94 GETIMPORT                        R17 K6 [require]
       96 GETTABLEKS                       R18 R0 K17 ["Src"]
       98 GETTABLEKS                       R18 R18 K28 ["Networking"]
      100 GETTABLEKS                       R18 R18 K29 ["Requests"]
      102 GETTABLEKS                       R18 R18 K30 ["SearchWithOptions"]
      104 CALL                             R17 1 1
      105 GETIMPORT                        R18 K6 [require]
      107 GETTABLEKS                       R19 R0 K17 ["Src"]
      109 GETTABLEKS                       R19 R19 K31 ["Models"]
      111 GETTABLEKS                       R19 R19 K32 ["AssetInfo"]
      113 CALL                             R18 1 1
      114 GETIMPORT                        R19 K6 [require]
      116 GETTABLEKS                       R20 R0 K17 ["Src"]
      118 GETTABLEKS                       R20 R20 K11 ["Util"]
      120 GETTABLEKS                       R20 R20 K33 ["SharedFlags"]
      122 GETTABLEKS                       R20 R20 K34 ["getFFlagToolboxEnableAssetRows"]
      124 CALL                             R19 1 1
      125 MOVE                             R20 R19
      126 CALL                             R20 0 1
      127 JUMPIF                           R20 ; [+3]
      128 NEWTABLE                         R20 0 0
      130 RETURN                           R20 1
      131 GETTABLEKS                       R20 R2 K35 ["PureComponent"]
      133 LOADK                            R22 K36 ["AssetRowExpandedContent"]
      134 NAMECALL                         R20 R20 K37 ["extend"]
      136 CALL                             R20 2 1
      137 DUPTABLE                         R21 K39 [{"Size"}]
      138 GETIMPORT                        R22 K42 [UDim2.new]
      140 LOADN                            R23 1
      141 LOADN                            R24 0
      142 LOADN                            R25 0
      143 LOADN                            R26 26
      144 CALL                             R22 4 1
      145 SETTABLEKS                       R22 R21 K38 ["Size"]
      147 SETTABLEKS                       R21 R20 K43 ["defaultProps"]
      149 DUPCLOSURE                       R21 K44 [PROTO_1]
      150 CAPTURE                          VAL R15
      151 CAPTURE                          VAL R10
      152 SETTABLEKS                       R21 R20 K45 ["init"]
      154 DUPCLOSURE                       R21 K46 [PROTO_2]
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R7
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R16
      162 SETTABLEKS                       R21 R20 K47 ["render"]
      164 DUPCLOSURE                       R21 K48 [PROTO_4]
      165 CAPTURE                          VAL R17
      166 MOVE                             R22 R12
      167 DUPTABLE                         R23 K52 [{"Localization", "Network", "Settings", "Stylizer"}]
      168 GETTABLEKS                       R24 R11 K49 ["Localization"]
      170 SETTABLEKS                       R24 R23 K49 ["Localization"]
      172 SETTABLEKS                       R13 R23 K50 ["Network"]
      174 SETTABLEKS                       R14 R23 K22 ["Settings"]
      176 GETTABLEKS                       R24 R11 K51 ["Stylizer"]
      178 SETTABLEKS                       R24 R23 K51 ["Stylizer"]
      180 CALL                             R22 1 1
      181 MOVE                             R23 R20
      182 CALL                             R22 1 1
      183 MOVE                             R20 R22
      184 GETTABLEKS                       R22 R3 K53 ["connect"]
      186 LOADNIL                          R23
      187 MOVE                             R24 R21
      188 CALL                             R22 2 1
      189 MOVE                             R23 R20
      190 CALL                             R22 1 1
      191 MOVE                             R20 R22
      192 MOVE                             R22 R8
      193 MOVE                             R23 R20
      194 CALL                             R22 1 -1
      195 RETURN                           R22 -1
