PROTO_0:
        0 DUPTABLE                         R4 K4 [{"id", "imageId", "approved", "isModerated"}]
        1 SETTABLEKS                       R0 R4 K0 ["id"]
        3 SETTABLEKS                       R0 R4 K1 ["imageId"]
        5 ORK                              R5 R1 K5 [False]
        6 SETTABLEKS                       R5 R4 K2 ["approved"]
        8 ORK                              R5 R3 K5 [False]
        9 SETTABLEKS                       R5 R4 K3 ["isModerated"]
       11 RETURN                           R4 1

PROTO_1:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["reviewStatus"]
        3 JUMPIFEQKNIL                     R2 ; [+12]
        5 LOADB                            R1 1
        6 GETTABLEKS                       R2 R0 K0 ["reviewStatus"]
        8 JUMPIFEQKS                       R2 K1 ["Finished"] ; [+7]
       10 GETTABLEKS                       R2 R0 K0 ["reviewStatus"]
       12 JUMPIFEQKS                       R2 K2 ["DoesNotRequire"] ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 GETTABLEKS                       R2 R0 K3 ["isModerated"]
       18 JUMPIFNOT                        R2 ; [+6]
       19 GETTABLEKS                       R3 R0 K0 ["reviewStatus"]
       21 JUMPIFNOTEQKS                    R3 K4 ["Pending"] ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 DUPTABLE                         R3 K8 [{"id", "imageId", "approved", "isModerated"}]
       26 GETTABLEKS                       R4 R0 K5 ["id"]
       28 SETTABLEKS                       R4 R3 K5 ["id"]
       30 GETTABLEKS                       R4 R0 K5 ["id"]
       32 SETTABLEKS                       R4 R3 K6 ["imageId"]
       34 SETTABLEKS                       R1 R3 K7 ["approved"]
       36 SETTABLEKS                       R2 R3 K3 ["isModerated"]
       38 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["from"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["fromDevelop"]
        9 RETURN                           R0 1
