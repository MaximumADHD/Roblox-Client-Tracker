PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["[MarkdownViewer] Link clicked:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETIMPORT                        R0 K2 [UDim2.fromOffset]
        4 LOADN                            R1 100
        5 LOADN                            R2 100
        6 CALL                             R0 2 1
        7 RETURN                           R0 1
        8 GETIMPORT                        R0 K2 [UDim2.fromOffset]
       10 LOADN                            R1 1
       11 LOADN                            R2 1
       12 CALL                             R0 2 1
       13 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 LOADK                            R0 K0 [0.5]
        3 RETURN                           R0 1
        4 LOADN                            R0 1
        5 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 LOADN                            R0 0
        3 RETURN                           R0 1
        4 LOADN                            R0 1
        5 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETTABLEKS                       R8 R7 K0 ["name"]
       10 JUMPIFNOTEQKS                    R8 K1 ["COMPONENT"] ; [+21]
       12 GETTABLEKS                       R8 R7 K2 ["attributes"]
       14 JUMPIFNOT                        R8 ; [+17]
       15 GETTABLEKS                       R8 R7 K2 ["attributes"]
       17 GETTABLEKS                       R8 R8 K3 ["tagName"]
       19 JUMPIFNOTEQKS                    R8 K4 ["State"] ; [+12]
       21 GETTABLEKS                       R8 R7 K2 ["attributes"]
       23 GETTABLEKS                       R8 R8 K5 ["props"]
       25 LOADNIL                          R9
       26 LOADNIL                          R10
       27 FORGPREP                         R8
       28 SETTABLE                         R12 R1 R11
       29 FORGLOOP                         R8 2 ; [-2]
       31 JUMP                             ; [+7]
       32 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       34 MOVE                             R9 R2
       35 MOVE                             R10 R7
       36 GETIMPORT                        R8 K8 [table.insert]
       38 CALL                             R8 2 0
       39 FORGLOOP                         R3 2 ; [-32]
       41 RETURN                           R1 2

PROTO_7:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["index"]
        6 JUMPIFNOT                        R6 ; [+8]
        7 GETTABLEKS                       R6 R5 K0 ["index"]
        9 GETUPVAL                         R7 0
       10 JUMPIFNOTLT                      R7 R6 ; [+4]
       12 GETTABLEKS                       R6 R5 K0 ["index"]
       14 SETUPVAL                         R6 0
       15 FORGLOOP                         R1 2 ; [-12]
       17 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 ORK                              R1 R2 K0 [0]
        3 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        6 GETTABLEKS                       R2 R2 K2 ["X"]
        8 SUBK                             R1 R2 K0 [32]
        9 JUMP                             ; [+1]
       10 LOADN                            R1 144
       11 GETUPVAL                         R4 2
       12 GETUPVAL                         R5 3
       13 ADD                              R3 R4 R5
       14 GETUPVAL                         R5 4
       15 LENGTH                           R4 R5
       16 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
       18 GETIMPORT                        R2 K5 [math.min]
       20 CALL                             R2 2 1
       21 GETUPVAL                         R6 2
       22 ADDK                             R5 R6 K6 [1]
       23 MOVE                             R3 R2
       24 LOADN                            R4 1
       25 FORNPREP                         R3
       26 GETUPVAL                         R6 5
       27 GETUPVAL                         R7 6
       28 GETTABLEKS                       R7 R7 K7 ["measureBlock"]
       30 GETUPVAL                         R9 4
       31 GETTABLE                         R8 R9 R5
       32 MOVE                             R9 R1
       33 CALL                             R7 2 1
       34 SETTABLE                         R7 R6 R5
       35 FORNLOOP                         R3
       36 GETUPVAL                         R3 0
       37 GETUPVAL                         R4 7
       38 CALL                             R3 1 1
       39 GETIMPORT                        R4 K10 [table.clone]
       41 MOVE                             R5 R3
       42 CALL                             R4 1 1
       43 GETUPVAL                         R8 2
       44 ADDK                             R7 R8 K6 [1]
       45 MOVE                             R5 R2
       46 LOADN                            R6 1
       47 FORNPREP                         R5
       48 GETUPVAL                         R11 4
       49 GETTABLE                         R10 R11 R7
       50 FASTCALL2                        TABLE_INSERT R4 R10 ; [+4]
       52 MOVE                             R9 R4
       53 GETIMPORT                        R8 K12 [table.insert]
       55 CALL                             R8 2 0
       56 FORNLOOP                         R5
       57 GETUPVAL                         R5 8
       58 GETUPVAL                         R6 7
       59 CALL                             R5 1 1
       60 MOVE                             R7 R4
       61 NAMECALL                         R5 R5 K13 ["set"]
       63 CALL                             R5 2 0
       64 SETUPVAL                         R2 2
       65 LOADB                            R5 0
       66 SETUPVAL                         R5 9
       67 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 LENGTH                           R1 R2
        5 JUMPIFNOTLE                      R1 R0 ; [+9]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R3 2
        9 LENGTH                           R2 R3
       10 JUMPIFLT                         R1 R2 ; [+2]
       12 LOADB                            R0 0 +1
       13 LOADB                            R0 1
       14 RETURN                           R0 1
       15 LOADB                            R0 1
       16 SETUPVAL                         R0 0
       17 GETIMPORT                        R0 K2 [task.defer]
       19 NEWCLOSURE                       R1 P0
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          UPVAL U7
       27 CAPTURE                          UPVAL U8
       28 CAPTURE                          UPVAL U9
       29 CAPTURE                          UPVAL U0
       30 CALL                             R0 1 0
       31 GETUPVAL                         R2 1
       32 GETUPVAL                         R3 5
       33 ADD                              R1 R2 R3
       34 GETUPVAL                         R3 2
       35 LENGTH                           R2 R3
       36 JUMPIFLT                         R1 R2 ; [+2]
       38 LOADB                            R0 0 +1
       39 LOADB                            R0 1
       40 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        6 GETTABLEKS                       R2 R2 K2 ["X"]
        8 SUBK                             R1 R2 K0 [32]
        9 JUMP                             ; [+1]
       10 LOADN                            R1 144
       11 LOADN                            R4 1
       12 GETUPVAL                         R2 2
       13 LOADN                            R3 1
       14 FORNPREP                         R2
       15 GETUPVAL                         R5 3
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R6 R6 K3 ["measureBlock"]
       19 GETUPVAL                         R8 5
       20 GETTABLE                         R7 R8 R4
       21 MOVE                             R8 R1
       22 CALL                             R6 2 1
       23 SETTABLE                         R6 R5 R4
       24 FORNLOOP                         R2
       25 GETUPVAL                         R2 6
       26 GETUPVAL                         R4 0
       27 GETUPVAL                         R5 7
       28 CALL                             R4 1 1
       29 ADDK                             R3 R4 K4 [1]
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R0 K2 [task.defer]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 CAPTURE                          UPVAL U8
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["inputCaptureActive"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+3]
        5 LOADB                            R2 1
        6 RETURN                           R2 1
        7 FASTCALL1                        TYPE R1 ; [+3]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K2 [type]
       11 CALL                             R2 1 1
       12 JUMPIFNOTEQKS                    R2 K3 ["boolean"] ; [+2]
       14 RETURN                           R1 1
       15 MOVE                             R2 R1
       16 MOVE                             R3 R0
       17 CALL                             R2 1 -1
       18 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["markdown"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 ORK                              R1 R2 K0 [""]
        6 GETUPVAL                         R2 1
        7 JUMPIFNOTEQ                      R1 R2 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["serialize"]
       13 DUPTABLE                         R3 K5 [{"name", "children"}]
       14 LOADK                            R4 K6 ["ROOT"]
       15 SETTABLEKS                       R4 R3 K3 ["name"]
       17 GETUPVAL                         R4 3
       18 SETTABLEKS                       R4 R3 K4 ["children"]
       20 CALL                             R2 1 1
       21 JUMPIFNOTEQ                      R1 R2 ; [+3]
       23 SETUPVAL                         R1 1
       24 RETURN                           R0 0
       25 SETUPVAL                         R1 1
       26 GETUPVAL                         R3 4
       27 GETTABLEKS                       R3 R3 K7 ["safeParse"]
       29 MOVE                             R4 R1
       30 CALL                             R3 1 2
       31 JUMPIFNOT                        R3 ; [+1]
       32 JUMPIF                           R4 ; [+1]
       33 RETURN                           R0 0
       34 GETTABLEKS                       R5 R4 K4 ["children"]
       36 JUMPIF                           R5 ; [+2]
       37 NEWTABLE                         R5 0 0
       39 MOVE                             R6 R5
       40 LOADNIL                          R7
       41 LOADNIL                          R8
       42 FORGPREP                         R6
       43 GETTABLEKS                       R11 R10 K8 ["index"]
       45 JUMPIFNOT                        R11 ; [+8]
       46 GETTABLEKS                       R11 R10 K8 ["index"]
       48 GETUPVAL                         R12 5
       49 JUMPIFNOTLT                      R12 R11 ; [+4]
       51 GETTABLEKS                       R11 R10 K8 ["index"]
       53 SETUPVAL                         R11 5
       54 FORGLOOP                         R6 2 ; [-12]
       56 GETUPVAL                         R6 6
       57 MOVE                             R7 R5
       58 CALL                             R6 1 2
       59 SETUPVAL                         R7 3
       60 GETUPVAL                         R8 7
       61 LOADNIL                          R9
       62 CALL                             R8 1 0
       63 GETUPVAL                         R8 8
       64 JUMPIFNOT                        R8 ; [+17]
       65 GETIMPORT                        R8 K11 [table.clear]
       67 GETUPVAL                         R9 9
       68 CALL                             R8 1 0
       69 LOADN                            R8 0
       70 SETUPVAL                         R8 10
       71 LOADB                            R8 0
       72 SETUPVAL                         R8 11
       73 GETUPVAL                         R8 12
       74 GETUPVAL                         R9 13
       75 CALL                             R8 1 1
       76 NEWTABLE                         R10 0 0
       78 NAMECALL                         R8 R8 K12 ["set"]
       80 CALL                             R8 2 0
       81 RETURN                           R0 0
       82 LENGTH                           R8 R7
       83 SETUPVAL                         R8 10
       84 GETUPVAL                         R8 12
       85 GETUPVAL                         R9 13
       86 CALL                             R8 1 1
       87 MOVE                             R10 R7
       88 NAMECALL                         R8 R8 K12 ["set"]
       90 CALL                             R8 2 0
       91 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["onMarkdownChanged"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["editable"]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 JUMPIF                           R2 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R3 2
       14 GETUPVAL                         R4 3
       15 GETTABLE                         R2 R3 R4
       16 MOVE                             R3 R0
       17 CALL                             R2 1 0
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K2 ["markdown"]
       21 MOVE                             R3 R0
       22 CALL                             R2 1 0
       23 GETUPVAL                         R2 4
       24 GETTABLEKS                       R2 R2 K3 ["serialize"]
       26 DUPTABLE                         R3 K6 [{"name", "children"}]
       27 LOADK                            R4 K7 ["ROOT"]
       28 SETTABLEKS                       R4 R3 K4 ["name"]
       30 GETUPVAL                         R4 5
       31 SETTABLEKS                       R4 R3 K5 ["children"]
       33 CALL                             R2 1 1
       34 GETUPVAL                         R4 0
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K2 ["markdown"]
       38 CALL                             R4 1 1
       39 ORK                              R3 R4 K8 [""]
       40 JUMPIFEQ                         R2 R3 ; [+5]
       42 SETUPVAL                         R2 6
       43 MOVE                             R4 R1
       44 MOVE                             R5 R2
       45 CALL                             R4 1 0
       46 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["inputCaptureActive"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+3]
        5 LOADB                            R1 1
        6 JUMP                             ; [+13]
        7 FASTCALL1                        TYPE R2 ; [+3]
        8 MOVE                             R4 R2
        9 GETIMPORT                        R3 K2 [type]
       11 CALL                             R3 1 1
       12 JUMPIFNOTEQKS                    R3 K3 ["boolean"] ; [+3]
       14 MOVE                             R1 R2
       15 JUMP                             ; [+4]
       16 MOVE                             R3 R2
       17 MOVE                             R4 R0
       18 CALL                             R3 1 1
       19 MOVE                             R1 R3
       20 JUMPIF                           R1 ; [+3]
       21 GETUPVAL                         R1 1
       22 LOADNIL                          R2
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["Text"]
        3 GETUPVAL                         R1 1
        4 SETTABLEKS                       R1 R0 K1 ["CursorPosition"]
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R1 ; [+7]
        7 JUMPIFNOT                        R2 ; [+6]
        8 GETUPVAL                         R3 1
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K0 ["editable"]
       12 CALL                             R3 1 1
       13 JUMPIF                           R3 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R3 1
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K1 ["onInteraction"]
       19 CALL                             R3 1 1
       20 JUMPIFNOT                        R3 ; [+2]
       21 MOVE                             R4 R3
       22 CALL                             R4 0 0
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K2 ["inputCaptureActive"]
       26 JUMPIFNOTEQKNIL                  R5 ; [+3]
       28 LOADB                            R4 1
       29 JUMP                             ; [+13]
       30 FASTCALL1                        TYPE R5 ; [+3]
       31 MOVE                             R7 R5
       32 GETIMPORT                        R6 K4 [type]
       34 CALL                             R6 1 1
       35 JUMPIFNOTEQKS                    R6 K5 ["boolean"] ; [+3]
       37 MOVE                             R4 R5
       38 JUMP                             ; [+4]
       39 MOVE                             R6 R5
       40 MOVE                             R7 R0
       41 CALL                             R6 1 1
       42 MOVE                             R4 R6
       43 JUMPIF                           R4 ; [+1]
       44 RETURN                           R0 0
       45 GETUPVAL                         R4 4
       46 SETTABLEKS                       R4 R2 K6 ["Text"]
       48 GETUPVAL                         R4 5
       49 SETTABLEKS                       R4 R2 K7 ["CursorPosition"]
       51 GETIMPORT                        R5 K9 [game]
       53 LOADK                            R7 K10 ["UserInputService"]
       54 NAMECALL                         R5 R5 K11 ["GetService"]
       56 CALL                             R5 2 1
       57 NAMECALL                         R5 R5 K12 ["GetFocusedTextBox"]
       59 CALL                             R5 1 1
       60 JUMPIFEQ                         R5 R2 ; [+2]
       62 LOADB                            R4 0 +1
       63 LOADB                            R4 1
       64 JUMPIF                           R4 ; [+3]
       65 NAMECALL                         R5 R2 K13 ["CaptureFocus"]
       67 CALL                             R5 1 0
       68 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Text"]
        4 GETUPVAL                         R1 2
        5 SETTABLEKS                       R1 R0 K1 ["CursorPosition"]
        7 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Text"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+2]
        6 RETURN                           R0 0
        7 GETIMPORT                        R1 K3 [task.defer]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 3
       15 GETUPVAL                         R2 4
       16 CALL                             R1 1 1
       17 JUMPIF                           R1 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 5
       20 LOADNIL                          R3
       21 SETTABLEKS                       R3 R2 K4 ["preferredColumn"]
       23 GETUPVAL                         R2 5
       24 LOADNIL                          R3
       25 SETTABLEKS                       R3 R2 K5 ["preferredFlatOffset"]
       27 LENGTH                           R2 R0
       28 GETUPVAL                         R4 1
       29 LENGTH                           R3 R4
       30 JUMPIFNOTLT                      R2 R3 ; [+27]
       32 GETUPVAL                         R2 6
       33 GETTABLEKS                       R2 R2 K6 ["handleBackspace"]
       35 MOVE                             R3 R1
       36 GETUPVAL                         R4 7
       37 GETUPVAL                         R5 8
       38 GETUPVAL                         R6 9
       39 GETUPVAL                         R7 10
       40 GETUPVAL                         R8 3
       41 CALL                             R2 6 0
       42 GETUPVAL                         R2 11
       43 JUMPIF                           R2 ; [+1]
       44 RETURN                           R0 0
       45 GETIMPORT                        R2 K3 [task.defer]
       47 NEWCLOSURE                       R3 P1
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          UPVAL U12
       50 CAPTURE                          UPVAL U13
       51 CAPTURE                          UPVAL U14
       52 CAPTURE                          UPVAL U15
       53 CAPTURE                          UPVAL U16
       54 CAPTURE                          UPVAL U17
       55 CAPTURE                          UPVAL U18
       56 CALL                             R2 1 0
       57 RETURN                           R0 0
       58 LOADN                            R2 0
       59 LOADK                            R5 K7 ["\n"]
       60 NAMECALL                         R3 R0 K8 ["gmatch"]
       62 CALL                             R3 2 3
       63 FORGPREP                         R3
       64 ADDK                             R2 R2 K9 [1]
       65 FORGLOOP                         R3 1 ; [-2]
       67 LOADN                            R3 2
       68 JUMPIFNOTLT                      R3 R2 ; [+27]
       70 GETUPVAL                         R3 6
       71 GETTABLEKS                       R3 R3 K10 ["handleEnter"]
       73 MOVE                             R4 R1
       74 GETUPVAL                         R5 7
       75 GETUPVAL                         R6 8
       76 GETUPVAL                         R7 9
       77 GETUPVAL                         R8 10
       78 GETUPVAL                         R9 3
       79 CALL                             R3 6 0
       80 GETUPVAL                         R3 11
       81 JUMPIF                           R3 ; [+1]
       82 RETURN                           R0 0
       83 GETIMPORT                        R3 K3 [task.defer]
       85 NEWCLOSURE                       R4 P1
       86 CAPTURE                          UPVAL U3
       87 CAPTURE                          UPVAL U12
       88 CAPTURE                          UPVAL U13
       89 CAPTURE                          UPVAL U14
       90 CAPTURE                          UPVAL U15
       91 CAPTURE                          UPVAL U16
       92 CAPTURE                          UPVAL U17
       93 CAPTURE                          UPVAL U18
       94 CALL                             R3 1 0
       95 RETURN                           R0 0
       96 GETIMPORT                        R3 K13 [string.split]
       98 MOVE                             R4 R0
       99 LOADK                            R5 K7 ["\n"]
      100 CALL                             R3 2 1
      101 GETTABLEN                        R5 R3 2
      102 ORK                              R4 R5 K14 [""]
      103 LOADN                            R7 2
      104 LENGTH                           R9 R4
      105 SUBK                             R8 R9 K9 [1]
      106 NAMECALL                         R5 R4 K15 ["sub"]
      108 CALL                             R5 3 1
      109 JUMPIFNOTEQKS                    R5 K14 [""] ; [+2]
      111 RETURN                           R0 0
      112 GETUPVAL                         R6 6
      113 GETTABLEKS                       R6 R6 K16 ["handleTextInput"]
      115 MOVE                             R7 R5
      116 MOVE                             R8 R1
      117 GETUPVAL                         R9 7
      118 GETUPVAL                         R10 8
      119 GETUPVAL                         R11 9
      120 GETUPVAL                         R12 10
      121 GETUPVAL                         R13 3
      122 CALL                             R6 7 0
      123 GETUPVAL                         R6 11
      124 JUMPIF                           R6 ; [+1]
      125 RETURN                           R0 0
      126 GETIMPORT                        R6 K3 [task.defer]
      128 NEWCLOSURE                       R7 P1
      129 CAPTURE                          UPVAL U3
      130 CAPTURE                          UPVAL U12
      131 CAPTURE                          UPVAL U13
      132 CAPTURE                          UPVAL U14
      133 CAPTURE                          UPVAL U15
      134 CAPTURE                          UPVAL U16
      135 CAPTURE                          UPVAL U17
      136 CAPTURE                          UPVAL U18
      137 CALL                             R6 1 0
      138 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["CursorPosition"]
        4 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Text"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R0 R1 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K1 ["CursorPosition"]
       10 JUMPIFEQKN                       R0 K2 [-1] ; [+4]
       12 GETUPVAL                         R1 2
       13 JUMPIFNOTEQ                      R0 R1 ; [+2]
       15 RETURN                           R0 0
       16 GETIMPORT                        R1 K5 [task.defer]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U2
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 3
       23 GETUPVAL                         R2 4
       24 CALL                             R1 1 1
       25 JUMPIF                           R1 ; [+1]
       26 RETURN                           R0 0
       27 GETUPVAL                         R3 2
       28 SUBK                             R2 R3 K6 [1]
       29 JUMPIFNOTEQ                      R0 R2 ; [+18]
       31 GETUPVAL                         R2 5
       32 LOADNIL                          R3
       33 SETTABLEKS                       R3 R2 K7 ["preferredColumn"]
       35 GETUPVAL                         R2 5
       36 LOADNIL                          R3
       37 SETTABLEKS                       R3 R2 K8 ["preferredFlatOffset"]
       39 GETUPVAL                         R2 6
       40 GETTABLEKS                       R2 R2 K9 ["handleArrowLeft"]
       42 MOVE                             R3 R1
       43 GETUPVAL                         R4 7
       44 GETUPVAL                         R5 8
       45 GETUPVAL                         R6 3
       46 CALL                             R2 4 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R3 2
       49 ADDK                             R2 R3 K6 [1]
       50 JUMPIFNOTEQ                      R0 R2 ; [+18]
       52 GETUPVAL                         R2 5
       53 LOADNIL                          R3
       54 SETTABLEKS                       R3 R2 K7 ["preferredColumn"]
       56 GETUPVAL                         R2 5
       57 LOADNIL                          R3
       58 SETTABLEKS                       R3 R2 K8 ["preferredFlatOffset"]
       60 GETUPVAL                         R2 6
       61 GETTABLEKS                       R2 R2 K10 ["handleArrowRight"]
       63 MOVE                             R3 R1
       64 GETUPVAL                         R4 7
       65 GETUPVAL                         R5 8
       66 GETUPVAL                         R6 3
       67 CALL                             R2 4 0
       68 RETURN                           R0 0
       69 GETUPVAL                         R2 2
       70 JUMPIFNOTLT                      R0 R2 ; [+11]
       72 GETUPVAL                         R2 6
       73 GETTABLEKS                       R2 R2 K11 ["handleArrowUp"]
       75 MOVE                             R3 R1
       76 GETUPVAL                         R4 7
       77 GETUPVAL                         R5 8
       78 GETUPVAL                         R6 3
       79 GETUPVAL                         R7 5
       80 CALL                             R2 5 0
       81 RETURN                           R0 0
       82 GETUPVAL                         R2 6
       83 GETTABLEKS                       R2 R2 K12 ["handleArrowDown"]
       85 MOVE                             R3 R1
       86 GETUPVAL                         R4 7
       87 GETUPVAL                         R5 8
       88 GETUPVAL                         R6 3
       89 GETUPVAL                         R7 5
       90 CALL                             R2 5 0
       91 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K0 ["editable"]
        8 CALL                             R2 1 1
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 0
       11 LOADK                            R4 K1 ["Text"]
       12 NAMECALL                         R2 R1 K2 ["GetPropertyChangedSignal"]
       14 CALL                             R2 2 1
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          UPVAL U7
       23 CAPTURE                          UPVAL U8
       24 CAPTURE                          UPVAL U9
       25 CAPTURE                          UPVAL U10
       26 CAPTURE                          UPVAL U11
       27 CAPTURE                          UPVAL U12
       28 CAPTURE                          UPVAL U13
       29 CAPTURE                          UPVAL U14
       30 CAPTURE                          UPVAL U15
       31 CAPTURE                          UPVAL U16
       32 CAPTURE                          UPVAL U17
       33 CAPTURE                          UPVAL U18
       34 CAPTURE                          UPVAL U19
       35 NAMECALL                         R2 R2 K3 ["Connect"]
       37 CALL                             R2 2 1
       38 LOADK                            R5 K4 ["CursorPosition"]
       39 NAMECALL                         R3 R1 K2 ["GetPropertyChangedSignal"]
       41 CALL                             R3 2 1
       42 NEWCLOSURE                       R5 P1
       43 CAPTURE                          VAL R1
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          UPVAL U10
       52 NAMECALL                         R3 R3 K3 ["Connect"]
       54 CALL                             R3 2 1
       55 GETTABLEKS                       R4 R1 K5 ["FocusLost"]
       57 NEWCLOSURE                       R6 P2
       58 CAPTURE                          UPVAL U10
       59 NAMECALL                         R4 R4 K3 ["Connect"]
       61 CALL                             R4 2 1
       62 NEWCLOSURE                       R5 P3
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R4
       66 RETURN                           R5 1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 CALL                             R2 1 1
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 2
        6 GETIMPORT                        R5 K3 [Enum.KeyCode.LeftControl]
        8 NAMECALL                         R3 R3 K4 ["IsKeyDown"]
       10 CALL                             R3 2 1
       11 JUMPIF                           R3 ; [+6]
       12 GETUPVAL                         R3 2
       13 GETIMPORT                        R5 K6 [Enum.KeyCode.RightControl]
       15 NAMECALL                         R3 R3 K4 ["IsKeyDown"]
       17 CALL                             R3 2 1
       18 JUMPIFNOT                        R3 ; [+64]
       19 GETTABLEKS                       R4 R0 K1 ["KeyCode"]
       21 GETIMPORT                        R5 K8 [Enum.KeyCode.B]
       23 JUMPIFNOTEQ                      R4 R5 ; [+27]
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R4 R4 K9 ["handleToggleStyle"]
       28 LOADK                            R5 K10 ["BOLD"]
       29 MOVE                             R6 R2
       30 GETUPVAL                         R7 4
       31 GETUPVAL                         R8 5
       32 GETUPVAL                         R9 6
       33 GETUPVAL                         R10 0
       34 CALL                             R4 6 0
       35 GETUPVAL                         R4 7
       36 JUMPIF                           R4 ; [+1]
       37 RETURN                           R0 0
       38 GETIMPORT                        R4 K13 [task.defer]
       40 NEWCLOSURE                       R5 P0
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          UPVAL U8
       43 CAPTURE                          UPVAL U9
       44 CAPTURE                          UPVAL U10
       45 CAPTURE                          UPVAL U11
       46 CAPTURE                          UPVAL U12
       47 CAPTURE                          UPVAL U13
       48 CAPTURE                          UPVAL U14
       49 CALL                             R4 1 0
       50 RETURN                           R0 0
       51 GETTABLEKS                       R4 R0 K1 ["KeyCode"]
       53 GETIMPORT                        R5 K15 [Enum.KeyCode.I]
       55 JUMPIFNOTEQ                      R4 R5 ; [+27]
       57 GETUPVAL                         R4 3
       58 GETTABLEKS                       R4 R4 K9 ["handleToggleStyle"]
       60 LOADK                            R5 K16 ["ITALIC"]
       61 MOVE                             R6 R2
       62 GETUPVAL                         R7 4
       63 GETUPVAL                         R8 5
       64 GETUPVAL                         R9 6
       65 GETUPVAL                         R10 0
       66 CALL                             R4 6 0
       67 GETUPVAL                         R4 7
       68 JUMPIF                           R4 ; [+1]
       69 RETURN                           R0 0
       70 GETIMPORT                        R4 K13 [task.defer]
       72 NEWCLOSURE                       R5 P0
       73 CAPTURE                          UPVAL U0
       74 CAPTURE                          UPVAL U8
       75 CAPTURE                          UPVAL U9
       76 CAPTURE                          UPVAL U10
       77 CAPTURE                          UPVAL U11
       78 CAPTURE                          UPVAL U12
       79 CAPTURE                          UPVAL U13
       80 CAPTURE                          UPVAL U14
       81 CALL                             R4 1 0
       82 RETURN                           R0 0
       83 GETUPVAL                         R4 2
       84 NAMECALL                         R4 R4 K17 ["GetFocusedTextBox"]
       86 CALL                             R4 1 1
       87 GETUPVAL                         R6 15
       88 JUMPIFEQ                         R4 R6 ; [+2]
       90 LOADB                            R5 0 +1
       91 LOADB                            R5 1
       92 JUMPIFNOT                        R1 ; [+2]
       93 JUMPIF                           R5 ; [+1]
       94 RETURN                           R0 0
       95 GETTABLEKS                       R6 R0 K1 ["KeyCode"]
       97 GETIMPORT                        R7 K19 [Enum.KeyCode.Delete]
       99 JUMPIFNOTEQ                      R6 R7 ; [+26]
      101 GETUPVAL                         R6 3
      102 GETTABLEKS                       R6 R6 K20 ["handleDelete"]
      104 MOVE                             R7 R2
      105 GETUPVAL                         R8 4
      106 GETUPVAL                         R9 5
      107 GETUPVAL                         R10 6
      108 GETUPVAL                         R11 16
      109 GETUPVAL                         R12 0
      110 CALL                             R6 6 0
      111 GETUPVAL                         R6 7
      112 JUMPIF                           R6 ; [+1]
      113 RETURN                           R0 0
      114 GETIMPORT                        R6 K13 [task.defer]
      116 NEWCLOSURE                       R7 P0
      117 CAPTURE                          UPVAL U0
      118 CAPTURE                          UPVAL U8
      119 CAPTURE                          UPVAL U9
      120 CAPTURE                          UPVAL U10
      121 CAPTURE                          UPVAL U11
      122 CAPTURE                          UPVAL U12
      123 CAPTURE                          UPVAL U13
      124 CAPTURE                          UPVAL U14
      125 CALL                             R6 1 0
      126 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K0 ["editable"]
        8 CALL                             R2 1 1
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 0
       11 GETIMPORT                        R2 K2 [game]
       13 LOADK                            R4 K3 ["UserInputService"]
       14 NAMECALL                         R2 R2 K4 ["GetService"]
       16 CALL                             R2 2 1
       17 GETTABLEKS                       R3 R2 K5 ["InputBegan"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          UPVAL U7
       27 CAPTURE                          UPVAL U8
       28 CAPTURE                          UPVAL U9
       29 CAPTURE                          UPVAL U10
       30 CAPTURE                          UPVAL U11
       31 CAPTURE                          UPVAL U12
       32 CAPTURE                          UPVAL U13
       33 CAPTURE                          UPVAL U14
       34 CAPTURE                          UPVAL U15
       35 CAPTURE                          VAL R1
       36 CAPTURE                          UPVAL U16
       37 NAMECALL                         R3 R3 K6 ["Connect"]
       39 CALL                             R3 2 1
       40 NEWCLOSURE                       R4 P1
       41 CAPTURE                          VAL R3
       42 RETURN                           R4 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["serialize"]
        3 DUPTABLE                         R1 K3 [{"name", "children"}]
        4 LOADK                            R2 K4 ["ROOT"]
        5 SETTABLEKS                       R2 R1 K1 ["name"]
        7 GETUPVAL                         R2 1
        8 SETTABLEKS                       R2 R1 K2 ["children"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_30:
        0 GETTABLEKS                       R2 R1 K0 ["peek"]
        2 MOVE                             R4 R2
        3 GETTABLEKS                       R5 R0 K1 ["debugInput"]
        5 CALL                             R4 1 1
        6 JUMPIFEQKB                       R4 TRUE ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 JUMPIFNOT                        R3 ; [+2]
       11 LOADK                            R4 K2 ["a\nbc\nd"]
       12 JUMP                             ; [+1]
       13 LOADK                            R4 K3 [" \n  \n "]
       14 JUMPIFNOT                        R3 ; [+2]
       15 LOADN                            R5 4
       16 JUMP                             ; [+1]
       17 LOADN                            R5 4
       18 GETTABLEKS                       R6 R1 K4 ["createComputed"]
       20 NEWCLOSURE                       R7 P0
       21 CAPTURE                          VAL R4
       22 LOADK                            R8 K5 ["mv-sentinel-text"]
       23 CALL                             R6 2 1
       24 GETTABLEKS                       R7 R1 K4 ["createComputed"]
       26 NEWCLOSURE                       R8 P1
       27 CAPTURE                          VAL R3
       28 LOADK                            R9 K6 ["mv-hidden-size"]
       29 CALL                             R7 2 1
       30 GETTABLEKS                       R8 R1 K4 ["createComputed"]
       32 NEWCLOSURE                       R9 P2
       33 CAPTURE                          VAL R3
       34 LOADK                            R10 K7 ["mv-hidden-bg-tr"]
       35 CALL                             R8 2 1
       36 GETTABLEKS                       R9 R1 K4 ["createComputed"]
       38 NEWCLOSURE                       R10 P3
       39 CAPTURE                          VAL R3
       40 LOADK                            R11 K8 ["mv-hidden-text-tr"]
       41 CALL                             R9 2 1
       42 LOADN                            R10 0
       43 NEWCLOSURE                       R11 P4
       44 CAPTURE                          REF R10
       45 DUPCLOSURE                       R12 K9 [PROTO_6]
       46 NEWCLOSURE                       R13 P6
       47 CAPTURE                          REF R10
       48 MOVE                             R14 R2
       49 GETTABLEKS                       R15 R0 K10 ["markdown"]
       51 CALL                             R14 1 1
       52 NEWTABLE                         R15 0 0
       54 JUMPIFNOT                        R14 ; [+31]
       55 JUMPIFEQKS                       R14 K11 [""] ; [+30]
       57 GETUPVAL                         R16 0
       58 GETTABLEKS                       R16 R16 K12 ["safeParse"]
       60 MOVE                             R17 R14
       61 CALL                             R16 1 2
       62 JUMPIFNOT                        R16 ; [+23]
       63 JUMPIFNOT                        R17 ; [+22]
       64 GETTABLEKS                       R18 R17 K13 ["children"]
       66 JUMPIF                           R18 ; [+2]
       67 NEWTABLE                         R18 0 0
       69 MOVE                             R15 R18
       70 MOVE                             R18 R15
       71 MOVE                             R19 R18
       72 LOADNIL                          R20
       73 LOADNIL                          R21
       74 FORGPREP                         R19
       75 GETTABLEKS                       R24 R23 K14 ["index"]
       77 JUMPIFNOT                        R24 ; [+6]
       78 GETTABLEKS                       R24 R23 K14 ["index"]
       80 JUMPIFNOTLT                      R10 R24 ; [+3]
       82 GETTABLEKS                       R10 R23 K14 ["index"]
       84 FORGLOOP                         R19 2 ; [-10]
       86 MOVE                             R16 R12
       87 MOVE                             R17 R15
       88 CALL                             R16 1 2
       89 GETTABLEKS                       R18 R1 K15 ["createStore"]
       91 MOVE                             R19 R16
       92 CALL                             R18 1 2
       93 GETTABLEKS                       R20 R1 K15 ["createStore"]
       95 NEWTABLE                         R21 0 0
       97 CALL                             R20 1 2
       98 ORK                              R22 R14 K11 [""]
       99 GETTABLEKS                       R23 R1 K16 ["createRef"]
      101 LOADK                            R24 K17 ["hiddenInput"]
      102 CALL                             R23 1 1
      103 GETTABLEKS                       R24 R1 K16 ["createRef"]
      105 LOADK                            R25 K18 ["mdRoot"]
      106 CALL                             R24 1 1
      107 MOVE                             R26 R2
      108 GETTABLEKS                       R27 R0 K19 ["virtualized"]
      110 CALL                             R26 1 1
      111 JUMPIFNOTEQKB                    R26 FALSE ; [+2]
      113 LOADB                            R25 0 +1
      114 LOADB                            R25 1
      115 MOVE                             R26 R17
      116 NEWTABLE                         R27 0 0
      118 LOADN                            R28 0
      119 JUMPIFNOT                        R25 ; [+2]
      120 LOADN                            R29 30
      121 JUMP                             ; [+1]
      122 LOADK                            R29 K20 [∞]
      123 LOADB                            R30 0
      124 NEWCLOSURE                       R31 P7
      125 CAPTURE                          VAL R27
      126 NEWCLOSURE                       R32 P8
      127 CAPTURE                          REF R30
      128 CAPTURE                          REF R28
      129 CAPTURE                          REF R26
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R24
      132 CAPTURE                          VAL R29
      133 CAPTURE                          VAL R27
      134 CAPTURE                          UPVAL U1
      135 CAPTURE                          VAL R20
      136 CAPTURE                          VAL R21
      137 GETTABLEKS                       R33 R1 K21 ["createSignal"]
      139 LOADN                            R34 0
      140 CALL                             R33 1 2
      141 NEWCLOSURE                       R35 P9
      142 CAPTURE                          VAL R25
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R24
      145 CAPTURE                          REF R28
      146 CAPTURE                          VAL R27
      147 CAPTURE                          UPVAL U1
      148 CAPTURE                          REF R26
      149 CAPTURE                          VAL R34
      150 CAPTURE                          VAL R33
      151 JUMPIF                           R25 ; [+8]
      152 MOVE                             R36 R21
      153 MOVE                             R37 R20
      154 CALL                             R36 1 1
      155 MOVE                             R38 R17
      156 NAMECALL                         R36 R36 K22 ["set"]
      158 CALL                             R36 2 0
      159 LENGTH                           R28 R17
      160 GETTABLEKS                       R36 R1 K21 ["createSignal"]
      162 LOADNIL                          R37
      163 CALL                             R36 1 2
      164 NEWCLOSURE                       R38 P10
      165 CAPTURE                          VAL R0
      166 GETTABLEKS                       R39 R1 K23 ["createEffect"]
      168 NEWCLOSURE                       R40 P11
      169 CAPTURE                          VAL R0
      170 CAPTURE                          REF R22
      171 CAPTURE                          UPVAL U2
      172 CAPTURE                          REF R26
      173 CAPTURE                          UPVAL U0
      174 CAPTURE                          REF R10
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R37
      177 CAPTURE                          VAL R25
      178 CAPTURE                          VAL R27
      179 CAPTURE                          REF R28
      180 CAPTURE                          REF R30
      181 CAPTURE                          VAL R21
      182 CAPTURE                          VAL R20
      183 LOADK                            R41 K24 ["markdown-sync"]
      184 CALL                             R39 2 0
      185 GETTABLEKS                       R39 R1 K23 ["createEffect"]
      187 NEWCLOSURE                       R40 P12
      188 CAPTURE                          VAL R2
      189 CAPTURE                          VAL R0
      190 CAPTURE                          VAL R20
      191 CAPTURE                          UPVAL U3
      192 CAPTURE                          UPVAL U2
      193 CAPTURE                          REF R26
      194 CAPTURE                          REF R22
      195 LOADK                            R41 K25 ["markdown-serialize-sync"]
      196 CALL                             R39 2 0
      197 DUPTABLE                         R39 K31 [{"getSelection", "setSelection", "updateBlocks", "blockStore", "nextIndex"}]
      198 SETTABLEKS                       R36 R39 K26 ["getSelection"]
      200 SETTABLEKS                       R37 R39 K27 ["setSelection"]
      202 SETTABLEKS                       R21 R39 K28 ["updateBlocks"]
      204 SETTABLEKS                       R20 R39 K29 ["blockStore"]
      206 SETTABLEKS                       R11 R39 K30 ["nextIndex"]
      208 SETTABLEKS                       R38 R39 K32 ["isCaretAllowed"]
      210 GETTABLEKS                       R40 R1 K23 ["createEffect"]
      212 NEWCLOSURE                       R41 P13
      213 CAPTURE                          VAL R0
      214 CAPTURE                          VAL R37
      215 LOADK                            R42 K33 ["markdown-viewer-clear-when-inactive"]
      216 CALL                             R40 2 0
      217 NEWCLOSURE                       R40 P14
      218 CAPTURE                          VAL R4
      219 CAPTURE                          VAL R5
      220 GETTABLEKS                       R41 R1 K23 ["createEffect"]
      222 NEWCLOSURE                       R42 P15
      223 CAPTURE                          VAL R36
      224 CAPTURE                          VAL R2
      225 CAPTURE                          VAL R23
      226 CAPTURE                          VAL R0
      227 CAPTURE                          VAL R4
      228 CAPTURE                          VAL R5
      229 LOADK                            R43 K34 ["markdown-viewer-focus-on-select"]
      230 CALL                             R41 2 0
      231 GETTABLEKS                       R41 R1 K23 ["createEffect"]
      233 NEWCLOSURE                       R42 P16
      234 CAPTURE                          VAL R23
      235 CAPTURE                          VAL R2
      236 CAPTURE                          VAL R0
      237 CAPTURE                          VAL R4
      238 CAPTURE                          VAL R5
      239 CAPTURE                          VAL R36
      240 CAPTURE                          VAL R39
      241 CAPTURE                          UPVAL U4
      242 CAPTURE                          VAL R20
      243 CAPTURE                          VAL R21
      244 CAPTURE                          VAL R37
      245 CAPTURE                          VAL R11
      246 CAPTURE                          VAL R25
      247 CAPTURE                          VAL R24
      248 CAPTURE                          REF R28
      249 CAPTURE                          VAL R27
      250 CAPTURE                          UPVAL U1
      251 CAPTURE                          REF R26
      252 CAPTURE                          VAL R34
      253 CAPTURE                          VAL R33
      254 LOADK                            R43 K35 ["markdown-viewer-input-handler"]
      255 CALL                             R41 2 0
      256 GETTABLEKS                       R41 R1 K23 ["createEffect"]
      258 NEWCLOSURE                       R42 P17
      259 CAPTURE                          VAL R23
      260 CAPTURE                          VAL R2
      261 CAPTURE                          VAL R0
      262 CAPTURE                          VAL R36
      263 CAPTURE                          UPVAL U4
      264 CAPTURE                          VAL R20
      265 CAPTURE                          VAL R21
      266 CAPTURE                          VAL R37
      267 CAPTURE                          VAL R25
      268 CAPTURE                          VAL R24
      269 CAPTURE                          REF R28
      270 CAPTURE                          VAL R27
      271 CAPTURE                          UPVAL U1
      272 CAPTURE                          REF R26
      273 CAPTURE                          VAL R34
      274 CAPTURE                          VAL R33
      275 CAPTURE                          VAL R11
      276 LOADK                            R43 K36 ["markdown-viewer-keyboard-handler"]
      277 CALL                             R41 2 0
      278 MOVE                             R41 R2
      279 GETTABLEKS                       R42 R0 K37 ["registerSerializer"]
      281 CALL                             R41 1 1
      282 JUMPIFNOT                        R41 ; [+5]
      283 MOVE                             R42 R41
      284 NEWCLOSURE                       R43 P18
      285 CAPTURE                          UPVAL U2
      286 CAPTURE                          REF R26
      287 CALL                             R42 1 0
      288 DUPTABLE                         R42 K53 [{"isVirtualized", "blocks", "getHeight", "heightVersion", "loadRows", "overscan", "linkCallback", "editorCtx", "componentModules", "componentStore", "updateComponentStore", "sentinelText", "hiddenInputSize", "hiddenInputBgTransparency", "hiddenInputTextTransparency"}]
      289 SETTABLEKS                       R25 R42 K38 ["isVirtualized"]
      291 SETTABLEKS                       R20 R42 K39 ["blocks"]
      293 SETTABLEKS                       R31 R42 K40 ["getHeight"]
      295 SETTABLEKS                       R33 R42 K41 ["heightVersion"]
      297 SETTABLEKS                       R32 R42 K42 ["loadRows"]
      299 JUMPIFNOT                        R25 ; [+2]
      300 LOADN                            R43 3
      301 JUMP                             ; [+1]
      302 LOADN                            R43 15
      303 SETTABLEKS                       R43 R42 K43 ["overscan"]
      305 GETTABLEKS                       R43 R0 K44 ["linkCallback"]
      307 SETTABLEKS                       R43 R42 K44 ["linkCallback"]
      309 SETTABLEKS                       R39 R42 K45 ["editorCtx"]
      311 GETTABLEKS                       R43 R0 K46 ["componentModules"]
      313 SETTABLEKS                       R43 R42 K46 ["componentModules"]
      315 SETTABLEKS                       R18 R42 K47 ["componentStore"]
      317 SETTABLEKS                       R19 R42 K48 ["updateComponentStore"]
      319 SETTABLEKS                       R6 R42 K49 ["sentinelText"]
      321 SETTABLEKS                       R7 R42 K50 ["hiddenInputSize"]
      323 SETTABLEKS                       R8 R42 K51 ["hiddenInputBgTransparency"]
      325 SETTABLEKS                       R9 R42 K52 ["hiddenInputTextTransparency"]
      327 CLOSEUPVALS                      R10
      328 RETURN                           R42 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Blox"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K7 ["expr"]
       14 GETIMPORT                        R3 K5 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K8 ["Parent"]
       20 GETTABLEKS                       R4 R4 K9 ["MarkdownParser"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETIMPORT                        R5 K1 [script]
       27 GETTABLEKS                       R5 R5 K8 ["Parent"]
       29 GETTABLEKS                       R5 R5 K10 ["MarkdownSerializer"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETIMPORT                        R6 K1 [script]
       36 GETTABLEKS                       R6 R6 K8 ["Parent"]
       38 GETTABLEKS                       R6 R6 K11 ["BlockMeasure"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETIMPORT                        R7 K1 [script]
       45 GETTABLEKS                       R7 R7 K8 ["Parent"]
       47 GETTABLEKS                       R7 R7 K12 ["EditorState"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETIMPORT                        R8 K1 [script]
       54 GETTABLEKS                       R8 R8 K8 ["Parent"]
       56 GETTABLEKS                       R8 R8 K13 ["EditorOperations"]
       58 CALL                             R7 1 1
       59 GETTABLEKS                       R8 R1 K14 ["StoreMatchers"]
       61 GETTABLEKS                       R9 R8 K15 ["deep"]
       63 GETTABLEKS                       R10 R1 K16 ["template"]
       65 GETTABLEKS                       R11 R1 K17 ["Frame"]
       67 GETTABLEKS                       R12 R1 K18 ["ScrollingFrame"]
       69 GETTABLEKS                       R13 R1 K19 ["TextBox"]
       71 GETTABLEKS                       R14 R1 K20 ["VirtualList"]
       73 GETTABLEKS                       R15 R1 K21 ["For"]
       75 GETTABLEKS                       R16 R1 K22 ["If"]
       77 GETIMPORT                        R17 K5 [require]
       79 GETIMPORT                        R18 K1 [script]
       81 GETTABLEKS                       R18 R18 K8 ["Parent"]
       83 GETTABLEKS                       R18 R18 K23 ["MarkdownBlock"]
       85 CALL                             R17 1 1
       86 GETIMPORT                        R18 K5 [require]
       88 GETIMPORT                        R19 K1 [script]
       90 GETTABLEKS                       R19 R19 K8 ["Parent"]
       92 GETTABLEKS                       R19 R19 K24 ["MarkdownStyles"]
       94 CALL                             R18 1 1
       95 MOVE                             R19 R10
       96 LOADK                            R20 K25 ["MarkdownViewer"]
       97 DUPTABLE                         R21 K36 [{"markdown", "linkCallback", "editable", "componentModules", "onMarkdownChanged", "inputCaptureActive", "onInteraction", "debugInput", "registerSerializer", "virtualized"}]
       98 LOADK                            R22 K37 ["# Header\n\n## List\n- Completed task\n- Second bullet item with **bold**\n- Third item with a [link](https://example.com)\n- [x] Another done item\n- [ ] Still to do\n\n## Code Block\n\n```lua\nlocal function greet(name)\n    print(\"Hello, \" .. name .. \"!\")\nend\n\ngreet(\"World\")\n```\n\n## Table\n\n| Feature | Status | Priority |\n| ------- | ------ | -------- |\n| Headings | Done | High |\n| Lists | Done | High |\n| Tables | Done | Medium |\n| Images | Done | Low |\n\n## Blockquote\n\n> This is a blockquote. It can contain *italic* and **bold** text.\n\n---\n\n### Image\n\n![Example](rbxasset://textures/ui/GuiImagePlaceholder.png)\n"]
       99 SETTABLEKS                       R22 R21 K26 ["markdown"]
      101 DUPCLOSURE                       R22 K38 [PROTO_0]
      102 SETTABLEKS                       R22 R21 K27 ["linkCallback"]
      104 LOADB                            R22 1
      105 SETTABLEKS                       R22 R21 K28 ["editable"]
      107 NEWTABLE                         R22 0 0
      109 SETTABLEKS                       R22 R21 K29 ["componentModules"]
      111 LOADNIL                          R22
      112 SETTABLEKS                       R22 R21 K30 ["onMarkdownChanged"]
      114 LOADB                            R22 1
      115 SETTABLEKS                       R22 R21 K31 ["inputCaptureActive"]
      117 LOADNIL                          R22
      118 SETTABLEKS                       R22 R21 K32 ["onInteraction"]
      120 LOADB                            R22 0
      121 SETTABLEKS                       R22 R21 K33 ["debugInput"]
      123 LOADNIL                          R22
      124 SETTABLEKS                       R22 R21 K34 ["registerSerializer"]
      126 LOADB                            R22 1
      127 SETTABLEKS                       R22 R21 K35 ["virtualized"]
      129 NEWTABLE                         R22 0 1
      131 MOVE                             R23 R11
      132 NEWTABLE                         R24 8 2
      134 LOADK                            R27 K39 ["MarkdownViewerHost"]
      135 SETTABLEKS                       R27 R24 K40 ["Name"]
      137 LOADK                            R27 K41 ["md-viewer-host"]
      138 SETTABLEKS                       R27 R24 K42 ["Tags"]
      140 GETIMPORT                        R27 K45 [UDim2.new]
      142 LOADN                            R28 1
      143 LOADN                            R29 0
      144 LOADN                            R30 1
      145 LOADN                            R31 0
      146 CALL                             R27 4 1
      147 SETTABLEKS                       R27 R24 K46 ["Size"]
      149 LOADN                            R27 1
      150 SETTABLEKS                       R27 R24 K47 ["BackgroundTransparency"]
      152 LOADB                            R27 0
      153 SETTABLEKS                       R27 R24 K48 ["ClipsDescendants"]
      155 MOVE                             R25 R16
      156 DUPTABLE                         R26 K52 [{"when", "Then", "Else"}]
      157 MOVE                             R27 R2
      158 LOADK                            R28 K53 ["isVirtualized"]
      159 CALL                             R27 1 1
      160 SETTABLEKS                       R27 R26 K49 ["when"]
      162 MOVE                             R27 R10
      163 NEWTABLE                         R28 0 1
      165 MOVE                             R29 R12
      166 NEWTABLE                         R30 8 2
      168 LOADK                            R33 K54 ["mdRoot"]
      169 SETTABLEKS                       R33 R30 K55 ["ref"]
      171 LOADK                            R33 K56 ["md-root-virtual"]
      172 SETTABLEKS                       R33 R30 K42 ["Tags"]
      174 GETIMPORT                        R33 K45 [UDim2.new]
      176 LOADN                            R34 1
      177 LOADN                            R35 0
      178 LOADN                            R36 1
      179 LOADN                            R37 0
      180 CALL                             R33 4 1
      181 SETTABLEKS                       R33 R30 K46 ["Size"]
      183 GETIMPORT                        R33 K60 [Enum.AutomaticSize.None]
      185 SETTABLEKS                       R33 R30 K61 ["AutomaticCanvasSize"]
      187 GETIMPORT                        R33 K45 [UDim2.new]
      189 LOADN                            R34 0
      190 LOADN                            R35 0
      191 LOADN                            R36 0
      192 LOADN                            R37 0
      193 CALL                             R33 4 1
      194 SETTABLEKS                       R33 R30 K62 ["CanvasSize"]
      196 GETIMPORT                        R33 K65 [Enum.ScrollingDirection.Y]
      198 SETTABLEKS                       R33 R30 K63 ["ScrollingDirection"]
      200 LOADN                            R33 1
      201 SETTABLEKS                       R33 R30 K66 ["LayoutOrder"]
      203 MOVE                             R31 R18
      204 NEWTABLE                         R32 0 0
      206 CALL                             R31 1 1
      207 MOVE                             R32 R14
      208 DUPTABLE                         R33 K76 [{"items", "getHeight", "heightVersion", "loadRows", "overscan", "spacing", "strategy", "useParentScroll", "Each"}]
      209 MOVE                             R34 R2
      210 LOADK                            R35 K77 ["blocks"]
      211 CALL                             R34 1 1
      212 SETTABLEKS                       R34 R33 K67 ["items"]
      214 MOVE                             R34 R2
      215 LOADK                            R35 K68 ["getHeight"]
      216 CALL                             R34 1 1
      217 SETTABLEKS                       R34 R33 K68 ["getHeight"]
      219 MOVE                             R34 R2
      220 LOADK                            R35 K69 ["heightVersion"]
      221 CALL                             R34 1 1
      222 SETTABLEKS                       R34 R33 K69 ["heightVersion"]
      224 MOVE                             R34 R2
      225 LOADK                            R35 K70 ["loadRows"]
      226 CALL                             R34 1 1
      227 SETTABLEKS                       R34 R33 K70 ["loadRows"]
      229 MOVE                             R34 R2
      230 LOADK                            R35 K71 ["overscan"]
      231 CALL                             R34 1 1
      232 SETTABLEKS                       R34 R33 K71 ["overscan"]
      234 LOADN                            R34 8
      235 SETTABLEKS                       R34 R33 K72 ["spacing"]
      237 LOADK                            R34 K78 ["cache"]
      238 SETTABLEKS                       R34 R33 K73 ["strategy"]
      240 LOADB                            R34 1
      241 SETTABLEKS                       R34 R33 K74 ["useParentScroll"]
      243 MOVE                             R34 R10
      244 NEWTABLE                         R35 0 2
      246 LOADK                            R36 K79 ["idx"]
      247 LOADK                            R37 K80 ["block"]
      248 SETLIST                          R35 R36 2 [1]
      250 NEWTABLE                         R36 0 1
      252 MOVE                             R37 R17
      253 DUPTABLE                         R38 K86 [{"node", "linkCallback", "editorCtx", "blockIndex", "LayoutOrder", "componentModules", "componentStore", "updateComponentStore"}]
      254 MOVE                             R39 R2
      255 LOADK                            R40 K80 ["block"]
      256 CALL                             R39 1 1
      257 SETTABLEKS                       R39 R38 K81 ["node"]
      259 MOVE                             R39 R2
      260 LOADK                            R40 K27 ["linkCallback"]
      261 CALL                             R39 1 1
      262 SETTABLEKS                       R39 R38 K27 ["linkCallback"]
      264 MOVE                             R39 R2
      265 LOADK                            R40 K82 ["editorCtx"]
      266 CALL                             R39 1 1
      267 SETTABLEKS                       R39 R38 K82 ["editorCtx"]
      269 MOVE                             R39 R2
      270 LOADK                            R40 K79 ["idx"]
      271 CALL                             R39 1 1
      272 SETTABLEKS                       R39 R38 K83 ["blockIndex"]
      274 MOVE                             R39 R2
      275 LOADK                            R40 K79 ["idx"]
      276 CALL                             R39 1 1
      277 SETTABLEKS                       R39 R38 K66 ["LayoutOrder"]
      279 MOVE                             R39 R2
      280 LOADK                            R40 K29 ["componentModules"]
      281 CALL                             R39 1 1
      282 SETTABLEKS                       R39 R38 K29 ["componentModules"]
      284 MOVE                             R39 R2
      285 LOADK                            R40 K84 ["componentStore"]
      286 CALL                             R39 1 1
      287 SETTABLEKS                       R39 R38 K84 ["componentStore"]
      289 MOVE                             R39 R2
      290 LOADK                            R40 K85 ["updateComponentStore"]
      291 CALL                             R39 1 1
      292 SETTABLEKS                       R39 R38 K85 ["updateComponentStore"]
      294 CALL                             R37 1 -1
      295 SETLIST                          R36 R37 -1 [1]
      297 CALL                             R34 2 1
      298 SETTABLEKS                       R34 R33 K75 ["Each"]
      300 CALL                             R32 1 -1
      301 SETLIST                          R30 R31 -1 [1]
      303 CALL                             R29 1 -1
      304 SETLIST                          R28 R29 -1 [1]
      306 CALL                             R27 1 1
      307 SETTABLEKS                       R27 R26 K50 ["Then"]
      309 MOVE                             R27 R10
      310 NEWTABLE                         R28 0 1
      312 MOVE                             R29 R12
      313 NEWTABLE                         R30 8 2
      315 LOADK                            R33 K54 ["mdRoot"]
      316 SETTABLEKS                       R33 R30 K55 ["ref"]
      318 LOADK                            R33 K87 ["md-root"]
      319 SETTABLEKS                       R33 R30 K42 ["Tags"]
      321 GETIMPORT                        R33 K45 [UDim2.new]
      323 LOADN                            R34 1
      324 LOADN                            R35 0
      325 LOADN                            R36 1
      326 LOADN                            R37 0
      327 CALL                             R33 4 1
      328 SETTABLEKS                       R33 R30 K46 ["Size"]
      330 GETIMPORT                        R33 K88 [Enum.AutomaticSize.Y]
      332 SETTABLEKS                       R33 R30 K61 ["AutomaticCanvasSize"]
      334 GETIMPORT                        R33 K45 [UDim2.new]
      336 LOADN                            R34 0
      337 LOADN                            R35 0
      338 LOADN                            R36 0
      339 LOADN                            R37 0
      340 CALL                             R33 4 1
      341 SETTABLEKS                       R33 R30 K62 ["CanvasSize"]
      343 GETIMPORT                        R33 K65 [Enum.ScrollingDirection.Y]
      345 SETTABLEKS                       R33 R30 K63 ["ScrollingDirection"]
      347 LOADN                            R33 1
      348 SETTABLEKS                       R33 R30 K66 ["LayoutOrder"]
      350 MOVE                             R31 R18
      351 NEWTABLE                         R32 0 0
      353 CALL                             R31 1 1
      354 MOVE                             R32 R15
      355 DUPTABLE                         R33 K89 [{"items", "Each"}]
      356 MOVE                             R34 R2
      357 LOADK                            R35 K77 ["blocks"]
      358 CALL                             R34 1 1
      359 SETTABLEKS                       R34 R33 K67 ["items"]
      361 MOVE                             R34 R10
      362 NEWTABLE                         R35 0 2
      364 LOADK                            R36 K79 ["idx"]
      365 LOADK                            R37 K80 ["block"]
      366 SETLIST                          R35 R36 2 [1]
      368 NEWTABLE                         R36 0 1
      370 MOVE                             R37 R17
      371 DUPTABLE                         R38 K86 [{"node", "linkCallback", "editorCtx", "blockIndex", "LayoutOrder", "componentModules", "componentStore", "updateComponentStore"}]
      372 MOVE                             R39 R2
      373 LOADK                            R40 K80 ["block"]
      374 CALL                             R39 1 1
      375 SETTABLEKS                       R39 R38 K81 ["node"]
      377 MOVE                             R39 R2
      378 LOADK                            R40 K27 ["linkCallback"]
      379 CALL                             R39 1 1
      380 SETTABLEKS                       R39 R38 K27 ["linkCallback"]
      382 MOVE                             R39 R2
      383 LOADK                            R40 K82 ["editorCtx"]
      384 CALL                             R39 1 1
      385 SETTABLEKS                       R39 R38 K82 ["editorCtx"]
      387 MOVE                             R39 R2
      388 LOADK                            R40 K79 ["idx"]
      389 CALL                             R39 1 1
      390 SETTABLEKS                       R39 R38 K83 ["blockIndex"]
      392 MOVE                             R39 R2
      393 LOADK                            R40 K79 ["idx"]
      394 CALL                             R39 1 1
      395 SETTABLEKS                       R39 R38 K66 ["LayoutOrder"]
      397 MOVE                             R39 R2
      398 LOADK                            R40 K29 ["componentModules"]
      399 CALL                             R39 1 1
      400 SETTABLEKS                       R39 R38 K29 ["componentModules"]
      402 MOVE                             R39 R2
      403 LOADK                            R40 K84 ["componentStore"]
      404 CALL                             R39 1 1
      405 SETTABLEKS                       R39 R38 K84 ["componentStore"]
      407 MOVE                             R39 R2
      408 LOADK                            R40 K85 ["updateComponentStore"]
      409 CALL                             R39 1 1
      410 SETTABLEKS                       R39 R38 K85 ["updateComponentStore"]
      412 CALL                             R37 1 -1
      413 SETLIST                          R36 R37 -1 [1]
      415 CALL                             R34 2 1
      416 SETTABLEKS                       R34 R33 K75 ["Each"]
      418 CALL                             R32 1 -1
      419 SETLIST                          R30 R31 -1 [1]
      421 CALL                             R29 1 -1
      422 SETLIST                          R28 R29 -1 [1]
      424 CALL                             R27 1 1
      425 SETTABLEKS                       R27 R26 K51 ["Else"]
      427 CALL                             R25 1 1
      428 MOVE                             R26 R13
      429 DUPTABLE                         R27 K97 [{"ref", "AnchorPoint", "Position", "Size", "BackgroundTransparency", "TextTransparency", "Text", "ClearTextOnFocus", "MultiLine", "ZIndex"}]
      430 LOADK                            R28 K98 ["hiddenInput"]
      431 SETTABLEKS                       R28 R27 K55 ["ref"]
      433 GETIMPORT                        R28 K100 [Vector2.new]
      435 LOADN                            R29 1
      436 LOADN                            R30 1
      437 CALL                             R28 2 1
      438 SETTABLEKS                       R28 R27 K90 ["AnchorPoint"]
      440 GETIMPORT                        R28 K45 [UDim2.new]
      442 LOADN                            R29 1
      443 LOADN                            R30 254
      444 LOADN                            R31 1
      445 LOADN                            R32 254
      446 CALL                             R28 4 1
      447 SETTABLEKS                       R28 R27 K91 ["Position"]
      449 MOVE                             R28 R2
      450 LOADK                            R29 K101 ["hiddenInputSize"]
      451 CALL                             R28 1 1
      452 SETTABLEKS                       R28 R27 K46 ["Size"]
      454 MOVE                             R28 R2
      455 LOADK                            R29 K102 ["hiddenInputBgTransparency"]
      456 CALL                             R28 1 1
      457 SETTABLEKS                       R28 R27 K47 ["BackgroundTransparency"]
      459 MOVE                             R28 R2
      460 LOADK                            R29 K103 ["hiddenInputTextTransparency"]
      461 CALL                             R28 1 1
      462 SETTABLEKS                       R28 R27 K92 ["TextTransparency"]
      464 MOVE                             R28 R2
      465 LOADK                            R29 K104 ["sentinelText"]
      466 CALL                             R28 1 1
      467 SETTABLEKS                       R28 R27 K93 ["Text"]
      469 LOADB                            R28 0
      470 SETTABLEKS                       R28 R27 K94 ["ClearTextOnFocus"]
      472 LOADB                            R28 1
      473 SETTABLEKS                       R28 R27 K95 ["MultiLine"]
      475 LOADN                            R28 100
      476 SETTABLEKS                       R28 R27 K96 ["ZIndex"]
      478 CALL                             R26 1 -1
      479 SETLIST                          R24 R25 -1 [1]
      481 CALL                             R23 1 -1
      482 SETLIST                          R22 R23 -1 [1]
      484 DUPCLOSURE                       R23 K105 [PROTO_30]
      485 CAPTURE                          VAL R3
      486 CAPTURE                          VAL R5
      487 CAPTURE                          VAL R4
      488 CAPTURE                          VAL R9
      489 CAPTURE                          VAL R7
      490 CALL                             R19 4 1
      491 RETURN                           R19 1
