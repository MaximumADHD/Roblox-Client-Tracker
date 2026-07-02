PROTO_0:
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

PROTO_1:
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
       24 LOADK                            R15 K5 ["ToggleVisualizationMode_User_%*_%*"]
       25 GETTABLEKS                       R17 R8 K6 ["name"]
       27 GETTABLEKS                       R18 R13 K6 ["name"]
       29 NAMECALL                         R15 R15 K7 ["format"]
       31 CALL                             R15 3 1
       32 MOVE                             R14 R15
       33 LOADK                            R17 K8 ["ToggleVisualizationMode"]
       34 LOADK                            R18 K9 ["Title"]
       35 DUPTABLE                         R19 K11 [{"visualizationModeName"}]
       36 GETTABLEKS                       R20 R13 K12 ["title"]
       38 SETTABLEKS                       R20 R19 K10 ["visualizationModeName"]
       40 NAMECALL                         R15 R3 K13 ["getText"]
       42 CALL                             R15 4 1
       43 GETTABLEKS                       R16 R13 K14 ["toolTip"]
       45 JUMPIFNOT                        R16 ; [+4]
       46 LENGTH                           R17 R16
       47 LOADN                            R18 0
       48 JUMPIFNOTLE                      R17 R18 ; [+12]
       50 LOADK                            R19 K8 ["ToggleVisualizationMode"]
       51 LOADK                            R20 K15 ["Description"]
       52 DUPTABLE                         R21 K11 [{"visualizationModeName"}]
       53 GETTABLEKS                       R22 R13 K12 ["title"]
       55 SETTABLEKS                       R22 R21 K10 ["visualizationModeName"]
       57 NAMECALL                         R17 R3 K13 ["getText"]
       59 CALL                             R17 4 1
       60 MOVE                             R16 R17
       61 GETUPVAL                         R17 1
       62 GETTABLEKS                       R17 R17 K16 ["createElement"]
       64 GETUPVAL                         R18 2
       65 DUPTABLE                         R19 K26 [{["ActionId"], ["Text"], ["StatusTip"], ["IconName"] = "", ["Checked"], ["Enabled"] = True, ["OnTrigger"]}]
       66 SETTABLEKS                       R14 R19 K17 ["ActionId"]
       68 SETTABLEKS                       R15 R19 K18 ["Text"]
       70 SETTABLEKS                       R16 R19 K19 ["StatusTip"]
       72 GETTABLEKS                       R20 R13 K27 ["enabled"]
       74 SETTABLEKS                       R20 R19 K22 ["Checked"]
       76 NEWCLOSURE                       R20 P0
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R13
       80 CAPTURE                          VAL R0
       81 SETTABLEKS                       R20 R19 K25 ["OnTrigger"]
       83 CALL                             R17 2 1
       84 SETTABLE                         R17 R1 R14
       85 FORGLOOP                         R9 2 ; [-62]
       87 FORGLOOP                         R4 2 ; [-69]
       89 GETUPVAL                         R4 1
       90 GETTABLEKS                       R4 R4 K16 ["createElement"]
       92 GETUPVAL                         R5 1
       93 GETTABLEKS                       R5 R5 K28 ["Fragment"]
       95 NEWTABLE                         R6 0 0
       97 MOVE                             R7 R1
       98 CALL                             R4 3 -1
       99 RETURN                           R4 -1

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
       39 GETTABLEKS                       R5 R4 K14 ["ContextServices"]
       41 DUPCLOSURE                       R6 K15 [PROTO_1]
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R2
       45 RETURN                           R6 1
