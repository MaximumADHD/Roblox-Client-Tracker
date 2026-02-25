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
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+18]
        5 LENGTH                           R1 R0
        6 LOADN                            R2 0
        7 JUMPIFNOTLT                      R2 R1 ; [+15]
        9 GETIMPORT                        R1 K2 [pairs]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 3
       13 FORGPREP_NEXT                    R1
       14 LOADK                            R8 K3 ["HumanoidRigDescription"]
       15 NAMECALL                         R6 R5 K4 ["IsA"]
       17 CALL                             R6 2 1
       18 JUMPIFNOT                        R6 ; [+2]
       19 LOADB                            R6 1
       20 RETURN                           R6 1
       21 FORGLOOP                         R1 2 ; [-8]
       23 LOADB                            R1 0
       24 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+29]
        5 LENGTH                           R1 R0
        6 LOADN                            R2 0
        7 JUMPIFNOTLT                      R2 R1 ; [+26]
        9 GETIMPORT                        R1 K2 [pairs]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 3
       13 FORGPREP_NEXT                    R1
       14 LOADK                            R8 K3 ["HumanoidRigDescription"]
       15 NAMECALL                         R6 R5 K4 ["IsA"]
       17 CALL                             R6 2 1
       18 JUMPIFNOT                        R6 ; [+13]
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R7 R8 K5 ["pluginLoader"]
       22 GETTABLEKS                       R6 R7 K6 ["_userHasInteracted"]
       24 JUMPIF                           R6 ; [+9]
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R6 R7 K5 ["pluginLoader"]
       28 NAMECALL                         R6 R6 K7 ["_onUserInteracted"]
       30 CALL                             R6 1 0
       31 RETURN                           R0 0
       32 FORGLOOP                         R1 2 ; [-19]
       34 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["pluginLoader"]
        7 NAMECALL                         R0 R0 K2 ["_onUserInteracted"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 GETUPVAL                         R4 1
        8 JUMPIFNOT                        R4 ; [+50]
        9 NEWTABLE                         R4 0 1
       11 DUPTABLE                         R5 K10 [{"uri", "isPreexistingAction", "getText", "getTooltip", "icon", "enabled", "visible", "checkable", "checked"}]
       12 DUPTABLE                         R6 K15 [{"DataModel", "PluginId", "Category", "ItemId"}]
       13 LOADK                            R7 K16 ["Standalone"]
       14 SETTABLEKS                       R7 R6 K11 ["DataModel"]
       16 LOADK                            R7 K17 ["AdaptiveAnimationSupport"]
       17 SETTABLEKS                       R7 R6 K12 ["PluginId"]
       19 LOADK                            R7 K18 ["Actions"]
       20 SETTABLEKS                       R7 R6 K13 ["Category"]
       22 LOADK                            R7 K19 ["Toggle"]
       23 SETTABLEKS                       R7 R6 K14 ["ItemId"]
       25 SETTABLEKS                       R6 R5 K1 ["uri"]
       27 LOADB                            R6 0
       28 SETTABLEKS                       R6 R5 K2 ["isPreexistingAction"]
       30 DUPCLOSURE                       R6 K20 [PROTO_0]
       31 SETTABLEKS                       R6 R5 K3 ["getText"]
       33 DUPCLOSURE                       R6 K21 [PROTO_1]
       34 SETTABLEKS                       R6 R5 K4 ["getTooltip"]
       36 LOADK                            R6 K22 ["rbxlocaltheme://GameSettings"]
       37 SETTABLEKS                       R6 R5 K5 ["icon"]
       39 LOADB                            R6 1
       40 SETTABLEKS                       R6 R5 K6 ["enabled"]
       42 LOADB                            R6 1
       43 SETTABLEKS                       R6 R5 K7 ["visible"]
       45 GETUPVAL                         R7 2
       46 JUMPIFNOT                        R7 ; [+2]
       47 LOADB                            R6 1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R6
       50 SETTABLEKS                       R6 R5 K8 ["checkable"]
       52 LOADB                            R6 0
       53 SETTABLEKS                       R6 R5 K9 ["checked"]
       55 SETLIST                          R4 R5 1 [1]
       57 MOVE                             R3 R4
       58 JUMP                             ; [+14]
       59 DUPTABLE                         R4 K25 [{"getName", "getDescription", "icon", "enabled"}]
       60 DUPCLOSURE                       R5 K26 [PROTO_2]
       61 SETTABLEKS                       R5 R4 K23 ["getName"]
       63 DUPCLOSURE                       R5 K27 [PROTO_3]
       64 SETTABLEKS                       R5 R4 K24 ["getDescription"]
       66 LOADK                            R5 K22 ["rbxlocaltheme://GameSettings"]
       67 SETTABLEKS                       R5 R4 K5 ["icon"]
       69 LOADB                            R5 0
       70 SETTABLEKS                       R5 R4 K6 ["enabled"]
       72 MOVE                             R2 R4
       73 DUPTABLE                         R4 K36 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "noToolbar", "getToolbarName", "buttonInfo", "actionInfos"}]
       74 SETTABLEKS                       R0 R4 K28 ["plugin"]
       76 LOADK                            R5 K17 ["AdaptiveAnimationSupport"]
       77 SETTABLEKS                       R5 R4 K29 ["pluginName"]
       79 GETUPVAL                         R5 3
       80 SETTABLEKS                       R5 R4 K30 ["translationResourceTable"]
       82 GETUPVAL                         R5 4
       83 SETTABLEKS                       R5 R4 K31 ["fallbackResourceTable"]
       85 GETUPVAL                         R5 1
       86 SETTABLEKS                       R5 R4 K32 ["noToolbar"]
       88 GETUPVAL                         R6 1
       89 JUMPIFNOT                        R6 ; [+2]
       90 LOADNIL                          R5
       91 JUMP                             ; [+1]
       92 DUPCLOSURE                       R5 K37 [PROTO_4]
       93 SETTABLEKS                       R5 R4 K33 ["getToolbarName"]
       95 GETUPVAL                         R6 1
       96 JUMPIFNOT                        R6 ; [+2]
       97 LOADNIL                          R5
       98 JUMP                             ; [+1]
       99 MOVE                             R5 R2
      100 SETTABLEKS                       R5 R4 K34 ["buttonInfo"]
      102 GETUPVAL                         R6 1
      103 JUMPIFNOT                        R6 ; [+2]
      104 MOVE                             R5 R3
      105 JUMP                             ; [+1]
      106 LOADNIL                          R5
      107 SETTABLEKS                       R5 R4 K35 ["actionInfos"]
      109 GETIMPORT                        R5 K39 [game]
      111 LOADK                            R7 K40 ["RunService"]
      112 NAMECALL                         R5 R5 K41 ["GetService"]
      114 CALL                             R5 2 1
      115 GETUPVAL                         R8 5
      116 GETTABLEKS                       R7 R8 K42 ["get"]
      118 CALL                             R7 0 1
      119 GETUPVAL                         R9 5
      120 GETTABLEKS                       R8 R9 K16 ["Standalone"]
      122 JUMPIFEQ                         R7 R8 ; [+2]
      124 LOADB                            R6 0 +1
      125 LOADB                            R6 1
      126 NAMECALL                         R7 R5 K43 ["IsEdit"]
      128 CALL                             R7 1 1
      129 JUMPIF                           R6 ; [+1]
      130 JUMPIFNOT                        R7 ; [+59]
      131 GETUPVAL                         R8 1
      132 JUMPIF                           R8 ; [+3]
      133 LOADB                            R8 1
      134 SETTABLEKS                       R8 R2 K6 ["enabled"]
      136 GETUPVAL                         R9 6
      137 GETTABLEKS                       R8 R9 K44 ["build"]
      139 MOVE                             R9 R4
      140 CALL                             R8 1 1
      141 GETIMPORT                        R9 K39 [game]
      143 LOADK                            R11 K45 ["Selection"]
      144 NAMECALL                         R9 R9 K41 ["GetService"]
      146 CALL                             R9 2 1
      147 NEWCLOSURE                       R10 P5
      148 CAPTURE                          VAL R9
      149 GETTABLEKS                       R11 R9 K46 ["SelectionChangedThisFrame"]
      151 NEWCLOSURE                       R13 P6
      152 CAPTURE                          VAL R9
      153 CAPTURE                          VAL R8
      154 NAMECALL                         R11 R11 K47 ["Connect"]
      156 CALL                             R11 2 1
      157 GETTABLEKS                       R12 R0 K48 ["Unloading"]
      159 NEWCLOSURE                       R14 P7
      160 CAPTURE                          VAL R11
      161 NAMECALL                         R12 R12 K47 ["Connect"]
      163 CALL                             R12 2 0
      164 MOVE                             R12 R10
      165 CALL                             R12 0 1
      166 JUMPIFNOT                        R12 ; [+11]
      167 LOADNIL                          R13
      168 GETTABLEKS                       R14 R5 K49 ["Heartbeat"]
      170 NEWCLOSURE                       R16 P8
      171 CAPTURE                          REF R13
      172 CAPTURE                          VAL R8
      173 NAMECALL                         R14 R14 K47 ["Connect"]
      175 CALL                             R14 2 1
      176 MOVE                             R13 R14
      177 CLOSEUPVALS                      R13
      178 GETTABLEKS                       R13 R8 K50 ["pluginLoader"]
      180 NAMECALL                         R13 R13 K51 ["waitForUserInteraction"]
      182 CALL                             R13 1 1
      183 JUMPIF                           R13 ; [+1]
      184 RETURN                           R0 0
      185 MOVE                             R14 R1
      186 MOVE                             R15 R0
      187 MOVE                             R16 R8
      188 CALL                             R14 2 0
      189 RETURN                           R0 0
      190 GETUPVAL                         R9 6
      191 GETTABLEKS                       R8 R9 K44 ["build"]
      193 MOVE                             R9 R4
      194 CALL                             R8 1 0
      195 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["PluginLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["PluginLoaderBuilder"]
       16 GETTABLEKS                       R6 R0 K9 ["Src"]
       18 GETTABLEKS                       R5 R6 K10 ["Resources"]
       20 GETTABLEKS                       R4 R5 K11 ["Localization"]
       22 GETTABLEKS                       R3 R4 K12 ["SourceStrings"]
       24 GETTABLEKS                       R7 R0 K9 ["Src"]
       26 GETTABLEKS                       R6 R7 K10 ["Resources"]
       28 GETTABLEKS                       R5 R6 K11 ["Localization"]
       30 GETTABLEKS                       R4 R5 K13 ["LocalizedStrings"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R8 R0 K14 ["Bin"]
       36 GETTABLEKS                       R7 R8 K15 ["Common"]
       38 GETTABLEKS                       R6 R7 K16 ["pluginType"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R9 R0 K14 ["Bin"]
       45 GETTABLEKS                       R8 R9 K15 ["Common"]
       47 GETTABLEKS                       R7 R8 K17 ["defineLuaFlags"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R6 K18 ["getFFlagRegisterActionsPluginLoader"]
       52 CALL                             R7 0 1
       53 GETIMPORT                        R8 K20 [game]
       55 LOADK                            R10 K21 ["ReplaceIsCheckableWithCheckable"]
       56 NAMECALL                         R8 R8 K22 ["GetEngineFeature"]
       58 CALL                             R8 2 1
       59 DUPCLOSURE                       R9 K23 [PROTO_9]
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R2
       67 RETURN                           R9 1
