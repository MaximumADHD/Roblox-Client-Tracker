PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R5 0
        4 GETTABLE                         R4 R5 R1
        5 SETTABLE                         R4 R3 R0
        6 GETUPVAL                         R3 0
        7 SETTABLE                         R2 R3 R1
        8 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Selected"]
        2 LOADN                            R2 1
        3 JUMPIFLE                         R1 R2 ; [+6]
        5 GETTABLEKS                       R3 R0 K1 ["Keypoints"]
        7 LENGTH                           R2 R3
        8 JUMPIFNOTLE                      R2 R1 ; [+2]
       10 RETURN                           R1 1
       11 GETTABLEKS                       R2 R0 K1 ["Keypoints"]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          VAL R2
       15 LOADN                            R6 0
       16 LOADN                            R4 15
       17 LOADN                            R5 1
       18 FORNPREP                         R4
       19 GETTABLE                         R7 R2 R1
       20 SUBK                             R9 R1 K2 [1]
       21 GETTABLE                         R8 R2 R9
       22 JUMPIFNOT                        R8 ; [+14]
       23 GETTABLEKS                       R9 R8 K3 ["Time"]
       25 GETTABLEKS                       R10 R7 K3 ["Time"]
       27 JUMPIFNOTLT                      R10 R9 ; [+9]
       29 SUBK                             R9 R1 K2 [1]
       30 MOVE                             R10 R1
       31 GETTABLE                         R11 R2 R9
       32 GETTABLE                         R12 R2 R10
       33 SETTABLE                         R12 R2 R9
       34 SETTABLE                         R11 R2 R10
       35 SUBK                             R1 R1 K2 [1]
       36 JUMP                             ; [+18]
       37 ADDK                             R10 R1 K2 [1]
       38 GETTABLE                         R9 R2 R10
       39 JUMPIFNOT                        R9 ; [+16]
       40 GETTABLEKS                       R10 R9 K3 ["Time"]
       42 GETTABLEKS                       R11 R7 K3 ["Time"]
       44 JUMPIFNOTLT                      R10 R11 ; [+11]
       46 MOVE                             R10 R1
       47 ADDK                             R11 R1 K2 [1]
       48 GETTABLE                         R12 R2 R10
       49 GETTABLE                         R13 R2 R11
       50 SETTABLE                         R13 R2 R10
       51 SETTABLE                         R12 R2 R11
       52 ADDK                             R1 R1 K2 [1]
       53 JUMP                             ; [+1]
       54 JUMP                             ; [+1]
       55 FORNLOOP                         R4
       56 SETTABLEKS                       R1 R0 K0 ["Selected"]
       58 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Selected"]
        2 JUMPIFNOTEQKN                    R2 K1 [1] ; [+5]
        4 LOADN                            R2 0
        5 SETTABLEKS                       R2 R1 K2 ["Time"]
        7 JUMP                             ; [+26]
        8 GETTABLEKS                       R2 R0 K0 ["Selected"]
       10 GETTABLEKS                       R4 R0 K3 ["Keypoints"]
       12 LENGTH                           R3 R4
       13 JUMPIFNOTEQ                      R2 R3 ; [+5]
       15 LOADN                            R2 1
       16 SETTABLEKS                       R2 R1 K2 ["Time"]
       18 JUMP                             ; [+15]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R3 R1 K2 ["Time"]
       22 LOADN                            R4 3
       23 CALL                             R2 2 1
       24 LOADK                            R5 K4 [0.01]
       25 LOADK                            R6 K5 [0.99]
       26 FASTCALL3                        MATH_CLAMP R2 R5 R6
       28 MOVE                             R4 R2
       29 GETIMPORT                        R3 K8 [math.clamp]
       31 CALL                             R3 3 1
       32 SETTABLEKS                       R3 R1 K2 ["Time"]
       34 GETTABLEKS                       R3 R1 K9 ["Value"]
       36 FASTCALL1                        TYPEOF R3 ; [+2]
       37 GETIMPORT                        R2 K11 [typeof]
       39 CALL                             R2 1 1
       40 JUMPIFNOTEQKS                    R2 K12 ["number"] ; [+16]
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R3 R1 K9 ["Value"]
       45 LOADN                            R4 3
       46 CALL                             R2 2 1
       47 LOADN                            R5 0
       48 LOADN                            R6 1
       49 FASTCALL3                        MATH_CLAMP R2 R5 R6
       51 MOVE                             R4 R2
       52 GETIMPORT                        R3 K8 [math.clamp]
       54 CALL                             R3 3 1
       55 SETTABLEKS                       R3 R1 K9 ["Value"]
       57 GETUPVAL                         R2 1
       58 MOVE                             R3 R0
       59 DUPTABLE                         R4 K13 [{"Keypoints"}]
       60 GETUPVAL                         R5 1
       61 GETTABLEKS                       R6 R0 K3 ["Keypoints"]
       63 NEWTABLE                         R7 1 0
       65 GETTABLEKS                       R8 R0 K0 ["Selected"]
       67 SETTABLE                         R1 R7 R8
       68 CALL                             R5 2 1
       69 SETTABLEKS                       R5 R4 K3 ["Keypoints"]
       71 CALL                             R2 2 1
       72 GETUPVAL                         R4 2
       73 GETTABLEKS                       R3 R4 K14 ["updateIndexMut"]
       75 MOVE                             R4 R2
       76 CALL                             R3 1 0
       77 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["Keypoints"]
        2 LENGTH                           R2 R3
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["MAX_KEYPOINT_COUNT"]
        6 JUMPIFNOTLE                      R3 R2 ; [+2]
        8 RETURN                           R0 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R4 R1 K2 ["Time"]
       12 LOADN                            R5 3
       13 CALL                             R3 2 1
       14 LOADK                            R4 K3 [0.01]
       15 LOADK                            R5 K4 [0.99]
       16 FASTCALL                         MATH_CLAMP ; [+2]
       17 GETIMPORT                        R2 K7 [math.clamp]
       19 CALL                             R2 3 1
       20 SETTABLEKS                       R2 R1 K2 ["Time"]
       22 GETTABLEKS                       R3 R1 K8 ["Value"]
       24 FASTCALL1                        TYPEOF R3 ; [+2]
       25 GETIMPORT                        R2 K10 [typeof]
       27 CALL                             R2 1 1
       28 JUMPIFNOTEQKS                    R2 K11 ["number"] ; [+11]
       30 GETTABLEKS                       R3 R1 K8 ["Value"]
       32 LOADN                            R4 0
       33 LOADN                            R5 1
       34 FASTCALL                         MATH_CLAMP ; [+2]
       35 GETIMPORT                        R2 K7 [math.clamp]
       37 CALL                             R2 3 1
       38 SETTABLEKS                       R2 R1 K8 ["Value"]
       40 GETUPVAL                         R2 2
       41 MOVE                             R3 R0
       42 DUPTABLE                         R4 K12 [{"Keypoints"}]
       43 GETUPVAL                         R5 3
       44 GETTABLEKS                       R6 R0 K0 ["Keypoints"]
       46 CALL                             R5 1 1
       47 SETTABLEKS                       R5 R4 K0 ["Keypoints"]
       49 CALL                             R2 2 1
       50 LOADN                            R3 255
       51 GETTABLEKS                       R4 R2 K0 ["Keypoints"]
       53 LOADNIL                          R5
       54 LOADNIL                          R6
       55 FORGPREP                         R4
       56 GETTABLEKS                       R9 R1 K2 ["Time"]
       58 GETTABLEKS                       R10 R8 K2 ["Time"]
       60 JUMPIFNOTEQ                      R9 R10 ; [+6]
       62 GETTABLEKS                       R9 R1 K2 ["Time"]
       64 SUBK                             R9 R9 K13 [0.001]
       65 SETTABLEKS                       R9 R1 K2 ["Time"]
       67 GETTABLEKS                       R9 R1 K2 ["Time"]
       69 LOADK                            R10 K3 [0.01]
       70 JUMPIFLT                         R9 R10 ; [+6]
       72 GETTABLEKS                       R9 R1 K2 ["Time"]
       74 LOADK                            R10 K4 [0.99]
       75 JUMPIFNOTLT                      R10 R9 ; [+2]
       77 RETURN                           R0 1
       78 GETTABLEKS                       R9 R1 K2 ["Time"]
       80 GETTABLEKS                       R10 R8 K2 ["Time"]
       82 JUMPIFNOTLT                      R9 R10 ; [+12]
       84 MOVE                             R3 R7
       85 GETTABLEKS                       R10 R2 K0 ["Keypoints"]
       87 FASTCALL3                        TABLE_INSERT R10 R3 R1
       89 MOVE                             R11 R3
       90 MOVE                             R12 R1
       91 GETIMPORT                        R9 K16 [table.insert]
       93 CALL                             R9 3 0
       94 JUMP                             ; [+2]
       95 FORGLOOP                         R4 2 ; [-40]
       97 SETTABLEKS                       R3 R2 K17 ["Selected"]
       99 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Keypoints"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K3 [table.remove]
        6 MOVE                             R3 R1
        7 GETTABLEKS                       R4 R0 K4 ["Selected"]
        9 CALL                             R2 2 0
       10 DUPTABLE                         R2 K5 [{"Keypoints", "Selected"}]
       11 SETTABLEKS                       R1 R2 K0 ["Keypoints"]
       13 GETTABLEKS                       R4 R0 K4 ["Selected"]
       15 SUBK                             R3 R4 K6 [1]
       16 SETTABLEKS                       R3 R2 K4 ["Selected"]
       18 RETURN                           R2 1

PROTO_5:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["Selected"]
        3 JUMPIFEQKN                       R2 K1 [1] ; [+10]
        5 GETTABLEKS                       R2 R0 K0 ["Selected"]
        7 GETTABLEKS                       R4 R0 K2 ["Keypoints"]
        9 LENGTH                           R3 R4
       10 JUMPIFEQ                         R2 R3 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"Selected"}]
        3 SETTABLEKS                       R1 R4 K0 ["Selected"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["Keypoints"]
        2 GETTABLEKS                       R3 R0 K1 ["Selected"]
        4 GETTABLE                         R1 R2 R3
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Dash"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["join"]
       20 GETTABLEKS                       R3 R1 K8 ["joinDeep"]
       22 GETTABLEKS                       R4 R1 K9 ["copy"]
       24 GETIMPORT                        R5 K4 [require]
       26 GETTABLEKS                       R8 R0 K10 ["Src"]
       28 GETTABLEKS                       R7 R8 K11 ["Util"]
       30 GETTABLEKS                       R6 R7 K12 ["roundDecimal"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K4 [require]
       35 GETTABLEKS                       R10 R0 K10 ["Src"]
       37 GETTABLEKS                       R9 R10 K13 ["Renderers"]
       39 GETTABLEKS                       R8 R9 K14 ["SequenceRenderers"]
       41 GETTABLEKS                       R7 R8 K15 ["Types"]
       43 CALL                             R6 1 1
       44 NEWTABLE                         R7 8 0
       46 LOADN                            R8 20
       47 SETTABLEKS                       R8 R7 K16 ["MAX_KEYPOINT_COUNT"]
       49 DUPCLOSURE                       R8 K17 [PROTO_1]
       50 SETTABLEKS                       R8 R7 K18 ["updateIndexMut"]
       52 DUPCLOSURE                       R8 K19 [PROTO_2]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R7
       56 SETTABLEKS                       R8 R7 K20 ["updateSelected"]
       58 DUPCLOSURE                       R8 K21 [PROTO_3]
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R4
       63 SETTABLEKS                       R8 R7 K22 ["add"]
       65 DUPCLOSURE                       R8 K23 [PROTO_4]
       66 CAPTURE                          VAL R4
       67 SETTABLEKS                       R8 R7 K24 ["removeSelected"]
       69 DUPCLOSURE                       R8 K25 [PROTO_5]
       70 SETTABLEKS                       R8 R7 K26 ["isFixedKeypointSelected"]
       72 DUPCLOSURE                       R8 K27 [PROTO_6]
       73 CAPTURE                          VAL R3
       74 SETTABLEKS                       R8 R7 K28 ["select"]
       76 DUPCLOSURE                       R8 K29 [PROTO_7]
       77 SETTABLEKS                       R8 R7 K30 ["selectedKeypoint"]
       79 RETURN                           R7 1
