PROTO_0:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETIMPORT                        R2 K1 [wait]
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+28]
        6 LOADB                            R0 1
        7 LOADB                            R1 1
        8 GETIMPORT                        R2 K3 [pairs]
       10 GETUPVAL                         R5 0
       11 NAMECALL                         R5 R5 K4 ["getState"]
       13 CALL                             R5 1 1
       14 GETTABLEKS                       R3 R5 K5 ["PageSaveState"]
       16 CALL                             R2 1 3
       17 FORGPREP_NEXT                    R2
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R7 R8 K6 ["SaveFailed"]
       21 JUMPIFNOTEQ                      R6 R7 ; [+2]
       23 LOADB                            R1 0
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R7 R8 K7 ["Saving"]
       27 JUMPIFNOTEQ                      R6 R7 ; [+2]
       29 LOADB                            R0 0
       30 FORGLOOP                         R2 2 ; [-13]
       32 JUMPIF                           R0 ; [+1]
       33 JUMPBACK                         ; [-32]
       34 GETUPVAL                         R2 0
       35 NAMECALL                         R2 R2 K4 ["getState"]
       37 CALL                             R2 1 1
       38 GETIMPORT                        R3 K3 [pairs]
       40 GETTABLEKS                       R4 R2 K5 ["PageSaveState"]
       42 CALL                             R3 1 3
       43 FORGPREP_NEXT                    R3
       44 GETUPVAL                         R9 1
       45 GETTABLEKS                       R8 R9 K6 ["SaveFailed"]
       47 JUMPIFNOTEQ                      R7 R8 ; [+6]
       49 GETUPVAL                         R9 2
       50 GETTABLEKS                       R8 R9 K8 ["onPageSaveError"]
       52 MOVE                             R9 R6
       53 CALL                             R8 1 0
       54 GETUPVAL                         R8 0
       55 GETUPVAL                         R10 3
       56 MOVE                             R11 R6
       57 GETUPVAL                         R13 1
       58 GETTABLEKS                       R12 R13 K9 ["Unsaved"]
       60 CALL                             R10 2 -1
       61 NAMECALL                         R8 R8 K10 ["dispatch"]
       63 CALL                             R8 -1 0
       64 FORGLOOP                         R3 2 ; [-21]
       66 JUMPIFNOT                        R1 ; [+12]
       67 GETUPVAL                         R4 2
       68 GETTABLEKS                       R3 R4 K11 ["onSaveSuccess"]
       70 GETIMPORT                        R5 K13 [tick]
       72 CALL                             R5 0 1
       73 GETUPVAL                         R6 4
       74 SUB                              R4 R5 R6
       75 CALL                             R3 1 0
       76 GETUPVAL                         R3 5
       77 CALL                             R3 0 0
       78 RETURN                           R0 0
       79 GETUPVAL                         R4 2
       80 GETTABLEKS                       R3 R4 K14 ["onSaveError"]
       82 GETIMPORT                        R5 K13 [tick]
       84 CALL                             R5 0 1
       85 GETUPVAL                         R6 4
       86 SUB                              R4 R5 R6
       87 CALL                             R3 1 0
       88 GETUPVAL                         R3 0
       89 GETUPVAL                         R5 6
       90 GETUPVAL                         R7 7
       91 GETTABLEKS                       R6 R7 K15 ["Error"]
       93 CALL                             R5 1 -1
       94 NAMECALL                         R3 R3 K10 ["dispatch"]
       96 CALL                             R3 -1 0
       97 GETUPVAL                         R3 8
       98 NEWTABLE                         R4 0 0
      100 CALL                             R3 1 0
      101 RETURN                           R0 0

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
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K2 ["onSaveAttempt"]
        6 CALL                             R2 0 0
        7 GETUPVAL                         R4 1
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R5 R6 K3 ["Working"]
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
       26 GETUPVAL                         R13 4
       27 GETTABLEKS                       R12 R13 K9 ["Pending"]
       29 CALL                             R10 2 -1
       30 NAMECALL                         R8 R0 K4 ["dispatch"]
       32 CALL                             R8 -1 0
       33 FORGLOOP                         R3 2 ; [-10]
       35 GETIMPORT                        R3 K7 [pairs]
       37 GETTABLEKS                       R6 R2 K10 ["Settings"]
       39 GETTABLEKS                       R4 R6 K11 ["Changed"]
       41 CALL                             R3 1 3
       42 FORGPREP_NEXT                    R3
       43 GETUPVAL                         R9 0
       44 GETTABLEKS                       R8 R9 K12 ["onSettingSaved"]
       46 MOVE                             R9 R6
       47 MOVE                             R10 R7
       48 CALL                             R8 2 0
       49 FORGLOOP                         R3 2 ; [-7]
       51 GETUPVAL                         R4 5
       52 GETTABLEKS                       R3 R4 K13 ["new"]
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Util"]
       15 GETTABLEKS                       R2 R3 K7 ["Analytics"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K5 ["Src"]
       22 GETTABLEKS                       R4 R5 K8 ["Actions"]
       24 GETTABLEKS                       R3 R4 K9 ["SetCurrentStatus"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R6 R0 K5 ["Src"]
       31 GETTABLEKS                       R5 R6 K8 ["Actions"]
       33 GETTABLEKS                       R4 R5 K10 ["SetPageSaveState"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R7 R0 K5 ["Src"]
       40 GETTABLEKS                       R6 R7 K6 ["Util"]
       42 GETTABLEKS                       R5 R6 K11 ["CurrentStatus"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K4 [require]
       47 GETTABLEKS                       R8 R0 K5 ["Src"]
       49 GETTABLEKS                       R7 R8 K6 ["Util"]
       51 GETTABLEKS                       R6 R7 K12 ["SaveState"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K4 [require]
       56 GETTABLEKS                       R8 R0 K13 ["Packages"]
       58 GETTABLEKS                       R7 R8 K14 ["Framework"]
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
