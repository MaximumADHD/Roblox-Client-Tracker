PROTO_0:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 2
        4 JUMPIF                           R0 ; [+19]
        5 GETUPVAL                         R2 1
        6 JUMPIF                           R2 ; [+17]
        7 GETIMPORT                        R2 K3 [warn]
        9 LOADK                            R3 K4 ["Failed"]
       10 MOVE                             R4 R1
       11 CALL                             R2 2 0
       12 LOADB                            R2 1
       13 SETUPVAL                         R2 1
       14 GETUPVAL                         R2 2
       15 GETUPVAL                         R4 3
       16 GETUPVAL                         R5 4
       17 GETUPVAL                         R7 5
       18 GETTABLEKS                       R6 R7 K5 ["SaveFailed"]
       20 CALL                             R4 2 -1
       21 NAMECALL                         R2 R2 K6 ["dispatch"]
       23 CALL                             R2 -1 0
       24 GETUPVAL                         R3 6
       25 ADDK                             R2 R3 K7 [1]
       26 SETUPVAL                         R2 6
       27 GETUPVAL                         R2 6
       28 GETUPVAL                         R4 7
       29 LENGTH                           R3 R4
       30 JUMPIFNOTEQ                      R2 R3 ; [+13]
       32 GETUPVAL                         R2 1
       33 JUMPIF                           R2 ; [+10]
       34 GETUPVAL                         R2 2
       35 GETUPVAL                         R4 3
       36 GETUPVAL                         R5 4
       37 GETUPVAL                         R7 5
       38 GETTABLEKS                       R6 R7 K8 ["Saved"]
       40 CALL                             R4 2 -1
       41 NAMECALL                         R2 R2 K6 ["dispatch"]
       43 CALL                             R2 -1 0
       44 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R5 1
        5 GETUPVAL                         R6 2
        6 GETUPVAL                         R8 3
        7 GETTABLEKS                       R7 R8 K0 ["Saving"]
        9 CALL                             R5 2 -1
       10 NAMECALL                         R3 R0 K1 ["dispatch"]
       12 CALL                             R3 -1 0
       13 LOADN                            R3 0
       14 LOADB                            R4 0
       15 GETIMPORT                        R5 K3 [ipairs]
       17 MOVE                             R6 R2
       18 CALL                             R5 1 3
       19 FORGPREP_INEXT                   R5
       20 GETIMPORT                        R10 K6 [coroutine.wrap]
       22 NEWCLOSURE                       R11 P0
       23 CAPTURE                          VAL R9
       24 CAPTURE                          REF R4
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          REF R3
       30 CAPTURE                          VAL R2
       31 CALL                             R10 1 1
       32 CALL                             R10 0 0
       33 FORGLOOP                         R5 2 [inext] ; [-14]
       35 CLOSEUPVALS                      R3
       36 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Actions"]
       15 GETTABLEKS                       R2 R3 K7 ["SetPageSaveState"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K5 ["Src"]
       22 GETTABLEKS                       R4 R5 K8 ["Util"]
       24 GETTABLEKS                       R3 R4 K9 ["SaveState"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K10 [PROTO_2]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 RETURN                           R3 1
