PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["binding"]
        2 JUMPIFNOT                        R3 ; [+13]
        3 NEWTABLE                         R3 0 0
        5 GETTABLEKS                       R4 R1 K1 ["property"]
        7 SETTABLE                         R2 R3 R4
        8 MOVE                             R4 R0
        9 GETTABLEKS                       R5 R1 K0 ["binding"]
       11 GETTABLEKS                       R5 R5 K2 ["uuid"]
       13 MOVE                             R6 R3
       14 CALL                             R4 2 0
       15 RETURN                           R0 0
       16 DUPTABLE                         R3 K5 [{"name", "parentUuid"}]
       17 LOADK                            R5 K6 ["%*%*"]
       18 GETTABLEKS                       R7 R1 K7 ["action"]
       20 GETTABLEKS                       R7 R7 K3 ["name"]
       22 GETTABLEKS                       R8 R1 K8 ["schema"]
       24 NAMECALL                         R5 R5 K9 ["format"]
       26 CALL                             R5 3 1
       27 MOVE                             R4 R5
       28 SETTABLEKS                       R4 R3 K3 ["name"]
       30 GETTABLEKS                       R4 R1 K7 ["action"]
       32 GETTABLEKS                       R4 R4 K2 ["uuid"]
       34 SETTABLEKS                       R4 R3 K4 ["parentUuid"]
       36 GETTABLEKS                       R4 R1 K1 ["property"]
       38 SETTABLE                         R2 R3 R4
       39 MOVE                             R4 R0
       40 LOADNIL                          R5
       41 MOVE                             R6 R3
       42 CALL                             R4 2 0
       43 GETTABLEKS                       R4 R1 K10 ["onCreated"]
       45 JUMPIFNOT                        R4 ; [+3]
       46 GETTABLEKS                       R4 R1 K10 ["onCreated"]
       48 CALL                             R4 0 0
       49 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
