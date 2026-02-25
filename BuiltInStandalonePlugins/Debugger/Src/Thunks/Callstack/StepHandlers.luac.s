PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K1 [game]
        2 LOADK                            R4 K2 ["DebuggerConnectionManager"]
        3 NAMECALL                         R2 R2 K3 ["GetService"]
        5 CALL                             R2 2 1
        6 GETUPVAL                         R5 0
        7 NAMECALL                         R3 R2 K4 ["GetConnectionById"]
        9 CALL                             R3 2 1
       10 GETUPVAL                         R4 1
       11 JUMPIFEQKNIL                     R4 ; [+3]
       13 JUMPIFNOTEQKNIL                  R3 ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R6 1
       17 NAMECALL                         R4 R3 K5 ["GetThreadById"]
       19 CALL                             R4 2 1
       20 JUMPIF                           R4 ; [+1]
       21 RETURN                           R0 0
       22 GETUPVAL                         R5 2
       23 GETUPVAL                         R8 3
       24 GETTABLEKS                       R7 R8 K6 ["StepActionIds"]
       26 GETTABLEKS                       R6 R7 K7 ["stepOverActionV2"]
       28 JUMPIFNOTEQ                      R5 R6 ; [+16]
       30 MOVE                             R7 R4
       31 DUPCLOSURE                       R8 K8 [PROTO_0]
       32 NAMECALL                         R5 R3 K9 ["Step"]
       34 CALL                             R5 3 0
       35 GETTABLEKS                       R5 R1 K10 ["analytics"]
       37 GETUPVAL                         R8 4
       38 GETTABLEKS                       R7 R8 K11 ["CallstackStepOver"]
       40 GETUPVAL                         R8 5
       41 NAMECALL                         R5 R5 K12 ["report"]
       43 CALL                             R5 3 0
       44 JUMP                             ; [+52]
       45 GETUPVAL                         R5 2
       46 GETUPVAL                         R8 3
       47 GETTABLEKS                       R7 R8 K6 ["StepActionIds"]
       49 GETTABLEKS                       R6 R7 K13 ["stepIntoActionV2"]
       51 JUMPIFNOTEQ                      R5 R6 ; [+16]
       53 MOVE                             R7 R4
       54 DUPCLOSURE                       R8 K14 [PROTO_1]
       55 NAMECALL                         R5 R3 K15 ["StepIn"]
       57 CALL                             R5 3 0
       58 GETTABLEKS                       R5 R1 K10 ["analytics"]
       60 GETUPVAL                         R8 4
       61 GETTABLEKS                       R7 R8 K16 ["CallstackStepInto"]
       63 GETUPVAL                         R8 5
       64 NAMECALL                         R5 R5 K12 ["report"]
       66 CALL                             R5 3 0
       67 JUMP                             ; [+29]
       68 GETUPVAL                         R5 2
       69 GETUPVAL                         R8 3
       70 GETTABLEKS                       R7 R8 K6 ["StepActionIds"]
       72 GETTABLEKS                       R6 R7 K17 ["stepOutActionV2"]
       74 JUMPIFNOTEQ                      R5 R6 ; [+16]
       76 MOVE                             R7 R4
       77 DUPCLOSURE                       R8 K18 [PROTO_2]
       78 NAMECALL                         R5 R3 K19 ["StepOut"]
       80 CALL                             R5 3 0
       81 GETTABLEKS                       R5 R1 K10 ["analytics"]
       83 GETUPVAL                         R8 4
       84 GETTABLEKS                       R7 R8 K20 ["CallstackStepOut"]
       86 GETUPVAL                         R8 5
       87 NAMECALL                         R5 R5 K12 ["report"]
       89 CALL                             R5 3 0
       90 JUMP                             ; [+6]
       91 LOADB                            R6 0
       92 FASTCALL1                        ASSERT R6 ; [+2]
       93 GETIMPORT                        R5 K22 [assert]
       95 CALL                             R5 1 0
       96 RETURN                           R0 0
       97 GETUPVAL                         R7 6
       98 LOADB                            R8 0
       99 CALL                             R7 1 -1
      100 NAMECALL                         R5 R0 K23 ["dispatch"]
      102 CALL                             R5 -1 0
      103 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R2
        2 CAPTURE                          VAL R3
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Resources"]
       17 GETTABLEKS                       R2 R3 K7 ["AnalyticsEventNames"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R6 R0 K5 ["Src"]
       24 GETTABLEKS                       R5 R6 K8 ["Actions"]
       26 GETTABLEKS                       R4 R5 K9 ["Common"]
       28 GETTABLEKS                       R3 R4 K10 ["SetPausedState"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K4 [require]
       33 GETTABLEKS                       R6 R0 K5 ["Src"]
       35 GETTABLEKS                       R5 R6 K11 ["Util"]
       37 GETTABLEKS                       R4 R5 K12 ["Constants"]
       39 CALL                             R3 1 1
       40 DUPCLOSURE                       R4 K13 [PROTO_4]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 RETURN                           R4 1
