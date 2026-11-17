PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 FASTPCALL                        pcall 2 ; [+2]
        3 GETIMPORT                        R0 K1 [pcall]
        5 CALL                             R0 2 2
        6 JUMPIF                           R0 ; [+19]
        7 GETUPVAL                         R2 2
        8 JUMPIF                           R2 ; [+17]
        9 GETIMPORT                        R2 K3 [warn]
       11 LOADK                            R3 K4 ["Failed"]
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 LOADB                            R2 1
       15 SETUPVAL                         R2 2
       16 GETUPVAL                         R2 3
       17 GETUPVAL                         R4 4
       18 GETUPVAL                         R5 5
       19 GETUPVAL                         R6 6
       20 GETTABLEKS                       R6 R6 K5 ["LoadFailed"]
       22 CALL                             R4 2 -1
       23 NAMECALL                         R2 R2 K6 ["dispatch"]
       25 CALL                             R2 -1 0
       26 GETUPVAL                         R3 7
       27 ADDK                             R2 R3 K7 [1]
       28 SETUPVAL                         R2 7
       29 GETUPVAL                         R2 7
       30 GETUPVAL                         R4 8
       31 LENGTH                           R3 R4
       32 JUMPIFNOTEQ                      R2 R3 ; [+41]
       34 GETUPVAL                         R2 2
       35 JUMPIF                           R2 ; [+28]
       36 GETUPVAL                         R2 3
       37 GETUPVAL                         R4 9
       38 GETUPVAL                         R5 1
       39 CALL                             R4 1 -1
       40 NAMECALL                         R2 R2 K6 ["dispatch"]
       42 CALL                             R2 -1 0
       43 GETUPVAL                         R2 3
       44 GETUPVAL                         R4 4
       45 GETUPVAL                         R5 5
       46 GETUPVAL                         R6 6
       47 GETTABLEKS                       R6 R6 K8 ["Loaded"]
       49 CALL                             R4 2 -1
       50 NAMECALL                         R2 R2 K6 ["dispatch"]
       52 CALL                             R2 -1 0
       53 GETUPVAL                         R2 10
       54 GETTABLEKS                       R2 R2 K9 ["onPageLoadSuccess"]
       56 GETUPVAL                         R3 5
       57 GETIMPORT                        R5 K11 [tick]
       59 CALL                             R5 0 1
       60 GETUPVAL                         R6 11
       61 SUB                              R4 R5 R6
       62 CALL                             R2 2 0
       63 RETURN                           R0 0
       64 GETUPVAL                         R2 10
       65 GETTABLEKS                       R2 R2 K12 ["onPageLoadError"]
       67 GETUPVAL                         R3 5
       68 GETIMPORT                        R5 K11 [tick]
       70 CALL                             R5 0 1
       71 GETUPVAL                         R6 11
       72 SUB                              R4 R5 R6
       73 CALL                             R2 2 0
       74 RETURN                           R0 0

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
