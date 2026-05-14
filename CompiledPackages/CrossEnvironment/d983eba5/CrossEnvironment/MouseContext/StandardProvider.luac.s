PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetMouseLocation"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PointerAction"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Connect"]
        6 CALL                             R1 2 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R1
        9 RETURN                           R2 1

PROTO_3:
        0 DUPTABLE                         R0 K2 [{"getMousePosition", "bindOnPointerAction"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["getMousePosition"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["bindOnPointerAction"]
        7 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["useCallback"]
       11 DUPCLOSURE                       R3 K2 [PROTO_2]
       12 CAPTURE                          UPVAL U1
       13 NEWTABLE                         R4 0 0
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K3 ["useMemo"]
       19 NEWCLOSURE                       R4 P2
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R5 0 2
       24 MOVE                             R6 R1
       25 MOVE                             R7 R2
       26 SETLIST                          R5 R6 2 [1]
       28 CALL                             R3 2 1
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K4 ["createElement"]
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R5 R5 K5 ["Provider"]
       35 DUPTABLE                         R6 K7 [{"value"}]
       36 SETTABLEKS                       R3 R6 K6 ["value"]
       38 GETTABLEKS                       R7 R0 K8 ["children"]
       40 CALL                             R4 3 -1
       41 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UserInputService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["CrossEnvironment"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETIMPORT                        R3 K5 [script]
       17 GETTABLEKS                       R3 R3 K10 ["Parent"]
       19 GETTABLEKS                       R3 R3 K11 ["Context"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K10 ["Parent"]
       26 GETTABLEKS                       R4 R4 K12 ["React"]
       28 CALL                             R3 1 1
       29 DUPCLOSURE                       R4 K13 [PROTO_4]
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R2
       33 RETURN                           R4 1
