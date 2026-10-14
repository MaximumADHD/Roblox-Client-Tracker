PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["CPC_ID"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["editInstanceEvent"]
       10 GETTABLEKS                       R5 R0 K3 ["ClassName"]
       12 CALL                             R4 1 1
       13 MOVE                             R5 R0
       14 NAMECALL                         R2 R1 K4 ["Fire"]
       16 CALL                             R2 3 0
       17 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["SharedPluginConstants"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["Util"]
       23 GETTABLEKS                       R3 R3 K10 ["CrossPluginCommunication"]
       25 GETTABLEKS                       R4 R2 K11 ["CONTENT_EDIT"]
       27 DUPCLOSURE                       R5 K12 [PROTO_0]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R4
       30 RETURN                           R5 1
