PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["ScreenGui"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["ScreenGui"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["MockPluginGui"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 GETUPVAL                         R1 0
        8 JUMPIFNOT                        R1 ; [+3]
        9 GETUPVAL                         R1 0
       10 SETTABLEKS                       R1 R0 K6 ["Parent"]
       12 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["ScreenGui"]
        3 CALL                             R2 1 1
        4 LOADK                            R3 K4 ["MockPluginGui"]
        5 SETTABLEKS                       R3 R2 K5 ["Name"]
        7 GETUPVAL                         R3 0
        8 JUMPIFNOT                        R3 ; [+3]
        9 GETUPVAL                         R3 0
       10 SETTABLEKS                       R3 R2 K6 ["Parent"]
       12 MOVE                             R1 R2
       13 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["ScreenGui"]
        3 CALL                             R2 1 1
        4 LOADK                            R3 K4 ["MockPluginGui"]
        5 SETTABLEKS                       R3 R2 K5 ["Name"]
        7 GETUPVAL                         R3 0
        8 JUMPIFNOT                        R3 ; [+3]
        9 GETUPVAL                         R3 0
       10 SETTABLEKS                       R3 R2 K6 ["Parent"]
       12 MOVE                             R1 R2
       13 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R2 4 0
        2 DUPCLOSURE                       R3 K0 [PROTO_1]
        3 SETTABLEKS                       R3 R2 K1 ["GetMouse"]
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          VAL R0
        7 NEWCLOSURE                       R4 P2
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R4 R2 K2 ["CreateQWidgetPluginGui"]
       11 NEWCLOSURE                       R4 P3
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R4 R2 K3 ["CreateDockWidgetPluginGui"]
       15 GETUPVAL                         R4 0
       16 CALL                             R4 0 1
       17 JUMPIFNOT                        R4 ; [+5]
       18 DUPTABLE                         R4 K5 [{"FocusedDataModelSession"}]
       19 SETTABLEKS                       R1 R4 K4 ["FocusedDataModelSession"]
       21 SETTABLEKS                       R4 R2 K6 ["MultipleDocumentInterfaceInstance"]
       23 RETURN                           R2 1

PROTO_6:
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
       31 GETTABLEKS                       R3 R1 K9 ["Container"]
       33 GETTABLEKS                       R5 R1 K11 ["FocusedDataModelSession"]
       35 ORK                              R4 R5 K10 []
       36 CALL                             R2 2 1
       37 SETTABLEKS                       R2 R0 K12 ["plugin"]
       39 GETTABLEKS                       R2 R1 K13 ["FocusTarget"]
       41 JUMPIF                           R2 ; [+4]
       42 GETIMPORT                        R2 K15 [Instance.new]
       44 LOADK                            R3 K16 ["ScreenGui"]
       45 CALL                             R2 1 1
       46 SETTABLEKS                       R2 R0 K17 ["target"]
       48 GETUPVAL                         R2 4
       49 CALL                             R2 0 1
       50 JUMPIFNOT                        R2 ; [+49]
       51 GETTABLEKS                       R2 R1 K18 ["MockStudioService"]
       53 JUMPIF                           R2 ; [+4]
       54 GETUPVAL                         R2 5
       55 GETTABLEKS                       R2 R2 K1 ["new"]
       57 CALL                             R2 0 1
       58 SETTABLEKS                       R2 R0 K19 ["_mockStudioService"]
       60 GETUPVAL                         R2 6
       61 GETTABLEKS                       R2 R2 K1 ["new"]
       63 CALL                             R2 0 1
       64 SETTABLEKS                       R2 R0 K20 ["_mockPluginManagementService"]
       66 GETUPVAL                         R2 7
       67 GETTABLEKS                       R2 R2 K1 ["new"]
       69 CALL                             R2 0 1
       70 SETTABLEKS                       R2 R0 K21 ["_mockPermissionsService"]
       72 GETUPVAL                         R2 8
       73 GETTABLEKS                       R2 R2 K1 ["new"]
       75 CALL                             R2 0 1
       76 SETTABLEKS                       R2 R0 K22 ["_mockMarketplaceService"]
       78 GETUPVAL                         R2 9
       79 GETTABLEKS                       R2 R2 K1 ["new"]
       81 CALL                             R2 0 1
       82 SETTABLEKS                       R2 R0 K23 ["_mockPluginPolicyService"]
       84 GETUPVAL                         R2 10
       85 GETTABLEKS                       R2 R2 K1 ["new"]
       87 GETTABLEKS                       R3 R0 K19 ["_mockStudioService"]
       89 GETTABLEKS                       R4 R0 K20 ["_mockPluginManagementService"]
       91 GETTABLEKS                       R5 R0 K21 ["_mockPermissionsService"]
       93 GETTABLEKS                       R6 R0 K22 ["_mockMarketplaceService"]
       95 GETTABLEKS                       R7 R0 K23 ["_mockPluginPolicyService"]
       97 CALL                             R2 5 1
       98 SETTABLEKS                       R2 R0 K24 ["_pluginManagementApi"]
      100 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 0 9
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["Plugin"]
        5 GETTABLEKS                       R2 R2 K1 ["new"]
        7 GETTABLEKS                       R3 R0 K2 ["plugin"]
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K1 ["new"]
       13 GETTABLEKS                       R4 R0 K3 ["api"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K4 ["Localization"]
       19 GETTABLEKS                       R4 R4 K5 ["mock"]
       21 CALL                             R4 0 1
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K6 ["Mouse"]
       25 GETTABLEKS                       R5 R5 K1 ["new"]
       27 GETTABLEKS                       R6 R0 K2 ["plugin"]
       29 NAMECALL                         R6 R6 K7 ["GetMouse"]
       31 CALL                             R6 1 -1
       32 CALL                             R5 -1 1
       33 GETUPVAL                         R6 2
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R7 R7 K8 ["Focus"]
       37 GETTABLEKS                       R7 R7 K1 ["new"]
       39 GETTABLEKS                       R8 R0 K9 ["target"]
       41 CALL                             R7 1 1
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R8 R8 K10 ["Store"]
       45 GETTABLEKS                       R8 R8 K1 ["new"]
       47 GETTABLEKS                       R9 R0 K11 ["store"]
       49 CALL                             R8 1 1
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R9 R9 K12 ["Analytics"]
       53 GETTABLEKS                       R9 R9 K5 ["mock"]
       55 CALL                             R9 0 1
       56 GETTABLEKS                       R10 R0 K13 ["_pluginManagementApi"]
       58 SETLIST                          R1 R2 9 [1]
       60 MOVE                             R3 R1
       61 GETUPVAL                         R4 3
       62 GETTABLEKS                       R4 R4 K1 ["new"]
       64 CALL                             R4 0 -1
       65 FASTCALL                         TABLE_INSERT ; [+2]
       66 GETIMPORT                        R2 K16 [table.insert]
       68 CALL                             R2 -1 0
       69 GETUPVAL                         R2 0
       70 GETTABLEKS                       R2 R2 K17 ["provide"]
       72 MOVE                             R3 R1
       73 GETTABLEKS                       R5 R0 K18 ["props"]
       75 GETUPVAL                         R6 4
       76 GETTABLEKS                       R6 R6 K19 ["Children"]
       78 GETTABLE                         R4 R5 R6
       79 CALL                             R2 2 -1
       80 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R2 K6 ["getFFlagStudioFixPluginManagementPluginTests"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R4 K9 ["Rodux"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K7 ["Packages"]
       34 GETTABLEKS                       R5 R5 K10 ["Http"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K11 ["Src"]
       41 GETTABLEKS                       R6 R6 K12 ["Reducers"]
       43 GETTABLEKS                       R6 R6 K13 ["MainReducer"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K4 [require]
       48 GETTABLEKS                       R7 R0 K7 ["Packages"]
       50 GETTABLEKS                       R7 R7 K14 ["Framework"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R6 R6 K15 ["ContextServices"]
       55 GETIMPORT                        R7 K4 [require]
       57 GETTABLEKS                       R8 R0 K11 ["Src"]
       59 GETTABLEKS                       R8 R8 K15 ["ContextServices"]
       61 GETTABLEKS                       R8 R8 K16 ["PluginAPI2"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K4 [require]
       66 GETTABLEKS                       R9 R0 K11 ["Src"]
       68 GETTABLEKS                       R9 R9 K15 ["ContextServices"]
       70 GETTABLEKS                       R9 R9 K17 ["Navigation"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K4 [require]
       75 GETTABLEKS                       R10 R0 K11 ["Src"]
       77 GETTABLEKS                       R10 R10 K18 ["Resources"]
       79 GETTABLEKS                       R10 R10 K19 ["makeTheme"]
       81 CALL                             R9 1 1
       82 LOADNIL                          R10
       83 LOADNIL                          R11
       84 LOADNIL                          R12
       85 LOADNIL                          R13
       86 LOADNIL                          R14
       87 LOADNIL                          R15
       88 MOVE                             R16 R1
       89 CALL                             R16 0 1
       90 JUMPIFNOT                        R16 ; [+70]
       91 GETIMPORT                        R16 K4 [require]
       93 GETTABLEKS                       R17 R0 K11 ["Src"]
       95 GETTABLEKS                       R17 R17 K20 ["Util"]
       97 GETTABLEKS                       R17 R17 K21 ["PluginManagementApi"]
       99 CALL                             R16 1 1
      100 MOVE                             R10 R16
      101 GETIMPORT                        R16 K4 [require]
      103 GETTABLEKS                       R17 R0 K11 ["Src"]
      105 GETTABLEKS                       R17 R17 K20 ["Util"]
      107 GETTABLEKS                       R17 R17 K22 ["Mocks"]
      109 GETTABLEKS                       R17 R17 K23 ["MockPluginManagementService"]
      111 CALL                             R16 1 1
      112 MOVE                             R11 R16
      113 GETIMPORT                        R16 K4 [require]
      115 GETTABLEKS                       R17 R0 K11 ["Src"]
      117 GETTABLEKS                       R17 R17 K20 ["Util"]
      119 GETTABLEKS                       R17 R17 K22 ["Mocks"]
      121 GETTABLEKS                       R17 R17 K24 ["MockStudioService"]
      123 CALL                             R16 1 1
      124 MOVE                             R12 R16
      125 GETIMPORT                        R16 K4 [require]
      127 GETTABLEKS                       R17 R0 K11 ["Src"]
      129 GETTABLEKS                       R17 R17 K20 ["Util"]
      131 GETTABLEKS                       R17 R17 K22 ["Mocks"]
      133 GETTABLEKS                       R17 R17 K25 ["MockPermissionsService"]
      135 CALL                             R16 1 1
      136 MOVE                             R13 R16
      137 GETIMPORT                        R16 K4 [require]
      139 GETTABLEKS                       R17 R0 K11 ["Src"]
      141 GETTABLEKS                       R17 R17 K20 ["Util"]
      143 GETTABLEKS                       R17 R17 K22 ["Mocks"]
      145 GETTABLEKS                       R17 R17 K26 ["MockMarketplaceService"]
      147 CALL                             R16 1 1
      148 MOVE                             R14 R16
      149 GETIMPORT                        R16 K4 [require]
      151 GETTABLEKS                       R17 R0 K11 ["Src"]
      153 GETTABLEKS                       R17 R17 K20 ["Util"]
      155 GETTABLEKS                       R17 R17 K22 ["Mocks"]
      157 GETTABLEKS                       R17 R17 K27 ["MockPluginPolicyService"]
      159 CALL                             R16 1 1
      160 MOVE                             R15 R16
      161 GETTABLEKS                       R16 R2 K28 ["PureComponent"]
      163 LOADK                            R18 K29 ["MockManagement"]
      164 NAMECALL                         R16 R16 K30 ["extend"]
      166 CALL                             R16 2 1
      167 DUPCLOSURE                       R17 K31 [PROTO_0]
      168 DUPCLOSURE                       R18 K32 [PROTO_5]
      169 CAPTURE                          VAL R1
      170 NEWCLOSURE                       R19 P2
      171 CAPTURE                          VAL R3
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R4
      174 CAPTURE                          VAL R18
      175 CAPTURE                          VAL R1
      176 CAPTURE                          REF R12
      177 CAPTURE                          REF R11
      178 CAPTURE                          REF R13
      179 CAPTURE                          REF R14
      180 CAPTURE                          REF R15
      181 CAPTURE                          REF R10
      182 SETTABLEKS                       R19 R16 K33 ["init"]
      184 DUPCLOSURE                       R19 K34 [PROTO_7]
      185 CAPTURE                          VAL R6
      186 CAPTURE                          VAL R7
      187 CAPTURE                          VAL R9
      188 CAPTURE                          VAL R8
      189 CAPTURE                          VAL R2
      190 SETTABLEKS                       R19 R16 K35 ["render"]
      192 CLOSEUPVALS                      R10
      193 RETURN                           R16 1
