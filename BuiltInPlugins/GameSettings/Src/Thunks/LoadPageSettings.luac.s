PROTO_0:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 CALL                             R0 2 2
        5 JUMPIF                           R0 ; [+19]
        6 GETUPVAL                         R2 2
        7 JUMPIF                           R2 ; [+17]
        8 GETIMPORT                        R2 K3 [warn]
       10 LOADK                            R3 K4 ["Failed"]
       11 MOVE                             R4 R1
       12 CALL                             R2 2 0
       13 LOADB                            R2 1
       14 SETUPVAL                         R2 2
       15 GETUPVAL                         R2 3
       16 GETUPVAL                         R4 4
       17 GETUPVAL                         R5 5
       18 GETUPVAL                         R6 6
       19 GETTABLEKS                       R6 R6 K5 ["LoadFailed"]
       21 CALL                             R4 2 -1
       22 NAMECALL                         R2 R2 K6 ["dispatch"]
       24 CALL                             R2 -1 0
       25 GETUPVAL                         R3 7
       26 ADDK                             R2 R3 K7 [1]
       27 SETUPVAL                         R2 7
       28 GETUPVAL                         R2 7
       29 GETUPVAL                         R4 8
       30 LENGTH                           R3 R4
       31 JUMPIFNOTEQ                      R2 R3 ; [+41]
       33 GETUPVAL                         R2 2
       34 JUMPIF                           R2 ; [+28]
       35 GETUPVAL                         R2 3
       36 GETUPVAL                         R4 9
       37 GETUPVAL                         R5 1
       38 CALL                             R4 1 -1
       39 NAMECALL                         R2 R2 K6 ["dispatch"]
       41 CALL                             R2 -1 0
       42 GETUPVAL                         R2 3
       43 GETUPVAL                         R4 4
       44 GETUPVAL                         R5 5
       45 GETUPVAL                         R6 6
       46 GETTABLEKS                       R6 R6 K8 ["Loaded"]
       48 CALL                             R4 2 -1
       49 NAMECALL                         R2 R2 K6 ["dispatch"]
       51 CALL                             R2 -1 0
       52 GETUPVAL                         R2 10
       53 GETTABLEKS                       R2 R2 K9 ["onPageLoadSuccess"]
       55 GETUPVAL                         R3 5
       56 GETIMPORT                        R5 K11 [tick]
       58 CALL                             R5 0 1
       59 GETUPVAL                         R6 11
       60 SUB                              R4 R5 R6
       61 CALL                             R2 2 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R2 10
       64 GETTABLEKS                       R2 R2 K12 ["onPageLoadError"]
       66 GETUPVAL                         R3 5
       67 GETIMPORT                        R5 K11 [tick]
       69 CALL                             R5 0 1
       70 GETUPVAL                         R6 11
       71 SUB                              R4 R5 R6
       72 CALL                             R2 2 0
       73 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R5 1
        5 GETUPVAL                         R6 2
        6 GETUPVAL                         R7 3
        7 GETTABLEKS                       R7 R7 K0 ["Loading"]
        9 CALL                             R5 2 -1
       10 NAMECALL                         R3 R0 K1 ["dispatch"]
       12 CALL                             R3 -1 0
       13 GETUPVAL                         R3 4
       14 GETTABLEKS                       R3 R3 K2 ["onPageLoadAttempt"]
       16 GETUPVAL                         R4 2
       17 CALL                             R3 1 0
       18 GETIMPORT                        R3 K4 [tick]
       20 CALL                             R3 0 1
       21 LOADN                            R4 0
       22 LOADB                            R5 0
       23 NEWTABLE                         R6 0 0
       25 GETIMPORT                        R7 K6 [ipairs]
       27 MOVE                             R8 R2
       28 CALL                             R7 1 3
       29 FORGPREP_INEXT                   R7
       30 GETIMPORT                        R12 K9 [coroutine.wrap]
       32 NEWCLOSURE                       R13 P0
       33 CAPTURE                          VAL R11
       34 CAPTURE                          VAL R6
       35 CAPTURE                          REF R5
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          REF R4
       41 CAPTURE                          VAL R2
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          VAL R3
       45 CALL                             R12 1 1
       46 CALL                             R12 0 0
       47 FORGLOOP                         R7 2 [inext] ; [-18]
       49 CLOSEUPVALS                      R4
       50 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Actions"]
       15 GETTABLEKS                       R2 R2 K7 ["AppendSettings"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K6 ["Actions"]
       24 GETTABLEKS                       R3 R3 K8 ["SetPageLoadState"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K9 ["Util"]
       33 GETTABLEKS                       R4 R4 K10 ["Analytics"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R5 R0 K5 ["Src"]
       40 GETTABLEKS                       R5 R5 K9 ["Util"]
       42 GETTABLEKS                       R5 R5 K11 ["LoadState"]
       44 CALL                             R4 1 1
       45 DUPCLOSURE                       R5 K12 [PROTO_2]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R1
       50 RETURN                           R5 1
