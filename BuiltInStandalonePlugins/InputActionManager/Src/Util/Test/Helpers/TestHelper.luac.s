PROTO_0:
        0 GETIMPORT                        R0 K2 [task.defer]
        2 GETIMPORT                        R1 K5 [coroutine.resume]
        4 GETIMPORT                        R2 K7 [coroutine.running]
        6 CALL                             R2 0 -1
        7 CALL                             R0 -1 0
        8 GETIMPORT                        R0 K9 [coroutine.yield]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["awaitDeferAsync"]
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["act"]
        3 DUPCLOSURE                       R1 K1 [PROTO_2]
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["awaitDeferAsync"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["click"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["awaitDeferAsync"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["contextMenu"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["awaitDeferAsync"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["change"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["awaitDeferAsync"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["keyDown"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["awaitDeferAsync"]
        9 CALL                             R2 0 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["keyUp"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["awaitDeferAsync"]
        9 CALL                             R2 0 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["mouseEnter"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["awaitDeferAsync"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["queryByTestId"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["tryQueryByTestId"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 MOVE                             R6 R2
        7 JUMPIF                           R6 ; [+6]
        8 LOADK                            R7 K1 ["Element with test id '%*' not found"]
        9 MOVE                             R9 R1
       10 NAMECALL                         R7 R7 K2 ["format"]
       12 CALL                             R7 2 1
       13 MOVE                             R6 R7
       14 FASTCALL2                        ASSERT R3 R6 ; [+4]
       16 MOVE                             R5 R3
       17 GETIMPORT                        R4 K4 [assert]
       19 CALL                             R4 2 0
       20 RETURN                           R3 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["queryAllByTestId"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["queryByText"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 MOVE                             R6 R2
        7 JUMPIF                           R6 ; [+6]
        8 LOADK                            R7 K1 ["Element with text '%*' not found"]
        9 MOVE                             R9 R1
       10 NAMECALL                         R7 R7 K2 ["format"]
       12 CALL                             R7 2 1
       13 MOVE                             R6 R7
       14 FASTCALL2                        ASSERT R3 R6 ; [+4]
       16 MOVE                             R5 R3
       17 GETIMPORT                        R4 K4 [assert]
       19 CALL                             R4 2 0
       20 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getAllByText"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 LENGTH                           R6 R3
        7 LOADN                            R7 0
        8 JUMPIFLT                         R7 R6 ; [+2]
       10 LOADB                            R5 0 +1
       11 LOADB                            R5 1
       12 MOVE                             R6 R2
       13 JUMPIF                           R6 ; [+6]
       14 LOADK                            R7 K1 ["No elements with text '%*' found"]
       15 MOVE                             R9 R1
       16 NAMECALL                         R7 R7 K2 ["format"]
       18 CALL                             R7 2 1
       19 MOVE                             R6 R7
       20 FASTCALL2                        ASSERT R5 R6 ; [+3]
       22 GETIMPORT                        R4 K4 [assert]
       24 CALL                             R4 2 0
       25 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StylingService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["InputActionManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Dev"]
       26 GETTABLEKS                       R4 R4 K13 ["ReactTestingLibrary"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K14 ["act"]
       31 GETTABLEKS                       R5 R3 K15 ["fireEvent"]
       33 NEWTABLE                         R6 16 0
       35 DUPCLOSURE                       R7 K16 [PROTO_0]
       36 SETTABLEKS                       R7 R6 K17 ["awaitDeferAsync"]
       38 DUPCLOSURE                       R7 K18 [PROTO_1]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R6
       41 SETTABLEKS                       R7 R6 K14 ["act"]
       43 DUPCLOSURE                       R7 K19 [PROTO_3]
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R7 R6 K20 ["updateStyling"]
       48 DUPCLOSURE                       R7 K21 [PROTO_4]
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R6
       51 SETTABLEKS                       R7 R6 K22 ["click"]
       53 DUPCLOSURE                       R7 K23 [PROTO_5]
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 SETTABLEKS                       R7 R6 K24 ["contextMenu"]
       58 DUPCLOSURE                       R7 K25 [PROTO_6]
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R6
       61 SETTABLEKS                       R7 R6 K26 ["change"]
       63 DUPCLOSURE                       R7 K27 [PROTO_7]
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R6
       66 SETTABLEKS                       R7 R6 K28 ["keyDown"]
       68 DUPCLOSURE                       R7 K29 [PROTO_8]
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R6
       71 SETTABLEKS                       R7 R6 K30 ["keyUp"]
       73 DUPCLOSURE                       R7 K31 [PROTO_9]
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R6
       76 SETTABLEKS                       R7 R6 K32 ["mouseEnter"]
       78 DUPCLOSURE                       R7 K33 [PROTO_10]
       79 CAPTURE                          VAL R3
       80 SETTABLEKS                       R7 R6 K34 ["tryQueryByTestId"]
       82 DUPCLOSURE                       R7 K35 [PROTO_11]
       83 CAPTURE                          VAL R6
       84 SETTABLEKS                       R7 R6 K36 ["queryByTestId"]
       86 DUPCLOSURE                       R7 K37 [PROTO_12]
       87 CAPTURE                          VAL R3
       88 SETTABLEKS                       R7 R6 K38 ["queryAllByTestId"]
       90 DUPCLOSURE                       R7 K39 [PROTO_13]
       91 CAPTURE                          VAL R3
       92 SETTABLEKS                       R7 R6 K40 ["queryByText"]
       94 DUPCLOSURE                       R7 K41 [PROTO_14]
       95 CAPTURE                          VAL R3
       96 SETTABLEKS                       R7 R6 K42 ["getAllByText"]
       98 RETURN                           R6 1
