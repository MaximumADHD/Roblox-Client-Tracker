PROTO_0:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETIMPORT                        R2 K1 [wait]
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+29]
        6 LOADB                            R0 1
        7 LOADB                            R1 1
        8 GETIMPORT                        R2 K3 [pairs]
       10 GETUPVAL                         R5 0
       11 NAMECALL                         R5 R5 K4 ["getState"]
       13 CALL                             R5 1 1
       14 MOVE                             R3 R5
       15 GETTABLEKS                       R3 R3 K5 ["PageSaveState"]
       17 CALL                             R2 1 3
       18 FORGPREP_NEXT                    R2
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R7 R7 K6 ["SaveFailed"]
       22 JUMPIFNOTEQ                      R6 R7 ; [+2]
       24 LOADB                            R1 0
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R7 R7 K7 ["Saving"]
       28 JUMPIFNOTEQ                      R6 R7 ; [+2]
       30 LOADB                            R0 0
       31 FORGLOOP                         R2 2 ; [-13]
       33 JUMPIF                           R0 ; [+1]
       34 JUMPBACK                         ; [-33]
       35 GETUPVAL                         R2 0
       36 NAMECALL                         R2 R2 K4 ["getState"]
       38 CALL                             R2 1 1
       39 GETIMPORT                        R3 K3 [pairs]
       41 GETTABLEKS                       R4 R2 K5 ["PageSaveState"]
       43 CALL                             R3 1 3
       44 FORGPREP_NEXT                    R3
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R8 R8 K6 ["SaveFailed"]
       48 JUMPIFNOTEQ                      R7 R8 ; [+6]
       50 GETUPVAL                         R8 2
       51 GETTABLEKS                       R8 R8 K8 ["onPageSaveError"]
       53 MOVE                             R9 R6
       54 CALL                             R8 1 0
       55 GETUPVAL                         R8 0
       56 GETUPVAL                         R10 3
       57 MOVE                             R11 R6
       58 GETUPVAL                         R12 1
       59 GETTABLEKS                       R12 R12 K9 ["Unsaved"]
       61 CALL                             R10 2 -1
       62 NAMECALL                         R8 R8 K10 ["dispatch"]
       64 CALL                             R8 -1 0
       65 FORGLOOP                         R3 2 ; [-21]
       67 JUMPIFNOT                        R1 ; [+12]
       68 GETUPVAL                         R3 2
       69 GETTABLEKS                       R3 R3 K11 ["onSaveSuccess"]
       71 GETIMPORT                        R5 K13 [tick]
       73 CALL                             R5 0 1
       74 GETUPVAL                         R6 4
       75 SUB                              R4 R5 R6
       76 CALL                             R3 1 0
       77 GETUPVAL                         R3 5
       78 CALL                             R3 0 0
       79 RETURN                           R0 0
       80 GETUPVAL                         R3 2
       81 GETTABLEKS                       R3 R3 K14 ["onSaveError"]
       83 GETIMPORT                        R5 K13 [tick]
       85 CALL                             R5 0 1
       86 GETUPVAL                         R6 4
       87 SUB                              R4 R5 R6
       88 CALL                             R3 1 0
       89 GETUPVAL                         R3 0
       90 GETUPVAL                         R5 6
       91 GETUPVAL                         R6 7
       92 GETTABLEKS                       R6 R6 K15 ["Error"]
       94 CALL                             R5 1 -1
       95 NAMECALL                         R3 R3 K10 ["dispatch"]
       97 CALL                             R3 -1 0
       98 GETUPVAL                         R3 8
       99 NEWTABLE                         R4 0 0
      101 CALL                             R3 1 0
      102 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K1 [spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          VAL R1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [tick]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K2 ["onSaveAttempt"]
        6 CALL                             R2 0 0
        7 GETUPVAL                         R4 1
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K3 ["Working"]
       11 CALL                             R4 1 -1
       12 NAMECALL                         R2 R0 K4 ["dispatch"]
       14 CALL                             R2 -1 0
       15 NAMECALL                         R2 R0 K5 ["getState"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K7 [pairs]
       20 GETTABLEKS                       R4 R2 K8 ["PageSaveState"]
       22 CALL                             R3 1 3
       23 FORGPREP_NEXT                    R3
       24 GETUPVAL                         R10 3
       25 MOVE                             R11 R6
       26 GETUPVAL                         R12 4
       27 GETTABLEKS                       R12 R12 K9 ["Pending"]
       29 CALL                             R10 2 -1
       30 NAMECALL                         R8 R0 K4 ["dispatch"]
       32 CALL                             R8 -1 0
       33 FORGLOOP                         R3 2 ; [-10]
       35 GETIMPORT                        R3 K7 [pairs]
       37 GETTABLEKS                       R4 R2 K10 ["Settings"]
       39 GETTABLEKS                       R4 R4 K11 ["Changed"]
       41 CALL                             R3 1 3
       42 FORGPREP_NEXT                    R3
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R8 R8 K12 ["onSettingSaved"]
       46 MOVE                             R9 R6
       47 MOVE                             R10 R7
       48 CALL                             R8 2 0
       49 FORGLOOP                         R3 2 ; [-7]
       51 GETUPVAL                         R3 5
       52 GETTABLEKS                       R3 R3 K13 ["new"]
       54 NEWCLOSURE                       R4 P0
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U4
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          VAL R1
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          UPVAL U2
       62 CALL                             R3 1 -1
       63 RETURN                           R3 -1

PROTO_3:
        0 DUPCLOSURE                       R0 K0 [PROTO_2]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["Analytics"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Actions"]
       24 GETTABLEKS                       R3 R3 K9 ["SetCurrentStatus"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K8 ["Actions"]
       33 GETTABLEKS                       R4 R4 K10 ["SetPageSaveState"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R5 R0 K5 ["Src"]
       40 GETTABLEKS                       R5 R5 K6 ["Util"]
       42 GETTABLEKS                       R5 R5 K11 ["CurrentStatus"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K4 [require]
       47 GETTABLEKS                       R6 R0 K5 ["Src"]
       49 GETTABLEKS                       R6 R6 K6 ["Util"]
       51 GETTABLEKS                       R6 R6 K12 ["SaveState"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K4 [require]
       56 GETTABLEKS                       R7 R0 K13 ["Packages"]
       58 GETTABLEKS                       R7 R7 K14 ["Framework"]
       60 CALL                             R6 1 1
       61 GETTABLEKS                       R7 R6 K6 ["Util"]
       63 GETTABLEKS                       R8 R7 K15 ["Promise"]
       65 DUPCLOSURE                       R9 K16 [PROTO_3]
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R8
       72 RETURN                           R9 1
