PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["Plugin"]
        2 LOADK                            R4 K1 ["LoginPluginBridge"]
        3 NAMECALL                         R2 R2 K2 ["GetPluginComponent"]
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R0 K3 ["loginPluginBridgeComponent"]
        8 GETIMPORT                        R2 K5 [game]
       10 LOADK                            R4 K6 ["StudioUserService"]
       11 NAMECALL                         R2 R2 K7 ["GetService"]
       13 CALL                             R2 2 1
       14 GETTABLEKS                       R2 R2 K8 ["IsLoggedIn"]
       16 DUPTABLE                         R5 K11 [{["enabled"] = True, ["IsLoggedIn"]}]
       17 SETTABLEKS                       R2 R5 K8 ["IsLoggedIn"]
       19 NAMECALL                         R3 R0 K12 ["setState"]
       21 CALL                             R3 2 0
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K13 ["Localization"]
       25 GETTABLEKS                       R3 R3 K14 ["new"]
       27 DUPTABLE                         R4 K19 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "LoginPage"}]
       28 GETUPVAL                         R5 1
       29 SETTABLEKS                       R5 R4 K15 ["stringResourceTable"]
       31 GETUPVAL                         R5 2
       32 SETTABLEKS                       R5 R4 K16 ["translationResourceTable"]
       34 CALL                             R3 1 1
       35 SETTABLEKS                       R3 R0 K20 ["localization"]
       37 GETUPVAL                         R3 3
       38 GETTABLEKS                       R3 R3 K13 ["Localization"]
       40 GETTABLEKS                       R3 R3 K14 ["new"]
       42 DUPTABLE                         R4 K19 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "LoginPage"}]
       43 GETUPVAL                         R5 1
       44 SETTABLEKS                       R5 R4 K15 ["stringResourceTable"]
       46 GETUPVAL                         R5 2
       47 SETTABLEKS                       R5 R4 K16 ["translationResourceTable"]
       49 CALL                             R3 1 1
       50 SETTABLEKS                       R3 R0 K21 ["localizationLEGACY"]
       52 GETUPVAL                         R3 4
       53 GETTABLEKS                       R3 R3 K22 ["Util"]
       55 GETTABLEKS                       R3 R3 K23 ["createFoundationDesignBinding"]
       57 CALL                             R3 0 2
       58 SETTABLEKS                       R4 R0 K24 ["onFoundationStyleSheetChange"]
       60 GETUPVAL                         R5 5
       61 GETTABLEKS                       R6 R1 K0 ["Plugin"]
       63 LOADNIL                          R7
       64 LOADNIL                          R8
       65 NEWTABLE                         R9 0 1
       67 MOVE                             R10 R3
       68 SETLIST                          R9 R10 1 [1]
       70 CALL                             R5 4 1
       71 SETTABLEKS                       R5 R0 K25 ["design"]
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
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETIMPORT                        R1 K2 [game]
        5 LOADK                            R3 K3 ["StudioUserService"]
        6 NAMECALL                         R1 R1 K4 ["GetService"]
        8 CALL                             R1 2 1
        9 LOADK                            R4 K5 ["IsLoggedIn"]
       10 NAMECALL                         R2 R1 K6 ["GetPropertyChangedSignal"]
       12 CALL                             R2 2 1
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 NAMECALL                         R2 R2 K7 ["Connect"]
       18 CALL                             R2 2 1
       19 SETTABLEKS                       R2 R0 K8 ["loggedInConnection"]
       21 DUPTABLE                         R4 K9 [{"IsLoggedIn"}]
       22 GETTABLEKS                       R5 R1 K5 ["IsLoggedIn"]
       24 SETTABLEKS                       R5 R4 K5 ["IsLoggedIn"]
       26 NAMECALL                         R2 R0 K10 ["setState"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["loggedInConnection"]
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETTABLEKS                       R1 R0 K1 ["loggedInConnection"]
        8 NAMECALL                         R1 R1 K2 ["Disconnect"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

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
       14 GETTABLEKS                       R5 R5 K5 ["createElement"]
       16 GETUPVAL                         R6 1
       17 DUPTABLE                         R7 K7 [{"LoginPluginBridge"}]
       18 GETTABLEKS                       R8 R0 K8 ["loginPluginBridgeComponent"]
       20 SETTABLEKS                       R8 R7 K6 ["LoginPluginBridge"]
       22 CALL                             R5 2 1
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R6 R6 K9 ["provide"]
       26 NEWTABLE                         R7 0 4
       28 GETUPVAL                         R8 3
       29 GETTABLEKS                       R8 R8 K10 ["new"]
       31 MOVE                             R9 R3
       32 CALL                             R8 1 1
       33 GETUPVAL                         R9 4
       34 GETTABLEKS                       R9 R9 K10 ["new"]
       36 NAMECALL                         R10 R3 K11 ["getMouse"]
       38 CALL                             R10 1 -1
       39 CALL                             R9 -1 1
       40 GETUPVAL                         R10 5
       41 GETTABLEKS                       R10 R10 K10 ["new"]
       43 GETTABLEKS                       R11 R0 K12 ["design"]
       45 CALL                             R10 1 1
       46 GETTABLEKS                       R11 R0 K13 ["localizationLEGACY"]
       48 SETLIST                          R7 R8 4 [1]
       50 DUPTABLE                         R8 K15 [{"MainWidget"}]
       51 GETUPVAL                         R9 0
       52 GETTABLEKS                       R9 R9 K5 ["createElement"]
       54 GETUPVAL                         R10 6
       55 DUPTABLE                         R11 K28 [{["Id"] = "LoginPage", ["Enabled"], ["Title"], ["ZIndexBehavior"], ["InitialDockState"], ["Size"], ["MinSize"], ["ShouldRestore"] = False, ["CreateWidgetImmediately"] = True}]
       56 SETTABLEKS                       R4 R11 K18 ["Enabled"]
       58 GETTABLEKS                       R12 R0 K29 ["localization"]
       60 LOADK                            R14 K2 ["Plugin"]
       61 LOADK                            R15 K30 ["Name"]
       62 NAMECALL                         R12 R12 K31 ["getText"]
       64 CALL                             R12 3 1
       65 SETTABLEKS                       R12 R11 K19 ["Title"]
       67 GETIMPORT                        R12 K34 [Enum.ZIndexBehavior.Sibling]
       69 SETTABLEKS                       R12 R11 K20 ["ZIndexBehavior"]
       71 GETIMPORT                        R12 K36 [Enum.InitialDockState.Float]
       73 SETTABLEKS                       R12 R11 K21 ["InitialDockState"]
       75 GETIMPORT                        R12 K38 [Vector2.new]
       77 LOADN                            R13 1000
       78 LOADN                            R14 1000
       79 CALL                             R12 2 1
       80 SETTABLEKS                       R12 R11 K22 ["Size"]
       82 GETIMPORT                        R12 K38 [Vector2.new]
       84 LOADN                            R13 1000
       85 LOADN                            R14 1000
       86 CALL                             R12 2 1
       87 SETTABLEKS                       R12 R11 K23 ["MinSize"]
       89 GETUPVAL                         R12 0
       90 GETTABLEKS                       R12 R12 K5 ["createElement"]
       92 GETUPVAL                         R13 7
       93 DUPTABLE                         R14 K42 [{["theme"] = "Dark", ["onStyleSheetChange"]}]
       94 GETTABLEKS                       R15 R0 K43 ["onFoundationStyleSheetChange"]
       96 SETTABLEKS                       R15 R14 K41 ["onStyleSheetChange"]
       98 NEWTABLE                         R15 0 1
      100 GETUPVAL                         R16 0
      101 GETTABLEKS                       R16 R16 K5 ["createElement"]
      103 GETUPVAL                         R17 8
      104 GETTABLEKS                       R17 R17 K44 ["Provider"]
      106 DUPTABLE                         R18 K45 [{"localization"}]
      107 GETTABLEKS                       R19 R0 K29 ["localization"]
      109 SETTABLEKS                       R19 R18 K29 ["localization"]
      111 DUPTABLE                         R19 K47 [{"LoginPageContent"}]
      112 SETTABLEKS                       R5 R19 K46 ["LoginPageContent"]
      114 CALL                             R16 3 -1
      115 SETLIST                          R15 R16 -1 [1]
      117 CALL                             R12 3 -1
      118 CALL                             R9 -1 1
      119 SETTABLEKS                       R9 R8 K14 ["MainWidget"]
      121 CALL                             R6 2 -1
      122 RETURN                           R6 -1

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
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R5
      108 SETTABLEKS                       R16 R15 K37 ["render"]
      110 RETURN                           R15 1
