PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["PlaceId"]
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_1:
        0 LOADN                            R0 -1
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R1 K1 [pcall]
        6 CALL                             R1 1 2
        7 JUMPIF                           R1 ; [+9]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["shouldDebugWarnings"]
       11 CALL                             R3 0 1
       12 JUMPIFNOT                        R3 ; [+4]
       13 GETIMPORT                        R3 K4 [warn]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 0
       17 CLOSEUPVALS                      R0
       18 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["WebView"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["DebugFlags"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_1]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
