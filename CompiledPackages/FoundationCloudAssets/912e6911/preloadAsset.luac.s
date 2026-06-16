PROTO_0:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["PreloadAsync"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 1
       10 NAMECALL                         R0 R0 K1 ["Destroy"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["ImageLabel"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 0
        5 GETTABLE                         R2 R3 R0
        6 GETTABLEKS                       R2 R2 K4 ["assetId"]
        8 SETTABLEKS                       R2 R1 K5 ["Image"]
       10 GETIMPORT                        R2 K8 [task.spawn]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Generated"]
        9 GETTABLEKS                       R2 R2 K6 ["ConsolidatedAssets"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K8 [game]
       14 LOADK                            R4 K9 ["ContentProvider"]
       15 NAMECALL                         R2 R2 K10 ["GetService"]
       17 CALL                             R2 2 1
       18 DUPCLOSURE                       R3 K11 [PROTO_1]
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 RETURN                           R3 1
