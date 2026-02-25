PROTO_0:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_1:
        0 SETUPVAL                         R1 0
        1 DUPTABLE                         R2 K1 [{"Disconnect"}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["Disconnect"]
        5 RETURN                           R2 1

PROTO_2:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETUPVAL                         R0 0
        4 GETVARARGS                       R1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["fn"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          REF R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["fn"]
       10 NEWCLOSURE                       R3 P1
       11 CAPTURE                          REF R0
       12 CAPTURE                          VAL R1
       13 CALL                             R2 1 1
       14 DUPTABLE                         R3 K4 [{"Connect", "MockDisconnect", "MockFire"}]
       15 SETTABLEKS                       R2 R3 K1 ["Connect"]
       17 SETTABLEKS                       R1 R3 K2 ["MockDisconnect"]
       19 NEWCLOSURE                       R4 P2
       20 CAPTURE                          REF R0
       21 SETTABLEKS                       R4 R3 K3 ["MockFire"]
       23 CLOSEUPVALS                      R0
       24 RETURN                           R3 1

PROTO_4:
        0 NEWTABLE                         R0 4 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K0 ["ShowShareDialog"]
        6 GETUPVAL                         R1 0
        7 CALL                             R1 0 1
        8 SETTABLEKS                       R1 R0 K1 ["NewInaccessibleAsset"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K2 ["fn"]
       13 CALL                             R1 0 1
       14 SETTABLEKS                       R1 R0 K3 ["GetAssetMetadataAsync"]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R1 R2 K2 ["fn"]
       19 CALL                             R1 0 1
       20 SETTABLEKS                       R1 R0 K4 ["ShareAccessToInaccessibleAssetsAsync"]
       22 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetAccess"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Packages"]
       11 GETTABLEKS                       R3 R4 K7 ["Dev"]
       13 GETTABLEKS                       R2 R3 K8 ["JestGlobals"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["jest"]
       18 DUPCLOSURE                       R3 K10 [PROTO_3]
       19 CAPTURE                          VAL R2
       20 DUPCLOSURE                       R4 K11 [PROTO_4]
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R2
       23 RETURN                           R4 1
