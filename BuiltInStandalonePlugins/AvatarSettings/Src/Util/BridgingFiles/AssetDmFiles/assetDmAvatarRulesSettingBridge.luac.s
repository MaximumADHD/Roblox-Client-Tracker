PROTO_0:
        0 DUPTABLE                         R1 K2 [{"ruleInstance", "property"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["ruleInstance"]
        4 SETTABLEKS                       R0 R1 K1 ["property"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["avatarRules"]
        3 CALL                             R1 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R1
        6 GETUPVAL                         R3 1
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K3 [{"ruleInstance", "property"}]
        9 SETTABLEKS                       R1 R5 K1 ["ruleInstance"]
       11 LOADK                            R6 K4 ["AvatarType"]
       12 SETTABLEKS                       R6 R5 K2 ["property"]
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R6 R7 K5 ["avatarType"]
       17 CALL                             R3 3 0
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R6 R0 K6 ["Src"]
       11 GETTABLEKS                       R5 R6 K7 ["Util"]
       13 GETTABLEKS                       R4 R5 K8 ["BridgingFiles"]
       15 GETTABLEKS                       R3 R4 K9 ["AssetDmFiles"]
       17 GETTABLEKS                       R2 R3 K10 ["assetDmInvokeUtils"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R7 R0 K6 ["Src"]
       24 GETTABLEKS                       R6 R7 K7 ["Util"]
       26 GETTABLEKS                       R5 R6 K8 ["BridgingFiles"]
       28 GETTABLEKS                       R4 R5 K9 ["AssetDmFiles"]
       30 GETTABLEKS                       R3 R4 K11 ["assetDmTypes"]
       32 CALL                             R2 1 1
       33 GETIMPORT                        R3 K5 [require]
       35 GETTABLEKS                       R8 R0 K6 ["Src"]
       37 GETTABLEKS                       R7 R8 K7 ["Util"]
       39 GETTABLEKS                       R6 R7 K8 ["BridgingFiles"]
       41 GETTABLEKS                       R5 R6 K9 ["AssetDmFiles"]
       43 GETTABLEKS                       R4 R5 K12 ["assetDmUtils"]
       45 CALL                             R3 1 1
       46 GETIMPORT                        R4 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Src"]
       50 GETTABLEKS                       R6 R7 K7 ["Util"]
       52 GETTABLEKS                       R5 R6 K13 ["InvokeKeys"]
       54 CALL                             R4 1 1
       55 GETTABLEKS                       R5 R1 K14 ["createInvokes"]
       57 DUPCLOSURE                       R6 K15 [PROTO_1]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R4
       61 RETURN                           R6 1
