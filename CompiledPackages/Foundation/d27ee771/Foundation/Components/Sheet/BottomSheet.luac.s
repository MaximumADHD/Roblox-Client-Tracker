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
       10 DUPTABLE                         R5 K4 [{"index", "position"}]
       11 LOADN                            R6 0
       12 SETTABLEKS                       R6 R5 K2 ["index"]
       14 LOADN                            R6 0
       15 SETTABLEKS                       R6 R5 K3 ["position"]
       17 SETLIST                          R4 R5 1 [1]
       19 GETUPVAL                         R5 2
       20 LOADNIL                          R6
       21 LOADNIL                          R7
       22 FORGPREP                         R5
       23 DUPTABLE                         R12 K4 [{"index", "position"}]
       24 SETTABLEKS                       R8 R12 K2 ["index"]
       26 GETUPVAL                         R13 3
       27 MOVE                             R14 R9
       28 CALL                             R13 1 1
       29 SETTABLEKS                       R13 R12 K3 ["position"]
       31 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       33 MOVE                             R11 R4
       34 GETIMPORT                        R10 K7 [table.insert]
       36 CALL                             R10 2 0
       37 FORGLOOP                         R5 2 ; [-15]
       39 GETIMPORT                        R5 K9 [table.sort]
       41 MOVE                             R6 R4
       42 NEWCLOSURE                       R7 P0
       43 CAPTURE                          VAL R3
       44 CALL                             R5 2 0
       45 GETTABLEN                        R5 R4 1
       46 GETUPVAL                         R6 4
       47 GETTABLEKS                       R6 R6 K0 ["current"]
       49 JUMPIF                           R6 ; [+15]
       50 GETUPVAL                         R6 5
       51 MINUS                            R7 R0
       52 SETTABLEKS                       R7 R6 K0 ["current"]
       54 GETTABLEKS                       R6 R5 K2 ["index"]
       56 JUMPIFNOTEQKN                    R6 K10 [0] ; [+4]
       58 GETUPVAL                         R6 6
       59 CALL                             R6 0 0
       60 RETURN                           R0 0
       61 GETUPVAL                         R6 7
       62 GETTABLEKS                       R7 R5 K2 ["index"]
       64 CALL                             R6 1 0
       65 RETURN                           R0 0

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
        0 DUPTABLE                         R0 K17 [{"actionsHeight", "setActionsHeight", "hasActionsDivider", "setHasActionsDivider", "sheetHeightAvailable", "setSheetHeightAvailable", "safeAreaPadding", "bottomPadding", "innerScrollingEnabled", "innerScrollY", "setInnerScrollY", "hasHeader", "setHasHeader", "closeSheet", "sheetType", "innerSurface", "testId"}]
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
       22 LOADN                            R1 200
       23 SETTABLEKS                       R1 R0 K7 ["bottomPadding"]
       25 GETUPVAL                         R1 7
       26 SETTABLEKS                       R1 R0 K8 ["innerScrollingEnabled"]
       28 GETUPVAL                         R1 8
       29 SETTABLEKS                       R1 R0 K9 ["innerScrollY"]
       31 NEWCLOSURE                       R1 P0
       32 CAPTURE                          UPVAL U9
       33 CAPTURE                          UPVAL U10
       34 SETTABLEKS                       R1 R0 K10 ["setInnerScrollY"]
       36 GETUPVAL                         R1 11
       37 SETTABLEKS                       R1 R0 K11 ["hasHeader"]
       39 GETUPVAL                         R1 12
       40 SETTABLEKS                       R1 R0 K12 ["setHasHeader"]
       42 GETUPVAL                         R1 13
       43 SETTABLEKS                       R1 R0 K13 ["closeSheet"]
       45 GETUPVAL                         R1 14
       46 GETTABLEKS                       R1 R1 K18 ["Bottom"]
       48 SETTABLEKS                       R1 R0 K14 ["sheetType"]
       50 GETUPVAL                         R1 15
       51 SETTABLEKS                       R1 R0 K15 ["innerSurface"]
       53 GETUPVAL                         R1 16
       54 GETTABLEKS                       R1 R1 K16 ["testId"]
       56 SETTABLEKS                       R1 R0 K16 ["testId"]
       58 RETURN                           R0 1

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
       12 DUPTABLE                         R7 K2 [{"relativeToOwner"}]
       13 LOADB                            R8 0
       14 SETTABLEKS                       R8 R7 K1 ["relativeToOwner"]
       16 CALL                             R5 2 1
       17 GETUPVAL                         R6 6
       18 CALL                             R6 0 1
       19 LOADNIL                          R7
       20 LOADNIL                          R8
       21 GETUPVAL                         R9 7
       22 GETTABLEKS                       R9 R9 K3 ["FoundationSheetBottomSheetAutoSize"]
       24 JUMPIFNOT                        R9 ; [+7]
       25 GETUPVAL                         R9 8
       26 GETTABLEKS                       R9 R9 K4 ["useState"]
       28 LOADN                            R10 0
       29 CALL                             R9 1 2
       30 MOVE                             R7 R9
       31 MOVE                             R8 R10
       32 GETUPVAL                         R10 7
       33 GETTABLEKS                       R10 R10 K3 ["FoundationSheetBottomSheetAutoSize"]
       35 JUMPIFNOT                        R10 ; [+12]
       36 GETUPVAL                         R9 8
       37 GETTABLEKS                       R9 R9 K5 ["useMemo"]
       39 NEWCLOSURE                       R10 P0
       40 CAPTURE                          REF R7
       41 NEWTABLE                         R11 0 1
       43 MOVE                             R12 R7
       44 SETLIST                          R11 R12 1 [1]
       46 CALL                             R9 2 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R9
       49 GETUPVAL                         R10 7
       50 GETTABLEKS                       R10 R10 K3 ["FoundationSheetBottomSheetAutoSize"]
       52 JUMPIF                           R10 ; [+8]
       53 GETTABLEKS                       R10 R2 K6 ["snapPoints"]
       55 JUMPIFNOTEQKNIL                  R10 ; [+5]
       57 GETIMPORT                        R10 K8 [warn]
       59 LOADK                            R11 K9 ["snapPoints is required until FFlagFoundationSheetBottomSheetAutoSize is enabled"]
       60 CALL                             R10 1 0
       61 GETTABLEKS                       R11 R2 K6 ["snapPoints"]
       63 OR                               R10 R11 R9
       64 GETUPVAL                         R11 8
       65 GETTABLEKS                       R11 R11 K10 ["useCallback"]
       67 NEWCLOSURE                       R12 P1
       68 CAPTURE                          VAL R6
       69 NEWTABLE                         R13 0 1
       71 MOVE                             R14 R6
       72 SETLIST                          R13 R14 1 [1]
       74 CALL                             R11 2 1
       75 LOADN                            R12 0
       76 MOVE                             R13 R10
       77 LOADNIL                          R14
       78 LOADNIL                          R15
       79 FORGPREP                         R13
       80 MOVE                             R18 R11
       81 MOVE                             R19 R17
       82 CALL                             R18 1 1
       83 JUMPIFNOTLT                      R12 R18 ; [+2]
       85 MOVE                             R12 R18
       86 FORGLOOP                         R13 2 ; [-7]
       88 FASTCALL2                        MATH_MIN R12 R6 ; [+5]
       90 MOVE                             R14 R12
       91 MOVE                             R15 R6
       92 GETIMPORT                        R13 K13 [math.min]
       94 CALL                             R13 2 1
       95 MOVE                             R12 R13
       96 GETUPVAL                         R13 9
       97 MOVE                             R14 R3
       98 CALL                             R13 1 1
       99 GETTABLEKS                       R13 R13 K14 ["bottom"]
      101 GETUPVAL                         R14 8
      102 GETTABLEKS                       R14 R14 K15 ["useRef"]
      104 LOADN                            R15 0
      105 CALL                             R14 1 1
      106 GETUPVAL                         R15 8
      107 GETTABLEKS                       R15 R15 K15 ["useRef"]
      109 LOADB                            R16 0
      110 CALL                             R15 1 1
      111 GETUPVAL                         R16 10
      112 LOADN                            R17 1
      113 NEWCLOSURE                       R18 P2
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R2
      116 CALL                             R16 2 2
      117 GETUPVAL                         R18 8
      118 GETTABLEKS                       R18 R18 K16 ["useBinding"]
      120 MINUS                            R19 R13
      121 CALL                             R18 1 2
      122 GETUPVAL                         R20 8
      123 GETTABLEKS                       R20 R20 K16 ["useBinding"]
      125 LOADN                            R21 0
      126 CALL                             R20 1 2
      127 GETUPVAL                         R22 8
      128 GETTABLEKS                       R22 R22 K16 ["useBinding"]
      130 LOADB                            R23 0
      131 CALL                             R22 1 2
      132 GETUPVAL                         R24 8
      133 GETTABLEKS                       R24 R24 K16 ["useBinding"]
      135 LOADB                            R25 0
      136 CALL                             R24 1 2
      137 GETUPVAL                         R26 8
      138 GETTABLEKS                       R26 R26 K15 ["useRef"]
      140 LOADN                            R27 0
      141 CALL                             R26 1 1
      142 GETUPVAL                         R27 8
      143 GETTABLEKS                       R27 R27 K15 ["useRef"]
      145 LOADNIL                          R28
      146 CALL                             R27 1 1
      147 GETUPVAL                         R28 8
      148 GETTABLEKS                       R28 R28 K16 ["useBinding"]
      150 LOADN                            R29 0
      151 CALL                             R28 1 2
      152 GETUPVAL                         R30 8
      153 GETTABLEKS                       R30 R30 K16 ["useBinding"]
      155 LOADB                            R31 0
      156 CALL                             R30 1 2
      157 GETUPVAL                         R32 8
      158 GETTABLEKS                       R32 R32 K15 ["useRef"]
      160 LOADB                            R33 0
      161 CALL                             R32 1 1
      162 GETUPVAL                         R33 8
      163 GETTABLEKS                       R33 R33 K15 ["useRef"]
      165 LOADN                            R34 0
      166 CALL                             R33 1 1
      167 GETUPVAL                         R34 8
      168 GETTABLEKS                       R34 R34 K15 ["useRef"]
      170 LOADNIL                          R35
      171 CALL                             R34 1 1
      172 GETUPVAL                         R35 8
      173 GETTABLEKS                       R35 R35 K15 ["useRef"]
      175 LOADB                            R36 0
      176 CALL                             R35 1 1
      177 GETUPVAL                         R36 8
      178 GETTABLEKS                       R36 R36 K15 ["useRef"]
      180 LOADN                            R37 0
      181 CALL                             R36 1 1
      182 GETUPVAL                         R37 8
      183 GETTABLEKS                       R37 R37 K10 ["useCallback"]
      185 NEWCLOSURE                       R38 P3
      186 CAPTURE                          VAL R34
      187 CAPTURE                          VAL R33
      188 CAPTURE                          VAL R35
      189 NEWTABLE                         R39 0 0
      191 CALL                             R37 2 1
      192 GETUPVAL                         R38 8
      193 GETTABLEKS                       R38 R38 K10 ["useCallback"]
      195 NEWCLOSURE                       R39 P4
      196 CAPTURE                          VAL R37
      197 CAPTURE                          VAL R35
      198 CAPTURE                          VAL R27
      199 CAPTURE                          VAL R34
      200 CAPTURE                          VAL R36
      201 CAPTURE                          UPVAL U7
      202 NEWTABLE                         R40 0 1
      204 MOVE                             R41 R37
      205 SETLIST                          R40 R41 1 [1]
      207 CALL                             R38 2 1
      208 GETUPVAL                         R39 8
      209 GETTABLEKS                       R39 R39 K10 ["useCallback"]
      211 NEWCLOSURE                       R40 P5
      212 CAPTURE                          VAL R11
      213 CAPTURE                          VAL R13
      214 NEWTABLE                         R41 0 2
      216 MOVE                             R42 R13
      217 MOVE                             R43 R11
      218 SETLIST                          R41 R42 2 [1]
      220 CALL                             R39 2 1
      221 GETUPVAL                         R40 8
      222 GETTABLEKS                       R40 R40 K10 ["useCallback"]
      224 NEWCLOSURE                       R41 P6
      225 CAPTURE                          VAL R14
      226 CAPTURE                          VAL R38
      227 CAPTURE                          VAL R39
      228 CAPTURE                          VAL R10
      229 NEWTABLE                         R42 0 2
      231 MOVE                             R43 R39
      232 MOVE                             R44 R10
      233 SETLIST                          R42 R43 2 [1]
      235 CALL                             R40 2 1
      236 GETUPVAL                         R41 8
      237 GETTABLEKS                       R41 R41 K10 ["useCallback"]
      239 NEWCLOSURE                       R42 P7
      240 CAPTURE                          VAL R15
      241 CAPTURE                          VAL R36
      242 CAPTURE                          VAL R33
      243 CAPTURE                          VAL R38
      244 CAPTURE                          VAL R17
      245 CAPTURE                          UPVAL U11
      246 CAPTURE                          VAL R4
      247 NEWTABLE                         R43 0 1
      249 MOVE                             R44 R38
      250 SETLIST                          R43 R44 1 [1]
      252 CALL                             R41 2 1
      253 GETUPVAL                         R42 8
      254 GETTABLEKS                       R42 R42 K10 ["useCallback"]
      256 NEWCLOSURE                       R43 P8
      257 CAPTURE                          VAL R28
      258 CAPTURE                          VAL R26
      259 CAPTURE                          REF R12
      260 CAPTURE                          VAL R13
      261 CAPTURE                          VAL R33
      262 CAPTURE                          VAL R32
      263 CAPTURE                          VAL R31
      264 NEWTABLE                         R44 0 2
      266 MOVE                             R45 R12
      267 MOVE                             R46 R13
      268 SETLIST                          R44 R45 2 [1]
      270 CALL                             R42 2 1
      271 GETUPVAL                         R43 8
      272 GETTABLEKS                       R43 R43 K10 ["useCallback"]
      274 NEWCLOSURE                       R44 P9
      275 CAPTURE                          VAL R33
      276 CAPTURE                          VAL R26
      277 CAPTURE                          VAL R10
      278 CAPTURE                          VAL R39
      279 CAPTURE                          VAL R32
      280 CAPTURE                          VAL R36
      281 CAPTURE                          VAL R41
      282 CAPTURE                          VAL R40
      283 NEWTABLE                         R45 0 4
      285 MOVE                             R46 R10
      286 MOVE                             R47 R40
      287 MOVE                             R48 R39
      288 MOVE                             R49 R41
      289 SETLIST                          R45 R46 4 [1]
      291 CALL                             R43 2 1
      292 GETUPVAL                         R44 8
      293 GETTABLEKS                       R44 R44 K17 ["useEffect"]
      295 NEWCLOSURE                       R45 P10
      296 CAPTURE                          VAL R3
      297 CAPTURE                          VAL R40
      298 CAPTURE                          VAL R2
      299 CAPTURE                          VAL R11
      300 CAPTURE                          VAL R10
      301 CAPTURE                          REF R12
      302 CAPTURE                          VAL R31
      303 CAPTURE                          VAL R17
      304 CAPTURE                          UPVAL U11
      305 CAPTURE                          VAL R4
      306 CAPTURE                          VAL R37
      307 NEWTABLE                         R46 0 5
      309 MOVE                             R47 R3
      310 MOVE                             R48 R10
      311 GETTABLEKS                       R49 R2 K18 ["defaultSnapPointIndex"]
      313 MOVE                             R50 R40
      314 MOVE                             R51 R11
      315 SETLIST                          R46 R47 5 [1]
      317 CALL                             R44 2 0
      318 GETUPVAL                         R44 8
      319 GETTABLEKS                       R44 R44 K17 ["useEffect"]
      321 NEWCLOSURE                       R45 P11
      322 CAPTURE                          VAL R33
      323 CAPTURE                          VAL R42
      324 CAPTURE                          VAL R32
      325 CAPTURE                          VAL R37
      326 CAPTURE                          VAL R30
      327 CAPTURE                          VAL R26
      328 CAPTURE                          REF R12
      329 CAPTURE                          VAL R13
      330 CAPTURE                          VAL R15
      331 CAPTURE                          VAL R43
      332 NEWTABLE                         R46 0 4
      334 MOVE                             R47 R3
      335 MOVE                             R48 R43
      336 MOVE                             R49 R42
      337 MOVE                             R50 R37
      338 SETLIST                          R46 R47 4 [1]
      340 CALL                             R44 2 0
      341 GETUPVAL                         R44 8
      342 GETTABLEKS                       R44 R44 K4 ["useState"]
      344 LOADNIL                          R45
      345 CALL                             R44 1 2
      346 GETUPVAL                         R46 12
      347 GETTABLEKS                       R46 R46 K19 ["useComposedRef"]
      349 MOVE                             R47 R1
      350 MOVE                             R48 R45
      351 CALL                             R46 2 1
      352 GETUPVAL                         R47 8
      353 GETTABLEKS                       R47 R47 K20 ["useImperativeHandle"]
      355 GETTABLEKS                       R48 R2 K21 ["sheetRef"]
      357 NEWCLOSURE                       R49 P12
      358 CAPTURE                          VAL R41
      359 NEWTABLE                         R50 0 0
      361 CALL                             R47 3 0
      362 GETUPVAL                         R47 8
      363 GETTABLEKS                       R47 R47 K5 ["useMemo"]
      365 NEWCLOSURE                       R48 P13
      366 CAPTURE                          VAL R20
      367 CAPTURE                          VAL R21
      368 CAPTURE                          VAL R22
      369 CAPTURE                          VAL R23
      370 CAPTURE                          VAL R18
      371 CAPTURE                          VAL R19
      372 CAPTURE                          VAL R13
      373 CAPTURE                          VAL R30
      374 CAPTURE                          VAL R28
      375 CAPTURE                          VAL R29
      376 CAPTURE                          VAL R42
      377 CAPTURE                          VAL R24
      378 CAPTURE                          VAL R25
      379 CAPTURE                          VAL R41
      380 CAPTURE                          UPVAL U13
      381 CAPTURE                          VAL R44
      382 CAPTURE                          VAL R2
      383 NEWTABLE                         R49 0 5
      385 GETTABLEKS                       R50 R2 K22 ["testId"]
      387 MOVE                             R51 R41
      388 MOVE                             R52 R13
      389 MOVE                             R53 R42
      390 MOVE                             R54 R44
      391 SETLIST                          R49 R50 5 [1]
      393 CALL                             R47 2 1
      394 MOVE                             R48 R3
      395 JUMPIFNOT                        R48 ; [+446]
      396 GETUPVAL                         R48 14
      397 GETTABLEKS                       R48 R48 K23 ["createPortal"]
      399 GETUPVAL                         R49 8
      400 GETTABLEKS                       R49 R49 K24 ["createElement"]
      402 GETUPVAL                         R50 15
      403 DUPTABLE                         R51 K30 [{"ZIndex", "ref", "selection", "selectionGroup", "tag", "testId"}]
      404 GETUPVAL                         R53 7
      405 GETTABLEKS                       R53 R53 K31 ["FoundationElevationSystem"]
      407 JUMPIFNOT                        R53 ; [+3]
      408 GETTABLEKS                       R52 R5 K32 ["zIndex"]
      410 JUMP                             ; [+1]
      411 LOADN                            R52 5
      412 SETTABLEKS                       R52 R51 K25 ["ZIndex"]
      414 SETTABLEKS                       R46 R51 K26 ["ref"]
      416 GETUPVAL                         R52 16
      417 GETTABLEKS                       R52 R52 K33 ["nonSelectable"]
      419 SETTABLEKS                       R52 R51 K27 ["selection"]
      421 GETUPVAL                         R52 16
      422 GETTABLEKS                       R52 R52 K34 ["isolatedSelectionGroup"]
      424 SETTABLEKS                       R52 R51 K28 ["selectionGroup"]
      426 LOADK                            R52 K35 ["size-full"]
      427 SETTABLEKS                       R52 R51 K29 ["tag"]
      429 LOADK                            R53 K36 ["%*--surface"]
      430 GETTABLEKS                       R55 R2 K22 ["testId"]
      432 NAMECALL                         R53 R53 K37 ["format"]
      434 CALL                             R53 2 1
      435 MOVE                             R52 R53
      436 SETTABLEKS                       R52 R51 K22 ["testId"]
      438 GETUPVAL                         R52 8
      439 GETTABLEKS                       R52 R52 K24 ["createElement"]
      441 LOADK                            R53 K38 ["ScrollingFrame"]
      442 NEWTABLE                         R54 8 0
      444 GETIMPORT                        R55 K41 [UDim2.fromScale]
      446 LOADN                            R56 1
      447 LOADN                            R57 1
      448 CALL                             R55 2 1
      449 SETTABLEKS                       R55 R54 K42 ["Size"]
      451 GETIMPORT                        R55 K44 [UDim2.new]
      453 LOADN                            R56 1
      454 LOADN                            R57 0
      455 LOADN                            R58 0
      456 ADD                              R60 R6 R12
      457 ADD                              R59 R60 R13
      458 CALL                             R55 4 1
      459 SETTABLEKS                       R55 R54 K45 ["CanvasSize"]
      461 LOADB                            R55 0
      462 SETTABLEKS                       R55 R54 K46 ["ClipsDescendants"]
      464 LOADN                            R55 1
      465 SETTABLEKS                       R55 R54 K47 ["BackgroundTransparency"]
      467 GETIMPORT                        R55 K51 [Enum.ScrollingDirection.Y]
      469 SETTABLEKS                       R55 R54 K49 ["ScrollingDirection"]
      471 LOADN                            R55 0
      472 SETTABLEKS                       R55 R54 K52 ["ScrollBarThickness"]
      474 SETTABLEKS                       R27 R54 K26 ["ref"]
      476 GETUPVAL                         R55 8
      477 GETTABLEKS                       R55 R55 K53 ["Change"]
      479 GETTABLEKS                       R55 R55 K54 ["CanvasPosition"]
      481 NEWCLOSURE                       R56 P14
      482 CAPTURE                          VAL R26
      483 CAPTURE                          VAL R19
      484 CAPTURE                          VAL R13
      485 CAPTURE                          VAL R4
      486 CAPTURE                          VAL R42
      487 CAPTURE                          VAL R41
      488 SETTABLE                         R56 R54 R55
      489 DUPTABLE                         R55 K58 [{"SheetContainer", "Shadow", "Backdrop"}]
      490 GETUPVAL                         R56 8
      491 GETTABLEKS                       R56 R56 K24 ["createElement"]
      493 GETUPVAL                         R58 7
      494 GETTABLEKS                       R58 R58 K3 ["FoundationSheetBottomSheetAutoSize"]
      496 JUMPIFNOT                        R58 ; [+2]
      497 GETUPVAL                         R57 15
      498 JUMP                             ; [+3]
      499 GETUPVAL                         R57 8
      500 GETTABLEKS                       R57 R57 K59 ["Fragment"]
      502 GETUPVAL                         R59 7
      503 GETTABLEKS                       R59 R59 K3 ["FoundationSheetBottomSheetAutoSize"]
      505 JUMPIFNOT                        R59 ; [+21]
      506 DUPTABLE                         R58 K61 [{"Size", "Position", "ZIndex"}]
      507 GETIMPORT                        R59 K44 [UDim2.new]
      509 LOADN                            R60 1
      510 LOADN                            R61 0
      511 LOADN                            R62 0
      512 ADDK                             R63 R6 K62 [200]
      513 CALL                             R59 4 1
      514 SETTABLEKS                       R59 R58 K42 ["Size"]
      516 GETIMPORT                        R59 K64 [UDim2.fromOffset]
      518 LOADN                            R60 0
      519 ADD                              R61 R6 R13
      520 CALL                             R59 2 1
      521 SETTABLEKS                       R59 R58 K60 ["Position"]
      523 LOADN                            R59 3
      524 SETTABLEKS                       R59 R58 K25 ["ZIndex"]
      526 JUMP                             ; [+1]
      527 LOADNIL                          R58
      528 DUPTABLE                         R59 K65 [{"Sheet"}]
      529 GETUPVAL                         R60 8
      530 GETTABLEKS                       R60 R60 K24 ["createElement"]
      532 GETUPVAL                         R61 15
      533 DUPTABLE                         R62 K70 [{"Size", "AutomaticSize", "onAbsoluteSizeChanged", "Position", "ZIndex", "stateLayer", "onActivated", "testId", "tag"}]
      534 GETUPVAL                         R64 7
      535 GETTABLEKS                       R64 R64 K3 ["FoundationSheetBottomSheetAutoSize"]
      537 JUMPIFNOT                        R64 ; [+10]
      538 GETTABLEKS                       R64 R2 K6 ["snapPoints"]
      540 JUMPIFNOTEQKNIL                  R64 ; [+7]
      542 GETIMPORT                        R63 K41 [UDim2.fromScale]
      544 LOADN                            R64 1
      545 LOADN                            R65 0
      546 CALL                             R63 2 1
      547 JUMP                             ; [+7]
      548 GETIMPORT                        R63 K44 [UDim2.new]
      550 LOADN                            R64 1
      551 LOADN                            R65 0
      552 LOADN                            R66 0
      553 ADDK                             R67 R12 K62 [200]
      554 CALL                             R63 4 1
      555 SETTABLEKS                       R63 R62 K42 ["Size"]
      557 GETUPVAL                         R64 7
      558 GETTABLEKS                       R64 R64 K3 ["FoundationSheetBottomSheetAutoSize"]
      560 JUMPIFNOT                        R64 ; [+7]
      561 GETTABLEKS                       R64 R2 K6 ["snapPoints"]
      563 JUMPIFNOTEQKNIL                  R64 ; [+4]
      565 GETIMPORT                        R63 K71 [Enum.AutomaticSize.Y]
      567 JUMP                             ; [+1]
      568 LOADNIL                          R63
      569 SETTABLEKS                       R63 R62 K66 ["AutomaticSize"]
      571 GETUPVAL                         R64 7
      572 GETTABLEKS                       R64 R64 K3 ["FoundationSheetBottomSheetAutoSize"]
      574 JUMPIFNOT                        R64 ; [+7]
      575 GETTABLEKS                       R64 R2 K6 ["snapPoints"]
      577 JUMPIFNOTEQKNIL                  R64 ; [+4]
      579 NEWCLOSURE                       R63 P15
      580 CAPTURE                          REF R8
      581 JUMP                             ; [+1]
      582 LOADNIL                          R63
      583 SETTABLEKS                       R63 R62 K67 ["onAbsoluteSizeChanged"]
      585 GETUPVAL                         R64 7
      586 GETTABLEKS                       R64 R64 K3 ["FoundationSheetBottomSheetAutoSize"]
      588 JUMPIFNOT                        R64 ; [+2]
      589 LOADNIL                          R63
      590 JUMP                             ; [+5]
      591 GETIMPORT                        R63 K64 [UDim2.fromOffset]
      593 LOADN                            R64 0
      594 ADD                              R65 R6 R13
      595 CALL                             R63 2 1
      596 SETTABLEKS                       R63 R62 K60 ["Position"]
      598 GETUPVAL                         R64 7
      599 GETTABLEKS                       R64 R64 K3 ["FoundationSheetBottomSheetAutoSize"]
      601 JUMPIFNOT                        R64 ; [+2]
      602 LOADNIL                          R63
      603 JUMP                             ; [+1]
      604 LOADN                            R63 3
      605 SETTABLEKS                       R63 R62 K25 ["ZIndex"]
      607 DUPTABLE                         R63 K73 [{"affordance"}]
      608 GETUPVAL                         R64 17
      609 GETTABLEKS                       R64 R64 K74 ["None"]
      611 SETTABLEKS                       R64 R63 K72 ["affordance"]
      613 SETTABLEKS                       R63 R62 K68 ["stateLayer"]
      615 GETUPVAL                         R63 18
      616 GETTABLEKS                       R63 R63 K75 ["noop"]
      618 SETTABLEKS                       R63 R62 K69 ["onActivated"]
      620 GETTABLEKS                       R63 R2 K22 ["testId"]
      622 SETTABLEKS                       R63 R62 K22 ["testId"]
      624 LOADK                            R63 K76 ["bg-surface-100 radius-large col items-center clip padding-top-small"]
      625 SETTABLEKS                       R63 R62 K29 ["tag"]
      627 DUPTABLE                         R63 K79 [{"Gripper", "Content"}]
      628 GETUPVAL                         R64 8
      629 GETTABLEKS                       R64 R64 K24 ["createElement"]
      631 GETUPVAL                         R65 15
      632 DUPTABLE                         R66 K81 [{"ZIndex", "backgroundStyle", "tag", "testId"}]
      633 LOADN                            R67 3
      634 SETTABLEKS                       R67 R66 K25 ["ZIndex"]
      636 GETTABLEKS                       R67 R4 K82 ["Color"]
      638 GETTABLEKS                       R67 R67 K78 ["Content"]
      640 GETTABLEKS                       R67 R67 K83 ["Muted"]
      642 SETTABLEKS                       R67 R66 K80 ["backgroundStyle"]
      644 LOADK                            R67 K84 ["padding-y-small size-1000-100 radius-small align-y-center"]
      645 SETTABLEKS                       R67 R66 K29 ["tag"]
      647 LOADK                            R68 K85 ["%*--gripper"]
      648 GETTABLEKS                       R70 R2 K22 ["testId"]
      650 NAMECALL                         R68 R68 K37 ["format"]
      652 CALL                             R68 2 1
      653 MOVE                             R67 R68
      654 SETTABLEKS                       R67 R66 K22 ["testId"]
      656 DUPTABLE                         R67 K87 [{"TouchTarget"}]
      657 GETUPVAL                         R68 8
      658 GETTABLEKS                       R68 R68 K24 ["createElement"]
      660 GETUPVAL                         R69 15
      661 DUPTABLE                         R70 K88 [{"tag", "stateLayer", "onActivated"}]
      662 LOADK                            R71 K89 ["size-1000-600"]
      663 SETTABLEKS                       R71 R70 K29 ["tag"]
      665 DUPTABLE                         R71 K73 [{"affordance"}]
      666 GETUPVAL                         R72 17
      667 GETTABLEKS                       R72 R72 K74 ["None"]
      669 SETTABLEKS                       R72 R71 K72 ["affordance"]
      671 SETTABLEKS                       R71 R70 K68 ["stateLayer"]
      673 NEWCLOSURE                       R71 P16
      674 CAPTURE                          VAL R32
      675 CAPTURE                          UPVAL U7
      676 CAPTURE                          VAL R10
      677 CAPTURE                          VAL R14
      678 CAPTURE                          VAL R40
      679 CAPTURE                          VAL R41
      680 SETTABLEKS                       R71 R70 K69 ["onActivated"]
      682 CALL                             R68 2 1
      683 SETTABLEKS                       R68 R67 K86 ["TouchTarget"]
      685 CALL                             R64 3 1
      686 SETTABLEKS                       R64 R63 K77 ["Gripper"]
      688 GETUPVAL                         R64 8
      689 GETTABLEKS                       R64 R64 K24 ["createElement"]
      691 GETUPVAL                         R65 19
      692 GETTABLEKS                       R65 R65 K90 ["Provider"]
      694 DUPTABLE                         R66 K92 [{"value"}]
      695 SETTABLEKS                       R47 R66 K91 ["value"]
      697 GETUPVAL                         R68 7
      698 GETTABLEKS                       R68 R68 K31 ["FoundationElevationSystem"]
      700 JUMPIFNOT                        R68 ; [+11]
      701 GETUPVAL                         R67 8
      702 GETTABLEKS                       R67 R67 K24 ["createElement"]
      704 GETUPVAL                         R68 20
      705 DUPTABLE                         R69 K94 [{"owner"}]
      706 SETTABLEKS                       R5 R69 K93 ["owner"]
      708 GETTABLEKS                       R70 R2 K95 ["children"]
      710 CALL                             R67 3 1
      711 JUMP                             ; [+2]
      712 GETTABLEKS                       R67 R2 K95 ["children"]
      714 CALL                             R64 3 1
      715 SETTABLEKS                       R64 R63 K78 ["Content"]
      717 CALL                             R60 3 1
      718 SETTABLEKS                       R60 R59 K0 ["Sheet"]
      720 CALL                             R56 3 1
      721 SETTABLEKS                       R56 R55 K55 ["SheetContainer"]
      723 GETUPVAL                         R56 8
      724 GETTABLEKS                       R56 R56 K24 ["createElement"]
      726 GETUPVAL                         R57 21
      727 DUPTABLE                         R58 K99 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle"}]
      728 GETUPVAL                         R59 22
      729 SETTABLEKS                       R59 R58 K96 ["Image"]
      731 GETIMPORT                        R59 K44 [UDim2.new]
      733 LOADN                            R60 1
      734 GETUPVAL                         R62 23
      735 MULK                             R61 R62 K100 [2]
      736 LOADN                            R62 0
      737 ADDK                             R64 R12 K62 [200]
      738 GETUPVAL                         R66 23
      739 MULK                             R65 R66 K100 [2]
      740 ADD                              R63 R64 R65
      741 CALL                             R59 4 1
      742 SETTABLEKS                       R59 R58 K42 ["Size"]
      744 GETIMPORT                        R59 K64 [UDim2.fromOffset]
      746 GETUPVAL                         R61 23
      747 MINUS                            R60 R61
      748 ADD                              R62 R6 R13
      749 GETUPVAL                         R63 23
      750 SUB                              R61 R62 R63
      751 CALL                             R59 2 1
      752 SETTABLEKS                       R59 R58 K60 ["Position"]
      754 LOADN                            R59 2
      755 SETTABLEKS                       R59 R58 K25 ["ZIndex"]
      757 DUPTABLE                         R59 K103 [{"center", "scale"}]
      758 GETIMPORT                        R60 K105 [Rect.new]
      760 GETUPVAL                         R61 23
      761 GETUPVAL                         R62 23
      762 GETUPVAL                         R64 23
      763 ADDK                             R63 R64 K106 [1]
      764 GETUPVAL                         R65 23
      765 ADDK                             R64 R65 K106 [1]
      766 CALL                             R60 4 1
      767 SETTABLEKS                       R60 R59 K101 ["center"]
      769 LOADN                            R60 2
      770 SETTABLEKS                       R60 R59 K102 ["scale"]
      772 SETTABLEKS                       R59 R58 K97 ["slice"]
      774 GETTABLEKS                       R59 R4 K82 ["Color"]
      776 GETTABLEKS                       R59 R59 K107 ["Extended"]
      778 GETTABLEKS                       R59 R59 K108 ["Black"]
      780 GETTABLEKS                       R59 R59 K109 ["Black_10"]
      782 SETTABLEKS                       R59 R58 K98 ["imageStyle"]
      784 CALL                             R56 2 1
      785 SETTABLEKS                       R56 R55 K56 ["Shadow"]
      787 GETUPVAL                         R56 8
      788 GETTABLEKS                       R56 R56 K24 ["createElement"]
      790 GETUPVAL                         R57 15
      791 DUPTABLE                         R58 K110 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      792 GETIMPORT                        R59 K41 [UDim2.fromScale]
      794 LOADN                            R60 1
      795 LOADN                            R61 2
      796 CALL                             R59 2 1
      797 SETTABLEKS                       R59 R58 K42 ["Size"]
      799 GETIMPORT                        R59 K41 [UDim2.fromScale]
      801 LOADN                            R60 0
      802 LOADK                            R61 K111 [-0.5]
      803 CALL                             R59 2 1
      804 SETTABLEKS                       R59 R58 K60 ["Position"]
      806 LOADN                            R59 1
      807 SETTABLEKS                       R59 R58 K25 ["ZIndex"]
      809 DUPTABLE                         R59 K73 [{"affordance"}]
      810 GETUPVAL                         R60 17
      811 GETTABLEKS                       R60 R60 K74 ["None"]
      813 SETTABLEKS                       R60 R59 K72 ["affordance"]
      815 SETTABLEKS                       R59 R58 K68 ["stateLayer"]
      817 NEWCLOSURE                       R61 P17
      818 CAPTURE                          VAL R4
      819 NAMECALL                         R59 R16 K112 ["map"]
      821 CALL                             R59 2 1
      822 SETTABLEKS                       R59 R58 K80 ["backgroundStyle"]
      824 SETTABLEKS                       R41 R58 K69 ["onActivated"]
      826 LOADK                            R60 K113 ["%*--backdrop"]
      827 GETTABLEKS                       R62 R2 K22 ["testId"]
      829 NAMECALL                         R60 R60 K37 ["format"]
      831 CALL                             R60 2 1
      832 MOVE                             R59 R60
      833 SETTABLEKS                       R59 R58 K22 ["testId"]
      835 CALL                             R56 2 1
      836 SETTABLEKS                       R56 R55 K57 ["Backdrop"]
      838 CALL                             R52 3 -1
      839 CALL                             R49 -1 1
      840 MOVE                             R50 R3
      841 CALL                             R48 2 1
      842 CLOSEUPVALS                      R7
      843 RETURN                           R48 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactUtils"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactRoblox"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Otter"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R1 K11 ["ReactOtter"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K6 [require]
       36 GETTABLEKS                       R8 R1 K12 ["Dash"]
       38 CALL                             R7 1 1
       39 GETTABLEKS                       R8 R6 K13 ["useAnimatedBinding"]
       41 GETIMPORT                        R9 K6 [require]
       43 GETTABLEKS                       R10 R0 K14 ["Providers"]
       45 GETTABLEKS                       R10 R10 K15 ["Overlay"]
       47 GETTABLEKS                       R10 R10 K16 ["useOverlay"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K6 [require]
       52 GETTABLEKS                       R11 R0 K14 ["Providers"]
       54 GETTABLEKS                       R11 R11 K17 ["Style"]
       56 GETTABLEKS                       R11 R11 K18 ["useTokens"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K6 [require]
       61 GETTABLEKS                       R12 R0 K19 ["Enums"]
       63 GETTABLEKS                       R12 R12 K20 ["StateLayerAffordance"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K6 [require]
       68 GETTABLEKS                       R13 R0 K21 ["Utility"]
       70 GETTABLEKS                       R13 R13 K22 ["withDefaults"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K6 [require]
       75 GETTABLEKS                       R14 R0 K14 ["Providers"]
       77 GETTABLEKS                       R14 R14 K23 ["Elevation"]
       79 GETTABLEKS                       R14 R14 K24 ["useElevation"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K6 [require]
       84 GETTABLEKS                       R15 R0 K14 ["Providers"]
       86 GETTABLEKS                       R15 R15 K23 ["Elevation"]
       88 GETTABLEKS                       R15 R15 K25 ["ElevationProvider"]
       90 CALL                             R14 1 1
       91 GETTABLEKS                       R14 R14 K26 ["ElevationOwnerScope"]
       93 GETIMPORT                        R15 K6 [require]
       95 GETTABLEKS                       R16 R0 K19 ["Enums"]
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
      152 GETTABLEKS                       R23 R0 K34 ["Components"]
      154 GETTABLEKS                       R23 R23 K35 ["View"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K6 [require]
      159 GETTABLEKS                       R24 R0 K34 ["Components"]
      161 GETTABLEKS                       R24 R24 K36 ["Image"]
      163 CALL                             R23 1 1
      164 GETIMPORT                        R24 K6 [require]
      166 GETTABLEKS                       R25 R0 K21 ["Utility"]
      168 GETTABLEKS                       R25 R25 K37 ["Flags"]
      170 CALL                             R24 1 1
      171 DUPTABLE                         R25 K40 [{"defaultSnapPointIndex", "testId"}]
      172 LOADN                            R26 1
      173 SETTABLEKS                       R26 R25 K38 ["defaultSnapPointIndex"]
      175 LOADK                            R26 K41 ["--foundation-sheet"]
      176 SETTABLEKS                       R26 R25 K39 ["testId"]
      178 GETTABLEKS                       R26 R16 K42 ["SHADOW_IMAGE"]
      180 GETTABLEKS                       R27 R16 K43 ["SHADOW_SIZE"]
      182 DUPCLOSURE                       R28 K44 [PROTO_26]
      183 CAPTURE                          VAL R12
      184 CAPTURE                          VAL R25
      185 CAPTURE                          VAL R9
      186 CAPTURE                          VAL R10
      187 CAPTURE                          VAL R13
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R21
      190 CAPTURE                          VAL R24
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R20
      193 CAPTURE                          VAL R8
      194 CAPTURE                          VAL R5
      195 CAPTURE                          VAL R3
      196 CAPTURE                          VAL R19
      197 CAPTURE                          VAL R4
      198 CAPTURE                          VAL R22
      199 CAPTURE                          VAL R18
      200 CAPTURE                          VAL R11
      201 CAPTURE                          VAL R7
      202 CAPTURE                          VAL R17
      203 CAPTURE                          VAL R14
      204 CAPTURE                          VAL R23
      205 CAPTURE                          VAL R26
      206 CAPTURE                          VAL R27
      207 GETTABLEKS                       R29 R2 K45 ["memo"]
      209 GETTABLEKS                       R30 R2 K46 ["forwardRef"]
      211 MOVE                             R31 R28
      212 CALL                             R30 1 -1
      213 CALL                             R29 -1 -1
      214 RETURN                           R29 -1
