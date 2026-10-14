PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["guestEnumChanged"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["enum"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["createTracker"]
        2 GETUPVAL                         R2 0
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K0 ["guestEnumChanged"]
        7 GETTABLEKS                       R6 R4 K1 ["enum"]
        9 GETUPVAL                         R8 2
       10 GETTABLE                         R7 R8 R3
       11 GETTABLEKS                       R7 R7 K2 ["get"]
       13 CALL                             R7 0 -1
       14 CALL                             R5 -1 0
       15 FORGLOOP                         R0 2 ; [-12]
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETTABLEKS                       R5 R4 K0 ["destroy"]
        6 CALL                             R5 0 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R2 0 2
        2 DUPTABLE                         R3 K3 [{[1] = "CollisionGroup", ["createTracker"]}]
        3 GETUPVAL                         R4 0
        4 SETTABLEKS                       R4 R3 K2 ["createTracker"]
        6 DUPTABLE                         R4 K5 [{[1] = "MaterialVariant", ["createTracker"]}]
        7 GETUPVAL                         R5 1
        8 SETTABLEKS                       R5 R4 K2 ["createTracker"]
       10 SETLIST                          R2 R3 2 [1]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K6 ["List"]
       15 GETTABLEKS                       R3 R3 K7 ["map"]
       17 MOVE                             R4 R2
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R0
       21 CALL                             R3 2 1
       22 DUPTABLE                         R4 K10 [{"onInitialRequest", "destroy"}]
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R3
       27 SETTABLEKS                       R5 R4 K8 ["onInitialRequest"]
       29 NEWCLOSURE                       R5 P2
       30 CAPTURE                          VAL R3
       31 SETTABLEKS                       R5 R4 K9 ["destroy"]
       33 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["PropertyTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["RpcTypes"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETIMPORT                        R5 K1 [script]
       28 GETTABLEKS                       R5 R5 K10 ["createCollisionGroupsTracker"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETIMPORT                        R6 K1 [script]
       35 GETTABLEKS                       R6 R6 K11 ["createMaterialVariantsTracker"]
       37 CALL                             R5 1 1
       38 DUPCLOSURE                       R6 K12 [PROTO_4]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R1
       42 RETURN                           R6 1
