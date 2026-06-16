PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 GETTABLEKS                       R1 R0 K0 ["MockStudioService"]
        7 GETTABLEKS                       R2 R0 K1 ["MockPluginManagementService"]
        9 GETTABLEKS                       R3 R0 K2 ["MockPermissionsService"]
       11 GETTABLEKS                       R4 R0 K3 ["MockMarketplaceService"]
       13 GETTABLEKS                       R5 R0 K4 ["MockPluginPolicyService"]
       15 MOVE                             R6 R1
       16 JUMPIF                           R6 ; [+4]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K5 ["new"]
       20 CALL                             R6 0 1
       21 MOVE                             R7 R2
       22 JUMPIF                           R7 ; [+4]
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R7 R7 K5 ["new"]
       26 CALL                             R7 0 1
       27 MOVE                             R8 R3
       28 JUMPIF                           R8 ; [+4]
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R8 R8 K5 ["new"]
       32 CALL                             R8 0 1
       33 MOVE                             R9 R4
       34 JUMPIF                           R9 ; [+4]
       35 GETUPVAL                         R9 3
       36 GETTABLEKS                       R9 R9 K5 ["new"]
       38 CALL                             R9 0 1
       39 MOVE                             R10 R5
       40 JUMPIF                           R10 ; [+4]
       41 GETUPVAL                         R10 4
       42 GETTABLEKS                       R10 R10 K5 ["new"]
       44 CALL                             R10 0 1
       45 GETUPVAL                         R11 5
       46 GETTABLEKS                       R11 R11 K5 ["new"]
       48 CALL                             R11 0 1
       49 JUMPIF                           R1 ; [+4]
       50 MOVE                             R14 R6
       51 NAMECALL                         R12 R11 K6 ["add"]
       53 CALL                             R12 2 0
       54 JUMPIF                           R2 ; [+4]
       55 MOVE                             R14 R7
       56 NAMECALL                         R12 R11 K6 ["add"]
       58 CALL                             R12 2 0
       59 JUMPIF                           R3 ; [+4]
       60 MOVE                             R14 R8
       61 NAMECALL                         R12 R11 K6 ["add"]
       63 CALL                             R12 2 0
       64 JUMPIF                           R4 ; [+4]
       65 MOVE                             R14 R9
       66 NAMECALL                         R12 R11 K6 ["add"]
       68 CALL                             R12 2 0
       69 JUMPIF                           R5 ; [+4]
       70 MOVE                             R14 R10
       71 NAMECALL                         R12 R11 K6 ["add"]
       73 CALL                             R12 2 0
       74 DUPTABLE                         R12 K13 [{"mockStudioService", "mockPluginManagementService", "mockPermissionsService", "mockMarketplaceService", "mockPluginPolicyService", "_cleanup"}]
       75 SETTABLEKS                       R6 R12 K7 ["mockStudioService"]
       77 SETTABLEKS                       R7 R12 K8 ["mockPluginManagementService"]
       79 SETTABLEKS                       R8 R12 K9 ["mockPermissionsService"]
       81 SETTABLEKS                       R9 R12 K10 ["mockMarketplaceService"]
       83 SETTABLEKS                       R10 R12 K11 ["mockPluginPolicyService"]
       85 SETTABLEKS                       R11 R12 K12 ["_cleanup"]
       87 GETUPVAL                         R15 6
       88 FASTCALL2                        SETMETATABLE R12 R15 ; [+4]
       90 MOVE                             R14 R12
       91 GETIMPORT                        R13 K15 [setmetatable]
       93 CALL                             R13 2 1
       94 RETURN                           R13 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_cleanup"]
        2 NAMECALL                         R1 R1 K1 ["Destroy"]
        4 CALL                             R1 1 0
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K2 ["mockStudioService"]
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K3 ["mockPluginManagementService"]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K4 ["mockPermissionsService"]
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K5 ["mockMarketplaceService"]
       17 LOADNIL                          R1
       18 SETTABLEKS                       R1 R0 K6 ["mockPluginPolicyService"]
       20 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Tests"]
       17 GETTABLEKS                       R2 R2 K7 ["Mocks"]
       19 GETTABLEKS                       R2 R2 K8 ["MockPluginManagementService"]
       21 CALL                             R1 1 1
       22 GETIMPORT                        R2 K4 [require]
       24 GETTABLEKS                       R3 R0 K5 ["Src"]
       26 GETTABLEKS                       R3 R3 K6 ["Tests"]
       28 GETTABLEKS                       R3 R3 K7 ["Mocks"]
       30 GETTABLEKS                       R3 R3 K9 ["MockStudioService"]
       32 CALL                             R2 1 1
       33 GETIMPORT                        R3 K4 [require]
       35 GETTABLEKS                       R4 R0 K5 ["Src"]
       37 GETTABLEKS                       R4 R4 K6 ["Tests"]
       39 GETTABLEKS                       R4 R4 K7 ["Mocks"]
       41 GETTABLEKS                       R4 R4 K10 ["MockPermissionsService"]
       43 CALL                             R3 1 1
       44 GETIMPORT                        R4 K4 [require]
       46 GETTABLEKS                       R5 R0 K5 ["Src"]
       48 GETTABLEKS                       R5 R5 K6 ["Tests"]
       50 GETTABLEKS                       R5 R5 K7 ["Mocks"]
       52 GETTABLEKS                       R5 R5 K11 ["MockMarketplaceService"]
       54 CALL                             R4 1 1
       55 GETIMPORT                        R5 K4 [require]
       57 GETTABLEKS                       R6 R0 K5 ["Src"]
       59 GETTABLEKS                       R6 R6 K6 ["Tests"]
       61 GETTABLEKS                       R6 R6 K7 ["Mocks"]
       63 GETTABLEKS                       R6 R6 K12 ["MockPluginPolicyService"]
       65 CALL                             R5 1 1
       66 GETIMPORT                        R6 K4 [require]
       68 GETTABLEKS                       R7 R0 K5 ["Src"]
       70 GETTABLEKS                       R7 R7 K13 ["Util"]
       72 GETTABLEKS                       R7 R7 K14 ["CleanupHelper"]
       74 CALL                             R6 1 1
       75 NEWTABLE                         R7 4 0
       77 SETTABLEKS                       R7 R7 K15 ["__index"]
       79 DUPCLOSURE                       R8 K16 [PROTO_0]
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R7
       87 SETTABLEKS                       R8 R7 K17 ["new"]
       89 DUPCLOSURE                       R8 K18 [PROTO_1]
       90 SETTABLEKS                       R8 R7 K19 ["Destroy"]
       92 RETURN                           R7 1
