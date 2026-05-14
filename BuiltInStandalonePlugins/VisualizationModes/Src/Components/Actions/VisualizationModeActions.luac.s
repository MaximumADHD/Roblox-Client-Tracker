PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["visualizationModeToggled"]
        2 DUPTABLE                         R3 K5 [{"actionSource", "visualizationModeCategory", "visualizationMode", "isEnabled"}]
        3 LOADK                            R4 K6 ["plugin_action"]
        4 SETTABLEKS                       R4 R3 K1 ["actionSource"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K7 ["name"]
        9 SETTABLEKS                       R4 R3 K2 ["visualizationModeCategory"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K7 ["name"]
       14 SETTABLEKS                       R4 R3 K3 ["visualizationMode"]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K8 ["enabled"]
       19 NOT                              R4 R5
       20 SETTABLEKS                       R4 R3 K4 ["isEnabled"]
       22 NAMECALL                         R0 R0 K9 ["report"]
       24 CALL                             R0 3 0
       25 GETUPVAL                         R0 3
       26 GETTABLEKS                       R0 R0 K10 ["OnVisualizationModeToggle"]
       28 GETUPVAL                         R1 1
       29 GETTABLEKS                       R1 R1 K7 ["name"]
       31 GETUPVAL                         R2 2
       32 GETTABLEKS                       R2 R2 K7 ["name"]
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R4 R4 K8 ["enabled"]
       37 NOT                              R3 R4
       38 LOADB                            R4 1
       39 CALL                             R0 4 0
       40 RETURN                           R0 0

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
       65 DUPTABLE                         R19 K24 [{"ActionId", "Text", "StatusTip", "IconName", "Checked", "Enabled", "OnTrigger"}]
       66 SETTABLEKS                       R14 R19 K17 ["ActionId"]
       68 SETTABLEKS                       R15 R19 K18 ["Text"]
       70 SETTABLEKS                       R16 R19 K19 ["StatusTip"]
       72 LOADK                            R20 K25 [""]
       73 SETTABLEKS                       R20 R19 K20 ["IconName"]
       75 GETTABLEKS                       R20 R13 K26 ["enabled"]
       77 SETTABLEKS                       R20 R19 K21 ["Checked"]
       79 LOADB                            R20 1
       80 SETTABLEKS                       R20 R19 K22 ["Enabled"]
       82 NEWCLOSURE                       R20 P0
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R0
       87 SETTABLEKS                       R20 R19 K23 ["OnTrigger"]
       89 CALL                             R17 2 1
       90 SETTABLE                         R17 R1 R14
       91 FORGLOOP                         R9 2 ; [-68]
       93 FORGLOOP                         R4 2 ; [-75]
       95 GETUPVAL                         R4 1
       96 GETTABLEKS                       R4 R4 K16 ["createElement"]
       98 GETUPVAL                         R5 1
       99 GETTABLEKS                       R5 R5 K27 ["Fragment"]
      101 NEWTABLE                         R6 0 0
      103 MOVE                             R7 R1
      104 CALL                             R4 3 -1
      105 RETURN                           R4 -1

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
