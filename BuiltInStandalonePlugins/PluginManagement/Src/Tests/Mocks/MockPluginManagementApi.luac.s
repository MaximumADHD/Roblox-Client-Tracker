PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 GETTABLEKS                       R2 R0 K1 ["mockStudioService"]
        5 GETTABLEKS                       R3 R0 K2 ["mockPluginManagementService"]
        7 GETTABLEKS                       R4 R0 K3 ["mockPermissionsService"]
        9 GETTABLEKS                       R5 R0 K4 ["mockMarketplaceService"]
       11 GETTABLEKS                       R6 R0 K5 ["mockPluginPolicyService"]
       13 CALL                             R1 5 1
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Util"]
       17 GETTABLEKS                       R2 R2 K7 ["PluginManagementApi"]
       19 CALL                             R1 1 1
       20 NEWTABLE                         R2 1 0
       22 DUPCLOSURE                       R3 K8 [PROTO_0]
       23 CAPTURE                          VAL R1
       24 SETTABLEKS                       R3 R2 K9 ["new"]
       26 RETURN                           R2 1
