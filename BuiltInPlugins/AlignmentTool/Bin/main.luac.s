PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["destroy"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+7]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R0 R1 K1 ["unmount"]
       13 GETUPVAL                         R1 1
       14 CALL                             R0 1 0
       15 LOADNIL                          R0
       16 SETUPVAL                         R0 1
       17 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          REF R0
        4 CAPTURE                          UPVAL U1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K0 ["provide"]
        8 NEWTABLE                         R3 0 7
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K1 ["Plugin"]
       13 GETTABLEKS                       R4 R5 K2 ["new"]
       15 GETUPVAL                         R5 3
       16 CALL                             R4 1 1
       17 GETUPVAL                         R5 4
       18 GETUPVAL                         R6 5
       19 CALL                             R6 0 1
       20 GETUPVAL                         R8 6
       21 GETTABLEKS                       R7 R8 K2 ["new"]
       23 GETUPVAL                         R8 3
       24 NAMECALL                         R8 R8 K3 ["GetMouse"]
       26 CALL                             R8 1 -1
       27 CALL                             R7 -1 1
       28 GETUPVAL                         R9 7
       29 GETTABLEKS                       R8 R9 K2 ["new"]
       31 GETUPVAL                         R9 8
       32 CALL                             R8 1 1
       33 GETUPVAL                         R10 9
       34 GETTABLEKS                       R9 R10 K2 ["new"]
       36 GETUPVAL                         R10 10
       37 CALL                             R9 1 1
       38 GETUPVAL                         R10 11
       39 SETLIST                          R3 R4 7 [1]
       41 DUPTABLE                         R4 K5 [{"AlignTool"}]
       42 GETUPVAL                         R6 1
       43 GETTABLEKS                       R5 R6 K6 ["createElement"]
       45 GETUPVAL                         R6 12
       46 DUPTABLE                         R7 K8 [{"pluginLoaderContext"}]
       47 GETUPVAL                         R8 13
       48 SETTABLEKS                       R8 R7 K7 ["pluginLoaderContext"]
       50 CALL                             R5 2 1
       51 SETTABLEKS                       R5 R4 K4 ["AlignTool"]
       53 CALL                             R2 2 1
       54 GETUPVAL                         R4 1
       55 GETTABLEKS                       R3 R4 K9 ["mount"]
       57 MOVE                             R4 R2
       58 CALL                             R3 1 1
       59 MOVE                             R0 R3
       60 GETUPVAL                         R3 0
       61 JUMPIFNOT                        R3 ; [+6]
       62 GETUPVAL                         R3 0
       63 LOADK                            R5 K10 ["Roact tree"]
       64 MOVE                             R6 R0
       65 NAMECALL                         R3 R3 K11 ["addRoactTree"]
       67 CALL                             R3 3 0
       68 GETUPVAL                         R4 3
       69 GETTABLEKS                       R3 R4 K12 ["Unloading"]
       71 MOVE                             R5 R1
       72 NAMECALL                         R3 R3 K13 ["Connect"]
       74 CALL                             R3 2 0
       75 CLOSEUPVALS                      R0
       76 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R4 K1 [script]
        2 GETTABLEKS                       R3 R4 K2 ["Parent"]
        4 GETTABLEKS                       R2 R3 K2 ["Parent"]
        6 GETIMPORT                        R3 K4 [require]
        8 GETTABLEKS                       R6 R2 K5 ["Src"]
       10 GETTABLEKS                       R5 R6 K6 ["Flags"]
       12 GETTABLEKS                       R4 R5 K7 ["getFFlagAlignToolRoactInspector"]
       14 CALL                             R3 1 1
       15 GETIMPORT                        R4 K4 [require]
       17 GETTABLEKS                       R6 R2 K8 ["Packages"]
       19 GETTABLEKS                       R5 R6 K9 ["Roact"]
       21 CALL                             R4 1 1
       22 GETIMPORT                        R5 K4 [require]
       24 GETTABLEKS                       R7 R2 K8 ["Packages"]
       26 GETTABLEKS                       R6 R7 K10 ["Rodux"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K4 [require]
       31 GETTABLEKS                       R8 R2 K8 ["Packages"]
       33 GETTABLEKS                       R7 R8 K11 ["Framework"]
       35 CALL                             R6 1 1
       36 GETTABLEKS                       R7 R6 K12 ["ContextServices"]
       38 GETTABLEKS                       R8 R7 K13 ["Analytics"]
       40 GETTABLEKS                       R9 R7 K14 ["Localization"]
       42 GETTABLEKS                       R10 R7 K15 ["Mouse"]
       44 GETTABLEKS                       R11 R7 K16 ["Store"]
       46 GETIMPORT                        R12 K4 [require]
       48 GETTABLEKS                       R15 R2 K5 ["Src"]
       50 GETTABLEKS                       R14 R15 K17 ["Components"]
       52 GETTABLEKS                       R13 R14 K18 ["AlignmentToolPlugin"]
       54 CALL                             R12 1 1
       55 GETIMPORT                        R13 K4 [require]
       57 GETTABLEKS                       R16 R2 K5 ["Src"]
       59 GETTABLEKS                       R15 R16 K19 ["Reducers"]
       61 GETTABLEKS                       R14 R15 K20 ["MainReducer"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K4 [require]
       66 GETTABLEKS                       R17 R2 K5 ["Src"]
       68 GETTABLEKS                       R16 R17 K21 ["Resources"]
       70 GETTABLEKS                       R15 R16 K22 ["MakeTheme"]
       72 CALL                             R14 1 1
       73 GETIMPORT                        R15 K4 [require]
       75 GETTABLEKS                       R18 R2 K5 ["Src"]
       77 GETTABLEKS                       R17 R18 K21 ["Resources"]
       79 GETTABLEKS                       R16 R17 K23 ["AnalyticsHandlers"]
       81 CALL                             R15 1 1
       82 GETTABLEKS                       R19 R2 K5 ["Src"]
       84 GETTABLEKS                       R18 R19 K21 ["Resources"]
       86 GETTABLEKS                       R17 R18 K14 ["Localization"]
       88 GETTABLEKS                       R16 R17 K24 ["SourceStrings"]
       90 GETTABLEKS                       R20 R2 K5 ["Src"]
       92 GETTABLEKS                       R19 R20 K21 ["Resources"]
       94 GETTABLEKS                       R18 R19 K14 ["Localization"]
       96 GETTABLEKS                       R17 R18 K25 ["LocalizedStrings"]
       98 GETTABLEKS                       R18 R9 K26 ["new"]
      100 DUPTABLE                         R19 K30 [{"pluginName", "stringResourceTable", "translationResourceTable"}]
      101 LOADK                            R20 K31 ["AlignmentTool"]
      102 SETTABLEKS                       R20 R19 K27 ["pluginName"]
      104 SETTABLEKS                       R16 R19 K28 ["stringResourceTable"]
      106 SETTABLEKS                       R17 R19 K29 ["translationResourceTable"]
      108 CALL                             R18 1 1
      109 GETTABLEKS                       R20 R5 K16 ["Store"]
      111 GETTABLEKS                       R19 R20 K26 ["new"]
      113 MOVE                             R20 R13
      114 LOADNIL                          R21
      115 NEWTABLE                         R22 0 1
      117 GETTABLEKS                       R23 R5 K32 ["thunkMiddleware"]
      119 SETLIST                          R22 R23 1 [1]
      121 CALL                             R19 3 1
      122 GETIMPORT                        R20 K4 [require]
      124 GETTABLEKS                       R23 R2 K5 ["Src"]
      126 GETTABLEKS                       R22 R23 K33 ["Utility"]
      128 GETTABLEKS                       R21 R22 K34 ["CalloutController"]
      130 CALL                             R20 1 1
      131 GETTABLEKS                       R21 R20 K26 ["new"]
      133 CALL                             R21 0 1
      134 LOADK                            R24 K35 ["Callout"]
      135 LOADK                            R25 K36 ["Title"]
      136 NAMECALL                         R22 R18 K37 ["getText"]
      138 CALL                             R22 3 1
      139 LOADK                            R25 K35 ["Callout"]
      140 LOADK                            R26 K38 ["Description"]
      141 NAMECALL                         R23 R18 K37 ["getText"]
      143 CALL                             R23 3 1
      144 LOADK                            R26 K39 ["AlignToolCallout"]
      145 MOVE                             R27 R22
      146 MOVE                             R28 R23
      147 LOADK                            R29 K40 ["https://developer.roblox.com/en-us/resources/studio/Align-Tool"]
      148 NAMECALL                         R24 R21 K41 ["defineCallout"]
      150 CALL                             R24 5 0
      151 LOADNIL                          R22
      152 MOVE                             R23 R3
      153 CALL                             R23 0 1
      154 JUMPIFNOT                        R23 ; [+28]
      155 GETIMPORT                        R23 K43 [game]
      157 LOADK                            R25 K44 ["StudioService"]
      158 NAMECALL                         R23 R23 K45 ["GetService"]
      160 CALL                             R23 2 1
      161 NAMECALL                         R23 R23 K46 ["HasInternalPermission"]
      163 CALL                             R23 1 1
      164 JUMPIFNOT                        R23 ; [+18]
      165 GETTABLEKS                       R25 R2 K8 ["Packages"]
      167 GETTABLEKS                       R24 R25 K47 ["DeveloperTools"]
      169 GETTABLEKS                       R23 R24 K48 ["forPlugin"]
      171 GETTABLEKS                       R24 R2 K49 ["Name"]
      173 MOVE                             R25 R0
      174 CALL                             R23 2 1
      175 MOVE                             R22 R23
      176 GETTABLEKS                       R23 R4 K50 ["setGlobalConfig"]
      178 DUPTABLE                         R24 K52 [{"elementTracing"}]
      179 LOADB                            R25 1
      180 SETTABLEKS                       R25 R24 K51 ["elementTracing"]
      182 CALL                             R23 1 0
      183 NEWCLOSURE                       R23 P0
      184 CAPTURE                          REF R22
      185 CAPTURE                          VAL R4
      186 CAPTURE                          VAL R7
      187 CAPTURE                          VAL R0
      188 CAPTURE                          VAL R18
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R10
      191 CAPTURE                          VAL R11
      192 CAPTURE                          VAL R19
      193 CAPTURE                          VAL R8
      194 CAPTURE                          VAL R15
      195 CAPTURE                          VAL R21
      196 CAPTURE                          VAL R12
      197 CAPTURE                          VAL R1
      198 MOVE                             R24 R23
      199 CALL                             R24 0 0
      200 CLOSEUPVALS                      R22
      201 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 RETURN                           R0 1
