PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 SETTABLEKS                       R0 R1 K0 ["__networking"]
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K2 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["apis"]
        3 LOADK                            R6 K2 ["/likely-collaborator-service/v1/get-likely-collaborators"]
        4 DUPTABLE                         R7 K4 [{"Params"}]
        5 DUPTABLE                         R8 K6 [{"userId"}]
        6 SETTABLEKS                       R1 R8 K5 ["userId"]
        8 SETTABLEKS                       R8 R7 K3 ["Params"]
       10 NAMECALL                         R3 R2 K7 ["get"]
       12 CALL                             R3 4 -1
       13 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["getLikelyCollaboratorsV1GET"]
        4 CALL                             R0 2 1
        5 NAMECALL                         R0 R0 K1 ["await"]
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 2
        6 JUMPIFNOT                        R2 ; [+9]
        7 JUMPIFNOT                        R3 ; [+8]
        8 GETTABLEKS                       R4 R3 K2 ["responseBody"]
       10 JUMPIFNOT                        R4 ; [+5]
       11 GETTABLEKS                       R5 R3 K2 ["responseBody"]
       13 GETTABLEKS                       R4 R5 K3 ["likelyCollaborators"]
       15 JUMPIF                           R4 ; [+3]
       16 NEWTABLE                         R4 0 0
       18 RETURN                           R4 1
       19 GETTABLEKS                       R5 R3 K2 ["responseBody"]
       21 GETTABLEKS                       R4 R5 K3 ["likelyCollaborators"]
       23 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ManageCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["IsLikelyCollaboratorPrefetchEnabled"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 CALL                             R2 0 1
       18 JUMPIFNOT                        R2 ; [+15]
       19 NEWTABLE                         R2 4 0
       21 SETTABLEKS                       R2 R2 K9 ["__index"]
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R3 R2 K11 ["new"]
       27 DUPCLOSURE                       R3 K12 [PROTO_1]
       28 SETTABLEKS                       R3 R2 K13 ["getLikelyCollaboratorsV1GET"]
       30 DUPCLOSURE                       R3 K14 [PROTO_3]
       31 SETTABLEKS                       R3 R2 K15 ["getLikelyCollaborators"]
       33 RETURN                           R2 1
       34 RETURN                           R0 0
