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
        1 LOADK                            R2 K0 ["DataModelTypeChanged"]
        2 LOADNIL                          R3
        3 GETUPVAL                         R4 1
        4 NAMECALL                         R0 R0 K1 ["FireGuest"]
        6 CALL                             R0 4 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 FASTCALL2K                       ASSERT R1 K1 ; [+5]
        6 MOVE                             R3 R1
        7 LOADK                            R4 K1 ["Networking should exist"]
        8 GETIMPORT                        R2 K3 [assert]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K4 ["act"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R0
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["StateChange"]
        2 LOADNIL                          R3
        3 GETUPVAL                         R4 1
        4 GETUPVAL                         R5 2
        5 NAMECALL                         R0 R0 K1 ["FireGuest"]
        7 CALL                             R0 5 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["get"]
        3 CALL                             R2 0 1
        4 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        6 MOVE                             R4 R2
        7 LOADK                            R5 K1 ["Networking should exist"]
        8 GETIMPORT                        R3 K3 [assert]
       10 CALL                             R3 2 0
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K4 ["act"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 CALL                             R3 1 0
       19 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["act"]
        3 DUPCLOSURE                       R1 K1 [PROTO_6]
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["awaitDeferAsync"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["click"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["awaitDeferAsync"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["contextMenu"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["awaitDeferAsync"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["change"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["awaitDeferAsync"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["keyDown"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["awaitDeferAsync"]
        9 CALL                             R2 0 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["keyUp"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["awaitDeferAsync"]
        9 CALL                             R2 0 0
       10 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["mouseEnter"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["awaitDeferAsync"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["queryByTestId"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["tryQueryByTestId"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 MOVE                             R6 R2
        7 JUMPIF                           R6 ; [+5]
        8 LOADK                            R6 K1 ["Element with test id '%*' not found"]
        9 MOVE                             R8 R1
       10 NAMECALL                         R6 R6 K2 ["format"]
       12 CALL                             R6 2 1
       13 FASTCALL2                        ASSERT R3 R6 ; [+4]
       15 MOVE                             R5 R3
       16 GETIMPORT                        R4 K4 [assert]
       18 CALL                             R4 2 0
       19 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["queryAllByTestId"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["queryByText"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 MOVE                             R6 R2
        7 JUMPIF                           R6 ; [+5]
        8 LOADK                            R6 K1 ["Element with text '%*' not found"]
        9 MOVE                             R8 R1
       10 NAMECALL                         R6 R6 K2 ["format"]
       12 CALL                             R6 2 1
       13 FASTCALL2                        ASSERT R3 R6 ; [+4]
       15 MOVE                             R5 R3
       16 GETIMPORT                        R4 K4 [assert]
       18 CALL                             R4 2 0
       19 RETURN                           R3 1

PROTO_18:
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
       13 JUMPIF                           R6 ; [+5]
       14 LOADK                            R6 K1 ["No elements with text '%*' found"]
       15 MOVE                             R8 R1
       16 NAMECALL                         R6 R6 K2 ["format"]
       18 CALL                             R6 2 1
       19 FASTCALL2                        ASSERT R5 R6 ; [+3]
       21 GETIMPORT                        R4 K4 [assert]
       23 CALL                             R4 2 0
       24 RETURN                           R3 1

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
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K14 ["Src"]
       33 GETTABLEKS                       R5 R5 K15 ["Types"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K14 ["Src"]
       40 GETTABLEKS                       R6 R6 K16 ["Util"]
       42 GETTABLEKS                       R6 R6 K17 ["Test"]
       44 GETTABLEKS                       R6 R6 K18 ["Mock"]
       46 GETTABLEKS                       R6 R6 K19 ["mockNetworking"]
       48 CALL                             R5 1 1
       49 GETTABLEKS                       R6 R3 K20 ["act"]
       51 GETTABLEKS                       R7 R3 K21 ["fireEvent"]
       53 NEWTABLE                         R8 16 0
       55 DUPCLOSURE                       R9 K22 [PROTO_0]
       56 SETTABLEKS                       R9 R8 K23 ["awaitDeferAsync"]
       58 DUPCLOSURE                       R9 K24 [PROTO_1]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R8
       61 SETTABLEKS                       R9 R8 K20 ["act"]
       63 DUPCLOSURE                       R9 K25 [PROTO_3]
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R8
       66 SETTABLEKS                       R9 R8 K26 ["fireDataModelTypeChanged"]
       68 DUPCLOSURE                       R9 K27 [PROTO_5]
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R8
       71 SETTABLEKS                       R9 R8 K28 ["fireStateChange"]
       73 DUPCLOSURE                       R9 K29 [PROTO_7]
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R0
       76 SETTABLEKS                       R9 R8 K30 ["updateStyling"]
       78 DUPCLOSURE                       R9 K31 [PROTO_8]
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R8
       81 SETTABLEKS                       R9 R8 K32 ["click"]
       83 DUPCLOSURE                       R9 K33 [PROTO_9]
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R8
       86 SETTABLEKS                       R9 R8 K34 ["contextMenu"]
       88 DUPCLOSURE                       R9 K35 [PROTO_10]
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R8
       91 SETTABLEKS                       R9 R8 K36 ["change"]
       93 DUPCLOSURE                       R9 K37 [PROTO_11]
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R8
       96 SETTABLEKS                       R9 R8 K38 ["keyDown"]
       98 DUPCLOSURE                       R9 K39 [PROTO_12]
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R8
      101 SETTABLEKS                       R9 R8 K40 ["keyUp"]
      103 DUPCLOSURE                       R9 K41 [PROTO_13]
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R8
      106 SETTABLEKS                       R9 R8 K42 ["mouseEnter"]
      108 DUPCLOSURE                       R9 K43 [PROTO_14]
      109 CAPTURE                          VAL R3
      110 SETTABLEKS                       R9 R8 K44 ["tryQueryByTestId"]
      112 DUPCLOSURE                       R9 K45 [PROTO_15]
      113 CAPTURE                          VAL R8
      114 SETTABLEKS                       R9 R8 K46 ["queryByTestId"]
      116 DUPCLOSURE                       R9 K47 [PROTO_16]
      117 CAPTURE                          VAL R3
      118 SETTABLEKS                       R9 R8 K48 ["queryAllByTestId"]
      120 DUPCLOSURE                       R9 K49 [PROTO_17]
      121 CAPTURE                          VAL R3
      122 SETTABLEKS                       R9 R8 K50 ["queryByText"]
      124 DUPCLOSURE                       R9 K51 [PROTO_18]
      125 CAPTURE                          VAL R3
      126 SETTABLEKS                       R9 R8 K52 ["getAllByText"]
      128 RETURN                           R8 1
