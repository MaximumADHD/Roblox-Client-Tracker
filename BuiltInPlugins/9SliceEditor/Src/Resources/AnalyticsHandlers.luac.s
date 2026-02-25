PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["NextNumber"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 DIVK                             R2 R3 K1 [10000]
        6 JUMPIFLT                         R1 R2 ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["NextNumber"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R4 1
        5 DIVK                             R3 R4 K1 [10000]
        6 JUMPIFLT                         R2 R3 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 JUMPIFNOT                        R1 ; [+6]
       11 GETUPVAL                         R1 2
       12 MOVE                             R3 R0
       13 LOADN                            R4 1
       14 NAMECALL                         R1 R1 K2 ["ReportCounter"]
       16 CALL                             R1 3 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["NextNumber"]
        3 CALL                             R3 1 1
        4 GETUPVAL                         R5 1
        5 DIVK                             R4 R5 K1 [10000]
        6 JUMPIFLT                         R3 R4 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 JUMPIFNOT                        R2 ; [+6]
       11 GETUPVAL                         R2 2
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 NAMECALL                         R2 R2 K2 ["ReportStats"]
       16 CALL                             R2 3 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["NextNumber"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 DIVK                             R2 R3 K1 [10000]
        6 JUMPIFLT                         R1 R2 ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 JUMPIFNOT                        R0 ; [+6]
       11 GETUPVAL                         R0 2
       12 LOADK                            R2 K2 ["Studio9SliceEditorOpened"]
       13 LOADN                            R3 1
       14 NAMECALL                         R0 R0 K3 ["ReportCounter"]
       16 CALL                             R0 3 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["NextNumber"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 DIVK                             R2 R3 K1 [10000]
        6 JUMPIFLT                         R1 R2 ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 JUMPIFNOT                        R0 ; [+6]
       11 GETUPVAL                         R0 2
       12 LOADK                            R2 K2 ["Studio9SliceEditorImageLoadedIntoEditor"]
       13 LOADN                            R3 1
       14 NAMECALL                         R0 R0 K3 ["ReportCounter"]
       16 CALL                             R0 3 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["NextNumber"]
        3 CALL                             R3 1 1
        4 GETUPVAL                         R5 1
        5 DIVK                             R4 R5 K1 [10000]
        6 JUMPIFLT                         R3 R4 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 JUMPIFNOT                        R2 ; [+6]
       11 GETUPVAL                         R2 2
       12 LOADK                            R4 K2 ["Studio9SliceEditorOpenTime"]
       13 MOVE                             R5 R1
       14 NAMECALL                         R2 R2 K3 ["ReportStats"]
       16 CALL                             R2 3 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [Random.new]
        2 CALL                             R1 0 1
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U0
        6 NEWCLOSURE                       R3 P1
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 NEWCLOSURE                       R4 P2
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R0
       14 DUPTABLE                         R5 K6 [{"sliceEditorOpened", "sliceEditorImageLoadedIntoEditor", "sliceEditorOpenTime"}]
       15 NEWCLOSURE                       R6 P3
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R6 R5 K3 ["sliceEditorOpened"]
       21 NEWCLOSURE                       R6 P4
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R6 R5 K4 ["sliceEditorImageLoadedIntoEditor"]
       27 NEWCLOSURE                       R6 P5
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R6 R5 K5 ["sliceEditorOpenTime"]
       33 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["9SliceEditorAnalyticsReportingHundrethsPercent"]
        4 NAMECALL                         R0 R0 K3 ["GetFastInt"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_6]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
