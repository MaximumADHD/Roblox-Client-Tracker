PROTO_0:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_6:
        0 DUPTABLE                         R4 K1 [{"enabled"}]
        1 LOADB                            R5 0
        2 SETTABLEKS                       R5 R4 K0 ["enabled"]
        4 NAMECALL                         R2 R0 K2 ["setState"]
        6 CALL                             R2 2 0
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K3 ["toggleEnabled"]
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R2 R0 K4 ["onClose"]
       15 NEWCLOSURE                       R2 P2
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R2 R0 K5 ["onRestore"]
       19 NEWCLOSURE                       R2 P3
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R2 R0 K6 ["onWidgetEnabledChanged"]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K7 ["Store"]
       26 GETTABLEKS                       R2 R2 K8 ["new"]
       28 GETUPVAL                         R3 1
       29 LOADNIL                          R4
       30 NEWTABLE                         R5 0 1
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K9 ["thunkMiddleware"]
       35 SETLIST                          R5 R6 1 [1]
       37 LOADNIL                          R6
       38 CALL                             R2 4 1
       39 SETTABLEKS                       R2 R0 K10 ["store"]
       41 GETUPVAL                         R2 2
       42 GETTABLEKS                       R2 R2 K11 ["Localization"]
       44 GETTABLEKS                       R2 R2 K8 ["new"]
       46 DUPTABLE                         R3 K15 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       47 GETUPVAL                         R4 3
       48 SETTABLEKS                       R4 R3 K12 ["stringResourceTable"]
       50 GETUPVAL                         R4 4
       51 SETTABLEKS                       R4 R3 K13 ["translationResourceTable"]
       53 LOADK                            R4 K16 ["ForceVisualizationControl"]
       54 SETTABLEKS                       R4 R3 K14 ["pluginName"]
       56 CALL                             R2 1 1
       57 SETTABLEKS                       R2 R0 K17 ["localization"]
       59 GETUPVAL                         R2 2
       60 GETTABLEKS                       R2 R2 K18 ["Analytics"]
       62 GETTABLEKS                       R2 R2 K8 ["new"]
       64 DUPCLOSURE                       R3 K19 [PROTO_5]
       65 NEWTABLE                         R4 0 0
       67 CALL                             R2 2 1
       68 SETTABLEKS                       R2 R0 K20 ["analytics"]
       70 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["enabled"]
        4 DUPTABLE                         R3 K3 [{"Toggle"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K4 ["createElement"]
        8 GETUPVAL                         R5 1
        9 DUPTABLE                         R6 K13 [{"Toolbar", "Active", "Id", "Title", "Tooltip", "Icon", "OnClick", "ClickableWhenViewportHidden"}]
       10 SETTABLEKS                       R1 R6 K5 ["Toolbar"]
       12 SETTABLEKS                       R2 R6 K6 ["Active"]
       14 LOADK                            R7 K14 ["template_button"]
       15 SETTABLEKS                       R7 R6 K7 ["Id"]
       17 GETTABLEKS                       R7 R0 K15 ["localization"]
       19 LOADK                            R9 K16 ["Plugin"]
       20 LOADK                            R10 K17 ["Button"]
       21 NAMECALL                         R7 R7 K18 ["getText"]
       23 CALL                             R7 3 1
       24 SETTABLEKS                       R7 R6 K8 ["Title"]
       26 GETTABLEKS                       R7 R0 K15 ["localization"]
       28 LOADK                            R9 K16 ["Plugin"]
       29 LOADK                            R10 K19 ["Description"]
       30 NAMECALL                         R7 R7 K18 ["getText"]
       32 CALL                             R7 3 1
       33 SETTABLEKS                       R7 R6 K9 ["Tooltip"]
       35 LOADK                            R7 K20 ["rbxasset://textures/GameSettings/ToolbarIcon.png"]
       36 SETTABLEKS                       R7 R6 K10 ["Icon"]
       38 GETTABLEKS                       R7 R0 K21 ["toggleEnabled"]
       40 SETTABLEKS                       R7 R6 K11 ["OnClick"]
       42 LOADB                            R7 1
       43 SETTABLEKS                       R7 R6 K12 ["ClickableWhenViewportHidden"]
       45 CALL                             R4 2 1
       46 SETTABLEKS                       R4 R3 K2 ["Toggle"]
       48 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["provide"]
       11 NEWTABLE                         R6 0 6
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K5 ["new"]
       21 GETTABLEKS                       R9 R0 K6 ["store"]
       23 CALL                             R8 1 1
       24 GETUPVAL                         R9 3
       25 GETTABLEKS                       R9 R9 K5 ["new"]
       27 NAMECALL                         R10 R3 K7 ["getMouse"]
       29 CALL                             R10 1 -1
       30 CALL                             R9 -1 1
       31 GETUPVAL                         R10 4
       32 CALL                             R10 0 1
       33 GETTABLEKS                       R11 R0 K8 ["localization"]
       35 GETTABLEKS                       R12 R0 K9 ["analytics"]
       37 SETLIST                          R6 R7 6 [1]
       39 DUPTABLE                         R7 K12 [{"Toolbar", "MainGui"}]
       40 GETUPVAL                         R8 5
       41 GETTABLEKS                       R8 R8 K13 ["createElement"]
       43 GETUPVAL                         R9 6
       44 DUPTABLE                         R10 K16 [{"Title", "RenderButtons"}]
       45 GETTABLEKS                       R11 R0 K8 ["localization"]
       47 LOADK                            R13 K2 ["Plugin"]
       48 LOADK                            R14 K10 ["Toolbar"]
       49 NAMECALL                         R11 R11 K17 ["getText"]
       51 CALL                             R11 3 1
       52 SETTABLEKS                       R11 R10 K14 ["Title"]
       54 NEWCLOSURE                       R11 P0
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R11 R10 K15 ["RenderButtons"]
       58 CALL                             R8 2 1
       59 SETTABLEKS                       R8 R7 K10 ["Toolbar"]
       61 MOVE                             R8 R4
       62 JUMPIFNOT                        R8 ; [+7]
       63 GETUPVAL                         R8 5
       64 GETTABLEKS                       R8 R8 K13 ["createElement"]
       66 GETUPVAL                         R9 7
       67 NEWTABLE                         R10 0 0
       69 CALL                             R8 2 1
       70 SETTABLEKS                       R8 R7 K11 ["MainGui"]
       72 CALL                             R5 2 -1
       73 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R2 K6 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R3 K7 ["Rodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K5 ["Packages"]
       25 GETTABLEKS                       R4 R4 K8 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K9 ["UI"]
       30 GETTABLEKS                       R5 R4 K10 ["PluginButton"]
       32 GETTABLEKS                       R6 R4 K11 ["PluginToolbar"]
       34 GETTABLEKS                       R7 R3 K12 ["ContextServices"]
       36 GETTABLEKS                       R8 R7 K13 ["Plugin"]
       38 GETTABLEKS                       R9 R7 K14 ["Mouse"]
       40 GETTABLEKS                       R10 R7 K15 ["Store"]
       42 GETIMPORT                        R11 K4 [require]
       44 GETTABLEKS                       R12 R0 K16 ["Src"]
       46 GETTABLEKS                       R12 R12 K17 ["Reducers"]
       48 GETTABLEKS                       R12 R12 K18 ["MainReducer"]
       50 CALL                             R11 1 1
       51 GETIMPORT                        R12 K4 [require]
       53 GETTABLEKS                       R13 R0 K16 ["Src"]
       55 GETTABLEKS                       R13 R13 K19 ["Resources"]
       57 GETTABLEKS                       R13 R13 K20 ["MakeTheme"]
       59 CALL                             R12 1 1
       60 GETTABLEKS                       R13 R0 K16 ["Src"]
       62 GETTABLEKS                       R13 R13 K19 ["Resources"]
       64 GETTABLEKS                       R13 R13 K21 ["Localization"]
       66 GETTABLEKS                       R13 R13 K22 ["SourceStrings"]
       68 GETTABLEKS                       R14 R0 K16 ["Src"]
       70 GETTABLEKS                       R14 R14 K19 ["Resources"]
       72 GETTABLEKS                       R14 R14 K21 ["Localization"]
       74 GETTABLEKS                       R14 R14 K23 ["LocalizedStrings"]
       76 GETTABLEKS                       R15 R0 K16 ["Src"]
       78 GETTABLEKS                       R15 R15 K24 ["Components"]
       80 GETIMPORT                        R16 K4 [require]
       82 GETTABLEKS                       R17 R15 K25 ["MainGui"]
       84 CALL                             R16 1 1
       85 GETTABLEKS                       R17 R1 K26 ["PureComponent"]
       87 LOADK                            R19 K27 ["MainPlugin"]
       88 NAMECALL                         R17 R17 K28 ["extend"]
       90 CALL                             R17 2 1
       91 DUPCLOSURE                       R18 K29 [PROTO_6]
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R14
       97 SETTABLEKS                       R18 R17 K30 ["init"]
       99 DUPCLOSURE                       R18 K31 [PROTO_7]
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R5
      102 SETTABLEKS                       R18 R17 K32 ["renderButtons"]
      104 DUPCLOSURE                       R18 K33 [PROTO_9]
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R16
      113 SETTABLEKS                       R18 R17 K34 ["render"]
      115 RETURN                           R17 1
