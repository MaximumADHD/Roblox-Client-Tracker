PROTO_0:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R8 R6 K0 ["id"]
        7 MOVE                             R9 R1
        8 CALL                             R7 2 1
        9 JUMPIFNOT                        R7 ; [+3]
       10 GETTABLEKS                       R7 R6 K1 ["aggregatePropertyInfo"]
       12 RETURN                           R7 1
       13 FORGLOOP                         R2 2 ; [-10]
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_1:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETTABLEKS                       R8 R7 K0 ["aggregatePropertyInfo"]
        6 GETTABLEKS                       R8 R8 K1 ["type"]
        8 JUMPIFNOTEQ                      R8 R2 ; [+8]
       10 GETTABLEKS                       R8 R7 K2 ["id"]
       12 GETTABLEKS                       R8 R8 K3 ["name"]
       14 JUMPIFNOTEQ                      R8 R1 ; [+2]
       16 RETURN                           R7 1
       17 FORGLOOP                         R3 2 ; [-14]
       19 LOADNIL                          R3
       20 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["PropertyInteraction"]
       16 GETTABLEKS                       R3 R3 K8 ["samePropertyId"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 2 0
       21 DUPCLOSURE                       R4 K9 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R4 R3 K10 ["byId"]
       25 DUPCLOSURE                       R4 K11 [PROTO_1]
       26 SETTABLEKS                       R4 R3 K12 ["byNameAndType"]
       28 RETURN                           R3 1
