PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Unloading"]
        3 NAMECALL                         R1 R1 K1 ["Fire"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 NAMECALL                         R1 R1 K2 ["Destroy"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 GETTABLEKS                       R2 R0 K1 ["FocusedDataModelSession"]
        7 ORK                              R1 R2 K0 []
        8 GETTABLEKS                       R3 R0 K2 ["initialStoreState"]
       10 ORK                              R2 R3 K0 []
       11 GETUPVAL                         R4 0
       12 CALL                             R4 0 1
       13 JUMPIFNOT                        R4 ; [+2]
       14 LOADNIL                          R3
       15 JUMP                             ; [+5]
       16 GETTABLEKS                       R3 R0 K3 ["networkResponseMap"]
       18 JUMPIF                           R3 ; [+2]
       19 NEWTABLE                         R3 0 0
       21 GETUPVAL                         R5 0
       22 CALL                             R5 0 1
       23 JUMPIFNOT                        R5 ; [+4]
       24 GETTABLEKS                       R5 R0 K4 ["onNetworkRequest"]
       26 ORK                              R4 R5 K0 []
       27 JUMP                             ; [+1]
       28 LOADNIL                          R4
       29 GETTABLEKS                       R6 R0 K6 ["createMockPluginLoaderContext"]
       31 ORK                              R5 R6 K5 [False]
       32 GETTABLEKS                       R6 R0 K7 ["overrideServices"]
       34 JUMPIF                           R6 ; [+2]
       35 NEWTABLE                         R6 0 0
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R7 R7 K8 ["new"]
       40 CALL                             R7 0 1
       41 GETUPVAL                         R8 2
       42 GETTABLEKS                       R8 R8 K8 ["new"]
       44 MOVE                             R9 R1
       45 CALL                             R8 1 1
       46 GETUPVAL                         R9 3
       47 GETTABLEKS                       R9 R9 K9 ["Store"]
       49 GETTABLEKS                       R9 R9 K8 ["new"]
       51 GETUPVAL                         R10 4
       52 MOVE                             R11 R2
       53 NEWTABLE                         R12 0 1
       55 GETUPVAL                         R13 3
       56 GETTABLEKS                       R13 R13 K10 ["thunkMiddleware"]
       58 SETLIST                          R12 R13 1 [1]
       60 CALL                             R9 3 1
       61 GETIMPORT                        R10 K12 [require]
       63 GETUPVAL                         R11 5
       64 GETTABLEKS                       R11 R11 K13 ["Src"]
       66 GETTABLEKS                       R11 R11 K14 ["Resources"]
       68 GETTABLEKS                       R11 R11 K15 ["makeTheme"]
       70 CALL                             R10 1 1
       71 GETUPVAL                         R11 6
       72 GETTABLEKS                       R11 R11 K16 ["Localization"]
       74 GETTABLEKS                       R11 R11 K17 ["mock"]
       76 CALL                             R11 0 1
       77 LOADNIL                          R12
       78 LOADNIL                          R13
       79 GETUPVAL                         R14 0
       80 CALL                             R14 0 1
       81 JUMPIFNOT                        R14 ; [+23]
       82 GETUPVAL                         R14 7
       83 GETTABLEKS                       R14 R14 K18 ["Http"]
       85 GETTABLEKS                       R14 R14 K19 ["Networking"]
       87 GETTABLEKS                       R14 R14 K17 ["mock"]
       89 DUPTABLE                         R15 K23 [{["loggingLevel"] = 0, ["onRequest"]}]
       90 SETTABLEKS                       R4 R15 K22 ["onRequest"]
       92 CALL                             R14 1 1
       93 MOVE                             R12 R14
       94 GETUPVAL                         R14 6
       95 GETTABLEKS                       R14 R14 K24 ["API"]
       97 GETTABLEKS                       R14 R14 K8 ["new"]
       99 DUPTABLE                         R15 K26 [{"networking"}]
      100 SETTABLEKS                       R12 R15 K25 ["networking"]
      102 CALL                             R14 1 1
      103 MOVE                             R13 R14
      104 JUMP                             ; [+9]
      105 LOADNIL                          R12
      106 GETUPVAL                         R14 8
      107 GETTABLEKS                       R14 R14 K24 ["API"]
      109 GETTABLEKS                       R14 R14 K17 ["mock"]
      111 MOVE                             R15 R3
      112 CALL                             R14 1 1
      113 MOVE                             R13 R14
      114 GETUPVAL                         R14 9
      115 GETTABLEKS                       R14 R14 K8 ["new"]
      117 CALL                             R14 0 1
      118 GETUPVAL                         R15 10
      119 MOVE                             R16 R14
      120 CALL                             R15 1 1
      121 MOVE                             R18 R8
      122 NAMECALL                         R16 R7 K27 ["add"]
      124 CALL                             R16 2 0
      125 MOVE                             R18 R10
      126 NAMECALL                         R16 R7 K27 ["add"]
      128 CALL                             R16 2 0
      129 MOVE                             R18 R11
      130 NAMECALL                         R16 R7 K27 ["add"]
      132 CALL                             R16 2 0
      133 MOVE                             R18 R14
      134 NAMECALL                         R16 R7 K27 ["add"]
      136 CALL                             R16 2 0
      137 MOVE                             R18 R15
      138 NAMECALL                         R16 R7 K27 ["add"]
      140 CALL                             R16 2 0
      141 GETUPVAL                         R16 11
      142 GETTABLEKS                       R16 R16 K8 ["new"]
      144 MOVE                             R17 R6
      145 CALL                             R16 1 1
      146 GETUPVAL                         R17 12
      147 GETTABLEKS                       R17 R17 K8 ["new"]
      149 MOVE                             R18 R16
      150 CALL                             R17 1 1
      151 MOVE                             R20 R16
      152 NAMECALL                         R18 R7 K27 ["add"]
      154 CALL                             R18 2 0
      155 MOVE                             R20 R17
      156 NAMECALL                         R18 R7 K27 ["add"]
      158 CALL                             R18 2 0
      159 LOADNIL                          R18
      160 JUMPIFNOT                        R5 ; [+10]
      161 GETUPVAL                         R19 13
      162 GETTABLEKS                       R19 R19 K8 ["new"]
      164 MOVE                             R20 R8
      165 CALL                             R19 1 1
      166 MOVE                             R18 R19
      167 MOVE                             R21 R18
      168 NAMECALL                         R19 R7 K27 ["add"]
      170 CALL                             R19 2 0
      171 DUPTABLE                         R19 K44 [{"mockPlugin", "store", "theme", "localization", "mockNetworking", "api", "analytics", "mockStudioService", "mockPluginManagementService", "mockPermissionsService", "mockMarketplaceService", "mockPluginPolicyService", "mockServicesWrapper", "mockPluginManagementApi", "mockPluginLoaderContext", "Destroy"}]
      172 SETTABLEKS                       R8 R19 K28 ["mockPlugin"]
      174 SETTABLEKS                       R9 R19 K29 ["store"]
      176 SETTABLEKS                       R10 R19 K30 ["theme"]
      178 SETTABLEKS                       R11 R19 K31 ["localization"]
      180 SETTABLEKS                       R12 R19 K32 ["mockNetworking"]
      182 SETTABLEKS                       R13 R19 K33 ["api"]
      184 SETTABLEKS                       R15 R19 K34 ["analytics"]
      186 GETTABLEKS                       R20 R16 K35 ["mockStudioService"]
      188 SETTABLEKS                       R20 R19 K35 ["mockStudioService"]
      190 GETTABLEKS                       R20 R16 K36 ["mockPluginManagementService"]
      192 SETTABLEKS                       R20 R19 K36 ["mockPluginManagementService"]
      194 GETTABLEKS                       R20 R16 K37 ["mockPermissionsService"]
      196 SETTABLEKS                       R20 R19 K37 ["mockPermissionsService"]
      198 GETTABLEKS                       R20 R16 K38 ["mockMarketplaceService"]
      200 SETTABLEKS                       R20 R19 K38 ["mockMarketplaceService"]
      202 GETTABLEKS                       R20 R16 K39 ["mockPluginPolicyService"]
      204 SETTABLEKS                       R20 R19 K39 ["mockPluginPolicyService"]
      206 SETTABLEKS                       R16 R19 K40 ["mockServicesWrapper"]
      208 SETTABLEKS                       R17 R19 K41 ["mockPluginManagementApi"]
      210 SETTABLEKS                       R18 R19 K42 ["mockPluginLoaderContext"]
      212 NEWCLOSURE                       R20 P0
      213 CAPTURE                          VAL R8
      214 CAPTURE                          VAL R7
      215 SETTABLEKS                       R20 R19 K43 ["Destroy"]
      217 RETURN                           R19 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Flags"]
       17 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioPluginManagementUpgradeHttp"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K8 ["Packages"]
       24 GETTABLEKS                       R3 R3 K9 ["Rodux"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K8 ["Packages"]
       31 GETTABLEKS                       R4 R4 K10 ["Http"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K8 ["Packages"]
       38 GETTABLEKS                       R5 R5 K11 ["Framework"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R4 K12 ["ContextServices"]
       43 GETIMPORT                        R6 K4 [require]
       45 GETTABLEKS                       R7 R0 K5 ["Src"]
       47 GETTABLEKS                       R7 R7 K13 ["Reducers"]
       49 GETTABLEKS                       R7 R7 K14 ["MainReducer"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K4 [require]
       54 GETTABLEKS                       R8 R0 K5 ["Src"]
       56 GETTABLEKS                       R8 R8 K15 ["Tests"]
       58 GETTABLEKS                       R8 R8 K16 ["Mocks"]
       60 GETTABLEKS                       R8 R8 K17 ["MockAnalyticsService"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K4 [require]
       65 GETTABLEKS                       R9 R0 K5 ["Src"]
       67 GETTABLEKS                       R9 R9 K15 ["Tests"]
       69 GETTABLEKS                       R9 R9 K16 ["Mocks"]
       71 GETTABLEKS                       R9 R9 K18 ["MockPlugin"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K4 [require]
       76 GETTABLEKS                       R10 R0 K5 ["Src"]
       78 GETTABLEKS                       R10 R10 K15 ["Tests"]
       80 GETTABLEKS                       R10 R10 K16 ["Mocks"]
       82 GETTABLEKS                       R10 R10 K19 ["MockPluginManagementApi"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K4 [require]
       87 GETTABLEKS                       R11 R0 K5 ["Src"]
       89 GETTABLEKS                       R11 R11 K15 ["Tests"]
       91 GETTABLEKS                       R11 R11 K16 ["Mocks"]
       93 GETTABLEKS                       R11 R11 K20 ["MockServicesWrapper"]
       95 CALL                             R10 1 1
       96 GETIMPORT                        R11 K4 [require]
       98 GETTABLEKS                       R12 R0 K5 ["Src"]
      100 GETTABLEKS                       R12 R12 K15 ["Tests"]
      102 GETTABLEKS                       R12 R12 K16 ["Mocks"]
      104 GETTABLEKS                       R12 R12 K21 ["MockPluginLoaderContext"]
      106 CALL                             R11 1 1
      107 GETIMPORT                        R12 K4 [require]
      109 GETTABLEKS                       R13 R0 K5 ["Src"]
      111 GETTABLEKS                       R13 R13 K22 ["Util"]
      113 GETTABLEKS                       R13 R13 K23 ["CleanupHelper"]
      115 CALL                             R12 1 1
      116 GETIMPORT                        R13 K4 [require]
      118 GETTABLEKS                       R14 R0 K5 ["Src"]
      120 GETTABLEKS                       R14 R14 K22 ["Util"]
      122 GETTABLEKS                       R14 R14 K24 ["getAnalyticsContextItem"]
      124 CALL                             R13 1 1
      125 DUPCLOSURE                       R14 K25 [PROTO_1]
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R0
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R11
      140 RETURN                           R14 1
