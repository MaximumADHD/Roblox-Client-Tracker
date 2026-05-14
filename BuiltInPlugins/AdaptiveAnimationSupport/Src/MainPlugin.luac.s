PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Localization"]
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 DUPTABLE                         R3 K5 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
        6 GETUPVAL                         R4 1
        7 SETTABLEKS                       R4 R3 K2 ["stringResourceTable"]
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K3 ["translationResourceTable"]
       12 LOADK                            R4 K6 ["AdaptiveAnimationSupport"]
       13 SETTABLEKS                       R4 R3 K4 ["pluginName"]
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R0 K7 ["localization"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K8 ["Analytics"]
       21 GETTABLEKS                       R2 R2 K1 ["new"]
       23 DUPCLOSURE                       R3 K9 [PROTO_0]
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R0 K10 ["analytics"]
       27 GETUPVAL                         R2 3
       28 GETTABLEKS                       R2 R2 K11 ["Util"]
       30 GETTABLEKS                       R2 R2 K12 ["createFoundationDesignBinding"]
       32 CALL                             R2 0 2
       33 SETTABLEKS                       R3 R0 K13 ["onFoundationStyleSheetChange"]
       35 GETUPVAL                         R4 4
       36 GETTABLEKS                       R5 R1 K14 ["Plugin"]
       38 LOADNIL                          R6
       39 LOADNIL                          R7
       40 NEWTABLE                         R8 0 1
       42 MOVE                             R9 R2
       43 SETLIST                          R8 R9 1 [1]
       45 CALL                             R4 4 1
       46 SETTABLEKS                       R4 R0 K15 ["design"]
       48 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["provide"]
        7 NEWTABLE                         R3 0 5
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K1 ["Plugin"]
       12 GETTABLEKS                       R4 R4 K3 ["new"]
       14 MOVE                             R5 R1
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K4 ["Mouse"]
       19 GETTABLEKS                       R5 R5 K3 ["new"]
       21 NAMECALL                         R6 R1 K5 ["getMouse"]
       23 CALL                             R6 1 -1
       24 CALL                             R5 -1 1
       25 GETTABLEKS                       R6 R0 K6 ["localization"]
       27 GETTABLEKS                       R7 R0 K7 ["analytics"]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K8 ["Design"]
       32 GETTABLEKS                       R8 R8 K3 ["new"]
       34 GETTABLEKS                       R9 R0 K9 ["design"]
       36 CALL                             R8 1 -1
       37 SETLIST                          R3 R4 -1 [1]
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R4 R4 K10 ["createElement"]
       42 GETUPVAL                         R5 2
       43 DUPTABLE                         R6 K12 [{"Plugin", "localization", "pluginLoaderContext"}]
       44 SETTABLEKS                       R1 R6 K1 ["Plugin"]
       46 GETTABLEKS                       R7 R0 K6 ["localization"]
       48 SETTABLEKS                       R7 R6 K6 ["localization"]
       50 GETTABLEKS                       R7 R0 K0 ["props"]
       52 GETTABLEKS                       R7 R7 K13 ["PluginLoaderContext"]
       54 SETTABLEKS                       R7 R6 K11 ["pluginLoaderContext"]
       56 CALL                             R4 2 -1
       57 CALL                             R2 -1 -1
       58 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 NAMECALL                         R2 R1 K2 ["Deactivate"]
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
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
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R2 K11 ["Styling"]
       32 GETTABLEKS                       R5 R5 K12 ["registerPluginStyles"]
       34 GETTABLEKS                       R6 R0 K13 ["Src"]
       36 GETTABLEKS                       R6 R6 K14 ["Resources"]
       38 GETTABLEKS                       R6 R6 K15 ["Localization"]
       40 GETTABLEKS                       R6 R6 K16 ["SourceStrings"]
       42 GETTABLEKS                       R7 R0 K13 ["Src"]
       44 GETTABLEKS                       R7 R7 K14 ["Resources"]
       46 GETTABLEKS                       R7 R7 K15 ["Localization"]
       48 GETTABLEKS                       R7 R7 K17 ["LocalizedStrings"]
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K13 ["Src"]
       54 GETTABLEKS                       R9 R9 K18 ["UI"]
       56 GETTABLEKS                       R9 R9 K19 ["AdaptiveAnimationRoot"]
       58 CALL                             R8 1 1
       59 GETTABLEKS                       R8 R8 K19 ["AdaptiveAnimationRoot"]
       61 GETTABLEKS                       R9 R1 K20 ["PureComponent"]
       63 LOADK                            R11 K21 ["MainPlugin"]
       64 NAMECALL                         R9 R9 K22 ["extend"]
       66 CALL                             R9 2 1
       67 DUPCLOSURE                       R10 K23 [PROTO_1]
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R5
       73 SETTABLEKS                       R10 R9 K24 ["init"]
       75 DUPCLOSURE                       R10 K25 [PROTO_2]
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R8
       79 SETTABLEKS                       R10 R9 K26 ["render"]
       81 DUPCLOSURE                       R10 K27 [PROTO_3]
       82 SETTABLEKS                       R10 R9 K28 ["componentWillUnmount"]
       84 RETURN                           R9 1
