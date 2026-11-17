PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["ScreenGui"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R0 K1 ["cleanup"]
        6 DUPTABLE                         R2 K5 [{"FocusedDataModelSession", "initialStoreState", "overrideServices"}]
        7 GETTABLEKS                       R4 R1 K2 ["FocusedDataModelSession"]
        9 ORK                              R3 R4 K6 []
       10 SETTABLEKS                       R3 R2 K2 ["FocusedDataModelSession"]
       12 GETTABLEKS                       R4 R1 K3 ["initialStoreState"]
       14 ORK                              R3 R4 K6 []
       15 SETTABLEKS                       R3 R2 K3 ["initialStoreState"]
       17 DUPTABLE                         R3 K8 [{"MockStudioService"}]
       18 GETTABLEKS                       R5 R1 K7 ["MockStudioService"]
       20 ORK                              R4 R5 K6 []
       21 SETTABLEKS                       R4 R3 K7 ["MockStudioService"]
       23 SETTABLEKS                       R3 R2 K4 ["overrideServices"]
       25 GETUPVAL                         R3 1
       26 MOVE                             R4 R2
       27 CALL                             R3 1 1
       28 SETTABLEKS                       R3 R0 K9 ["mockGlobalConfig"]
       30 GETTABLEKS                       R3 R0 K10 ["props"]
       32 GETTABLEKS                       R3 R3 K11 ["FocusTarget"]
       34 JUMPIF                           R3 ; [+4]
       35 GETIMPORT                        R3 K13 [Instance.new]
       37 LOADK                            R4 K14 ["ScreenGui"]
       38 CALL                             R3 1 1
       39 SETTABLEKS                       R3 R0 K15 ["focusTarget"]
       41 GETTABLEKS                       R3 R0 K9 ["mockGlobalConfig"]
       43 GETTABLEKS                       R3 R3 K16 ["localization"]
       45 SETTABLEKS                       R3 R0 K16 ["localization"]
       47 GETTABLEKS                       R3 R0 K9 ["mockGlobalConfig"]
       49 GETTABLEKS                       R3 R3 K17 ["theme"]
       51 SETTABLEKS                       R3 R0 K17 ["theme"]
       53 GETTABLEKS                       R3 R0 K9 ["mockGlobalConfig"]
       55 GETTABLEKS                       R3 R3 K18 ["analytics"]
       57 SETTABLEKS                       R3 R0 K18 ["analytics"]
       59 GETTABLEKS                       R3 R0 K9 ["mockGlobalConfig"]
       61 GETTABLEKS                       R3 R3 K19 ["mockPluginManagementApi"]
       63 SETTABLEKS                       R3 R0 K19 ["mockPluginManagementApi"]
       65 GETUPVAL                         R3 2
       66 GETTABLEKS                       R3 R3 K20 ["Plugin"]
       68 GETTABLEKS                       R3 R3 K0 ["new"]
       70 GETTABLEKS                       R4 R0 K9 ["mockGlobalConfig"]
       72 GETTABLEKS                       R4 R4 K21 ["mockPlugin"]
       74 CALL                             R3 1 1
       75 SETTABLEKS                       R3 R0 K22 ["pluginContext"]
       77 GETTABLEKS                       R3 R0 K9 ["mockGlobalConfig"]
       79 GETTABLEKS                       R3 R3 K23 ["api"]
       81 SETTABLEKS                       R3 R0 K24 ["apiContext"]
       83 GETUPVAL                         R3 2
       84 GETTABLEKS                       R3 R3 K25 ["Store"]
       86 GETTABLEKS                       R3 R3 K0 ["new"]
       88 GETTABLEKS                       R4 R0 K9 ["mockGlobalConfig"]
       90 GETTABLEKS                       R4 R4 K26 ["store"]
       92 CALL                             R3 1 1
       93 SETTABLEKS                       R3 R0 K27 ["storeContext"]
       95 GETUPVAL                         R3 2
       96 GETTABLEKS                       R3 R3 K28 ["Mouse"]
       98 GETTABLEKS                       R3 R3 K0 ["new"]
      100 GETTABLEKS                       R4 R0 K9 ["mockGlobalConfig"]
      102 GETTABLEKS                       R4 R4 K21 ["mockPlugin"]
      104 NAMECALL                         R4 R4 K29 ["GetMouse"]
      106 CALL                             R4 1 -1
      107 CALL                             R3 -1 1
      108 SETTABLEKS                       R3 R0 K30 ["mouseContext"]
      110 GETUPVAL                         R3 2
      111 GETTABLEKS                       R3 R3 K31 ["Focus"]
      113 GETTABLEKS                       R3 R3 K0 ["new"]
      115 GETTABLEKS                       R4 R0 K15 ["focusTarget"]
      117 CALL                             R3 1 1
      118 SETTABLEKS                       R3 R0 K32 ["focusContext"]
      120 GETUPVAL                         R3 3
      121 GETTABLEKS                       R3 R3 K0 ["new"]
      123 CALL                             R3 0 1
      124 SETTABLEKS                       R3 R0 K33 ["navigation"]
      126 GETTABLEKS                       R3 R0 K1 ["cleanup"]
      128 GETTABLEKS                       R5 R0 K9 ["mockGlobalConfig"]
      130 NAMECALL                         R3 R3 K34 ["add"]
      132 CALL                             R3 2 0
      133 GETTABLEKS                       R3 R0 K1 ["cleanup"]
      135 GETTABLEKS                       R5 R0 K15 ["focusTarget"]
      137 NAMECALL                         R3 R3 K34 ["add"]
      139 CALL                             R3 2 0
      140 GETTABLEKS                       R3 R0 K1 ["cleanup"]
      142 GETTABLEKS                       R5 R0 K22 ["pluginContext"]
      144 NAMECALL                         R3 R3 K34 ["add"]
      146 CALL                             R3 2 0
      147 GETTABLEKS                       R3 R0 K1 ["cleanup"]
      149 GETTABLEKS                       R5 R0 K24 ["apiContext"]
      151 NAMECALL                         R3 R3 K34 ["add"]
      153 CALL                             R3 2 0
      154 GETTABLEKS                       R3 R0 K1 ["cleanup"]
      156 GETTABLEKS                       R5 R0 K27 ["storeContext"]
      158 NAMECALL                         R3 R3 K34 ["add"]
      160 CALL                             R3 2 0
      161 GETTABLEKS                       R3 R0 K1 ["cleanup"]
      163 GETTABLEKS                       R5 R0 K30 ["mouseContext"]
      165 NAMECALL                         R3 R3 K34 ["add"]
      167 CALL                             R3 2 0
      168 GETTABLEKS                       R3 R0 K1 ["cleanup"]
      170 GETTABLEKS                       R5 R0 K32 ["focusContext"]
      172 NAMECALL                         R3 R3 K34 ["add"]
      174 CALL                             R3 2 0
      175 GETTABLEKS                       R3 R0 K1 ["cleanup"]
      177 GETTABLEKS                       R5 R0 K33 ["navigation"]
      179 NAMECALL                         R3 R3 K34 ["add"]
      181 CALL                             R3 2 0
      182 NEWTABLE                         R3 0 10
      184 GETTABLEKS                       R4 R0 K22 ["pluginContext"]
      186 GETTABLEKS                       R5 R0 K24 ["apiContext"]
      188 GETTABLEKS                       R6 R0 K19 ["mockPluginManagementApi"]
      190 GETTABLEKS                       R7 R0 K16 ["localization"]
      192 GETTABLEKS                       R8 R0 K17 ["theme"]
      194 GETTABLEKS                       R9 R0 K27 ["storeContext"]
      196 GETTABLEKS                       R10 R0 K30 ["mouseContext"]
      198 GETTABLEKS                       R11 R0 K18 ["analytics"]
      200 GETTABLEKS                       R12 R0 K32 ["focusContext"]
      202 GETTABLEKS                       R13 R0 K33 ["navigation"]
      204 SETLIST                          R3 R4 10 [1]
      206 SETTABLEKS                       R3 R0 K35 ["services"]
      208 RETURN                           R0 0

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
        0 GETTABLEKS                       R1 R0 K0 ["cleanup"]
        2 NAMECALL                         R1 R1 K1 ["Destroy"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

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
       31 GETTABLEKS                       R4 R4 K10 ["Navigation"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K9 ["Src"]
       38 GETTABLEKS                       R5 R5 K11 ["Tests"]
       40 GETTABLEKS                       R5 R5 K12 ["Mocks"]
       42 GETTABLEKS                       R5 R5 K13 ["createMockGlobalConfig"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K4 [require]
       47 GETTABLEKS                       R6 R0 K9 ["Src"]
       49 GETTABLEKS                       R6 R6 K14 ["Util"]
       51 GETTABLEKS                       R6 R6 K15 ["CleanupHelper"]
       53 CALL                             R5 1 1
       54 GETTABLEKS                       R6 R1 K16 ["PureComponent"]
       56 LOADK                            R8 K17 ["MockManagement"]
       57 NAMECALL                         R6 R6 K18 ["extend"]
       59 CALL                             R6 2 1
       60 DUPCLOSURE                       R7 K19 [PROTO_0]
       61 DUPCLOSURE                       R8 K20 [PROTO_1]
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R3
       66 SETTABLEKS                       R8 R6 K21 ["init"]
       68 DUPCLOSURE                       R8 K22 [PROTO_2]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R1
       71 SETTABLEKS                       R8 R6 K23 ["render"]
       73 DUPCLOSURE                       R8 K24 [PROTO_3]
       74 SETTABLEKS                       R8 R6 K25 ["willUnmount"]
       76 RETURN                           R6 1
