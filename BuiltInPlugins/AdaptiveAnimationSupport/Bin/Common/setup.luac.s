PROTO_0:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Button"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_1:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_2:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Button"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_4:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Toolbar"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_5:
        0 LOADK                            R3 K0 ["HumanoidRigDescription"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADB                            R1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 0
        8 CALL                             R1 0 1
        9 JUMPIFNOT                        R1 ; [+7]
       10 LOADK                            R3 K2 ["DigitsRigDescription"]
       11 NAMECALL                         R1 R0 K1 ["IsA"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+2]
       15 LOADB                            R1 1
       16 RETURN                           R1 1
       17 LOADB                            R1 0
       18 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+32]
        5 LENGTH                           R1 R0
        6 LOADN                            R2 0
        7 JUMPIFNOTLT                      R2 R1 ; [+29]
        9 GETIMPORT                        R1 K2 [pairs]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 3
       13 FORGPREP_NEXT                    R1
       14 LOADK                            R9 K3 ["HumanoidRigDescription"]
       15 NAMECALL                         R7 R5 K4 ["IsA"]
       17 CALL                             R7 2 1
       18 JUMPIFNOT                        R7 ; [+2]
       19 LOADB                            R6 1
       20 JUMP                             ; [+11]
       21 GETUPVAL                         R7 1
       22 CALL                             R7 0 1
       23 JUMPIFNOT                        R7 ; [+7]
       24 LOADK                            R9 K5 ["DigitsRigDescription"]
       25 NAMECALL                         R7 R5 K4 ["IsA"]
       27 CALL                             R7 2 1
       28 JUMPIFNOT                        R7 ; [+2]
       29 LOADB                            R6 1
       30 JUMP                             ; [+1]
       31 LOADB                            R6 0
       32 JUMPIFNOT                        R6 ; [+2]
       33 LOADB                            R6 1
       34 RETURN                           R6 1
       35 FORGLOOP                         R1 2 ; [-22]
       37 LOADB                            R1 0
       38 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+43]
        5 LENGTH                           R1 R0
        6 LOADN                            R2 0
        7 JUMPIFNOTLT                      R2 R1 ; [+40]
        9 GETIMPORT                        R1 K2 [pairs]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 3
       13 FORGPREP_NEXT                    R1
       14 LOADK                            R9 K3 ["HumanoidRigDescription"]
       15 NAMECALL                         R7 R5 K4 ["IsA"]
       17 CALL                             R7 2 1
       18 JUMPIFNOT                        R7 ; [+2]
       19 LOADB                            R6 1
       20 JUMP                             ; [+11]
       21 GETUPVAL                         R7 1
       22 CALL                             R7 0 1
       23 JUMPIFNOT                        R7 ; [+7]
       24 LOADK                            R9 K5 ["DigitsRigDescription"]
       25 NAMECALL                         R7 R5 K4 ["IsA"]
       27 CALL                             R7 2 1
       28 JUMPIFNOT                        R7 ; [+2]
       29 LOADB                            R6 1
       30 JUMP                             ; [+1]
       31 LOADB                            R6 0
       32 JUMPIFNOT                        R6 ; [+13]
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R6 R6 K6 ["pluginLoader"]
       36 GETTABLEKS                       R6 R6 K7 ["_userHasInteracted"]
       38 JUMPIF                           R6 ; [+9]
       39 GETUPVAL                         R6 2
       40 GETTABLEKS                       R6 R6 K6 ["pluginLoader"]
       42 NAMECALL                         R6 R6 K8 ["_onUserInteracted"]
       44 CALL                             R6 1 0
       45 RETURN                           R0 0
       46 FORGLOOP                         R1 2 ; [-33]
       48 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["pluginLoader"]
        7 NAMECALL                         R0 R0 K2 ["_onUserInteracted"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 GETUPVAL                         R4 1
        8 JUMPIFNOT                        R4 ; [+73]
        9 NEWTABLE                         R4 0 1
       11 GETUPVAL                         R6 2
       12 CALL                             R6 0 1
       13 JUMPIFNOT                        R6 ; [+20]
       14 DUPTABLE                         R5 K3 [{"uri", "isPreexistingAction"}]
       15 DUPTABLE                         R6 K8 [{"DataModel", "PluginId", "Category", "ItemId"}]
       16 LOADK                            R7 K9 ["Standalone"]
       17 SETTABLEKS                       R7 R6 K4 ["DataModel"]
       19 LOADK                            R7 K10 ["AdaptiveAnimationSupport"]
       20 SETTABLEKS                       R7 R6 K5 ["PluginId"]
       22 LOADK                            R7 K11 ["Actions"]
       23 SETTABLEKS                       R7 R6 K6 ["Category"]
       25 LOADK                            R7 K12 ["Toggle"]
       26 SETTABLEKS                       R7 R6 K7 ["ItemId"]
       28 SETTABLEKS                       R6 R5 K1 ["uri"]
       30 LOADB                            R6 1
       31 SETTABLEKS                       R6 R5 K2 ["isPreexistingAction"]
       33 JUMP                             ; [+44]
       34 DUPTABLE                         R5 K20 [{"uri", "isPreexistingAction", "getText", "getTooltip", "icon", "enabled", "visible", "checkable", "checked"}]
       35 DUPTABLE                         R6 K8 [{"DataModel", "PluginId", "Category", "ItemId"}]
       36 LOADK                            R7 K9 ["Standalone"]
       37 SETTABLEKS                       R7 R6 K4 ["DataModel"]
       39 LOADK                            R7 K10 ["AdaptiveAnimationSupport"]
       40 SETTABLEKS                       R7 R6 K5 ["PluginId"]
       42 LOADK                            R7 K11 ["Actions"]
       43 SETTABLEKS                       R7 R6 K6 ["Category"]
       45 LOADK                            R7 K12 ["Toggle"]
       46 SETTABLEKS                       R7 R6 K7 ["ItemId"]
       48 SETTABLEKS                       R6 R5 K1 ["uri"]
       50 LOADB                            R6 0
       51 SETTABLEKS                       R6 R5 K2 ["isPreexistingAction"]
       53 DUPCLOSURE                       R6 K21 [PROTO_0]
       54 SETTABLEKS                       R6 R5 K13 ["getText"]
       56 DUPCLOSURE                       R6 K22 [PROTO_1]
       57 SETTABLEKS                       R6 R5 K14 ["getTooltip"]
       59 LOADK                            R6 K23 ["rbxlocaltheme://RemapRig"]
       60 SETTABLEKS                       R6 R5 K15 ["icon"]
       62 LOADB                            R6 1
       63 SETTABLEKS                       R6 R5 K16 ["enabled"]
       65 LOADB                            R6 1
       66 SETTABLEKS                       R6 R5 K17 ["visible"]
       68 GETUPVAL                         R7 3
       69 JUMPIFNOT                        R7 ; [+2]
       70 LOADB                            R6 1
       71 JUMP                             ; [+1]
       72 LOADNIL                          R6
       73 SETTABLEKS                       R6 R5 K18 ["checkable"]
       75 LOADB                            R6 0
       76 SETTABLEKS                       R6 R5 K19 ["checked"]
       78 SETLIST                          R4 R5 1 [1]
       80 MOVE                             R3 R4
       81 JUMP                             ; [+11]
       82 DUPTABLE                         R4 K26 [{"getName", "getDescription", "enabled"}]
       83 DUPCLOSURE                       R5 K27 [PROTO_2]
       84 SETTABLEKS                       R5 R4 K24 ["getName"]
       86 DUPCLOSURE                       R5 K28 [PROTO_3]
       87 SETTABLEKS                       R5 R4 K25 ["getDescription"]
       89 LOADB                            R5 0
       90 SETTABLEKS                       R5 R4 K16 ["enabled"]
       92 MOVE                             R2 R4
       93 DUPTABLE                         R4 K37 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "noToolbar", "getToolbarName", "buttonInfo", "actionInfos"}]
       94 SETTABLEKS                       R0 R4 K29 ["plugin"]
       96 LOADK                            R5 K10 ["AdaptiveAnimationSupport"]
       97 SETTABLEKS                       R5 R4 K30 ["pluginName"]
       99 GETUPVAL                         R5 4
      100 SETTABLEKS                       R5 R4 K31 ["translationResourceTable"]
      102 GETUPVAL                         R5 5
      103 SETTABLEKS                       R5 R4 K32 ["fallbackResourceTable"]
      105 GETUPVAL                         R5 1
      106 SETTABLEKS                       R5 R4 K33 ["noToolbar"]
      108 GETUPVAL                         R6 1
      109 JUMPIFNOT                        R6 ; [+2]
      110 LOADNIL                          R5
      111 JUMP                             ; [+1]
      112 DUPCLOSURE                       R5 K38 [PROTO_4]
      113 SETTABLEKS                       R5 R4 K34 ["getToolbarName"]
      115 GETUPVAL                         R6 1
      116 JUMPIFNOT                        R6 ; [+2]
      117 LOADNIL                          R5
      118 JUMP                             ; [+1]
      119 MOVE                             R5 R2
      120 SETTABLEKS                       R5 R4 K35 ["buttonInfo"]
      122 GETUPVAL                         R6 1
      123 JUMPIFNOT                        R6 ; [+2]
      124 MOVE                             R5 R3
      125 JUMP                             ; [+1]
      126 LOADNIL                          R5
      127 SETTABLEKS                       R5 R4 K36 ["actionInfos"]
      129 GETIMPORT                        R5 K40 [require]
      131 GETUPVAL                         R6 0
      132 GETTABLEKS                       R6 R6 K41 ["Src"]
      134 GETTABLEKS                       R6 R6 K42 ["Flags"]
      136 GETTABLEKS                       R6 R6 K43 ["getFFlagAdaptiveAnimationHandRig"]
      138 CALL                             R5 1 1
      139 GETIMPORT                        R6 K45 [game]
      141 LOADK                            R8 K46 ["RunService"]
      142 NAMECALL                         R6 R6 K47 ["GetService"]
      144 CALL                             R6 2 1
      145 GETUPVAL                         R8 6
      146 GETTABLEKS                       R8 R8 K48 ["get"]
      148 CALL                             R8 0 1
      149 GETUPVAL                         R9 6
      150 GETTABLEKS                       R9 R9 K9 ["Standalone"]
      152 JUMPIFEQ                         R8 R9 ; [+2]
      154 LOADB                            R7 0 +1
      155 LOADB                            R7 1
      156 NAMECALL                         R8 R6 K49 ["IsEdit"]
      158 CALL                             R8 1 1
      159 JUMPIF                           R7 ; [+1]
      160 JUMPIFNOT                        R8 ; [+63]
      161 GETUPVAL                         R9 1
      162 JUMPIF                           R9 ; [+3]
      163 LOADB                            R9 1
      164 SETTABLEKS                       R9 R2 K16 ["enabled"]
      166 GETUPVAL                         R9 7
      167 GETTABLEKS                       R9 R9 K50 ["build"]
      169 MOVE                             R10 R4
      170 CALL                             R9 1 1
      171 GETIMPORT                        R10 K45 [game]
      173 LOADK                            R12 K51 ["Selection"]
      174 NAMECALL                         R10 R10 K47 ["GetService"]
      176 CALL                             R10 2 1
      177 NEWCLOSURE                       R11 P5
      178 CAPTURE                          VAL R5
      179 NEWCLOSURE                       R12 P6
      180 CAPTURE                          VAL R10
      181 CAPTURE                          VAL R5
      182 GETTABLEKS                       R13 R10 K52 ["SelectionChangedThisFrame"]
      184 NEWCLOSURE                       R15 P7
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R5
      187 CAPTURE                          VAL R9
      188 NAMECALL                         R13 R13 K53 ["Connect"]
      190 CALL                             R13 2 1
      191 GETTABLEKS                       R14 R0 K54 ["Unloading"]
      193 NEWCLOSURE                       R16 P8
      194 CAPTURE                          VAL R13
      195 NAMECALL                         R14 R14 K53 ["Connect"]
      197 CALL                             R14 2 0
      198 MOVE                             R14 R12
      199 CALL                             R14 0 1
      200 JUMPIFNOT                        R14 ; [+11]
      201 LOADNIL                          R15
      202 GETTABLEKS                       R16 R6 K55 ["Heartbeat"]
      204 NEWCLOSURE                       R18 P9
      205 CAPTURE                          REF R15
      206 CAPTURE                          VAL R9
      207 NAMECALL                         R16 R16 K53 ["Connect"]
      209 CALL                             R16 2 1
      210 MOVE                             R15 R16
      211 CLOSEUPVALS                      R15
      212 GETTABLEKS                       R15 R9 K56 ["pluginLoader"]
      214 NAMECALL                         R15 R15 K57 ["waitForUserInteraction"]
      216 CALL                             R15 1 1
      217 JUMPIF                           R15 ; [+1]
      218 RETURN                           R0 0
      219 MOVE                             R16 R1
      220 MOVE                             R17 R0
      221 MOVE                             R18 R9
      222 CALL                             R16 2 0
      223 RETURN                           R0 0
      224 GETUPVAL                         R9 7
      225 GETTABLEKS                       R9 R9 K50 ["build"]
      227 MOVE                             R10 R4
      228 CALL                             R9 1 0
      229 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["PluginLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["PluginLoaderBuilder"]
       16 GETTABLEKS                       R3 R0 K9 ["Src"]
       18 GETTABLEKS                       R3 R3 K10 ["Resources"]
       20 GETTABLEKS                       R3 R3 K11 ["Localization"]
       22 GETTABLEKS                       R3 R3 K12 ["SourceStrings"]
       24 GETTABLEKS                       R4 R0 K9 ["Src"]
       26 GETTABLEKS                       R4 R4 K10 ["Resources"]
       28 GETTABLEKS                       R4 R4 K11 ["Localization"]
       30 GETTABLEKS                       R4 R4 K13 ["LocalizedStrings"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K14 ["Bin"]
       36 GETTABLEKS                       R6 R6 K15 ["Common"]
       38 GETTABLEKS                       R6 R6 K16 ["pluginType"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K14 ["Bin"]
       45 GETTABLEKS                       R7 R7 K15 ["Common"]
       47 GETTABLEKS                       R7 R7 K17 ["defineLuaFlags"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R6 K18 ["getFFlagRegisterActionsPluginLoader"]
       52 CALL                             R7 0 1
       53 GETIMPORT                        R8 K20 [game]
       55 LOADK                            R10 K21 ["ReplaceIsCheckableWithCheckable"]
       56 NAMECALL                         R8 R8 K22 ["GetEngineFeature"]
       58 CALL                             R8 2 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K9 ["Src"]
       63 GETTABLEKS                       R10 R10 K23 ["Flags"]
       65 GETTABLEKS                       R10 R10 K24 ["getFFlagAdaptiveAnimationHandRig"]
       67 CALL                             R9 1 1
       68 DUPCLOSURE                       R10 K25 [PROTO_10]
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R2
       77 RETURN                           R10 1
