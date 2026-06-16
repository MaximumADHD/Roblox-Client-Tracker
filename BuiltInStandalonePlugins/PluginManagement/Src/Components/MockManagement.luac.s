PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["ScreenGui"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 DUPTABLE                         R2 K3 [{"FocusedDataModelSession", "initialStoreState", "overrideServices"}]
        1 GETTABLEKS                       R4 R1 K0 ["FocusedDataModelSession"]
        3 ORK                              R3 R4 K4 []
        4 SETTABLEKS                       R3 R2 K0 ["FocusedDataModelSession"]
        6 GETTABLEKS                       R4 R1 K1 ["initialStoreState"]
        8 ORK                              R3 R4 K4 []
        9 SETTABLEKS                       R3 R2 K1 ["initialStoreState"]
       11 DUPTABLE                         R3 K6 [{"MockStudioService"}]
       12 GETTABLEKS                       R5 R1 K5 ["MockStudioService"]
       14 ORK                              R4 R5 K4 []
       15 SETTABLEKS                       R4 R3 K5 ["MockStudioService"]
       17 SETTABLEKS                       R3 R2 K2 ["overrideServices"]
       19 GETUPVAL                         R3 0
       20 MOVE                             R4 R2
       21 CALL                             R3 1 1
       22 SETTABLEKS                       R3 R0 K7 ["mockGlobalConfig"]
       24 GETTABLEKS                       R3 R0 K8 ["props"]
       26 GETTABLEKS                       R3 R3 K9 ["FocusTarget"]
       28 JUMPIF                           R3 ; [+4]
       29 GETIMPORT                        R3 K12 [Instance.new]
       31 LOADK                            R4 K13 ["ScreenGui"]
       32 CALL                             R3 1 1
       33 SETTABLEKS                       R3 R0 K14 ["focusTarget"]
       35 GETTABLEKS                       R3 R0 K7 ["mockGlobalConfig"]
       37 GETTABLEKS                       R3 R3 K15 ["localization"]
       39 SETTABLEKS                       R3 R0 K15 ["localization"]
       41 GETTABLEKS                       R3 R0 K7 ["mockGlobalConfig"]
       43 GETTABLEKS                       R3 R3 K16 ["theme"]
       45 SETTABLEKS                       R3 R0 K16 ["theme"]
       47 GETTABLEKS                       R3 R0 K7 ["mockGlobalConfig"]
       49 GETTABLEKS                       R3 R3 K17 ["analytics"]
       51 SETTABLEKS                       R3 R0 K17 ["analytics"]
       53 GETTABLEKS                       R3 R0 K7 ["mockGlobalConfig"]
       55 GETTABLEKS                       R3 R3 K18 ["pluginManagementApi"]
       57 SETTABLEKS                       R3 R0 K18 ["pluginManagementApi"]
       59 GETUPVAL                         R3 1
       60 GETTABLEKS                       R3 R3 K19 ["Plugin"]
       62 GETTABLEKS                       R3 R3 K11 ["new"]
       64 GETTABLEKS                       R4 R0 K7 ["mockGlobalConfig"]
       66 GETTABLEKS                       R4 R4 K20 ["mockPlugin"]
       68 CALL                             R3 1 1
       69 SETTABLEKS                       R3 R0 K21 ["pluginContext"]
       71 GETUPVAL                         R3 2
       72 GETTABLEKS                       R3 R3 K11 ["new"]
       74 GETTABLEKS                       R4 R0 K7 ["mockGlobalConfig"]
       76 GETTABLEKS                       R4 R4 K22 ["api"]
       78 CALL                             R3 1 1
       79 SETTABLEKS                       R3 R0 K23 ["apiContext"]
       81 GETUPVAL                         R3 1
       82 GETTABLEKS                       R3 R3 K24 ["Store"]
       84 GETTABLEKS                       R3 R3 K11 ["new"]
       86 GETTABLEKS                       R4 R0 K7 ["mockGlobalConfig"]
       88 GETTABLEKS                       R4 R4 K25 ["store"]
       90 CALL                             R3 1 1
       91 SETTABLEKS                       R3 R0 K26 ["storeContext"]
       93 GETUPVAL                         R3 1
       94 GETTABLEKS                       R3 R3 K27 ["Mouse"]
       96 GETTABLEKS                       R3 R3 K11 ["new"]
       98 GETTABLEKS                       R4 R0 K7 ["mockGlobalConfig"]
      100 GETTABLEKS                       R4 R4 K20 ["mockPlugin"]
      102 NAMECALL                         R4 R4 K28 ["GetMouse"]
      104 CALL                             R4 1 -1
      105 CALL                             R3 -1 1
      106 SETTABLEKS                       R3 R0 K29 ["mouseContext"]
      108 GETUPVAL                         R3 1
      109 GETTABLEKS                       R3 R3 K30 ["Focus"]
      111 GETTABLEKS                       R3 R3 K11 ["new"]
      113 GETTABLEKS                       R4 R0 K14 ["focusTarget"]
      115 CALL                             R3 1 1
      116 SETTABLEKS                       R3 R0 K31 ["focusContext"]
      118 GETUPVAL                         R3 3
      119 GETTABLEKS                       R3 R3 K11 ["new"]
      121 CALL                             R3 0 1
      122 SETTABLEKS                       R3 R0 K32 ["navigation"]
      124 NEWTABLE                         R3 0 10
      126 GETTABLEKS                       R4 R0 K21 ["pluginContext"]
      128 GETTABLEKS                       R5 R0 K23 ["apiContext"]
      130 GETTABLEKS                       R6 R0 K18 ["pluginManagementApi"]
      132 GETTABLEKS                       R7 R0 K15 ["localization"]
      134 GETTABLEKS                       R8 R0 K16 ["theme"]
      136 GETTABLEKS                       R9 R0 K26 ["storeContext"]
      138 GETTABLEKS                       R10 R0 K29 ["mouseContext"]
      140 GETTABLEKS                       R11 R0 K17 ["analytics"]
      142 GETTABLEKS                       R12 R0 K31 ["focusContext"]
      144 GETTABLEKS                       R13 R0 K32 ["navigation"]
      146 SETLIST                          R3 R4 10 [1]
      148 SETTABLEKS                       R3 R0 K33 ["services"]
      150 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["provide"]
        3 GETTABLEKS                       R2 R0 K1 ["services"]
        5 GETTABLEKS                       R4 R0 K2 ["props"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K3 ["Children"]
       10 GETTABLE                         R3 R4 R5
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["mockGlobalConfig"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["mockGlobalConfig"]
        5 NAMECALL                         R1 R1 K1 ["Destroy"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["mockGlobalConfig"]
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R2 R2 K8 ["ContextServices"]
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K9 ["Src"]
       29 GETTABLEKS                       R4 R4 K8 ["ContextServices"]
       31 GETTABLEKS                       R4 R4 K10 ["PluginAPI2"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K9 ["Src"]
       38 GETTABLEKS                       R5 R5 K8 ["ContextServices"]
       40 GETTABLEKS                       R5 R5 K11 ["Navigation"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K9 ["Src"]
       47 GETTABLEKS                       R6 R6 K12 ["Tests"]
       49 GETTABLEKS                       R6 R6 K13 ["Mocks"]
       51 GETTABLEKS                       R6 R6 K14 ["createMockGlobalConfig"]
       53 CALL                             R5 1 1
       54 GETTABLEKS                       R6 R1 K15 ["PureComponent"]
       56 LOADK                            R8 K16 ["MockManagement"]
       57 NAMECALL                         R6 R6 K17 ["extend"]
       59 CALL                             R6 2 1
       60 DUPCLOSURE                       R7 K18 [PROTO_0]
       61 DUPCLOSURE                       R8 K19 [PROTO_1]
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R4
       66 SETTABLEKS                       R8 R6 K20 ["init"]
       68 DUPCLOSURE                       R8 K21 [PROTO_2]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R1
       71 SETTABLEKS                       R8 R6 K22 ["render"]
       73 DUPCLOSURE                       R8 K23 [PROTO_3]
       74 SETTABLEKS                       R8 R6 K24 ["willUnmount"]
       76 RETURN                           R6 1
