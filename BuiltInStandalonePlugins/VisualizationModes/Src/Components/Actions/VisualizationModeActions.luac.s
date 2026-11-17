PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["visualizationModeToggled"]
        2 DUPTABLE                         R3 K8 [{["actionSource"] = "plugin_action", ["visualizationModeCategory"] = "PhysicsSimulation", ["visualizationMode"] = "CollisionFidelity", ["isEnabled"]}]
        3 GETUPVAL                         R5 1
        4 NOT                              R4 R5
        5 SETTABLEKS                       R4 R3 K7 ["isEnabled"]
        7 NAMECALL                         R0 R0 K9 ["report"]
        9 CALL                             R0 3 0
       10 GETUPVAL                         R0 2
       11 GETUPVAL                         R2 1
       12 NOT                              R1 R2
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Analytics"]
        3 NAMECALL                         R0 R0 K1 ["use"]
        5 CALL                             R0 1 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["Localization"]
        9 NAMECALL                         R1 R1 K1 ["use"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 1
       13 GETIMPORT                        R3 K4 [settings]
       15 CALL                             R3 0 1
       16 GETTABLEKS                       R3 R3 K5 ["Physics"]
       18 LOADK                            R4 K6 ["ShowDecompositionGeometry"]
       19 LOADB                            R5 0
       20 CALL                             R2 3 2
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K7 ["createElement"]
       24 GETUPVAL                         R5 3
       25 DUPTABLE                         R6 K18 [{["ActionId"] = "ToggleVisualizationMode_User_PhysicsSimulation_CollisionFidelity", ["Text"], ["StatusTip"], ["IconName"] = "", ["Checked"], ["Enabled"] = True, ["OnTrigger"]}]
       26 LOADK                            R9 K19 ["ToggleVisualizationMode"]
       27 LOADK                            R10 K20 ["Title"]
       28 DUPTABLE                         R11 K22 [{"visualizationModeName"}]
       29 LOADK                            R14 K23 ["StudioModes"]
       30 LOADK                            R15 K24 ["CollisionFidelity"]
       31 NAMECALL                         R12 R1 K25 ["getText"]
       33 CALL                             R12 3 1
       34 SETTABLEKS                       R12 R11 K21 ["visualizationModeName"]
       36 NAMECALL                         R7 R1 K25 ["getText"]
       38 CALL                             R7 4 1
       39 SETTABLEKS                       R7 R6 K10 ["Text"]
       41 LOADK                            R9 K23 ["StudioModes"]
       42 LOADK                            R10 K26 ["CollisionFidelityToolTip"]
       43 NAMECALL                         R7 R1 K25 ["getText"]
       45 CALL                             R7 3 1
       46 SETTABLEKS                       R7 R6 K11 ["StatusTip"]
       48 SETTABLEKS                       R2 R6 K14 ["Checked"]
       50 NEWCLOSURE                       R7 P0
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R3
       54 SETTABLEKS                       R7 R6 K17 ["OnTrigger"]
       56 CALL                             R4 2 -1
       57 RETURN                           R4 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["visualizationModeToggled"]
        2 DUPTABLE                         R3 K6 [{["actionSource"] = "plugin_action", ["visualizationModeCategory"], ["visualizationMode"], ["isEnabled"]}]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K7 ["name"]
        6 SETTABLEKS                       R4 R3 K3 ["visualizationModeCategory"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K7 ["name"]
       11 SETTABLEKS                       R4 R3 K4 ["visualizationMode"]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K8 ["enabled"]
       16 NOT                              R4 R5
       17 SETTABLEKS                       R4 R3 K5 ["isEnabled"]
       19 NAMECALL                         R0 R0 K9 ["report"]
       21 CALL                             R0 3 0
       22 GETUPVAL                         R0 3
       23 GETTABLEKS                       R0 R0 K10 ["OnVisualizationModeToggle"]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K7 ["name"]
       28 GETUPVAL                         R2 2
       29 GETTABLEKS                       R2 R2 K7 ["name"]
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R4 R4 K8 ["enabled"]
       34 NOT                              R3 R4
       35 LOADB                            R4 1
       36 CALL                             R0 4 0
       37 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["Analytics"]
        5 NAMECALL                         R2 R2 K1 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["Localization"]
       11 NAMECALL                         R3 R3 K1 ["use"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R4 R0 K3 ["VisualizationModeCategories"]
       16 LOADNIL                          R5
       17 LOADNIL                          R6
       18 FORGPREP                         R4
       19 GETTABLEKS                       R9 R8 K4 ["visualizationModeList"]
       21 LOADNIL                          R10
       22 LOADNIL                          R11
       23 FORGPREP                         R9
       24 LOADK                            R14 K5 ["ToggleVisualizationMode_User_%*_%*"]
       25 GETTABLEKS                       R16 R8 K6 ["name"]
       27 GETTABLEKS                       R17 R13 K6 ["name"]
       29 NAMECALL                         R14 R14 K7 ["format"]
       31 CALL                             R14 3 1
       32 LOADK                            R17 K8 ["ToggleVisualizationMode"]
       33 LOADK                            R18 K9 ["Title"]
       34 DUPTABLE                         R19 K11 [{"visualizationModeName"}]
       35 GETTABLEKS                       R20 R13 K12 ["title"]
       37 SETTABLEKS                       R20 R19 K10 ["visualizationModeName"]
       39 NAMECALL                         R15 R3 K13 ["getText"]
       41 CALL                             R15 4 1
       42 GETTABLEKS                       R16 R13 K14 ["toolTip"]
       44 JUMPIFNOT                        R16 ; [+4]
       45 LENGTH                           R17 R16
       46 LOADN                            R18 0
       47 JUMPIFNOTLE                      R17 R18 ; [+12]
       49 LOADK                            R19 K8 ["ToggleVisualizationMode"]
       50 LOADK                            R20 K15 ["Description"]
       51 DUPTABLE                         R21 K11 [{"visualizationModeName"}]
       52 GETTABLEKS                       R22 R13 K12 ["title"]
       54 SETTABLEKS                       R22 R21 K10 ["visualizationModeName"]
       56 NAMECALL                         R17 R3 K13 ["getText"]
       58 CALL                             R17 4 1
       59 MOVE                             R16 R17
       60 GETUPVAL                         R17 1
       61 GETTABLEKS                       R17 R17 K16 ["createElement"]
       63 GETUPVAL                         R18 2
       64 DUPTABLE                         R19 K26 [{["ActionId"], ["Text"], ["StatusTip"], ["IconName"] = "", ["Checked"], ["Enabled"] = True, ["OnTrigger"]}]
       65 SETTABLEKS                       R14 R19 K17 ["ActionId"]
       67 SETTABLEKS                       R15 R19 K18 ["Text"]
       69 SETTABLEKS                       R16 R19 K19 ["StatusTip"]
       71 GETTABLEKS                       R20 R13 K27 ["enabled"]
       73 SETTABLEKS                       R20 R19 K22 ["Checked"]
       75 NEWCLOSURE                       R20 P0
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R13
       79 CAPTURE                          VAL R0
       80 SETTABLEKS                       R20 R19 K25 ["OnTrigger"]
       82 CALL                             R17 2 1
       83 SETTABLE                         R17 R1 R14
       84 FORGLOOP                         R9 2 ; [-61]
       86 FORGLOOP                         R4 2 ; [-68]
       88 GETUPVAL                         R4 3
       89 CALL                             R4 0 1
       90 JUMPIFNOT                        R4 ; [+10]
       91 GETUPVAL                         R4 4
       92 CALL                             R4 0 1
       93 JUMPIFNOT                        R4 ; [+7]
       94 GETUPVAL                         R4 1
       95 GETTABLEKS                       R4 R4 K16 ["createElement"]
       97 GETUPVAL                         R5 5
       98 CALL                             R4 1 1
       99 SETTABLEKS                       R4 R1 K28 ["ToggleVisualizationMode_User_PhysicsSimulation_CollisionFidelity"]
      101 GETUPVAL                         R4 1
      102 GETTABLEKS                       R4 R4 K16 ["createElement"]
      104 GETUPVAL                         R5 1
      105 GETTABLEKS                       R5 R5 K29 ["Fragment"]
      107 NEWTABLE                         R6 0 0
      109 MOVE                             R7 R1
      110 CALL                             R4 3 -1
      111 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["Actions"]
       22 GETTABLEKS                       R3 R3 K11 ["PluginAction"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Src"]
       29 GETTABLEKS                       R4 R4 K12 ["Types"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Packages"]
       36 GETTABLEKS                       R5 R5 K13 ["Framework"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R6 K14 ["Hooks"]
       45 GETTABLEKS                       R6 R6 K15 ["useInstanceSetting"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K8 ["Src"]
       52 GETTABLEKS                       R7 R7 K16 ["Flags"]
       54 GETTABLEKS                       R7 R7 K17 ["getFFlagCDVisShortcutSupport"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K8 ["Src"]
       61 GETTABLEKS                       R8 R8 K16 ["Flags"]
       63 GETTABLEKS                       R8 R8 K18 ["getFFlagUseAdornBasedCDDebugVis"]
       65 CALL                             R7 1 1
       66 GETTABLEKS                       R8 R4 K19 ["ContextServices"]
       68 DUPCLOSURE                       R9 K20 [PROTO_1]
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R2
       73 DUPCLOSURE                       R10 K21 [PROTO_3]
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R9
       80 RETURN                           R10 1
