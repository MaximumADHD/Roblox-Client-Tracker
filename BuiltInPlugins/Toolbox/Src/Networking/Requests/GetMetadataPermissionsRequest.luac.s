PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R2 R1 K1 ["metadataPermissions"]
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETTABLEKS                       R2 R1 K1 ["metadataPermissions"]
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["shouldDebugWarnings"]
       12 CALL                             R2 0 1
       13 JUMPIFNOT                        R2 ; [+5]
       14 GETIMPORT                        R2 K4 [warn]
       16 LOADK                            R3 K5 ["Unexpected getMetadataPermissions response body:"]
       17 MOVE                             R4 R1
       18 CALL                             R2 2 0
       19 NEWTABLE                         R2 0 0
       21 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_2:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["getMetadataPermissions"]
        4 CALL                             R3 3 1
        5 DUPCLOSURE                       R5 K1 [PROTO_0]
        6 CAPTURE                          UPVAL U0
        7 DUPCLOSURE                       R6 K2 [PROTO_1]
        8 NAMECALL                         R3 R3 K3 ["andThen"]
       10 CALL                             R3 3 -1
       11 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["DebugFlags"]
       15 CALL                             R2 1 1
       16 DUPCLOSURE                       R3 K9 [PROTO_2]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
