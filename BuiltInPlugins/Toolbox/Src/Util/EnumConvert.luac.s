PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["valueToEnum"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIF                           R1 ; [+18]
        5 NEWTABLE                         R1 0 0
        7 GETIMPORT                        R2 K2 [pairs]
        9 NAMECALL                         R3 R0 K3 ["GetEnumItems"]
       11 CALL                             R3 1 -1
       12 CALL                             R2 -1 3
       13 FORGPREP_NEXT                    R2
       14 GETTABLEKS                       R7 R6 K4 ["Value"]
       16 SETTABLE                         R6 R1 R7
       17 FORGLOOP                         R2 2 ; [-4]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K0 ["valueToEnum"]
       22 SETTABLE                         R1 R2 R0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["valueToEnum"]
        6 GETTABLE                         R3 R4 R1
        7 GETTABLE                         R2 R3 R0
        8 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["convertValueToEnum"]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R3 K3 [Enum.AssetType]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 NEWTABLE                         R1 0 0
        5 SETTABLEKS                       R1 R0 K0 ["valueToEnum"]
        7 DUPCLOSURE                       R1 K1 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 MOVE                             R2 R1
       10 GETIMPORT                        R3 K4 [Enum.AssetType]
       12 CALL                             R2 1 0
       13 DUPCLOSURE                       R2 K5 [PROTO_1]
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R0 K6 ["convertValueToEnum"]
       18 DUPCLOSURE                       R2 K7 [PROTO_2]
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R0 K8 ["convertAssetTypeValueToEnum"]
       22 RETURN                           R0 1
