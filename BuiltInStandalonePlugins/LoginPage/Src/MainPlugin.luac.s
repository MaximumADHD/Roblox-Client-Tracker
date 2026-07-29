PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["Plugin"]
        2 LOADK                            R4 K1 ["LoginPluginBridge"]
        3 NAMECALL                         R2 R2 K2 ["GetPluginComponent"]
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R0 K3 ["loginPluginBridgeComponent"]
        8 DUPTABLE                         R4 K7 [{["enabled"] = True, ["IsLoggedIn"]}]
        9 GETIMPORT                        R5 K9 [game]
       11 LOADK                            R7 K10 ["StudioUserService"]
       12 NAMECALL                         R5 R5 K11 ["GetService"]
       14 CALL                             R5 2 1
       15 GETTABLEKS                       R5 R5 K6 ["IsLoggedIn"]
       17 SETTABLEKS                       R5 R4 K6 ["IsLoggedIn"]
       19 NAMECALL                         R2 R0 K12 ["setState"]
       21 CALL                             R2 2 0
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K13 ["Localization"]
       25 GETTABLEKS                       R2 R2 K14 ["new"]
       27 DUPTABLE                         R3 K19 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "LoginPage"}]
       28 GETUPVAL                         R4 1
       29 SETTABLEKS                       R4 R3 K15 ["stringResourceTable"]
       31 GETUPVAL                         R4 2
       32 SETTABLEKS                       R4 R3 K16 ["translationResourceTable"]
       34 CALL                             R2 1 1
       35 SETTABLEKS                       R2 R0 K20 ["localization"]
       37 GETUPVAL                         R2 3
       38 GETTABLEKS                       R2 R2 K13 ["Localization"]
       40 GETTABLEKS                       R2 R2 K14 ["new"]
       42 DUPTABLE                         R3 K19 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "LoginPage"}]
       43 GETUPVAL                         R4 1
       44 SETTABLEKS                       R4 R3 K15 ["stringResourceTable"]
       46 GETUPVAL                         R4 2
       47 SETTABLEKS                       R4 R3 K16 ["translationResourceTable"]
       49 CALL                             R2 1 1
       50 SETTABLEKS                       R2 R0 K21 ["localizationLEGACY"]
       52 GETUPVAL                         R2 4
       53 GETTABLEKS                       R2 R2 K22 ["Util"]
       55 GETTABLEKS                       R2 R2 K23 ["createFoundationDesignBinding"]
       57 CALL                             R2 0 2
       58 SETTABLEKS                       R3 R0 K24 ["onFoundationStyleSheetChange"]
       60 GETUPVAL                         R4 5
       61 GETTABLEKS                       R5 R1 K0 ["Plugin"]
       63 LOADNIL                          R6
       64 LOADNIL                          R7
       65 NEWTABLE                         R8 0 1
       67 MOVE                             R9 R2
       68 SETLIST                          R8 R9 1 [1]
       70 CALL                             R4 4 1
       71 SETTABLEKS                       R4 R0 K25 ["design"]
       73 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"IsLoggedIn"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["IsLoggedIn"]
        5 SETTABLEKS                       R3 R2 K0 ["IsLoggedIn"]
        7 NAMECALL                         R0 R0 K2 ["setState"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["StudioUserService"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 LOADK                            R4 K4 ["IsLoggedIn"]
        7 NAMECALL                         R2 R1 K5 ["GetPropertyChangedSignal"]
        9 CALL                             R2 2 1
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 NAMECALL                         R2 R2 K6 ["Connect"]
       15 CALL                             R2 2 1
       16 SETTABLEKS                       R2 R0 K7 ["loggedInConnection"]
       18 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["loggedInConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["loggedInConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETTABLEKS                       R5 R2 K4 ["IsLoggedIn"]
       10 JUMPIFNOT                        R5 ; [+2]
       11 LOADNIL                          R5
       12 RETURN                           R5 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K5 ["provide"]
       16 NEWTABLE                         R6 0 4
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R7 R7 K6 ["new"]
       21 MOVE                             R8 R3
       22 CALL                             R7 1 1
       23 GETUPVAL                         R8 2
       24 GETTABLEKS                       R8 R8 K6 ["new"]
       26 NAMECALL                         R9 R3 K7 ["getMouse"]
       28 CALL                             R9 1 -1
       29 CALL                             R8 -1 1
       30 GETUPVAL                         R9 3
       31 GETTABLEKS                       R9 R9 K6 ["new"]
       33 GETTABLEKS                       R10 R0 K8 ["design"]
       35 CALL                             R9 1 1
       36 GETTABLEKS                       R10 R0 K9 ["localizationLEGACY"]
       38 SETLIST                          R6 R7 4 [1]
       40 DUPTABLE                         R7 K11 [{"MainWidget"}]
       41 GETUPVAL                         R8 4
       42 GETTABLEKS                       R8 R8 K12 ["createElement"]
       44 GETUPVAL                         R9 5
       45 DUPTABLE                         R10 K25 [{["Id"] = "LoginPage", ["Enabled"], ["Title"], ["ZIndexBehavior"], ["InitialDockState"], ["Size"], ["MinSize"], ["ShouldRestore"] = False, ["CreateWidgetImmediately"] = True}]
       46 SETTABLEKS                       R4 R10 K15 ["Enabled"]
       48 GETTABLEKS                       R11 R0 K26 ["localization"]
       50 LOADK                            R13 K2 ["Plugin"]
       51 LOADK                            R14 K27 ["Name"]
       52 NAMECALL                         R11 R11 K28 ["getText"]
       54 CALL                             R11 3 1
       55 SETTABLEKS                       R11 R10 K16 ["Title"]
       57 GETIMPORT                        R11 K31 [Enum.ZIndexBehavior.Sibling]
       59 SETTABLEKS                       R11 R10 K17 ["ZIndexBehavior"]
       61 GETIMPORT                        R11 K33 [Enum.InitialDockState.Float]
       63 SETTABLEKS                       R11 R10 K18 ["InitialDockState"]
       65 GETIMPORT                        R11 K35 [Vector2.new]
       67 LOADN                            R12 1000
       68 LOADN                            R13 1000
       69 CALL                             R11 2 1
       70 SETTABLEKS                       R11 R10 K19 ["Size"]
       72 GETIMPORT                        R11 K35 [Vector2.new]
       74 LOADN                            R12 1000
       75 LOADN                            R13 1000
       76 CALL                             R11 2 1
       77 SETTABLEKS                       R11 R10 K20 ["MinSize"]
       79 GETUPVAL                         R11 4
       80 GETTABLEKS                       R11 R11 K12 ["createElement"]
       82 GETUPVAL                         R12 6
       83 DUPTABLE                         R13 K39 [{["theme"] = "Dark", ["onStyleSheetChange"]}]
       84 GETTABLEKS                       R14 R0 K40 ["onFoundationStyleSheetChange"]
       86 SETTABLEKS                       R14 R13 K38 ["onStyleSheetChange"]
       88 NEWTABLE                         R14 0 1
       90 GETUPVAL                         R15 4
       91 GETTABLEKS                       R15 R15 K12 ["createElement"]
       93 GETUPVAL                         R16 7
       94 GETTABLEKS                       R16 R16 K41 ["Provider"]
       96 DUPTABLE                         R17 K42 [{"localization"}]
       97 GETTABLEKS                       R18 R0 K26 ["localization"]
       99 SETTABLEKS                       R18 R17 K26 ["localization"]
      101 DUPTABLE                         R18 K44 [{"LoginPageContent"}]
      102 GETUPVAL                         R19 4
      103 GETTABLEKS                       R19 R19 K12 ["createElement"]
      105 GETUPVAL                         R20 8
      106 DUPTABLE                         R21 K46 [{"LoginPluginBridge"}]
      107 GETTABLEKS                       R22 R0 K47 ["loginPluginBridgeComponent"]
      109 SETTABLEKS                       R22 R21 K45 ["LoginPluginBridge"]
      111 CALL                             R19 2 1
      112 SETTABLEKS                       R19 R18 K43 ["LoginPageContent"]
      114 CALL                             R15 3 -1
      115 SETLIST                          R14 R15 -1 [1]
      117 CALL                             R11 3 -1
      118 CALL                             R8 -1 1
      119 SETTABLEKS                       R8 R7 K10 ["MainWidget"]
      121 CALL                             R5 2 -1
      122 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LoginPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Components"]
       30 GETTABLEKS                       R4 R4 K11 ["FoundationProviderAdapter"]
       32 GETTABLEKS                       R5 R3 K12 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K13 ["Localization"]
       36 GETTABLEKS                       R6 R2 K14 ["UI"]
       38 GETTABLEKS                       R6 R6 K15 ["DockWidget"]
       40 GETTABLEKS                       R7 R2 K16 ["ContextServices"]
       42 GETTABLEKS                       R8 R7 K17 ["Plugin"]
       44 GETTABLEKS                       R9 R7 K18 ["Mouse"]
       46 GETTABLEKS                       R10 R7 K19 ["Design"]
       48 GETTABLEKS                       R11 R2 K20 ["Styling"]
       50 GETTABLEKS                       R11 R11 K21 ["registerPluginStyles"]
       52 GETTABLEKS                       R12 R0 K22 ["Src"]
       54 GETTABLEKS                       R12 R12 K23 ["Resources"]
       56 GETTABLEKS                       R12 R12 K13 ["Localization"]
       58 GETTABLEKS                       R12 R12 K24 ["SourceStrings"]
       60 GETTABLEKS                       R13 R0 K22 ["Src"]
       62 GETTABLEKS                       R13 R13 K23 ["Resources"]
       64 GETTABLEKS                       R13 R13 K13 ["Localization"]
       66 GETTABLEKS                       R13 R13 K25 ["LocalizedStrings"]
       68 GETIMPORT                        R14 K5 [require]
       70 GETTABLEKS                       R15 R0 K22 ["Src"]
       72 GETTABLEKS                       R15 R15 K10 ["Components"]
       74 GETTABLEKS                       R15 R15 K26 ["LoginPageContent"]
       76 CALL                             R14 1 1
       77 GETTABLEKS                       R15 R1 K27 ["PureComponent"]
       79 LOADK                            R17 K28 ["MainPlugin"]
       80 NAMECALL                         R15 R15 K29 ["extend"]
       82 CALL                             R15 2 1
       83 DUPCLOSURE                       R16 K30 [PROTO_0]
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R13
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R11
       90 SETTABLEKS                       R16 R15 K31 ["init"]
       92 DUPCLOSURE                       R16 K32 [PROTO_2]
       93 SETTABLEKS                       R16 R15 K33 ["didMount"]
       95 DUPCLOSURE                       R16 K34 [PROTO_3]
       96 SETTABLEKS                       R16 R15 K35 ["willUnmount"]
       98 DUPCLOSURE                       R16 K36 [PROTO_4]
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R14
      108 SETTABLEKS                       R16 R15 K37 ["render"]
      110 RETURN                           R15 1
