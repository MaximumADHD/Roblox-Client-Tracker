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
       11 GETTABLEKS                       R4 R0 K3 ["onNetworkRequest"]
       13 ORK                              R3 R4 K0 []
       14 GETTABLEKS                       R5 R0 K5 ["createMockPluginLoaderContext"]
       16 ORK                              R4 R5 K4 [False]
       17 GETTABLEKS                       R5 R0 K6 ["overrideServices"]
       19 JUMPIF                           R5 ; [+2]
       20 NEWTABLE                         R5 0 0
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K7 ["new"]
       25 CALL                             R6 0 1
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R7 R7 K7 ["new"]
       29 MOVE                             R8 R1
       30 CALL                             R7 1 1
       31 GETUPVAL                         R8 2
       32 GETTABLEKS                       R8 R8 K8 ["Store"]
       34 GETTABLEKS                       R8 R8 K7 ["new"]
       36 GETUPVAL                         R9 3
       37 MOVE                             R10 R2
       38 NEWTABLE                         R11 0 1
       40 GETUPVAL                         R12 2
       41 GETTABLEKS                       R12 R12 K9 ["thunkMiddleware"]
       43 SETLIST                          R11 R12 1 [1]
       45 CALL                             R8 3 1
       46 GETIMPORT                        R9 K11 [require]
       48 GETUPVAL                         R10 4
       49 GETTABLEKS                       R10 R10 K12 ["Src"]
       51 GETTABLEKS                       R10 R10 K13 ["Resources"]
       53 GETTABLEKS                       R10 R10 K14 ["makeTheme"]
       55 CALL                             R9 1 1
       56 GETUPVAL                         R10 5
       57 GETTABLEKS                       R10 R10 K15 ["Localization"]
       59 GETTABLEKS                       R10 R10 K16 ["mock"]
       61 CALL                             R10 0 1
       62 GETUPVAL                         R11 6
       63 GETTABLEKS                       R11 R11 K17 ["Http"]
       65 GETTABLEKS                       R11 R11 K18 ["Networking"]
       67 GETTABLEKS                       R11 R11 K16 ["mock"]
       69 DUPTABLE                         R12 K22 [{["loggingLevel"] = 0, ["onRequest"]}]
       70 SETTABLEKS                       R3 R12 K21 ["onRequest"]
       72 CALL                             R11 1 1
       73 GETUPVAL                         R12 5
       74 GETTABLEKS                       R12 R12 K23 ["API"]
       76 GETTABLEKS                       R12 R12 K7 ["new"]
       78 DUPTABLE                         R13 K25 [{"networking"}]
       79 SETTABLEKS                       R11 R13 K24 ["networking"]
       81 CALL                             R12 1 1
       82 GETUPVAL                         R13 7
       83 GETTABLEKS                       R13 R13 K7 ["new"]
       85 CALL                             R13 0 1
       86 GETUPVAL                         R14 8
       87 MOVE                             R15 R13
       88 CALL                             R14 1 1
       89 MOVE                             R17 R7
       90 NAMECALL                         R15 R6 K26 ["add"]
       92 CALL                             R15 2 0
       93 MOVE                             R17 R9
       94 NAMECALL                         R15 R6 K26 ["add"]
       96 CALL                             R15 2 0
       97 MOVE                             R17 R10
       98 NAMECALL                         R15 R6 K26 ["add"]
      100 CALL                             R15 2 0
      101 MOVE                             R17 R13
      102 NAMECALL                         R15 R6 K26 ["add"]
      104 CALL                             R15 2 0
      105 MOVE                             R17 R14
      106 NAMECALL                         R15 R6 K26 ["add"]
      108 CALL                             R15 2 0
      109 GETUPVAL                         R15 9
      110 GETTABLEKS                       R15 R15 K7 ["new"]
      112 MOVE                             R16 R5
      113 CALL                             R15 1 1
      114 GETUPVAL                         R16 10
      115 GETTABLEKS                       R16 R16 K7 ["new"]
      117 MOVE                             R17 R15
      118 CALL                             R16 1 1
      119 MOVE                             R19 R15
      120 NAMECALL                         R17 R6 K26 ["add"]
      122 CALL                             R17 2 0
      123 MOVE                             R19 R16
      124 NAMECALL                         R17 R6 K26 ["add"]
      126 CALL                             R17 2 0
      127 LOADNIL                          R17
      128 JUMPIFNOT                        R4 ; [+10]
      129 GETUPVAL                         R18 11
      130 GETTABLEKS                       R18 R18 K7 ["new"]
      132 MOVE                             R19 R7
      133 CALL                             R18 1 1
      134 MOVE                             R17 R18
      135 MOVE                             R20 R17
      136 NAMECALL                         R18 R6 K26 ["add"]
      138 CALL                             R18 2 0
      139 DUPTABLE                         R18 K43 [{"mockPlugin", "store", "theme", "localization", "mockNetworking", "api", "analytics", "mockStudioService", "mockPluginManagementService", "mockPermissionsService", "mockMarketplaceService", "mockPluginPolicyService", "mockServicesWrapper", "mockPluginManagementApi", "mockPluginLoaderContext", "Destroy"}]
      140 SETTABLEKS                       R7 R18 K27 ["mockPlugin"]
      142 SETTABLEKS                       R8 R18 K28 ["store"]
      144 SETTABLEKS                       R9 R18 K29 ["theme"]
      146 SETTABLEKS                       R10 R18 K30 ["localization"]
      148 SETTABLEKS                       R11 R18 K31 ["mockNetworking"]
      150 SETTABLEKS                       R12 R18 K32 ["api"]
      152 SETTABLEKS                       R14 R18 K33 ["analytics"]
      154 GETTABLEKS                       R19 R15 K34 ["mockStudioService"]
      156 SETTABLEKS                       R19 R18 K34 ["mockStudioService"]
      158 GETTABLEKS                       R19 R15 K35 ["mockPluginManagementService"]
      160 SETTABLEKS                       R19 R18 K35 ["mockPluginManagementService"]
      162 GETTABLEKS                       R19 R15 K36 ["mockPermissionsService"]
      164 SETTABLEKS                       R19 R18 K36 ["mockPermissionsService"]
      166 GETTABLEKS                       R19 R15 K37 ["mockMarketplaceService"]
      168 SETTABLEKS                       R19 R18 K37 ["mockMarketplaceService"]
      170 GETTABLEKS                       R19 R15 K38 ["mockPluginPolicyService"]
      172 SETTABLEKS                       R19 R18 K38 ["mockPluginPolicyService"]
      174 SETTABLEKS                       R15 R18 K39 ["mockServicesWrapper"]
      176 SETTABLEKS                       R16 R18 K40 ["mockPluginManagementApi"]
      178 SETTABLEKS                       R17 R18 K41 ["mockPluginLoaderContext"]
      180 NEWCLOSURE                       R19 P0
      181 CAPTURE                          VAL R7
      182 CAPTURE                          VAL R6
      183 SETTABLEKS                       R19 R18 K42 ["Destroy"]
      185 RETURN                           R18 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R0 K9 ["Src"]
       31 GETTABLEKS                       R5 R5 K10 ["Reducers"]
       33 GETTABLEKS                       R5 R5 K11 ["MainReducer"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K4 [require]
       38 GETTABLEKS                       R6 R0 K9 ["Src"]
       40 GETTABLEKS                       R6 R6 K12 ["Tests"]
       42 GETTABLEKS                       R6 R6 K13 ["Mocks"]
       44 GETTABLEKS                       R6 R6 K14 ["MockAnalyticsService"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K4 [require]
       49 GETTABLEKS                       R7 R0 K9 ["Src"]
       51 GETTABLEKS                       R7 R7 K12 ["Tests"]
       53 GETTABLEKS                       R7 R7 K13 ["Mocks"]
       55 GETTABLEKS                       R7 R7 K15 ["MockPlugin"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K4 [require]
       60 GETTABLEKS                       R8 R0 K9 ["Src"]
       62 GETTABLEKS                       R8 R8 K12 ["Tests"]
       64 GETTABLEKS                       R8 R8 K13 ["Mocks"]
       66 GETTABLEKS                       R8 R8 K16 ["MockPluginManagementApi"]
       68 CALL                             R7 1 1
       69 GETIMPORT                        R8 K4 [require]
       71 GETTABLEKS                       R9 R0 K9 ["Src"]
       73 GETTABLEKS                       R9 R9 K12 ["Tests"]
       75 GETTABLEKS                       R9 R9 K13 ["Mocks"]
       77 GETTABLEKS                       R9 R9 K17 ["MockServicesWrapper"]
       79 CALL                             R8 1 1
       80 GETIMPORT                        R9 K4 [require]
       82 GETTABLEKS                       R10 R0 K9 ["Src"]
       84 GETTABLEKS                       R10 R10 K12 ["Tests"]
       86 GETTABLEKS                       R10 R10 K13 ["Mocks"]
       88 GETTABLEKS                       R10 R10 K18 ["MockPluginLoaderContext"]
       90 CALL                             R9 1 1
       91 GETIMPORT                        R10 K4 [require]
       93 GETTABLEKS                       R11 R0 K9 ["Src"]
       95 GETTABLEKS                       R11 R11 K19 ["Util"]
       97 GETTABLEKS                       R11 R11 K20 ["CleanupHelper"]
       99 CALL                             R10 1 1
      100 GETIMPORT                        R11 K4 [require]
      102 GETTABLEKS                       R12 R0 K9 ["Src"]
      104 GETTABLEKS                       R12 R12 K19 ["Util"]
      106 GETTABLEKS                       R12 R12 K21 ["getAnalyticsContextItem"]
      108 CALL                             R11 1 1
      109 DUPCLOSURE                       R12 K22 [PROTO_1]
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R0
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R9
      122 RETURN                           R12 1
