PROTO_0:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["createGuestContext"]
        8 LOADNIL                          R2
        9 MOVE                             R3 R0
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R1 R1 K1 ["bridge"]
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["AssetInsertToolBridgeTypes"]
        9 CALL                             R0 1 1
       10 LOADNIL                          R1
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          REF R1
       13 NEWCLOSURE                       R3 P1
       14 CAPTURE                          REF R1
       15 DUPTABLE                         R4 K8 [{"set", "getBridge"}]
       16 SETTABLEKS                       R2 R4 K6 ["set"]
       18 SETTABLEKS                       R3 R4 K7 ["getBridge"]
       20 CLOSEUPVALS                      R1
       21 RETURN                           R4 1
