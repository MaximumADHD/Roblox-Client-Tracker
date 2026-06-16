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
       11 GETTABLEKS                       R3 R0 K3 ["networkResponseMap"]
       13 JUMPIF                           R3 ; [+2]
       14 NEWTABLE                         R3 0 0
       16 GETTABLEKS                       R5 R0 K5 ["createMockPluginLoaderContext"]
       18 ORK                              R4 R5 K4 [False]
       19 GETTABLEKS                       R5 R0 K6 ["overrideServices"]
       21 JUMPIF                           R5 ; [+2]
       22 NEWTABLE                         R5 0 0
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K7 ["new"]
       27 CALL                             R6 0 1
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R7 R7 K7 ["new"]
       31 MOVE                             R8 R1
       32 CALL                             R7 1 1
       33 GETUPVAL                         R8 2
       34 GETTABLEKS                       R8 R8 K8 ["Store"]
       36 GETTABLEKS                       R8 R8 K7 ["new"]
       38 GETUPVAL                         R9 3
       39 MOVE                             R10 R2
       40 NEWTABLE                         R11 0 1
       42 GETUPVAL                         R12 2
       43 GETTABLEKS                       R12 R12 K9 ["thunkMiddleware"]
       45 SETLIST                          R11 R12 1 [1]
       47 CALL                             R8 3 1
       48 GETIMPORT                        R9 K11 [require]
       50 GETUPVAL                         R10 4
       51 GETTABLEKS                       R10 R10 K12 ["Src"]
       53 GETTABLEKS                       R10 R10 K13 ["Resources"]
       55 GETTABLEKS                       R10 R10 K14 ["makeTheme"]
       57 CALL                             R9 1 1
       58 GETUPVAL                         R10 5
       59 GETTABLEKS                       R10 R10 K15 ["Localization"]
       61 GETTABLEKS                       R10 R10 K16 ["mock"]
       63 CALL                             R10 0 1
       64 GETUPVAL                         R11 6
       65 GETTABLEKS                       R11 R11 K17 ["API"]
       67 GETTABLEKS                       R11 R11 K16 ["mock"]
       69 MOVE                             R12 R3
       70 CALL                             R11 1 1
       71 GETUPVAL                         R12 7
       72 GETTABLEKS                       R12 R12 K7 ["new"]
       74 CALL                             R12 0 1
       75 GETUPVAL                         R13 8
       76 MOVE                             R14 R12
       77 CALL                             R13 1 1
       78 MOVE                             R16 R7
       79 NAMECALL                         R14 R6 K18 ["add"]
       81 CALL                             R14 2 0
       82 MOVE                             R16 R9
       83 NAMECALL                         R14 R6 K18 ["add"]
       85 CALL                             R14 2 0
       86 MOVE                             R16 R10
       87 NAMECALL                         R14 R6 K18 ["add"]
       89 CALL                             R14 2 0
       90 MOVE                             R16 R12
       91 NAMECALL                         R14 R6 K18 ["add"]
       93 CALL                             R14 2 0
       94 MOVE                             R16 R13
       95 NAMECALL                         R14 R6 K18 ["add"]
       97 CALL                             R14 2 0
       98 GETUPVAL                         R14 9
       99 GETTABLEKS                       R14 R14 K7 ["new"]
      101 MOVE                             R15 R5
      102 CALL                             R14 1 1
      103 GETUPVAL                         R15 10
      104 GETTABLEKS                       R15 R15 K7 ["new"]
      106 MOVE                             R16 R14
      107 CALL                             R15 1 1
      108 MOVE                             R18 R14
      109 NAMECALL                         R16 R6 K18 ["add"]
      111 CALL                             R16 2 0
      112 MOVE                             R18 R15
      113 NAMECALL                         R16 R6 K18 ["add"]
      115 CALL                             R16 2 0
      116 LOADNIL                          R16
      117 JUMPIFNOT                        R4 ; [+10]
      118 GETUPVAL                         R17 11
      119 GETTABLEKS                       R17 R17 K7 ["new"]
      121 MOVE                             R18 R7
      122 CALL                             R17 1 1
      123 MOVE                             R16 R17
      124 MOVE                             R19 R16
      125 NAMECALL                         R17 R6 K18 ["add"]
      127 CALL                             R17 2 0
      128 DUPTABLE                         R17 K34 [{"mockPlugin", "store", "theme", "localization", "api", "analytics", "mockStudioService", "mockPluginManagementService", "mockPermissionsService", "mockMarketplaceService", "mockPluginPolicyService", "mockServicesWrapper", "mockPluginManagementApi", "mockPluginLoaderContext", "Destroy"}]
      129 SETTABLEKS                       R7 R17 K19 ["mockPlugin"]
      131 SETTABLEKS                       R8 R17 K20 ["store"]
      133 SETTABLEKS                       R9 R17 K21 ["theme"]
      135 SETTABLEKS                       R10 R17 K22 ["localization"]
      137 SETTABLEKS                       R11 R17 K23 ["api"]
      139 SETTABLEKS                       R13 R17 K24 ["analytics"]
      141 GETTABLEKS                       R18 R14 K25 ["mockStudioService"]
      143 SETTABLEKS                       R18 R17 K25 ["mockStudioService"]
      145 GETTABLEKS                       R18 R14 K26 ["mockPluginManagementService"]
      147 SETTABLEKS                       R18 R17 K26 ["mockPluginManagementService"]
      149 GETTABLEKS                       R18 R14 K27 ["mockPermissionsService"]
      151 SETTABLEKS                       R18 R17 K27 ["mockPermissionsService"]
      153 GETTABLEKS                       R18 R14 K28 ["mockMarketplaceService"]
      155 SETTABLEKS                       R18 R17 K28 ["mockMarketplaceService"]
      157 GETTABLEKS                       R18 R14 K29 ["mockPluginPolicyService"]
      159 SETTABLEKS                       R18 R17 K29 ["mockPluginPolicyService"]
      161 SETTABLEKS                       R14 R17 K30 ["mockServicesWrapper"]
      163 SETTABLEKS                       R15 R17 K31 ["mockPluginManagementApi"]
      165 SETTABLEKS                       R16 R17 K32 ["mockPluginLoaderContext"]
      167 NEWCLOSURE                       R18 P0
      168 CAPTURE                          VAL R7
      169 CAPTURE                          VAL R6
      170 SETTABLEKS                       R18 R17 K33 ["Destroy"]
      172 RETURN                           R17 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Rodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["Http"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K5 ["Packages"]
       36 GETTABLEKS                       R5 R5 K9 ["Framework"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K10 ["ContextServices"]
       41 GETIMPORT                        R6 K4 [require]
       43 GETTABLEKS                       R7 R0 K11 ["Src"]
       45 GETTABLEKS                       R7 R7 K12 ["Reducers"]
       47 GETTABLEKS                       R7 R7 K13 ["MainReducer"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K4 [require]
       52 GETTABLEKS                       R8 R0 K11 ["Src"]
       54 GETTABLEKS                       R8 R8 K14 ["Tests"]
       56 GETTABLEKS                       R8 R8 K15 ["Mocks"]
       58 GETTABLEKS                       R8 R8 K16 ["MockAnalyticsService"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K4 [require]
       63 GETTABLEKS                       R9 R0 K11 ["Src"]
       65 GETTABLEKS                       R9 R9 K14 ["Tests"]
       67 GETTABLEKS                       R9 R9 K15 ["Mocks"]
       69 GETTABLEKS                       R9 R9 K17 ["MockPlugin"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K4 [require]
       74 GETTABLEKS                       R10 R0 K11 ["Src"]
       76 GETTABLEKS                       R10 R10 K14 ["Tests"]
       78 GETTABLEKS                       R10 R10 K15 ["Mocks"]
       80 GETTABLEKS                       R10 R10 K18 ["MockPluginManagementApi"]
       82 CALL                             R9 1 1
       83 GETIMPORT                        R10 K4 [require]
       85 GETTABLEKS                       R11 R0 K11 ["Src"]
       87 GETTABLEKS                       R11 R11 K14 ["Tests"]
       89 GETTABLEKS                       R11 R11 K15 ["Mocks"]
       91 GETTABLEKS                       R11 R11 K19 ["MockServicesWrapper"]
       93 CALL                             R10 1 1
       94 GETIMPORT                        R11 K4 [require]
       96 GETTABLEKS                       R12 R0 K11 ["Src"]
       98 GETTABLEKS                       R12 R12 K14 ["Tests"]
      100 GETTABLEKS                       R12 R12 K15 ["Mocks"]
      102 GETTABLEKS                       R12 R12 K20 ["MockPluginLoaderContext"]
      104 CALL                             R11 1 1
      105 GETIMPORT                        R12 K4 [require]
      107 GETTABLEKS                       R13 R0 K11 ["Src"]
      109 GETTABLEKS                       R13 R13 K21 ["Util"]
      111 GETTABLEKS                       R13 R13 K22 ["CleanupHelper"]
      113 CALL                             R12 1 1
      114 GETIMPORT                        R13 K4 [require]
      116 GETTABLEKS                       R14 R0 K11 ["Src"]
      118 GETTABLEKS                       R14 R14 K21 ["Util"]
      120 GETTABLEKS                       R14 R14 K23 ["getAnalyticsContextItem"]
      122 CALL                             R13 1 1
      123 DUPCLOSURE                       R14 K24 [PROTO_1]
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R0
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R11
      136 RETURN                           R14 1
