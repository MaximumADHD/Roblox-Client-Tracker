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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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
       69 GETUPVAL                         R11 6
       70 GETTABLEKS                       R10 R11 K13 ["FoundationSheetBottomSheetAutoSize"]
       72 JUMPIFNOT                        R10 ; [+8]
       73 GETUPVAL                         R12 0
       74 GETTABLEKS                       R11 R12 K0 ["current"]
       76 GETTABLEKS                       R10 R11 K1 ["CanvasPosition"]
       78 GETTABLEKS                       R9 R10 K2 ["Y"]
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
       92 GETUPVAL                         R12 5
       93 GETTABLEKS                       R11 R12 K0 ["current"]
       95 FASTCALL1                        MATH_ABS R11 ; [+2]
       96 GETIMPORT                        R10 K15 [math.abs]
       98 CALL                             R10 1 1
       99 LOADN                            R11 1
      100 JUMPIFLT                         R10 R11 ; [+2]
      102 LOADB                            R9 0 +1
      103 LOADB                            R9 1
      104 JUMPIFNOT                        R9 ; [+12]
      105 GETUPVAL                         R11 0
      106 GETTABLEKS                       R10 R11 K0 ["current"]
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

PROTO_9:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_13:
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 NAMECALL                         R2 R2 K1 ["GetScrollVelocity"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R1 R2 K2 ["Y"]
        8 JUMPIFEQKN                       R1 K3 [0] ; [+2]
       10 LOADB                            R0 0 +1
       11 LOADB                            R0 1
       12 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOTEQKB                    R0 FALSE ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K1 ["FoundationSheetFixClosingSwipe"]
       13 JUMPIFNOT                        R0 ; [+23]
       14 LOADNIL                          R0
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R1 R2 K0 ["current"]
       18 JUMPIFNOT                        R1 ; [+7]
       19 GETIMPORT                        R1 K3 [pcall]
       21 NEWCLOSURE                       R2 P0
       22 CAPTURE                          UPVAL U2
       23 CALL                             R1 1 2
       24 JUMPIFNOT                        R1 ; [+1]
       25 MOVE                             R0 R2
       26 MOVE                             R1 R0
       27 JUMPIF                           R1 ; [+3]
       28 GETUPVAL                         R2 3
       29 GETTABLEKS                       R1 R2 K0 ["current"]
       31 JUMPIFNOT                        R1 ; [+28]
       32 GETUPVAL                         R2 4
       33 LOADB                            R3 1
       34 CALL                             R2 1 0
       35 RETURN                           R0 0
       36 JUMP                             ; [+23]
       37 GETUPVAL                         R1 5
       38 NAMECALL                         R1 R1 K4 ["getValue"]
       40 CALL                             R1 1 1
       41 JUMPIFNOT                        R1 ; [+13]
       42 LOADB                            R0 1
       43 GETUPVAL                         R2 6
       44 GETTABLEKS                       R1 R2 K0 ["current"]
       46 GETUPVAL                         R4 7
       47 GETUPVAL                         R5 8
       48 ADD                              R3 R4 R5
       49 FASTCALL1                        MATH_ROUND R3 ; [+2]
       50 GETIMPORT                        R2 K7 [math.round]
       52 CALL                             R2 1 1
       53 JUMPIFLE                         R2 R1 ; [+4]
       55 GETUPVAL                         R1 3
       56 GETTABLEKS                       R0 R1 K0 ["current"]
       58 JUMPIFNOT                        R0 ; [+1]
       59 RETURN                           R0 0
       60 GETUPVAL                         R0 9
       61 CALL                             R0 0 0
       62 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
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
       45 CAPTURE                          UPVAL U10
       46 CAPTURE                          UPVAL U11
       47 CAPTURE                          UPVAL U12
       48 NAMECALL                         R2 R2 K5 ["Connect"]
       50 CALL                             R2 2 1
       51 NEWCLOSURE                       R3 P3
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R2
       55 RETURN                           R3 1

PROTO_20:
        0 DUPTABLE                         R0 K1 [{"close"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["close"]
        4 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 0
        5 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
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

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R4 R0 K1 ["AbsoluteSize"]
        3 GETTABLEKS                       R3 R4 K2 ["Y"]
        5 SUBK                             R2 R3 K0 [200]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["FoundationSheetBottomSheetAutoSize"]
        7 JUMPIFNOT                        R0 ; [+5]
        8 GETUPVAL                         R1 2
        9 LENGTH                           R0 R1
       10 LOADN                            R1 1
       11 JUMPIFNOTLT                      R1 R0 ; [+29]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R2 R3 K0 ["current"]
       16 GETUPVAL                         R4 2
       17 LENGTH                           R3 R4
       18 MOD                              R1 R2 R3
       19 ADDK                             R0 R1 K2 [1]
       20 GETUPVAL                         R1 4
       21 MOVE                             R2 R0
       22 CALL                             R1 1 0
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R1 R2 K3 ["FoundationSheetFixClosingSwipe"]
       26 JUMPIFNOT                        R1 ; [+16]
       27 GETUPVAL                         R2 5
       28 GETUPVAL                         R4 2
       29 GETTABLE                         R3 R4 R0
       30 CALL                             R2 1 1
       31 GETUPVAL                         R3 6
       32 JUMPIFEQ                         R2 R3 ; [+2]
       34 LOADB                            R1 0 +1
       35 LOADB                            R1 1
       36 JUMPIFNOT                        R1 ; [+6]
       37 GETUPVAL                         R2 7
       38 LOADB                            R3 1
       39 CALL                             R2 1 0
       40 RETURN                           R0 0
       41 GETUPVAL                         R0 8
       42 CALL                             R0 0 0
       43 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 4
        9 GETUPVAL                         R7 5
       10 GETTABLEKS                       R6 R7 K0 ["Sheet"]
       12 DUPTABLE                         R7 K2 [{"relativeToOwner"}]
       13 LOADB                            R8 0
       14 SETTABLEKS                       R8 R7 K1 ["relativeToOwner"]
       16 CALL                             R5 2 1
       17 GETUPVAL                         R6 6
       18 CALL                             R6 0 1
       19 LOADNIL                          R7
       20 LOADNIL                          R8
       21 GETUPVAL                         R10 7
       22 GETTABLEKS                       R9 R10 K3 ["FoundationSheetBottomSheetAutoSize"]
       24 JUMPIFNOT                        R9 ; [+7]
       25 GETUPVAL                         R10 8
       26 GETTABLEKS                       R9 R10 K4 ["useState"]
       28 LOADN                            R10 0
       29 CALL                             R9 1 2
       30 MOVE                             R7 R9
       31 MOVE                             R8 R10
       32 GETUPVAL                         R11 7
       33 GETTABLEKS                       R10 R11 K3 ["FoundationSheetBottomSheetAutoSize"]
       35 JUMPIFNOT                        R10 ; [+12]
       36 GETUPVAL                         R10 8
       37 GETTABLEKS                       R9 R10 K5 ["useMemo"]
       39 NEWCLOSURE                       R10 P0
       40 CAPTURE                          REF R7
       41 NEWTABLE                         R11 0 1
       43 MOVE                             R12 R7
       44 SETLIST                          R11 R12 1 [1]
       46 CALL                             R9 2 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R9
       49 GETUPVAL                         R11 7
       50 GETTABLEKS                       R10 R11 K3 ["FoundationSheetBottomSheetAutoSize"]
       52 JUMPIF                           R10 ; [+8]
       53 GETTABLEKS                       R10 R2 K6 ["snapPoints"]
       55 JUMPIFNOTEQKNIL                  R10 ; [+5]
       57 GETIMPORT                        R10 K8 [warn]
       59 LOADK                            R11 K9 ["snapPoints is required until FFlagFoundationSheetBottomSheetAutoSize is enabled"]
       60 CALL                             R10 1 0
       61 GETTABLEKS                       R11 R2 K6 ["snapPoints"]
       63 OR                               R10 R11 R9
       64 GETUPVAL                         R12 8
       65 GETTABLEKS                       R11 R12 K10 ["useCallback"]
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
       96 GETUPVAL                         R14 9
       97 MOVE                             R15 R3
       98 CALL                             R14 1 1
       99 GETTABLEKS                       R13 R14 K14 ["bottom"]
      101 GETUPVAL                         R15 8
      102 GETTABLEKS                       R14 R15 K15 ["useRef"]
      104 LOADN                            R15 0
      105 CALL                             R14 1 1
      106 GETUPVAL                         R16 8
      107 GETTABLEKS                       R15 R16 K15 ["useRef"]
      109 LOADB                            R16 0
      110 CALL                             R15 1 1
      111 GETUPVAL                         R16 10
      112 LOADN                            R17 1
      113 NEWCLOSURE                       R18 P2
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R2
      116 CALL                             R16 2 2
      117 GETUPVAL                         R19 8
      118 GETTABLEKS                       R18 R19 K16 ["useBinding"]
      120 MINUS                            R19 R13
      121 CALL                             R18 1 2
      122 GETUPVAL                         R21 8
      123 GETTABLEKS                       R20 R21 K16 ["useBinding"]
      125 LOADN                            R21 0
      126 CALL                             R20 1 2
      127 GETUPVAL                         R23 8
      128 GETTABLEKS                       R22 R23 K16 ["useBinding"]
      130 LOADB                            R23 0
      131 CALL                             R22 1 2
      132 GETUPVAL                         R25 8
      133 GETTABLEKS                       R24 R25 K16 ["useBinding"]
      135 LOADB                            R25 0
      136 CALL                             R24 1 2
      137 GETUPVAL                         R27 8
      138 GETTABLEKS                       R26 R27 K15 ["useRef"]
      140 LOADN                            R27 0
      141 CALL                             R26 1 1
      142 GETUPVAL                         R28 8
      143 GETTABLEKS                       R27 R28 K15 ["useRef"]
      145 LOADNIL                          R28
      146 CALL                             R27 1 1
      147 GETUPVAL                         R29 8
      148 GETTABLEKS                       R28 R29 K16 ["useBinding"]
      150 LOADN                            R29 0
      151 CALL                             R28 1 2
      152 GETUPVAL                         R31 8
      153 GETTABLEKS                       R30 R31 K16 ["useBinding"]
      155 LOADB                            R31 0
      156 CALL                             R30 1 2
      157 GETUPVAL                         R33 8
      158 GETTABLEKS                       R32 R33 K15 ["useRef"]
      160 LOADB                            R33 0
      161 CALL                             R32 1 1
      162 GETUPVAL                         R34 8
      163 GETTABLEKS                       R33 R34 K15 ["useRef"]
      165 LOADN                            R34 0
      166 CALL                             R33 1 1
      167 GETUPVAL                         R35 8
      168 GETTABLEKS                       R34 R35 K15 ["useRef"]
      170 LOADNIL                          R35
      171 CALL                             R34 1 1
      172 GETUPVAL                         R36 8
      173 GETTABLEKS                       R35 R36 K15 ["useRef"]
      175 LOADB                            R36 0
      176 CALL                             R35 1 1
      177 GETUPVAL                         R37 8
      178 GETTABLEKS                       R36 R37 K15 ["useRef"]
      180 LOADN                            R37 0
      181 CALL                             R36 1 1
      182 GETUPVAL                         R38 8
      183 GETTABLEKS                       R37 R38 K10 ["useCallback"]
      185 NEWCLOSURE                       R38 P3
      186 CAPTURE                          VAL R34
      187 CAPTURE                          VAL R33
      188 CAPTURE                          VAL R35
      189 NEWTABLE                         R39 0 0
      191 CALL                             R37 2 1
      192 GETUPVAL                         R39 8
      193 GETTABLEKS                       R38 R39 K10 ["useCallback"]
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
      208 GETUPVAL                         R40 8
      209 GETTABLEKS                       R39 R40 K10 ["useCallback"]
      211 NEWCLOSURE                       R40 P5
      212 CAPTURE                          VAL R11
      213 CAPTURE                          VAL R13
      214 NEWTABLE                         R41 0 2
      216 MOVE                             R42 R13
      217 MOVE                             R43 R11
      218 SETLIST                          R41 R42 2 [1]
      220 CALL                             R39 2 1
      221 GETUPVAL                         R41 8
      222 GETTABLEKS                       R40 R41 K10 ["useCallback"]
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
      236 GETUPVAL                         R42 8
      237 GETTABLEKS                       R41 R42 K10 ["useCallback"]
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
      253 GETUPVAL                         R43 8
      254 GETTABLEKS                       R42 R43 K10 ["useCallback"]
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
      271 GETUPVAL                         R44 8
      272 GETTABLEKS                       R43 R44 K10 ["useCallback"]
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
      292 GETUPVAL                         R45 8
      293 GETTABLEKS                       R44 R45 K17 ["useEffect"]
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
      318 GETUPVAL                         R45 8
      319 GETTABLEKS                       R44 R45 K17 ["useEffect"]
      321 NEWCLOSURE                       R45 P11
      322 CAPTURE                          VAL R33
      323 CAPTURE                          VAL R42
      324 CAPTURE                          VAL R32
      325 CAPTURE                          VAL R37
      326 CAPTURE                          UPVAL U7
      327 CAPTURE                          VAL R27
      328 CAPTURE                          VAL R15
      329 CAPTURE                          VAL R31
      330 CAPTURE                          VAL R30
      331 CAPTURE                          VAL R26
      332 CAPTURE                          REF R12
      333 CAPTURE                          VAL R13
      334 CAPTURE                          VAL R43
      335 NEWTABLE                         R46 0 4
      337 MOVE                             R47 R3
      338 MOVE                             R48 R43
      339 MOVE                             R49 R42
      340 MOVE                             R50 R37
      341 SETLIST                          R46 R47 4 [1]
      343 CALL                             R44 2 0
      344 GETUPVAL                         R45 8
      345 GETTABLEKS                       R44 R45 K4 ["useState"]
      347 LOADNIL                          R45
      348 CALL                             R44 1 2
      349 GETUPVAL                         R47 12
      350 GETTABLEKS                       R46 R47 K19 ["useComposedRef"]
      352 MOVE                             R47 R1
      353 MOVE                             R48 R45
      354 CALL                             R46 2 1
      355 GETUPVAL                         R48 8
      356 GETTABLEKS                       R47 R48 K20 ["useImperativeHandle"]
      358 GETTABLEKS                       R48 R2 K21 ["sheetRef"]
      360 NEWCLOSURE                       R49 P12
      361 CAPTURE                          VAL R41
      362 NEWTABLE                         R50 0 0
      364 CALL                             R47 3 0
      365 GETUPVAL                         R48 8
      366 GETTABLEKS                       R47 R48 K5 ["useMemo"]
      368 NEWCLOSURE                       R48 P13
      369 CAPTURE                          VAL R20
      370 CAPTURE                          VAL R21
      371 CAPTURE                          VAL R22
      372 CAPTURE                          VAL R23
      373 CAPTURE                          VAL R18
      374 CAPTURE                          VAL R19
      375 CAPTURE                          VAL R13
      376 CAPTURE                          VAL R30
      377 CAPTURE                          VAL R28
      378 CAPTURE                          VAL R29
      379 CAPTURE                          VAL R42
      380 CAPTURE                          VAL R24
      381 CAPTURE                          VAL R25
      382 CAPTURE                          VAL R41
      383 CAPTURE                          UPVAL U13
      384 CAPTURE                          VAL R44
      385 CAPTURE                          VAL R2
      386 NEWTABLE                         R49 0 5
      388 GETTABLEKS                       R50 R2 K22 ["testId"]
      390 MOVE                             R51 R41
      391 MOVE                             R52 R13
      392 MOVE                             R53 R42
      393 MOVE                             R54 R44
      394 SETLIST                          R49 R50 5 [1]
      396 CALL                             R47 2 1
      397 MOVE                             R48 R3
      398 JUMPIFNOT                        R48 ; [+436]
      399 GETUPVAL                         R49 14
      400 GETTABLEKS                       R48 R49 K23 ["createPortal"]
      402 GETUPVAL                         R50 8
      403 GETTABLEKS                       R49 R50 K24 ["createElement"]
      405 GETUPVAL                         R50 15
      406 DUPTABLE                         R51 K30 [{"ZIndex", "ref", "selection", "selectionGroup", "tag", "testId"}]
      407 GETTABLEKS                       R52 R5 K31 ["zIndex"]
      409 SETTABLEKS                       R52 R51 K25 ["ZIndex"]
      411 SETTABLEKS                       R46 R51 K26 ["ref"]
      413 GETUPVAL                         R53 16
      414 GETTABLEKS                       R52 R53 K32 ["nonSelectable"]
      416 SETTABLEKS                       R52 R51 K27 ["selection"]
      418 GETUPVAL                         R53 16
      419 GETTABLEKS                       R52 R53 K33 ["isolatedSelectionGroup"]
      421 SETTABLEKS                       R52 R51 K28 ["selectionGroup"]
      423 LOADK                            R52 K34 ["size-full"]
      424 SETTABLEKS                       R52 R51 K29 ["tag"]
      426 LOADK                            R53 K35 ["%*--surface"]
      427 GETTABLEKS                       R55 R2 K22 ["testId"]
      429 NAMECALL                         R53 R53 K36 ["format"]
      431 CALL                             R53 2 1
      432 MOVE                             R52 R53
      433 SETTABLEKS                       R52 R51 K22 ["testId"]
      435 GETUPVAL                         R53 8
      436 GETTABLEKS                       R52 R53 K24 ["createElement"]
      438 LOADK                            R53 K37 ["ScrollingFrame"]
      439 NEWTABLE                         R54 8 0
      441 GETIMPORT                        R55 K40 [UDim2.fromScale]
      443 LOADN                            R56 1
      444 LOADN                            R57 1
      445 CALL                             R55 2 1
      446 SETTABLEKS                       R55 R54 K41 ["Size"]
      448 GETIMPORT                        R55 K43 [UDim2.new]
      450 LOADN                            R56 1
      451 LOADN                            R57 0
      452 LOADN                            R58 0
      453 ADD                              R60 R6 R12
      454 ADD                              R59 R60 R13
      455 CALL                             R55 4 1
      456 SETTABLEKS                       R55 R54 K44 ["CanvasSize"]
      458 LOADB                            R55 0
      459 SETTABLEKS                       R55 R54 K45 ["ClipsDescendants"]
      461 LOADN                            R55 1
      462 SETTABLEKS                       R55 R54 K46 ["BackgroundTransparency"]
      464 GETIMPORT                        R55 K50 [Enum.ScrollingDirection.Y]
      466 SETTABLEKS                       R55 R54 K48 ["ScrollingDirection"]
      468 LOADN                            R55 0
      469 SETTABLEKS                       R55 R54 K51 ["ScrollBarThickness"]
      471 SETTABLEKS                       R27 R54 K26 ["ref"]
      473 GETUPVAL                         R57 8
      474 GETTABLEKS                       R56 R57 K52 ["Change"]
      476 GETTABLEKS                       R55 R56 K53 ["CanvasPosition"]
      478 NEWCLOSURE                       R56 P14
      479 CAPTURE                          VAL R26
      480 CAPTURE                          VAL R19
      481 CAPTURE                          VAL R13
      482 CAPTURE                          VAL R4
      483 CAPTURE                          VAL R42
      484 CAPTURE                          VAL R41
      485 SETTABLE                         R56 R54 R55
      486 DUPTABLE                         R55 K57 [{"SheetContainer", "Shadow", "Backdrop"}]
      487 GETUPVAL                         R57 8
      488 GETTABLEKS                       R56 R57 K24 ["createElement"]
      490 GETUPVAL                         R59 7
      491 GETTABLEKS                       R58 R59 K3 ["FoundationSheetBottomSheetAutoSize"]
      493 JUMPIFNOT                        R58 ; [+2]
      494 GETUPVAL                         R57 15
      495 JUMP                             ; [+3]
      496 GETUPVAL                         R58 8
      497 GETTABLEKS                       R57 R58 K58 ["Fragment"]
      499 GETUPVAL                         R60 7
      500 GETTABLEKS                       R59 R60 K3 ["FoundationSheetBottomSheetAutoSize"]
      502 JUMPIFNOT                        R59 ; [+21]
      503 DUPTABLE                         R58 K60 [{"Size", "Position", "ZIndex"}]
      504 GETIMPORT                        R59 K43 [UDim2.new]
      506 LOADN                            R60 1
      507 LOADN                            R61 0
      508 LOADN                            R62 0
      509 ADDK                             R63 R6 K61 [200]
      510 CALL                             R59 4 1
      511 SETTABLEKS                       R59 R58 K41 ["Size"]
      513 GETIMPORT                        R59 K63 [UDim2.fromOffset]
      515 LOADN                            R60 0
      516 ADD                              R61 R6 R13
      517 CALL                             R59 2 1
      518 SETTABLEKS                       R59 R58 K59 ["Position"]
      520 LOADN                            R59 3
      521 SETTABLEKS                       R59 R58 K25 ["ZIndex"]
      523 JUMP                             ; [+1]
      524 LOADNIL                          R58
      525 DUPTABLE                         R59 K64 [{"Sheet"}]
      526 GETUPVAL                         R61 8
      527 GETTABLEKS                       R60 R61 K24 ["createElement"]
      529 GETUPVAL                         R61 15
      530 DUPTABLE                         R62 K69 [{"Size", "AutomaticSize", "onAbsoluteSizeChanged", "Position", "ZIndex", "stateLayer", "onActivated", "testId", "tag"}]
      531 GETUPVAL                         R65 7
      532 GETTABLEKS                       R64 R65 K3 ["FoundationSheetBottomSheetAutoSize"]
      534 JUMPIFNOT                        R64 ; [+10]
      535 GETTABLEKS                       R64 R2 K6 ["snapPoints"]
      537 JUMPIFNOTEQKNIL                  R64 ; [+7]
      539 GETIMPORT                        R63 K40 [UDim2.fromScale]
      541 LOADN                            R64 1
      542 LOADN                            R65 0
      543 CALL                             R63 2 1
      544 JUMP                             ; [+7]
      545 GETIMPORT                        R63 K43 [UDim2.new]
      547 LOADN                            R64 1
      548 LOADN                            R65 0
      549 LOADN                            R66 0
      550 ADDK                             R67 R12 K61 [200]
      551 CALL                             R63 4 1
      552 SETTABLEKS                       R63 R62 K41 ["Size"]
      554 GETUPVAL                         R65 7
      555 GETTABLEKS                       R64 R65 K3 ["FoundationSheetBottomSheetAutoSize"]
      557 JUMPIFNOT                        R64 ; [+7]
      558 GETTABLEKS                       R64 R2 K6 ["snapPoints"]
      560 JUMPIFNOTEQKNIL                  R64 ; [+4]
      562 GETIMPORT                        R63 K70 [Enum.AutomaticSize.Y]
      564 JUMP                             ; [+1]
      565 LOADNIL                          R63
      566 SETTABLEKS                       R63 R62 K65 ["AutomaticSize"]
      568 GETUPVAL                         R65 7
      569 GETTABLEKS                       R64 R65 K3 ["FoundationSheetBottomSheetAutoSize"]
      571 JUMPIFNOT                        R64 ; [+7]
      572 GETTABLEKS                       R64 R2 K6 ["snapPoints"]
      574 JUMPIFNOTEQKNIL                  R64 ; [+4]
      576 NEWCLOSURE                       R63 P15
      577 CAPTURE                          REF R8
      578 JUMP                             ; [+1]
      579 LOADNIL                          R63
      580 SETTABLEKS                       R63 R62 K66 ["onAbsoluteSizeChanged"]
      582 GETUPVAL                         R65 7
      583 GETTABLEKS                       R64 R65 K3 ["FoundationSheetBottomSheetAutoSize"]
      585 JUMPIFNOT                        R64 ; [+2]
      586 LOADNIL                          R63
      587 JUMP                             ; [+5]
      588 GETIMPORT                        R63 K63 [UDim2.fromOffset]
      590 LOADN                            R64 0
      591 ADD                              R65 R6 R13
      592 CALL                             R63 2 1
      593 SETTABLEKS                       R63 R62 K59 ["Position"]
      595 GETUPVAL                         R65 7
      596 GETTABLEKS                       R64 R65 K3 ["FoundationSheetBottomSheetAutoSize"]
      598 JUMPIFNOT                        R64 ; [+2]
      599 LOADNIL                          R63
      600 JUMP                             ; [+1]
      601 LOADN                            R63 3
      602 SETTABLEKS                       R63 R62 K25 ["ZIndex"]
      604 DUPTABLE                         R63 K72 [{"affordance"}]
      605 GETUPVAL                         R65 17
      606 GETTABLEKS                       R64 R65 K73 ["None"]
      608 SETTABLEKS                       R64 R63 K71 ["affordance"]
      610 SETTABLEKS                       R63 R62 K67 ["stateLayer"]
      612 GETUPVAL                         R64 18
      613 GETTABLEKS                       R63 R64 K74 ["noop"]
      615 SETTABLEKS                       R63 R62 K68 ["onActivated"]
      617 GETTABLEKS                       R63 R2 K22 ["testId"]
      619 SETTABLEKS                       R63 R62 K22 ["testId"]
      621 LOADK                            R63 K75 ["bg-surface-100 radius-large col items-center clip padding-top-small"]
      622 SETTABLEKS                       R63 R62 K29 ["tag"]
      624 DUPTABLE                         R63 K78 [{"Gripper", "Content"}]
      625 GETUPVAL                         R65 8
      626 GETTABLEKS                       R64 R65 K24 ["createElement"]
      628 GETUPVAL                         R65 15
      629 DUPTABLE                         R66 K80 [{"ZIndex", "backgroundStyle", "tag", "testId"}]
      630 LOADN                            R67 3
      631 SETTABLEKS                       R67 R66 K25 ["ZIndex"]
      633 GETTABLEKS                       R69 R4 K81 ["Color"]
      635 GETTABLEKS                       R68 R69 K77 ["Content"]
      637 GETTABLEKS                       R67 R68 K82 ["Muted"]
      639 SETTABLEKS                       R67 R66 K79 ["backgroundStyle"]
      641 LOADK                            R67 K83 ["padding-y-small size-1000-100 radius-small align-y-center"]
      642 SETTABLEKS                       R67 R66 K29 ["tag"]
      644 LOADK                            R68 K84 ["%*--gripper"]
      645 GETTABLEKS                       R70 R2 K22 ["testId"]
      647 NAMECALL                         R68 R68 K36 ["format"]
      649 CALL                             R68 2 1
      650 MOVE                             R67 R68
      651 SETTABLEKS                       R67 R66 K22 ["testId"]
      653 DUPTABLE                         R67 K86 [{"TouchTarget"}]
      654 GETUPVAL                         R69 8
      655 GETTABLEKS                       R68 R69 K24 ["createElement"]
      657 GETUPVAL                         R69 15
      658 DUPTABLE                         R70 K87 [{"tag", "stateLayer", "onActivated"}]
      659 LOADK                            R71 K88 ["size-1000-600"]
      660 SETTABLEKS                       R71 R70 K29 ["tag"]
      662 DUPTABLE                         R71 K72 [{"affordance"}]
      663 GETUPVAL                         R73 17
      664 GETTABLEKS                       R72 R73 K73 ["None"]
      666 SETTABLEKS                       R72 R71 K71 ["affordance"]
      668 SETTABLEKS                       R71 R70 K67 ["stateLayer"]
      670 NEWCLOSURE                       R71 P16
      671 CAPTURE                          VAL R32
      672 CAPTURE                          UPVAL U7
      673 CAPTURE                          VAL R10
      674 CAPTURE                          VAL R14
      675 CAPTURE                          VAL R40
      676 CAPTURE                          VAL R11
      677 CAPTURE                          REF R12
      678 CAPTURE                          VAL R31
      679 CAPTURE                          VAL R41
      680 SETTABLEKS                       R71 R70 K68 ["onActivated"]
      682 CALL                             R68 2 1
      683 SETTABLEKS                       R68 R67 K85 ["TouchTarget"]
      685 CALL                             R64 3 1
      686 SETTABLEKS                       R64 R63 K76 ["Gripper"]
      688 GETUPVAL                         R65 8
      689 GETTABLEKS                       R64 R65 K24 ["createElement"]
      691 GETUPVAL                         R66 19
      692 GETTABLEKS                       R65 R66 K89 ["Provider"]
      694 DUPTABLE                         R66 K91 [{"value"}]
      695 SETTABLEKS                       R47 R66 K90 ["value"]
      697 GETUPVAL                         R68 8
      698 GETTABLEKS                       R67 R68 K24 ["createElement"]
      700 GETUPVAL                         R68 20
      701 DUPTABLE                         R69 K93 [{"owner"}]
      702 SETTABLEKS                       R5 R69 K92 ["owner"]
      704 GETTABLEKS                       R70 R2 K94 ["children"]
      706 CALL                             R67 3 -1
      707 CALL                             R64 -1 1
      708 SETTABLEKS                       R64 R63 K77 ["Content"]
      710 CALL                             R60 3 1
      711 SETTABLEKS                       R60 R59 K0 ["Sheet"]
      713 CALL                             R56 3 1
      714 SETTABLEKS                       R56 R55 K54 ["SheetContainer"]
      716 GETUPVAL                         R57 8
      717 GETTABLEKS                       R56 R57 K24 ["createElement"]
      719 GETUPVAL                         R57 21
      720 DUPTABLE                         R58 K98 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle"}]
      721 GETUPVAL                         R59 22
      722 SETTABLEKS                       R59 R58 K95 ["Image"]
      724 GETIMPORT                        R59 K43 [UDim2.new]
      726 LOADN                            R60 1
      727 GETUPVAL                         R62 23
      728 MULK                             R61 R62 K99 [2]
      729 LOADN                            R62 0
      730 ADDK                             R64 R12 K61 [200]
      731 GETUPVAL                         R66 23
      732 MULK                             R65 R66 K99 [2]
      733 ADD                              R63 R64 R65
      734 CALL                             R59 4 1
      735 SETTABLEKS                       R59 R58 K41 ["Size"]
      737 GETIMPORT                        R59 K63 [UDim2.fromOffset]
      739 GETUPVAL                         R61 23
      740 MINUS                            R60 R61
      741 ADD                              R62 R6 R13
      742 GETUPVAL                         R63 23
      743 SUB                              R61 R62 R63
      744 CALL                             R59 2 1
      745 SETTABLEKS                       R59 R58 K59 ["Position"]
      747 LOADN                            R59 2
      748 SETTABLEKS                       R59 R58 K25 ["ZIndex"]
      750 DUPTABLE                         R59 K102 [{"center", "scale"}]
      751 GETIMPORT                        R60 K104 [Rect.new]
      753 GETUPVAL                         R61 23
      754 GETUPVAL                         R62 23
      755 GETUPVAL                         R64 23
      756 ADDK                             R63 R64 K105 [1]
      757 GETUPVAL                         R65 23
      758 ADDK                             R64 R65 K105 [1]
      759 CALL                             R60 4 1
      760 SETTABLEKS                       R60 R59 K100 ["center"]
      762 LOADN                            R60 2
      763 SETTABLEKS                       R60 R59 K101 ["scale"]
      765 SETTABLEKS                       R59 R58 K96 ["slice"]
      767 GETTABLEKS                       R62 R4 K81 ["Color"]
      769 GETTABLEKS                       R61 R62 K106 ["Extended"]
      771 GETTABLEKS                       R60 R61 K107 ["Black"]
      773 GETTABLEKS                       R59 R60 K108 ["Black_10"]
      775 SETTABLEKS                       R59 R58 K97 ["imageStyle"]
      777 CALL                             R56 2 1
      778 SETTABLEKS                       R56 R55 K55 ["Shadow"]
      780 GETUPVAL                         R57 8
      781 GETTABLEKS                       R56 R57 K24 ["createElement"]
      783 GETUPVAL                         R57 15
      784 DUPTABLE                         R58 K109 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      785 GETIMPORT                        R59 K40 [UDim2.fromScale]
      787 LOADN                            R60 1
      788 LOADN                            R61 2
      789 CALL                             R59 2 1
      790 SETTABLEKS                       R59 R58 K41 ["Size"]
      792 GETIMPORT                        R59 K40 [UDim2.fromScale]
      794 LOADN                            R60 0
      795 LOADK                            R61 K110 [-0.5]
      796 CALL                             R59 2 1
      797 SETTABLEKS                       R59 R58 K59 ["Position"]
      799 LOADN                            R59 1
      800 SETTABLEKS                       R59 R58 K25 ["ZIndex"]
      802 DUPTABLE                         R59 K72 [{"affordance"}]
      803 GETUPVAL                         R61 17
      804 GETTABLEKS                       R60 R61 K73 ["None"]
      806 SETTABLEKS                       R60 R59 K71 ["affordance"]
      808 SETTABLEKS                       R59 R58 K67 ["stateLayer"]
      810 NEWCLOSURE                       R61 P17
      811 CAPTURE                          VAL R4
      812 NAMECALL                         R59 R16 K111 ["map"]
      814 CALL                             R59 2 1
      815 SETTABLEKS                       R59 R58 K79 ["backgroundStyle"]
      817 SETTABLEKS                       R41 R58 K68 ["onActivated"]
      819 LOADK                            R60 K112 ["%*--backdrop"]
      820 GETTABLEKS                       R62 R2 K22 ["testId"]
      822 NAMECALL                         R60 R60 K36 ["format"]
      824 CALL                             R60 2 1
      825 MOVE                             R59 R60
      826 SETTABLEKS                       R59 R58 K22 ["testId"]
      828 CALL                             R56 2 1
      829 SETTABLEKS                       R56 R55 K56 ["Backdrop"]
      831 CALL                             R52 3 -1
      832 CALL                             R49 -1 1
      833 MOVE                             R50 R3
      834 CALL                             R48 2 1
      835 CLOSEUPVALS                      R7
      836 RETURN                           R48 1

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
       43 GETTABLEKS                       R11 R0 K14 ["Enums"]
       45 GETTABLEKS                       R10 R11 K15 ["StateLayerAffordance"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R13 R0 K16 ["Providers"]
       52 GETTABLEKS                       R12 R13 K17 ["Elevation"]
       54 GETTABLEKS                       R11 R12 K18 ["useElevation"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETTABLEKS                       R14 R0 K16 ["Providers"]
       61 GETTABLEKS                       R13 R14 K19 ["Overlay"]
       63 GETTABLEKS                       R12 R13 K20 ["useOverlay"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K6 [require]
       68 GETTABLEKS                       R15 R0 K16 ["Providers"]
       70 GETTABLEKS                       R14 R15 K21 ["Style"]
       72 GETTABLEKS                       R13 R14 K22 ["useTokens"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K6 [require]
       77 GETTABLEKS                       R15 R0 K23 ["Utility"]
       79 GETTABLEKS                       R14 R15 K24 ["withDefaults"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R15 K6 [require]
       84 GETTABLEKS                       R18 R0 K16 ["Providers"]
       86 GETTABLEKS                       R17 R18 K17 ["Elevation"]
       88 GETTABLEKS                       R16 R17 K25 ["ElevationProvider"]
       90 CALL                             R15 1 1
       91 GETTABLEKS                       R14 R15 K26 ["ElevationOwnerScope"]
       93 GETIMPORT                        R15 K6 [require]
       95 GETTABLEKS                       R17 R0 K14 ["Enums"]
       97 GETTABLEKS                       R16 R17 K27 ["ElevationLayer"]
       99 CALL                             R15 1 1
      100 GETIMPORT                        R16 K6 [require]
      102 GETTABLEKS                       R17 R0 K28 ["Constants"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K6 [require]
      107 GETIMPORT                        R20 K1 [script]
      109 GETTABLEKS                       R19 R20 K4 ["Parent"]
      111 GETTABLEKS                       R18 R19 K29 ["SheetContext"]
      113 CALL                             R17 1 1
      114 GETIMPORT                        R18 K6 [require]
      116 GETIMPORT                        R21 K1 [script]
      118 GETTABLEKS                       R20 R21 K4 ["Parent"]
      120 GETTABLEKS                       R19 R20 K30 ["Types"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K6 [require]
      125 GETIMPORT                        R22 K1 [script]
      127 GETTABLEKS                       R21 R22 K4 ["Parent"]
      129 GETTABLEKS                       R20 R21 K31 ["SheetType"]
      131 CALL                             R19 1 1
      132 GETIMPORT                        R20 K6 [require]
      134 GETIMPORT                        R23 K1 [script]
      136 GETTABLEKS                       R22 R23 K4 ["Parent"]
      138 GETTABLEKS                       R21 R22 K32 ["useHardwareInsets"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K6 [require]
      143 GETIMPORT                        R24 K1 [script]
      145 GETTABLEKS                       R23 R24 K4 ["Parent"]
      147 GETTABLEKS                       R22 R23 K33 ["useScreenHeight"]
      149 CALL                             R21 1 1
      150 GETIMPORT                        R22 K6 [require]
      152 GETTABLEKS                       R24 R0 K23 ["Utility"]
      154 GETTABLEKS                       R23 R24 K34 ["Flags"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K6 [require]
      159 GETTABLEKS                       R25 R0 K35 ["Components"]
      161 GETTABLEKS                       R24 R25 K36 ["Image"]
      163 CALL                             R23 1 1
      164 GETIMPORT                        R24 K6 [require]
      166 GETTABLEKS                       R26 R0 K35 ["Components"]
      168 GETTABLEKS                       R25 R26 K37 ["View"]
      170 CALL                             R24 1 1
      171 DUPTABLE                         R25 K40 [{"defaultSnapPointIndex", "testId"}]
      172 LOADN                            R26 1
      173 SETTABLEKS                       R26 R25 K38 ["defaultSnapPointIndex"]
      175 LOADK                            R26 K41 ["--foundation-sheet"]
      176 SETTABLEKS                       R26 R25 K39 ["testId"]
      178 GETTABLEKS                       R26 R16 K42 ["SHADOW_IMAGE"]
      180 GETTABLEKS                       R27 R16 K43 ["SHADOW_SIZE"]
      182 DUPCLOSURE                       R28 K44 [PROTO_27]
      183 CAPTURE                          VAL R13
      184 CAPTURE                          VAL R25
      185 CAPTURE                          VAL R11
      186 CAPTURE                          VAL R12
      187 CAPTURE                          VAL R10
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R21
      190 CAPTURE                          VAL R22
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R20
      193 CAPTURE                          VAL R8
      194 CAPTURE                          VAL R3
      195 CAPTURE                          VAL R7
      196 CAPTURE                          VAL R19
      197 CAPTURE                          VAL R6
      198 CAPTURE                          VAL R24
      199 CAPTURE                          VAL R18
      200 CAPTURE                          VAL R9
      201 CAPTURE                          VAL R2
      202 CAPTURE                          VAL R17
      203 CAPTURE                          VAL R14
      204 CAPTURE                          VAL R23
      205 CAPTURE                          VAL R26
      206 CAPTURE                          VAL R27
      207 GETTABLEKS                       R29 R4 K45 ["memo"]
      209 GETTABLEKS                       R30 R4 K46 ["forwardRef"]
      211 MOVE                             R31 R28
      212 CALL                             R30 1 -1
      213 CALL                             R29 -1 -1
      214 RETURN                           R29 -1
