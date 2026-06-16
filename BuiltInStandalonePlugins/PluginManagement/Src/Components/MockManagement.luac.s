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
       77 GETUPVAL                         R3 3
       78 GETTABLEKS                       R3 R3 K0 ["new"]
       80 GETTABLEKS                       R4 R0 K9 ["mockGlobalConfig"]
       82 GETTABLEKS                       R4 R4 K23 ["api"]
       84 CALL                             R3 1 1
       85 SETTABLEKS                       R3 R0 K24 ["apiContext"]
       87 GETUPVAL                         R3 2
       88 GETTABLEKS                       R3 R3 K25 ["Store"]
       90 GETTABLEKS                       R3 R3 K0 ["new"]
       92 GETTABLEKS                       R4 R0 K9 ["mockGlobalConfig"]
       94 GETTABLEKS                       R4 R4 K26 ["store"]
       96 CALL                             R3 1 1
       97 SETTABLEKS                       R3 R0 K27 ["storeContext"]
       99 GETUPVAL                         R3 2
      100 GETTABLEKS                       R3 R3 K28 ["Mouse"]
      102 GETTABLEKS                       R3 R3 K0 ["new"]
      104 GETTABLEKS                       R4 R0 K9 ["mockGlobalConfig"]
      106 GETTABLEKS                       R4 R4 K21 ["mockPlugin"]
      108 NAMECALL                         R4 R4 K29 ["GetMouse"]
      110 CALL                             R4 1 -1
      111 CALL                             R3 -1 1
      112 SETTABLEKS                       R3 R0 K30 ["mouseContext"]
      114 GETUPVAL                         R3 2
      115 GETTABLEKS                       R3 R3 K31 ["Focus"]
      117 GETTABLEKS                       R3 R3 K0 ["new"]
      119 GETTABLEKS                       R4 R0 K15 ["focusTarget"]
      121 CALL                             R3 1 1
      122 SETTABLEKS                       R3 R0 K32 ["focusContext"]
      124 GETUPVAL                         R3 4
      125 GETTABLEKS                       R3 R3 K0 ["new"]
      127 CALL                             R3 0 1
      128 SETTABLEKS                       R3 R0 K33 ["navigation"]
      130 GETTABLEKS                       R3 R0 K1 ["cleanup"]
      132 GETTABLEKS                       R5 R0 K9 ["mockGlobalConfig"]
      134 NAMECALL                         R3 R3 K34 ["add"]
      136 CALL                             R3 2 0
      137 GETTABLEKS                       R3 R0 K1 ["cleanup"]
      139 GETTABLEKS                       R5 R0 K15 ["focusTarget"]
      141 NAMECALL                         R3 R3 K34 ["add"]
      143 CALL                             R3 2 0
      144 GETTABLEKS                       R3 R0 K1 ["cleanup"]
      146 GETTABLEKS                       R5 R0 K22 ["pluginContext"]
      148 NAMECALL                         R3 R3 K34 ["add"]
      150 CALL                             R3 2 0
      151 GETTABLEKS                       R3 R0 K1 ["cleanup"]
      153 GETTABLEKS                       R5 R0 K24 ["apiContext"]
      155 NAMECALL                         R3 R3 K34 ["add"]
      157 CALL                             R3 2 0
      158 GETTABLEKS                       R3 R0 K1 ["cleanup"]
      160 GETTABLEKS                       R5 R0 K27 ["storeContext"]
      162 NAMECALL                         R3 R3 K34 ["add"]
      164 CALL                             R3 2 0
      165 GETTABLEKS                       R3 R0 K1 ["cleanup"]
      167 GETTABLEKS                       R5 R0 K30 ["mouseContext"]
      169 NAMECALL                         R3 R3 K34 ["add"]
      171 CALL                             R3 2 0
      172 GETTABLEKS                       R3 R0 K1 ["cleanup"]
      174 GETTABLEKS                       R5 R0 K32 ["focusContext"]
      176 NAMECALL                         R3 R3 K34 ["add"]
      178 CALL                             R3 2 0
      179 GETTABLEKS                       R3 R0 K1 ["cleanup"]
      181 GETTABLEKS                       R5 R0 K33 ["navigation"]
      183 NAMECALL                         R3 R3 K34 ["add"]
      185 CALL                             R3 2 0
      186 NEWTABLE                         R3 0 10
      188 GETTABLEKS                       R4 R0 K22 ["pluginContext"]
      190 GETTABLEKS                       R5 R0 K24 ["apiContext"]
      192 GETTABLEKS                       R6 R0 K19 ["mockPluginManagementApi"]
      194 GETTABLEKS                       R7 R0 K16 ["localization"]
      196 GETTABLEKS                       R8 R0 K17 ["theme"]
      198 GETTABLEKS                       R9 R0 K27 ["storeContext"]
      200 GETTABLEKS                       R10 R0 K30 ["mouseContext"]
      202 GETTABLEKS                       R11 R0 K18 ["analytics"]
      204 GETTABLEKS                       R12 R0 K32 ["focusContext"]
      206 GETTABLEKS                       R13 R0 K33 ["navigation"]
      208 SETLIST                          R3 R4 10 [1]
      210 SETTABLEKS                       R3 R0 K35 ["services"]
      212 RETURN                           R0 0

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
       54 GETIMPORT                        R6 K4 [require]
       56 GETTABLEKS                       R7 R0 K9 ["Src"]
       58 GETTABLEKS                       R7 R7 K15 ["Util"]
       60 GETTABLEKS                       R7 R7 K16 ["CleanupHelper"]
       62 CALL                             R6 1 1
       63 GETTABLEKS                       R7 R1 K17 ["PureComponent"]
       65 LOADK                            R9 K18 ["MockManagement"]
       66 NAMECALL                         R7 R7 K19 ["extend"]
       68 CALL                             R7 2 1
       69 DUPCLOSURE                       R8 K20 [PROTO_0]
       70 DUPCLOSURE                       R9 K21 [PROTO_1]
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R4
       76 SETTABLEKS                       R9 R7 K22 ["init"]
       78 DUPCLOSURE                       R9 K23 [PROTO_2]
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R1
       81 SETTABLEKS                       R9 R7 K24 ["render"]
       83 DUPCLOSURE                       R9 K25 [PROTO_3]
       84 SETTABLEKS                       R9 R7 K26 ["willUnmount"]
       86 RETURN                           R7 1
