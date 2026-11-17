PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetCollisionGeometryMemoryAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["SceneAnalysisService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R1 K5 [pcall]
       11 CALL                             R1 1 2
       12 JUMPIF                           R1 ; [+5]
       13 GETIMPORT                        R3 K7 [warn]
       15 LOADK                            R4 K8 ["SceneAnalysisService returned error:"]
       16 MOVE                             R5 R2
       17 CALL                             R3 2 0
       18 JUMPIFNOT                        R1 ; [+1]
       19 JUMPIF                           R2 ; [+6]
       20 DUPTABLE                         R3 K15 [{["Id"] = 0, ["Name"] = "Root", ["Size"] = 0, ["Children"]}]
       21 NEWTABLE                         R4 0 0
       23 SETTABLEKS                       R4 R3 K14 ["Children"]
       25 RETURN                           R3 1
       26 RETURN                           R2 1

PROTO_2:
        0 LOADK                            R4 K0 ["FetchCollisionGeometryMemory"]
        1 DUPCLOSURE                       R5 K1 [PROTO_1]
        2 NAMECALL                         R2 R1 K2 ["Bind"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_2]
        4 SETTABLEKS                       R1 R0 K1 ["Init"]
        6 RETURN                           R0 1
