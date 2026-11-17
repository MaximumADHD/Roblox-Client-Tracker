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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["pluginLoader"]
        7 NAMECALL                         R0 R0 K2 ["_onUserInteracted"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 NEWTABLE                         R2 0 1
        7 GETUPVAL                         R4 1
        8 CALL                             R4 0 1
        9 JUMPIFNOT                        R4 ; [+5]
       10 DUPTABLE                         R3 K4 [{["uri"], ["isPreexistingAction"] = True}]
       11 DUPTABLE                         R4 K13 [{["DataModel"] = "Standalone", ["PluginId"] = "AdaptiveAnimationSupport", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
       12 SETTABLEKS                       R4 R3 K1 ["uri"]
       14 JUMP                             ; [+17]
       15 DUPTABLE                         R3 K23 [{["uri"], ["isPreexistingAction"] = False, ["getText"], ["getTooltip"], ["icon"] = "rbxlocaltheme://RemapRig", ["enabled"] = True, ["visible"] = True, ["checkable"], ["checked"] = False}]
       16 DUPTABLE                         R4 K13 [{["DataModel"] = "Standalone", ["PluginId"] = "AdaptiveAnimationSupport", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
       17 SETTABLEKS                       R4 R3 K1 ["uri"]
       19 DUPCLOSURE                       R4 K24 [PROTO_0]
       20 SETTABLEKS                       R4 R3 K15 ["getText"]
       22 DUPCLOSURE                       R4 K25 [PROTO_1]
       23 SETTABLEKS                       R4 R3 K16 ["getTooltip"]
       25 GETUPVAL                         R5 2
       26 JUMPIFNOT                        R5 ; [+2]
       27 LOADB                            R4 1
       28 JUMP                             ; [+1]
       29 LOADNIL                          R4
       30 SETTABLEKS                       R4 R3 K21 ["checkable"]
       32 SETLIST                          R2 R3 1 [1]
       34 DUPTABLE                         R3 K32 [{["plugin"], ["pluginName"] = "AdaptiveAnimationSupport", ["translationResourceTable"], ["fallbackResourceTable"], ["noToolbar"] = True, ["actionInfos"]}]
       35 SETTABLEKS                       R0 R3 K26 ["plugin"]
       37 GETUPVAL                         R4 3
       38 SETTABLEKS                       R4 R3 K28 ["translationResourceTable"]
       40 GETUPVAL                         R4 4
       41 SETTABLEKS                       R4 R3 K29 ["fallbackResourceTable"]
       43 SETTABLEKS                       R2 R3 K31 ["actionInfos"]
       45 GETIMPORT                        R4 K34 [require]
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R5 R5 K35 ["Src"]
       50 GETTABLEKS                       R5 R5 K36 ["Flags"]
       52 GETTABLEKS                       R5 R5 K37 ["getFFlagAdaptiveAnimationHandRig"]
       54 CALL                             R4 1 1
       55 GETIMPORT                        R5 K39 [game]
       57 LOADK                            R7 K40 ["RunService"]
       58 NAMECALL                         R5 R5 K41 ["GetService"]
       60 CALL                             R5 2 1
       61 GETUPVAL                         R7 5
       62 GETTABLEKS                       R7 R7 K42 ["get"]
       64 CALL                             R7 0 1
       65 GETUPVAL                         R8 5
       66 GETTABLEKS                       R8 R8 K6 ["Standalone"]
       68 JUMPIFEQ                         R7 R8 ; [+2]
       70 LOADB                            R6 0 +1
       71 LOADB                            R6 1
       72 NAMECALL                         R7 R5 K43 ["IsEdit"]
       74 CALL                             R7 1 1
       75 JUMPIF                           R6 ; [+1]
       76 JUMPIFNOT                        R7 ; [+58]
       77 GETUPVAL                         R8 6
       78 GETTABLEKS                       R8 R8 K44 ["build"]
       80 MOVE                             R9 R3
       81 CALL                             R8 1 1
       82 GETIMPORT                        R9 K39 [game]
       84 LOADK                            R11 K45 ["Selection"]
       85 NAMECALL                         R9 R9 K41 ["GetService"]
       87 CALL                             R9 2 1
       88 NEWCLOSURE                       R10 P2
       89 CAPTURE                          VAL R4
       90 NEWCLOSURE                       R11 P3
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R4
       93 GETTABLEKS                       R12 R9 K46 ["SelectionChangedThisFrame"]
       95 NEWCLOSURE                       R14 P4
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R8
       99 NAMECALL                         R12 R12 K47 ["Connect"]
      101 CALL                             R12 2 1
      102 GETTABLEKS                       R13 R0 K48 ["Unloading"]
      104 NEWCLOSURE                       R15 P5
      105 CAPTURE                          VAL R12
      106 NAMECALL                         R13 R13 K47 ["Connect"]
      108 CALL                             R13 2 0
      109 MOVE                             R13 R11
      110 CALL                             R13 0 1
      111 JUMPIFNOT                        R13 ; [+11]
      112 LOADNIL                          R14
      113 GETTABLEKS                       R15 R5 K49 ["Heartbeat"]
      115 NEWCLOSURE                       R17 P6
      116 CAPTURE                          REF R14
      117 CAPTURE                          VAL R8
      118 NAMECALL                         R15 R15 K47 ["Connect"]
      120 CALL                             R15 2 1
      121 MOVE                             R14 R15
      122 CLOSEUPVALS                      R14
      123 GETTABLEKS                       R14 R8 K50 ["pluginLoader"]
      125 NAMECALL                         R14 R14 K51 ["waitForUserInteraction"]
      127 CALL                             R14 1 1
      128 JUMPIF                           R14 ; [+1]
      129 RETURN                           R0 0
      130 MOVE                             R15 R1
      131 MOVE                             R16 R0
      132 MOVE                             R17 R8
      133 CALL                             R15 2 0
      134 RETURN                           R0 0
      135 GETUPVAL                         R8 6
      136 GETTABLEKS                       R8 R8 K44 ["build"]
      138 MOVE                             R9 R3
      139 CALL                             R8 1 0
      140 RETURN                           R0 0

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
       41 GETIMPORT                        R6 K18 [game]
       43 LOADK                            R8 K19 ["ReplaceIsCheckableWithCheckable"]
       44 NAMECALL                         R6 R6 K20 ["GetEngineFeature"]
       46 CALL                             R6 2 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K9 ["Src"]
       51 GETTABLEKS                       R8 R8 K21 ["Flags"]
       53 GETTABLEKS                       R8 R8 K22 ["getFFlagAdaptiveAnimationHandRig"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K23 [PROTO_7]
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R2
       64 RETURN                           R8 1
