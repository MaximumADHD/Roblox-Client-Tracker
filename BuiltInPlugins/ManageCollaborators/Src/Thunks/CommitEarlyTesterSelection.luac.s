PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R2 R2 K1 ["EarlyTesters"]
        5 LOADN                            R3 0
        6 GETTABLEKS                       R4 R2 K2 ["PendingMembers"]
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 ADDK                             R3 R3 K3 [1]
       12 FORGLOOP                         R4 1 ; [-2]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K4 ["MAX_EARLY_TESTER_MEMBERS"]
       17 SUB                              R4 R5 R3
       18 LOADN                            R5 0
       19 JUMPIFNOTLT                      R5 R4 ; [+66]
       21 NEWTABLE                         R5 0 0
       23 LOADN                            R6 0
       24 GETTABLEKS                       R7 R2 K5 ["SearchSelection"]
       26 LOADNIL                          R8
       27 LOADNIL                          R9
       28 FORGPREP                         R7
       29 ADDK                             R6 R6 K3 [1]
       30 JUMPIFLT                         R4 R6 ; [+10]
       32 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
       34 MOVE                             R13 R5
       35 MOVE                             R14 R11
       36 GETIMPORT                        R12 K8 [table.insert]
       38 CALL                             R12 2 0
       39 FORGLOOP                         R7 2 ; [-11]
       41 GETTABLEKS                       R7 R2 K9 ["Mode"]
       43 GETUPVAL                         R8 1
       44 GETTABLEKS                       R8 R8 K10 ["Unset"]
       46 JUMPIFNOTEQ                      R7 R8 ; [+33]
       48 GETTABLEKS                       R7 R1 K11 ["gameMetadataController"]
       50 GETTABLEKS                       R8 R1 K12 ["localization"]
       52 LOADK                            R10 K13 ["Label"]
       53 LOADK                            R11 K14 ["EarlyTesterRole"]
       54 DUPTABLE                         R12 K16 [{"experienceName"}]
       55 GETIMPORT                        R15 K18 [game]
       57 GETTABLEKS                       R15 R15 K19 ["GameId"]
       59 NAMECALL                         R13 R7 K20 ["getName"]
       61 CALL                             R13 2 1
       62 SETTABLEKS                       R13 R12 K15 ["experienceName"]
       64 NAMECALL                         R8 R8 K21 ["getText"]
       66 CALL                             R8 4 1
       67 GETUPVAL                         R11 2
       68 GETUPVAL                         R12 1
       69 GETTABLEKS                       R12 R12 K22 ["CreatingNew"]
       71 LOADNIL                          R13
       72 MOVE                             R14 R8
       73 MOVE                             R15 R5
       74 LOADB                            R16 1
       75 CALL                             R11 5 -1
       76 NAMECALL                         R9 R0 K23 ["dispatch"]
       78 CALL                             R9 -1 0
       79 JUMP                             ; [+6]
       80 GETUPVAL                         R9 3
       81 MOVE                             R10 R5
       82 CALL                             R9 1 -1
       83 NAMECALL                         R7 R0 K23 ["dispatch"]
       85 CALL                             R7 -1 0
       86 GETUPVAL                         R7 4
       87 GETUPVAL                         R8 5
       88 GETTABLEKS                       R8 R8 K24 ["Main"]
       90 CALL                             R7 1 -1
       91 NAMECALL                         R5 R0 K23 ["dispatch"]
       93 CALL                             R5 -1 0
       94 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
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
       13 GETTABLEKS                       R2 R2 K6 ["Actions"]
       15 GETTABLEKS                       R2 R2 K7 ["AddEarlyTesterMembers"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K6 ["Actions"]
       24 GETTABLEKS                       R3 R3 K8 ["SetEarlyTesterPendingRole"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K6 ["Actions"]
       33 GETTABLEKS                       R4 R4 K9 ["SetEarlyTesterScreen"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R5 R0 K5 ["Src"]
       40 GETTABLEKS                       R5 R5 K10 ["Util"]
       42 GETTABLEKS                       R5 R5 K11 ["EarlyTesterMode"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K4 [require]
       47 GETTABLEKS                       R6 R0 K5 ["Src"]
       49 GETTABLEKS                       R6 R6 K10 ["Util"]
       51 GETTABLEKS                       R6 R6 K12 ["EarlyTesterScreen"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K4 [require]
       56 GETTABLEKS                       R7 R0 K5 ["Src"]
       58 GETTABLEKS                       R7 R7 K13 ["Controllers"]
       60 GETTABLEKS                       R7 R7 K14 ["EarlyTesterController"]
       62 CALL                             R6 1 1
       63 DUPCLOSURE                       R7 K15 [PROTO_1]
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R5
       70 RETURN                           R7 1
