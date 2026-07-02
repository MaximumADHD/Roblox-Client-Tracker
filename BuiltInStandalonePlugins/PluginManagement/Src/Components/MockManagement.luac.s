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
       77 GETUPVAL                         R4 3
       78 CALL                             R4 0 1
       79 JUMPIFNOT                        R4 ; [+5]
       80 GETTABLEKS                       R3 R0 K9 ["mockGlobalConfig"]
       82 GETTABLEKS                       R3 R3 K23 ["api"]
       84 JUMP                             ; [+8]
       85 GETUPVAL                         R3 4
       86 GETTABLEKS                       R3 R3 K0 ["new"]
       88 GETTABLEKS                       R4 R0 K9 ["mockGlobalConfig"]
       90 GETTABLEKS                       R4 R4 K23 ["api"]
       92 CALL                             R3 1 1
       93 SETTABLEKS                       R3 R0 K24 ["apiContext"]
       95 GETUPVAL                         R3 2
       96 GETTABLEKS                       R3 R3 K25 ["Store"]
       98 GETTABLEKS                       R3 R3 K0 ["new"]
      100 GETTABLEKS                       R4 R0 K9 ["mockGlobalConfig"]
      102 GETTABLEKS                       R4 R4 K26 ["store"]
      104 CALL                             R3 1 1
      105 SETTABLEKS                       R3 R0 K27 ["storeContext"]
      107 GETUPVAL                         R3 2
      108 GETTABLEKS                       R3 R3 K28 ["Mouse"]
      110 GETTABLEKS                       R3 R3 K0 ["new"]
      112 GETTABLEKS                       R4 R0 K9 ["mockGlobalConfig"]
      114 GETTABLEKS                       R4 R4 K21 ["mockPlugin"]
      116 NAMECALL                         R4 R4 K29 ["GetMouse"]
      118 CALL                             R4 1 -1
      119 CALL                             R3 -1 1
      120 SETTABLEKS                       R3 R0 K30 ["mouseContext"]
      122 GETUPVAL                         R3 2
      123 GETTABLEKS                       R3 R3 K31 ["Focus"]
      125 GETTABLEKS                       R3 R3 K0 ["new"]
      127 GETTABLEKS                       R4 R0 K15 ["focusTarget"]
      129 CALL                             R3 1 1
      130 SETTABLEKS                       R3 R0 K32 ["focusContext"]
      132 GETUPVAL                         R3 5
      133 GETTABLEKS                       R3 R3 K0 ["new"]
      135 CALL                             R3 0 1
      136 SETTABLEKS                       R3 R0 K33 ["navigation"]
      138 GETTABLEKS                       R3 R0 K1 ["cleanup"]
      140 GETTABLEKS                       R5 R0 K9 ["mockGlobalConfig"]
      142 NAMECALL                         R3 R3 K34 ["add"]
      144 CALL                             R3 2 0
      145 GETTABLEKS                       R3 R0 K1 ["cleanup"]
      147 GETTABLEKS                       R5 R0 K15 ["focusTarget"]
      149 NAMECALL                         R3 R3 K34 ["add"]
      151 CALL                             R3 2 0
      152 GETTABLEKS                       R3 R0 K1 ["cleanup"]
      154 GETTABLEKS                       R5 R0 K22 ["pluginContext"]
      156 NAMECALL                         R3 R3 K34 ["add"]
      158 CALL                             R3 2 0
      159 GETTABLEKS                       R3 R0 K1 ["cleanup"]
      161 GETTABLEKS                       R5 R0 K24 ["apiContext"]
      163 NAMECALL                         R3 R3 K34 ["add"]
      165 CALL                             R3 2 0
      166 GETTABLEKS                       R3 R0 K1 ["cleanup"]
      168 GETTABLEKS                       R5 R0 K27 ["storeContext"]
      170 NAMECALL                         R3 R3 K34 ["add"]
      172 CALL                             R3 2 0
      173 GETTABLEKS                       R3 R0 K1 ["cleanup"]
      175 GETTABLEKS                       R5 R0 K30 ["mouseContext"]
      177 NAMECALL                         R3 R3 K34 ["add"]
      179 CALL                             R3 2 0
      180 GETTABLEKS                       R3 R0 K1 ["cleanup"]
      182 GETTABLEKS                       R5 R0 K32 ["focusContext"]
      184 NAMECALL                         R3 R3 K34 ["add"]
      186 CALL                             R3 2 0
      187 GETTABLEKS                       R3 R0 K1 ["cleanup"]
      189 GETTABLEKS                       R5 R0 K33 ["navigation"]
      191 NAMECALL                         R3 R3 K34 ["add"]
      193 CALL                             R3 2 0
      194 NEWTABLE                         R3 0 10
      196 GETTABLEKS                       R4 R0 K22 ["pluginContext"]
      198 GETTABLEKS                       R5 R0 K24 ["apiContext"]
      200 GETTABLEKS                       R6 R0 K19 ["mockPluginManagementApi"]
      202 GETTABLEKS                       R7 R0 K16 ["localization"]
      204 GETTABLEKS                       R8 R0 K17 ["theme"]
      206 GETTABLEKS                       R9 R0 K27 ["storeContext"]
      208 GETTABLEKS                       R10 R0 K30 ["mouseContext"]
      210 GETTABLEKS                       R11 R0 K18 ["analytics"]
      212 GETTABLEKS                       R12 R0 K32 ["focusContext"]
      214 GETTABLEKS                       R13 R0 K33 ["navigation"]
      216 SETLIST                          R3 R4 10 [1]
      218 SETTABLEKS                       R3 R0 K35 ["services"]
      220 RETURN                           R0 0

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
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioPluginManagementUpgradeHttp"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K8 ["Packages"]
       22 GETTABLEKS                       R3 R3 K9 ["Roact"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Packages"]
       29 GETTABLEKS                       R4 R4 K10 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R3 R3 K11 ["ContextServices"]
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K5 ["Src"]
       38 GETTABLEKS                       R5 R5 K11 ["ContextServices"]
       40 GETTABLEKS                       R5 R5 K12 ["PluginAPI2"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K5 ["Src"]
       47 GETTABLEKS                       R6 R6 K11 ["ContextServices"]
       49 GETTABLEKS                       R6 R6 K13 ["Navigation"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K4 [require]
       54 GETTABLEKS                       R7 R0 K5 ["Src"]
       56 GETTABLEKS                       R7 R7 K14 ["Tests"]
       58 GETTABLEKS                       R7 R7 K15 ["Mocks"]
       60 GETTABLEKS                       R7 R7 K16 ["createMockGlobalConfig"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K4 [require]
       65 GETTABLEKS                       R8 R0 K5 ["Src"]
       67 GETTABLEKS                       R8 R8 K17 ["Util"]
       69 GETTABLEKS                       R8 R8 K18 ["CleanupHelper"]
       71 CALL                             R7 1 1
       72 GETTABLEKS                       R8 R2 K19 ["PureComponent"]
       74 LOADK                            R10 K20 ["MockManagement"]
       75 NAMECALL                         R8 R8 K21 ["extend"]
       77 CALL                             R8 2 1
       78 DUPCLOSURE                       R9 K22 [PROTO_0]
       79 DUPCLOSURE                       R10 K23 [PROTO_1]
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R5
       86 SETTABLEKS                       R10 R8 K24 ["init"]
       88 DUPCLOSURE                       R10 K25 [PROTO_2]
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R2
       91 SETTABLEKS                       R10 R8 K26 ["render"]
       93 DUPCLOSURE                       R10 K27 [PROTO_3]
       94 SETTABLEKS                       R10 R8 K28 ["willUnmount"]
       96 RETURN                           R8 1
