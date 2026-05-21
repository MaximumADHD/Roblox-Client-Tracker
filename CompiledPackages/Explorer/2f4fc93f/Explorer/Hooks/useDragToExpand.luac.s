PROTO_0:
        0 JUMPIFNOT                        R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 SETTABLEKS                       R2 R1 K0 ["current"]
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isMouseDown"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["current"]
        8 RETURN                           R0 1
        9 LOADNIL                          R0
       10 RETURN                           R0 1

PROTO_3:
        0 DUPTABLE                         R0 K2 [{"setDragToExpandMode", "getDragToExpandMode"}]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["setDragToExpandMode"]
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U0
        8 SETTABLEKS                       R1 R0 K1 ["getDragToExpandMode"]
       10 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["useRef"]
       10 LOADNIL                          R2
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R3 R0 K3 ["mouseDownChanged"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R1
       17 NEWTABLE                         R5 0 0
       19 CALL                             R2 3 0
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K4 ["useMemo"]
       23 NEWCLOSURE                       R3 P1
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R4 0 1
       28 GETTABLEKS                       R5 R0 K5 ["isMouseDown"]
       30 SETLIST                          R4 R5 1 [1]
       32 CALL                             R2 2 -1
       33 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["MouseContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["RpcTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Hooks"]
       32 GETTABLEKS                       R5 R5 K13 ["useEventConnection"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K14 [PROTO_4]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R4
       39 RETURN                           R5 1
