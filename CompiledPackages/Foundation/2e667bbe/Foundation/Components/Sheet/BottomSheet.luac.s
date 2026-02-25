PROTO_0:
        0 LOADN                            R1 1
        1 JUMPIFNOTLT                      R1 R0 ; [+2]
        3 RETURN                           R0 1
        4 GETUPVAL                         R2 0
        5 MUL                              R1 R0 R2
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
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

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 JUMPIF                           R1 ; [+3]
        8 GETUPVAL                         R1 2
        9 CALL                             R1 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K0 ["current"]
       14 GETTABLEKS                       R2 R3 K1 ["CanvasPosition"]
       16 GETTABLEKS                       R1 R2 K2 ["Y"]
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
       31 GETUPVAL                         R10 5
       32 GETTABLEKS                       R9 R10 K0 ["current"]
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
       47 GETUPVAL                         R11 5
       48 GETTABLEKS                       R10 R11 K0 ["current"]
       50 MUL                              R11 R6 R7
       51 ADD                              R9 R10 R11
       52 SETTABLEKS                       R9 R8 K0 ["current"]
       54 GETUPVAL                         R11 5
       55 GETTABLEKS                       R10 R11 K0 ["current"]
       57 MUL                              R9 R10 R7
       58 ADD                              R8 R1 R9
       59 GETUPVAL                         R10 0
       60 GETTABLEKS                       R9 R10 K0 ["current"]
       62 GETIMPORT                        R10 K12 [Vector2.new]
       64 LOADN                            R11 0
       65 MOVE                             R12 R8
       66 CALL                             R10 2 1
       67 SETTABLEKS                       R10 R9 K1 ["CanvasPosition"]
       69 SETUPVAL                         R8 4
       70 LOADB                            R9 0
       71 FASTCALL1                        MATH_ABS R2 ; [+3]
       72 MOVE                             R11 R2
       73 GETIMPORT                        R10 K14 [math.abs]
       75 CALL                             R10 1 1
       76 LOADK                            R11 K15 [0.5]
       77 JUMPIFNOTLT                      R10 R11 ; [+13]
       79 GETUPVAL                         R12 5
       80 GETTABLEKS                       R11 R12 K0 ["current"]
       82 FASTCALL1                        MATH_ABS R11 ; [+2]
       83 GETIMPORT                        R10 K14 [math.abs]
       85 CALL                             R10 1 1
       86 LOADN                            R11 1
       87 JUMPIFLT                         R10 R11 ; [+2]
       89 LOADB                            R9 0 +1
       90 LOADB                            R9 1
       91 JUMPIFNOT                        R9 ; [+12]
       92 GETUPVAL                         R11 0
       93 GETTABLEKS                       R10 R11 K0 ["current"]
       95 GETIMPORT                        R11 K12 [Vector2.new]
       97 LOADN                            R12 0
       98 GETUPVAL                         R13 3
       99 CALL                             R11 2 1
      100 SETTABLEKS                       R11 R10 K1 ["CanvasPosition"]
      102 GETUPVAL                         R10 2
      103 CALL                             R10 0 0
      104 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 LOADB                            R2 1
        4 SETTABLEKS                       R2 R1 K0 ["current"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K0 ["current"]
        9 JUMPIFNOT                        R2 ; [+8]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K0 ["current"]
       13 GETTABLEKS                       R2 R3 K1 ["CanvasPosition"]
       15 GETTABLEKS                       R1 R2 K2 ["Y"]
       17 JUMP                             ; [+1]
       18 LOADN                            R1 0
       19 GETUPVAL                         R2 3
       20 GETIMPORT                        R4 K4 [game]
       22 LOADK                            R6 K5 ["RunService"]
       23 NAMECALL                         R4 R4 K6 ["GetService"]
       25 CALL                             R4 2 1
       26 GETTABLEKS                       R3 R4 K7 ["Heartbeat"]
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          VAL R0
       33 CAPTURE                          REF R1
       34 CAPTURE                          UPVAL U4
       35 NAMECALL                         R3 R3 K8 ["Connect"]
       37 CALL                             R3 2 1
       38 SETTABLEKS                       R3 R2 K0 ["current"]
       40 CLOSEUPVALS                      R1
       41 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 ADD                              R1 R2 R3
        5 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R4 3
        6 GETTABLE                         R3 R4 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K0 ["current"]
        9 MINUS                            R1 R2
       10 SETTABLEKS                       R1 R0 K0 ["current"]
       12 GETUPVAL                         R0 3
       13 LOADN                            R1 0
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 4
       16 GETUPVAL                         R2 5
       17 GETTABLEKS                       R1 R2 K1 ["ease"]
       19 LOADN                            R2 1
       20 DUPTABLE                         R3 K3 [{"duration"}]
       21 GETUPVAL                         R6 6
       22 GETTABLEKS                       R5 R6 K4 ["Time"]
       24 GETTABLEKS                       R4 R5 K5 ["Time_100"]
       26 SETTABLEKS                       R4 R3 K2 ["duration"]
       28 CALL                             R1 2 -1
       29 CALL                             R0 -1 0
       30 GETUPVAL                         R0 0
       31 LOADB                            R1 1
       32 SETTABLEKS                       R1 R0 K0 ["current"]
       34 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getValue"]
        3 CALL                             R1 1 1
        4 LOADN                            R2 0
        5 JUMPIFLE                         R1 R2 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K1 ["current"]
       12 GETUPVAL                         R5 2
       13 GETUPVAL                         R6 3
       14 ADD                              R4 R5 R6
       15 FASTCALL1                        MATH_ROUND R4 ; [+2]
       16 GETIMPORT                        R3 K4 [math.round]
       18 CALL                             R3 1 1
       19 JUMPIFLE                         R3 R2 ; [+2]
       21 LOADB                            R1 0 +1
       22 LOADB                            R1 1
       23 GETUPVAL                         R3 4
       24 GETTABLEKS                       R2 R3 K1 ["current"]
       26 LOADN                            R3 0
       27 JUMPIFNOTLT                      R3 R2 ; [+10]
       29 JUMPIFNOT                        R0 ; [+8]
       30 GETUPVAL                         R3 5
       31 GETTABLEKS                       R2 R3 K1 ["current"]
       33 JUMPIFNOT                        R2 ; [+4]
       34 GETUPVAL                         R2 6
       35 LOADB                            R3 0
       36 CALL                             R2 1 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R3 4
       39 GETTABLEKS                       R2 R3 K1 ["current"]
       41 LOADN                            R3 0
       42 JUMPIFNOTLT                      R2 R3 ; [+5]
       44 JUMPIFNOT                        R1 ; [+3]
       45 GETUPVAL                         R2 6
       46 LOADB                            R3 1
       47 CALL                             R2 1 0
       48 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["current"]
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
       46 GETUPVAL                         R7 4
       47 GETTABLEKS                       R6 R7 K0 ["current"]
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+36]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R1 R2 K0 ["defaultSnapPointIndex"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R1 3
        8 GETUPVAL                         R3 4
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K0 ["defaultSnapPointIndex"]
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
       24 GETUPVAL                         R3 8
       25 GETTABLEKS                       R2 R3 K1 ["ease"]
       27 LOADN                            R3 0
       28 DUPTABLE                         R4 K3 [{"duration"}]
       29 GETUPVAL                         R7 9
       30 GETTABLEKS                       R6 R7 K4 ["Time"]
       32 GETTABLEKS                       R5 R6 K5 ["Time_100"]
       34 SETTABLEKS                       R5 R4 K2 ["duration"]
       36 CALL                             R2 2 -1
       37 CALL                             R1 -1 0
       38 NEWCLOSURE                       R0 P0
       39 CAPTURE                          UPVAL U10
       40 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R2 K0 ["Y"]
        3 SETTABLEKS                       R5 R4 K1 ["current"]
        5 GETUPVAL                         R4 1
        6 CALL                             R4 0 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADN                            R1 0
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 GETUPVAL                         R0 2
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
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
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R1 R2 K0 ["current"]
       19 GETUPVAL                         R4 3
       20 GETUPVAL                         R5 4
       21 ADD                              R3 R4 R5
       22 FASTCALL1                        MATH_ROUND R3 ; [+2]
       23 GETIMPORT                        R2 K4 [math.round]
       25 CALL                             R2 1 1
       26 JUMPIFLE                         R2 R1 ; [+4]
       28 GETUPVAL                         R1 5
       29 GETTABLEKS                       R0 R1 K0 ["current"]
       31 JUMPIFNOT                        R0 ; [+1]
       32 RETURN                           R0 0
       33 GETUPVAL                         R1 6
       34 CALL                             R1 0 0
       35 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["UserInputService"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 GETTABLEKS                       R0 R1 K4 ["TouchPan"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 NAMECALL                         R0 R0 K5 ["Connect"]
       13 CALL                             R0 2 1
       14 GETIMPORT                        R2 K1 [game]
       16 LOADK                            R4 K2 ["UserInputService"]
       17 NAMECALL                         R2 R2 K3 ["GetService"]
       19 CALL                             R2 2 1
       20 GETTABLEKS                       R1 R2 K6 ["InputBegan"]
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U3
       26 NAMECALL                         R1 R1 K5 ["Connect"]
       28 CALL                             R1 2 1
       29 GETIMPORT                        R3 K1 [game]
       31 LOADK                            R5 K2 ["UserInputService"]
       32 NAMECALL                         R3 R3 K3 ["GetService"]
       34 CALL                             R3 2 1
       35 GETTABLEKS                       R2 R3 K7 ["InputEnded"]
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

PROTO_18:
        0 DUPTABLE                         R0 K1 [{"close"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["close"]
        4 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 0
        5 RETURN                           R0 0

PROTO_20:
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
       45 GETUPVAL                         R2 14
       46 GETTABLEKS                       R1 R2 K18 ["Bottom"]
       48 SETTABLEKS                       R1 R0 K14 ["sheetType"]
       50 GETUPVAL                         R1 15
       51 SETTABLEKS                       R1 R0 K15 ["innerSurface"]
       53 GETUPVAL                         R2 16
       54 GETTABLEKS                       R1 R2 K16 ["testId"]
       56 SETTABLEKS                       R1 R0 K16 ["testId"]
       58 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["CanvasPosition"]
        3 GETTABLEKS                       R2 R3 K1 ["Y"]
        5 SETTABLEKS                       R2 R1 K2 ["current"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K2 ["current"]
       11 GETUPVAL                         R5 2
       12 SUB                              R3 R4 R5
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R5 R6 K3 ["Margin"]
       16 GETTABLEKS                       R4 R5 K4 ["Small"]
       18 SUB                              R2 R3 R4
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 4
       21 CALL                             R1 0 0
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R1 R2 K2 ["current"]
       25 LOADN                            R2 0
       26 JUMPIFNOTLE                      R1 R2 ; [+3]
       28 GETUPVAL                         R1 5
       29 CALL                             R1 0 0
       30 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["current"]
        7 GETUPVAL                         R4 2
        8 LENGTH                           R3 R4
        9 MOD                              R1 R2 R3
       10 ADDK                             R0 R1 K1 [1]
       11 GETUPVAL                         R1 3
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_23:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K3 ["Color"]
        4 GETTABLEKS                       R4 R5 K4 ["Common"]
        6 GETTABLEKS                       R3 R4 K5 ["Backdrop"]
        8 GETTABLEKS                       R2 R3 K0 ["Color3"]
       10 SETTABLEKS                       R2 R1 K0 ["Color3"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K3 ["Color"]
       15 GETTABLEKS                       R5 R6 K4 ["Common"]
       17 GETTABLEKS                       R4 R5 K5 ["Backdrop"]
       19 GETTABLEKS                       R3 R4 K1 ["Transparency"]
       21 LOADN                            R4 1
       22 FASTCALL3                        MATH_LERP R3 R4 R0
       24 MOVE                             R5 R0
       25 GETIMPORT                        R2 K8 [math.lerp]
       27 CALL                             R2 3 1
       28 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       30 RETURN                           R1 1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 4
        9 CALL                             R5 0 1
       10 GETTABLEKS                       R6 R2 K0 ["snapPoints"]
       12 GETUPVAL                         R8 5
       13 GETTABLEKS                       R7 R8 K1 ["useCallback"]
       15 NEWCLOSURE                       R8 P0
       16 CAPTURE                          VAL R5
       17 NEWTABLE                         R9 0 1
       19 MOVE                             R10 R5
       20 SETLIST                          R9 R10 1 [1]
       22 CALL                             R7 2 1
       23 LOADN                            R8 0
       24 MOVE                             R9 R6
       25 LOADNIL                          R10
       26 LOADNIL                          R11
       27 FORGPREP                         R9
       28 MOVE                             R14 R7
       29 MOVE                             R15 R13
       30 CALL                             R14 1 1
       31 JUMPIFNOTLT                      R8 R14 ; [+2]
       33 MOVE                             R8 R14
       34 FORGLOOP                         R9 2 ; [-7]
       36 FASTCALL2                        MATH_MIN R8 R5 ; [+5]
       38 MOVE                             R10 R8
       39 MOVE                             R11 R5
       40 GETIMPORT                        R9 K4 [math.min]
       42 CALL                             R9 2 1
       43 MOVE                             R8 R9
       44 GETUPVAL                         R10 6
       45 MOVE                             R11 R3
       46 CALL                             R10 1 1
       47 GETTABLEKS                       R9 R10 K5 ["bottom"]
       49 GETUPVAL                         R11 5
       50 GETTABLEKS                       R10 R11 K6 ["useRef"]
       52 LOADN                            R11 0
       53 CALL                             R10 1 1
       54 GETUPVAL                         R12 5
       55 GETTABLEKS                       R11 R12 K6 ["useRef"]
       57 LOADB                            R12 0
       58 CALL                             R11 1 1
       59 GETUPVAL                         R12 7
       60 LOADN                            R13 1
       61 NEWCLOSURE                       R14 P1
       62 CAPTURE                          VAL R11
       63 CAPTURE                          VAL R2
       64 CALL                             R12 2 2
       65 GETUPVAL                         R15 5
       66 GETTABLEKS                       R14 R15 K7 ["useBinding"]
       68 MINUS                            R15 R9
       69 CALL                             R14 1 2
       70 GETUPVAL                         R17 5
       71 GETTABLEKS                       R16 R17 K7 ["useBinding"]
       73 LOADN                            R17 0
       74 CALL                             R16 1 2
       75 GETUPVAL                         R19 5
       76 GETTABLEKS                       R18 R19 K7 ["useBinding"]
       78 LOADB                            R19 0
       79 CALL                             R18 1 2
       80 GETUPVAL                         R21 5
       81 GETTABLEKS                       R20 R21 K7 ["useBinding"]
       83 LOADB                            R21 0
       84 CALL                             R20 1 2
       85 GETUPVAL                         R23 5
       86 GETTABLEKS                       R22 R23 K6 ["useRef"]
       88 LOADN                            R23 0
       89 CALL                             R22 1 1
       90 GETUPVAL                         R24 5
       91 GETTABLEKS                       R23 R24 K6 ["useRef"]
       93 LOADNIL                          R24
       94 CALL                             R23 1 1
       95 GETUPVAL                         R25 5
       96 GETTABLEKS                       R24 R25 K7 ["useBinding"]
       98 LOADN                            R25 0
       99 CALL                             R24 1 2
      100 GETUPVAL                         R27 5
      101 GETTABLEKS                       R26 R27 K7 ["useBinding"]
      103 LOADB                            R27 0
      104 CALL                             R26 1 2
      105 GETUPVAL                         R29 5
      106 GETTABLEKS                       R28 R29 K6 ["useRef"]
      108 LOADB                            R29 0
      109 CALL                             R28 1 1
      110 GETUPVAL                         R30 5
      111 GETTABLEKS                       R29 R30 K6 ["useRef"]
      113 LOADN                            R30 0
      114 CALL                             R29 1 1
      115 GETUPVAL                         R31 5
      116 GETTABLEKS                       R30 R31 K6 ["useRef"]
      118 LOADNIL                          R31
      119 CALL                             R30 1 1
      120 GETUPVAL                         R32 5
      121 GETTABLEKS                       R31 R32 K6 ["useRef"]
      123 LOADB                            R32 0
      124 CALL                             R31 1 1
      125 GETUPVAL                         R33 5
      126 GETTABLEKS                       R32 R33 K6 ["useRef"]
      128 LOADN                            R33 0
      129 CALL                             R32 1 1
      130 GETUPVAL                         R34 5
      131 GETTABLEKS                       R33 R34 K1 ["useCallback"]
      133 NEWCLOSURE                       R34 P2
      134 CAPTURE                          VAL R30
      135 CAPTURE                          VAL R29
      136 CAPTURE                          VAL R31
      137 NEWTABLE                         R35 0 0
      139 CALL                             R33 2 1
      140 GETUPVAL                         R35 5
      141 GETTABLEKS                       R34 R35 K1 ["useCallback"]
      143 NEWCLOSURE                       R35 P3
      144 CAPTURE                          VAL R33
      145 CAPTURE                          VAL R31
      146 CAPTURE                          VAL R23
      147 CAPTURE                          VAL R30
      148 CAPTURE                          VAL R32
      149 NEWTABLE                         R36 0 1
      151 MOVE                             R37 R33
      152 SETLIST                          R36 R37 1 [1]
      154 CALL                             R34 2 1
      155 GETUPVAL                         R36 5
      156 GETTABLEKS                       R35 R36 K1 ["useCallback"]
      158 NEWCLOSURE                       R36 P4
      159 CAPTURE                          VAL R7
      160 CAPTURE                          VAL R9
      161 NEWTABLE                         R37 0 2
      163 MOVE                             R38 R9
      164 MOVE                             R39 R7
      165 SETLIST                          R37 R38 2 [1]
      167 CALL                             R35 2 1
      168 GETUPVAL                         R37 5
      169 GETTABLEKS                       R36 R37 K1 ["useCallback"]
      171 NEWCLOSURE                       R37 P5
      172 CAPTURE                          VAL R10
      173 CAPTURE                          VAL R34
      174 CAPTURE                          VAL R35
      175 CAPTURE                          VAL R6
      176 NEWTABLE                         R38 0 2
      178 MOVE                             R39 R35
      179 MOVE                             R40 R6
      180 SETLIST                          R38 R39 2 [1]
      182 CALL                             R36 2 1
      183 GETUPVAL                         R38 5
      184 GETTABLEKS                       R37 R38 K1 ["useCallback"]
      186 NEWCLOSURE                       R38 P6
      187 CAPTURE                          VAL R11
      188 CAPTURE                          VAL R32
      189 CAPTURE                          VAL R29
      190 CAPTURE                          VAL R34
      191 CAPTURE                          VAL R13
      192 CAPTURE                          UPVAL U8
      193 CAPTURE                          VAL R4
      194 NEWTABLE                         R39 0 1
      196 MOVE                             R40 R34
      197 SETLIST                          R39 R40 1 [1]
      199 CALL                             R37 2 1
      200 GETUPVAL                         R39 5
      201 GETTABLEKS                       R38 R39 K1 ["useCallback"]
      203 NEWCLOSURE                       R39 P7
      204 CAPTURE                          VAL R24
      205 CAPTURE                          VAL R22
      206 CAPTURE                          REF R8
      207 CAPTURE                          VAL R9
      208 CAPTURE                          VAL R29
      209 CAPTURE                          VAL R28
      210 CAPTURE                          VAL R27
      211 NEWTABLE                         R40 0 2
      213 MOVE                             R41 R8
      214 MOVE                             R42 R9
      215 SETLIST                          R40 R41 2 [1]
      217 CALL                             R38 2 1
      218 GETUPVAL                         R40 5
      219 GETTABLEKS                       R39 R40 K1 ["useCallback"]
      221 NEWCLOSURE                       R40 P8
      222 CAPTURE                          VAL R29
      223 CAPTURE                          VAL R22
      224 CAPTURE                          VAL R6
      225 CAPTURE                          VAL R35
      226 CAPTURE                          VAL R28
      227 CAPTURE                          VAL R32
      228 CAPTURE                          VAL R37
      229 CAPTURE                          VAL R36
      230 NEWTABLE                         R41 0 4
      232 MOVE                             R42 R6
      233 MOVE                             R43 R36
      234 MOVE                             R44 R35
      235 MOVE                             R45 R37
      236 SETLIST                          R41 R42 4 [1]
      238 CALL                             R39 2 1
      239 GETUPVAL                         R41 5
      240 GETTABLEKS                       R40 R41 K8 ["useEffect"]
      242 NEWCLOSURE                       R41 P9
      243 CAPTURE                          VAL R3
      244 CAPTURE                          VAL R36
      245 CAPTURE                          VAL R2
      246 CAPTURE                          VAL R7
      247 CAPTURE                          VAL R6
      248 CAPTURE                          REF R8
      249 CAPTURE                          VAL R27
      250 CAPTURE                          VAL R13
      251 CAPTURE                          UPVAL U8
      252 CAPTURE                          VAL R4
      253 CAPTURE                          VAL R33
      254 NEWTABLE                         R42 0 5
      256 MOVE                             R43 R3
      257 MOVE                             R44 R6
      258 GETTABLEKS                       R45 R2 K9 ["defaultSnapPointIndex"]
      260 MOVE                             R46 R36
      261 MOVE                             R47 R7
      262 SETLIST                          R42 R43 5 [1]
      264 CALL                             R40 2 0
      265 GETUPVAL                         R41 5
      266 GETTABLEKS                       R40 R41 K8 ["useEffect"]
      268 NEWCLOSURE                       R41 P10
      269 CAPTURE                          VAL R29
      270 CAPTURE                          VAL R38
      271 CAPTURE                          VAL R28
      272 CAPTURE                          VAL R33
      273 CAPTURE                          VAL R26
      274 CAPTURE                          VAL R22
      275 CAPTURE                          REF R8
      276 CAPTURE                          VAL R9
      277 CAPTURE                          VAL R11
      278 CAPTURE                          VAL R39
      279 NEWTABLE                         R42 0 4
      281 MOVE                             R43 R3
      282 MOVE                             R44 R39
      283 MOVE                             R45 R38
      284 MOVE                             R46 R33
      285 SETLIST                          R42 R43 4 [1]
      287 CALL                             R40 2 0
      288 GETUPVAL                         R41 5
      289 GETTABLEKS                       R40 R41 K10 ["useState"]
      291 LOADNIL                          R41
      292 CALL                             R40 1 2
      293 GETUPVAL                         R43 9
      294 GETTABLEKS                       R42 R43 K11 ["useComposedRef"]
      296 MOVE                             R43 R1
      297 MOVE                             R44 R41
      298 CALL                             R42 2 1
      299 GETUPVAL                         R44 5
      300 GETTABLEKS                       R43 R44 K12 ["useImperativeHandle"]
      302 GETTABLEKS                       R44 R2 K13 ["sheetRef"]
      304 NEWCLOSURE                       R45 P11
      305 CAPTURE                          VAL R37
      306 NEWTABLE                         R46 0 0
      308 CALL                             R43 3 0
      309 GETUPVAL                         R44 5
      310 GETTABLEKS                       R43 R44 K14 ["useMemo"]
      312 NEWCLOSURE                       R44 P12
      313 CAPTURE                          VAL R16
      314 CAPTURE                          VAL R17
      315 CAPTURE                          VAL R18
      316 CAPTURE                          VAL R19
      317 CAPTURE                          VAL R14
      318 CAPTURE                          VAL R15
      319 CAPTURE                          VAL R9
      320 CAPTURE                          VAL R26
      321 CAPTURE                          VAL R24
      322 CAPTURE                          VAL R25
      323 CAPTURE                          VAL R38
      324 CAPTURE                          VAL R20
      325 CAPTURE                          VAL R21
      326 CAPTURE                          VAL R37
      327 CAPTURE                          UPVAL U10
      328 CAPTURE                          VAL R40
      329 CAPTURE                          VAL R2
      330 NEWTABLE                         R45 0 5
      332 GETTABLEKS                       R46 R2 K15 ["testId"]
      334 MOVE                             R47 R37
      335 MOVE                             R48 R9
      336 MOVE                             R49 R38
      337 MOVE                             R50 R40
      338 SETLIST                          R45 R46 5 [1]
      340 CALL                             R43 2 1
      341 MOVE                             R44 R3
      342 JUMPIFNOT                        R44 ; [+317]
      343 GETUPVAL                         R45 11
      344 GETTABLEKS                       R44 R45 K16 ["createPortal"]
      346 GETUPVAL                         R46 5
      347 GETTABLEKS                       R45 R46 K17 ["createElement"]
      349 GETUPVAL                         R46 12
      350 DUPTABLE                         R47 K23 [{"ZIndex", "ref", "selection", "selectionGroup", "tag"}]
      351 LOADN                            R48 5
      352 SETTABLEKS                       R48 R47 K18 ["ZIndex"]
      354 SETTABLEKS                       R42 R47 K19 ["ref"]
      356 GETUPVAL                         R49 13
      357 GETTABLEKS                       R48 R49 K24 ["nonSelectable"]
      359 SETTABLEKS                       R48 R47 K20 ["selection"]
      361 GETUPVAL                         R49 13
      362 GETTABLEKS                       R48 R49 K25 ["isolatedSelectionGroup"]
      364 SETTABLEKS                       R48 R47 K21 ["selectionGroup"]
      366 LOADK                            R48 K26 ["size-full"]
      367 SETTABLEKS                       R48 R47 K22 ["tag"]
      369 GETUPVAL                         R49 5
      370 GETTABLEKS                       R48 R49 K17 ["createElement"]
      372 LOADK                            R49 K27 ["ScrollingFrame"]
      373 NEWTABLE                         R50 8 0
      375 GETIMPORT                        R51 K30 [UDim2.fromScale]
      377 LOADN                            R52 1
      378 LOADN                            R53 1
      379 CALL                             R51 2 1
      380 SETTABLEKS                       R51 R50 K31 ["Size"]
      382 GETIMPORT                        R51 K33 [UDim2.new]
      384 LOADN                            R52 1
      385 LOADN                            R53 0
      386 LOADN                            R54 0
      387 ADD                              R56 R5 R8
      388 ADD                              R55 R56 R9
      389 CALL                             R51 4 1
      390 SETTABLEKS                       R51 R50 K34 ["CanvasSize"]
      392 LOADB                            R51 0
      393 SETTABLEKS                       R51 R50 K35 ["ClipsDescendants"]
      395 LOADN                            R51 1
      396 SETTABLEKS                       R51 R50 K36 ["BackgroundTransparency"]
      398 GETIMPORT                        R51 K40 [Enum.ScrollingDirection.Y]
      400 SETTABLEKS                       R51 R50 K38 ["ScrollingDirection"]
      402 LOADN                            R51 0
      403 SETTABLEKS                       R51 R50 K41 ["ScrollBarThickness"]
      405 SETTABLEKS                       R23 R50 K19 ["ref"]
      407 GETUPVAL                         R53 5
      408 GETTABLEKS                       R52 R53 K42 ["Change"]
      410 GETTABLEKS                       R51 R52 K43 ["CanvasPosition"]
      412 NEWCLOSURE                       R52 P13
      413 CAPTURE                          VAL R22
      414 CAPTURE                          VAL R15
      415 CAPTURE                          VAL R9
      416 CAPTURE                          VAL R4
      417 CAPTURE                          VAL R38
      418 CAPTURE                          VAL R37
      419 SETTABLE                         R52 R50 R51
      420 DUPTABLE                         R51 K47 [{"Sheet", "Shadow", "Backdrop"}]
      421 GETUPVAL                         R53 5
      422 GETTABLEKS                       R52 R53 K17 ["createElement"]
      424 GETUPVAL                         R53 12
      425 DUPTABLE                         R54 K51 [{"Size", "Position", "ZIndex", "stateLayer", "onActivated", "testId", "tag"}]
      426 GETIMPORT                        R55 K33 [UDim2.new]
      428 LOADN                            R56 1
      429 LOADN                            R57 0
      430 LOADN                            R58 0
      431 ADDK                             R59 R8 K52 [200]
      432 CALL                             R55 4 1
      433 SETTABLEKS                       R55 R54 K31 ["Size"]
      435 GETIMPORT                        R55 K54 [UDim2.fromOffset]
      437 LOADN                            R56 0
      438 ADD                              R57 R5 R9
      439 CALL                             R55 2 1
      440 SETTABLEKS                       R55 R54 K48 ["Position"]
      442 LOADN                            R55 3
      443 SETTABLEKS                       R55 R54 K18 ["ZIndex"]
      445 DUPTABLE                         R55 K56 [{"affordance"}]
      446 GETUPVAL                         R57 14
      447 GETTABLEKS                       R56 R57 K57 ["None"]
      449 SETTABLEKS                       R56 R55 K55 ["affordance"]
      451 SETTABLEKS                       R55 R54 K49 ["stateLayer"]
      453 GETUPVAL                         R56 15
      454 GETTABLEKS                       R55 R56 K58 ["noop"]
      456 SETTABLEKS                       R55 R54 K50 ["onActivated"]
      458 GETTABLEKS                       R55 R2 K15 ["testId"]
      460 SETTABLEKS                       R55 R54 K15 ["testId"]
      462 LOADK                            R55 K59 ["bg-surface-100 radius-large col items-center clip padding-top-small"]
      463 SETTABLEKS                       R55 R54 K22 ["tag"]
      465 DUPTABLE                         R55 K62 [{"Gripper", "Content"}]
      466 GETUPVAL                         R57 5
      467 GETTABLEKS                       R56 R57 K17 ["createElement"]
      469 GETUPVAL                         R57 12
      470 DUPTABLE                         R58 K64 [{"ZIndex", "backgroundStyle", "tag", "testId"}]
      471 LOADN                            R59 3
      472 SETTABLEKS                       R59 R58 K18 ["ZIndex"]
      474 GETTABLEKS                       R61 R4 K65 ["Color"]
      476 GETTABLEKS                       R60 R61 K61 ["Content"]
      478 GETTABLEKS                       R59 R60 K66 ["Muted"]
      480 SETTABLEKS                       R59 R58 K63 ["backgroundStyle"]
      482 LOADK                            R59 K67 ["padding-y-small size-1000-100 radius-small align-y-center"]
      483 SETTABLEKS                       R59 R58 K22 ["tag"]
      485 LOADK                            R60 K68 ["%*--gripper"]
      486 GETTABLEKS                       R62 R2 K15 ["testId"]
      488 NAMECALL                         R60 R60 K69 ["format"]
      490 CALL                             R60 2 1
      491 MOVE                             R59 R60
      492 SETTABLEKS                       R59 R58 K15 ["testId"]
      494 DUPTABLE                         R59 K71 [{"TouchTarget"}]
      495 GETUPVAL                         R61 5
      496 GETTABLEKS                       R60 R61 K17 ["createElement"]
      498 GETUPVAL                         R61 12
      499 DUPTABLE                         R62 K72 [{"tag", "stateLayer", "onActivated"}]
      500 LOADK                            R63 K73 ["size-1000-600"]
      501 SETTABLEKS                       R63 R62 K22 ["tag"]
      503 DUPTABLE                         R63 K56 [{"affordance"}]
      504 GETUPVAL                         R65 14
      505 GETTABLEKS                       R64 R65 K57 ["None"]
      507 SETTABLEKS                       R64 R63 K55 ["affordance"]
      509 SETTABLEKS                       R63 R62 K49 ["stateLayer"]
      511 NEWCLOSURE                       R63 P14
      512 CAPTURE                          VAL R28
      513 CAPTURE                          VAL R10
      514 CAPTURE                          VAL R6
      515 CAPTURE                          VAL R36
      516 SETTABLEKS                       R63 R62 K50 ["onActivated"]
      518 CALL                             R60 2 1
      519 SETTABLEKS                       R60 R59 K70 ["TouchTarget"]
      521 CALL                             R56 3 1
      522 SETTABLEKS                       R56 R55 K60 ["Gripper"]
      524 GETUPVAL                         R57 5
      525 GETTABLEKS                       R56 R57 K17 ["createElement"]
      527 GETUPVAL                         R58 16
      528 GETTABLEKS                       R57 R58 K74 ["Provider"]
      530 DUPTABLE                         R58 K76 [{"value"}]
      531 SETTABLEKS                       R43 R58 K75 ["value"]
      533 GETTABLEKS                       R59 R2 K77 ["children"]
      535 CALL                             R56 3 1
      536 SETTABLEKS                       R56 R55 K61 ["Content"]
      538 CALL                             R52 3 1
      539 SETTABLEKS                       R52 R51 K44 ["Sheet"]
      541 GETUPVAL                         R53 5
      542 GETTABLEKS                       R52 R53 K17 ["createElement"]
      544 GETUPVAL                         R53 17
      545 DUPTABLE                         R54 K81 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle"}]
      546 GETUPVAL                         R55 18
      547 SETTABLEKS                       R55 R54 K78 ["Image"]
      549 GETIMPORT                        R55 K33 [UDim2.new]
      551 LOADN                            R56 1
      552 GETUPVAL                         R58 19
      553 MULK                             R57 R58 K82 [2]
      554 LOADN                            R58 0
      555 ADDK                             R60 R8 K52 [200]
      556 GETUPVAL                         R62 19
      557 MULK                             R61 R62 K82 [2]
      558 ADD                              R59 R60 R61
      559 CALL                             R55 4 1
      560 SETTABLEKS                       R55 R54 K31 ["Size"]
      562 GETIMPORT                        R55 K54 [UDim2.fromOffset]
      564 GETUPVAL                         R57 19
      565 MINUS                            R56 R57
      566 ADD                              R58 R5 R9
      567 GETUPVAL                         R59 19
      568 SUB                              R57 R58 R59
      569 CALL                             R55 2 1
      570 SETTABLEKS                       R55 R54 K48 ["Position"]
      572 LOADN                            R55 2
      573 SETTABLEKS                       R55 R54 K18 ["ZIndex"]
      575 DUPTABLE                         R55 K85 [{"center", "scale"}]
      576 GETIMPORT                        R56 K87 [Rect.new]
      578 GETUPVAL                         R57 19
      579 GETUPVAL                         R58 19
      580 GETUPVAL                         R60 19
      581 ADDK                             R59 R60 K88 [1]
      582 GETUPVAL                         R61 19
      583 ADDK                             R60 R61 K88 [1]
      584 CALL                             R56 4 1
      585 SETTABLEKS                       R56 R55 K83 ["center"]
      587 LOADN                            R56 2
      588 SETTABLEKS                       R56 R55 K84 ["scale"]
      590 SETTABLEKS                       R55 R54 K79 ["slice"]
      592 GETTABLEKS                       R58 R4 K65 ["Color"]
      594 GETTABLEKS                       R57 R58 K89 ["Extended"]
      596 GETTABLEKS                       R56 R57 K90 ["Black"]
      598 GETTABLEKS                       R55 R56 K91 ["Black_10"]
      600 SETTABLEKS                       R55 R54 K80 ["imageStyle"]
      602 CALL                             R52 2 1
      603 SETTABLEKS                       R52 R51 K45 ["Shadow"]
      605 GETUPVAL                         R53 5
      606 GETTABLEKS                       R52 R53 K17 ["createElement"]
      608 GETUPVAL                         R53 12
      609 DUPTABLE                         R54 K92 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      610 GETIMPORT                        R55 K30 [UDim2.fromScale]
      612 LOADN                            R56 1
      613 LOADN                            R57 2
      614 CALL                             R55 2 1
      615 SETTABLEKS                       R55 R54 K31 ["Size"]
      617 GETIMPORT                        R55 K30 [UDim2.fromScale]
      619 LOADN                            R56 0
      620 LOADK                            R57 K93 [-0.5]
      621 CALL                             R55 2 1
      622 SETTABLEKS                       R55 R54 K48 ["Position"]
      624 LOADN                            R55 1
      625 SETTABLEKS                       R55 R54 K18 ["ZIndex"]
      627 DUPTABLE                         R55 K56 [{"affordance"}]
      628 GETUPVAL                         R57 14
      629 GETTABLEKS                       R56 R57 K57 ["None"]
      631 SETTABLEKS                       R56 R55 K55 ["affordance"]
      633 SETTABLEKS                       R55 R54 K49 ["stateLayer"]
      635 NEWCLOSURE                       R57 P15
      636 CAPTURE                          VAL R4
      637 NAMECALL                         R55 R12 K94 ["map"]
      639 CALL                             R55 2 1
      640 SETTABLEKS                       R55 R54 K63 ["backgroundStyle"]
      642 SETTABLEKS                       R37 R54 K50 ["onActivated"]
      644 LOADK                            R56 K95 ["%*--backdrop"]
      645 GETTABLEKS                       R58 R2 K15 ["testId"]
      647 NAMECALL                         R56 R56 K69 ["format"]
      649 CALL                             R56 2 1
      650 MOVE                             R55 R56
      651 SETTABLEKS                       R55 R54 K15 ["testId"]
      653 CALL                             R52 2 1
      654 SETTABLEKS                       R52 R51 K46 ["Backdrop"]
      656 CALL                             R48 3 -1
      657 CALL                             R45 -1 1
      658 MOVE                             R46 R3
      659 CALL                             R44 2 1
      660 CLOSEUPVALS                      R8
      661 RETURN                           R44 1

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
       43 GETTABLEKS                       R12 R0 K14 ["Providers"]
       45 GETTABLEKS                       R11 R12 K15 ["Overlay"]
       47 GETTABLEKS                       R10 R11 K16 ["useOverlay"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K6 [require]
       52 GETTABLEKS                       R13 R0 K14 ["Providers"]
       54 GETTABLEKS                       R12 R13 K17 ["Style"]
       56 GETTABLEKS                       R11 R12 K18 ["useTokens"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K6 [require]
       61 GETTABLEKS                       R13 R0 K19 ["Enums"]
       63 GETTABLEKS                       R12 R13 K20 ["StateLayerAffordance"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K6 [require]
       68 GETTABLEKS                       R14 R0 K21 ["Utility"]
       70 GETTABLEKS                       R13 R14 K22 ["withDefaults"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K6 [require]
       75 GETTABLEKS                       R14 R0 K23 ["Constants"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K6 [require]
       80 GETIMPORT                        R17 K1 [script]
       82 GETTABLEKS                       R16 R17 K4 ["Parent"]
       84 GETTABLEKS                       R15 R16 K24 ["SheetContext"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K6 [require]
       89 GETIMPORT                        R18 K1 [script]
       91 GETTABLEKS                       R17 R18 K4 ["Parent"]
       93 GETTABLEKS                       R16 R17 K25 ["Types"]
       95 CALL                             R15 1 1
       96 GETIMPORT                        R16 K6 [require]
       98 GETIMPORT                        R19 K1 [script]
      100 GETTABLEKS                       R18 R19 K4 ["Parent"]
      102 GETTABLEKS                       R17 R18 K26 ["SheetType"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K6 [require]
      107 GETIMPORT                        R20 K1 [script]
      109 GETTABLEKS                       R19 R20 K4 ["Parent"]
      111 GETTABLEKS                       R18 R19 K27 ["useHardwareInsets"]
      113 CALL                             R17 1 1
      114 GETIMPORT                        R18 K6 [require]
      116 GETIMPORT                        R21 K1 [script]
      118 GETTABLEKS                       R20 R21 K4 ["Parent"]
      120 GETTABLEKS                       R19 R20 K28 ["useScreenHeight"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K6 [require]
      125 GETTABLEKS                       R21 R0 K29 ["Components"]
      127 GETTABLEKS                       R20 R21 K30 ["View"]
      129 CALL                             R19 1 1
      130 GETIMPORT                        R20 K6 [require]
      132 GETTABLEKS                       R22 R0 K29 ["Components"]
      134 GETTABLEKS                       R21 R22 K31 ["Image"]
      136 CALL                             R20 1 1
      137 DUPTABLE                         R21 K34 [{"defaultSnapPointIndex", "testId"}]
      138 LOADN                            R22 1
      139 SETTABLEKS                       R22 R21 K32 ["defaultSnapPointIndex"]
      141 LOADK                            R22 K35 ["--foundation-sheet"]
      142 SETTABLEKS                       R22 R21 K33 ["testId"]
      144 GETTABLEKS                       R22 R13 K36 ["SHADOW_IMAGE"]
      146 GETTABLEKS                       R23 R13 K37 ["SHADOW_SIZE"]
      148 DUPCLOSURE                       R24 K38 [PROTO_24]
      149 CAPTURE                          VAL R12
      150 CAPTURE                          VAL R21
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R18
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R17
      156 CAPTURE                          VAL R8
      157 CAPTURE                          VAL R5
      158 CAPTURE                          VAL R3
      159 CAPTURE                          VAL R16
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R19
      162 CAPTURE                          VAL R15
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R7
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R20
      167 CAPTURE                          VAL R22
      168 CAPTURE                          VAL R23
      169 GETTABLEKS                       R25 R2 K39 ["memo"]
      171 GETTABLEKS                       R26 R2 K40 ["forwardRef"]
      173 MOVE                             R27 R24
      174 CALL                             R26 1 -1
      175 CALL                             R25 -1 -1
      176 RETURN                           R25 -1
