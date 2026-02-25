PROTO_0:
        0 JUMPIFNOT                        R0 ; [+20]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["current"]
        4 JUMPIFNOT                        R2 ; [+16]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["current"]
        8 JUMPIFEQ                         R2 R0 ; [+12]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K0 ["current"]
       13 JUMPIFNOT                        R2 ; [+4]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K0 ["current"]
       17 CALL                             R2 0 0
       18 JUMPIFNOT                        R1 ; [+2]
       19 MOVE                             R2 R1
       20 CALL                             R2 0 0
       21 GETUPVAL                         R2 0
       22 SETTABLEKS                       R0 R2 K0 ["current"]
       24 GETUPVAL                         R2 1
       25 SETTABLEKS                       R1 R2 K0 ["current"]
       27 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K3 [{"timeout", "currentIdRef", "setCurrentId"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["timeout"]
        4 ORK                              R1 R2 K4 [0]
        5 SETTABLEKS                       R1 R0 K0 ["timeout"]
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K1 ["currentIdRef"]
       10 GETUPVAL                         R1 2
       11 SETTABLEKS                       R1 R0 K2 ["setCurrentId"]
       13 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["useRef"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K1 ["useCallback"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R2
       16 NEWTABLE                         R5 0 0
       18 CALL                             R3 2 1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K2 ["useMemo"]
       22 NEWCLOSURE                       R5 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R3
       26 NEWTABLE                         R6 0 4
       28 GETTABLEKS                       R7 R0 K3 ["timeout"]
       30 MOVE                             R8 R1
       31 MOVE                             R9 R3
       32 MOVE                             R10 R2
       33 SETLIST                          R6 R7 4 [1]
       35 CALL                             R4 2 1
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R5 R6 K4 ["createElement"]
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R6 R7 K5 ["Provider"]
       42 DUPTABLE                         R7 K7 [{"value"}]
       43 SETTABLEKS                       R4 R7 K6 ["value"]
       45 GETTABLEKS                       R8 R0 K8 ["children"]
       47 CALL                             R5 3 -1
       48 RETURN                           R5 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R0 R1 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 LOADNIL                          R1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R1 R2 K0 ["noop"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 3
       10 JUMPIFNOT                        R0 ; [+5]
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R1 4
       13 GETUPVAL                         R2 5
       14 CALL                             R0 2 0
       15 RETURN                           R0 0
       16 NEWCLOSURE                       R0 P0
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U1
       20 GETUPVAL                         R2 6
       21 GETTABLEKS                       R1 R2 K1 ["current"]
       23 JUMPIF                           R1 ; [+1]
       24 RETURN                           R0 0
       25 GETUPVAL                         R2 7
       26 GETTABLEKS                       R1 R2 K2 ["timeout"]
       28 LOADN                            R2 0
       29 JUMPIFNOTLT                      R2 R1 ; [+11]
       31 GETIMPORT                        R1 K5 [task.delay]
       33 GETUPVAL                         R3 7
       34 GETTABLEKS                       R2 R3 K2 ["timeout"]
       36 MOVE                             R3 R0
       37 CALL                             R1 2 1
       38 NEWCLOSURE                       R2 P1
       39 CAPTURE                          VAL R1
       40 RETURN                           R2 1
       41 GETUPVAL                         R2 6
       42 GETTABLEKS                       R1 R2 K1 ["current"]
       44 GETUPVAL                         R2 4
       45 JUMPIFEQ                         R1 R2 ; [+2]
       47 RETURN                           R0 0
       48 GETUPVAL                         R1 1
       49 LOADNIL                          R2
       50 CALL                             R1 1 0
       51 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["enabled"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+3]
        4 LOADB                            R1 1
        5 JUMP                             ; [+2]
        6 GETTABLEKS                       R1 R0 K0 ["enabled"]
        8 GETTABLEKS                       R2 R0 K1 ["isOpen"]
       10 GETTABLEKS                       R3 R0 K2 ["floatingId"]
       12 GETTABLEKS                       R4 R0 K3 ["flush"]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K4 ["useContext"]
       17 GETUPVAL                         R6 1
       18 CALL                             R5 1 1
       19 GETTABLEKS                       R6 R5 K5 ["currentIdRef"]
       21 GETTABLEKS                       R7 R5 K6 ["setCurrentId"]
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R8 R9 K7 ["useLayoutEffect"]
       26 NEWCLOSURE                       R9 P0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R7
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R6
       34 CAPTURE                          VAL R5
       35 NEWTABLE                         R10 0 7
       37 MOVE                             R11 R1
       38 MOVE                             R12 R2
       39 MOVE                             R13 R7
       40 MOVE                             R14 R3
       41 MOVE                             R15 R6
       42 GETTABLEKS                       R16 R5 K8 ["timeout"]
       44 MOVE                             R17 R4
       45 SETLIST                          R10 R11 7 [1]
       47 CALL                             R8 2 0
       48 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Types"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R2 K10 ["createContext"]
       26 DUPTABLE                         R6 K14 [{"timeout", "currentIdRef", "setCurrentId"}]
       27 LOADN                            R7 0
       28 SETTABLEKS                       R7 R6 K11 ["timeout"]
       30 GETTABLEKS                       R7 R2 K15 ["createRef"]
       32 CALL                             R7 0 1
       33 SETTABLEKS                       R7 R6 K12 ["currentIdRef"]
       35 GETTABLEKS                       R7 R3 K16 ["noop"]
       37 SETTABLEKS                       R7 R6 K13 ["setCurrentId"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K17 [PROTO_2]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R5
       43 DUPCLOSURE                       R7 K18 [PROTO_3]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R5
       46 DUPCLOSURE                       R8 K19 [PROTO_7]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R3
       50 DUPTABLE                         R9 K23 [{"PopoverDelayGroup", "useDelayGroup", "useDelayGroupContext"}]
       51 SETTABLEKS                       R6 R9 K20 ["PopoverDelayGroup"]
       53 SETTABLEKS                       R8 R9 K21 ["useDelayGroup"]
       55 SETTABLEKS                       R7 R9 K22 ["useDelayGroupContext"]
       57 RETURN                           R9 1
