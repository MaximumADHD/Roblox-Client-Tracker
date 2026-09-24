PROTO_0:
        0 DUPTABLE                         R0 K1 [{"isOpen"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isOpen"]
        4 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useConsumer"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 NEWTABLE                         R4 0 1
       12 MOVE                             R5 R1
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K2 ["createElement"]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K3 ["Provider"]
       22 DUPTABLE                         R5 K5 [{"value"}]
       23 SETTABLEKS                       R2 R5 K4 ["value"]
       25 GETTABLEKS                       R6 R0 K6 ["children"]
       27 CALL                             R3 3 -1
       28 RETURN                           R3 -1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"isOpen"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["isOpen"]
        4 SETTABLEKS                       R1 R0 K0 ["isOpen"]
        6 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useProducer"]
        3 GETTABLEKS                       R2 R0 K1 ["isOpen"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["useMemo"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 NEWTABLE                         R3 0 1
       13 GETTABLEKS                       R4 R0 K1 ["isOpen"]
       15 SETLIST                          R3 R4 1 [1]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K3 ["createElement"]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K4 ["Provider"]
       24 DUPTABLE                         R4 K6 [{"value"}]
       25 SETTABLEKS                       R1 R4 K5 ["value"]
       27 GETTABLEKS                       R5 R0 K7 ["children"]
       29 CALL                             R2 3 -1
       30 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Networking"]
       13 GETTABLEKS                       R2 R2 K8 ["NetworkUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["createContext"]
       25 DUPTABLE                         R4 K14 [{["isOpen"] = True}]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R1 K15 ["createReplicatedState"]
       29 LOADK                            R5 K16 ["AnimationEditor_isOpen"]
       30 CALL                             R4 1 1
       31 DUPCLOSURE                       R5 K17 [PROTO_1]
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 DUPCLOSURE                       R6 K18 [PROTO_3]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R3
       39 DUPTABLE                         R7 K22 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
       40 SETTABLEKS                       R3 R7 K19 ["Context"]
       42 SETTABLEKS                       R5 R7 K20 ["EditableDataModelProvider"]
       44 SETTABLEKS                       R6 R7 K21 ["UIDataModelProvider"]
       46 RETURN                           R7 1
