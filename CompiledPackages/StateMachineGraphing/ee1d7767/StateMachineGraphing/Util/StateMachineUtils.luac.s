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
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R2
        3 GETTABLEKS                       R6 R0 K0 ["states"]
        5 LOADNIL                          R7
        6 LOADNIL                          R8
        7 FORGPREP                         R6
        8 GETTABLEKS                       R11 R10 K1 ["id"]
       10 JUMPIFEQ                         R11 R2 ; [+7]
       12 GETTABLEKS                       R11 R10 K2 ["name"]
       14 JUMPIFNOTEQ                      R11 R1 ; [+3]
       16 LOADB                            R5 1
       17 JUMP                             ; [+3]
       18 FORGLOOP                         R6 2 ; [-11]
       20 LOADB                            R5 0
       21 JUMPIF                           R5 ; [+1]
       22 RETURN                           R1 1
       23 GETUPVAL                         R5 0
       24 CALL                             R5 0 1
       25 JUMPIF                           R5 ; [+35]
       26 LOADN                            R5 2
       27 LOADK                            R7 K3 ["%* %*"]
       28 MOVE                             R9 R1
       29 MOVE                             R10 R5
       30 NAMECALL                         R7 R7 K4 ["format"]
       32 CALL                             R7 3 1
       33 GETTABLEKS                       R8 R0 K0 ["states"]
       35 LOADNIL                          R9
       36 LOADNIL                          R10
       37 FORGPREP                         R8
       38 GETTABLEKS                       R13 R12 K1 ["id"]
       40 JUMPIFEQ                         R13 R2 ; [+7]
       42 GETTABLEKS                       R13 R12 K2 ["name"]
       44 JUMPIFNOTEQ                      R13 R7 ; [+3]
       46 LOADB                            R6 1
       47 JUMP                             ; [+3]
       48 FORGLOOP                         R8 2 ; [-11]
       50 LOADB                            R6 0
       51 JUMPIFNOT                        R6 ; [+2]
       52 ADDK                             R5 R5 K5 [1]
       53 JUMPBACK                         ; [-27]
       54 LOADK                            R6 K3 ["%* %*"]
       55 MOVE                             R8 R1
       56 MOVE                             R9 R5
       57 NAMECALL                         R6 R6 K4 ["format"]
       59 CALL                             R6 3 1
       60 RETURN                           R6 1
       61 MOVE                             R5 R1
       62 JUMPIFNOT                        R3 ; [+10]
       63 LOADK                            R8 K6 ["%s*%d+$"]
       64 LOADK                            R9 K7 [""]
       65 NAMECALL                         R6 R1 K8 ["gsub"]
       67 CALL                             R6 3 1
       68 LENGTH                           R7 R6
       69 LOADN                            R8 0
       70 JUMPIFNOTLT                      R8 R7 ; [+2]
       72 MOVE                             R5 R6
       73 LOADN                            R6 1
       74 MOVE                             R7 R5
       75 MOVE                             R9 R7
       76 GETTABLEKS                       R10 R0 K0 ["states"]
       78 LOADNIL                          R11
       79 LOADNIL                          R12
       80 FORGPREP                         R10
       81 GETTABLEKS                       R15 R14 K1 ["id"]
       83 JUMPIFEQ                         R15 R2 ; [+7]
       85 GETTABLEKS                       R15 R14 K2 ["name"]
       87 JUMPIFNOTEQ                      R15 R9 ; [+3]
       89 LOADB                            R8 1
       90 JUMP                             ; [+3]
       91 FORGLOOP                         R10 2 ; [-11]
       93 LOADB                            R8 0
       94 JUMPIFNOT                        R8 ; [+9]
       95 LOADK                            R8 K9 ["%*%*"]
       96 MOVE                             R10 R5
       97 MOVE                             R11 R6
       98 NAMECALL                         R8 R8 K4 ["format"]
      100 CALL                             R8 3 1
      101 MOVE                             R7 R8
      102 ADDK                             R6 R6 K5 [1]
      103 JUMPBACK                         ; [-29]
      104 RETURN                           R7 1

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
        4 LOADB                            R7 1
        5 CALL                             R3 4 1
        6 RETURN                           R3 1

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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 GETTABLEKS                       R3 R3 K9 ["getFFlagAnimGraphUIInputIds"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K12 [Vector2.new]
       23 LOADN                            R4 150
       24 LOADN                            R5 50
       25 CALL                             R3 2 1
       26 NEWTABLE                         R4 4 0
       28 DUPCLOSURE                       R5 K13 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R5 R4 K14 ["newStatePosition"]
       32 DUPCLOSURE                       R5 K15 [PROTO_2]
       33 CAPTURE                          VAL R2
       34 DUPCLOSURE                       R6 K16 [PROTO_3]
       35 CAPTURE                          VAL R5
       36 SETTABLEKS                       R6 R4 K17 ["nextStateName"]
       38 DUPCLOSURE                       R6 K18 [PROTO_4]
       39 CAPTURE                          VAL R5
       40 SETTABLEKS                       R6 R4 K19 ["getUniqueStateName"]
       42 RETURN                           R4 1
