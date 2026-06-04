PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["ScreenGui"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Store"]
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R4 R0 K2 ["props"]
        8 GETTABLEKS                       R4 R4 K3 ["initialStoreState"]
       10 NEWTABLE                         R5 0 1
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K4 ["thunkMiddleware"]
       15 SETLIST                          R5 R6 1 [1]
       17 CALL                             R2 3 1
       18 SETTABLEKS                       R2 R0 K5 ["store"]
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R2 R2 K6 ["API"]
       23 GETTABLEKS                       R2 R2 K7 ["mock"]
       25 NEWTABLE                         R3 0 0
       27 CALL                             R2 1 1
       28 SETTABLEKS                       R2 R0 K8 ["api"]
       30 GETUPVAL                         R2 3
       31 GETTABLEKS                       R2 R2 K1 ["new"]
       33 GETTABLEKS                       R3 R1 K9 ["Container"]
       35 GETTABLEKS                       R5 R1 K11 ["FocusedDataModelSession"]
       37 ORK                              R4 R5 K10 []
       38 CALL                             R2 2 1
       39 SETTABLEKS                       R2 R0 K12 ["plugin"]
       41 GETTABLEKS                       R2 R1 K13 ["FocusTarget"]
       43 JUMPIF                           R2 ; [+4]
       44 GETIMPORT                        R2 K15 [Instance.new]
       46 LOADK                            R3 K16 ["ScreenGui"]
       47 CALL                             R2 1 1
       48 SETTABLEKS                       R2 R0 K17 ["target"]
       50 GETTABLEKS                       R2 R1 K18 ["MockStudioService"]
       52 JUMPIF                           R2 ; [+4]
       53 GETUPVAL                         R2 4
       54 GETTABLEKS                       R2 R2 K1 ["new"]
       56 CALL                             R2 0 1
       57 SETTABLEKS                       R2 R0 K19 ["_mockStudioService"]
       59 GETUPVAL                         R2 5
       60 GETTABLEKS                       R2 R2 K1 ["new"]
       62 CALL                             R2 0 1
       63 SETTABLEKS                       R2 R0 K20 ["_mockPluginManagementService"]
       65 GETUPVAL                         R2 6
       66 GETTABLEKS                       R2 R2 K1 ["new"]
       68 CALL                             R2 0 1
       69 SETTABLEKS                       R2 R0 K21 ["_mockPermissionsService"]
       71 GETUPVAL                         R2 7
       72 GETTABLEKS                       R2 R2 K1 ["new"]
       74 CALL                             R2 0 1
       75 SETTABLEKS                       R2 R0 K22 ["_mockMarketplaceService"]
       77 GETUPVAL                         R2 8
       78 GETTABLEKS                       R2 R2 K1 ["new"]
       80 CALL                             R2 0 1
       81 SETTABLEKS                       R2 R0 K23 ["_mockPluginPolicyService"]
       83 GETUPVAL                         R2 9
       84 GETTABLEKS                       R2 R2 K1 ["new"]
       86 GETTABLEKS                       R3 R0 K19 ["_mockStudioService"]
       88 GETTABLEKS                       R4 R0 K20 ["_mockPluginManagementService"]
       90 GETTABLEKS                       R5 R0 K21 ["_mockPermissionsService"]
       92 GETTABLEKS                       R6 R0 K22 ["_mockMarketplaceService"]
       94 GETTABLEKS                       R7 R0 K23 ["_mockPluginPolicyService"]
       96 CALL                             R2 5 1
       97 SETTABLEKS                       R2 R0 K24 ["_pluginManagementApi"]
       99 NEWTABLE                         R2 0 10
      101 GETUPVAL                         R3 10
      102 GETTABLEKS                       R3 R3 K25 ["Plugin"]
      104 GETTABLEKS                       R3 R3 K1 ["new"]
      106 GETTABLEKS                       R4 R0 K12 ["plugin"]
      108 CALL                             R3 1 1
      109 GETUPVAL                         R4 11
      110 GETTABLEKS                       R4 R4 K1 ["new"]
      112 GETTABLEKS                       R5 R0 K8 ["api"]
      114 CALL                             R4 1 1
      115 GETUPVAL                         R5 10
      116 GETTABLEKS                       R5 R5 K26 ["Localization"]
      118 GETTABLEKS                       R5 R5 K7 ["mock"]
      120 CALL                             R5 0 1
      121 GETUPVAL                         R6 10
      122 GETTABLEKS                       R6 R6 K27 ["Mouse"]
      124 GETTABLEKS                       R6 R6 K1 ["new"]
      126 GETTABLEKS                       R7 R0 K12 ["plugin"]
      128 NAMECALL                         R7 R7 K28 ["GetMouse"]
      130 CALL                             R7 1 -1
      131 CALL                             R6 -1 1
      132 GETUPVAL                         R7 12
      133 GETUPVAL                         R8 10
      134 GETTABLEKS                       R8 R8 K29 ["Focus"]
      136 GETTABLEKS                       R8 R8 K1 ["new"]
      138 GETTABLEKS                       R9 R0 K17 ["target"]
      140 CALL                             R8 1 1
      141 GETUPVAL                         R9 10
      142 GETTABLEKS                       R9 R9 K0 ["Store"]
      144 GETTABLEKS                       R9 R9 K1 ["new"]
      146 GETTABLEKS                       R10 R0 K5 ["store"]
      148 CALL                             R9 1 1
      149 GETUPVAL                         R10 10
      150 GETTABLEKS                       R10 R10 K30 ["Analytics"]
      152 GETTABLEKS                       R10 R10 K7 ["mock"]
      154 CALL                             R10 0 1
      155 GETTABLEKS                       R11 R0 K24 ["_pluginManagementApi"]
      157 GETUPVAL                         R12 13
      158 GETTABLEKS                       R12 R12 K1 ["new"]
      160 CALL                             R12 0 -1
      161 SETLIST                          R2 R3 -1 [1]
      163 SETTABLEKS                       R2 R0 K31 ["services"]
      165 RETURN                           R0 0

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
       20 GETTABLEKS                       R3 R3 K7 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Http"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Reducers"]
       36 GETTABLEKS                       R5 R5 K11 ["MainReducer"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETTABLEKS                       R6 R0 K5 ["Packages"]
       43 GETTABLEKS                       R6 R6 K12 ["Framework"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R5 R5 K13 ["ContextServices"]
       48 GETIMPORT                        R6 K4 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K13 ["ContextServices"]
       54 GETTABLEKS                       R7 R7 K14 ["PluginAPI2"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K4 [require]
       59 GETTABLEKS                       R8 R0 K9 ["Src"]
       61 GETTABLEKS                       R8 R8 K13 ["ContextServices"]
       63 GETTABLEKS                       R8 R8 K15 ["Navigation"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K4 [require]
       68 GETTABLEKS                       R9 R0 K9 ["Src"]
       70 GETTABLEKS                       R9 R9 K16 ["Resources"]
       72 GETTABLEKS                       R9 R9 K17 ["makeTheme"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K4 [require]
       77 GETTABLEKS                       R10 R0 K9 ["Src"]
       79 GETTABLEKS                       R10 R10 K18 ["Util"]
       81 GETTABLEKS                       R10 R10 K19 ["PluginManagementApi"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K4 [require]
       86 GETTABLEKS                       R11 R0 K9 ["Src"]
       88 GETTABLEKS                       R11 R11 K18 ["Util"]
       90 GETTABLEKS                       R11 R11 K20 ["Mocks"]
       92 GETTABLEKS                       R11 R11 K21 ["MockPluginManagementService"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K4 [require]
       97 GETTABLEKS                       R12 R0 K9 ["Src"]
       99 GETTABLEKS                       R12 R12 K18 ["Util"]
      101 GETTABLEKS                       R12 R12 K20 ["Mocks"]
      103 GETTABLEKS                       R12 R12 K22 ["MockStudioService"]
      105 CALL                             R11 1 1
      106 GETIMPORT                        R12 K4 [require]
      108 GETTABLEKS                       R13 R0 K9 ["Src"]
      110 GETTABLEKS                       R13 R13 K18 ["Util"]
      112 GETTABLEKS                       R13 R13 K20 ["Mocks"]
      114 GETTABLEKS                       R13 R13 K23 ["MockPermissionsService"]
      116 CALL                             R12 1 1
      117 GETIMPORT                        R13 K4 [require]
      119 GETTABLEKS                       R14 R0 K9 ["Src"]
      121 GETTABLEKS                       R14 R14 K18 ["Util"]
      123 GETTABLEKS                       R14 R14 K20 ["Mocks"]
      125 GETTABLEKS                       R14 R14 K24 ["MockMarketplaceService"]
      127 CALL                             R13 1 1
      128 GETIMPORT                        R14 K4 [require]
      130 GETTABLEKS                       R15 R0 K9 ["Src"]
      132 GETTABLEKS                       R15 R15 K18 ["Util"]
      134 GETTABLEKS                       R15 R15 K20 ["Mocks"]
      136 GETTABLEKS                       R15 R15 K25 ["MockPluginPolicyService"]
      138 CALL                             R14 1 1
      139 GETIMPORT                        R15 K4 [require]
      141 GETTABLEKS                       R16 R0 K9 ["Src"]
      143 GETTABLEKS                       R16 R16 K18 ["Util"]
      145 GETTABLEKS                       R16 R16 K20 ["Mocks"]
      147 GETTABLEKS                       R16 R16 K26 ["MockPlugin"]
      149 CALL                             R15 1 1
      150 GETTABLEKS                       R16 R1 K27 ["PureComponent"]
      152 LOADK                            R18 K28 ["MockManagement"]
      153 NAMECALL                         R16 R16 K29 ["extend"]
      155 CALL                             R16 2 1
      156 DUPCLOSURE                       R17 K30 [PROTO_0]
      157 DUPCLOSURE                       R18 K31 [PROTO_1]
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R15
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R10
      164 CAPTURE                          VAL R12
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R9
      168 CAPTURE                          VAL R5
      169 CAPTURE                          VAL R6
      170 CAPTURE                          VAL R8
      171 CAPTURE                          VAL R7
      172 SETTABLEKS                       R18 R16 K32 ["init"]
      174 DUPCLOSURE                       R18 K33 [PROTO_2]
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R1
      177 SETTABLEKS                       R18 R16 K34 ["render"]
      179 RETURN                           R16 1
