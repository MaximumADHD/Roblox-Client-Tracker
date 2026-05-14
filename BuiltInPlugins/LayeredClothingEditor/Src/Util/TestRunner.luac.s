PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETUPVAL                         R4 4
        7 CALL                             R0 4 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 CALL                             R3 0 1
        4 NEWTABLE                         R4 0 1
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K1 ["thunkMiddleware"]
        9 SETLIST                          R4 R5 1 [1]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K2 ["Store"]
       14 GETTABLEKS                       R5 R5 K0 ["new"]
       16 GETUPVAL                         R6 2
       17 LOADNIL                          R7
       18 MOVE                             R8 R4
       19 CALL                             R5 3 1
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R6 R6 K0 ["new"]
       23 GETUPVAL                         R7 4
       24 GETTABLEKS                       R7 R7 K3 ["SIGNAL_KEYS"]
       26 CALL                             R6 1 1
       27 GETUPVAL                         R7 5
       28 GETTABLEKS                       R7 R7 K0 ["new"]
       30 CALL                             R7 0 1
       31 GETUPVAL                         R8 6
       32 GETTABLEKS                       R8 R8 K4 ["mock"]
       34 CALL                             R8 0 1
       35 GETUPVAL                         R9 7
       36 GETTABLEKS                       R9 R9 K4 ["mock"]
       38 CALL                             R9 0 1
       39 GETUPVAL                         R10 8
       40 GETTABLEKS                       R10 R10 K4 ["mock"]
       42 CALL                             R10 0 1
       43 GETUPVAL                         R11 9
       44 GETTABLEKS                       R11 R11 K4 ["mock"]
       46 CALL                             R11 0 1
       47 GETUPVAL                         R12 10
       48 GETTABLEKS                       R12 R12 K5 ["Localization"]
       50 GETTABLEKS                       R12 R12 K4 ["mock"]
       52 DUPTABLE                         R13 K7 [{"libraries"}]
       53 NEWTABLE                         R14 1 0
       55 GETUPVAL                         R15 11
       56 GETTABLEKS                       R15 R15 K8 ["Resources"]
       58 GETTABLEKS                       R15 R15 K9 ["LOCALIZATION_PROJECT_NAME"]
       60 DUPTABLE                         R16 K12 [{"stringResourceTable", "translationResourceTable"}]
       61 GETUPVAL                         R17 11
       62 GETTABLEKS                       R17 R17 K8 ["Resources"]
       64 GETTABLEKS                       R17 R17 K13 ["SourceStrings"]
       66 SETTABLEKS                       R17 R16 K10 ["stringResourceTable"]
       68 GETUPVAL                         R17 11
       69 GETTABLEKS                       R17 R17 K8 ["Resources"]
       71 GETTABLEKS                       R17 R17 K14 ["LocalizedStrings"]
       73 SETTABLEKS                       R17 R16 K11 ["translationResourceTable"]
       75 SETTABLE                         R16 R14 R15
       76 SETTABLEKS                       R14 R13 K6 ["libraries"]
       78 CALL                             R12 1 1
       79 GETUPVAL                         R13 12
       80 GETTABLEKS                       R13 R13 K0 ["new"]
       82 CALL                             R13 0 1
       83 GETUPVAL                         R16 4
       84 GETTABLEKS                       R16 R16 K15 ["DEFAULT_FALLOFF"]
       86 NAMECALL                         R14 R13 K16 ["setFalloff"]
       88 CALL                             R14 2 0
       89 GETUPVAL                         R14 13
       90 GETTABLEKS                       R14 R14 K0 ["new"]
       92 NEWTABLE                         R15 1 0
       94 GETUPVAL                         R16 4
       95 GETTABLEKS                       R16 R16 K17 ["TOOL_MODE"]
       97 GETTABLEKS                       R16 R16 K18 ["Point"]
       99 SETTABLE                         R13 R15 R16
      100 CALL                             R14 1 1
      101 GETUPVAL                         R15 14
      102 GETTABLEKS                       R15 R15 K0 ["new"]
      104 CALL                             R15 0 1
      105 GETUPVAL                         R16 15
      106 NEWTABLE                         R17 0 16
      108 MOVE                             R18 R11
      109 GETUPVAL                         R19 10
      110 GETTABLEKS                       R19 R19 K19 ["Analytics"]
      112 GETTABLEKS                       R19 R19 K4 ["mock"]
      114 CALL                             R19 0 1
      115 MOVE                             R20 R12
      116 GETUPVAL                         R21 10
      117 GETTABLEKS                       R21 R21 K2 ["Store"]
      119 GETTABLEKS                       R21 R21 K0 ["new"]
      121 MOVE                             R22 R5
      122 CALL                             R21 1 1
      123 GETUPVAL                         R22 10
      124 GETTABLEKS                       R22 R22 K20 ["API"]
      126 GETTABLEKS                       R22 R22 K0 ["new"]
      128 DUPTABLE                         R23 K22 [{"networking"}]
      129 GETUPVAL                         R24 16
      130 GETTABLEKS                       R24 R24 K23 ["Networking"]
      132 GETTABLEKS                       R24 R24 K4 ["mock"]
      134 DUPTABLE                         R25 K25 [{"onRequest"}]
      135 GETUPVAL                         R26 17
      136 SETTABLEKS                       R26 R25 K24 ["onRequest"]
      138 CALL                             R24 1 1
      139 SETTABLEKS                       R24 R23 K21 ["networking"]
      141 CALL                             R22 1 1
      142 GETUPVAL                         R23 10
      143 GETTABLEKS                       R23 R23 K26 ["Plugin"]
      145 GETTABLEKS                       R23 R23 K0 ["new"]
      147 MOVE                             R24 R3
      148 CALL                             R23 1 1
      149 GETUPVAL                         R24 10
      150 GETTABLEKS                       R24 R24 K27 ["Mouse"]
      152 GETTABLEKS                       R24 R24 K0 ["new"]
      154 NAMECALL                         R25 R3 K28 ["GetMouse"]
      156 CALL                             R25 1 -1
      157 CALL                             R24 -1 1
      158 GETUPVAL                         R25 10
      159 GETTABLEKS                       R25 R25 K29 ["PluginActions"]
      161 GETTABLEKS                       R25 R25 K0 ["new"]
      163 MOVE                             R26 R3
      164 GETUPVAL                         R27 18
      165 MOVE                             R28 R3
      166 MOVE                             R29 R12
      167 CALL                             R27 2 -1
      168 CALL                             R25 -1 1
      169 GETUPVAL                         R26 10
      170 GETTABLEKS                       R26 R26 K30 ["Focus"]
      172 GETTABLEKS                       R26 R26 K0 ["new"]
      174 MOVE                             R27 R1
      175 CALL                             R26 1 1
      176 MOVE                             R27 R6
      177 MOVE                             R28 R7
      178 MOVE                             R29 R15
      179 MOVE                             R30 R14
      180 MOVE                             R31 R8
      181 MOVE                             R32 R9
      182 MOVE                             R33 R10
      183 SETLIST                          R17 R18 16 [1]
      185 MOVE                             R18 R0
      186 CALL                             R16 2 1
      187 GETUPVAL                         R17 19
      188 GETTABLEKS                       R17 R17 K31 ["mount"]
      190 MOVE                             R18 R16
      191 MOVE                             R19 R1
      192 CALL                             R17 2 1
      193 GETIMPORT                        R18 K33 [pcall]
      195 NEWCLOSURE                       R19 P0
      196 CAPTURE                          VAL R2
      197 CAPTURE                          VAL R1
      198 CAPTURE                          VAL R5
      199 CAPTURE                          VAL R7
      200 CAPTURE                          VAL R3
      201 CALL                             R18 1 2
      202 GETUPVAL                         R20 19
      203 GETTABLEKS                       R20 R20 K34 ["unmount"]
      205 MOVE                             R21 R17
      206 CALL                             R20 1 0
      207 NAMECALL                         R20 R1 K35 ["Destroy"]
      209 CALL                             R20 1 0
      210 NAMECALL                         R20 R5 K36 ["destruct"]
      212 CALL                             R20 1 0
      213 GETUPVAL                         R20 20
      214 GETTABLEKS                       R20 R20 K37 ["cleanTempInstances"]
      216 CALL                             R20 0 0
      217 JUMPIF                           R18 ; [+4]
      218 GETIMPORT                        R20 K39 [error]
      220 MOVE                             R21 R19
      221 CALL                             R20 1 0
      222 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["cleanTempInstances"]
        8 CALL                             R3 0 0
        9 JUMPIF                           R1 ; [+4]
       10 GETIMPORT                        R3 K4 [error]
       12 MOVE                             R4 R2
       13 CALL                             R3 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K1 [{"test"}]
        2 SETTABLEKS                       R0 R3 K0 ["test"]
        4 GETIMPORT                        R4 K4 [Instance.new]
        6 LOADK                            R5 K5 ["ScreenGui"]
        7 CALL                             R4 1 1
        8 MOVE                             R5 R1
        9 CALL                             R2 3 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["ScreenGui"]
        3 GETIMPORT                        R2 K5 [game]
        5 GETTABLEKS                       R2 R2 K6 ["CoreGui"]
        7 CALL                             R0 2 1
        8 LOADK                            R1 K7 ["PluginMockGui"]
        9 SETTABLEKS                       R1 R0 K8 ["Name"]
       11 GETIMPORT                        R1 K12 [Enum.ZIndexBehavior.Sibling]
       13 SETTABLEKS                       R1 R0 K10 ["ZIndexBehavior"]
       15 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K1 [{"LayeredClothingEditor"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K2 ["createElement"]
        5 GETUPVAL                         R4 2
        6 CALL                             R3 1 1
        7 SETTABLEKS                       R3 R2 K0 ["LayeredClothingEditor"]
        9 GETIMPORT                        R4 K5 [Instance.new]
       11 LOADK                            R5 K6 ["ScreenGui"]
       12 GETIMPORT                        R6 K8 [game]
       14 GETTABLEKS                       R6 R6 K9 ["CoreGui"]
       16 CALL                             R4 2 1
       17 LOADK                            R5 K10 ["PluginMockGui"]
       18 SETTABLEKS                       R5 R4 K11 ["Name"]
       20 GETIMPORT                        R5 K15 [Enum.ZIndexBehavior.Sibling]
       22 SETTABLEKS                       R5 R4 K13 ["ZIndexBehavior"]
       24 MOVE                             R3 R4
       25 MOVE                             R4 R0
       26 CALL                             R1 3 0
       27 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["AvatarToolsShared"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R0 K5 ["Packages"]
       32 GETTABLEKS                       R4 R4 K9 ["LuaMeshEditingModule"]
       34 GETIMPORT                        R5 K4 [require]
       36 GETTABLEKS                       R6 R4 K10 ["Tools"]
       38 GETTABLEKS                       R6 R6 K11 ["PointTool"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R3 K12 ["Contexts"]
       43 GETTABLEKS                       R6 R6 K13 ["LuaMeshEditingModuleContext"]
       45 GETTABLEKS                       R7 R3 K12 ["Contexts"]
       47 GETTABLEKS                       R7 R7 K14 ["Signals"]
       49 GETTABLEKS                       R8 R3 K12 ["Contexts"]
       51 GETTABLEKS                       R8 R8 K15 ["PreviewContext"]
       53 GETTABLEKS                       R9 R3 K12 ["Contexts"]
       55 GETTABLEKS                       R9 R9 K16 ["EditingItemContext"]
       57 GETTABLEKS                       R10 R3 K12 ["Contexts"]
       59 GETTABLEKS                       R10 R10 K17 ["AssetServiceWrapper"]
       61 GETTABLEKS                       R11 R3 K12 ["Contexts"]
       63 GETTABLEKS                       R11 R11 K18 ["StudioServiceWrapper"]
       65 GETTABLEKS                       R12 R3 K12 ["Contexts"]
       67 GETTABLEKS                       R12 R12 K19 ["MannequinContext"]
       69 GETIMPORT                        R13 K4 [require]
       71 GETTABLEKS                       R14 R0 K20 ["Src"]
       73 GETTABLEKS                       R14 R14 K21 ["Resources"]
       75 GETTABLEKS                       R14 R14 K22 ["PluginTheme"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K4 [require]
       80 GETTABLEKS                       R15 R0 K5 ["Packages"]
       82 GETTABLEKS                       R15 R15 K23 ["Framework"]
       84 CALL                             R14 1 1
       85 GETTABLEKS                       R15 R14 K24 ["ContextServices"]
       87 GETTABLEKS                       R16 R14 K25 ["TestHelpers"]
       89 GETTABLEKS                       R17 R14 K26 ["Http"]
       91 GETTABLEKS                       R18 R16 K27 ["provideMockContext"]
       93 GETTABLEKS                       R19 R16 K28 ["Instances"]
       95 GETTABLEKS                       R19 R19 K29 ["MockPlugin"]
       97 GETIMPORT                        R20 K4 [require]
       99 GETTABLEKS                       R21 R0 K20 ["Src"]
      101 GETTABLEKS                       R21 R21 K30 ["Util"]
      103 GETTABLEKS                       R21 R21 K31 ["Constants"]
      105 CALL                             R20 1 1
      106 GETIMPORT                        R21 K4 [require]
      108 GETTABLEKS                       R22 R0 K20 ["Src"]
      110 GETTABLEKS                       R22 R22 K30 ["Util"]
      112 GETTABLEKS                       R22 R22 K32 ["TestHelper"]
      114 CALL                             R21 1 1
      115 GETIMPORT                        R22 K4 [require]
      117 GETTABLEKS                       R23 R0 K20 ["Src"]
      119 GETTABLEKS                       R23 R23 K30 ["Util"]
      121 GETTABLEKS                       R23 R23 K33 ["makePluginActions"]
      123 CALL                             R22 1 1
      124 GETIMPORT                        R23 K4 [require]
      126 GETTABLEKS                       R24 R0 K20 ["Src"]
      128 GETTABLEKS                       R24 R24 K30 ["Util"]
      130 GETTABLEKS                       R24 R24 K34 ["makeMockNetworkLayer"]
      132 CALL                             R23 1 1
      133 GETIMPORT                        R24 K4 [require]
      135 GETTABLEKS                       R25 R0 K20 ["Src"]
      137 GETTABLEKS                       R25 R25 K35 ["Reducers"]
      139 GETTABLEKS                       R25 R25 K36 ["MainReducer"]
      141 CALL                             R24 1 1
      142 GETIMPORT                        R25 K4 [require]
      144 GETTABLEKS                       R26 R0 K20 ["Src"]
      146 GETTABLEKS                       R26 R26 K37 ["Components"]
      148 GETTABLEKS                       R26 R26 K38 ["LayeredClothingEditor"]
      150 CALL                             R25 1 1
      151 NEWTABLE                         R26 4 0
      153 DUPCLOSURE                       R27 K39 [PROTO_1]
      154 CAPTURE                          VAL R19
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R24
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R20
      159 CAPTURE                          VAL R9
      160 CAPTURE                          VAL R10
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R12
      163 CAPTURE                          VAL R13
      164 CAPTURE                          VAL R15
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R5
      167 CAPTURE                          VAL R6
      168 CAPTURE                          VAL R8
      169 CAPTURE                          VAL R18
      170 CAPTURE                          VAL R17
      171 CAPTURE                          VAL R23
      172 CAPTURE                          VAL R22
      173 CAPTURE                          VAL R1
      174 CAPTURE                          VAL R21
      175 DUPCLOSURE                       R28 K40 [PROTO_3]
      176 CAPTURE                          VAL R21
      177 SETTABLEKS                       R28 R26 K41 ["runTestMinimal"]
      179 DUPCLOSURE                       R28 K42 [PROTO_4]
      180 CAPTURE                          VAL R27
      181 SETTABLEKS                       R28 R26 K43 ["runComponentTest"]
      183 DUPCLOSURE                       R28 K44 [PROTO_5]
      184 DUPCLOSURE                       R29 K45 [PROTO_6]
      185 CAPTURE                          VAL R27
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R25
      188 SETTABLEKS                       R29 R26 K46 ["runRhodiumTest"]
      190 RETURN                           R26 1
