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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["keyDown"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["keyUp"]
        9 MOVE                             R4 R0
       10 MOVE                             R5 R2
       11 CALL                             R3 2 0
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K2 ["awaitDeferAsync"]
       15 CALL                             R3 0 0
       16 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["mouseEnter"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["awaitDeferAsync"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["queryByTestId"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 LOADK                            R6 K1 ["Text box '%*' not found"]
        6 MOVE                             R8 R1
        7 NAMECALL                         R6 R6 K2 ["format"]
        9 CALL                             R6 2 1
       10 CALL                             R3 3 1
       11 LOADK                            R7 K3 ["TextBox"]
       12 NAMECALL                         R5 R3 K4 ["IsA"]
       14 CALL                             R5 2 1
       15 LOADK                            R6 K5 ["Expected '%*' to be a TextBox"]
       16 MOVE                             R8 R1
       17 NAMECALL                         R6 R6 K2 ["format"]
       19 CALL                             R6 2 1
       20 FASTCALL2                        ASSERT R5 R6 ; [+3]
       22 GETIMPORT                        R4 K7 [assert]
       24 CALL                             R4 2 0
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K8 ["click"]
       28 MOVE                             R5 R3
       29 CALL                             R4 1 0
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K9 ["change"]
       33 MOVE                             R5 R3
       34 DUPTABLE                         R6 K11 [{"target"}]
       35 DUPTABLE                         R7 K13 [{"Text"}]
       36 SETTABLEKS                       R2 R7 K12 ["Text"]
       38 SETTABLEKS                       R7 R6 K10 ["target"]
       40 CALL                             R4 2 0
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R4 R4 K14 ["awaitDeferAsync"]
       44 CALL                             R4 0 0
       45 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["queryByTestId"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["queryAllByTestId"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_19:
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

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["CreateDefaultPlayerModule"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["CreateDefaultPlayerModule"]
        7 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_21]
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K1 ["awaitDeferAsync"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StarterPlayer"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StylingService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["InputActionManager"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R2 K11 ["Packages"]
       30 GETTABLEKS                       R5 R5 K13 ["Dev"]
       32 GETTABLEKS                       R5 R5 K14 ["ReactTestingLibrary"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R6 R2 K15 ["Src"]
       39 GETTABLEKS                       R6 R6 K16 ["Types"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R2 K15 ["Src"]
       46 GETTABLEKS                       R7 R7 K17 ["Util"]
       48 GETTABLEKS                       R7 R7 K18 ["Test"]
       50 GETTABLEKS                       R7 R7 K19 ["Mock"]
       52 GETTABLEKS                       R7 R7 K20 ["mockNetworking"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R4 K21 ["act"]
       57 GETTABLEKS                       R8 R4 K22 ["fireEvent"]
       59 NEWTABLE                         R9 32 0
       61 DUPCLOSURE                       R10 K23 [PROTO_0]
       62 SETTABLEKS                       R10 R9 K24 ["awaitDeferAsync"]
       64 DUPCLOSURE                       R10 K25 [PROTO_1]
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R9
       67 SETTABLEKS                       R10 R9 K21 ["act"]
       69 DUPCLOSURE                       R10 K26 [PROTO_3]
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R9
       72 SETTABLEKS                       R10 R9 K27 ["fireDataModelTypeChanged"]
       74 DUPCLOSURE                       R10 K28 [PROTO_5]
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R9
       77 SETTABLEKS                       R10 R9 K29 ["fireStateChange"]
       79 DUPCLOSURE                       R10 K30 [PROTO_7]
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R1
       82 SETTABLEKS                       R10 R9 K31 ["updateStyling"]
       84 DUPCLOSURE                       R10 K32 [PROTO_8]
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R9
       87 SETTABLEKS                       R10 R9 K33 ["click"]
       89 DUPCLOSURE                       R10 K34 [PROTO_9]
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R9
       92 SETTABLEKS                       R10 R9 K35 ["contextMenu"]
       94 DUPCLOSURE                       R10 K36 [PROTO_10]
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R9
       97 SETTABLEKS                       R10 R9 K37 ["change"]
       99 DUPCLOSURE                       R10 K38 [PROTO_11]
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R9
      102 SETTABLEKS                       R10 R9 K39 ["keyDown"]
      104 DUPCLOSURE                       R10 K40 [PROTO_12]
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R9
      107 SETTABLEKS                       R10 R9 K41 ["keyUp"]
      109 DUPCLOSURE                       R10 K42 [PROTO_13]
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R9
      112 SETTABLEKS                       R10 R9 K43 ["keyPress"]
      114 DUPCLOSURE                       R10 K44 [PROTO_14]
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R9
      117 SETTABLEKS                       R10 R9 K45 ["mouseEnter"]
      119 DUPCLOSURE                       R10 K46 [PROTO_15]
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R8
      122 SETTABLEKS                       R10 R9 K47 ["setText"]
      124 DUPCLOSURE                       R10 K48 [PROTO_16]
      125 CAPTURE                          VAL R4
      126 SETTABLEKS                       R10 R9 K49 ["tryQueryByTestId"]
      128 DUPCLOSURE                       R10 K50 [PROTO_17]
      129 CAPTURE                          VAL R9
      130 SETTABLEKS                       R10 R9 K51 ["queryByTestId"]
      132 DUPCLOSURE                       R10 K52 [PROTO_18]
      133 CAPTURE                          VAL R4
      134 SETTABLEKS                       R10 R9 K53 ["queryAllByTestId"]
      136 DUPCLOSURE                       R10 K54 [PROTO_19]
      137 CAPTURE                          VAL R4
      138 SETTABLEKS                       R10 R9 K55 ["queryByText"]
      140 DUPCLOSURE                       R10 K56 [PROTO_20]
      141 CAPTURE                          VAL R4
      142 SETTABLEKS                       R10 R9 K57 ["getAllByText"]
      144 DUPCLOSURE                       R10 K58 [PROTO_22]
      145 CAPTURE                          VAL R7
      146 CAPTURE                          VAL R0
      147 CAPTURE                          VAL R9
      148 SETTABLEKS                       R10 R9 K59 ["toggleCreateDefaultPlayerModule"]
      150 RETURN                           R9 1
