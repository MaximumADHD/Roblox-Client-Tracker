PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETTABLEKS                       R3 R2 K0 ["enabled"]
        4 JUMPIFNOT                        R3 ; [+25]
        5 LOADB                            R3 0
        6 SETTABLEKS                       R3 R2 K0 ["enabled"]
        8 GETTABLEKS                       R3 R2 K1 ["close"]
       10 CALL                             R3 0 0
       11 LOADNIL                          R3
       12 SETUPVAL                         R3 1
       13 JUMPIF                           R1 ; [+16]
       14 GETIMPORT                        R3 K3 [plugin]
       16 NAMECALL                         R3 R3 K4 ["Deactivate"]
       18 CALL                             R3 1 0
       19 GETIMPORT                        R3 K3 [plugin]
       21 GETUPVAL                         R5 2
       22 GETIMPORT                        R6 K7 [UDim2.new]
       24 CALL                             R6 0 -1
       25 NAMECALL                         R3 R3 K8 ["SelectRibbonTool"]
       27 CALL                             R3 -1 0
       28 LOADNIL                          R3
       29 SETUPVAL                         R3 2
       30 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+15]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R2 R3 R1
        5 GETTABLEKS                       R3 R2 K0 ["enabled"]
        7 JUMPIFNOT                        R3 ; [+21]
        8 LOADB                            R3 0
        9 SETTABLEKS                       R3 R2 K0 ["enabled"]
       11 GETTABLEKS                       R3 R2 K1 ["close"]
       13 CALL                             R3 0 0
       14 LOADNIL                          R3
       15 SETUPVAL                         R3 0
       16 JUMP                             ; [+12]
       17 GETIMPORT                        R1 K3 [plugin]
       19 NAMECALL                         R1 R1 K4 ["GetSelectedRibbonTool"]
       21 CALL                             R1 1 1
       22 SETUPVAL                         R1 2
       23 GETIMPORT                        R1 K3 [plugin]
       25 LOADB                            R3 0
       26 NAMECALL                         R1 R1 K5 ["Activate"]
       28 CALL                             R1 2 0
       29 GETUPVAL                         R2 1
       30 GETTABLE                         R1 R2 R0
       31 SETUPVAL                         R0 0
       32 LOADB                            R2 1
       33 SETUPVAL                         R2 3
       34 LOADB                            R2 1
       35 SETTABLEKS                       R2 R1 K0 ["enabled"]
       37 GETTABLEKS                       R2 R1 K6 ["open"]
       39 CALL                             R2 0 0
       40 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+34]
        2 LOADB                            R0 0
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+30]
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R2 2
        8 GETTABLE                         R1 R2 R0
        9 GETTABLEKS                       R2 R1 K0 ["enabled"]
       11 JUMPIFNOT                        R2 ; [+24]
       12 LOADB                            R2 0
       13 SETTABLEKS                       R2 R1 K0 ["enabled"]
       15 GETTABLEKS                       R2 R1 K1 ["close"]
       17 CALL                             R2 0 0
       18 LOADNIL                          R2
       19 SETUPVAL                         R2 1
       20 GETIMPORT                        R2 K3 [plugin]
       22 NAMECALL                         R2 R2 K4 ["Deactivate"]
       24 CALL                             R2 1 0
       25 GETIMPORT                        R2 K3 [plugin]
       27 GETUPVAL                         R4 3
       28 GETIMPORT                        R5 K7 [UDim2.new]
       30 CALL                             R5 0 -1
       31 NAMECALL                         R2 R2 K8 ["SelectRibbonTool"]
       33 CALL                             R2 -1 0
       34 LOADNIL                          R2
       35 SETUPVAL                         R2 3
       36 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        2 GETIMPORT                        R2 K3 [Enum.KeyCode.Escape]
        4 JUMPIFNOTEQ                      R1 R2 ; [+37]
        6 GETUPVAL                         R1 0
        7 JUMPIFNOT                        R1 ; [+34]
        8 LOADB                            R1 0
        9 SETUPVAL                         R1 0
       10 GETUPVAL                         R1 1
       11 JUMPIFNOT                        R1 ; [+30]
       12 GETUPVAL                         R1 1
       13 GETUPVAL                         R3 2
       14 GETTABLE                         R2 R3 R1
       15 GETTABLEKS                       R3 R2 K4 ["enabled"]
       17 JUMPIFNOT                        R3 ; [+24]
       18 LOADB                            R3 0
       19 SETTABLEKS                       R3 R2 K4 ["enabled"]
       21 GETTABLEKS                       R3 R2 K5 ["close"]
       23 CALL                             R3 0 0
       24 LOADNIL                          R3
       25 SETUPVAL                         R3 1
       26 GETIMPORT                        R3 K7 [plugin]
       28 NAMECALL                         R3 R3 K8 ["Deactivate"]
       30 CALL                             R3 1 0
       31 GETIMPORT                        R3 K7 [plugin]
       33 GETUPVAL                         R5 3
       34 GETIMPORT                        R6 K11 [UDim2.new]
       36 CALL                             R6 0 -1
       37 NAMECALL                         R3 R3 K12 ["SelectRibbonTool"]
       39 CALL                             R3 -1 0
       40 LOADNIL                          R3
       41 SETUPVAL                         R3 3
       42 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R3 K0 ["Place"]
        1 RETURN                           R3 1

PROTO_5:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R1 R2 R0
        3 GETTABLEKS                       R2 R1 K0 ["enabled"]
        5 JUMPIFNOT                        R2 ; [+24]
        6 LOADB                            R2 0
        7 SETTABLEKS                       R2 R1 K0 ["enabled"]
        9 GETTABLEKS                       R2 R1 K1 ["close"]
       11 CALL                             R2 0 0
       12 LOADNIL                          R2
       13 SETUPVAL                         R2 2
       14 GETIMPORT                        R2 K3 [plugin]
       16 NAMECALL                         R2 R2 K4 ["Deactivate"]
       18 CALL                             R2 1 0
       19 GETIMPORT                        R2 K3 [plugin]
       21 GETUPVAL                         R4 3
       22 GETIMPORT                        R5 K7 [UDim2.new]
       24 CALL                             R5 0 -1
       25 NAMECALL                         R2 R2 K8 ["SelectRibbonTool"]
       27 CALL                             R2 -1 0
       28 LOADNIL                          R2
       29 SETUPVAL                         R2 3
       30 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enabled"]
        3 JUMPIFNOT                        R0 ; [+31]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLE                         R1 R2 R0
        7 GETTABLEKS                       R2 R1 K0 ["enabled"]
        9 JUMPIFNOT                        R2 ; [+66]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K0 ["enabled"]
       13 GETTABLEKS                       R2 R1 K1 ["close"]
       15 CALL                             R2 0 0
       16 LOADNIL                          R2
       17 SETUPVAL                         R2 3
       18 GETIMPORT                        R2 K3 [plugin]
       20 NAMECALL                         R2 R2 K4 ["Deactivate"]
       22 CALL                             R2 1 0
       23 GETIMPORT                        R2 K3 [plugin]
       25 GETUPVAL                         R4 4
       26 GETIMPORT                        R5 K7 [UDim2.new]
       28 CALL                             R5 0 -1
       29 NAMECALL                         R2 R2 K8 ["SelectRibbonTool"]
       31 CALL                             R2 -1 0
       32 LOADNIL                          R2
       33 SETUPVAL                         R2 4
       34 RETURN                           R0 0
       35 GETUPVAL                         R0 1
       36 GETUPVAL                         R1 3
       37 JUMPIFNOT                        R1 ; [+15]
       38 GETUPVAL                         R1 3
       39 GETUPVAL                         R3 2
       40 GETTABLE                         R2 R3 R1
       41 GETTABLEKS                       R3 R2 K0 ["enabled"]
       43 JUMPIFNOT                        R3 ; [+21]
       44 LOADB                            R3 0
       45 SETTABLEKS                       R3 R2 K0 ["enabled"]
       47 GETTABLEKS                       R3 R2 K1 ["close"]
       49 CALL                             R3 0 0
       50 LOADNIL                          R3
       51 SETUPVAL                         R3 3
       52 JUMP                             ; [+12]
       53 GETIMPORT                        R1 K3 [plugin]
       55 NAMECALL                         R1 R1 K9 ["GetSelectedRibbonTool"]
       57 CALL                             R1 1 1
       58 SETUPVAL                         R1 4
       59 GETIMPORT                        R1 K3 [plugin]
       61 LOADB                            R3 0
       62 NAMECALL                         R1 R1 K10 ["Activate"]
       64 CALL                             R1 2 0
       65 GETUPVAL                         R2 2
       66 GETTABLE                         R1 R2 R0
       67 SETUPVAL                         R0 3
       68 LOADB                            R2 1
       69 SETUPVAL                         R2 5
       70 LOADB                            R2 1
       71 SETTABLEKS                       R2 R1 K0 ["enabled"]
       73 GETTABLEKS                       R2 R1 K11 ["open"]
       75 CALL                             R2 0 0
       76 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pluginLoader"]
        3 NAMECALL                         R0 R0 K1 ["waitForUserInteraction"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 GETIMPORT                        R1 K3 [plugin]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K4 ["pluginLoaderContext"]
       12 GETUPVAL                         R3 2
       13 GETUPVAL                         R4 3
       14 CALL                             R0 4 1
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R2 R0 K5 ["open"]
       18 SETTABLEKS                       R2 R1 K5 ["open"]
       20 GETUPVAL                         R1 2
       21 GETTABLEKS                       R2 R0 K6 ["close"]
       23 SETTABLEKS                       R2 R1 K6 ["close"]
       25 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K3 [script]
       12 LOADK                            R2 K6 ["ConstraintTool"]
       13 NAMECALL                         R0 R0 K7 ["FindFirstAncestor"]
       15 CALL                             R0 2 1
       16 GETIMPORT                        R1 K1 [require]
       18 GETTABLEKS                       R2 R0 K8 ["Packages"]
       20 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       22 CALL                             R1 1 1
       23 GETTABLEKS                       R2 R1 K10 ["launch"]
       25 LOADK                            R3 K6 ["ConstraintTool"]
       26 GETTABLEKS                       R4 R0 K11 ["Src"]
       28 CALL                             R2 2 0
       29 GETTABLEKS                       R2 R1 K12 ["isCli"]
       31 CALL                             R2 0 1
       32 JUMPIFNOT                        R2 ; [+1]
       33 RETURN                           R0 0
       34 GETIMPORT                        R2 K14 [game]
       36 LOADK                            R4 K15 ["EnableConstraintToolLuaPlugin2"]
       37 NAMECALL                         R2 R2 K16 ["GetFastFlag"]
       39 CALL                             R2 2 1
       40 JUMPIF                           R2 ; [+1]
       41 RETURN                           R0 0
       42 GETIMPORT                        R2 K14 [game]
       44 LOADK                            R4 K17 ["UserInputService"]
       45 NAMECALL                         R2 R2 K18 ["GetService"]
       47 CALL                             R2 2 1
       48 GETIMPORT                        R3 K1 [require]
       50 GETTABLEKS                       R4 R0 K11 ["Src"]
       52 GETTABLEKS                       R4 R4 K19 ["Resources"]
       54 GETTABLEKS                       R4 R4 K20 ["ConstraintData"]
       56 CALL                             R3 1 1
       57 GETIMPORT                        R4 K22 [plugin]
       59 GETTABLEKS                       R5 R0 K23 ["Name"]
       61 SETTABLEKS                       R5 R4 K23 ["Name"]
       63 GETTABLEKS                       R4 R0 K11 ["Src"]
       65 GETTABLEKS                       R4 R4 K19 ["Resources"]
       67 GETTABLEKS                       R4 R4 K24 ["Localization"]
       69 GETTABLEKS                       R4 R4 K25 ["SourceStrings"]
       71 GETTABLEKS                       R5 R0 K11 ["Src"]
       73 GETTABLEKS                       R5 R5 K19 ["Resources"]
       75 GETTABLEKS                       R5 R5 K24 ["Localization"]
       77 GETTABLEKS                       R5 R5 K26 ["LocalizedStrings"]
       79 GETIMPORT                        R6 K1 [require]
       81 GETTABLEKS                       R7 R0 K8 ["Packages"]
       83 GETTABLEKS                       R7 R7 K27 ["PluginLoader"]
       85 CALL                             R6 1 1
       86 GETTABLEKS                       R7 R6 K28 ["PluginLoaderBuilder"]
       88 LOADNIL                          R8
       89 NEWTABLE                         R9 0 0
       91 LOADB                            R10 0
       92 LOADNIL                          R11
       93 NEWCLOSURE                       R12 P0
       94 CAPTURE                          VAL R9
       95 CAPTURE                          REF R8
       96 CAPTURE                          REF R11
       97 NEWCLOSURE                       R13 P1
       98 CAPTURE                          REF R8
       99 CAPTURE                          VAL R9
      100 CAPTURE                          REF R11
      101 CAPTURE                          REF R10
      102 NEWCLOSURE                       R14 P2
      103 CAPTURE                          REF R10
      104 CAPTURE                          REF R8
      105 CAPTURE                          VAL R9
      106 CAPTURE                          REF R11
      107 GETTABLEKS                       R15 R2 K29 ["InputEnded"]
      109 NEWCLOSURE                       R17 P3
      110 CAPTURE                          REF R10
      111 CAPTURE                          REF R8
      112 CAPTURE                          VAL R9
      113 CAPTURE                          REF R11
      114 NAMECALL                         R15 R15 K30 ["Connect"]
      116 CALL                             R15 2 0
      117 MOVE                             R15 R3
      118 LOADNIL                          R16
      119 LOADNIL                          R17
      120 FORGPREP                         R15
      121 DUPTABLE                         R20 K35 [{"getName", "getDescription", "icon", "enabled"}]
      122 DUPCLOSURE                       R21 K36 [PROTO_4]
      123 SETTABLEKS                       R21 R20 K31 ["getName"]
      125 DUPCLOSURE                       R21 K37 [PROTO_5]
      126 SETTABLEKS                       R21 R20 K32 ["getDescription"]
      128 LOADK                            R21 K38 [""]
      129 SETTABLEKS                       R21 R20 K33 ["icon"]
      131 LOADB                            R21 0
      132 SETTABLEKS                       R21 R20 K34 ["enabled"]
      134 DUPTABLE                         R21 K44 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo"}]
      135 GETIMPORT                        R22 K22 [plugin]
      137 SETTABLEKS                       R22 R21 K21 ["plugin"]
      139 LOADK                            R22 K6 ["ConstraintTool"]
      140 SETTABLEKS                       R22 R21 K39 ["pluginName"]
      142 SETTABLEKS                       R5 R21 K40 ["translationResourceTable"]
      144 SETTABLEKS                       R4 R21 K41 ["fallbackResourceTable"]
      146 NEWCLOSURE                       R22 P6
      147 CAPTURE                          VAL R18
      148 SETTABLEKS                       R22 R21 K42 ["getToolbarName"]
      150 SETTABLEKS                       R20 R21 K43 ["buttonInfo"]
      152 LOADB                            R22 1
      153 SETTABLEKS                       R22 R20 K34 ["enabled"]
      155 GETTABLEKS                       R22 R7 K45 ["build"]
      157 MOVE                             R23 R21
      158 CALL                             R22 1 1
      159 NEWCLOSURE                       R23 P7
      160 CAPTURE                          VAL R18
      161 CAPTURE                          VAL R9
      162 CAPTURE                          REF R8
      163 CAPTURE                          REF R11
      164 DUPTABLE                         R24 K48 [{"pluginLoaderContext", "enabled", "closeCallback"}]
      165 SETTABLEKS                       R22 R24 K46 ["pluginLoaderContext"]
      167 LOADB                            R25 0
      168 SETTABLEKS                       R25 R24 K34 ["enabled"]
      170 SETTABLEKS                       R23 R24 K47 ["closeCallback"]
      172 SETTABLE                         R24 R9 R18
      173 GETIMPORT                        R24 K1 [require]
      175 GETIMPORT                        R25 K3 [script]
      177 GETTABLEKS                       R25 R25 K4 ["Parent"]
      179 GETTABLEKS                       R25 R25 K49 ["main"]
      181 CALL                             R24 1 1
      182 GETTABLE                         R25 R9 R18
      183 GETTABLEKS                       R26 R22 K50 ["mainButtonClickedSignal"]
      185 NEWCLOSURE                       R28 P8
      186 CAPTURE                          VAL R25
      187 CAPTURE                          VAL R18
      188 CAPTURE                          VAL R9
      189 CAPTURE                          REF R8
      190 CAPTURE                          REF R11
      191 CAPTURE                          REF R10
      192 NAMECALL                         R26 R26 K30 ["Connect"]
      194 CALL                             R26 2 0
      195 GETIMPORT                        R26 K53 [task.spawn]
      197 NEWCLOSURE                       R27 P9
      198 CAPTURE                          VAL R22
      199 CAPTURE                          VAL R24
      200 CAPTURE                          VAL R25
      201 CAPTURE                          VAL R18
      202 CALL                             R26 1 0
      203 FORGLOOP                         R15 2 ; [-83]
      205 CLOSEUPVALS                      R8
      206 RETURN                           R0 0
