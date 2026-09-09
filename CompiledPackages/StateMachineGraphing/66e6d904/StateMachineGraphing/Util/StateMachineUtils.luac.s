PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+11]
        2 GETTABLEKS                       R1 R0 K0 ["Width"]
        4 LOADN                            R2 0
        5 JUMPIFLE                         R1 R2 ; [+6]
        7 GETTABLEKS                       R1 R0 K1 ["Height"]
        9 LOADN                            R2 0
       10 JUMPIFNOTLE                      R1 R2 ; [+10]
       12 DUPTABLE                         R1 K5 [{["x"], ["y"] = 120}]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K7 ["X"]
       16 MINUS                            R3 R4
       17 DIVK                             R2 R3 K6 [2]
       18 SETTABLEKS                       R2 R1 K2 ["x"]
       20 RETURN                           R1 1
       21 GETTABLEKS                       R3 R0 K8 ["Min"]
       23 GETTABLEKS                       R3 R3 K7 ["X"]
       25 GETTABLEKS                       R4 R0 K9 ["Max"]
       27 GETTABLEKS                       R4 R4 K7 ["X"]
       29 ADD                              R2 R3 R4
       30 DIVK                             R1 R2 K6 [2]
       31 GETTABLEKS                       R3 R0 K9 ["Max"]
       33 GETTABLEKS                       R3 R3 K10 ["Y"]
       35 GETTABLEKS                       R5 R0 K1 ["Height"]
       37 DIVK                             R4 R5 K11 [3]
       38 SUB                              R2 R3 R4
       39 DUPTABLE                         R3 K12 [{"x", "y"}]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K7 ["X"]
       43 DIVK                             R5 R6 K6 [2]
       44 SUB                              R4 R1 R5
       45 SETTABLEKS                       R4 R3 K2 ["x"]
       47 SETTABLEKS                       R2 R3 K3 ["y"]
       49 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["states"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R6 R5 K1 ["id"]
        8 GETUPVAL                         R7 1
        9 JUMPIFEQ                         R6 R7 ; [+7]
       11 GETTABLEKS                       R6 R5 K2 ["name"]
       13 JUMPIFNOTEQ                      R6 R0 ; [+3]
       15 LOADB                            R6 1
       16 RETURN                           R6 1
       17 FORGLOOP                         R1 2 ; [-12]
       19 LOADB                            R1 0
       20 RETURN                           R1 1

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R2
        3 GETTABLEKS                       R5 R0 K0 ["states"]
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 FORGPREP                         R5
        8 GETTABLEKS                       R10 R9 K1 ["id"]
       10 JUMPIFEQ                         R10 R2 ; [+7]
       12 GETTABLEKS                       R10 R9 K2 ["name"]
       14 JUMPIFNOTEQ                      R10 R1 ; [+3]
       16 LOADB                            R4 1
       17 JUMP                             ; [+3]
       18 FORGLOOP                         R5 2 ; [-11]
       20 LOADB                            R4 0
       21 JUMPIF                           R4 ; [+1]
       22 RETURN                           R1 1
       23 LOADN                            R4 2
       24 LOADK                            R7 K3 ["%* %*"]
       25 MOVE                             R9 R1
       26 MOVE                             R10 R4
       27 NAMECALL                         R7 R7 K4 ["format"]
       29 CALL                             R7 3 1
       30 MOVE                             R6 R7
       31 GETTABLEKS                       R7 R0 K0 ["states"]
       33 LOADNIL                          R8
       34 LOADNIL                          R9
       35 FORGPREP                         R7
       36 GETTABLEKS                       R12 R11 K1 ["id"]
       38 JUMPIFEQ                         R12 R2 ; [+7]
       40 GETTABLEKS                       R12 R11 K2 ["name"]
       42 JUMPIFNOTEQ                      R12 R6 ; [+3]
       44 LOADB                            R5 1
       45 JUMP                             ; [+3]
       46 FORGLOOP                         R7 2 ; [-11]
       48 LOADB                            R5 0
       49 JUMPIFNOT                        R5 ; [+2]
       50 ADDK                             R4 R4 K5 [1]
       51 JUMPBACK                         ; [-28]
       52 LOADK                            R6 K3 ["%* %*"]
       53 MOVE                             R8 R1
       54 MOVE                             R9 R4
       55 NAMECALL                         R6 R6 K4 ["format"]
       57 CALL                             R6 3 1
       58 MOVE                             R5 R6
       59 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["State"]
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R2
        3 MOVE                             R6 R1
        4 CALL                             R3 3 1
        5 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StateMachineGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Data"]
       11 GETTABLEKS                       R2 R2 K7 ["StateMachineTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K10 [Vector2.new]
       16 LOADN                            R3 150
       17 LOADN                            R4 50
       18 CALL                             R2 2 1
       19 NEWTABLE                         R3 4 0
       21 DUPCLOSURE                       R4 K11 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R4 R3 K12 ["newStatePosition"]
       25 DUPCLOSURE                       R4 K13 [PROTO_2]
       26 DUPCLOSURE                       R5 K14 [PROTO_3]
       27 CAPTURE                          VAL R4
       28 SETTABLEKS                       R5 R3 K15 ["nextStateName"]
       30 DUPCLOSURE                       R5 K16 [PROTO_4]
       31 CAPTURE                          VAL R4
       32 SETTABLEKS                       R5 R3 K17 ["getUniqueStateName"]
       34 RETURN                           R3 1
