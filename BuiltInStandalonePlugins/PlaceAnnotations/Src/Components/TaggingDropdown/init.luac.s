PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["refreshTaggableUsers"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+132]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+128]
        6 GETIMPORT                        R1 K2 [workspace]
        8 JUMPIFNOT                        R1 ; [+14]
        9 GETIMPORT                        R1 K2 [workspace]
       11 GETTABLEKS                       R1 R1 K3 ["CurrentCamera"]
       13 JUMPIFNOT                        R1 ; [+9]
       14 GETIMPORT                        R0 K2 [workspace]
       16 GETTABLEKS                       R0 R0 K3 ["CurrentCamera"]
       18 GETTABLEKS                       R0 R0 K4 ["ViewportSize"]
       20 GETTABLEKS                       R0 R0 K5 ["Y"]
       22 JUMPIF                           R0 ; [+1]
       23 LOADN                            R0 0
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K0 ["current"]
       27 JUMPIFNOT                        R2 ; [+37]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K0 ["current"]
       31 GETTABLEKS                       R2 R2 K6 ["AbsolutePosition"]
       33 GETTABLEKS                       R2 R2 K5 ["Y"]
       35 SUBK                             R3 R0 K7 [174]
       36 JUMPIFNOTLT                      R2 R3 ; [+28]
       38 GETIMPORT                        R1 K10 [UDim2.fromOffset]
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R2 R2 K0 ["current"]
       43 GETTABLEKS                       R2 R2 K6 ["AbsolutePosition"]
       45 GETTABLEKS                       R2 R2 K11 ["X"]
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R5 R5 K0 ["current"]
       50 GETTABLEKS                       R5 R5 K6 ["AbsolutePosition"]
       52 GETTABLEKS                       R5 R5 K5 ["Y"]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K0 ["current"]
       57 GETTABLEKS                       R6 R6 K13 ["TextBounds"]
       59 GETTABLEKS                       R6 R6 K5 ["Y"]
       61 ADD                              R4 R5 R6
       62 ADDK                             R3 R4 K12 [24]
       63 CALL                             R1 2 1
       64 JUMP                             ; [+32]
       65 GETUPVAL                         R2 0
       66 GETTABLEKS                       R2 R2 K0 ["current"]
       68 JUMPIFNOT                        R2 ; [+23]
       69 GETIMPORT                        R1 K10 [UDim2.fromOffset]
       71 GETUPVAL                         R2 0
       72 GETTABLEKS                       R2 R2 K0 ["current"]
       74 GETTABLEKS                       R2 R2 K6 ["AbsolutePosition"]
       76 GETTABLEKS                       R2 R2 K11 ["X"]
       78 GETUPVAL                         R5 0
       79 GETTABLEKS                       R5 R5 K0 ["current"]
       81 GETTABLEKS                       R5 R5 K6 ["AbsolutePosition"]
       83 GETTABLEKS                       R5 R5 K5 ["Y"]
       85 SUBK                             R4 R5 K14 [4]
       86 GETUPVAL                         R7 1
       87 LENGTH                           R6 R7
       88 MULK                             R5 R6 K15 [34]
       89 SUB                              R3 R4 R5
       90 CALL                             R1 2 1
       91 JUMP                             ; [+5]
       92 GETIMPORT                        R1 K10 [UDim2.fromOffset]
       94 LOADN                            R2 0
       95 LOADN                            R3 0
       96 CALL                             R1 2 1
       97 GETUPVAL                         R2 2
       98 MOVE                             R3 R1
       99 CALL                             R2 1 0
      100 GETUPVAL                         R3 0
      101 GETTABLEKS                       R3 R3 K0 ["current"]
      103 JUMPIFNOT                        R3 ; [+22]
      104 GETUPVAL                         R3 0
      105 GETTABLEKS                       R3 R3 K0 ["current"]
      107 GETTABLEKS                       R3 R3 K16 ["AbsoluteSize"]
      109 GETTABLEKS                       R3 R3 K11 ["X"]
      111 LOADN                            R4 24
      112 JUMPIFNOTLE                      R4 R3 ; [+13]
      114 GETIMPORT                        R2 K10 [UDim2.fromOffset]
      116 GETUPVAL                         R3 0
      117 GETTABLEKS                       R3 R3 K0 ["current"]
      119 GETTABLEKS                       R3 R3 K16 ["AbsoluteSize"]
      121 GETTABLEKS                       R3 R3 K11 ["X"]
      123 LOADN                            R4 0
      124 CALL                             R2 2 1
      125 JUMP                             ; [+5]
      126 GETIMPORT                        R2 K10 [UDim2.fromOffset]
      128 LOADN                            R3 24
      129 LOADN                            R4 0
      130 CALL                             R2 2 1
      131 GETUPVAL                         R3 3
      132 MOVE                             R4 R2
      133 CALL                             R3 1 0
      134 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 LOADK                            R2 K1 ["AbsolutePosition"]
        4 NAMECALL                         R0 R0 K2 ["GetPropertyChangedSignal"]
        6 CALL                             R0 2 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U1
        9 NAMECALL                         R0 R0 K3 ["Connect"]
       11 CALL                             R0 2 1
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          VAL R0
       14 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R2
        5 NAMECALL                         R0 R0 K0 ["SetFocusedElement"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 LOADN                            R4 1
        2 GETUPVAL                         R5 1
        3 NAMECALL                         R2 R2 K0 ["sub"]
        5 CALL                             R2 3 1
        6 GETUPVAL                         R4 0
        7 GETUPVAL                         R7 1
        8 ADDK                             R6 R7 K2 [1]
        9 NAMECALL                         R4 R4 K0 ["sub"]
       11 CALL                             R4 2 1
       12 LOADK                            R6 K3 ["%s.*"]
       13 NAMECALL                         R4 R4 K4 ["match"]
       15 CALL                             R4 2 1
       16 ORK                              R3 R4 K1 [""]
       17 MOVE                             R5 R2
       18 MOVE                             R6 R0
       19 MOVE                             R7 R3
       20 LOADK                            R8 K5 [" "]
       21 CONCAT                           R4 R5 R8
       22 GETUPVAL                         R5 2
       23 JUMPIFNOT                        R5 ; [+9]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K6 ["current"]
       27 JUMPIFNOT                        R5 ; [+5]
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R5 R5 K6 ["current"]
       31 SETTABLEKS                       R4 R5 K7 ["Text"]
       33 GETUPVAL                         R5 3
       34 GETUPVAL                         R6 4
       35 CALL                             R5 1 1
       36 GETUPVAL                         R6 5
       37 MOVE                             R7 R5
       38 CALL                             R6 1 0
       39 GETUPVAL                         R6 6
       40 LOADN                            R7 254
       41 CALL                             R6 1 0
       42 GETUPVAL                         R6 7
       43 LENGTH                           R9 R2
       44 LENGTH                           R10 R0
       45 ADD                              R8 R9 R10
       46 ADDK                             R7 R8 K2 [1]
       47 CALL                             R6 1 0
       48 GETUPVAL                         R6 8
       49 LOADB                            R7 0
       50 CALL                             R6 1 0
       51 GETUPVAL                         R6 9
       52 LOADB                            R7 0
       53 CALL                             R6 1 0
       54 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Username"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["UserId"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 LOADB                            R1 1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+31]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+27]
        6 GETUPVAL                         R1 1
        7 LENGTH                           R0 R1
        8 LOADN                            R1 0
        9 JUMPIFNOTLT                      R1 R0 ; [+23]
       11 GETUPVAL                         R0 2
       12 JUMPIFNOTEQKN                    R0 K1 [-2] ; [+20]
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K0 ["current"]
       17 NAMECALL                         R0 R0 K2 ["CaptureFocus"]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 0
       21 GETTABLEKS                       R0 R0 K0 ["current"]
       23 GETUPVAL                         R1 1
       24 SETTABLEKS                       R1 R0 K3 ["Text"]
       26 GETUPVAL                         R0 0
       27 GETTABLEKS                       R0 R0 K0 ["current"]
       29 GETUPVAL                         R2 3
       30 ADDK                             R1 R2 K4 [1]
       31 SETTABLEKS                       R1 R0 K5 ["CursorPosition"]
       33 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 LOADN                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R1 1
        3 LENGTH                           R0 R1
        4 GETUPVAL                         R1 2
        5 JUMPIFNOTLT                      R0 R1 ; [+5]
        7 GETUPVAL                         R0 3
        8 GETUPVAL                         R2 1
        9 LENGTH                           R1 R2
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R3 1
        4 LENGTH                           R2 R3
        5 GETTABLEKS                       R3 R0 K0 ["KeyCode"]
        7 GETIMPORT                        R4 K3 [Enum.KeyCode.Return]
        9 JUMPIFEQ                         R3 R4 ; [+7]
       11 GETTABLEKS                       R3 R0 K0 ["KeyCode"]
       13 GETIMPORT                        R4 K5 [Enum.KeyCode.Tab]
       15 JUMPIFNOTEQ                      R3 R4 ; [+11]
       17 GETUPVAL                         R4 1
       18 GETUPVAL                         R5 2
       19 GETTABLE                         R3 R4 R5
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R5 R3 K6 ["Username"]
       23 GETTABLEKS                       R6 R3 K7 ["UserId"]
       25 CALL                             R4 2 0
       26 RETURN                           R0 0
       27 GETTABLEKS                       R3 R0 K0 ["KeyCode"]
       29 GETIMPORT                        R4 K9 [Enum.KeyCode.Up]
       31 JUMPIFNOTEQ                      R3 R4 ; [+14]
       33 GETUPVAL                         R5 2
       34 SUBK                             R4 R5 K10 [1]
       35 LOADN                            R5 0
       36 JUMPIFNOTLT                      R5 R4 ; [+4]
       38 GETUPVAL                         R4 2
       39 SUBK                             R3 R4 K10 [1]
       40 JUMP                             ; [+1]
       41 MOVE                             R3 R2
       42 GETUPVAL                         R4 4
       43 MOVE                             R5 R3
       44 CALL                             R4 1 0
       45 RETURN                           R0 0
       46 GETTABLEKS                       R3 R0 K0 ["KeyCode"]
       48 GETIMPORT                        R4 K12 [Enum.KeyCode.Down]
       50 JUMPIFNOTEQ                      R3 R4 ; [+12]
       52 GETUPVAL                         R4 2
       53 JUMPIFNOTLT                      R4 R2 ; [+4]
       55 GETUPVAL                         R4 2
       56 ADDK                             R3 R4 K10 [1]
       57 JUMP                             ; [+1]
       58 LOADN                            R3 1
       59 GETUPVAL                         R4 4
       60 MOVE                             R5 R3
       61 CALL                             R4 1 0
       62 RETURN                           R0 0
       63 GETTABLEKS                       R3 R0 K0 ["KeyCode"]
       65 GETIMPORT                        R4 K14 [Enum.KeyCode.Escape]
       67 JUMPIFNOTEQ                      R3 R4 ; [+35]
       69 GETUPVAL                         R3 5
       70 LOADB                            R4 0
       71 CALL                             R3 1 0
       72 GETUPVAL                         R3 6
       73 JUMPIFNOT                        R3 ; [+29]
       74 GETUPVAL                         R3 6
       75 GETTABLEKS                       R3 R3 K15 ["current"]
       77 JUMPIFNOT                        R3 ; [+25]
       78 GETUPVAL                         R4 7
       79 LENGTH                           R3 R4
       80 LOADN                            R4 0
       81 JUMPIFNOTLT                      R4 R3 ; [+21]
       83 GETUPVAL                         R3 6
       84 GETTABLEKS                       R3 R3 K15 ["current"]
       86 NAMECALL                         R3 R3 K16 ["CaptureFocus"]
       88 CALL                             R3 1 0
       89 GETUPVAL                         R3 6
       90 GETTABLEKS                       R3 R3 K15 ["current"]
       92 GETUPVAL                         R4 7
       93 SETTABLEKS                       R4 R3 K17 ["Text"]
       95 GETUPVAL                         R3 6
       96 GETTABLEKS                       R3 R3 K15 ["current"]
       98 GETUPVAL                         R6 7
       99 LENGTH                           R5 R6
      100 ADDK                             R4 R5 K10 [1]
      101 SETTABLEKS                       R4 R3 K18 ["CursorPosition"]
      103 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["InputEnded"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 NAMECALL                         R0 R0 K1 ["Connect"]
       14 CALL                             R0 2 1
       15 NEWCLOSURE                       R1 P1
       16 CAPTURE                          VAL R0
       17 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 CALL                             R0 1 1
        6 GETUPVAL                         R1 3
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 4
       10 LOADN                            R2 253
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 GETUPVAL                         R4 2
        6 MOVE                             R5 R0
        7 CALL                             R2 3 1
        8 JUMPIFNOT                        R2 ; [+18]
        9 GETUPVAL                         R3 3
       10 MOVE                             R4 R2
       11 CALL                             R3 1 0
       12 GETUPVAL                         R3 4
       13 GETUPVAL                         R6 5
       14 GETTABLEKS                       R6 R6 K0 ["Dictionary"]
       16 GETTABLEKS                       R6 R6 K1 ["values"]
       18 MOVE                             R7 R2
       19 CALL                             R6 1 1
       20 LENGTH                           R5 R6
       21 LOADN                            R6 0
       22 JUMPIFLT                         R6 R5 ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 CALL                             R3 1 0
       27 RETURN                           R0 0

PROTO_19:
        0 MOVE                             R4 R0
        1 LOADN                            R2 1
        2 LOADN                            R3 255
        3 FORNPREP                         R2
        4 MOVE                             R7 R4
        5 MOVE                             R8 R4
        6 NAMECALL                         R5 R1 K0 ["sub"]
        8 CALL                             R5 3 1
        9 JUMPIFNOTEQKS                    R5 K1 ["@"] ; [+29]
       11 GETUPVAL                         R6 0
       12 MOVE                             R7 R4
       13 CALL                             R6 1 0
       14 GETUPVAL                         R6 1
       15 MOVE                             R7 R1
       16 GETUPVAL                         R8 2
       17 MOVE                             R9 R4
       18 CALL                             R6 3 1
       19 JUMPIFNOT                        R6 ; [+18]
       20 GETUPVAL                         R7 3
       21 MOVE                             R8 R6
       22 CALL                             R7 1 0
       23 GETUPVAL                         R7 4
       24 GETUPVAL                         R10 5
       25 GETTABLEKS                       R10 R10 K2 ["Dictionary"]
       27 GETTABLEKS                       R10 R10 K3 ["values"]
       29 MOVE                             R11 R6
       30 CALL                             R10 1 1
       31 LENGTH                           R9 R10
       32 LOADN                            R10 0
       33 JUMPIFLT                         R10 R9 ; [+2]
       35 LOADB                            R8 0 +1
       36 LOADB                            R8 1
       37 CALL                             R7 1 0
       38 RETURN                           R0 0
       39 LOADK                            R8 K4 ["[%w_]"]
       40 NAMECALL                         R6 R5 K5 ["match"]
       42 CALL                             R6 2 1
       43 JUMPIF                           R6 ; [+18]
       44 GETUPVAL                         R6 6
       45 JUMPIFNOT                        R6 ; [+12]
       46 GETUPVAL                         R6 4
       47 LOADB                            R7 0
       48 CALL                             R6 1 0
       49 GETUPVAL                         R6 7
       50 GETUPVAL                         R7 8
       51 CALL                             R6 1 1
       52 GETUPVAL                         R7 3
       53 MOVE                             R8 R6
       54 CALL                             R7 1 0
       55 GETUPVAL                         R7 0
       56 LOADN                            R8 253
       57 CALL                             R7 1 0
       58 GETUPVAL                         R6 0
       59 LOADN                            R7 253
       60 CALL                             R6 1 0
       61 RETURN                           R0 0
       62 FORNLOOP                         R2
       63 GETUPVAL                         R2 6
       64 JUMPIFNOT                        R2 ; [+12]
       65 GETUPVAL                         R2 4
       66 LOADB                            R3 0
       67 CALL                             R2 1 0
       68 GETUPVAL                         R2 7
       69 GETUPVAL                         R3 8
       70 CALL                             R2 1 1
       71 GETUPVAL                         R3 3
       72 MOVE                             R4 R2
       73 CALL                             R3 1 0
       74 GETUPVAL                         R3 0
       75 LOADN                            R4 253
       76 CALL                             R3 1 0
       77 GETUPVAL                         R2 0
       78 LOADN                            R3 253
       79 CALL                             R2 1 0
       80 RETURN                           R0 0

PROTO_20:
        0 ADDK                             R4 R1 K0 [1]
        1 NAMECALL                         R2 R0 K1 ["sub"]
        3 CALL                             R2 2 1
        4 LOADK                            R5 K2 ["%s"]
        5 NAMECALL                         R3 R2 K3 ["find"]
        7 CALL                             R3 2 1
        8 JUMPIFNOT                        R3 ; [+2]
        9 SUBK                             R5 R3 K0 [1]
       10 JUMPIF                           R5 ; [+1]
       11 LENGTH                           R5 R2
       12 ADD                              R4 R1 R5
       13 RETURN                           R4 1

PROTO_21:
        0 LOADNIL                          R2
        1 SUBK                             R5 R0 K0 [1]
        2 LOADN                            R3 1
        3 LOADN                            R4 255
        4 FORNPREP                         R3
        5 MOVE                             R8 R5
        6 MOVE                             R9 R5
        7 NAMECALL                         R6 R1 K1 ["sub"]
        9 CALL                             R6 3 1
       10 JUMPIFNOTEQKS                    R6 K2 ["@"] ; [+3]
       12 MOVE                             R2 R5
       13 JUMP                             ; [+6]
       14 LOADK                            R9 K3 ["[%w_]"]
       15 NAMECALL                         R7 R6 K4 ["match"]
       17 CALL                             R7 2 1
       18 JUMPIFNOT                        R7 ; [+1]
       19 FORNLOOP                         R3
       20 ADDK                             R6 R0 K0 [1]
       21 NAMECALL                         R4 R1 K1 ["sub"]
       23 CALL                             R4 2 1
       24 LOADK                            R7 K5 ["%s"]
       25 NAMECALL                         R5 R4 K6 ["find"]
       27 CALL                             R5 2 1
       28 JUMPIFNOT                        R5 ; [+2]
       29 SUBK                             R7 R5 K0 [1]
       30 JUMPIF                           R7 ; [+1]
       31 LENGTH                           R7 R4
       32 ADD                              R6 R0 R7
       33 MOVE                             R3 R6
       34 RETURN                           R2 2

PROTO_22:
        0 ADDK                             R6 R2 K0 [1]
        1 MOVE                             R7 R3
        2 NAMECALL                         R4 R1 K1 ["sub"]
        4 CALL                             R4 3 1
        5 ADDK                             R7 R2 K0 [1]
        6 SUBK                             R8 R3 K0 [1]
        7 NAMECALL                         R5 R1 K1 ["sub"]
        9 CALL                             R5 3 1
       10 GETUPVAL                         R7 0
       11 GETTABLE                         R6 R7 R4
       12 JUMPIFNOT                        R6 ; [+37]
       13 LOADN                            R11 1
       14 SUBK                             R12 R2 K0 [1]
       15 NAMECALL                         R9 R1 K1 ["sub"]
       17 CALL                             R9 3 1
       18 MOVE                             R7 R9
       19 ADDK                             R10 R3 K0 [1]
       20 NAMECALL                         R8 R1 K1 ["sub"]
       22 CALL                             R8 2 1
       23 CONCAT                           R6 R7 R8
       24 GETUPVAL                         R7 1
       25 JUMPIFNOT                        R7 ; [+9]
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R7 R7 K2 ["current"]
       29 JUMPIFNOT                        R7 ; [+5]
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K2 ["current"]
       33 SETTABLEKS                       R6 R7 K3 ["Text"]
       35 GETUPVAL                         R7 2
       36 LOADN                            R8 255
       37 CALL                             R7 1 0
       38 GETUPVAL                         R7 1
       39 JUMPIFNOT                        R7 ; [+43]
       40 GETUPVAL                         R7 1
       41 GETTABLEKS                       R7 R7 K2 ["current"]
       43 JUMPIFNOT                        R7 ; [+39]
       44 GETUPVAL                         R7 1
       45 GETTABLEKS                       R7 R7 K2 ["current"]
       47 SETTABLEKS                       R2 R7 K4 ["CursorPosition"]
       49 RETURN                           R0 0
       50 GETUPVAL                         R7 0
       51 GETTABLE                         R6 R7 R5
       52 JUMPIF                           R6 ; [+30]
       53 GETUPVAL                         R6 3
       54 JUMPIFEQKN                       R6 K5 [-1] ; [+28]
       56 GETUPVAL                         R6 2
       57 MOVE                             R7 R2
       58 CALL                             R6 1 0
       59 GETUPVAL                         R6 4
       60 MOVE                             R7 R0
       61 GETUPVAL                         R8 3
       62 MOVE                             R9 R2
       63 CALL                             R6 3 1
       64 JUMPIFNOT                        R6 ; [+18]
       65 GETUPVAL                         R7 5
       66 MOVE                             R8 R6
       67 CALL                             R7 1 0
       68 GETUPVAL                         R7 6
       69 GETUPVAL                         R10 7
       70 GETTABLEKS                       R10 R10 K6 ["Dictionary"]
       72 GETTABLEKS                       R10 R10 K7 ["values"]
       74 MOVE                             R11 R6
       75 CALL                             R10 1 1
       76 LENGTH                           R9 R10
       77 LOADN                            R10 0
       78 JUMPIFLT                         R10 R9 ; [+2]
       80 LOADB                            R8 0 +1
       81 LOADB                            R8 1
       82 CALL                             R7 1 0
       83 RETURN                           R0 0

PROTO_23:
        0 ADDK                             R6 R1 K0 [1]
        1 NAMECALL                         R4 R2 K1 ["sub"]
        3 CALL                             R4 2 1
        4 LOADK                            R7 K2 ["%s"]
        5 NAMECALL                         R5 R4 K3 ["find"]
        7 CALL                             R5 2 1
        8 JUMPIFNOT                        R5 ; [+2]
        9 SUBK                             R7 R5 K0 [1]
       10 JUMPIF                           R7 ; [+1]
       11 LENGTH                           R7 R4
       12 ADD                              R6 R1 R7
       13 MOVE                             R3 R6
       14 ADDK                             R6 R1 K0 [1]
       15 MOVE                             R7 R3
       16 NAMECALL                         R4 R2 K1 ["sub"]
       18 CALL                             R4 3 1
       19 JUMPIFNOTEQKS                    R0 K4 ["@"] ; [+48]
       21 GETUPVAL                         R6 0
       22 GETTABLE                         R5 R6 R4
       23 JUMPIFNOT                        R5 ; [+7]
       24 ADDK                             R7 R3 K0 [1]
       25 ADDK                             R8 R3 K0 [1]
       26 NAMECALL                         R5 R2 K1 ["sub"]
       28 CALL                             R5 3 1
       29 JUMPIFEQKS                       R5 K5 [" "] ; [+38]
       31 ADDK                             R7 R1 K0 [1]
       32 ADDK                             R8 R1 K0 [1]
       33 NAMECALL                         R5 R2 K1 ["sub"]
       35 CALL                             R5 3 1
       36 JUMPIFNOTEQKS                    R5 K5 [" "] ; [+3]
       38 JUMPIFNOTEQKS                    R4 K6 [""] ; [+29]
       40 GETUPVAL                         R5 1
       41 MOVE                             R6 R1
       42 CALL                             R5 1 0
       43 GETUPVAL                         R5 2
       44 MOVE                             R6 R2
       45 GETUPVAL                         R7 3
       46 MOVE                             R8 R1
       47 CALL                             R5 3 1
       48 JUMPIFNOT                        R5 ; [+53]
       49 GETUPVAL                         R6 4
       50 MOVE                             R7 R5
       51 CALL                             R6 1 0
       52 GETUPVAL                         R6 5
       53 GETUPVAL                         R9 6
       54 GETTABLEKS                       R9 R9 K7 ["Dictionary"]
       56 GETTABLEKS                       R9 R9 K8 ["values"]
       58 MOVE                             R10 R5
       59 CALL                             R9 1 1
       60 LENGTH                           R8 R9
       61 LOADN                            R9 0
       62 JUMPIFLT                         R9 R8 ; [+2]
       64 LOADB                            R7 0 +1
       65 LOADB                            R7 1
       66 CALL                             R6 1 0
       67 RETURN                           R0 0
       68 JUMPIFEQKS                       R0 K5 [" "] ; [+8]
       70 LOADK                            R7 K9 ["%w"]
       71 NAMECALL                         R5 R0 K10 ["match"]
       73 CALL                             R5 2 1
       74 JUMPIF                           R5 ; [+20]
       75 JUMPIFEQKS                       R0 K11 ["_"] ; [+19]
       77 GETUPVAL                         R5 7
       78 JUMPIFNOT                        R5 ; [+12]
       79 GETUPVAL                         R5 5
       80 LOADB                            R6 0
       81 CALL                             R5 1 0
       82 GETUPVAL                         R5 8
       83 GETUPVAL                         R6 0
       84 CALL                             R5 1 1
       85 GETUPVAL                         R6 4
       86 MOVE                             R7 R5
       87 CALL                             R6 1 0
       88 GETUPVAL                         R6 1
       89 LOADN                            R7 253
       90 CALL                             R6 1 0
       91 GETUPVAL                         R5 1
       92 LOADN                            R6 253
       93 CALL                             R5 1 0
       94 RETURN                           R0 0
       95 GETUPVAL                         R5 3
       96 JUMPIFEQKN                       R5 K12 [-2] ; [+5]
       98 GETUPVAL                         R5 9
       99 MOVE                             R6 R1
      100 MOVE                             R7 R2
      101 CALL                             R5 2 0
      102 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+7]
        2 ADDK                             R6 R1 K0 [1]
        3 ADDK                             R7 R1 K0 [1]
        4 NAMECALL                         R4 R3 K1 ["sub"]
        6 CALL                             R4 3 1
        7 JUMPIFEQKS                       R4 K2 ["@"] ; [+22]
        9 GETUPVAL                         R4 1
       10 LOADN                            R5 0
       11 JUMPIFNOTLT                      R5 R4 ; [+15]
       13 GETUPVAL                         R6 1
       14 GETUPVAL                         R7 1
       15 NAMECALL                         R4 R3 K1 ["sub"]
       17 CALL                             R4 3 1
       18 JUMPIFNOTEQKS                    R4 K2 ["@"] ; [+8]
       20 GETUPVAL                         R6 1
       21 GETUPVAL                         R7 1
       22 NAMECALL                         R4 R2 K1 ["sub"]
       24 CALL                             R4 3 1
       25 JUMPIFNOTEQKS                    R4 K2 ["@"] ; [+4]
       27 LENGTH                           R4 R2
       28 JUMPIFNOTEQKN                    R4 K3 [0] ; [+14]
       30 GETUPVAL                         R4 2
       31 LOADB                            R5 0
       32 CALL                             R4 1 0
       33 GETUPVAL                         R4 3
       34 GETUPVAL                         R5 4
       35 CALL                             R4 1 1
       36 GETUPVAL                         R5 5
       37 MOVE                             R6 R4
       38 CALL                             R5 1 0
       39 GETUPVAL                         R5 6
       40 LOADN                            R6 253
       41 CALL                             R5 1 0
       42 RETURN                           R0 0
       43 LENGTH                           R4 R2
       44 LENGTH                           R5 R3
       45 JUMPIFNOTLT                      R4 R5 ; [+51]
       47 GETUPVAL                         R4 0
       48 JUMPIF                           R4 ; [+19]
       49 GETUPVAL                         R4 7
       50 ADDK                             R5 R1 K0 [1]
       51 MOVE                             R6 R3
       52 CALL                             R4 2 2
       53 JUMPIF                           R4 ; [+6]
       54 GETUPVAL                         R6 7
       55 ADDK                             R7 R1 K0 [1]
       56 MOVE                             R8 R2
       57 CALL                             R6 2 2
       58 MOVE                             R4 R6
       59 MOVE                             R5 R7
       60 JUMPIFNOT                        R4 ; [+7]
       61 JUMPIFNOT                        R5 ; [+6]
       62 GETUPVAL                         R6 8
       63 MOVE                             R7 R2
       64 MOVE                             R8 R3
       65 MOVE                             R9 R4
       66 MOVE                             R10 R5
       67 CALL                             R6 4 0
       68 GETUPVAL                         R4 0
       69 JUMPIFNOT                        R4 ; [+27]
       70 GETUPVAL                         R4 9
       71 MOVE                             R5 R2
       72 GETUPVAL                         R6 1
       73 CALL                             R4 2 1
       74 JUMPIFNOT                        R4 ; [+22]
       75 GETUPVAL                         R5 5
       76 MOVE                             R6 R4
       77 CALL                             R5 1 0
       78 GETUPVAL                         R6 10
       79 GETTABLEKS                       R6 R6 K4 ["Dictionary"]
       81 GETTABLEKS                       R6 R6 K5 ["values"]
       83 MOVE                             R7 R4
       84 CALL                             R6 1 1
       85 LENGTH                           R5 R6
       86 JUMPIFNOTEQKN                    R5 K3 [0] ; [+10]
       88 GETUPVAL                         R5 2
       89 LOADB                            R6 0
       90 CALL                             R5 1 0
       91 GETUPVAL                         R5 3
       92 GETUPVAL                         R6 4
       93 CALL                             R5 1 1
       94 GETUPVAL                         R6 5
       95 MOVE                             R7 R5
       96 CALL                             R6 1 0
       97 RETURN                           R0 0

PROTO_25:
        0 MOVE                             R5 R0
        1 MOVE                             R6 R0
        2 NAMECALL                         R3 R1 K0 ["sub"]
        4 CALL                             R3 3 1
        5 LENGTH                           R4 R1
        6 LENGTH                           R5 R2
        7 JUMPIFNOTLE                      R5 R4 ; [+6]
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R3
       11 MOVE                             R6 R0
       12 MOVE                             R7 R1
       13 CALL                             R4 3 0
       14 LENGTH                           R4 R1
       15 LENGTH                           R5 R2
       16 JUMPIFNOTLE                      R4 R5 ; [+7]
       18 GETUPVAL                         R4 1
       19 MOVE                             R5 R3
       20 MOVE                             R6 R0
       21 MOVE                             R7 R1
       22 MOVE                             R8 R2
       23 CALL                             R4 4 0
       24 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+56]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+52]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["current"]
        9 NAMECALL                         R0 R0 K1 ["IsFocused"]
       11 CALL                             R0 1 1
       12 JUMPIFNOT                        R0 ; [+45]
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K0 ["current"]
       16 GETTABLEKS                       R0 R0 K2 ["Text"]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K0 ["current"]
       21 GETTABLEKS                       R1 R1 K3 ["CursorPosition"]
       23 JUMPIFNOT                        R1 ; [+31]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K0 ["current"]
       27 GETTABLEKS                       R2 R2 K3 ["CursorPosition"]
       29 SUBK                             R1 R2 K4 [1]
       30 GETUPVAL                         R2 1
       31 MOVE                             R5 R1
       32 MOVE                             R6 R1
       33 NAMECALL                         R3 R0 K5 ["sub"]
       35 CALL                             R3 3 1
       36 LENGTH                           R4 R0
       37 LENGTH                           R5 R2
       38 JUMPIFNOTLE                      R5 R4 ; [+6]
       40 GETUPVAL                         R4 2
       41 MOVE                             R5 R3
       42 MOVE                             R6 R1
       43 MOVE                             R7 R0
       44 CALL                             R4 3 0
       45 LENGTH                           R4 R0
       46 LENGTH                           R5 R2
       47 JUMPIFNOTLE                      R4 R5 ; [+7]
       49 GETUPVAL                         R4 3
       50 MOVE                             R5 R3
       51 MOVE                             R6 R1
       52 MOVE                             R7 R0
       53 MOVE                             R8 R2
       54 CALL                             R4 4 0
       55 GETUPVAL                         R1 4
       56 MOVE                             R2 R0
       57 CALL                             R1 1 0
       58 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+14]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+10]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["current"]
        9 GETTABLEKS                       R0 R0 K1 ["Text"]
       11 JUMPIFNOTEQKS                    R0 K2 [""] ; [+4]
       13 GETUPVAL                         R0 1
       14 LOADK                            R1 K2 [""]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["join"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 2
        9 NAMECALL                         R2 R2 K2 ["use"]
       11 CALL                             R2 1 1
       12 NAMECALL                         R2 R2 K3 ["get"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 3
       16 NAMECALL                         R3 R3 K2 ["use"]
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 4
       20 GETTABLEKS                       R4 R4 K4 ["useState"]
       22 LOADB                            R5 0
       23 CALL                             R4 1 2
       24 GETUPVAL                         R6 4
       25 GETTABLEKS                       R6 R6 K5 ["useContext"]
       27 GETUPVAL                         R7 5
       28 CALL                             R6 1 1
       29 GETUPVAL                         R7 4
       30 GETTABLEKS                       R7 R7 K5 ["useContext"]
       32 GETUPVAL                         R8 6
       33 CALL                             R7 1 1
       34 GETTABLEKS                       R8 R7 K6 ["joinedTaggableUsersMap"]
       36 GETTABLEKS                       R9 R7 K7 ["getFirstMaxTaggableUsers"]
       38 MOVE                             R10 R9
       39 MOVE                             R11 R8
       40 CALL                             R10 1 1
       41 GETUPVAL                         R11 4
       42 GETTABLEKS                       R11 R11 K4 ["useState"]
       44 MOVE                             R12 R10
       45 CALL                             R11 1 2
       46 GETUPVAL                         R13 4
       47 GETTABLEKS                       R13 R13 K4 ["useState"]
       49 LOADN                            R14 253
       50 CALL                             R13 1 2
       51 GETUPVAL                         R15 4
       52 GETTABLEKS                       R15 R15 K4 ["useState"]
       54 LOADN                            R16 0
       55 CALL                             R15 1 2
       56 GETTABLEKS                       R17 R1 K8 ["Text"]
       58 GETTABLEKS                       R18 R1 K9 ["InputBoxRef"]
       60 GETUPVAL                         R19 4
       61 GETTABLEKS                       R19 R19 K4 ["useState"]
       63 MOVE                             R20 R17
       64 CALL                             R19 1 2
       65 GETUPVAL                         R21 4
       66 GETTABLEKS                       R21 R21 K4 ["useState"]
       68 LOADN                            R22 1
       69 CALL                             R21 1 2
       70 GETUPVAL                         R23 4
       71 GETTABLEKS                       R23 R23 K4 ["useState"]
       73 LOADNIL                          R24
       74 CALL                             R23 1 2
       75 GETUPVAL                         R25 4
       76 GETTABLEKS                       R25 R25 K4 ["useState"]
       78 GETIMPORT                        R26 K12 [UDim2.fromOffset]
       80 LOADN                            R27 0
       81 LOADN                            R28 0
       82 CALL                             R26 2 -1
       83 CALL                             R25 -1 2
       84 GETTABLEKS                       R27 R6 K13 ["isTagDropdownOpen"]
       86 GETTABLEKS                       R28 R6 K14 ["setIsTagDropdownOpen"]
       88 GETTABLEKS                       R29 R7 K15 ["getFilteredTaggableUsers"]
       90 GETUPVAL                         R30 0
       91 GETTABLEKS                       R30 R30 K0 ["Dictionary"]
       93 GETTABLEKS                       R30 R30 K16 ["values"]
       95 MOVE                             R31 R11
       96 CALL                             R30 1 1
       97 GETUPVAL                         R31 4
       98 GETTABLEKS                       R31 R31 K17 ["useEffect"]
      100 NEWCLOSURE                       R32 P0
      101 CAPTURE                          VAL R7
      102 NEWTABLE                         R33 0 0
      104 CALL                             R31 2 0
      105 NEWCLOSURE                       R31 P1
      106 CAPTURE                          VAL R18
      107 CAPTURE                          VAL R30
      108 CAPTURE                          VAL R24
      109 CAPTURE                          VAL R26
      110 GETUPVAL                         R32 4
      111 GETTABLEKS                       R32 R32 K17 ["useEffect"]
      113 NEWCLOSURE                       R33 P2
      114 CAPTURE                          VAL R18
      115 CAPTURE                          VAL R31
      116 NEWTABLE                         R34 0 1
      118 GETTABLEKS                       R35 R18 K18 ["current"]
      120 SETLIST                          R34 R35 1 [1]
      122 CALL                             R32 2 0
      123 GETUPVAL                         R32 4
      124 GETTABLEKS                       R32 R32 K17 ["useEffect"]
      126 NEWCLOSURE                       R33 P3
      127 CAPTURE                          VAL R31
      128 NEWTABLE                         R34 0 1
      130 MOVE                             R35 R11
      131 SETLIST                          R34 R35 1 [1]
      133 CALL                             R32 2 0
      134 GETUPVAL                         R32 7
      135 MOVE                             R33 R4
      136 NEWCLOSURE                       R34 P4
      137 CAPTURE                          VAL R28
      138 CAPTURE                          VAL R3
      139 CALL                             R32 2 0
      140 NEWCLOSURE                       R32 P5
      141 CAPTURE                          VAL R17
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R18
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R8
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R28
      150 CAPTURE                          VAL R5
      151 NEWTABLE                         R33 0 0
      153 MOVE                             R34 R30
      154 LOADNIL                          R35
      155 LOADNIL                          R36
      156 FORGPREP                         R34
      157 GETTABLEKS                       R39 R38 K19 ["Username"]
      159 JUMPIFNOT                        R39 ; [+117]
      160 GETUPVAL                         R39 4
      161 GETTABLEKS                       R39 R39 K20 ["createElement"]
      163 LOADK                            R40 K21 ["TextButton"]
      164 NEWTABLE                         R41 8 0
      166 LOADK                            R42 K22 [""]
      167 SETTABLEKS                       R42 R41 K8 ["Text"]
      169 GETUPVAL                         R42 4
      170 GETTABLEKS                       R42 R42 K23 ["Event"]
      172 GETTABLEKS                       R42 R42 K24 ["Activated"]
      174 NEWCLOSURE                       R43 P6
      175 CAPTURE                          VAL R32
      176 CAPTURE                          VAL R38
      177 SETTABLE                         R43 R41 R42
      178 GETUPVAL                         R42 4
      179 GETTABLEKS                       R42 R42 K23 ["Event"]
      181 GETTABLEKS                       R42 R42 K25 ["MouseEnter"]
      183 NEWCLOSURE                       R43 P7
      184 CAPTURE                          VAL R22
      185 CAPTURE                          VAL R37
      186 CAPTURE                          VAL R5
      187 SETTABLE                         R43 R41 R42
      188 GETUPVAL                         R42 4
      189 GETTABLEKS                       R42 R42 K23 ["Event"]
      191 GETTABLEKS                       R42 R42 K26 ["MouseLeave"]
      193 NEWCLOSURE                       R43 P8
      194 CAPTURE                          VAL R5
      195 SETTABLE                         R43 R41 R42
      196 GETUPVAL                         R42 4
      197 GETTABLEKS                       R42 R42 K27 ["Tag"]
      199 GETUPVAL                         R43 8
      200 LOADK                            R44 K28 ["Component-DropdownItem"]
      201 JUMPIFNOTEQ                      R37 R21 ; [+3]
      203 LOADK                            R45 K29 ["Hover"]
      204 JUMP                             ; [+1]
      205 LOADNIL                          R45
      206 CALL                             R43 2 1
      207 SETTABLE                         R43 R41 R42
      208 SETTABLEKS                       R37 R41 K30 ["LayoutOrder"]
      210 GETTABLEKS                       R42 R38 K19 ["Username"]
      212 SETTABLEKS                       R42 R41 K31 ["key"]
      214 DUPTABLE                         R42 K34 [{"Avatar", "TextLabel"}]
      215 GETUPVAL                         R43 4
      216 GETTABLEKS                       R43 R43 K20 ["createElement"]
      218 LOADK                            R44 K35 ["ImageLabel"]
      219 NEWTABLE                         R45 4 0
      221 LOADN                            R46 1
      222 SETTABLEKS                       R46 R45 K30 ["LayoutOrder"]
      224 GETIMPORT                        R46 K37 [UDim2.new]
      226 LOADN                            R47 0
      227 LOADN                            R48 24
      228 LOADN                            R49 0
      229 LOADN                            R50 24
      230 CALL                             R46 4 1
      231 SETTABLEKS                       R46 R45 K38 ["Size"]
      233 LOADK                            R47 K39 ["rbxthumb://type=AvatarHeadShot&id=%*&filters=circular&w=48&h=48"]
      234 GETTABLEKS                       R49 R38 K40 ["UserId"]
      236 NAMECALL                         R47 R47 K41 ["format"]
      238 CALL                             R47 2 1
      239 MOVE                             R46 R47
      240 SETTABLEKS                       R46 R45 K42 ["Image"]
      242 GETUPVAL                         R46 4
      243 GETTABLEKS                       R46 R46 K27 ["Tag"]
      245 LOADK                            R47 K43 ["Component-Avatar"]
      246 SETTABLE                         R47 R45 R46
      247 CALL                             R43 2 1
      248 SETTABLEKS                       R43 R42 K32 ["Avatar"]
      250 GETUPVAL                         R43 4
      251 GETTABLEKS                       R43 R43 K20 ["createElement"]
      253 LOADK                            R44 K33 ["TextLabel"]
      254 NEWTABLE                         R45 4 0
      256 LOADN                            R46 2
      257 SETTABLEKS                       R46 R45 K30 ["LayoutOrder"]
      259 GETTABLEKS                       R46 R38 K19 ["Username"]
      261 SETTABLEKS                       R46 R45 K8 ["Text"]
      263 GETIMPORT                        R46 K47 [Enum.TextXAlignment.Left]
      265 SETTABLEKS                       R46 R45 K45 ["TextXAlignment"]
      267 GETUPVAL                         R46 4
      268 GETTABLEKS                       R46 R46 K27 ["Tag"]
      270 LOADK                            R47 K48 ["X-Fit"]
      271 SETTABLE                         R47 R45 R46
      272 CALL                             R43 2 1
      273 SETTABLEKS                       R43 R42 K33 ["TextLabel"]
      275 CALL                             R39 3 1
      276 SETTABLE                         R39 R33 R37
      277 FORGLOOP                         R34 2 ; [-121]
      279 GETUPVAL                         R34 4
      280 GETTABLEKS                       R34 R34 K17 ["useEffect"]
      282 NEWCLOSURE                       R35 P9
      283 CAPTURE                          VAL R18
      284 CAPTURE                          VAL R17
      285 CAPTURE                          VAL R13
      286 CAPTURE                          VAL R15
      287 NEWTABLE                         R36 0 1
      289 MOVE                             R37 R13
      290 SETLIST                          R36 R37 1 [1]
      292 CALL                             R34 2 0
      293 GETUPVAL                         R34 4
      294 GETTABLEKS                       R34 R34 K17 ["useEffect"]
      296 NEWCLOSURE                       R35 P10
      297 CAPTURE                          VAL R27
      298 CAPTURE                          VAL R22
      299 NEWTABLE                         R36 0 1
      301 MOVE                             R37 R27
      302 SETLIST                          R36 R37 1 [1]
      304 CALL                             R34 2 0
      305 GETUPVAL                         R34 4
      306 GETTABLEKS                       R34 R34 K17 ["useEffect"]
      308 NEWCLOSURE                       R35 P11
      309 CAPTURE                          VAL R27
      310 CAPTURE                          VAL R30
      311 CAPTURE                          VAL R21
      312 CAPTURE                          VAL R22
      313 NEWTABLE                         R36 0 1
      315 MOVE                             R37 R30
      316 SETLIST                          R36 R37 1 [1]
      318 CALL                             R34 2 0
      319 GETUPVAL                         R34 4
      320 GETTABLEKS                       R34 R34 K17 ["useEffect"]
      322 NEWCLOSURE                       R35 P12
      323 CAPTURE                          UPVAL U9
      324 CAPTURE                          VAL R27
      325 CAPTURE                          VAL R30
      326 CAPTURE                          VAL R21
      327 CAPTURE                          VAL R32
      328 CAPTURE                          VAL R22
      329 CAPTURE                          VAL R28
      330 CAPTURE                          VAL R18
      331 CAPTURE                          VAL R17
      332 NEWTABLE                         R36 0 3
      334 MOVE                             R37 R27
      335 MOVE                             R38 R21
      336 MOVE                             R39 R11
      337 SETLIST                          R36 R37 3 [1]
      339 CALL                             R34 2 0
      340 NEWCLOSURE                       R34 P13
      341 CAPTURE                          VAL R28
      342 CAPTURE                          VAL R9
      343 CAPTURE                          VAL R8
      344 CAPTURE                          VAL R12
      345 CAPTURE                          VAL R14
      346 NEWCLOSURE                       R35 P14
      347 CAPTURE                          VAL R14
      348 CAPTURE                          VAL R29
      349 CAPTURE                          VAL R13
      350 CAPTURE                          VAL R12
      351 CAPTURE                          VAL R28
      352 CAPTURE                          UPVAL U0
      353 NEWCLOSURE                       R36 P15
      354 CAPTURE                          VAL R14
      355 CAPTURE                          VAL R29
      356 CAPTURE                          VAL R13
      357 CAPTURE                          VAL R12
      358 CAPTURE                          VAL R28
      359 CAPTURE                          UPVAL U0
      360 CAPTURE                          VAL R27
      361 CAPTURE                          VAL R9
      362 CAPTURE                          VAL R8
      363 DUPCLOSURE                       R37 K49 [PROTO_20]
      364 DUPCLOSURE                       R38 K50 [PROTO_21]
      365 NEWCLOSURE                       R39 P18
      366 CAPTURE                          VAL R8
      367 CAPTURE                          VAL R18
      368 CAPTURE                          VAL R14
      369 CAPTURE                          VAL R13
      370 CAPTURE                          VAL R29
      371 CAPTURE                          VAL R12
      372 CAPTURE                          VAL R28
      373 CAPTURE                          UPVAL U0
      374 NEWCLOSURE                       R40 P19
      375 CAPTURE                          VAL R8
      376 CAPTURE                          VAL R14
      377 CAPTURE                          VAL R29
      378 CAPTURE                          VAL R13
      379 CAPTURE                          VAL R12
      380 CAPTURE                          VAL R28
      381 CAPTURE                          UPVAL U0
      382 CAPTURE                          VAL R27
      383 CAPTURE                          VAL R9
      384 CAPTURE                          VAL R36
      385 NEWCLOSURE                       R41 P20
      386 CAPTURE                          VAL R27
      387 CAPTURE                          VAL R13
      388 CAPTURE                          VAL R28
      389 CAPTURE                          VAL R9
      390 CAPTURE                          VAL R8
      391 CAPTURE                          VAL R12
      392 CAPTURE                          VAL R14
      393 CAPTURE                          VAL R38
      394 CAPTURE                          VAL R39
      395 CAPTURE                          VAL R29
      396 CAPTURE                          UPVAL U0
      397 NEWCLOSURE                       R42 P21
      398 CAPTURE                          VAL R40
      399 CAPTURE                          VAL R41
      400 GETUPVAL                         R43 4
      401 GETTABLEKS                       R43 R43 K17 ["useEffect"]
      403 NEWCLOSURE                       R44 P22
      404 CAPTURE                          VAL R18
      405 CAPTURE                          VAL R19
      406 CAPTURE                          VAL R40
      407 CAPTURE                          VAL R41
      408 CAPTURE                          VAL R20
      409 NEWTABLE                         R45 0 3
      411 MOVE                             R46 R13
      412 MOVE                             R47 R17
      413 GETTABLEKS                       R48 R18 K18 ["current"]
      415 JUMPIFNOT                        R48 ; [+4]
      416 GETTABLEKS                       R48 R18 K18 ["current"]
      418 GETTABLEKS                       R48 R48 K51 ["CursorPosition"]
      420 SETLIST                          R45 R46 3 [1]
      422 CALL                             R43 2 0
      423 GETUPVAL                         R43 4
      424 GETTABLEKS                       R43 R43 K17 ["useEffect"]
      426 NEWCLOSURE                       R44 P23
      427 CAPTURE                          VAL R18
      428 CAPTURE                          VAL R20
      429 NEWTABLE                         R45 0 1
      431 GETTABLEKS                       R46 R18 K18 ["current"]
      433 JUMPIFNOT                        R46 ; [+4]
      434 GETTABLEKS                       R46 R18 K18 ["current"]
      436 GETTABLEKS                       R46 R46 K8 ["Text"]
      438 SETLIST                          R45 R46 1 [1]
      440 CALL                             R43 2 0
      441 JUMPIFNOT                        R27 ; [+31]
      442 LENGTH                           R44 R30
      443 LOADN                            R45 0
      444 JUMPIFNOTLT                      R45 R44 ; [+28]
      446 GETUPVAL                         R43 10
      447 GETTABLEKS                       R43 R43 K52 ["createPortal"]
      449 GETUPVAL                         R44 4
      450 GETTABLEKS                       R44 R44 K20 ["createElement"]
      452 LOADK                            R45 K53 ["CanvasGroup"]
      453 NEWTABLE                         R46 4 0
      455 SETTABLEKS                       R23 R46 K54 ["Position"]
      457 SETTABLEKS                       R25 R46 K38 ["Size"]
      459 GETTABLEKS                       R47 R1 K55 ["AutomaticSize"]
      461 SETTABLEKS                       R47 R46 K55 ["AutomaticSize"]
      463 GETUPVAL                         R47 4
      464 GETTABLEKS                       R47 R47 K27 ["Tag"]
      466 LOADK                            R48 K56 ["Component-TaggingDropdown X-Column"]
      467 SETTABLE                         R48 R46 R47
      468 MOVE                             R47 R33
      469 CALL                             R44 3 1
      470 MOVE                             R45 R2
      471 CALL                             R43 2 1
      472 RETURN                           R43 1
      473 LOADNIL                          R43
      474 RETURN                           R43 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Cryo"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Focus"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K13 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Hooks"]
       45 GETTABLEKS                       R8 R8 K15 ["useFocusLost"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K13 ["Src"]
       52 GETTABLEKS                       R9 R9 K16 ["Contexts"]
       54 GETTABLEKS                       R9 R9 K17 ["InputListenerContext"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K13 ["Src"]
       61 GETTABLEKS                       R10 R10 K16 ["Contexts"]
       63 GETTABLEKS                       R10 R10 K18 ["TagDropdownContext"]
       65 CALL                             R9 1 1
       66 GETTABLEKS                       R9 R9 K18 ["TagDropdownContext"]
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K13 ["Src"]
       72 GETTABLEKS                       R11 R11 K16 ["Contexts"]
       74 GETTABLEKS                       R11 R11 K19 ["TaggableUsersContext"]
       76 CALL                             R10 1 1
       77 GETTABLEKS                       R10 R10 K19 ["TaggableUsersContext"]
       79 GETIMPORT                        R11 K21 [game]
       81 LOADK                            R13 K22 ["UserInputService"]
       82 NAMECALL                         R11 R11 K23 ["GetService"]
       84 CALL                             R11 2 1
       85 GETTABLEKS                       R12 R3 K24 ["Styling"]
       87 GETTABLEKS                       R12 R12 K25 ["joinTags"]
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K13 ["Src"]
       93 GETTABLEKS                       R14 R14 K26 ["Types"]
       95 CALL                             R13 1 1
       96 DUPTABLE                         R14 K29 [{"Size", "AutomaticSize"}]
       97 GETIMPORT                        R15 K32 [UDim2.fromOffset]
       99 LOADN                            R16 128
      100 LOADN                            R17 0
      101 CALL                             R15 2 1
      102 SETTABLEKS                       R15 R14 K27 ["Size"]
      104 GETIMPORT                        R15 K35 [Enum.AutomaticSize.Y]
      106 SETTABLEKS                       R15 R14 K28 ["AutomaticSize"]
      108 DUPCLOSURE                       R15 K36 [PROTO_28]
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R2
      120 RETURN                           R15 1
