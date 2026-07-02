PROTO_0:
        0 NEWTABLE                         R0 0 1
        2 GETUPVAL                         R1 0
        3 SETLIST                          R0 R1 1 [1]
        5 RETURN                           R0 1

PROTO_1:
        0 LOADN                            R1 1
        1 JUMPIFNOTLT                      R1 R0 ; [+2]
        3 RETURN                           R0 1
        4 GETUPVAL                         R2 0
        5 MUL                              R1 R0 R2
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["Disconnect"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 GETUPVAL                         R0 1
       15 LOADN                            R1 0
       16 SETTABLEKS                       R1 R0 K0 ["current"]
       18 GETUPVAL                         R0 2
       19 LOADB                            R1 0
       20 SETTABLEKS                       R1 R0 K0 ["current"]
       22 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 JUMPIF                           R1 ; [+3]
        8 GETUPVAL                         R1 2
        9 CALL                             R1 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K0 ["current"]
       14 GETTABLEKS                       R1 R1 K1 ["CanvasPosition"]
       16 GETTABLEKS                       R1 R1 K2 ["Y"]
       18 GETUPVAL                         R3 3
       19 SUB                              R2 R3 R1
       20 MULK                             R4 R2 K3 [18]
       21 MULK                             R3 R4 K3 [18]
       22 GETUPVAL                         R6 4
       23 SUB                              R5 R1 R6
       24 DIV                              R4 R5 R0
       25 GETUPVAL                         R5 5
       26 GETTABLEKS                       R6 R5 K0 ["current"]
       28 SUB                              R6 R6 R4
       29 SETTABLEKS                       R6 R5 K0 ["current"]
       31 GETUPVAL                         R9 5
       32 GETTABLEKS                       R9 R9 K0 ["current"]
       34 MINUS                            R8 R9
       35 MULK                             R7 R8 K5 [2]
       36 MULK                             R6 R7 K4 [0.9]
       37 MULK                             R5 R6 K3 [18]
       38 ADD                              R6 R3 R5
       39 FASTCALL2K                       MATH_MIN R0 K6 ; [+5]
       41 MOVE                             R8 R0
       42 LOADK                            R9 K6 [0.0333333333333333]
       43 GETIMPORT                        R7 K9 [math.min]
       45 CALL                             R7 2 1
       46 GETUPVAL                         R8 5
       47 GETUPVAL                         R10 5
       48 GETTABLEKS                       R10 R10 K0 ["current"]
       50 MUL                              R11 R6 R7
       51 ADD                              R9 R10 R11
       52 SETTABLEKS                       R9 R8 K0 ["current"]
       54 GETUPVAL                         R10 5
       55 GETTABLEKS                       R10 R10 K0 ["current"]
       57 MUL                              R9 R10 R7
       58 ADD                              R8 R1 R9
       59 GETUPVAL                         R9 0
       60 GETTABLEKS                       R9 R9 K0 ["current"]
       62 GETIMPORT                        R10 K12 [Vector2.new]
       64 LOADN                            R11 0
       65 MOVE                             R12 R8
       66 CALL                             R10 2 1
       67 SETTABLEKS                       R10 R9 K1 ["CanvasPosition"]
       69 GETUPVAL                         R10 6
       70 GETTABLEKS                       R10 R10 K13 ["FoundationSheetBottomSheetAutoSize"]
       72 JUMPIFNOT                        R10 ; [+8]
       73 GETUPVAL                         R9 0
       74 GETTABLEKS                       R9 R9 K0 ["current"]
       76 GETTABLEKS                       R9 R9 K1 ["CanvasPosition"]
       78 GETTABLEKS                       R9 R9 K2 ["Y"]
       80 JUMP                             ; [+1]
       81 MOVE                             R9 R8
       82 SETUPVAL                         R9 4
       83 LOADB                            R9 0
       84 FASTCALL1                        MATH_ABS R2 ; [+3]
       85 MOVE                             R11 R2
       86 GETIMPORT                        R10 K15 [math.abs]
       88 CALL                             R10 1 1
       89 LOADK                            R11 K16 [0.5]
       90 JUMPIFNOTLT                      R10 R11 ; [+13]
       92 GETUPVAL                         R11 5
       93 GETTABLEKS                       R11 R11 K0 ["current"]
       95 FASTCALL1                        MATH_ABS R11 ; [+2]
       96 GETIMPORT                        R10 K15 [math.abs]
       98 CALL                             R10 1 1
       99 LOADN                            R11 1
      100 JUMPIFLT                         R10 R11 ; [+2]
      102 LOADB                            R9 0 +1
      103 LOADB                            R9 1
      104 JUMPIFNOT                        R9 ; [+12]
      105 GETUPVAL                         R10 0
      106 GETTABLEKS                       R10 R10 K0 ["current"]
      108 GETIMPORT                        R11 K12 [Vector2.new]
      110 LOADN                            R12 0
      111 GETUPVAL                         R13 3
      112 CALL                             R11 2 1
      113 SETTABLEKS                       R11 R10 K1 ["CanvasPosition"]
      115 GETUPVAL                         R10 2
      116 CALL                             R10 0 0
      117 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 LOADB                            R2 1
        4 SETTABLEKS                       R2 R1 K0 ["current"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K0 ["current"]
        9 JUMPIFNOT                        R2 ; [+8]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K0 ["current"]
       13 GETTABLEKS                       R1 R1 K1 ["CanvasPosition"]
       15 GETTABLEKS                       R1 R1 K2 ["Y"]
       17 JUMP                             ; [+1]
       18 LOADN                            R1 0
       19 GETUPVAL                         R2 3
       20 GETIMPORT                        R3 K4 [game]
       22 LOADK                            R5 K5 ["RunService"]
       23 NAMECALL                         R3 R3 K6 ["GetService"]
       25 CALL                             R3 2 1
       26 GETTABLEKS                       R3 R3 K7 ["Heartbeat"]
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          VAL R0
       33 CAPTURE                          REF R1
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U5
       36 NAMECALL                         R3 R3 K8 ["Connect"]
       38 CALL                             R3 2 1
       39 SETTABLEKS                       R3 R2 K0 ["current"]
       41 CLOSEUPVALS                      R1
       42 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 ADD                              R1 R2 R3
        5 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R4 3
        6 GETTABLE                         R3 R4 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K0 ["current"]
        9 MINUS                            R1 R2
       10 SETTABLEKS                       R1 R0 K0 ["current"]
       12 GETUPVAL                         R0 3
       13 LOADN                            R1 0
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 4
       16 GETUPVAL                         R1 5
       17 GETTABLEKS                       R1 R1 K1 ["ease"]
       19 LOADN                            R2 1
       20 DUPTABLE                         R3 K3 [{"duration"}]
       21 GETUPVAL                         R4 6
       22 GETTABLEKS                       R4 R4 K4 ["Time"]
       24 GETTABLEKS                       R4 R4 K5 ["Time_100"]
       26 SETTABLEKS                       R4 R3 K2 ["duration"]
       28 CALL                             R1 2 -1
       29 CALL                             R0 -1 0
       30 GETUPVAL                         R0 0
       31 LOADB                            R1 1
       32 SETTABLEKS                       R1 R0 K0 ["current"]
       34 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getValue"]
        3 CALL                             R1 1 1
        4 LOADN                            R2 0
        5 JUMPIFLE                         R1 R2 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K1 ["current"]
       12 GETUPVAL                         R5 2
       13 GETUPVAL                         R6 3
       14 ADD                              R4 R5 R6
       15 FASTCALL1                        MATH_ROUND R4 ; [+2]
       16 GETIMPORT                        R3 K4 [math.round]
       18 CALL                             R3 1 1
       19 JUMPIFLE                         R3 R2 ; [+2]
       21 LOADB                            R1 0 +1
       22 LOADB                            R1 1
       23 GETUPVAL                         R2 4
       24 GETTABLEKS                       R2 R2 K1 ["current"]
       26 LOADN                            R3 0
       27 JUMPIFNOTLT                      R3 R2 ; [+10]
       29 JUMPIFNOT                        R0 ; [+8]
       30 GETUPVAL                         R2 5
       31 GETTABLEKS                       R2 R2 K1 ["current"]
       33 JUMPIFNOT                        R2 ; [+4]
       34 GETUPVAL                         R2 6
       35 LOADB                            R3 0
       36 CALL                             R2 1 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R2 4
       39 GETTABLEKS                       R2 R2 K1 ["current"]
       41 LOADN                            R3 0
       42 JUMPIFNOTLT                      R2 R3 ; [+5]
       44 JUMPIFNOT                        R1 ; [+3]
       45 GETUPVAL                         R2 6
       46 LOADB                            R3 1
       47 CALL                             R2 1 0
       48 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R5 R0 K0 ["position"]
        2 GETUPVAL                         R6 0
        3 SUB                              R4 R5 R6
        4 FASTCALL1                        MATH_ABS R4 ; [+2]
        5 GETIMPORT                        R3 K3 [math.abs]
        7 CALL                             R3 1 1
        8 GETTABLEKS                       R6 R1 K0 ["position"]
       10 GETUPVAL                         R7 0
       11 SUB                              R5 R6 R7
       12 FASTCALL1                        MATH_ABS R5 ; [+2]
       13 GETIMPORT                        R4 K3 [math.abs]
       15 CALL                             R4 1 1
       16 JUMPIFLT                         R3 R4 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 DIVK                             R2 R0 K1 [2.35]
        7 SUB                              R3 R1 R2
        8 NEWTABLE                         R4 0 1
       10 DUPTABLE                         R5 K5 [{["index"] = 0, ["position"] = 0}]
       11 SETLIST                          R4 R5 1 [1]
       13 GETUPVAL                         R5 2
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 DUPTABLE                         R12 K6 [{"index", "position"}]
       18 SETTABLEKS                       R8 R12 K2 ["index"]
       20 GETUPVAL                         R13 3
       21 MOVE                             R14 R9
       22 CALL                             R13 1 1
       23 SETTABLEKS                       R13 R12 K4 ["position"]
       25 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       27 MOVE                             R11 R4
       28 GETIMPORT                        R10 K9 [table.insert]
       30 CALL                             R10 2 0
       31 FORGLOOP                         R5 2 ; [-15]
       33 GETIMPORT                        R5 K11 [table.sort]
       35 MOVE                             R6 R4
       36 NEWCLOSURE                       R7 P0
       37 CAPTURE                          VAL R3
       38 CALL                             R5 2 0
       39 GETTABLEN                        R5 R4 1
       40 GETUPVAL                         R6 4
       41 GETTABLEKS                       R6 R6 K0 ["current"]
       43 JUMPIF                           R6 ; [+15]
       44 GETUPVAL                         R6 5
       45 MINUS                            R7 R0
       46 SETTABLEKS                       R7 R6 K0 ["current"]
       48 GETTABLEKS                       R6 R5 K2 ["index"]
       50 JUMPIFNOTEQKN                    R6 K3 [0] ; [+4]
       52 GETUPVAL                         R6 6
       53 CALL                             R6 0 0
       54 RETURN                           R0 0
       55 GETUPVAL                         R6 7
       56 GETTABLEKS                       R7 R5 K2 ["index"]
       58 CALL                             R6 1 0
       59 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+36]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["defaultSnapPointIndex"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R1 3
        8 GETUPVAL                         R3 4
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K0 ["defaultSnapPointIndex"]
       12 GETTABLE                         R2 R3 R4
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 5
       15 JUMPIFEQ                         R1 R2 ; [+2]
       17 LOADB                            R0 0 +1
       18 LOADB                            R0 1
       19 JUMPIFNOT                        R0 ; [+3]
       20 GETUPVAL                         R1 6
       21 LOADB                            R2 1
       22 CALL                             R1 1 0
       23 GETUPVAL                         R1 7
       24 GETUPVAL                         R2 8
       25 GETTABLEKS                       R2 R2 K1 ["ease"]
       27 LOADN                            R3 0
       28 DUPTABLE                         R4 K3 [{"duration"}]
       29 GETUPVAL                         R5 9
       30 GETTABLEKS                       R5 R5 K4 ["Time"]
       32 GETTABLEKS                       R5 R5 K5 ["Time_100"]
       34 SETTABLEKS                       R5 R4 K2 ["duration"]
       36 CALL                             R2 2 -1
       37 CALL                             R1 -1 0
       38 NEWCLOSURE                       R0 P0
       39 CAPTURE                          UPVAL U10
       40 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R2 K0 ["Y"]
        3 SETTABLEKS                       R5 R4 K1 ["current"]
        5 GETUPVAL                         R4 1
        6 CALL                             R4 0 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADN                            R1 0
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 GETUPVAL                         R0 2
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKB                    R0 FALSE ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 GETUPVAL                         R1 1
       11 NAMECALL                         R1 R1 K1 ["getValue"]
       13 CALL                             R1 1 1
       14 JUMPIFNOT                        R1 ; [+13]
       15 LOADB                            R0 1
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R1 R1 K0 ["current"]
       19 GETUPVAL                         R4 3
       20 GETUPVAL                         R5 4
       21 ADD                              R3 R4 R5
       22 FASTCALL1                        MATH_ROUND R3 ; [+2]
       23 GETIMPORT                        R2 K4 [math.round]
       25 CALL                             R2 1 1
       26 JUMPIFLE                         R2 R1 ; [+4]
       28 GETUPVAL                         R0 5
       29 GETTABLEKS                       R0 R0 K0 ["current"]
       31 JUMPIFNOT                        R0 ; [+1]
       32 RETURN                           R0 0
       33 GETUPVAL                         R1 6
       34 CALL                             R1 0 0
       35 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UserInputService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETTABLEKS                       R0 R0 K4 ["TouchPan"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 NAMECALL                         R0 R0 K5 ["Connect"]
       13 CALL                             R0 2 1
       14 GETIMPORT                        R1 K1 [game]
       16 LOADK                            R3 K2 ["UserInputService"]
       17 NAMECALL                         R1 R1 K3 ["GetService"]
       19 CALL                             R1 2 1
       20 GETTABLEKS                       R1 R1 K6 ["InputBegan"]
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U3
       26 NAMECALL                         R1 R1 K5 ["Connect"]
       28 CALL                             R1 2 1
       29 GETIMPORT                        R2 K1 [game]
       31 LOADK                            R4 K2 ["UserInputService"]
       32 NAMECALL                         R2 R2 K3 ["GetService"]
       34 CALL                             R2 2 1
       35 GETTABLEKS                       R2 R2 K7 ["InputEnded"]
       37 NEWCLOSURE                       R4 P2
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          UPVAL U7
       43 CAPTURE                          UPVAL U8
       44 CAPTURE                          UPVAL U9
       45 NAMECALL                         R2 R2 K5 ["Connect"]
       47 CALL                             R2 2 1
       48 NEWCLOSURE                       R3 P3
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R2
       52 RETURN                           R3 1

PROTO_19:
        0 DUPTABLE                         R0 K1 [{"close"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["close"]
        4 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 0
        5 RETURN                           R0 0

PROTO_21:
        0 DUPTABLE                         R0 K18 [{[1], ["setActionsHeight"], ["hasActionsDivider"], ["setHasActionsDivider"], ["sheetHeightAvailable"], ["setSheetHeightAvailable"], ["safeAreaPadding"], ["bottomPadding"] = 200, ["innerScrollingEnabled"], ["innerScrollY"], ["setInnerScrollY"], ["hasHeader"], ["setHasHeader"], ["closeSheet"], ["sheetType"], ["innerSurface"], ["testId"]}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["actionsHeight"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setActionsHeight"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["hasActionsDivider"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["setHasActionsDivider"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["sheetHeightAvailable"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["setSheetHeightAvailable"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["safeAreaPadding"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K9 ["innerScrollingEnabled"]
       25 GETUPVAL                         R1 8
       26 SETTABLEKS                       R1 R0 K10 ["innerScrollY"]
       28 NEWCLOSURE                       R1 P0
       29 CAPTURE                          UPVAL U9
       30 CAPTURE                          UPVAL U10
       31 SETTABLEKS                       R1 R0 K11 ["setInnerScrollY"]
       33 GETUPVAL                         R1 11
       34 SETTABLEKS                       R1 R0 K12 ["hasHeader"]
       36 GETUPVAL                         R1 12
       37 SETTABLEKS                       R1 R0 K13 ["setHasHeader"]
       39 GETUPVAL                         R1 13
       40 SETTABLEKS                       R1 R0 K14 ["closeSheet"]
       42 GETUPVAL                         R1 14
       43 GETTABLEKS                       R1 R1 K19 ["Bottom"]
       45 SETTABLEKS                       R1 R0 K15 ["sheetType"]
       47 GETUPVAL                         R1 15
       48 SETTABLEKS                       R1 R0 K16 ["innerSurface"]
       50 GETUPVAL                         R1 16
       51 GETTABLEKS                       R1 R1 K17 ["testId"]
       53 SETTABLEKS                       R1 R0 K17 ["testId"]
       55 RETURN                           R0 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["CanvasPosition"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 SETTABLEKS                       R2 R1 K2 ["current"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["current"]
       11 GETUPVAL                         R5 2
       12 SUB                              R3 R4 R5
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K3 ["Margin"]
       16 GETTABLEKS                       R4 R4 K4 ["Small"]
       18 SUB                              R2 R3 R4
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 4
       21 CALL                             R1 0 0
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K2 ["current"]
       25 LOADN                            R2 0
       26 JUMPIFNOTLE                      R1 R2 ; [+3]
       28 GETUPVAL                         R1 5
       29 CALL                             R1 0 0
       30 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K1 ["AbsoluteSize"]
        3 GETTABLEKS                       R3 R3 K2 ["Y"]
        5 SUBK                             R2 R3 K0 [200]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["FoundationSheetBottomSheetAutoSize"]
        7 JUMPIFNOT                        R0 ; [+5]
        8 GETUPVAL                         R1 2
        9 LENGTH                           R0 R1
       10 LOADN                            R1 1
       11 JUMPIFNOTLT                      R1 R0 ; [+12]
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R2 R2 K0 ["current"]
       16 GETUPVAL                         R4 2
       17 LENGTH                           R3 R4
       18 MOD                              R1 R2 R3
       19 ADDK                             R0 R1 K2 [1]
       20 GETUPVAL                         R1 4
       21 MOVE                             R2 R0
       22 CALL                             R1 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R0 5
       25 CALL                             R0 0 0
       26 RETURN                           R0 0

PROTO_25:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["Color"]
        4 GETTABLEKS                       R2 R2 K4 ["Common"]
        6 GETTABLEKS                       R2 R2 K5 ["Backdrop"]
        8 GETTABLEKS                       R2 R2 K0 ["Color3"]
       10 SETTABLEKS                       R2 R1 K0 ["Color3"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["Color"]
       15 GETTABLEKS                       R3 R3 K4 ["Common"]
       17 GETTABLEKS                       R3 R3 K5 ["Backdrop"]
       19 GETTABLEKS                       R3 R3 K1 ["Transparency"]
       21 LOADN                            R4 1
       22 FASTCALL3                        MATH_LERP R3 R4 R0
       24 MOVE                             R5 R0
       25 GETIMPORT                        R2 K8 [math.lerp]
       27 CALL                             R2 3 1
       28 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       30 RETURN                           R1 1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 4
        9 GETUPVAL                         R6 5
       10 GETTABLEKS                       R6 R6 K0 ["Sheet"]
       12 DUPTABLE                         R7 K3 [{["relativeToOwner"] = False}]
       13 CALL                             R5 2 1
       14 GETUPVAL                         R6 6
       15 CALL                             R6 0 1
       16 LOADNIL                          R7
       17 LOADNIL                          R8
       18 GETUPVAL                         R9 7
       19 GETTABLEKS                       R9 R9 K4 ["FoundationSheetBottomSheetAutoSize"]
       21 JUMPIFNOT                        R9 ; [+7]
       22 GETUPVAL                         R9 8
       23 GETTABLEKS                       R9 R9 K5 ["useState"]
       25 LOADN                            R10 0
       26 CALL                             R9 1 2
       27 MOVE                             R7 R9
       28 MOVE                             R8 R10
       29 GETUPVAL                         R10 7
       30 GETTABLEKS                       R10 R10 K4 ["FoundationSheetBottomSheetAutoSize"]
       32 JUMPIFNOT                        R10 ; [+12]
       33 GETUPVAL                         R9 8
       34 GETTABLEKS                       R9 R9 K6 ["useMemo"]
       36 NEWCLOSURE                       R10 P0
       37 CAPTURE                          REF R7
       38 NEWTABLE                         R11 0 1
       40 MOVE                             R12 R7
       41 SETLIST                          R11 R12 1 [1]
       43 CALL                             R9 2 1
       44 JUMP                             ; [+1]
       45 LOADNIL                          R9
       46 GETUPVAL                         R10 7
       47 GETTABLEKS                       R10 R10 K4 ["FoundationSheetBottomSheetAutoSize"]
       49 JUMPIF                           R10 ; [+8]
       50 GETTABLEKS                       R10 R2 K7 ["snapPoints"]
       52 JUMPIFNOTEQKNIL                  R10 ; [+5]
       54 GETIMPORT                        R10 K9 [warn]
       56 LOADK                            R11 K10 ["snapPoints is required until FFlagFoundationSheetBottomSheetAutoSize is enabled"]
       57 CALL                             R10 1 0
       58 GETTABLEKS                       R11 R2 K7 ["snapPoints"]
       60 OR                               R10 R11 R9
       61 GETUPVAL                         R11 8
       62 GETTABLEKS                       R11 R11 K11 ["useCallback"]
       64 NEWCLOSURE                       R12 P1
       65 CAPTURE                          VAL R6
       66 NEWTABLE                         R13 0 1
       68 MOVE                             R14 R6
       69 SETLIST                          R13 R14 1 [1]
       71 CALL                             R11 2 1
       72 LOADN                            R12 0
       73 MOVE                             R13 R10
       74 LOADNIL                          R14
       75 LOADNIL                          R15
       76 FORGPREP                         R13
       77 MOVE                             R18 R11
       78 MOVE                             R19 R17
       79 CALL                             R18 1 1
       80 JUMPIFNOTLT                      R12 R18 ; [+2]
       82 MOVE                             R12 R18
       83 FORGLOOP                         R13 2 ; [-7]
       85 FASTCALL2                        MATH_MIN R12 R6 ; [+5]
       87 MOVE                             R14 R12
       88 MOVE                             R15 R6
       89 GETIMPORT                        R13 K14 [math.min]
       91 CALL                             R13 2 1
       92 MOVE                             R12 R13
       93 GETUPVAL                         R13 9
       94 MOVE                             R14 R3
       95 CALL                             R13 1 1
       96 GETTABLEKS                       R13 R13 K15 ["bottom"]
       98 GETUPVAL                         R14 8
       99 GETTABLEKS                       R14 R14 K16 ["useRef"]
      101 LOADN                            R15 0
      102 CALL                             R14 1 1
      103 GETUPVAL                         R15 8
      104 GETTABLEKS                       R15 R15 K16 ["useRef"]
      106 LOADB                            R16 0
      107 CALL                             R15 1 1
      108 GETUPVAL                         R16 10
      109 LOADN                            R17 1
      110 NEWCLOSURE                       R18 P2
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R2
      113 CALL                             R16 2 2
      114 GETUPVAL                         R18 8
      115 GETTABLEKS                       R18 R18 K17 ["useBinding"]
      117 MINUS                            R19 R13
      118 CALL                             R18 1 2
      119 GETUPVAL                         R20 8
      120 GETTABLEKS                       R20 R20 K17 ["useBinding"]
      122 LOADN                            R21 0
      123 CALL                             R20 1 2
      124 GETUPVAL                         R22 8
      125 GETTABLEKS                       R22 R22 K17 ["useBinding"]
      127 LOADB                            R23 0
      128 CALL                             R22 1 2
      129 GETUPVAL                         R24 8
      130 GETTABLEKS                       R24 R24 K17 ["useBinding"]
      132 LOADB                            R25 0
      133 CALL                             R24 1 2
      134 GETUPVAL                         R26 8
      135 GETTABLEKS                       R26 R26 K16 ["useRef"]
      137 LOADN                            R27 0
      138 CALL                             R26 1 1
      139 GETUPVAL                         R27 8
      140 GETTABLEKS                       R27 R27 K16 ["useRef"]
      142 LOADNIL                          R28
      143 CALL                             R27 1 1
      144 GETUPVAL                         R28 8
      145 GETTABLEKS                       R28 R28 K17 ["useBinding"]
      147 LOADN                            R29 0
      148 CALL                             R28 1 2
      149 GETUPVAL                         R30 8
      150 GETTABLEKS                       R30 R30 K17 ["useBinding"]
      152 LOADB                            R31 0
      153 CALL                             R30 1 2
      154 GETUPVAL                         R32 8
      155 GETTABLEKS                       R32 R32 K16 ["useRef"]
      157 LOADB                            R33 0
      158 CALL                             R32 1 1
      159 GETUPVAL                         R33 8
      160 GETTABLEKS                       R33 R33 K16 ["useRef"]
      162 LOADN                            R34 0
      163 CALL                             R33 1 1
      164 GETUPVAL                         R34 8
      165 GETTABLEKS                       R34 R34 K16 ["useRef"]
      167 LOADNIL                          R35
      168 CALL                             R34 1 1
      169 GETUPVAL                         R35 8
      170 GETTABLEKS                       R35 R35 K16 ["useRef"]
      172 LOADB                            R36 0
      173 CALL                             R35 1 1
      174 GETUPVAL                         R36 8
      175 GETTABLEKS                       R36 R36 K16 ["useRef"]
      177 LOADN                            R37 0
      178 CALL                             R36 1 1
      179 GETUPVAL                         R37 8
      180 GETTABLEKS                       R37 R37 K11 ["useCallback"]
      182 NEWCLOSURE                       R38 P3
      183 CAPTURE                          VAL R34
      184 CAPTURE                          VAL R33
      185 CAPTURE                          VAL R35
      186 NEWTABLE                         R39 0 0
      188 CALL                             R37 2 1
      189 GETUPVAL                         R38 8
      190 GETTABLEKS                       R38 R38 K11 ["useCallback"]
      192 NEWCLOSURE                       R39 P4
      193 CAPTURE                          VAL R37
      194 CAPTURE                          VAL R35
      195 CAPTURE                          VAL R27
      196 CAPTURE                          VAL R34
      197 CAPTURE                          VAL R36
      198 CAPTURE                          UPVAL U7
      199 NEWTABLE                         R40 0 1
      201 MOVE                             R41 R37
      202 SETLIST                          R40 R41 1 [1]
      204 CALL                             R38 2 1
      205 GETUPVAL                         R39 8
      206 GETTABLEKS                       R39 R39 K11 ["useCallback"]
      208 NEWCLOSURE                       R40 P5
      209 CAPTURE                          VAL R11
      210 CAPTURE                          VAL R13
      211 NEWTABLE                         R41 0 2
      213 MOVE                             R42 R13
      214 MOVE                             R43 R11
      215 SETLIST                          R41 R42 2 [1]
      217 CALL                             R39 2 1
      218 GETUPVAL                         R40 8
      219 GETTABLEKS                       R40 R40 K11 ["useCallback"]
      221 NEWCLOSURE                       R41 P6
      222 CAPTURE                          VAL R14
      223 CAPTURE                          VAL R38
      224 CAPTURE                          VAL R39
      225 CAPTURE                          VAL R10
      226 NEWTABLE                         R42 0 2
      228 MOVE                             R43 R39
      229 MOVE                             R44 R10
      230 SETLIST                          R42 R43 2 [1]
      232 CALL                             R40 2 1
      233 GETUPVAL                         R41 8
      234 GETTABLEKS                       R41 R41 K11 ["useCallback"]
      236 NEWCLOSURE                       R42 P7
      237 CAPTURE                          VAL R15
      238 CAPTURE                          VAL R36
      239 CAPTURE                          VAL R33
      240 CAPTURE                          VAL R38
      241 CAPTURE                          VAL R17
      242 CAPTURE                          UPVAL U11
      243 CAPTURE                          VAL R4
      244 NEWTABLE                         R43 0 1
      246 MOVE                             R44 R38
      247 SETLIST                          R43 R44 1 [1]
      249 CALL                             R41 2 1
      250 GETUPVAL                         R42 8
      251 GETTABLEKS                       R42 R42 K11 ["useCallback"]
      253 NEWCLOSURE                       R43 P8
      254 CAPTURE                          VAL R28
      255 CAPTURE                          VAL R26
      256 CAPTURE                          REF R12
      257 CAPTURE                          VAL R13
      258 CAPTURE                          VAL R33
      259 CAPTURE                          VAL R32
      260 CAPTURE                          VAL R31
      261 NEWTABLE                         R44 0 2
      263 MOVE                             R45 R12
      264 MOVE                             R46 R13
      265 SETLIST                          R44 R45 2 [1]
      267 CALL                             R42 2 1
      268 GETUPVAL                         R43 8
      269 GETTABLEKS                       R43 R43 K11 ["useCallback"]
      271 NEWCLOSURE                       R44 P9
      272 CAPTURE                          VAL R33
      273 CAPTURE                          VAL R26
      274 CAPTURE                          VAL R10
      275 CAPTURE                          VAL R39
      276 CAPTURE                          VAL R32
      277 CAPTURE                          VAL R36
      278 CAPTURE                          VAL R41
      279 CAPTURE                          VAL R40
      280 NEWTABLE                         R45 0 4
      282 MOVE                             R46 R10
      283 MOVE                             R47 R40
      284 MOVE                             R48 R39
      285 MOVE                             R49 R41
      286 SETLIST                          R45 R46 4 [1]
      288 CALL                             R43 2 1
      289 GETUPVAL                         R44 8
      290 GETTABLEKS                       R44 R44 K18 ["useEffect"]
      292 NEWCLOSURE                       R45 P10
      293 CAPTURE                          VAL R3
      294 CAPTURE                          VAL R40
      295 CAPTURE                          VAL R2
      296 CAPTURE                          VAL R11
      297 CAPTURE                          VAL R10
      298 CAPTURE                          REF R12
      299 CAPTURE                          VAL R31
      300 CAPTURE                          VAL R17
      301 CAPTURE                          UPVAL U11
      302 CAPTURE                          VAL R4
      303 CAPTURE                          VAL R37
      304 NEWTABLE                         R46 0 5
      306 MOVE                             R47 R3
      307 MOVE                             R48 R10
      308 GETTABLEKS                       R49 R2 K19 ["defaultSnapPointIndex"]
      310 MOVE                             R50 R40
      311 MOVE                             R51 R11
      312 SETLIST                          R46 R47 5 [1]
      314 CALL                             R44 2 0
      315 GETUPVAL                         R44 8
      316 GETTABLEKS                       R44 R44 K18 ["useEffect"]
      318 NEWCLOSURE                       R45 P11
      319 CAPTURE                          VAL R33
      320 CAPTURE                          VAL R42
      321 CAPTURE                          VAL R32
      322 CAPTURE                          VAL R37
      323 CAPTURE                          VAL R30
      324 CAPTURE                          VAL R26
      325 CAPTURE                          REF R12
      326 CAPTURE                          VAL R13
      327 CAPTURE                          VAL R15
      328 CAPTURE                          VAL R43
      329 NEWTABLE                         R46 0 4
      331 MOVE                             R47 R3
      332 MOVE                             R48 R43
      333 MOVE                             R49 R42
      334 MOVE                             R50 R37
      335 SETLIST                          R46 R47 4 [1]
      337 CALL                             R44 2 0
      338 GETUPVAL                         R44 8
      339 GETTABLEKS                       R44 R44 K5 ["useState"]
      341 LOADNIL                          R45
      342 CALL                             R44 1 2
      343 GETUPVAL                         R46 12
      344 GETTABLEKS                       R46 R46 K20 ["useComposedRef"]
      346 MOVE                             R47 R1
      347 MOVE                             R48 R45
      348 CALL                             R46 2 1
      349 GETUPVAL                         R47 8
      350 GETTABLEKS                       R47 R47 K21 ["useImperativeHandle"]
      352 GETTABLEKS                       R48 R2 K22 ["sheetRef"]
      354 NEWCLOSURE                       R49 P12
      355 CAPTURE                          VAL R41
      356 NEWTABLE                         R50 0 0
      358 CALL                             R47 3 0
      359 GETUPVAL                         R47 8
      360 GETTABLEKS                       R47 R47 K6 ["useMemo"]
      362 NEWCLOSURE                       R48 P13
      363 CAPTURE                          VAL R20
      364 CAPTURE                          VAL R21
      365 CAPTURE                          VAL R22
      366 CAPTURE                          VAL R23
      367 CAPTURE                          VAL R18
      368 CAPTURE                          VAL R19
      369 CAPTURE                          VAL R13
      370 CAPTURE                          VAL R30
      371 CAPTURE                          VAL R28
      372 CAPTURE                          VAL R29
      373 CAPTURE                          VAL R42
      374 CAPTURE                          VAL R24
      375 CAPTURE                          VAL R25
      376 CAPTURE                          VAL R41
      377 CAPTURE                          UPVAL U13
      378 CAPTURE                          VAL R44
      379 CAPTURE                          VAL R2
      380 NEWTABLE                         R49 0 5
      382 GETTABLEKS                       R50 R2 K23 ["testId"]
      384 MOVE                             R51 R41
      385 MOVE                             R52 R13
      386 MOVE                             R53 R42
      387 MOVE                             R54 R44
      388 SETLIST                          R49 R50 5 [1]
      390 CALL                             R47 2 1
      391 MOVE                             R48 R3
      392 JUMPIFNOT                        R48 ; [+406]
      393 GETUPVAL                         R48 14
      394 GETTABLEKS                       R48 R48 K24 ["createPortal"]
      396 GETUPVAL                         R49 8
      397 GETTABLEKS                       R49 R49 K25 ["createElement"]
      399 GETUPVAL                         R50 15
      400 DUPTABLE                         R51 K32 [{["ZIndex"], ["ref"], ["selection"], ["selectionGroup"], ["tag"] = "size-full", ["testId"]}]
      401 GETTABLEKS                       R52 R5 K33 ["zIndex"]
      403 SETTABLEKS                       R52 R51 K26 ["ZIndex"]
      405 SETTABLEKS                       R46 R51 K27 ["ref"]
      407 GETUPVAL                         R52 16
      408 GETTABLEKS                       R52 R52 K34 ["nonSelectable"]
      410 SETTABLEKS                       R52 R51 K28 ["selection"]
      412 GETUPVAL                         R52 16
      413 GETTABLEKS                       R52 R52 K35 ["isolatedSelectionGroup"]
      415 SETTABLEKS                       R52 R51 K29 ["selectionGroup"]
      417 LOADK                            R53 K36 ["%*--surface"]
      418 GETTABLEKS                       R55 R2 K23 ["testId"]
      420 NAMECALL                         R53 R53 K37 ["format"]
      422 CALL                             R53 2 1
      423 MOVE                             R52 R53
      424 SETTABLEKS                       R52 R51 K23 ["testId"]
      426 GETUPVAL                         R52 8
      427 GETTABLEKS                       R52 R52 K25 ["createElement"]
      429 LOADK                            R53 K38 ["ScrollingFrame"]
      430 NEWTABLE                         R54 8 0
      432 GETIMPORT                        R55 K41 [UDim2.fromScale]
      434 LOADN                            R56 1
      435 LOADN                            R57 1
      436 CALL                             R55 2 1
      437 SETTABLEKS                       R55 R54 K42 ["Size"]
      439 GETIMPORT                        R55 K44 [UDim2.new]
      441 LOADN                            R56 1
      442 LOADN                            R57 0
      443 LOADN                            R58 0
      444 ADD                              R60 R6 R12
      445 ADD                              R59 R60 R13
      446 CALL                             R55 4 1
      447 SETTABLEKS                       R55 R54 K45 ["CanvasSize"]
      449 LOADB                            R55 0
      450 SETTABLEKS                       R55 R54 K46 ["ClipsDescendants"]
      452 LOADN                            R55 1
      453 SETTABLEKS                       R55 R54 K47 ["BackgroundTransparency"]
      455 GETIMPORT                        R55 K51 [Enum.ScrollingDirection.Y]
      457 SETTABLEKS                       R55 R54 K49 ["ScrollingDirection"]
      459 LOADN                            R55 0
      460 SETTABLEKS                       R55 R54 K52 ["ScrollBarThickness"]
      462 SETTABLEKS                       R27 R54 K27 ["ref"]
      464 GETUPVAL                         R55 8
      465 GETTABLEKS                       R55 R55 K53 ["Change"]
      467 GETTABLEKS                       R55 R55 K54 ["CanvasPosition"]
      469 NEWCLOSURE                       R56 P14
      470 CAPTURE                          VAL R26
      471 CAPTURE                          VAL R19
      472 CAPTURE                          VAL R13
      473 CAPTURE                          VAL R4
      474 CAPTURE                          VAL R42
      475 CAPTURE                          VAL R41
      476 SETTABLE                         R56 R54 R55
      477 DUPTABLE                         R55 K58 [{"SheetContainer", "Shadow", "Backdrop"}]
      478 GETUPVAL                         R56 8
      479 GETTABLEKS                       R56 R56 K25 ["createElement"]
      481 GETUPVAL                         R58 7
      482 GETTABLEKS                       R58 R58 K4 ["FoundationSheetBottomSheetAutoSize"]
      484 JUMPIFNOT                        R58 ; [+2]
      485 GETUPVAL                         R57 15
      486 JUMP                             ; [+3]
      487 GETUPVAL                         R57 8
      488 GETTABLEKS                       R57 R57 K59 ["Fragment"]
      490 GETUPVAL                         R59 7
      491 GETTABLEKS                       R59 R59 K4 ["FoundationSheetBottomSheetAutoSize"]
      493 JUMPIFNOT                        R59 ; [+18]
      494 DUPTABLE                         R58 K62 [{["Size"], ["Position"], ["ZIndex"] = 3}]
      495 GETIMPORT                        R59 K44 [UDim2.new]
      497 LOADN                            R60 1
      498 LOADN                            R61 0
      499 LOADN                            R62 0
      500 ADDK                             R63 R6 K63 [200]
      501 CALL                             R59 4 1
      502 SETTABLEKS                       R59 R58 K42 ["Size"]
      504 GETIMPORT                        R59 K65 [UDim2.fromOffset]
      506 LOADN                            R60 0
      507 ADD                              R61 R6 R13
      508 CALL                             R59 2 1
      509 SETTABLEKS                       R59 R58 K60 ["Position"]
      511 JUMP                             ; [+1]
      512 LOADNIL                          R58
      513 DUPTABLE                         R59 K66 [{"Sheet"}]
      514 GETUPVAL                         R60 8
      515 GETTABLEKS                       R60 R60 K25 ["createElement"]
      517 GETUPVAL                         R61 15
      518 DUPTABLE                         R62 K72 [{["Size"], ["AutomaticSize"], ["onAbsoluteSizeChanged"], ["Position"], ["ZIndex"], ["stateLayer"], ["onActivated"], ["testId"], ["tag"] = "bg-surface-100 radius-large col items-center clip padding-top-small"}]
      519 GETUPVAL                         R64 7
      520 GETTABLEKS                       R64 R64 K4 ["FoundationSheetBottomSheetAutoSize"]
      522 JUMPIFNOT                        R64 ; [+10]
      523 GETTABLEKS                       R64 R2 K7 ["snapPoints"]
      525 JUMPIFNOTEQKNIL                  R64 ; [+7]
      527 GETIMPORT                        R63 K41 [UDim2.fromScale]
      529 LOADN                            R64 1
      530 LOADN                            R65 0
      531 CALL                             R63 2 1
      532 JUMP                             ; [+7]
      533 GETIMPORT                        R63 K44 [UDim2.new]
      535 LOADN                            R64 1
      536 LOADN                            R65 0
      537 LOADN                            R66 0
      538 ADDK                             R67 R12 K63 [200]
      539 CALL                             R63 4 1
      540 SETTABLEKS                       R63 R62 K42 ["Size"]
      542 GETUPVAL                         R64 7
      543 GETTABLEKS                       R64 R64 K4 ["FoundationSheetBottomSheetAutoSize"]
      545 JUMPIFNOT                        R64 ; [+7]
      546 GETTABLEKS                       R64 R2 K7 ["snapPoints"]
      548 JUMPIFNOTEQKNIL                  R64 ; [+4]
      550 GETIMPORT                        R63 K73 [Enum.AutomaticSize.Y]
      552 JUMP                             ; [+1]
      553 LOADNIL                          R63
      554 SETTABLEKS                       R63 R62 K67 ["AutomaticSize"]
      556 GETUPVAL                         R64 7
      557 GETTABLEKS                       R64 R64 K4 ["FoundationSheetBottomSheetAutoSize"]
      559 JUMPIFNOT                        R64 ; [+7]
      560 GETTABLEKS                       R64 R2 K7 ["snapPoints"]
      562 JUMPIFNOTEQKNIL                  R64 ; [+4]
      564 NEWCLOSURE                       R63 P15
      565 CAPTURE                          REF R8
      566 JUMP                             ; [+1]
      567 LOADNIL                          R63
      568 SETTABLEKS                       R63 R62 K68 ["onAbsoluteSizeChanged"]
      570 GETUPVAL                         R64 7
      571 GETTABLEKS                       R64 R64 K4 ["FoundationSheetBottomSheetAutoSize"]
      573 JUMPIFNOT                        R64 ; [+2]
      574 LOADNIL                          R63
      575 JUMP                             ; [+5]
      576 GETIMPORT                        R63 K65 [UDim2.fromOffset]
      578 LOADN                            R64 0
      579 ADD                              R65 R6 R13
      580 CALL                             R63 2 1
      581 SETTABLEKS                       R63 R62 K60 ["Position"]
      583 GETUPVAL                         R64 7
      584 GETTABLEKS                       R64 R64 K4 ["FoundationSheetBottomSheetAutoSize"]
      586 JUMPIFNOT                        R64 ; [+2]
      587 LOADNIL                          R63
      588 JUMP                             ; [+1]
      589 LOADN                            R63 3
      590 SETTABLEKS                       R63 R62 K26 ["ZIndex"]
      592 DUPTABLE                         R63 K75 [{"affordance"}]
      593 GETUPVAL                         R64 17
      594 GETTABLEKS                       R64 R64 K76 ["None"]
      596 SETTABLEKS                       R64 R63 K74 ["affordance"]
      598 SETTABLEKS                       R63 R62 K69 ["stateLayer"]
      600 GETUPVAL                         R63 18
      601 GETTABLEKS                       R63 R63 K77 ["noop"]
      603 SETTABLEKS                       R63 R62 K70 ["onActivated"]
      605 GETTABLEKS                       R63 R2 K23 ["testId"]
      607 SETTABLEKS                       R63 R62 K23 ["testId"]
      609 DUPTABLE                         R63 K80 [{"Gripper", "Content"}]
      610 GETUPVAL                         R64 8
      611 GETTABLEKS                       R64 R64 K25 ["createElement"]
      613 GETUPVAL                         R65 15
      614 DUPTABLE                         R66 K83 [{["ZIndex"] = 3, ["backgroundStyle"], ["tag"] = "padding-y-small size-1000-100 radius-small align-y-center", ["testId"]}]
      615 GETTABLEKS                       R67 R4 K84 ["Color"]
      617 GETTABLEKS                       R67 R67 K79 ["Content"]
      619 GETTABLEKS                       R67 R67 K85 ["Muted"]
      621 SETTABLEKS                       R67 R66 K81 ["backgroundStyle"]
      623 LOADK                            R68 K86 ["%*--gripper"]
      624 GETTABLEKS                       R70 R2 K23 ["testId"]
      626 NAMECALL                         R68 R68 K37 ["format"]
      628 CALL                             R68 2 1
      629 MOVE                             R67 R68
      630 SETTABLEKS                       R67 R66 K23 ["testId"]
      632 DUPTABLE                         R67 K88 [{"TouchTarget"}]
      633 GETUPVAL                         R68 8
      634 GETTABLEKS                       R68 R68 K25 ["createElement"]
      636 GETUPVAL                         R69 15
      637 DUPTABLE                         R70 K90 [{["tag"] = "size-1000-600", ["stateLayer"], ["onActivated"]}]
      638 DUPTABLE                         R71 K75 [{"affordance"}]
      639 GETUPVAL                         R72 17
      640 GETTABLEKS                       R72 R72 K76 ["None"]
      642 SETTABLEKS                       R72 R71 K74 ["affordance"]
      644 SETTABLEKS                       R71 R70 K69 ["stateLayer"]
      646 NEWCLOSURE                       R71 P16
      647 CAPTURE                          VAL R32
      648 CAPTURE                          UPVAL U7
      649 CAPTURE                          VAL R10
      650 CAPTURE                          VAL R14
      651 CAPTURE                          VAL R40
      652 CAPTURE                          VAL R41
      653 SETTABLEKS                       R71 R70 K70 ["onActivated"]
      655 CALL                             R68 2 1
      656 SETTABLEKS                       R68 R67 K87 ["TouchTarget"]
      658 CALL                             R64 3 1
      659 SETTABLEKS                       R64 R63 K78 ["Gripper"]
      661 GETUPVAL                         R64 8
      662 GETTABLEKS                       R64 R64 K25 ["createElement"]
      664 GETUPVAL                         R65 19
      665 GETTABLEKS                       R65 R65 K91 ["Provider"]
      667 DUPTABLE                         R66 K93 [{"value"}]
      668 SETTABLEKS                       R47 R66 K92 ["value"]
      670 GETUPVAL                         R67 8
      671 GETTABLEKS                       R67 R67 K25 ["createElement"]
      673 GETUPVAL                         R68 20
      674 DUPTABLE                         R69 K95 [{"owner"}]
      675 SETTABLEKS                       R5 R69 K94 ["owner"]
      677 GETTABLEKS                       R70 R2 K96 ["children"]
      679 CALL                             R67 3 -1
      680 CALL                             R64 -1 1
      681 SETTABLEKS                       R64 R63 K79 ["Content"]
      683 CALL                             R60 3 1
      684 SETTABLEKS                       R60 R59 K0 ["Sheet"]
      686 CALL                             R56 3 1
      687 SETTABLEKS                       R56 R55 K55 ["SheetContainer"]
      689 GETUPVAL                         R56 8
      690 GETTABLEKS                       R56 R56 K25 ["createElement"]
      692 GETUPVAL                         R57 21
      693 DUPTABLE                         R58 K101 [{["Image"], ["Size"], ["Position"], ["ZIndex"] = 2, ["slice"], ["imageStyle"]}]
      694 GETUPVAL                         R59 22
      695 SETTABLEKS                       R59 R58 K97 ["Image"]
      697 GETIMPORT                        R59 K44 [UDim2.new]
      699 LOADN                            R60 1
      700 GETUPVAL                         R62 23
      701 MULK                             R61 R62 K98 [2]
      702 LOADN                            R62 0
      703 ADDK                             R64 R12 K63 [200]
      704 GETUPVAL                         R66 23
      705 MULK                             R65 R66 K98 [2]
      706 ADD                              R63 R64 R65
      707 CALL                             R59 4 1
      708 SETTABLEKS                       R59 R58 K42 ["Size"]
      710 GETIMPORT                        R59 K65 [UDim2.fromOffset]
      712 GETUPVAL                         R61 23
      713 MINUS                            R60 R61
      714 ADD                              R62 R6 R13
      715 GETUPVAL                         R63 23
      716 SUB                              R61 R62 R63
      717 CALL                             R59 2 1
      718 SETTABLEKS                       R59 R58 K60 ["Position"]
      720 DUPTABLE                         R59 K104 [{["center"], ["scale"] = 2}]
      721 GETIMPORT                        R60 K106 [Rect.new]
      723 GETUPVAL                         R61 23
      724 GETUPVAL                         R62 23
      725 GETUPVAL                         R64 23
      726 ADDK                             R63 R64 K107 [1]
      727 GETUPVAL                         R65 23
      728 ADDK                             R64 R65 K107 [1]
      729 CALL                             R60 4 1
      730 SETTABLEKS                       R60 R59 K102 ["center"]
      732 SETTABLEKS                       R59 R58 K99 ["slice"]
      734 GETTABLEKS                       R59 R4 K84 ["Color"]
      736 GETTABLEKS                       R59 R59 K108 ["Extended"]
      738 GETTABLEKS                       R59 R59 K109 ["Black"]
      740 GETTABLEKS                       R59 R59 K110 ["Black_10"]
      742 SETTABLEKS                       R59 R58 K100 ["imageStyle"]
      744 CALL                             R56 2 1
      745 SETTABLEKS                       R56 R55 K56 ["Shadow"]
      747 GETUPVAL                         R56 8
      748 GETTABLEKS                       R56 R56 K25 ["createElement"]
      750 GETUPVAL                         R57 15
      751 DUPTABLE                         R58 K111 [{["Size"], ["Position"], ["ZIndex"] = 1, ["stateLayer"], ["backgroundStyle"], ["onActivated"], ["testId"]}]
      752 GETIMPORT                        R59 K41 [UDim2.fromScale]
      754 LOADN                            R60 1
      755 LOADN                            R61 2
      756 CALL                             R59 2 1
      757 SETTABLEKS                       R59 R58 K42 ["Size"]
      759 GETIMPORT                        R59 K41 [UDim2.fromScale]
      761 LOADN                            R60 0
      762 LOADK                            R61 K112 [-0.5]
      763 CALL                             R59 2 1
      764 SETTABLEKS                       R59 R58 K60 ["Position"]
      766 DUPTABLE                         R59 K75 [{"affordance"}]
      767 GETUPVAL                         R60 17
      768 GETTABLEKS                       R60 R60 K76 ["None"]
      770 SETTABLEKS                       R60 R59 K74 ["affordance"]
      772 SETTABLEKS                       R59 R58 K69 ["stateLayer"]
      774 NEWCLOSURE                       R61 P17
      775 CAPTURE                          VAL R4
      776 NAMECALL                         R59 R16 K113 ["map"]
      778 CALL                             R59 2 1
      779 SETTABLEKS                       R59 R58 K81 ["backgroundStyle"]
      781 SETTABLEKS                       R41 R58 K70 ["onActivated"]
      783 LOADK                            R60 K114 ["%*--backdrop"]
      784 GETTABLEKS                       R62 R2 K23 ["testId"]
      786 NAMECALL                         R60 R60 K37 ["format"]
      788 CALL                             R60 2 1
      789 MOVE                             R59 R60
      790 SETTABLEKS                       R59 R58 K23 ["testId"]
      792 CALL                             R56 2 1
      793 SETTABLEKS                       R56 R55 K57 ["Backdrop"]
      795 CALL                             R52 3 -1
      796 CALL                             R49 -1 1
      797 MOVE                             R50 R3
      798 CALL                             R48 2 1
      799 CLOSEUPVALS                      R7
      800 RETURN                           R48 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Otter"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactOtter"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R1 K11 ["ReactRoblox"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K6 [require]
       36 GETTABLEKS                       R8 R1 K12 ["ReactUtils"]
       38 CALL                             R7 1 1
       39 GETTABLEKS                       R8 R5 K13 ["useAnimatedBinding"]
       41 GETIMPORT                        R9 K6 [require]
       43 GETTABLEKS                       R10 R0 K14 ["Enums"]
       45 GETTABLEKS                       R10 R10 K15 ["StateLayerAffordance"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R11 R0 K16 ["Providers"]
       52 GETTABLEKS                       R11 R11 K17 ["Elevation"]
       54 GETTABLEKS                       R11 R11 K18 ["useElevation"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETTABLEKS                       R12 R0 K16 ["Providers"]
       61 GETTABLEKS                       R12 R12 K19 ["Overlay"]
       63 GETTABLEKS                       R12 R12 K20 ["useOverlay"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K6 [require]
       68 GETTABLEKS                       R13 R0 K16 ["Providers"]
       70 GETTABLEKS                       R13 R13 K21 ["Style"]
       72 GETTABLEKS                       R13 R13 K22 ["useTokens"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K6 [require]
       77 GETTABLEKS                       R14 R0 K23 ["Utility"]
       79 GETTABLEKS                       R14 R14 K24 ["withDefaults"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K6 [require]
       84 GETTABLEKS                       R15 R0 K16 ["Providers"]
       86 GETTABLEKS                       R15 R15 K17 ["Elevation"]
       88 GETTABLEKS                       R15 R15 K25 ["ElevationProvider"]
       90 CALL                             R14 1 1
       91 GETTABLEKS                       R14 R14 K26 ["ElevationOwnerScope"]
       93 GETIMPORT                        R15 K6 [require]
       95 GETTABLEKS                       R16 R0 K14 ["Enums"]
       97 GETTABLEKS                       R16 R16 K27 ["ElevationLayer"]
       99 CALL                             R15 1 1
      100 GETIMPORT                        R16 K6 [require]
      102 GETTABLEKS                       R17 R0 K28 ["Constants"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K6 [require]
      107 GETIMPORT                        R18 K1 [script]
      109 GETTABLEKS                       R18 R18 K4 ["Parent"]
      111 GETTABLEKS                       R18 R18 K29 ["SheetContext"]
      113 CALL                             R17 1 1
      114 GETIMPORT                        R18 K6 [require]
      116 GETIMPORT                        R19 K1 [script]
      118 GETTABLEKS                       R19 R19 K4 ["Parent"]
      120 GETTABLEKS                       R19 R19 K30 ["Types"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K6 [require]
      125 GETIMPORT                        R20 K1 [script]
      127 GETTABLEKS                       R20 R20 K4 ["Parent"]
      129 GETTABLEKS                       R20 R20 K31 ["SheetType"]
      131 CALL                             R19 1 1
      132 GETIMPORT                        R20 K6 [require]
      134 GETIMPORT                        R21 K1 [script]
      136 GETTABLEKS                       R21 R21 K4 ["Parent"]
      138 GETTABLEKS                       R21 R21 K32 ["useHardwareInsets"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K6 [require]
      143 GETIMPORT                        R22 K1 [script]
      145 GETTABLEKS                       R22 R22 K4 ["Parent"]
      147 GETTABLEKS                       R22 R22 K33 ["useScreenHeight"]
      149 CALL                             R21 1 1
      150 GETIMPORT                        R22 K6 [require]
      152 GETTABLEKS                       R23 R0 K23 ["Utility"]
      154 GETTABLEKS                       R23 R23 K34 ["Flags"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K6 [require]
      159 GETTABLEKS                       R24 R0 K35 ["Components"]
      161 GETTABLEKS                       R24 R24 K36 ["Image"]
      163 CALL                             R23 1 1
      164 GETIMPORT                        R24 K6 [require]
      166 GETTABLEKS                       R25 R0 K35 ["Components"]
      168 GETTABLEKS                       R25 R25 K37 ["View"]
      170 CALL                             R24 1 1
      171 DUPTABLE                         R25 K42 [{["defaultSnapPointIndex"] = 1, ["testId"] = "--foundation-sheet"}]
      172 GETTABLEKS                       R26 R16 K43 ["SHADOW_IMAGE"]
      174 GETTABLEKS                       R27 R16 K44 ["SHADOW_SIZE"]
      176 DUPCLOSURE                       R28 K45 [PROTO_26]
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R25
      179 CAPTURE                          VAL R11
      180 CAPTURE                          VAL R12
      181 CAPTURE                          VAL R10
      182 CAPTURE                          VAL R15
      183 CAPTURE                          VAL R21
      184 CAPTURE                          VAL R22
      185 CAPTURE                          VAL R4
      186 CAPTURE                          VAL R20
      187 CAPTURE                          VAL R8
      188 CAPTURE                          VAL R3
      189 CAPTURE                          VAL R7
      190 CAPTURE                          VAL R19
      191 CAPTURE                          VAL R6
      192 CAPTURE                          VAL R24
      193 CAPTURE                          VAL R18
      194 CAPTURE                          VAL R9
      195 CAPTURE                          VAL R2
      196 CAPTURE                          VAL R17
      197 CAPTURE                          VAL R14
      198 CAPTURE                          VAL R23
      199 CAPTURE                          VAL R26
      200 CAPTURE                          VAL R27
      201 GETTABLEKS                       R29 R4 K46 ["memo"]
      203 GETTABLEKS                       R30 R4 K47 ["forwardRef"]
      205 MOVE                             R31 R28
      206 CALL                             R30 1 -1
      207 CALL                             R29 -1 -1
      208 RETURN                           R29 -1
