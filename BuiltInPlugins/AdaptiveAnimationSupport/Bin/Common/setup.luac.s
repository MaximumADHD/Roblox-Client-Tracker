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
        4 LOADK                            R7 K1 ["Toolbar"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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
       33 GETUPVAL                         R8 2
       34 GETTABLEKS                       R7 R8 K6 ["pluginLoader"]
       36 GETTABLEKS                       R6 R7 K7 ["_userHasInteracted"]
       38 JUMPIF                           R6 ; [+9]
       39 GETUPVAL                         R7 2
       40 GETTABLEKS                       R6 R7 K6 ["pluginLoader"]
       42 NAMECALL                         R6 R6 K8 ["_onUserInteracted"]
       44 CALL                             R6 1 0
       45 RETURN                           R0 0
       46 FORGLOOP                         R1 2 ; [-33]
       48 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["pluginLoader"]
        7 NAMECALL                         R0 R0 K2 ["_onUserInteracted"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 GETUPVAL                         R4 1
        8 JUMPIFNOT                        R4 ; [+25]
        9 NEWTABLE                         R4 0 1
       11 DUPTABLE                         R5 K3 [{"uri", "isPreexistingAction"}]
       12 DUPTABLE                         R6 K8 [{"DataModel", "PluginId", "Category", "ItemId"}]
       13 LOADK                            R7 K9 ["Standalone"]
       14 SETTABLEKS                       R7 R6 K4 ["DataModel"]
       16 LOADK                            R7 K10 ["AdaptiveAnimationSupport"]
       17 SETTABLEKS                       R7 R6 K5 ["PluginId"]
       19 LOADK                            R7 K11 ["Actions"]
       20 SETTABLEKS                       R7 R6 K6 ["Category"]
       22 LOADK                            R7 K12 ["Toggle"]
       23 SETTABLEKS                       R7 R6 K7 ["ItemId"]
       25 SETTABLEKS                       R6 R5 K1 ["uri"]
       27 LOADB                            R6 1
       28 SETTABLEKS                       R6 R5 K2 ["isPreexistingAction"]
       30 SETLIST                          R4 R5 1 [1]
       32 MOVE                             R3 R4
       33 JUMP                             ; [+11]
       34 DUPTABLE                         R4 K16 [{"getName", "getDescription", "enabled"}]
       35 DUPCLOSURE                       R5 K17 [PROTO_0]
       36 SETTABLEKS                       R5 R4 K13 ["getName"]
       38 DUPCLOSURE                       R5 K18 [PROTO_1]
       39 SETTABLEKS                       R5 R4 K14 ["getDescription"]
       41 LOADB                            R5 0
       42 SETTABLEKS                       R5 R4 K15 ["enabled"]
       44 MOVE                             R2 R4
       45 DUPTABLE                         R4 K27 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "noToolbar", "getToolbarName", "buttonInfo", "actionInfos"}]
       46 SETTABLEKS                       R0 R4 K19 ["plugin"]
       48 LOADK                            R5 K10 ["AdaptiveAnimationSupport"]
       49 SETTABLEKS                       R5 R4 K20 ["pluginName"]
       51 GETUPVAL                         R5 2
       52 SETTABLEKS                       R5 R4 K21 ["translationResourceTable"]
       54 GETUPVAL                         R5 3
       55 SETTABLEKS                       R5 R4 K22 ["fallbackResourceTable"]
       57 GETUPVAL                         R5 1
       58 SETTABLEKS                       R5 R4 K23 ["noToolbar"]
       60 GETUPVAL                         R6 1
       61 JUMPIFNOT                        R6 ; [+2]
       62 LOADNIL                          R5
       63 JUMP                             ; [+1]
       64 DUPCLOSURE                       R5 K28 [PROTO_2]
       65 SETTABLEKS                       R5 R4 K24 ["getToolbarName"]
       67 GETUPVAL                         R6 1
       68 JUMPIFNOT                        R6 ; [+2]
       69 LOADNIL                          R5
       70 JUMP                             ; [+1]
       71 MOVE                             R5 R2
       72 SETTABLEKS                       R5 R4 K25 ["buttonInfo"]
       74 GETUPVAL                         R6 1
       75 JUMPIFNOT                        R6 ; [+2]
       76 MOVE                             R5 R3
       77 JUMP                             ; [+1]
       78 LOADNIL                          R5
       79 SETTABLEKS                       R5 R4 K26 ["actionInfos"]
       81 GETIMPORT                        R5 K30 [require]
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R8 R9 K31 ["Src"]
       86 GETTABLEKS                       R7 R8 K32 ["Flags"]
       88 GETTABLEKS                       R6 R7 K33 ["getFFlagAdaptiveAnimationHandRig"]
       90 CALL                             R5 1 1
       91 GETIMPORT                        R6 K35 [game]
       93 LOADK                            R8 K36 ["RunService"]
       94 NAMECALL                         R6 R6 K37 ["GetService"]
       96 CALL                             R6 2 1
       97 GETUPVAL                         R9 4
       98 GETTABLEKS                       R8 R9 K38 ["get"]
      100 CALL                             R8 0 1
      101 GETUPVAL                         R10 4
      102 GETTABLEKS                       R9 R10 K9 ["Standalone"]
      104 JUMPIFEQ                         R8 R9 ; [+2]
      106 LOADB                            R7 0 +1
      107 LOADB                            R7 1
      108 NAMECALL                         R8 R6 K39 ["IsEdit"]
      110 CALL                             R8 1 1
      111 JUMPIF                           R7 ; [+1]
      112 JUMPIFNOT                        R8 ; [+63]
      113 GETUPVAL                         R9 1
      114 JUMPIF                           R9 ; [+3]
      115 LOADB                            R9 1
      116 SETTABLEKS                       R9 R2 K15 ["enabled"]
      118 GETUPVAL                         R10 5
      119 GETTABLEKS                       R9 R10 K40 ["build"]
      121 MOVE                             R10 R4
      122 CALL                             R9 1 1
      123 GETIMPORT                        R10 K35 [game]
      125 LOADK                            R12 K41 ["Selection"]
      126 NAMECALL                         R10 R10 K37 ["GetService"]
      128 CALL                             R10 2 1
      129 NEWCLOSURE                       R11 P3
      130 CAPTURE                          VAL R5
      131 NEWCLOSURE                       R12 P4
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R5
      134 GETTABLEKS                       R13 R10 K42 ["SelectionChangedThisFrame"]
      136 NEWCLOSURE                       R15 P5
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R5
      139 CAPTURE                          VAL R9
      140 NAMECALL                         R13 R13 K43 ["Connect"]
      142 CALL                             R13 2 1
      143 GETTABLEKS                       R14 R0 K44 ["Unloading"]
      145 NEWCLOSURE                       R16 P6
      146 CAPTURE                          VAL R13
      147 NAMECALL                         R14 R14 K43 ["Connect"]
      149 CALL                             R14 2 0
      150 MOVE                             R14 R12
      151 CALL                             R14 0 1
      152 JUMPIFNOT                        R14 ; [+11]
      153 LOADNIL                          R15
      154 GETTABLEKS                       R16 R6 K45 ["Heartbeat"]
      156 NEWCLOSURE                       R18 P7
      157 CAPTURE                          REF R15
      158 CAPTURE                          VAL R9
      159 NAMECALL                         R16 R16 K43 ["Connect"]
      161 CALL                             R16 2 1
      162 MOVE                             R15 R16
      163 CLOSEUPVALS                      R15
      164 GETTABLEKS                       R15 R9 K46 ["pluginLoader"]
      166 NAMECALL                         R15 R15 K47 ["waitForUserInteraction"]
      168 CALL                             R15 1 1
      169 JUMPIF                           R15 ; [+1]
      170 RETURN                           R0 0
      171 MOVE                             R16 R1
      172 MOVE                             R17 R0
      173 MOVE                             R18 R9
      174 CALL                             R16 2 0
      175 RETURN                           R0 0
      176 GETUPVAL                         R10 5
      177 GETTABLEKS                       R9 R10 K40 ["build"]
      179 MOVE                             R10 R4
      180 CALL                             R9 1 0
      181 RETURN                           R0 0

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
       53 DUPCLOSURE                       R8 K19 [PROTO_8]
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R2
       60 RETURN                           R8 1
