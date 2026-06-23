PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKS                    R2 K0 ["Light"] ; [+3]
        5 GETUPVAL                         R1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 2
        8 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKS                    R2 K0 ["Light"] ; [+3]
        5 GETUPVAL                         R1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 2
        8 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKS                    R2 K0 ["Light"] ; [+3]
        5 GETUPVAL                         R1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 2
        8 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKS                    R2 K0 ["Light"] ; [+3]
        5 GETUPVAL                         R1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 2
        8 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKS                    R2 K0 ["Light"] ; [+3]
        5 GETUPVAL                         R1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 2
        8 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKS                    R2 K0 ["Light"] ; [+3]
        5 GETUPVAL                         R1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 2
        8 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetTextBoundsAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_7:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["GetTextBoundsParams"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["0"]
        5 SETTABLEKS                       R1 R0 K5 ["Text"]
        7 GETUPVAL                         R1 0
        8 SETTABLEKS                       R1 R0 K6 ["Font"]
       10 LOADN                            R1 16
       11 SETTABLEKS                       R1 R0 K7 ["Size"]
       13 LOADN                            R1 232
       14 SETTABLEKS                       R1 R0 K8 ["Width"]
       16 GETIMPORT                        R1 K10 [pcall]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R0
       21 CALL                             R1 1 2
       22 JUMPIFNOT                        R1 ; [+3]
       23 GETTABLEKS                       R3 R2 K11 ["X"]
       25 RETURN                           R3 1
       26 LOADK                            R3 K12 [9.6]
       27 RETURN                           R3 1

PROTO_8:
        0 LOADN                            R2 0
        1 LOADN                            R5 1
        2 SUBK                             R7 R1 K0 [1]
        3 LENGTH                           R8 R0
        4 FASTCALL2                        MATH_MIN R7 R8 ; [+3]
        6 GETIMPORT                        R6 K3 [math.min]
        8 CALL                             R6 2 1
        9 MOVE                             R3 R6
       10 LOADN                            R4 1
       11 FORNPREP                         R3
       12 MOVE                             R8 R5
       13 MOVE                             R9 R5
       14 NAMECALL                         R6 R0 K4 ["sub"]
       16 CALL                             R6 3 1
       17 JUMPIFNOTEQKS                    R6 K5 ["\t"] ; [+5]
       19 MODK                             R7 R2 K6 [4]
       20 SUBRK                            R6 R6 K7 [NULL]
       21 ADD                              R2 R2 R6
       22 JUMP                             ; [+1]
       23 ADDK                             R2 R2 K0 [1]
       24 FORNLOOP                         R3
       25 RETURN                           R2 1

PROTO_9:
        0 LOADN                            R2 0
        1 LOADN                            R5 1
        2 LENGTH                           R3 R0
        3 LOADN                            R4 1
        4 FORNPREP                         R3
        5 MOVE                             R8 R5
        6 MOVE                             R9 R5
        7 NAMECALL                         R6 R0 K0 ["sub"]
        9 CALL                             R6 3 1
       10 JUMPIFNOTEQKS                    R6 K1 ["\t"] ; [+5]
       12 MODK                             R7 R2 K2 [4]
       13 SUBRK                            R6 R2 K7 [NULL]
       14 ADD                              R2 R2 R6
       15 JUMP                             ; [+1]
       16 ADDK                             R2 R2 K3 [1]
       17 JUMPIFNOTLE                      R1 R2 ; [+3]
       19 ADDK                             R6 R5 K3 [1]
       20 RETURN                           R6 1
       21 FORNLOOP                         R3
       22 LENGTH                           R4 R0
       23 ADDK                             R3 R4 K3 [1]
       24 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LENGTH                           R4 R0
        3 ADDK                             R3 R4 K0 [1]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["VLIST_DISABLE_RICHTEXT"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADB                            R1 0
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["language"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["isSupported"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["containsNonMonospace"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["measureLineWidth"]
        9 MOVE                             R2 R0
       10 GETUPVAL                         R3 1
       11 LOADN                            R4 16
       12 CALL                             R1 3 -1
       13 RETURN                           R1 -1
       14 GETUPVAL                         R2 2
       15 MOVE                             R3 R0
       16 LENGTH                           R5 R0
       17 ADDK                             R4 R5 K2 [1]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R3 3
       20 MUL                              R1 R2 R3
       21 RETURN                           R1 1

PROTO_13:
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 MOVE                             R8 R1
        6 GETUPVAL                         R9 0
        7 MOVE                             R10 R6
        8 CALL                             R9 1 -1
        9 FASTCALL                         MATH_MAX ; [+2]
       10 GETIMPORT                        R7 K2 [math.max]
       12 CALL                             R7 -1 1
       13 MOVE                             R1 R7
       14 FORGLOOP                         R2 2 ; [-10]
       16 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["language"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["isSupported"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 1
       10 JUMPIFNOT                        R2 ; [+10]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["highlightLine"]
       14 MOVE                             R3 R0
       15 MOVE                             R4 R1
       16 GETUPVAL                         R5 0
       17 GETUPVAL                         R6 3
       18 CALL                             R5 1 -1
       19 CALL                             R2 -1 -1
       20 RETURN                           R2 -1
       21 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["language"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["isSupported"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 1
       10 JUMPIFNOT                        R2 ; [+14]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["highlightLines"]
       14 GETIMPORT                        R3 K5 [table.concat]
       16 MOVE                             R4 R0
       17 LOADK                            R5 K6 ["\n"]
       18 CALL                             R3 2 1
       19 MOVE                             R4 R1
       20 GETUPVAL                         R5 0
       21 GETUPVAL                         R6 3
       22 CALL                             R5 1 -1
       23 CALL                             R2 -1 -1
       24 RETURN                           R2 -1
       25 GETIMPORT                        R2 K8 [table.create]
       27 LENGTH                           R3 R0
       28 CALL                             R2 1 1
       29 MOVE                             R3 R0
       30 LOADNIL                          R4
       31 LOADNIL                          R5
       32 FORGPREP                         R3
       33 SETTABLE                         R7 R2 R6
       34 FORGLOOP                         R3 2 ; [-2]
       36 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 LOADN                            R2 1
        4 MOVE                             R3 R1
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 LENGTH                           R9 R7
        9 ADD                              R8 R2 R9
       10 JUMPIFLE                         R0 R8 ; [+4]
       12 LENGTH                           R9 R1
       13 JUMPIFNOTEQ                      R6 R9 ; [+18]
       15 MOVE                             R9 R6
       16 LOADN                            R11 1
       17 SUB                              R14 R0 R2
       18 ADDK                             R13 R14 K1 [1]
       19 LENGTH                           R15 R7
       20 ADDK                             R14 R15 K1 [1]
       21 FASTCALL2                        MATH_MIN R13 R14 ; [+3]
       23 GETIMPORT                        R12 K4 [math.min]
       25 CALL                             R12 2 1
       26 FASTCALL2                        MATH_MAX R11 R12 ; [+3]
       28 GETIMPORT                        R10 K6 [math.max]
       30 CALL                             R10 2 1
       31 RETURN                           R9 2
       32 ADDK                             R2 R8 K1 [1]
       33 FORGLOOP                         R3 2 ; [-26]
       35 LOADN                            R3 1
       36 LOADN                            R4 1
       37 RETURN                           R3 2

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 LOADN                            R3 1
        4 LOADN                            R6 1
        5 SUBK                             R8 R0 K1 [1]
        6 LENGTH                           R9 R2
        7 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
        9 GETIMPORT                        R7 K4 [math.min]
       11 CALL                             R7 2 1
       12 MOVE                             R4 R7
       13 LOADN                            R5 1
       14 FORNPREP                         R4
       15 GETTABLE                         R9 R2 R6
       16 LENGTH                           R8 R9
       17 ADDK                             R7 R8 K1 [1]
       18 ADD                              R3 R3 R7
       19 FORNLOOP                         R4
       20 ADD                              R5 R3 R1
       21 SUBK                             R4 R5 K1 [1]
       22 RETURN                           R4 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 LENGTH                           R1 R0
        4 JUMPIFNOTEQKN                    R1 K1 [0] ; [+3]
        6 LOADN                            R1 0
        7 RETURN                           R1 1
        8 LOADN                            R1 0
        9 MOVE                             R2 R0
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 LENGTH                           R7 R6
       14 ADD                              R1 R1 R7
       15 FORGLOOP                         R2 2 ; [-3]
       17 LENGTH                           R4 R0
       18 ADD                              R3 R1 R4
       19 SUBK                             R2 R3 K2 [1]
       20 RETURN                           R2 1

PROTO_19:
        0 DUPTABLE                         R0 K3 [{"text", "cursorOffset", "anchorOffset"}]
        1 GETIMPORT                        R1 K6 [table.concat]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K7 ["current"]
        6 LOADK                            R3 K8 ["\n"]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K0 ["text"]
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R2 2
       12 CALL                             R1 1 1
       13 SETTABLEKS                       R1 R0 K1 ["cursorOffset"]
       15 GETUPVAL                         R1 1
       16 GETUPVAL                         R2 3
       17 CALL                             R1 1 1
       18 SETTABLEKS                       R1 R0 K2 ["anchorOffset"]
       20 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["canUndo"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 1
        8 NAMECALL                         R1 R1 K1 ["canRedo"]
       10 CALL                             R1 1 -1
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_21:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 CALL                             R2 0 1
        5 NAMECALL                         R0 R0 K0 ["push"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 3
        9 GETUPVAL                         R1 1
       10 NAMECALL                         R1 R1 K1 ["canUndo"]
       12 CALL                             R1 1 -1
       13 CALL                             R0 -1 0
       14 GETUPVAL                         R0 4
       15 GETUPVAL                         R1 1
       16 NAMECALL                         R1 R1 K2 ["canRedo"]
       18 CALL                             R1 1 -1
       19 CALL                             R0 -1 0
       20 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETIMPORT                        R0 K2 [task.cancel]
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 GETIMPORT                        R0 K4 [task.delay]
        8 LOADK                            R1 K5 [0.5]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CALL                             R0 2 1
       16 SETUPVAL                         R0 0
       17 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+24]
        2 GETIMPORT                        R0 K2 [task.cancel]
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 GETUPVAL                         R2 2
       10 CALL                             R2 0 1
       11 NAMECALL                         R0 R0 K3 ["push"]
       13 CALL                             R0 2 0
       14 GETUPVAL                         R0 3
       15 GETUPVAL                         R1 1
       16 NAMECALL                         R1 R1 K4 ["canUndo"]
       18 CALL                             R1 1 -1
       19 CALL                             R0 -1 0
       20 GETUPVAL                         R0 4
       21 GETUPVAL                         R1 1
       22 NAMECALL                         R1 R1 K5 ["canRedo"]
       24 CALL                             R1 1 -1
       25 CALL                             R0 -1 0
       26 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [string.split]
        3 GETTABLEKS                       R3 R0 K3 ["text"]
        5 LOADK                            R4 K4 ["\n"]
        6 CALL                             R2 2 1
        7 SETTABLEKS                       R2 R1 K5 ["current"]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R2 R0 K3 ["text"]
       12 SETTABLEKS                       R2 R1 K5 ["current"]
       14 GETUPVAL                         R1 2
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K6 ["lines"]
       18 CALL                             R1 1 1
       19 GETUPVAL                         R3 4
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K5 ["current"]
       23 CALL                             R3 1 -1
       24 NAMECALL                         R1 R1 K7 ["set"]
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R1 5
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K5 ["current"]
       31 LENGTH                           R2 R3
       32 CALL                             R1 1 0
       33 GETUPVAL                         R1 6
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K5 ["current"]
       37 LOADN                            R4 0
       38 MOVE                             R5 R3
       39 LOADNIL                          R6
       40 LOADNIL                          R7
       41 FORGPREP                         R5
       42 MOVE                             R11 R4
       43 GETUPVAL                         R12 7
       44 MOVE                             R13 R9
       45 CALL                             R12 1 -1
       46 FASTCALL                         MATH_MAX ; [+2]
       47 GETIMPORT                        R10 K10 [math.max]
       49 CALL                             R10 -1 1
       50 MOVE                             R4 R10
       51 FORGLOOP                         R5 2 ; [-10]
       53 MOVE                             R2 R4
       54 CALL                             R1 1 0
       55 GETUPVAL                         R1 8
       56 GETTABLEKS                       R2 R0 K11 ["cursorOffset"]
       58 CALL                             R1 1 0
       59 GETUPVAL                         R1 9
       60 GETTABLEKS                       R2 R0 K12 ["anchorOffset"]
       62 CALL                             R1 1 0
       63 GETUPVAL                         R1 10
       64 GETUPVAL                         R2 11
       65 GETTABLEKS                       R2 R2 K13 ["onTextChanged"]
       67 CALL                             R1 1 1
       68 JUMPIFNOT                        R1 ; [+4]
       69 MOVE                             R2 R1
       70 GETTABLEKS                       R3 R0 K3 ["text"]
       72 CALL                             R2 1 0
       73 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 2
        5 CALL                             R1 1 1
        6 LOADB                            R2 0
        7 JUMPIFEQKNIL                     R0 ; [+8]
        9 LOADB                            R2 0
       10 JUMPIFEQKNIL                     R1 ; [+5]
       12 JUMPIFNOTEQ                      R0 R1 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 RETURN                           R2 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 2
        5 CALL                             R1 1 1
        6 JUMPIFEQKNIL                     R0 ; [+5]
        8 JUMPIFEQKNIL                     R1 ; [+3]
       10 JUMPIFNOTEQ                      R0 R1 ; [+3]
       12 LOADNIL                          R2
       13 RETURN                           R2 1
       14 FASTCALL2                        MATH_MIN R0 R1 ; [+5]
       16 MOVE                             R3 R0
       17 MOVE                             R4 R1
       18 GETIMPORT                        R2 K2 [math.min]
       20 CALL                             R2 2 1
       21 FASTCALL2                        MATH_MAX R0 R1 ; [+5]
       23 MOVE                             R4 R0
       24 MOVE                             R5 R1
       25 GETIMPORT                        R3 K4 [math.max]
       27 CALL                             R3 2 1
       28 GETIMPORT                        R4 K7 [table.concat]
       30 GETUPVAL                         R5 3
       31 GETTABLEKS                       R5 R5 K8 ["current"]
       33 LOADK                            R6 K9 ["\n"]
       34 CALL                             R4 2 1
       35 MOVE                             R6 R2
       36 SUBK                             R7 R3 K10 [1]
       37 NAMECALL                         R4 R4 K11 ["sub"]
       39 CALL                             R4 3 -1
       40 RETURN                           R4 -1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["text"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 ORK                              R1 R2 K0 [""]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["current"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 1
       13 SETTABLEKS                       R1 R2 K2 ["current"]
       15 GETUPVAL                         R2 2
       16 GETIMPORT                        R3 K5 [string.split]
       18 MOVE                             R4 R1
       19 LOADK                            R5 K6 ["\n"]
       20 CALL                             R3 2 1
       21 SETTABLEKS                       R3 R2 K2 ["current"]
       23 GETUPVAL                         R2 3
       24 GETUPVAL                         R3 4
       25 GETTABLEKS                       R3 R3 K7 ["lines"]
       27 CALL                             R2 1 1
       28 GETUPVAL                         R4 5
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K2 ["current"]
       32 CALL                             R4 1 -1
       33 NAMECALL                         R2 R2 K8 ["set"]
       35 CALL                             R2 -1 0
       36 GETUPVAL                         R2 6
       37 GETUPVAL                         R4 2
       38 GETTABLEKS                       R4 R4 K2 ["current"]
       40 LENGTH                           R3 R4
       41 CALL                             R2 1 0
       42 GETUPVAL                         R2 7
       43 GETUPVAL                         R4 2
       44 GETTABLEKS                       R4 R4 K2 ["current"]
       46 LOADN                            R5 0
       47 MOVE                             R6 R4
       48 LOADNIL                          R7
       49 LOADNIL                          R8
       50 FORGPREP                         R6
       51 MOVE                             R12 R5
       52 GETUPVAL                         R13 8
       53 MOVE                             R14 R10
       54 CALL                             R13 1 -1
       55 FASTCALL                         MATH_MAX ; [+2]
       56 GETIMPORT                        R11 K11 [math.max]
       58 CALL                             R11 -1 1
       59 MOVE                             R5 R11
       60 FORGLOOP                         R6 2 ; [-10]
       62 MOVE                             R3 R5
       63 CALL                             R2 1 0
       64 GETUPVAL                         R2 9
       65 GETUPVAL                         R4 10
       66 CALL                             R4 0 1
       67 NAMECALL                         R2 R2 K12 ["reset"]
       69 CALL                             R2 2 0
       70 GETUPVAL                         R2 11
       71 GETUPVAL                         R3 9
       72 NAMECALL                         R3 R3 K13 ["canUndo"]
       74 CALL                             R3 1 -1
       75 CALL                             R2 -1 0
       76 GETUPVAL                         R2 12
       77 GETUPVAL                         R3 9
       78 NAMECALL                         R3 R3 K14 ["canRedo"]
       80 CALL                             R3 1 -1
       81 CALL                             R2 -1 0
       82 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["lines"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R3 3
        9 GETUPVAL                         R4 4
       10 GETTABLEKS                       R4 R4 K1 ["current"]
       12 CALL                             R3 1 -1
       13 NAMECALL                         R1 R1 K2 ["set"]
       15 CALL                             R1 -1 0
       16 RETURN                           R0 0

PROTO_29:
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

PROTO_30:
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
       20 JUMPIF                           R1 ; [+6]
       21 GETUPVAL                         R1 1
       22 LOADNIL                          R2
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 2
       25 LOADNIL                          R2
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETIMPORT                        R0 K2 [task.wait]
        4 LOADK                            R1 K3 [0.53]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 0
        7 JUMPIFNOT                        R0 ; [+7]
        8 GETUPVAL                         R1 1
        9 NOT                              R0 R1
       10 SETUPVAL                         R0 1
       11 GETUPVAL                         R0 2
       12 GETUPVAL                         R1 1
       13 CALL                             R0 1 0
       14 JUMPBACK                         ; [-15]
       15 RETURN                           R0 0

PROTO_32:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 JUMPIFEQ                         R2 R1 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R3 2
       13 LOADB                            R4 1
       14 CALL                             R3 1 0
       15 LOADB                            R3 1
       16 LOADB                            R4 1
       17 GETIMPORT                        R5 K2 [task.spawn]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          REF R4
       21 CAPTURE                          REF R3
       22 CAPTURE                          UPVAL U2
       23 CALL                             R5 1 0
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          REF R4
       26 CLOSEUPVALS                      R3
       27 RETURN                           R5 1

PROTO_34:
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
       20 JUMPIF                           R1 ; [+2]
       21 LOADB                            R1 0
       22 RETURN                           R1 1
       23 GETUPVAL                         R1 1
       24 MOVE                             R2 R0
       25 CALL                             R1 1 1
       26 JUMPIFNOTEQKNIL                  R1 ; [+3]
       28 LOADB                            R2 0
       29 RETURN                           R2 1
       30 GETUPVAL                         R2 2
       31 MOVE                             R3 R0
       32 CALL                             R2 1 1
       33 JUMPIFEQ                         R2 R1 ; [+3]
       35 LOADB                            R3 0
       36 RETURN                           R3 1
       37 GETUPVAL                         R3 3
       38 MOVE                             R4 R0
       39 CALL                             R3 1 -1
       40 RETURN                           R3 -1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+7]
        5 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        7 LOADN                            R3 0
        8 LOADN                            R4 0
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1
       11 GETUPVAL                         R2 1
       12 MOVE                             R3 R1
       13 CALL                             R2 1 2
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K4 ["current"]
       17 GETTABLE                         R5 R6 R2
       18 ORK                              R4 R5 K3 [""]
       19 LOADNIL                          R5
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R6 R6 K5 ["containsNonMonospace"]
       23 MOVE                             R7 R4
       24 CALL                             R6 1 1
       25 JUMPIFNOT                        R6 ; [+10]
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R6 R6 K6 ["measureSubstring"]
       29 MOVE                             R7 R4
       30 SUBK                             R8 R3 K7 [1]
       31 GETUPVAL                         R9 4
       32 LOADN                            R10 16
       33 CALL                             R6 4 1
       34 MOVE                             R5 R6
       35 JUMP                             ; [+6]
       36 GETUPVAL                         R6 5
       37 MOVE                             R7 R4
       38 MOVE                             R8 R3
       39 CALL                             R6 2 1
       40 GETUPVAL                         R7 6
       41 MUL                              R5 R6 R7
       42 GETIMPORT                        R6 K2 [UDim2.fromOffset]
       44 MOVE                             R7 R5
       45 SUBK                             R9 R2 K7 [1]
       46 GETUPVAL                         R10 7
       47 MUL                              R8 R9 R10
       48 CALL                             R6 2 -1
       49 RETURN                           R6 -1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+7]
        5 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        7 LOADN                            R3 2
        8 LOADN                            R4 0
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1
       11 GETIMPORT                        R2 K2 [UDim2.fromOffset]
       13 LOADN                            R3 2
       14 GETUPVAL                         R4 1
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 JUMPIFEQKNIL                     R1 ; [+5]
        8 JUMPIFEQKNIL                     R2 ; [+3]
       10 JUMPIFNOTEQ                      R1 R2 ; [+4]
       12 NEWTABLE                         R3 0 0
       14 RETURN                           R3 1
       15 FASTCALL2                        MATH_MIN R1 R2 ; [+5]
       17 MOVE                             R4 R1
       18 MOVE                             R5 R2
       19 GETIMPORT                        R3 K2 [math.min]
       21 CALL                             R3 2 1
       22 FASTCALL2                        MATH_MAX R1 R2 ; [+5]
       24 MOVE                             R5 R1
       25 MOVE                             R6 R2
       26 GETIMPORT                        R4 K4 [math.max]
       28 CALL                             R4 2 1
       29 GETUPVAL                         R5 2
       30 MOVE                             R6 R3
       31 CALL                             R5 1 2
       32 GETUPVAL                         R7 2
       33 MOVE                             R8 R4
       34 CALL                             R7 1 2
       35 NEWTABLE                         R9 0 0
       37 MOVE                             R12 R5
       38 MOVE                             R10 R7
       39 LOADN                            R11 1
       40 FORNPREP                         R10
       41 GETUPVAL                         R14 3
       42 GETTABLEKS                       R14 R14 K5 ["current"]
       44 GETTABLE                         R13 R14 R12
       45 JUMPIFNOTEQ                      R12 R5 ; [+3]
       47 MOVE                             R14 R6
       48 JUMP                             ; [+1]
       49 LOADN                            R14 1
       50 JUMPIFNOTEQ                      R12 R7 ; [+3]
       52 MOVE                             R15 R8
       53 JUMP                             ; [+2]
       54 LENGTH                           R16 R13
       55 ADDK                             R15 R16 K6 [1]
       56 LOADNIL                          R16
       57 LOADNIL                          R17
       58 GETUPVAL                         R18 4
       59 GETTABLEKS                       R18 R18 K7 ["containsNonMonospace"]
       61 MOVE                             R19 R13
       62 CALL                             R18 1 1
       63 JUMPIFNOT                        R18 ; [+19]
       64 GETUPVAL                         R18 4
       65 GETTABLEKS                       R18 R18 K8 ["measureSubstring"]
       67 MOVE                             R19 R13
       68 SUBK                             R20 R14 K6 [1]
       69 GETUPVAL                         R21 5
       70 LOADN                            R22 16
       71 CALL                             R18 4 1
       72 MOVE                             R16 R18
       73 GETUPVAL                         R18 4
       74 GETTABLEKS                       R18 R18 K8 ["measureSubstring"]
       76 MOVE                             R19 R13
       77 SUBK                             R20 R15 K6 [1]
       78 GETUPVAL                         R21 5
       79 LOADN                            R22 16
       80 CALL                             R18 4 1
       81 MOVE                             R17 R18
       82 JUMP                             ; [+12]
       83 GETUPVAL                         R18 6
       84 MOVE                             R19 R13
       85 MOVE                             R20 R14
       86 CALL                             R18 2 1
       87 GETUPVAL                         R19 6
       88 MOVE                             R20 R13
       89 MOVE                             R21 R15
       90 CALL                             R19 2 1
       91 GETUPVAL                         R20 7
       92 MUL                              R16 R18 R20
       93 GETUPVAL                         R20 7
       94 MUL                              R17 R19 R20
       95 JUMPIFNOTLT                      R16 R17 ; [+23]
       97 DUPTABLE                         R20 K14 [{"x", "y", "width", "height", "index"}]
       98 SETTABLEKS                       R16 R20 K9 ["x"]
      100 SUBK                             R22 R12 K6 [1]
      101 GETUPVAL                         R23 8
      102 MUL                              R21 R22 R23
      103 SETTABLEKS                       R21 R20 K10 ["y"]
      105 SUB                              R21 R17 R16
      106 SETTABLEKS                       R21 R20 K11 ["width"]
      108 GETUPVAL                         R21 8
      109 SETTABLEKS                       R21 R20 K12 ["height"]
      111 SETTABLEKS                       R12 R20 K13 ["index"]
      113 FASTCALL2                        TABLE_INSERT R9 R20 ; [+4]
      115 MOVE                             R19 R9
      116 GETIMPORT                        R18 K17 [table.insert]
      118 CALL                             R18 2 0
      119 FORNLOOP                         R10
      120 RETURN                           R9 1

PROTO_38:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Destroy"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETIMPORT                        R0 K3 [table.clear]
       11 GETUPVAL                         R1 0
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R2 1 1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R4 3
        9 LENGTH                           R3 R4
       10 LENGTH                           R4 R1
       11 JUMPIFNOTLT                      R3 R4 ; [+27]
       13 GETIMPORT                        R3 K2 [Instance.new]
       15 LOADK                            R4 K3 ["Frame"]
       16 CALL                             R3 1 1
       17 LOADK                            R4 K4 ["SelectionRect"]
       18 SETTABLEKS                       R4 R3 K5 ["Name"]
       20 GETUPVAL                         R4 4
       21 SETTABLEKS                       R4 R3 K6 ["BackgroundColor3"]
       23 LOADK                            R4 K7 [0.6]
       24 SETTABLEKS                       R4 R3 K8 ["BackgroundTransparency"]
       26 LOADN                            R4 0
       27 SETTABLEKS                       R4 R3 K9 ["BorderSizePixel"]
       29 SETTABLEKS                       R2 R3 K10 ["Parent"]
       31 GETUPVAL                         R5 3
       32 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       34 MOVE                             R6 R3
       35 GETIMPORT                        R4 K13 [table.insert]
       37 CALL                             R4 2 0
       38 JUMPBACK                         ; [-31]
       39 MOVE                             R3 R1
       40 LOADNIL                          R4
       41 LOADNIL                          R5
       42 FORGPREP                         R3
       43 GETUPVAL                         R9 3
       44 GETTABLE                         R8 R9 R6
       45 GETIMPORT                        R9 K16 [UDim2.fromOffset]
       47 GETTABLEKS                       R10 R7 K17 ["x"]
       49 GETTABLEKS                       R11 R7 K18 ["y"]
       51 CALL                             R9 2 1
       52 SETTABLEKS                       R9 R8 K19 ["Position"]
       54 GETIMPORT                        R9 K16 [UDim2.fromOffset]
       56 GETTABLEKS                       R10 R7 K20 ["width"]
       58 GETTABLEKS                       R11 R7 K21 ["height"]
       60 CALL                             R9 2 1
       61 SETTABLEKS                       R9 R8 K22 ["Size"]
       63 LOADB                            R9 1
       64 SETTABLEKS                       R9 R8 K23 ["Visible"]
       66 FORGLOOP                         R3 2 ; [-24]
       68 LENGTH                           R6 R1
       69 ADDK                             R5 R6 K24 [1]
       70 GETUPVAL                         R6 3
       71 LENGTH                           R3 R6
       72 LOADN                            R4 1
       73 FORNPREP                         R3
       74 GETUPVAL                         R7 3
       75 GETTABLE                         R6 R7 R5
       76 LOADB                            R7 0
       77 SETTABLEKS                       R7 R6 K23 ["Visible"]
       79 FORNLOOP                         R3
       80 NEWCLOSURE                       R3 P0
       81 CAPTURE                          UPVAL U3
       82 RETURN                           R3 1

PROTO_40:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETIMPORT                        R3 K2 [UDim2.fromOffset]
        8 GETUPVAL                         R6 2
        9 ADD                              R5 R2 R6
       10 FASTCALL2K                       MATH_MAX R5 K3 ; [+4]
       12 LOADK                            R6 K3 [1]
       13 GETIMPORT                        R4 K6 [math.max]
       15 CALL                             R4 2 1
       16 GETUPVAL                         R7 3
       17 MUL                              R6 R1 R7
       18 GETUPVAL                         R7 3
       19 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       21 GETIMPORT                        R5 K6 [math.max]
       23 CALL                             R5 2 1
       24 CALL                             R3 2 -1
       25 RETURN                           R3 -1

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 GETTABLEKS                       R3 R0 K0 ["Position"]
        8 GETTABLEKS                       R3 R3 K1 ["X"]
       10 GETTABLEKS                       R4 R1 K2 ["AbsolutePosition"]
       12 GETTABLEKS                       R4 R4 K1 ["X"]
       14 SUB                              R2 R3 R4
       15 GETTABLEKS                       R4 R0 K0 ["Position"]
       17 GETTABLEKS                       R4 R4 K3 ["Y"]
       19 GETTABLEKS                       R5 R1 K2 ["AbsolutePosition"]
       21 GETTABLEKS                       R5 R5 K3 ["Y"]
       23 SUB                              R3 R4 R5
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K4 ["current"]
       27 GETUPVAL                         R9 3
       28 DIV                              R8 R3 R9
       29 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       30 GETIMPORT                        R7 K8 [math.floor]
       32 CALL                             R7 1 1
       33 ADDK                             R6 R7 K5 [1]
       34 LOADN                            R7 1
       35 LENGTH                           R8 R4
       36 FASTCALL                         MATH_CLAMP ; [+2]
       37 GETIMPORT                        R5 K10 [math.clamp]
       39 CALL                             R5 3 1
       40 GETTABLE                         R6 R4 R5
       41 LOADNIL                          R7
       42 GETUPVAL                         R8 4
       43 GETTABLEKS                       R8 R8 K11 ["containsNonMonospace"]
       45 MOVE                             R9 R6
       46 CALL                             R8 1 1
       47 JUMPIFNOT                        R8 ; [+10]
       48 GETUPVAL                         R8 4
       49 GETTABLEKS                       R8 R8 K12 ["hitTestChar"]
       51 MOVE                             R9 R6
       52 MOVE                             R10 R2
       53 GETUPVAL                         R11 5
       54 LOADN                            R12 16
       55 CALL                             R8 4 1
       56 MOVE                             R7 R8
       57 JUMP                             ; [+18]
       58 LOADN                            R9 0
       59 GETUPVAL                         R13 6
       60 DIV                              R12 R2 R13
       61 ADDK                             R11 R12 K13 [0.5]
       62 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       63 GETIMPORT                        R10 K8 [math.floor]
       65 CALL                             R10 1 1
       66 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       68 GETIMPORT                        R8 K15 [math.max]
       70 CALL                             R8 2 1
       71 GETUPVAL                         R9 7
       72 MOVE                             R10 R6
       73 MOVE                             R11 R8
       74 CALL                             R9 2 1
       75 MOVE                             R7 R9
       76 LOADN                            R10 1
       77 LENGTH                           R12 R6
       78 ADDK                             R11 R12 K5 [1]
       79 FASTCALL3                        MATH_CLAMP R7 R10 R11
       81 MOVE                             R9 R7
       82 GETIMPORT                        R8 K10 [math.clamp]
       84 CALL                             R8 3 1
       85 MOVE                             R7 R8
       86 MOVE                             R8 R5
       87 MOVE                             R9 R7
       88 RETURN                           R8 2

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K4 ["editable"]
       11 CALL                             R1 1 1
       12 JUMPIF                           R1 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K5 ["onInteraction"]
       18 CALL                             R1 1 1
       19 JUMPIFNOT                        R1 ; [+2]
       20 MOVE                             R2 R1
       21 CALL                             R2 0 0
       22 LOADB                            R2 1
       23 SETUPVAL                         R2 2
       24 GETUPVAL                         R2 3
       25 MOVE                             R3 R0
       26 CALL                             R2 1 2
       27 JUMPIF                           R2 ; [+1]
       28 RETURN                           R0 0
       29 GETUPVAL                         R5 4
       30 GETTABLEKS                       R5 R5 K6 ["current"]
       32 LOADN                            R6 1
       33 LOADN                            R9 1
       34 SUBK                             R11 R2 K7 [1]
       35 LENGTH                           R12 R5
       36 FASTCALL2                        MATH_MIN R11 R12 ; [+3]
       38 GETIMPORT                        R10 K10 [math.min]
       40 CALL                             R10 2 1
       41 MOVE                             R7 R10
       42 LOADN                            R8 1
       43 FORNPREP                         R7
       44 GETTABLE                         R12 R5 R9
       45 LENGTH                           R11 R12
       46 ADDK                             R10 R11 K7 [1]
       47 ADD                              R6 R6 R10
       48 FORNLOOP                         R7
       49 ADD                              R7 R6 R3
       50 SUBK                             R4 R7 K7 [1]
       51 GETUPVAL                         R5 5
       52 MOVE                             R6 R4
       53 CALL                             R5 1 0
       54 GETUPVAL                         R5 6
       55 MOVE                             R6 R4
       56 CALL                             R5 1 0
       57 RETURN                           R0 0

PROTO_43:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R1 R2 ; [+37]
        6 GETUPVAL                         R1 0
        7 JUMPIFNOT                        R1 ; [+34]
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R2 2
       10 CALL                             R1 1 1
       11 JUMPIFNOTEQKNIL                  R1 ; [+2]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 3
       15 MOVE                             R2 R0
       16 CALL                             R1 1 2
       17 JUMPIFNOT                        R1 ; [+24]
       18 GETUPVAL                         R3 4
       19 GETUPVAL                         R5 5
       20 GETTABLEKS                       R5 R5 K4 ["current"]
       22 LOADN                            R6 1
       23 LOADN                            R9 1
       24 SUBK                             R11 R1 K5 [1]
       25 LENGTH                           R12 R5
       26 FASTCALL2                        MATH_MIN R11 R12 ; [+3]
       28 GETIMPORT                        R10 K8 [math.min]
       30 CALL                             R10 2 1
       31 MOVE                             R7 R10
       32 LOADN                            R8 1
       33 FORNPREP                         R7
       34 GETTABLE                         R12 R5 R9
       35 LENGTH                           R11 R12
       36 ADDK                             R10 R11 K5 [1]
       37 ADD                              R6 R6 R10
       38 FORNLOOP                         R7
       39 ADD                              R7 R6 R2
       40 SUBK                             R4 R7 K5 [1]
       41 CALL                             R3 1 0
       42 RETURN                           R0 0

PROTO_44:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R1 R2 ; [+3]
        6 LOADB                            R1 0
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_45:
        0 GETIMPORT                        R0 K2 [table.concat]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["current"]
        5 LOADK                            R2 K4 ["\n"]
        6 CALL                             R0 2 1
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R0 R1 K3 ["current"]
       10 GETUPVAL                         R1 2
       11 JUMPIFNOT                        R1 ; [+4]
       12 GETIMPORT                        R1 K7 [task.cancel]
       14 GETUPVAL                         R2 2
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K9 [task.delay]
       18 LOADK                            R2 K10 [0.5]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          UPVAL U6
       25 CALL                             R1 2 1
       26 SETUPVAL                         R1 2
       27 GETUPVAL                         R1 7
       28 GETUPVAL                         R2 8
       29 GETTABLEKS                       R2 R2 K11 ["onTextChanged"]
       31 CALL                             R1 1 1
       32 JUMPIFNOT                        R1 ; [+3]
       33 MOVE                             R2 R1
       34 MOVE                             R3 R0
       35 CALL                             R2 1 0
       36 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 CALL                             R3 1 1
        3 JUMPIFNOTLE                      R3 R2 ; [+5]
        5 GETUPVAL                         R4 2
        6 MOVE                             R5 R2
        7 CALL                             R4 1 0
        8 RETURN                           R0 0
        9 JUMPIFNOTLE                      R3 R1 ; [+25]
       11 JUMPIFNOTLT                      R2 R1 ; [+23]
       13 GETUPVAL                         R4 2
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R6 R6 K0 ["current"]
       17 LOADN                            R7 0
       18 MOVE                             R8 R6
       19 LOADNIL                          R9
       20 LOADNIL                          R10
       21 FORGPREP                         R8
       22 MOVE                             R14 R7
       23 GETUPVAL                         R15 4
       24 MOVE                             R16 R12
       25 CALL                             R15 1 -1
       26 FASTCALL                         MATH_MAX ; [+2]
       27 GETIMPORT                        R13 K3 [math.max]
       29 CALL                             R13 -1 1
       30 MOVE                             R7 R13
       31 FORGLOOP                         R8 2 ; [-10]
       33 MOVE                             R5 R7
       34 CALL                             R4 1 0
       35 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["lines"]
        4 CALL                             R1 1 1
        5 GETIMPORT                        R2 K3 [table.create]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K4 ["current"]
       10 LENGTH                           R3 R4
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K4 ["current"]
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 JUMPIFEQ                         R6 R0 ; [+10]
       20 ADDK                             R8 R0 K5 [1]
       21 JUMPIFNOTEQ                      R6 R8 ; [+32]
       23 GETUPVAL                         R9 2
       24 GETTABLEKS                       R9 R9 K4 ["current"]
       26 LENGTH                           R8 R9
       27 JUMPIFNOTLE                      R6 R8 ; [+26]
       29 GETUPVAL                         R9 0
       30 GETUPVAL                         R10 3
       31 GETTABLEKS                       R10 R10 K6 ["language"]
       33 CALL                             R9 1 1
       34 GETUPVAL                         R10 4
       35 GETTABLEKS                       R10 R10 K7 ["isSupported"]
       37 MOVE                             R11 R9
       38 CALL                             R10 1 1
       39 JUMPIFNOT                        R10 ; [+11]
       40 GETUPVAL                         R10 4
       41 GETTABLEKS                       R10 R10 K8 ["highlightLine"]
       43 MOVE                             R11 R7
       44 MOVE                             R12 R9
       45 GETUPVAL                         R13 0
       46 GETUPVAL                         R14 5
       47 CALL                             R13 1 -1
       48 CALL                             R10 -1 1
       49 MOVE                             R8 R10
       50 JUMP                             ; [+1]
       51 MOVE                             R8 R7
       52 SETTABLE                         R8 R2 R6
       53 JUMP                             ; [+37]
       54 JUMPIFNOTLT                      R0 R6 ; [+3]
       56 SUBK                             R8 R6 K5 [1]
       57 JUMP                             ; [+1]
       58 MOVE                             R8 R6
       59 LOADN                            R10 1
       60 JUMPIFNOTLE                      R10 R8 ; [+6]
       62 LENGTH                           R10 R1
       63 JUMPIFNOTLE                      R8 R10 ; [+3]
       65 GETTABLE                         R9 R1 R8
       66 JUMP                             ; [+23]
       67 GETUPVAL                         R10 0
       68 GETUPVAL                         R11 3
       69 GETTABLEKS                       R11 R11 K6 ["language"]
       71 CALL                             R10 1 1
       72 GETUPVAL                         R11 4
       73 GETTABLEKS                       R11 R11 K7 ["isSupported"]
       75 MOVE                             R12 R10
       76 CALL                             R11 1 1
       77 JUMPIFNOT                        R11 ; [+11]
       78 GETUPVAL                         R11 4
       79 GETTABLEKS                       R11 R11 K8 ["highlightLine"]
       81 MOVE                             R12 R7
       82 MOVE                             R13 R10
       83 GETUPVAL                         R14 0
       84 GETUPVAL                         R15 5
       85 CALL                             R14 1 -1
       86 CALL                             R11 -1 1
       87 MOVE                             R9 R11
       88 JUMP                             ; [+1]
       89 MOVE                             R9 R7
       90 SETTABLE                         R9 R2 R6
       91 FORGLOOP                         R3 2 ; [-74]
       93 GETUPVAL                         R3 6
       94 GETUPVAL                         R4 1
       95 GETTABLEKS                       R4 R4 K0 ["lines"]
       97 CALL                             R3 1 1
       98 MOVE                             R5 R2
       99 NAMECALL                         R3 R3 K9 ["set"]
      101 CALL                             R3 2 0
      102 GETUPVAL                         R3 7
      103 GETUPVAL                         R5 2
      104 GETTABLEKS                       R5 R5 K4 ["current"]
      106 LENGTH                           R4 R5
      107 CALL                             R3 1 0
      108 GETUPVAL                         R3 8
      109 GETUPVAL                         R5 2
      110 GETTABLEKS                       R5 R5 K4 ["current"]
      112 LOADN                            R6 0
      113 MOVE                             R7 R5
      114 LOADNIL                          R8
      115 LOADNIL                          R9
      116 FORGPREP                         R7
      117 MOVE                             R13 R6
      118 GETUPVAL                         R14 9
      119 MOVE                             R15 R11
      120 CALL                             R14 1 -1
      121 FASTCALL                         MATH_MAX ; [+2]
      122 GETIMPORT                        R12 K12 [math.max]
      124 CALL                             R12 -1 1
      125 MOVE                             R6 R12
      126 FORGLOOP                         R7 2 ; [-10]
      128 MOVE                             R4 R6
      129 CALL                             R3 1 0
      130 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["lines"]
        4 CALL                             R2 1 1
        5 GETIMPORT                        R3 K3 [table.create]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K4 ["current"]
       10 LENGTH                           R4 R5
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K4 ["current"]
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 JUMPIFNOTEQ                      R7 R0 ; [+26]
       20 GETUPVAL                         R10 0
       21 GETUPVAL                         R11 3
       22 GETTABLEKS                       R11 R11 K5 ["language"]
       24 CALL                             R10 1 1
       25 GETUPVAL                         R11 4
       26 GETTABLEKS                       R11 R11 K6 ["isSupported"]
       28 MOVE                             R12 R10
       29 CALL                             R11 1 1
       30 JUMPIFNOT                        R11 ; [+11]
       31 GETUPVAL                         R11 4
       32 GETTABLEKS                       R11 R11 K7 ["highlightLine"]
       34 MOVE                             R12 R8
       35 MOVE                             R13 R10
       36 GETUPVAL                         R14 0
       37 GETUPVAL                         R15 5
       38 CALL                             R14 1 -1
       39 CALL                             R11 -1 1
       40 MOVE                             R9 R11
       41 JUMP                             ; [+1]
       42 MOVE                             R9 R8
       43 SETTABLE                         R9 R3 R7
       44 JUMP                             ; [+37]
       45 JUMPIFNOTLT                      R0 R7 ; [+3]
       47 ADD                              R9 R7 R1
       48 JUMP                             ; [+1]
       49 MOVE                             R9 R7
       50 LOADN                            R11 1
       51 JUMPIFNOTLE                      R11 R9 ; [+6]
       53 LENGTH                           R11 R2
       54 JUMPIFNOTLE                      R9 R11 ; [+3]
       56 GETTABLE                         R10 R2 R9
       57 JUMP                             ; [+23]
       58 GETUPVAL                         R11 0
       59 GETUPVAL                         R12 3
       60 GETTABLEKS                       R12 R12 K5 ["language"]
       62 CALL                             R11 1 1
       63 GETUPVAL                         R12 4
       64 GETTABLEKS                       R12 R12 K6 ["isSupported"]
       66 MOVE                             R13 R11
       67 CALL                             R12 1 1
       68 JUMPIFNOT                        R12 ; [+11]
       69 GETUPVAL                         R12 4
       70 GETTABLEKS                       R12 R12 K7 ["highlightLine"]
       72 MOVE                             R13 R8
       73 MOVE                             R14 R11
       74 GETUPVAL                         R15 0
       75 GETUPVAL                         R16 5
       76 CALL                             R15 1 -1
       77 CALL                             R12 -1 1
       78 MOVE                             R10 R12
       79 JUMP                             ; [+1]
       80 MOVE                             R10 R8
       81 SETTABLE                         R10 R3 R7
       82 FORGLOOP                         R4 2 ; [-65]
       84 GETUPVAL                         R4 6
       85 GETUPVAL                         R5 1
       86 GETTABLEKS                       R5 R5 K0 ["lines"]
       88 CALL                             R4 1 1
       89 MOVE                             R6 R3
       90 NAMECALL                         R4 R4 K8 ["set"]
       92 CALL                             R4 2 0
       93 GETUPVAL                         R4 7
       94 GETUPVAL                         R6 2
       95 GETTABLEKS                       R6 R6 K4 ["current"]
       97 LENGTH                           R5 R6
       98 CALL                             R4 1 0
       99 GETUPVAL                         R4 8
      100 GETUPVAL                         R6 2
      101 GETTABLEKS                       R6 R6 K4 ["current"]
      103 LOADN                            R7 0
      104 MOVE                             R8 R6
      105 LOADNIL                          R9
      106 LOADNIL                          R10
      107 FORGPREP                         R8
      108 MOVE                             R14 R7
      109 GETUPVAL                         R15 9
      110 MOVE                             R16 R12
      111 CALL                             R15 1 -1
      112 FASTCALL                         MATH_MAX ; [+2]
      113 GETIMPORT                        R13 K11 [math.max]
      115 CALL                             R13 -1 1
      116 MOVE                             R7 R13
      117 FORGLOOP                         R8 2 ; [-10]
      119 MOVE                             R5 R7
      120 CALL                             R4 1 0
      121 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 2
        5 CALL                             R1 1 1
        6 JUMPIFEQKNIL                     R0 ; [+3]
        8 JUMPIFNOTEQKNIL                  R1 ; [+3]
       10 LOADN                            R2 1
       11 RETURN                           R2 1
       12 JUMPIFNOTEQ                      R0 R1 ; [+2]
       14 RETURN                           R0 1
       15 FASTCALL2                        MATH_MIN R0 R1 ; [+5]
       17 MOVE                             R3 R0
       18 MOVE                             R4 R1
       19 GETIMPORT                        R2 K2 [math.min]
       21 CALL                             R2 2 1
       22 FASTCALL2                        MATH_MAX R0 R1 ; [+5]
       24 MOVE                             R4 R0
       25 MOVE                             R5 R1
       26 GETIMPORT                        R3 K4 [math.max]
       28 CALL                             R3 2 1
       29 GETUPVAL                         R4 3
       30 MOVE                             R5 R2
       31 CALL                             R4 1 2
       32 GETUPVAL                         R6 3
       33 MOVE                             R7 R3
       34 CALL                             R6 1 2
       35 JUMPIFNOTEQ                      R4 R6 ; [+118]
       37 GETUPVAL                         R9 4
       38 GETTABLEKS                       R9 R9 K5 ["current"]
       40 GETTABLE                         R8 R9 R4
       41 GETUPVAL                         R10 5
       42 GETTABLEKS                       R10 R10 K6 ["containsNonMonospace"]
       44 MOVE                             R11 R8
       45 CALL                             R10 1 1
       46 JUMPIFNOT                        R10 ; [+8]
       47 GETUPVAL                         R9 5
       48 GETTABLEKS                       R9 R9 K7 ["measureLineWidth"]
       50 MOVE                             R10 R8
       51 GETUPVAL                         R11 6
       52 LOADN                            R12 16
       53 CALL                             R9 3 1
       54 JUMP                             ; [+7]
       55 GETUPVAL                         R10 7
       56 MOVE                             R11 R8
       57 LENGTH                           R13 R8
       58 ADDK                             R12 R13 K8 [1]
       59 CALL                             R10 2 1
       60 GETUPVAL                         R11 8
       61 MUL                              R9 R10 R11
       62 GETUPVAL                         R10 4
       63 GETTABLEKS                       R10 R10 K5 ["current"]
       65 LOADN                            R16 1
       66 SUBK                             R17 R5 K8 [1]
       67 NAMECALL                         R14 R8 K9 ["sub"]
       69 CALL                             R14 3 1
       70 MOVE                             R12 R14
       71 MOVE                             R15 R7
       72 NAMECALL                         R13 R8 K9 ["sub"]
       74 CALL                             R13 2 1
       75 CONCAT                           R11 R12 R13
       76 SETTABLE                         R11 R10 R4
       77 GETUPVAL                         R10 9
       78 GETUPVAL                         R12 10
       79 GETTABLEKS                       R12 R12 K10 ["lines"]
       81 GETTABLE                         R11 R12 R4
       82 CALL                             R10 1 1
       83 GETUPVAL                         R12 11
       84 GETUPVAL                         R14 4
       85 GETTABLEKS                       R14 R14 K5 ["current"]
       87 GETTABLE                         R13 R14 R4
       88 CALL                             R12 1 -1
       89 NAMECALL                         R10 R10 K11 ["set"]
       91 CALL                             R10 -1 0
       92 GETUPVAL                         R12 4
       93 GETTABLEKS                       R12 R12 K5 ["current"]
       95 GETTABLE                         R11 R12 R4
       96 GETUPVAL                         R12 5
       97 GETTABLEKS                       R12 R12 K6 ["containsNonMonospace"]
       99 MOVE                             R13 R11
      100 CALL                             R12 1 1
      101 JUMPIFNOT                        R12 ; [+9]
      102 GETUPVAL                         R12 5
      103 GETTABLEKS                       R12 R12 K7 ["measureLineWidth"]
      105 MOVE                             R13 R11
      106 GETUPVAL                         R14 6
      107 LOADN                            R15 16
      108 CALL                             R12 3 1
      109 MOVE                             R10 R12
      110 JUMP                             ; [+7]
      111 GETUPVAL                         R12 7
      112 MOVE                             R13 R11
      113 LENGTH                           R15 R11
      114 ADDK                             R14 R15 K8 [1]
      115 CALL                             R12 2 1
      116 GETUPVAL                         R13 8
      117 MUL                              R10 R12 R13
      118 GETUPVAL                         R11 0
      119 GETUPVAL                         R12 12
      120 CALL                             R11 1 1
      121 JUMPIFNOTLE                      R11 R10 ; [+5]
      123 GETUPVAL                         R12 13
      124 MOVE                             R13 R10
      125 CALL                             R12 1 0
      126 RETURN                           R2 1
      127 JUMPIFNOTLE                      R11 R9 ; [+66]
      129 JUMPIFNOTLT                      R10 R9 ; [+64]
      131 GETUPVAL                         R12 13
      132 GETUPVAL                         R14 4
      133 GETTABLEKS                       R14 R14 K5 ["current"]
      135 LOADN                            R15 0
      136 MOVE                             R16 R14
      137 LOADNIL                          R17
      138 LOADNIL                          R18
      139 FORGPREP                         R16
      140 MOVE                             R22 R15
      141 GETUPVAL                         R23 14
      142 MOVE                             R24 R20
      143 CALL                             R23 1 -1
      144 FASTCALL                         MATH_MAX ; [+2]
      145 GETIMPORT                        R21 K4 [math.max]
      147 CALL                             R21 -1 1
      148 MOVE                             R15 R21
      149 FORGLOOP                         R16 2 ; [-10]
      151 MOVE                             R13 R15
      152 CALL                             R12 1 0
      153 RETURN                           R2 1
      154 GETUPVAL                         R9 4
      155 GETTABLEKS                       R9 R9 K5 ["current"]
      157 GETTABLE                         R8 R9 R4
      158 GETUPVAL                         R10 4
      159 GETTABLEKS                       R10 R10 K5 ["current"]
      161 GETTABLE                         R9 R10 R6
      162 GETUPVAL                         R10 4
      163 GETTABLEKS                       R10 R10 K5 ["current"]
      165 LOADN                            R16 1
      166 SUBK                             R17 R5 K8 [1]
      167 NAMECALL                         R14 R8 K9 ["sub"]
      169 CALL                             R14 3 1
      170 MOVE                             R12 R14
      171 MOVE                             R15 R7
      172 NAMECALL                         R13 R9 K9 ["sub"]
      174 CALL                             R13 2 1
      175 CONCAT                           R11 R12 R13
      176 SETTABLE                         R11 R10 R4
      177 SUB                              R10 R6 R4
      178 LOADN                            R13 1
      179 MOVE                             R11 R10
      180 LOADN                            R12 1
      181 FORNPREP                         R11
      182 GETIMPORT                        R14 K14 [table.remove]
      184 GETUPVAL                         R15 4
      185 GETTABLEKS                       R15 R15 K5 ["current"]
      187 ADDK                             R16 R4 K8 [1]
      188 CALL                             R14 2 0
      189 FORNLOOP                         R11
      190 GETUPVAL                         R11 15
      191 MOVE                             R12 R4
      192 MOVE                             R13 R10
      193 CALL                             R11 2 0
      194 RETURN                           R2 1

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 GETUPVAL                         R4 2
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 0
       10 GETUPVAL                         R5 1
       11 CALL                             R4 1 1
       12 LOADB                            R2 0
       13 JUMPIFEQKNIL                     R3 ; [+8]
       15 LOADB                            R2 0
       16 JUMPIFEQKNIL                     R4 ; [+5]
       18 JUMPIFNOTEQ                      R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 JUMPIFNOT                        R2 ; [+3]
       23 GETUPVAL                         R2 3
       24 CALL                             R2 0 1
       25 MOVE                             R1 R2
       26 GETIMPORT                        R2 K2 [table.concat]
       28 GETUPVAL                         R3 4
       29 GETTABLEKS                       R3 R3 K3 ["current"]
       31 LOADK                            R4 K4 ["\n"]
       32 CALL                             R2 2 1
       33 LOADN                            R9 1
       34 SUBK                             R10 R1 K5 [1]
       35 NAMECALL                         R7 R2 K6 ["sub"]
       37 CALL                             R7 3 1
       38 MOVE                             R4 R7
       39 MOVE                             R5 R0
       40 MOVE                             R8 R1
       41 NAMECALL                         R6 R2 K6 ["sub"]
       43 CALL                             R6 2 1
       44 CONCAT                           R3 R4 R6
       45 GETUPVAL                         R4 4
       46 GETIMPORT                        R5 K9 [string.split]
       48 MOVE                             R6 R3
       49 LOADK                            R7 K4 ["\n"]
       50 CALL                             R5 2 1
       51 SETTABLEKS                       R5 R4 K3 ["current"]
       53 GETUPVAL                         R4 5
       54 GETUPVAL                         R5 6
       55 GETTABLEKS                       R5 R5 K10 ["lines"]
       57 CALL                             R4 1 1
       58 GETUPVAL                         R6 7
       59 GETUPVAL                         R7 4
       60 GETTABLEKS                       R7 R7 K3 ["current"]
       62 CALL                             R6 1 -1
       63 NAMECALL                         R4 R4 K11 ["set"]
       65 CALL                             R4 -1 0
       66 GETUPVAL                         R4 8
       67 GETUPVAL                         R6 4
       68 GETTABLEKS                       R6 R6 K3 ["current"]
       70 LENGTH                           R5 R6
       71 CALL                             R4 1 0
       72 GETUPVAL                         R4 9
       73 GETUPVAL                         R6 4
       74 GETTABLEKS                       R6 R6 K3 ["current"]
       76 LOADN                            R7 0
       77 MOVE                             R8 R6
       78 LOADNIL                          R9
       79 LOADNIL                          R10
       80 FORGPREP                         R8
       81 MOVE                             R14 R7
       82 GETUPVAL                         R15 10
       83 MOVE                             R16 R12
       84 CALL                             R15 1 -1
       85 FASTCALL                         MATH_MAX ; [+2]
       86 GETIMPORT                        R13 K14 [math.max]
       88 CALL                             R13 -1 1
       89 MOVE                             R7 R13
       90 FORGLOOP                         R8 2 ; [-10]
       92 MOVE                             R5 R7
       93 CALL                             R4 1 0
       94 LENGTH                           R5 R0
       95 ADD                              R4 R1 R5
       96 GETUPVAL                         R5 11
       97 MOVE                             R6 R4
       98 CALL                             R5 1 0
       99 GETUPVAL                         R5 12
      100 MOVE                             R6 R4
      101 CALL                             R5 1 0
      102 GETIMPORT                        R5 K2 [table.concat]
      104 GETUPVAL                         R6 4
      105 GETTABLEKS                       R6 R6 K3 ["current"]
      107 LOADK                            R7 K4 ["\n"]
      108 CALL                             R5 2 1
      109 GETUPVAL                         R6 13
      110 SETTABLEKS                       R5 R6 K3 ["current"]
      112 GETUPVAL                         R6 14
      113 JUMPIFNOT                        R6 ; [+4]
      114 GETIMPORT                        R6 K17 [task.cancel]
      116 GETUPVAL                         R7 14
      117 CALL                             R6 1 0
      118 GETIMPORT                        R6 K19 [task.delay]
      120 LOADK                            R7 K20 [0.5]
      121 NEWCLOSURE                       R8 P0
      122 CAPTURE                          UPVAL U14
      123 CAPTURE                          UPVAL U15
      124 CAPTURE                          UPVAL U16
      125 CAPTURE                          UPVAL U17
      126 CAPTURE                          UPVAL U18
      127 CALL                             R6 2 1
      128 SETUPVAL                         R6 14
      129 GETUPVAL                         R6 0
      130 GETUPVAL                         R7 19
      131 GETTABLEKS                       R7 R7 K21 ["onTextChanged"]
      133 CALL                             R6 1 1
      134 JUMPIFNOT                        R6 ; [+3]
      135 MOVE                             R7 R6
      136 MOVE                             R8 R5
      137 CALL                             R7 1 0
      138 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 GETUPVAL                         R4 2
        8 CALL                             R3 1 1
        9 OR                               R2 R3 R1
       10 JUMPIFEQ                         R2 R1 ; [+4]
       12 GETUPVAL                         R3 3
       13 CALL                             R3 0 1
       14 MOVE                             R1 R3
       15 GETUPVAL                         R3 4
       16 MOVE                             R4 R1
       17 CALL                             R3 1 2
       18 GETUPVAL                         R6 5
       19 GETTABLEKS                       R6 R6 K0 ["current"]
       21 GETTABLE                         R5 R6 R3
       22 GETUPVAL                         R7 6
       23 GETTABLEKS                       R7 R7 K1 ["containsNonMonospace"]
       25 MOVE                             R8 R5
       26 CALL                             R7 1 1
       27 JUMPIFNOT                        R7 ; [+8]
       28 GETUPVAL                         R6 6
       29 GETTABLEKS                       R6 R6 K2 ["measureLineWidth"]
       31 MOVE                             R7 R5
       32 GETUPVAL                         R8 7
       33 LOADN                            R9 16
       34 CALL                             R6 3 1
       35 JUMP                             ; [+7]
       36 GETUPVAL                         R7 8
       37 MOVE                             R8 R5
       38 LENGTH                           R10 R5
       39 ADDK                             R9 R10 K3 [1]
       40 CALL                             R7 2 1
       41 GETUPVAL                         R8 9
       42 MUL                              R6 R7 R8
       43 GETUPVAL                         R7 5
       44 GETTABLEKS                       R7 R7 K0 ["current"]
       46 LOADN                            R14 1
       47 SUBK                             R15 R4 K3 [1]
       48 NAMECALL                         R12 R5 K4 ["sub"]
       50 CALL                             R12 3 1
       51 MOVE                             R9 R12
       52 MOVE                             R10 R0
       53 MOVE                             R13 R4
       54 NAMECALL                         R11 R5 K4 ["sub"]
       56 CALL                             R11 2 1
       57 CONCAT                           R8 R9 R11
       58 SETTABLE                         R8 R7 R3
       59 GETUPVAL                         R7 10
       60 GETUPVAL                         R9 11
       61 GETTABLEKS                       R9 R9 K5 ["lines"]
       63 GETTABLE                         R8 R9 R3
       64 CALL                             R7 1 1
       65 GETUPVAL                         R9 12
       66 GETUPVAL                         R11 5
       67 GETTABLEKS                       R11 R11 K0 ["current"]
       69 GETTABLE                         R10 R11 R3
       70 CALL                             R9 1 -1
       71 NAMECALL                         R7 R7 K6 ["set"]
       73 CALL                             R7 -1 0
       74 GETUPVAL                         R9 5
       75 GETTABLEKS                       R9 R9 K0 ["current"]
       77 GETTABLE                         R8 R9 R3
       78 GETUPVAL                         R9 6
       79 GETTABLEKS                       R9 R9 K1 ["containsNonMonospace"]
       81 MOVE                             R10 R8
       82 CALL                             R9 1 1
       83 JUMPIFNOT                        R9 ; [+9]
       84 GETUPVAL                         R9 6
       85 GETTABLEKS                       R9 R9 K2 ["measureLineWidth"]
       87 MOVE                             R10 R8
       88 GETUPVAL                         R11 7
       89 LOADN                            R12 16
       90 CALL                             R9 3 1
       91 MOVE                             R7 R9
       92 JUMP                             ; [+7]
       93 GETUPVAL                         R9 8
       94 MOVE                             R10 R8
       95 LENGTH                           R12 R8
       96 ADDK                             R11 R12 K3 [1]
       97 CALL                             R9 2 1
       98 GETUPVAL                         R10 9
       99 MUL                              R7 R9 R10
      100 GETUPVAL                         R8 0
      101 GETUPVAL                         R9 13
      102 CALL                             R8 1 1
      103 JUMPIFNOTLE                      R8 R7 ; [+5]
      105 GETUPVAL                         R9 14
      106 MOVE                             R10 R7
      107 CALL                             R9 1 0
      108 JUMP                             ; [+26]
      109 JUMPIFNOTLE                      R8 R6 ; [+25]
      111 JUMPIFNOTLT                      R7 R6 ; [+23]
      113 GETUPVAL                         R9 14
      114 GETUPVAL                         R11 5
      115 GETTABLEKS                       R11 R11 K0 ["current"]
      117 LOADN                            R12 0
      118 MOVE                             R13 R11
      119 LOADNIL                          R14
      120 LOADNIL                          R15
      121 FORGPREP                         R13
      122 MOVE                             R19 R12
      123 GETUPVAL                         R20 15
      124 MOVE                             R21 R17
      125 CALL                             R20 1 -1
      126 FASTCALL                         MATH_MAX ; [+2]
      127 GETIMPORT                        R18 K9 [math.max]
      129 CALL                             R18 -1 1
      130 MOVE                             R12 R18
      131 FORGLOOP                         R13 2 ; [-10]
      133 MOVE                             R10 R12
      134 CALL                             R9 1 0
      135 LENGTH                           R8 R0
      136 ADD                              R7 R1 R8
      137 GETUPVAL                         R8 16
      138 MOVE                             R9 R7
      139 CALL                             R8 1 0
      140 GETUPVAL                         R8 17
      141 MOVE                             R9 R7
      142 CALL                             R8 1 0
      143 GETIMPORT                        R8 K12 [table.concat]
      145 GETUPVAL                         R9 5
      146 GETTABLEKS                       R9 R9 K0 ["current"]
      148 LOADK                            R10 K13 ["\n"]
      149 CALL                             R8 2 1
      150 GETUPVAL                         R9 18
      151 SETTABLEKS                       R8 R9 K0 ["current"]
      153 GETUPVAL                         R9 19
      154 JUMPIFNOT                        R9 ; [+4]
      155 GETIMPORT                        R9 K16 [task.cancel]
      157 GETUPVAL                         R10 19
      158 CALL                             R9 1 0
      159 GETIMPORT                        R9 K18 [task.delay]
      161 LOADK                            R10 K19 [0.5]
      162 NEWCLOSURE                       R11 P0
      163 CAPTURE                          UPVAL U19
      164 CAPTURE                          UPVAL U20
      165 CAPTURE                          UPVAL U21
      166 CAPTURE                          UPVAL U22
      167 CAPTURE                          UPVAL U23
      168 CALL                             R9 2 1
      169 SETUPVAL                         R9 19
      170 GETUPVAL                         R9 0
      171 GETUPVAL                         R10 24
      172 GETTABLEKS                       R10 R10 K20 ["onTextChanged"]
      174 CALL                             R9 1 1
      175 JUMPIFNOT                        R9 ; [+3]
      176 MOVE                             R10 R9
      177 MOVE                             R11 R8
      178 CALL                             R10 1 0
      179 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 2
        8 CALL                             R2 1 1
        9 OR                               R1 R2 R0
       10 JUMPIFEQ                         R1 R0 ; [+46]
       12 GETUPVAL                         R2 3
       13 CALL                             R2 0 1
       14 GETUPVAL                         R3 4
       15 MOVE                             R4 R2
       16 CALL                             R3 1 0
       17 GETUPVAL                         R3 5
       18 MOVE                             R4 R2
       19 CALL                             R3 1 0
       20 GETIMPORT                        R3 K2 [table.concat]
       22 GETUPVAL                         R4 6
       23 GETTABLEKS                       R4 R4 K3 ["current"]
       25 LOADK                            R5 K4 ["\n"]
       26 CALL                             R3 2 1
       27 GETUPVAL                         R4 7
       28 SETTABLEKS                       R3 R4 K3 ["current"]
       30 GETUPVAL                         R4 8
       31 JUMPIFNOT                        R4 ; [+4]
       32 GETIMPORT                        R4 K7 [task.cancel]
       34 GETUPVAL                         R5 8
       35 CALL                             R4 1 0
       36 GETIMPORT                        R4 K9 [task.delay]
       38 LOADK                            R5 K10 [0.5]
       39 NEWCLOSURE                       R6 P0
       40 CAPTURE                          UPVAL U8
       41 CAPTURE                          UPVAL U9
       42 CAPTURE                          UPVAL U10
       43 CAPTURE                          UPVAL U11
       44 CAPTURE                          UPVAL U12
       45 CALL                             R4 2 1
       46 SETUPVAL                         R4 8
       47 GETUPVAL                         R4 0
       48 GETUPVAL                         R5 13
       49 GETTABLEKS                       R5 R5 K11 ["onTextChanged"]
       51 CALL                             R4 1 1
       52 JUMPIFNOT                        R4 ; [+3]
       53 MOVE                             R5 R4
       54 MOVE                             R6 R3
       55 CALL                             R5 1 0
       56 RETURN                           R0 0
       57 LOADN                            R2 1
       58 JUMPIFNOTLE                      R0 R2 ; [+2]
       60 RETURN                           R0 0
       61 GETUPVAL                         R2 14
       62 MOVE                             R3 R0
       63 CALL                             R2 1 2
       64 LOADN                            R4 1
       65 JUMPIFNOTLT                      R4 R3 ; [+136]
       67 GETUPVAL                         R5 6
       68 GETTABLEKS                       R5 R5 K3 ["current"]
       70 GETTABLE                         R4 R5 R2
       71 GETUPVAL                         R5 15
       72 GETTABLEKS                       R5 R5 K12 ["prevCharBytes"]
       74 MOVE                             R6 R4
       75 MOVE                             R7 R3
       76 CALL                             R5 2 1
       77 LOADN                            R6 1
       78 JUMPIFNOTLT                      R5 R6 ; [+2]
       80 LOADN                            R5 1
       81 GETUPVAL                         R7 15
       82 GETTABLEKS                       R7 R7 K13 ["containsNonMonospace"]
       84 MOVE                             R8 R4
       85 CALL                             R7 1 1
       86 JUMPIFNOT                        R7 ; [+8]
       87 GETUPVAL                         R6 15
       88 GETTABLEKS                       R6 R6 K14 ["measureLineWidth"]
       90 MOVE                             R7 R4
       91 GETUPVAL                         R8 16
       92 LOADN                            R9 16
       93 CALL                             R6 3 1
       94 JUMP                             ; [+7]
       95 GETUPVAL                         R7 17
       96 MOVE                             R8 R4
       97 LENGTH                           R10 R4
       98 ADDK                             R9 R10 K15 [1]
       99 CALL                             R7 2 1
      100 GETUPVAL                         R8 18
      101 MUL                              R6 R7 R8
      102 GETUPVAL                         R7 6
      103 GETTABLEKS                       R7 R7 K3 ["current"]
      105 LOADN                            R13 1
      106 SUBK                             R15 R3 K15 [1]
      107 SUB                              R14 R15 R5
      108 NAMECALL                         R11 R4 K16 ["sub"]
      110 CALL                             R11 3 1
      111 MOVE                             R9 R11
      112 MOVE                             R12 R3
      113 NAMECALL                         R10 R4 K16 ["sub"]
      115 CALL                             R10 2 1
      116 CONCAT                           R8 R9 R10
      117 SETTABLE                         R8 R7 R2
      118 GETUPVAL                         R7 19
      119 GETUPVAL                         R9 20
      120 GETTABLEKS                       R9 R9 K17 ["lines"]
      122 GETTABLE                         R8 R9 R2
      123 CALL                             R7 1 1
      124 GETUPVAL                         R9 21
      125 GETUPVAL                         R11 6
      126 GETTABLEKS                       R11 R11 K3 ["current"]
      128 GETTABLE                         R10 R11 R2
      129 CALL                             R9 1 -1
      130 NAMECALL                         R7 R7 K18 ["set"]
      132 CALL                             R7 -1 0
      133 GETUPVAL                         R9 6
      134 GETTABLEKS                       R9 R9 K3 ["current"]
      136 GETTABLE                         R8 R9 R2
      137 GETUPVAL                         R9 15
      138 GETTABLEKS                       R9 R9 K13 ["containsNonMonospace"]
      140 MOVE                             R10 R8
      141 CALL                             R9 1 1
      142 JUMPIFNOT                        R9 ; [+9]
      143 GETUPVAL                         R9 15
      144 GETTABLEKS                       R9 R9 K14 ["measureLineWidth"]
      146 MOVE                             R10 R8
      147 GETUPVAL                         R11 16
      148 LOADN                            R12 16
      149 CALL                             R9 3 1
      150 MOVE                             R7 R9
      151 JUMP                             ; [+7]
      152 GETUPVAL                         R9 17
      153 MOVE                             R10 R8
      154 LENGTH                           R12 R8
      155 ADDK                             R11 R12 K15 [1]
      156 CALL                             R9 2 1
      157 GETUPVAL                         R10 18
      158 MUL                              R7 R9 R10
      159 GETUPVAL                         R8 0
      160 GETUPVAL                         R9 22
      161 CALL                             R8 1 1
      162 JUMPIFNOTLE                      R8 R7 ; [+5]
      164 GETUPVAL                         R9 23
      165 MOVE                             R10 R7
      166 CALL                             R9 1 0
      167 JUMP                             ; [+26]
      168 JUMPIFNOTLE                      R8 R6 ; [+25]
      170 JUMPIFNOTLT                      R7 R6 ; [+23]
      172 GETUPVAL                         R9 23
      173 GETUPVAL                         R11 6
      174 GETTABLEKS                       R11 R11 K3 ["current"]
      176 LOADN                            R12 0
      177 MOVE                             R13 R11
      178 LOADNIL                          R14
      179 LOADNIL                          R15
      180 FORGPREP                         R13
      181 MOVE                             R19 R12
      182 GETUPVAL                         R20 24
      183 MOVE                             R21 R17
      184 CALL                             R20 1 -1
      185 FASTCALL                         MATH_MAX ; [+2]
      186 GETIMPORT                        R18 K21 [math.max]
      188 CALL                             R18 -1 1
      189 MOVE                             R12 R18
      190 FORGLOOP                         R13 2 ; [-10]
      192 MOVE                             R10 R12
      193 CALL                             R9 1 0
      194 SUB                              R7 R0 R5
      195 GETUPVAL                         R8 4
      196 MOVE                             R9 R7
      197 CALL                             R8 1 0
      198 GETUPVAL                         R8 5
      199 MOVE                             R9 R7
      200 CALL                             R8 1 0
      201 JUMP                             ; [+39]
      202 LOADN                            R4 1
      203 JUMPIFNOTLE                      R2 R4 ; [+2]
      205 RETURN                           R0 0
      206 GETUPVAL                         R5 6
      207 GETTABLEKS                       R5 R5 K3 ["current"]
      209 SUBK                             R6 R2 K15 [1]
      210 GETTABLE                         R4 R5 R6
      211 GETUPVAL                         R6 6
      212 GETTABLEKS                       R6 R6 K3 ["current"]
      214 GETTABLE                         R5 R6 R2
      215 GETUPVAL                         R6 6
      216 GETTABLEKS                       R6 R6 K3 ["current"]
      218 SUBK                             R7 R2 K15 [1]
      219 MOVE                             R9 R4
      220 MOVE                             R10 R5
      221 CONCAT                           R8 R9 R10
      222 SETTABLE                         R8 R6 R7
      223 GETIMPORT                        R6 K23 [table.remove]
      225 GETUPVAL                         R7 6
      226 GETTABLEKS                       R7 R7 K3 ["current"]
      228 MOVE                             R8 R2
      229 CALL                             R6 2 0
      230 GETUPVAL                         R6 25
      231 SUBK                             R7 R2 K15 [1]
      232 LOADN                            R8 1
      233 CALL                             R6 2 0
      234 SUBK                             R6 R0 K15 [1]
      235 GETUPVAL                         R7 4
      236 MOVE                             R8 R6
      237 CALL                             R7 1 0
      238 GETUPVAL                         R7 5
      239 MOVE                             R8 R6
      240 CALL                             R7 1 0
      241 GETIMPORT                        R4 K2 [table.concat]
      243 GETUPVAL                         R5 6
      244 GETTABLEKS                       R5 R5 K3 ["current"]
      246 LOADK                            R6 K4 ["\n"]
      247 CALL                             R4 2 1
      248 GETUPVAL                         R5 7
      249 SETTABLEKS                       R4 R5 K3 ["current"]
      251 GETUPVAL                         R5 8
      252 JUMPIFNOT                        R5 ; [+4]
      253 GETIMPORT                        R5 K7 [task.cancel]
      255 GETUPVAL                         R6 8
      256 CALL                             R5 1 0
      257 GETIMPORT                        R5 K9 [task.delay]
      259 LOADK                            R6 K10 [0.5]
      260 NEWCLOSURE                       R7 P0
      261 CAPTURE                          UPVAL U8
      262 CAPTURE                          UPVAL U9
      263 CAPTURE                          UPVAL U10
      264 CAPTURE                          UPVAL U11
      265 CAPTURE                          UPVAL U12
      266 CALL                             R5 2 1
      267 SETUPVAL                         R5 8
      268 GETUPVAL                         R5 0
      269 GETUPVAL                         R6 13
      270 GETTABLEKS                       R6 R6 K11 ["onTextChanged"]
      272 CALL                             R5 1 1
      273 JUMPIFNOT                        R5 ; [+3]
      274 MOVE                             R6 R5
      275 MOVE                             R7 R4
      276 CALL                             R6 1 0
      277 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 2
        8 CALL                             R2 1 1
        9 OR                               R1 R2 R0
       10 JUMPIFEQ                         R1 R0 ; [+46]
       12 GETUPVAL                         R2 3
       13 CALL                             R2 0 1
       14 GETUPVAL                         R3 4
       15 MOVE                             R4 R2
       16 CALL                             R3 1 0
       17 GETUPVAL                         R3 5
       18 MOVE                             R4 R2
       19 CALL                             R3 1 0
       20 GETIMPORT                        R3 K2 [table.concat]
       22 GETUPVAL                         R4 6
       23 GETTABLEKS                       R4 R4 K3 ["current"]
       25 LOADK                            R5 K4 ["\n"]
       26 CALL                             R3 2 1
       27 GETUPVAL                         R4 7
       28 SETTABLEKS                       R3 R4 K3 ["current"]
       30 GETUPVAL                         R4 8
       31 JUMPIFNOT                        R4 ; [+4]
       32 GETIMPORT                        R4 K7 [task.cancel]
       34 GETUPVAL                         R5 8
       35 CALL                             R4 1 0
       36 GETIMPORT                        R4 K9 [task.delay]
       38 LOADK                            R5 K10 [0.5]
       39 NEWCLOSURE                       R6 P0
       40 CAPTURE                          UPVAL U8
       41 CAPTURE                          UPVAL U9
       42 CAPTURE                          UPVAL U10
       43 CAPTURE                          UPVAL U11
       44 CAPTURE                          UPVAL U12
       45 CALL                             R4 2 1
       46 SETUPVAL                         R4 8
       47 GETUPVAL                         R4 0
       48 GETUPVAL                         R5 13
       49 GETTABLEKS                       R5 R5 K11 ["onTextChanged"]
       51 CALL                             R4 1 1
       52 JUMPIFNOT                        R4 ; [+3]
       53 MOVE                             R5 R4
       54 MOVE                             R6 R3
       55 CALL                             R5 1 0
       56 RETURN                           R0 0
       57 GETUPVAL                         R3 6
       58 GETTABLEKS                       R3 R3 K3 ["current"]
       60 LENGTH                           R4 R3
       61 JUMPIFNOTEQKN                    R4 K12 [0] ; [+3]
       63 LOADN                            R2 0
       64 JUMP                             ; [+12]
       65 LOADN                            R4 0
       66 MOVE                             R5 R3
       67 LOADNIL                          R6
       68 LOADNIL                          R7
       69 FORGPREP                         R5
       70 LENGTH                           R10 R9
       71 ADD                              R4 R4 R10
       72 FORGLOOP                         R5 2 ; [-3]
       74 LENGTH                           R6 R3
       75 ADD                              R5 R4 R6
       76 SUBK                             R2 R5 K13 [1]
       77 JUMPIFNOTLT                      R2 R0 ; [+2]
       79 RETURN                           R0 0
       80 GETUPVAL                         R2 14
       81 MOVE                             R3 R0
       82 CALL                             R2 1 2
       83 GETUPVAL                         R5 6
       84 GETTABLEKS                       R5 R5 K3 ["current"]
       86 GETTABLE                         R4 R5 R2
       87 LENGTH                           R5 R4
       88 JUMPIFNOTLE                      R3 R5 ; [+124]
       90 GETUPVAL                         R5 15
       91 GETTABLEKS                       R5 R5 K14 ["currCharBytes"]
       93 MOVE                             R6 R4
       94 MOVE                             R7 R3
       95 CALL                             R5 2 1
       96 LOADN                            R6 1
       97 JUMPIFNOTLT                      R5 R6 ; [+2]
       99 LOADN                            R5 1
      100 GETUPVAL                         R7 15
      101 GETTABLEKS                       R7 R7 K15 ["containsNonMonospace"]
      103 MOVE                             R8 R4
      104 CALL                             R7 1 1
      105 JUMPIFNOT                        R7 ; [+8]
      106 GETUPVAL                         R6 15
      107 GETTABLEKS                       R6 R6 K16 ["measureLineWidth"]
      109 MOVE                             R7 R4
      110 GETUPVAL                         R8 16
      111 LOADN                            R9 16
      112 CALL                             R6 3 1
      113 JUMP                             ; [+7]
      114 GETUPVAL                         R7 17
      115 MOVE                             R8 R4
      116 LENGTH                           R10 R4
      117 ADDK                             R9 R10 K13 [1]
      118 CALL                             R7 2 1
      119 GETUPVAL                         R8 18
      120 MUL                              R6 R7 R8
      121 GETUPVAL                         R7 6
      122 GETTABLEKS                       R7 R7 K3 ["current"]
      124 LOADN                            R13 1
      125 SUBK                             R14 R3 K13 [1]
      126 NAMECALL                         R11 R4 K17 ["sub"]
      128 CALL                             R11 3 1
      129 MOVE                             R9 R11
      130 ADD                              R12 R3 R5
      131 NAMECALL                         R10 R4 K17 ["sub"]
      133 CALL                             R10 2 1
      134 CONCAT                           R8 R9 R10
      135 SETTABLE                         R8 R7 R2
      136 GETUPVAL                         R7 19
      137 GETUPVAL                         R9 20
      138 GETTABLEKS                       R9 R9 K18 ["lines"]
      140 GETTABLE                         R8 R9 R2
      141 CALL                             R7 1 1
      142 GETUPVAL                         R9 21
      143 GETUPVAL                         R11 6
      144 GETTABLEKS                       R11 R11 K3 ["current"]
      146 GETTABLE                         R10 R11 R2
      147 CALL                             R9 1 -1
      148 NAMECALL                         R7 R7 K19 ["set"]
      150 CALL                             R7 -1 0
      151 GETUPVAL                         R9 6
      152 GETTABLEKS                       R9 R9 K3 ["current"]
      154 GETTABLE                         R8 R9 R2
      155 GETUPVAL                         R9 15
      156 GETTABLEKS                       R9 R9 K15 ["containsNonMonospace"]
      158 MOVE                             R10 R8
      159 CALL                             R9 1 1
      160 JUMPIFNOT                        R9 ; [+9]
      161 GETUPVAL                         R9 15
      162 GETTABLEKS                       R9 R9 K16 ["measureLineWidth"]
      164 MOVE                             R10 R8
      165 GETUPVAL                         R11 16
      166 LOADN                            R12 16
      167 CALL                             R9 3 1
      168 MOVE                             R7 R9
      169 JUMP                             ; [+7]
      170 GETUPVAL                         R9 17
      171 MOVE                             R10 R8
      172 LENGTH                           R12 R8
      173 ADDK                             R11 R12 K13 [1]
      174 CALL                             R9 2 1
      175 GETUPVAL                         R10 18
      176 MUL                              R7 R9 R10
      177 GETUPVAL                         R8 0
      178 GETUPVAL                         R9 22
      179 CALL                             R8 1 1
      180 JUMPIFNOTLE                      R8 R7 ; [+5]
      182 GETUPVAL                         R9 23
      183 MOVE                             R10 R7
      184 CALL                             R9 1 0
      185 JUMP                             ; [+56]
      186 JUMPIFNOTLE                      R8 R6 ; [+55]
      188 JUMPIFNOTLT                      R7 R6 ; [+53]
      190 GETUPVAL                         R9 23
      191 GETUPVAL                         R11 6
      192 GETTABLEKS                       R11 R11 K3 ["current"]
      194 LOADN                            R12 0
      195 MOVE                             R13 R11
      196 LOADNIL                          R14
      197 LOADNIL                          R15
      198 FORGPREP                         R13
      199 MOVE                             R19 R12
      200 GETUPVAL                         R20 24
      201 MOVE                             R21 R17
      202 CALL                             R20 1 -1
      203 FASTCALL                         MATH_MAX ; [+2]
      204 GETIMPORT                        R18 K22 [math.max]
      206 CALL                             R18 -1 1
      207 MOVE                             R12 R18
      208 FORGLOOP                         R13 2 ; [-10]
      210 MOVE                             R10 R12
      211 CALL                             R9 1 0
      212 JUMP                             ; [+29]
      213 GETUPVAL                         R6 6
      214 GETTABLEKS                       R6 R6 K3 ["current"]
      216 LENGTH                           R5 R6
      217 JUMPIFNOTLE                      R5 R2 ; [+2]
      219 RETURN                           R0 0
      220 GETUPVAL                         R5 6
      221 GETTABLEKS                       R5 R5 K3 ["current"]
      223 MOVE                             R7 R4
      224 GETUPVAL                         R9 6
      225 GETTABLEKS                       R9 R9 K3 ["current"]
      227 ADDK                             R10 R2 K13 [1]
      228 GETTABLE                         R8 R9 R10
      229 CONCAT                           R6 R7 R8
      230 SETTABLE                         R6 R5 R2
      231 GETIMPORT                        R5 K24 [table.remove]
      233 GETUPVAL                         R6 6
      234 GETTABLEKS                       R6 R6 K3 ["current"]
      236 ADDK                             R7 R2 K13 [1]
      237 CALL                             R5 2 0
      238 GETUPVAL                         R5 25
      239 MOVE                             R6 R2
      240 LOADN                            R7 1
      241 CALL                             R5 2 0
      242 GETIMPORT                        R5 K2 [table.concat]
      244 GETUPVAL                         R6 6
      245 GETTABLEKS                       R6 R6 K3 ["current"]
      247 LOADK                            R7 K4 ["\n"]
      248 CALL                             R5 2 1
      249 GETUPVAL                         R6 7
      250 SETTABLEKS                       R5 R6 K3 ["current"]
      252 GETUPVAL                         R6 8
      253 JUMPIFNOT                        R6 ; [+4]
      254 GETIMPORT                        R6 K7 [task.cancel]
      256 GETUPVAL                         R7 8
      257 CALL                             R6 1 0
      258 GETIMPORT                        R6 K9 [task.delay]
      260 LOADK                            R7 K10 [0.5]
      261 NEWCLOSURE                       R8 P0
      262 CAPTURE                          UPVAL U8
      263 CAPTURE                          UPVAL U9
      264 CAPTURE                          UPVAL U10
      265 CAPTURE                          UPVAL U11
      266 CAPTURE                          UPVAL U12
      267 CALL                             R6 2 1
      268 SETUPVAL                         R6 8
      269 GETUPVAL                         R6 0
      270 GETUPVAL                         R7 13
      271 GETTABLEKS                       R7 R7 K11 ["onTextChanged"]
      273 CALL                             R6 1 1
      274 JUMPIFNOT                        R6 ; [+3]
      275 MOVE                             R7 R6
      276 MOVE                             R8 R5
      277 CALL                             R7 1 0
      278 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 2
        8 CALL                             R2 1 1
        9 OR                               R1 R2 R0
       10 JUMPIFEQ                         R1 R0 ; [+4]
       12 GETUPVAL                         R2 3
       13 CALL                             R2 0 1
       14 MOVE                             R0 R2
       15 GETUPVAL                         R2 4
       16 MOVE                             R3 R0
       17 CALL                             R2 1 2
       18 GETUPVAL                         R5 5
       19 GETTABLEKS                       R5 R5 K0 ["current"]
       21 GETTABLE                         R4 R5 R2
       22 GETUPVAL                         R5 5
       23 GETTABLEKS                       R5 R5 K0 ["current"]
       25 LOADN                            R8 1
       26 SUBK                             R9 R3 K1 [1]
       27 NAMECALL                         R6 R4 K2 ["sub"]
       29 CALL                             R6 3 1
       30 SETTABLE                         R6 R5 R2
       31 GETUPVAL                         R6 5
       32 GETTABLEKS                       R6 R6 K0 ["current"]
       34 ADDK                             R7 R2 K1 [1]
       35 MOVE                             R10 R3
       36 NAMECALL                         R8 R4 K2 ["sub"]
       38 CALL                             R8 2 -1
       39 FASTCALL                         TABLE_INSERT ; [+2]
       40 GETIMPORT                        R5 K5 [table.insert]
       42 CALL                             R5 -1 0
       43 GETUPVAL                         R5 6
       44 MOVE                             R6 R2
       45 CALL                             R5 1 0
       46 ADDK                             R5 R0 K1 [1]
       47 GETUPVAL                         R6 7
       48 MOVE                             R7 R5
       49 CALL                             R6 1 0
       50 GETUPVAL                         R6 8
       51 MOVE                             R7 R5
       52 CALL                             R6 1 0
       53 GETIMPORT                        R6 K7 [table.concat]
       55 GETUPVAL                         R7 5
       56 GETTABLEKS                       R7 R7 K0 ["current"]
       58 LOADK                            R8 K8 ["\n"]
       59 CALL                             R6 2 1
       60 GETUPVAL                         R7 9
       61 SETTABLEKS                       R6 R7 K0 ["current"]
       63 GETUPVAL                         R7 10
       64 JUMPIFNOT                        R7 ; [+4]
       65 GETIMPORT                        R7 K11 [task.cancel]
       67 GETUPVAL                         R8 10
       68 CALL                             R7 1 0
       69 GETIMPORT                        R7 K13 [task.delay]
       71 LOADK                            R8 K14 [0.5]
       72 NEWCLOSURE                       R9 P0
       73 CAPTURE                          UPVAL U10
       74 CAPTURE                          UPVAL U11
       75 CAPTURE                          UPVAL U12
       76 CAPTURE                          UPVAL U13
       77 CAPTURE                          UPVAL U14
       78 CALL                             R7 2 1
       79 SETUPVAL                         R7 10
       80 GETUPVAL                         R7 0
       81 GETUPVAL                         R8 15
       82 GETTABLEKS                       R8 R8 K15 ["onTextChanged"]
       84 CALL                             R7 1 1
       85 JUMPIFNOT                        R7 ; [+3]
       86 MOVE                             R8 R7
       87 MOVE                             R9 R6
       88 CALL                             R8 1 0
       89 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R2
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 3
       10 GETTABLEKS                       R5 R5 K0 ["current"]
       12 LOADNIL                          R6
       13 GETIMPORT                        R7 K4 [Enum.KeyCode.Left]
       15 JUMPIFNOTEQ                      R0 R7 ; [+25]
       17 LOADN                            R7 1
       18 JUMPIFNOTLT                      R7 R2 ; [+150]
       20 GETTABLE                         R7 R5 R3
       21 LOADN                            R9 1
       22 JUMPIFNOTLT                      R9 R4 ; [+8]
       24 GETUPVAL                         R8 4
       25 GETTABLEKS                       R8 R8 K5 ["prevCharBytes"]
       27 MOVE                             R9 R7
       28 MOVE                             R10 R4
       29 CALL                             R8 2 1
       30 JUMP                             ; [+1]
       31 LOADN                            R8 1
       32 FASTCALL2K                       MATH_MAX R8 K6 ; [+5]
       34 MOVE                             R10 R8
       35 LOADK                            R11 K6 [1]
       36 GETIMPORT                        R9 K9 [math.max]
       38 CALL                             R9 2 1
       39 SUB                              R6 R2 R9
       40 JUMP                             ; [+128]
       41 GETIMPORT                        R7 K11 [Enum.KeyCode.Right]
       43 JUMPIFNOTEQ                      R0 R7 ; [+44]
       45 GETUPVAL                         R8 3
       46 GETTABLEKS                       R8 R8 K0 ["current"]
       48 LENGTH                           R9 R8
       49 JUMPIFNOTEQKN                    R9 K12 [0] ; [+3]
       51 LOADN                            R7 0
       52 JUMP                             ; [+12]
       53 LOADN                            R9 0
       54 MOVE                             R10 R8
       55 LOADNIL                          R11
       56 LOADNIL                          R12
       57 FORGPREP                         R10
       58 LENGTH                           R15 R14
       59 ADD                              R9 R9 R15
       60 FORGLOOP                         R10 2 ; [-3]
       62 LENGTH                           R11 R8
       63 ADD                              R10 R9 R11
       64 SUBK                             R7 R10 K6 [1]
       65 JUMPIFNOTLE                      R2 R7 ; [+103]
       67 GETTABLE                         R7 R5 R3
       68 LENGTH                           R9 R7
       69 JUMPIFNOTLE                      R4 R9 ; [+8]
       71 GETUPVAL                         R8 4
       72 GETTABLEKS                       R8 R8 K13 ["currCharBytes"]
       74 MOVE                             R9 R7
       75 MOVE                             R10 R4
       76 CALL                             R8 2 1
       77 JUMP                             ; [+1]
       78 LOADN                            R8 1
       79 FASTCALL2K                       MATH_MAX R8 K6 ; [+5]
       81 MOVE                             R10 R8
       82 LOADK                            R11 K6 [1]
       83 GETIMPORT                        R9 K9 [math.max]
       85 CALL                             R9 2 1
       86 ADD                              R6 R2 R9
       87 JUMP                             ; [+81]
       88 GETIMPORT                        R7 K15 [Enum.KeyCode.Up]
       90 JUMPIFNOTEQ                      R0 R7 ; [+38]
       92 LOADN                            R7 1
       93 JUMPIFNOTLT                      R7 R3 ; [+75]
       95 SUBK                             R12 R3 K6 [1]
       96 GETTABLE                         R11 R5 R12
       97 LENGTH                           R10 R11
       98 ADDK                             R9 R10 K6 [1]
       99 FASTCALL2                        MATH_MIN R4 R9 ; [+4]
      101 MOVE                             R8 R4
      102 GETIMPORT                        R7 K17 [math.min]
      104 CALL                             R7 2 1
      105 SUBK                             R8 R3 K6 [1]
      106 GETUPVAL                         R9 3
      107 GETTABLEKS                       R9 R9 K0 ["current"]
      109 LOADN                            R10 1
      110 LOADN                            R13 1
      111 SUBK                             R15 R8 K6 [1]
      112 LENGTH                           R16 R9
      113 FASTCALL2                        MATH_MIN R15 R16 ; [+3]
      115 GETIMPORT                        R14 K17 [math.min]
      117 CALL                             R14 2 1
      118 MOVE                             R11 R14
      119 LOADN                            R12 1
      120 FORNPREP                         R11
      121 GETTABLE                         R16 R9 R13
      122 LENGTH                           R15 R16
      123 ADDK                             R14 R15 K6 [1]
      124 ADD                              R10 R10 R14
      125 FORNLOOP                         R11
      126 ADD                              R11 R10 R7
      127 SUBK                             R6 R11 K6 [1]
      128 JUMP                             ; [+40]
      129 GETIMPORT                        R7 K19 [Enum.KeyCode.Down]
      131 JUMPIFNOTEQ                      R0 R7 ; [+37]
      133 LENGTH                           R7 R5
      134 JUMPIFNOTLT                      R3 R7 ; [+34]
      136 ADDK                             R12 R3 K6 [1]
      137 GETTABLE                         R11 R5 R12
      138 LENGTH                           R10 R11
      139 ADDK                             R9 R10 K6 [1]
      140 FASTCALL2                        MATH_MIN R4 R9 ; [+4]
      142 MOVE                             R8 R4
      143 GETIMPORT                        R7 K17 [math.min]
      145 CALL                             R7 2 1
      146 ADDK                             R8 R3 K6 [1]
      147 GETUPVAL                         R9 3
      148 GETTABLEKS                       R9 R9 K0 ["current"]
      150 LOADN                            R10 1
      151 LOADN                            R13 1
      152 SUBK                             R15 R8 K6 [1]
      153 LENGTH                           R16 R9
      154 FASTCALL2                        MATH_MIN R15 R16 ; [+3]
      156 GETIMPORT                        R14 K17 [math.min]
      158 CALL                             R14 2 1
      159 MOVE                             R11 R14
      160 LOADN                            R12 1
      161 FORNPREP                         R11
      162 GETTABLE                         R16 R9 R13
      163 LENGTH                           R15 R16
      164 ADDK                             R14 R15 K6 [1]
      165 ADD                              R10 R10 R14
      166 FORNLOOP                         R11
      167 ADD                              R11 R10 R7
      168 SUBK                             R6 R11 K6 [1]
      169 JUMPIFNOTEQKNIL                  R6 ; [+2]
      171 RETURN                           R0 0
      172 JUMPIFNOT                        R1 ; [+12]
      173 GETUPVAL                         R7 0
      174 GETUPVAL                         R8 5
      175 CALL                             R7 1 1
      176 JUMPIFNOTEQKNIL                  R7 ; [+4]
      178 GETUPVAL                         R7 6
      179 MOVE                             R8 R2
      180 CALL                             R7 1 0
      181 GETUPVAL                         R7 7
      182 MOVE                             R8 R6
      183 CALL                             R7 1 0
      184 RETURN                           R0 0
      185 GETUPVAL                         R7 7
      186 MOVE                             R8 R6
      187 CALL                             R7 1 0
      188 GETUPVAL                         R7 6
      189 MOVE                             R8 R6
      190 CALL                             R7 1 0
      191 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETIMPORT                        R0 K2 [task.cancel]
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 1
       10 RETURN                           R0 0

PROTO_57:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 1
        5 JUMPIFEQKNIL                     R0 ; [+7]
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R1 R1 K0 ["editable"]
       11 CALL                             R0 1 1
       12 JUMPIF                           R0 ; [+3]
       13 LOADNIL                          R0
       14 SETUPVAL                         R0 4
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 5
       17 CALL                             R0 0 0
       18 GETUPVAL                         R0 6
       19 LOADK                            R1 K1 [0.05]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_58:
        0 GETIMPORT                        R1 K2 [task.delay]
        2 MOVE                             R2 R0
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CALL                             R1 2 1
       12 SETUPVAL                         R1 0
       13 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+6]
        2 GETIMPORT                        R2 K2 [task.cancel]
        4 GETUPVAL                         R3 0
        5 CALL                             R2 1 0
        6 LOADNIL                          R2
        7 SETUPVAL                         R2 0
        8 LOADNIL                          R2
        9 SETUPVAL                         R2 1
       10 SETUPVAL                         R0 1
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 GETIMPORT                        R3 K4 [task.delay]
       21 LOADK                            R4 K5 [0.4]
       22 NEWCLOSURE                       R5 P1
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 CALL                             R3 2 1
       31 SETUPVAL                         R3 0
       32 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+3]
        4 LOADNIL                          R3
        5 RETURN                           R3 1
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETUPVAL                         R5 1
        8 GETTABLE                         R4 R5 R0
        9 OR                               R3 R4 R2
       10 RETURN                           R3 1
       11 RETURN                           R2 1

PROTO_61:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_62:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R2 1
        9 CALL                             R1 1 1
       10 JUMPIFNOTEQKNIL                  R1 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 0
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K4 ["editable"]
       17 CALL                             R1 1 1
       18 JUMPIF                           R1 ; [+1]
       19 RETURN                           R0 0
       20 GETTABLEKS                       R1 R0 K5 ["KeyCode"]
       22 GETIMPORT                        R4 K8 [Enum.ModifierKey.Shift]
       24 NAMECALL                         R2 R0 K9 ["IsModifierKeyDown"]
       26 CALL                             R2 2 1
       27 GETUPVAL                         R3 3
       28 JUMPIFNOT                        R3 ; [+6]
       29 GETIMPORT                        R3 K12 [task.cancel]
       31 GETUPVAL                         R4 3
       32 CALL                             R3 1 0
       33 LOADNIL                          R3
       34 SETUPVAL                         R3 3
       35 LOADNIL                          R3
       36 SETUPVAL                         R3 4
       37 GETIMPORT                        R3 K14 [Enum.KeyCode.Backspace]
       39 JUMPIFNOTEQ                      R1 R3 ; [+37]
       41 GETUPVAL                         R3 5
       42 CALL                             R3 0 0
       43 GETUPVAL                         R3 5
       44 GETUPVAL                         R4 3
       45 JUMPIFNOT                        R4 ; [+6]
       46 GETIMPORT                        R4 K12 [task.cancel]
       48 GETUPVAL                         R5 3
       49 CALL                             R4 1 0
       50 LOADNIL                          R4
       51 SETUPVAL                         R4 3
       52 LOADNIL                          R4
       53 SETUPVAL                         R4 4
       54 SETUPVAL                         R1 4
       55 NEWCLOSURE                       R4 P0
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          UPVAL U1
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R4
       63 GETIMPORT                        R5 K16 [task.delay]
       65 LOADK                            R6 K17 [0.4]
       66 NEWCLOSURE                       R7 P1
       67 CAPTURE                          UPVAL U3
       68 CAPTURE                          UPVAL U0
       69 CAPTURE                          UPVAL U1
       70 CAPTURE                          UPVAL U2
       71 CAPTURE                          UPVAL U4
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R4
       74 CALL                             R5 2 1
       75 SETUPVAL                         R5 3
       76 RETURN                           R0 0
       77 GETIMPORT                        R3 K19 [Enum.KeyCode.Delete]
       79 JUMPIFNOTEQ                      R1 R3 ; [+37]
       81 GETUPVAL                         R3 6
       82 CALL                             R3 0 0
       83 GETUPVAL                         R3 6
       84 GETUPVAL                         R4 3
       85 JUMPIFNOT                        R4 ; [+6]
       86 GETIMPORT                        R4 K12 [task.cancel]
       88 GETUPVAL                         R5 3
       89 CALL                             R4 1 0
       90 LOADNIL                          R4
       91 SETUPVAL                         R4 3
       92 LOADNIL                          R4
       93 SETUPVAL                         R4 4
       94 SETUPVAL                         R1 4
       95 NEWCLOSURE                       R4 P0
       96 CAPTURE                          UPVAL U3
       97 CAPTURE                          UPVAL U0
       98 CAPTURE                          UPVAL U1
       99 CAPTURE                          UPVAL U2
      100 CAPTURE                          UPVAL U4
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R4
      103 GETIMPORT                        R5 K16 [task.delay]
      105 LOADK                            R6 K17 [0.4]
      106 NEWCLOSURE                       R7 P1
      107 CAPTURE                          UPVAL U3
      108 CAPTURE                          UPVAL U0
      109 CAPTURE                          UPVAL U1
      110 CAPTURE                          UPVAL U2
      111 CAPTURE                          UPVAL U4
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R4
      114 CALL                             R5 2 1
      115 SETUPVAL                         R5 3
      116 RETURN                           R0 0
      117 GETIMPORT                        R3 K21 [Enum.KeyCode.Return]
      119 JUMPIFEQ                         R1 R3 ; [+5]
      121 GETIMPORT                        R3 K23 [Enum.KeyCode.KeypadEnter]
      123 JUMPIFNOTEQ                      R1 R3 ; [+4]
      125 GETUPVAL                         R3 7
      126 CALL                             R3 0 0
      127 RETURN                           R0 0
      128 GETIMPORT                        R3 K25 [Enum.KeyCode.Left]
      130 JUMPIFEQ                         R1 R3 ; [+13]
      132 GETIMPORT                        R3 K27 [Enum.KeyCode.Right]
      134 JUMPIFEQ                         R1 R3 ; [+9]
      136 GETIMPORT                        R3 K29 [Enum.KeyCode.Up]
      138 JUMPIFEQ                         R1 R3 ; [+5]
      140 GETIMPORT                        R3 K31 [Enum.KeyCode.Down]
      142 JUMPIFNOTEQ                      R1 R3 ; [+6]
      144 GETUPVAL                         R3 8
      145 MOVE                             R4 R1
      146 MOVE                             R5 R2
      147 CALL                             R3 2 0
      148 RETURN                           R0 0
      149 GETIMPORT                        R5 K33 [Enum.ModifierKey.Ctrl]
      151 NAMECALL                         R3 R0 K9 ["IsModifierKeyDown"]
      153 CALL                             R3 2 1
      154 JUMPIFNOT                        R3 ; [+1]
      155 RETURN                           R0 0
      156 GETUPVAL                         R5 9
      157 GETTABLE                         R4 R5 R1
      158 JUMPIFNOTEQKNIL                  R4 ; [+3]
      160 LOADNIL                          R3
      161 JUMP                             ; [+6]
      162 JUMPIFNOT                        R2 ; [+4]
      163 GETUPVAL                         R6 10
      164 GETTABLE                         R5 R6 R1
      165 OR                               R3 R5 R4
      166 JUMP                             ; [+1]
      167 MOVE                             R3 R4
      168 JUMPIFNOT                        R3 ; [+38]
      169 GETUPVAL                         R4 11
      170 MOVE                             R5 R3
      171 CALL                             R4 1 0
      172 NEWCLOSURE                       R4 P2
      173 CAPTURE                          UPVAL U11
      174 CAPTURE                          VAL R3
      175 GETUPVAL                         R5 3
      176 JUMPIFNOT                        R5 ; [+6]
      177 GETIMPORT                        R5 K12 [task.cancel]
      179 GETUPVAL                         R6 3
      180 CALL                             R5 1 0
      181 LOADNIL                          R5
      182 SETUPVAL                         R5 3
      183 LOADNIL                          R5
      184 SETUPVAL                         R5 4
      185 SETUPVAL                         R1 4
      186 NEWCLOSURE                       R5 P0
      187 CAPTURE                          UPVAL U3
      188 CAPTURE                          UPVAL U0
      189 CAPTURE                          UPVAL U1
      190 CAPTURE                          UPVAL U2
      191 CAPTURE                          UPVAL U4
      192 CAPTURE                          VAL R4
      193 CAPTURE                          VAL R5
      194 GETIMPORT                        R6 K16 [task.delay]
      196 LOADK                            R7 K17 [0.4]
      197 NEWCLOSURE                       R8 P1
      198 CAPTURE                          UPVAL U3
      199 CAPTURE                          UPVAL U0
      200 CAPTURE                          UPVAL U1
      201 CAPTURE                          UPVAL U2
      202 CAPTURE                          UPVAL U4
      203 CAPTURE                          VAL R4
      204 CAPTURE                          VAL R5
      205 CALL                             R6 2 1
      206 SETUPVAL                         R6 3
      207 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_64:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFNOTEQ                      R1 R2 ; [+16]
        6 GETTABLEKS                       R1 R0 K4 ["KeyCode"]
        8 GETUPVAL                         R2 0
        9 JUMPIFNOTEQ                      R1 R2 ; [+11]
       11 GETUPVAL                         R1 1
       12 JUMPIFNOT                        R1 ; [+6]
       13 GETIMPORT                        R1 K7 [task.cancel]
       15 GETUPVAL                         R2 1
       16 CALL                             R1 1 0
       17 LOADNIL                          R1
       18 SETUPVAL                         R1 1
       19 LOADNIL                          R1
       20 SETUPVAL                         R1 0
       21 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+24]
        2 GETIMPORT                        R0 K2 [task.cancel]
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 GETUPVAL                         R2 2
       10 CALL                             R2 0 1
       11 NAMECALL                         R0 R0 K3 ["push"]
       13 CALL                             R0 2 0
       14 GETUPVAL                         R0 3
       15 GETUPVAL                         R1 1
       16 NAMECALL                         R1 R1 K4 ["canUndo"]
       18 CALL                             R1 1 -1
       19 CALL                             R0 -1 0
       20 GETUPVAL                         R0 4
       21 GETUPVAL                         R1 1
       22 NAMECALL                         R1 R1 K5 ["canRedo"]
       24 CALL                             R1 1 -1
       25 CALL                             R0 -1 0
       26 GETUPVAL                         R0 1
       27 NAMECALL                         R0 R0 K6 ["undo"]
       29 CALL                             R0 1 1
       30 JUMPIFNOT                        R0 ; [+15]
       31 GETUPVAL                         R1 5
       32 MOVE                             R2 R0
       33 CALL                             R1 1 0
       34 GETUPVAL                         R1 3
       35 GETUPVAL                         R2 1
       36 NAMECALL                         R2 R2 K4 ["canUndo"]
       38 CALL                             R2 1 -1
       39 CALL                             R1 -1 0
       40 GETUPVAL                         R1 4
       41 GETUPVAL                         R2 1
       42 NAMECALL                         R2 R2 K5 ["canRedo"]
       44 CALL                             R2 1 -1
       45 CALL                             R1 -1 0
       46 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["redo"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+15]
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R2 0
       10 NAMECALL                         R2 R2 K1 ["canUndo"]
       12 CALL                             R2 1 -1
       13 CALL                             R1 -1 0
       14 GETUPVAL                         R1 3
       15 GETUPVAL                         R2 0
       16 NAMECALL                         R2 R2 K2 ["canRedo"]
       18 CALL                             R2 1 -1
       19 CALL                             R1 -1 0
       20 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["current"]
        7 LENGTH                           R4 R3
        8 JUMPIFNOTEQKN                    R4 K2 [0] ; [+3]
       10 LOADN                            R2 0
       11 JUMP                             ; [+12]
       12 LOADN                            R4 0
       13 MOVE                             R5 R3
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 LENGTH                           R10 R9
       18 ADD                              R4 R4 R10
       19 FORGLOOP                         R5 2 ; [-3]
       21 LENGTH                           R6 R3
       22 ADD                              R5 R4 R6
       23 SUBK                             R2 R5 K0 [1]
       24 ADDK                             R1 R2 K0 [1]
       25 CALL                             R0 1 0
       26 RETURN                           R0 0

PROTO_68:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+5]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["writeToClipboard"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_69:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["writeToClipboard"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 CALL                             R1 0 1
       11 GETUPVAL                         R2 3
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 4
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 GETIMPORT                        R2 K3 [table.concat]
       19 GETUPVAL                         R3 5
       20 GETTABLEKS                       R3 R3 K4 ["current"]
       22 LOADK                            R4 K5 ["\n"]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 6
       25 SETTABLEKS                       R2 R3 K4 ["current"]
       27 GETUPVAL                         R3 7
       28 JUMPIFNOT                        R3 ; [+4]
       29 GETIMPORT                        R3 K8 [task.cancel]
       31 GETUPVAL                         R4 7
       32 CALL                             R3 1 0
       33 GETIMPORT                        R3 K10 [task.delay]
       35 LOADK                            R4 K11 [0.5]
       36 NEWCLOSURE                       R5 P0
       37 CAPTURE                          UPVAL U7
       38 CAPTURE                          UPVAL U8
       39 CAPTURE                          UPVAL U9
       40 CAPTURE                          UPVAL U10
       41 CAPTURE                          UPVAL U11
       42 CALL                             R3 2 1
       43 SETUPVAL                         R3 7
       44 GETUPVAL                         R3 12
       45 GETUPVAL                         R4 13
       46 GETTABLEKS                       R4 R4 K12 ["onTextChanged"]
       48 CALL                             R3 1 1
       49 JUMPIFNOT                        R3 ; [+3]
       50 MOVE                             R4 R3
       51 MOVE                             R5 R2
       52 CALL                             R4 1 0
       53 RETURN                           R0 0

PROTO_70:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["readFromClipboard"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+7]
        5 LENGTH                           R1 R0
        6 LOADN                            R2 0
        7 JUMPIFNOTLT                      R2 R1 ; [+4]
        9 GETUPVAL                         R1 1
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_71:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_72:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETIMPORT                        R0 K2 [task.cancel]
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 1
       10 GETUPVAL                         R0 2
       11 LOADNIL                          R1
       12 LOADNIL                          R2
       13 FORGPREP                         R0
       14 NAMECALL                         R5 R4 K3 ["Disconnect"]
       16 CALL                             R5 1 0
       17 FORGLOOP                         R0 2 ; [-4]
       19 RETURN                           R0 0

PROTO_73:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["editorCompat"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 NEWTABLE                         R2 0 0
        7 MOVE                             R4 R2
        8 GETTABLEKS                       R5 R1 K1 ["inputBegan"]
       10 NEWCLOSURE                       R7 P0
       11 CAPTURE                          UPVAL U1
       12 NAMECALL                         R5 R5 K2 ["Connect"]
       14 CALL                             R5 2 -1
       15 FASTCALL                         TABLE_INSERT ; [+2]
       16 GETIMPORT                        R3 K5 [table.insert]
       18 CALL                             R3 -1 0
       19 MOVE                             R4 R2
       20 GETTABLEKS                       R5 R1 K6 ["inputEnded"]
       22 NEWCLOSURE                       R7 P1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 NAMECALL                         R5 R5 K2 ["Connect"]
       27 CALL                             R5 2 -1
       28 FASTCALL                         TABLE_INSERT ; [+2]
       29 GETIMPORT                        R3 K5 [table.insert]
       31 CALL                             R3 -1 0
       32 MOVE                             R4 R2
       33 GETTABLEKS                       R5 R1 K7 ["undo"]
       35 GETTABLEKS                       R5 R5 K8 ["triggered"]
       37 NEWCLOSURE                       R7 P2
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          UPVAL U7
       42 CAPTURE                          UPVAL U8
       43 CAPTURE                          UPVAL U9
       44 NAMECALL                         R5 R5 K2 ["Connect"]
       46 CALL                             R5 2 -1
       47 FASTCALL                         TABLE_INSERT ; [+2]
       48 GETIMPORT                        R3 K5 [table.insert]
       50 CALL                             R3 -1 0
       51 MOVE                             R4 R2
       52 GETTABLEKS                       R5 R1 K9 ["redo"]
       54 GETTABLEKS                       R5 R5 K8 ["triggered"]
       56 NEWCLOSURE                       R7 P3
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          UPVAL U9
       59 CAPTURE                          UPVAL U7
       60 CAPTURE                          UPVAL U8
       61 NAMECALL                         R5 R5 K2 ["Connect"]
       63 CALL                             R5 2 -1
       64 FASTCALL                         TABLE_INSERT ; [+2]
       65 GETIMPORT                        R3 K5 [table.insert]
       67 CALL                             R3 -1 0
       68 MOVE                             R4 R2
       69 GETTABLEKS                       R5 R1 K10 ["selectAll"]
       71 GETTABLEKS                       R5 R5 K8 ["triggered"]
       73 NEWCLOSURE                       R7 P4
       74 CAPTURE                          UPVAL U10
       75 CAPTURE                          UPVAL U11
       76 CAPTURE                          UPVAL U12
       77 NAMECALL                         R5 R5 K2 ["Connect"]
       79 CALL                             R5 2 -1
       80 FASTCALL                         TABLE_INSERT ; [+2]
       81 GETIMPORT                        R3 K5 [table.insert]
       83 CALL                             R3 -1 0
       84 MOVE                             R4 R2
       85 GETTABLEKS                       R5 R1 K11 ["copy"]
       87 GETTABLEKS                       R5 R5 K8 ["triggered"]
       89 NEWCLOSURE                       R7 P5
       90 CAPTURE                          UPVAL U13
       91 CAPTURE                          VAL R1
       92 NAMECALL                         R5 R5 K2 ["Connect"]
       94 CALL                             R5 2 -1
       95 FASTCALL                         TABLE_INSERT ; [+2]
       96 GETIMPORT                        R3 K5 [table.insert]
       98 CALL                             R3 -1 0
       99 MOVE                             R4 R2
      100 GETTABLEKS                       R5 R1 K12 ["cut"]
      102 GETTABLEKS                       R5 R5 K8 ["triggered"]
      104 NEWCLOSURE                       R7 P6
      105 CAPTURE                          UPVAL U13
      106 CAPTURE                          VAL R1
      107 CAPTURE                          UPVAL U14
      108 CAPTURE                          UPVAL U11
      109 CAPTURE                          UPVAL U10
      110 CAPTURE                          UPVAL U12
      111 CAPTURE                          UPVAL U15
      112 CAPTURE                          UPVAL U4
      113 CAPTURE                          UPVAL U5
      114 CAPTURE                          UPVAL U6
      115 CAPTURE                          UPVAL U7
      116 CAPTURE                          UPVAL U8
      117 CAPTURE                          UPVAL U16
      118 CAPTURE                          UPVAL U0
      119 NAMECALL                         R5 R5 K2 ["Connect"]
      121 CALL                             R5 2 -1
      122 FASTCALL                         TABLE_INSERT ; [+2]
      123 GETIMPORT                        R3 K5 [table.insert]
      125 CALL                             R3 -1 0
      126 MOVE                             R4 R2
      127 GETTABLEKS                       R5 R1 K13 ["paste"]
      129 GETTABLEKS                       R5 R5 K8 ["triggered"]
      131 NEWCLOSURE                       R7 P7
      132 CAPTURE                          VAL R1
      133 CAPTURE                          UPVAL U17
      134 NAMECALL                         R5 R5 K2 ["Connect"]
      136 CALL                             R5 2 -1
      137 FASTCALL                         TABLE_INSERT ; [+2]
      138 GETIMPORT                        R3 K5 [table.insert]
      140 CALL                             R3 -1 0
      141 NEWCLOSURE                       R3 P8
      142 CAPTURE                          UPVAL U3
      143 CAPTURE                          UPVAL U2
      144 CAPTURE                          VAL R2
      145 RETURN                           R3 1

PROTO_74:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["editorCompat"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["undo"]
        7 GETTABLEKS                       R2 R2 K2 ["setEnabled"]
        9 GETUPVAL                         R3 1
       10 MOVE                             R4 R0
       11 CALL                             R3 1 -1
       12 CALL                             R2 -1 0
       13 GETTABLEKS                       R2 R1 K3 ["redo"]
       15 GETTABLEKS                       R2 R2 K2 ["setEnabled"]
       17 GETUPVAL                         R3 2
       18 MOVE                             R4 R0
       19 CALL                             R3 1 -1
       20 CALL                             R2 -1 0
       21 RETURN                           R0 0

PROTO_75:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["editorCompat"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R0
       10 CALL                             R3 1 1
       11 LOADB                            R4 0
       12 JUMPIFEQKNIL                     R2 ; [+8]
       14 LOADB                            R4 0
       15 JUMPIFEQKNIL                     R3 ; [+5]
       17 JUMPIFNOTEQ                      R2 R3 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 GETTABLEKS                       R5 R1 K1 ["copy"]
       23 GETTABLEKS                       R5 R5 K2 ["setEnabled"]
       25 MOVE                             R6 R4
       26 CALL                             R5 1 0
       27 GETTABLEKS                       R5 R1 K3 ["cut"]
       29 GETTABLEKS                       R5 R5 K2 ["setEnabled"]
       31 MOVE                             R6 R4
       32 CALL                             R5 1 0
       33 GETTABLEKS                       R5 R1 K4 ["delete"]
       35 GETTABLEKS                       R5 R5 K2 ["setEnabled"]
       37 LOADB                            R6 0
       38 CALL                             R5 1 0
       39 GETTABLEKS                       R5 R1 K5 ["selectAll"]
       41 GETTABLEKS                       R5 R5 K2 ["setEnabled"]
       43 LOADB                            R6 1
       44 CALL                             R5 1 0
       45 RETURN                           R0 0

PROTO_76:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["editorCompat"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["paste"]
        7 GETTABLEKS                       R2 R2 K2 ["setEnabled"]
        9 GETTABLEKS                       R3 R1 K3 ["isTextInClipboard"]
       11 MOVE                             R4 R0
       12 CALL                             R3 1 -1
       13 CALL                             R2 -1 0
       14 RETURN                           R0 0

PROTO_77:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["showLineNumbers"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADN                            R1 0
        7 RETURN                           R1 1
        8 GETUPVAL                         R1 1
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 LOADN                            R3 2
       12 FASTCALL1                        TOSTRING R1 ; [+3]
       13 MOVE                             R6 R1
       14 GETIMPORT                        R5 K2 [tostring]
       16 CALL                             R5 1 1
       17 LENGTH                           R4 R5
       18 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       20 GETIMPORT                        R2 K5 [math.max]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R6 2
       24 MUL                              R5 R2 R6
       25 ADDK                             R4 R5 K7 [16]
       26 ADDK                             R3 R4 K6 [15]
       27 RETURN                           R3 1

PROTO_78:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 0
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R0
        5 CALL                             R3 1 1
        6 LOADN                            R4 1
        7 LOADN                            R5 0
        8 CALL                             R1 4 -1
        9 RETURN                           R1 -1

PROTO_79:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 LOADN                            R3 0
        4 JUMPIFNOTLT                      R3 R1 ; [+3]
        6 LOADN                            R2 8
        7 JUMP                             ; [+1]
        8 LOADN                            R2 0
        9 GETIMPORT                        R3 K2 [UDim2.new]
       11 LOADN                            R4 1
       12 ADD                              R6 R1 R2
       13 MINUS                            R5 R6
       14 LOADN                            R6 1
       15 LOADN                            R7 0
       16 CALL                             R3 4 -1
       17 RETURN                           R3 -1

PROTO_80:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 LOADN                            R3 0
        4 JUMPIFNOTLT                      R3 R1 ; [+3]
        6 LOADN                            R2 8
        7 JUMP                             ; [+1]
        8 LOADN                            R2 0
        9 GETIMPORT                        R3 K2 [UDim2.fromOffset]
       11 ADD                              R4 R1 R2
       12 LOADN                            R5 0
       13 CALL                             R3 2 -1
       14 RETURN                           R3 -1

PROTO_81:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        5 LOADN                            R3 0
        6 GETUPVAL                         R5 1
        7 MUL                              R4 R1 R5
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_82:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K2 [table.create]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 LOADN                            R5 1
        8 MOVE                             R3 R1
        9 LOADN                            R4 1
       10 FORNPREP                         R3
       11 FASTCALL1                        TOSTRING R5 ; [+3]
       12 MOVE                             R7 R5
       13 GETIMPORT                        R6 K4 [tostring]
       15 CALL                             R6 1 1
       16 SETTABLE                         R6 R2 R5
       17 FORNLOOP                         R3
       18 RETURN                           R2 1

PROTO_83:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["AbsoluteSize"]
        4 GETTABLEKS                       R1 R1 K1 ["Y"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_84:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CanvasPosition"]
        3 GETTABLEKS                       R0 R0 K1 ["Y"]
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 JUMPIFNOT                        R1 ; [+8]
       10 GETUPVAL                         R1 2
       11 GETIMPORT                        R2 K4 [Vector2.new]
       13 LOADN                            R3 0
       14 MOVE                             R4 R0
       15 CALL                             R2 2 1
       16 SETTABLEKS                       R2 R1 K0 ["CanvasPosition"]
       18 RETURN                           R0 0

PROTO_85:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_86:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R4 R1 K0 ["AbsoluteSize"]
       11 GETTABLEKS                       R4 R4 K1 ["Y"]
       13 CALL                             R3 1 0
       14 LOADK                            R5 K0 ["AbsoluteSize"]
       15 NAMECALL                         R3 R1 K2 ["GetPropertyChangedSignal"]
       17 CALL                             R3 2 1
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R1
       21 NAMECALL                         R3 R3 K3 ["Connect"]
       23 CALL                             R3 2 1
       24 LOADK                            R6 K4 ["CanvasPosition"]
       25 NAMECALL                         R4 R1 K2 ["GetPropertyChangedSignal"]
       27 CALL                             R4 2 1
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          VAL R2
       32 NAMECALL                         R4 R4 K3 ["Connect"]
       34 CALL                             R4 2 1
       35 NEWCLOSURE                       R5 P2
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R3
       38 RETURN                           R5 1

PROTO_87:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["dropLineIndex"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+3]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 MOVE                             R2 R1
        8 MOVE                             R3 R0
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_88:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["dropLineIndex"]
        3 JUMPIFNOTEQKNIL                  R3 ; [+3]
        5 LOADNIL                          R2
        6 JUMP                             ; [+4]
        7 MOVE                             R4 R3
        8 MOVE                             R5 R0
        9 CALL                             R4 1 1
       10 MOVE                             R2 R4
       11 JUMPIFNOTEQKNIL                  R2 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_89:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["dropLineIndex"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+3]
        5 LOADNIL                          R1
        6 JUMP                             ; [+4]
        7 MOVE                             R3 R2
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 MOVE                             R1 R3
       11 JUMPIF                           R1 ; [+6]
       12 GETIMPORT                        R2 K3 [UDim2.fromOffset]
       14 LOADN                            R3 0
       15 LOADN                            R4 0
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1
       18 GETIMPORT                        R2 K3 [UDim2.fromOffset]
       20 LOADN                            R3 0
       21 SUBK                             R6 R1 K4 [1]
       22 GETUPVAL                         R7 1
       23 MUL                              R5 R6 R7
       24 SUBK                             R4 R5 K4 [1]
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

PROTO_90:
        0 GETTABLEKS                       R2 R1 K0 ["peek"]
        2 GETTABLEKS                       R3 R1 K1 ["provide"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["token"]
        7 CALL                             R3 1 1
        8 GETIMPORT                        R4 K5 [Color3.fromRGB]
       10 LOADN                            R5 18
       11 LOADN                            R6 18
       12 LOADN                            R7 21
       13 CALL                             R4 3 1
       14 GETIMPORT                        R5 K5 [Color3.fromRGB]
       16 LOADN                            R6 255
       17 LOADN                            R7 255
       18 LOADN                            R8 255
       19 CALL                             R5 3 1
       20 GETIMPORT                        R6 K5 [Color3.fromRGB]
       22 LOADN                            R7 100
       23 LOADN                            R8 100
       24 LOADN                            R9 110
       25 CALL                             R6 3 1
       26 GETIMPORT                        R7 K5 [Color3.fromRGB]
       28 LOADN                            R8 140
       29 LOADN                            R9 142
       30 LOADN                            R10 150
       31 CALL                             R7 3 1
       32 GETIMPORT                        R8 K5 [Color3.fromRGB]
       34 LOADN                            R9 40
       35 LOADN                            R10 40
       36 LOADN                            R11 45
       37 CALL                             R8 3 1
       38 GETIMPORT                        R9 K5 [Color3.fromRGB]
       40 LOADN                            R10 210
       41 LOADN                            R11 212
       42 LOADN                            R12 218
       43 CALL                             R9 3 1
       44 GETIMPORT                        R10 K5 [Color3.fromRGB]
       46 LOADN                            R11 244
       47 LOADN                            R12 244
       48 LOADN                            R13 246
       49 CALL                             R10 3 1
       50 GETIMPORT                        R11 K5 [Color3.fromRGB]
       52 LOADN                            R12 39
       53 LOADN                            R13 41
       54 LOADN                            R14 48
       55 CALL                             R11 3 1
       56 GETIMPORT                        R12 K5 [Color3.fromRGB]
       58 LOADN                            R13 221
       59 LOADN                            R14 223
       60 LOADN                            R15 227
       61 CALL                             R12 3 1
       62 GETIMPORT                        R13 K5 [Color3.fromRGB]
       64 LOADN                            R14 39
       65 LOADN                            R15 41
       66 LOADN                            R16 48
       67 CALL                             R13 3 1
       68 GETTABLEKS                       R14 R1 K6 ["createComputed"]
       70 NEWCLOSURE                       R15 P0
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R4
       74 LOADK                            R16 K7 ["ce-bg-color"]
       75 CALL                             R14 2 1
       76 GETTABLEKS                       R15 R1 K6 ["createComputed"]
       78 NEWCLOSURE                       R16 P1
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R6
       82 LOADK                            R17 K8 ["ce-line-num-color"]
       83 CALL                             R15 2 1
       84 GETTABLEKS                       R16 R1 K6 ["createComputed"]
       86 NEWCLOSURE                       R17 P2
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R8
       90 LOADK                            R18 K9 ["ce-gutter-sep-color"]
       91 CALL                             R16 2 1
       92 GETIMPORT                        R17 K5 [Color3.fromRGB]
       94 LOADN                            R18 115
       95 LOADN                            R19 120
       96 LOADN                            R20 140
       97 CALL                             R17 3 1
       98 GETIMPORT                        R18 K5 [Color3.fromRGB]
      100 LOADN                            R19 184
      101 LOADN                            R20 186
      102 LOADN                            R21 194
      103 CALL                             R18 3 1
      104 GETTABLEKS                       R19 R1 K6 ["createComputed"]
      106 NEWCLOSURE                       R20 P3
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R18
      109 CAPTURE                          VAL R17
      110 LOADK                            R21 K10 ["ce-scrollbar-color"]
      111 CALL                             R19 2 1
      112 GETTABLEKS                       R20 R1 K6 ["createComputed"]
      114 NEWCLOSURE                       R21 P4
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R10
      118 LOADK                            R22 K11 ["ce-cursor-color"]
      119 CALL                             R20 2 1
      120 GETTABLEKS                       R21 R1 K6 ["createComputed"]
      122 NEWCLOSURE                       R22 P5
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R12
      126 LOADK                            R23 K12 ["ce-code-text-color"]
      127 CALL                             R21 2 1
      128 GETUPVAL                         R22 1
      129 GETTABLEKS                       R22 R22 K13 ["measureLineHeight"]
      131 GETUPVAL                         R23 2
      132 LOADN                            R24 16
      133 CALL                             R22 2 1
      134 GETIMPORT                        R23 K15 [game]
      136 LOADK                            R25 K16 ["TextService"]
      137 NAMECALL                         R23 R23 K17 ["GetService"]
      139 CALL                             R23 2 1
      140 GETIMPORT                        R25 K20 [Instance.new]
      142 LOADK                            R26 K21 ["GetTextBoundsParams"]
      143 CALL                             R25 1 1
      144 LOADK                            R26 K22 ["0"]
      145 SETTABLEKS                       R26 R25 K23 ["Text"]
      147 GETUPVAL                         R26 2
      148 SETTABLEKS                       R26 R25 K24 ["Font"]
      150 LOADN                            R26 16
      151 SETTABLEKS                       R26 R25 K25 ["Size"]
      153 LOADN                            R26 232
      154 SETTABLEKS                       R26 R25 K26 ["Width"]
      156 GETIMPORT                        R26 K28 [pcall]
      158 NEWCLOSURE                       R27 P6
      159 CAPTURE                          VAL R23
      160 CAPTURE                          VAL R25
      161 CALL                             R26 1 2
      162 JUMPIFNOT                        R26 ; [+3]
      163 GETTABLEKS                       R24 R27 K29 ["X"]
      165 JUMP                             ; [+1]
      166 LOADK                            R24 K30 [9.6]
      167 DUPCLOSURE                       R25 K31 [PROTO_8]
      168 DUPCLOSURE                       R26 K32 [PROTO_9]
      169 DUPCLOSURE                       R27 K33 [PROTO_10]
      170 CAPTURE                          VAL R25
      171 GETTABLEKS                       R28 R1 K6 ["createComputed"]
      173 NEWCLOSURE                       R29 P10
      174 CAPTURE                          UPVAL U3
      175 CAPTURE                          VAL R0
      176 CAPTURE                          UPVAL U4
      177 LOADK                            R30 K34 ["ce-rich-text-enabled"]
      178 CALL                             R28 2 1
      179 GETTABLEKS                       R29 R1 K35 ["createRef"]
      181 LOADK                            R30 K36 ["container"]
      182 CALL                             R29 1 1
      183 NEWCLOSURE                       R30 P11
      184 CAPTURE                          UPVAL U5
      185 CAPTURE                          UPVAL U2
      186 CAPTURE                          VAL R25
      187 CAPTURE                          VAL R24
      188 NEWCLOSURE                       R31 P12
      189 CAPTURE                          VAL R30
      190 NEWCLOSURE                       R32 P13
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R0
      193 CAPTURE                          UPVAL U4
      194 CAPTURE                          VAL R3
      195 NEWCLOSURE                       R33 P14
      196 CAPTURE                          VAL R2
      197 CAPTURE                          VAL R0
      198 CAPTURE                          UPVAL U4
      199 CAPTURE                          VAL R3
      200 MOVE                             R35 R2
      201 GETTABLEKS                       R36 R0 K38 ["text"]
      203 CALL                             R35 1 1
      204 ORK                              R34 R35 K37 [""]
      205 DUPTABLE                         R35 K40 [{"current"}]
      206 GETIMPORT                        R36 K43 [string.split]
      208 MOVE                             R37 R34
      209 LOADK                            R38 K44 ["\n"]
      210 CALL                             R36 2 1
      211 SETTABLEKS                       R36 R35 K39 ["current"]
      213 DUPTABLE                         R36 K40 [{"current"}]
      214 SETTABLEKS                       R34 R36 K39 ["current"]
      216 GETTABLEKS                       R37 R1 K45 ["createStore"]
      218 DUPTABLE                         R38 K47 [{"lines"}]
      219 MOVE                             R39 R33
      220 GETTABLEKS                       R40 R35 K39 ["current"]
      222 CALL                             R39 1 1
      223 SETTABLEKS                       R39 R38 K46 ["lines"]
      225 CALL                             R37 1 2
      226 GETTABLEKS                       R39 R1 K48 ["createSignal"]
      228 GETTABLEKS                       R41 R35 K39 ["current"]
      230 LENGTH                           R40 R41
      231 CALL                             R39 1 2
      232 GETTABLEKS                       R41 R1 K48 ["createSignal"]
      234 GETTABLEKS                       R43 R35 K39 ["current"]
      236 LOADN                            R44 0
      237 MOVE                             R45 R43
      238 LOADNIL                          R46
      239 LOADNIL                          R47
      240 FORGPREP                         R45
      241 MOVE                             R51 R44
      242 MOVE                             R52 R30
      243 MOVE                             R53 R49
      244 CALL                             R52 1 -1
      245 FASTCALL                         MATH_MAX ; [+2]
      246 GETIMPORT                        R50 K51 [math.max]
      248 CALL                             R50 -1 1
      249 MOVE                             R44 R50
      250 FORGLOOP                         R45 2 ; [-10]
      252 MOVE                             R42 R44
      253 CALL                             R41 1 2
      254 GETTABLEKS                       R43 R1 K48 ["createSignal"]
      256 LOADNIL                          R44
      257 CALL                             R43 1 2
      258 GETTABLEKS                       R45 R1 K48 ["createSignal"]
      260 LOADNIL                          R46
      261 CALL                             R45 1 2
      262 NEWCLOSURE                       R47 P15
      263 CAPTURE                          VAL R35
      264 NEWCLOSURE                       R48 P16
      265 CAPTURE                          VAL R35
      266 NEWCLOSURE                       R49 P17
      267 CAPTURE                          VAL R35
      268 GETUPVAL                         R50 6
      269 GETTABLEKS                       R50 R50 K19 ["new"]
      271 LOADN                            R51 100
      272 CALL                             R50 1 1
      273 GETTABLEKS                       R51 R1 K48 ["createSignal"]
      275 LOADB                            R52 0
      276 CALL                             R51 1 2
      277 GETTABLEKS                       R53 R1 K48 ["createSignal"]
      279 LOADB                            R54 0
      280 CALL                             R53 1 2
      281 LOADNIL                          R55
      282 NEWCLOSURE                       R56 P18
      283 CAPTURE                          VAL R35
      284 CAPTURE                          VAL R2
      285 CAPTURE                          VAL R43
      286 CAPTURE                          VAL R45
      287 NEWCLOSURE                       R57 P19
      288 CAPTURE                          VAL R52
      289 CAPTURE                          VAL R50
      290 CAPTURE                          VAL R54
      291 MOVE                             R60 R56
      292 CALL                             R60 0 1
      293 NAMECALL                         R58 R50 K52 ["push"]
      295 CALL                             R58 2 0
      296 NEWCLOSURE                       R58 P20
      297 CAPTURE                          REF R55
      298 CAPTURE                          VAL R50
      299 CAPTURE                          VAL R56
      300 CAPTURE                          VAL R52
      301 CAPTURE                          VAL R54
      302 NEWCLOSURE                       R59 P21
      303 CAPTURE                          REF R55
      304 CAPTURE                          VAL R50
      305 CAPTURE                          VAL R56
      306 CAPTURE                          VAL R52
      307 CAPTURE                          VAL R54
      308 NEWCLOSURE                       R60 P22
      309 CAPTURE                          VAL R35
      310 CAPTURE                          VAL R36
      311 CAPTURE                          VAL R38
      312 CAPTURE                          VAL R37
      313 CAPTURE                          VAL R33
      314 CAPTURE                          VAL R40
      315 CAPTURE                          VAL R42
      316 CAPTURE                          VAL R30
      317 CAPTURE                          VAL R44
      318 CAPTURE                          VAL R46
      319 CAPTURE                          VAL R2
      320 CAPTURE                          VAL R0
      321 NEWCLOSURE                       R61 P23
      322 CAPTURE                          VAL R2
      323 CAPTURE                          VAL R45
      324 CAPTURE                          VAL R43
      325 NEWCLOSURE                       R62 P24
      326 CAPTURE                          VAL R2
      327 CAPTURE                          VAL R45
      328 CAPTURE                          VAL R43
      329 CAPTURE                          VAL R35
      330 GETTABLEKS                       R63 R1 K53 ["createEffect"]
      332 NEWCLOSURE                       R64 P25
      333 CAPTURE                          VAL R0
      334 CAPTURE                          VAL R36
      335 CAPTURE                          VAL R35
      336 CAPTURE                          VAL R38
      337 CAPTURE                          VAL R37
      338 CAPTURE                          VAL R33
      339 CAPTURE                          VAL R40
      340 CAPTURE                          VAL R42
      341 CAPTURE                          VAL R30
      342 CAPTURE                          VAL R50
      343 CAPTURE                          VAL R56
      344 CAPTURE                          VAL R52
      345 CAPTURE                          VAL R54
      346 LOADK                            R65 K54 ["ce-sync-external"]
      347 CALL                             R63 2 0
      348 GETTABLEKS                       R63 R1 K53 ["createEffect"]
      350 NEWCLOSURE                       R64 P26
      351 CAPTURE                          VAL R3
      352 CAPTURE                          VAL R38
      353 CAPTURE                          VAL R37
      354 CAPTURE                          VAL R33
      355 CAPTURE                          VAL R35
      356 LOADK                            R65 K55 ["ce-rehighlight-on-theme"]
      357 CALL                             R63 2 0
      358 NEWCLOSURE                       R63 P27
      359 CAPTURE                          VAL R0
      360 GETTABLEKS                       R64 R1 K53 ["createEffect"]
      362 NEWCLOSURE                       R65 P28
      363 CAPTURE                          VAL R0
      364 CAPTURE                          VAL R44
      365 CAPTURE                          VAL R46
      366 LOADK                            R66 K56 ["ce-clear-when-inactive"]
      367 CALL                             R64 2 0
      368 GETTABLEKS                       R64 R1 K48 ["createSignal"]
      370 LOADB                            R65 1
      371 CALL                             R64 1 2
      372 GETTABLEKS                       R66 R1 K53 ["createEffect"]
      374 NEWCLOSURE                       R67 P29
      375 CAPTURE                          VAL R43
      376 CAPTURE                          VAL R45
      377 CAPTURE                          VAL R65
      378 LOADK                            R68 K57 ["ce-cursor-blink"]
      379 CALL                             R66 2 0
      380 GETTABLEKS                       R66 R1 K6 ["createComputed"]
      382 NEWCLOSURE                       R67 P30
      383 CAPTURE                          VAL R0
      384 CAPTURE                          VAL R43
      385 CAPTURE                          VAL R45
      386 CAPTURE                          VAL R64
      387 LOADK                            R68 K58 ["ce-cursor-visible"]
      388 CALL                             R66 2 1
      389 GETTABLEKS                       R67 R1 K6 ["createComputed"]
      391 NEWCLOSURE                       R68 P31
      392 CAPTURE                          VAL R43
      393 CAPTURE                          VAL R47
      394 CAPTURE                          VAL R35
      395 CAPTURE                          UPVAL U5
      396 CAPTURE                          UPVAL U2
      397 CAPTURE                          VAL R25
      398 CAPTURE                          VAL R24
      399 CAPTURE                          VAL R22
      400 LOADK                            R69 K59 ["ce-cursor-pos"]
      401 CALL                             R67 2 1
      402 GETTABLEKS                       R68 R1 K6 ["createComputed"]
      404 NEWCLOSURE                       R69 P32
      405 CAPTURE                          VAL R43
      406 CAPTURE                          VAL R22
      407 LOADK                            R70 K60 ["ce-cursor-size"]
      408 CALL                             R68 2 1
      409 GETTABLEKS                       R69 R1 K6 ["createComputed"]
      411 NEWCLOSURE                       R70 P33
      412 CAPTURE                          VAL R45
      413 CAPTURE                          VAL R43
      414 CAPTURE                          VAL R47
      415 CAPTURE                          VAL R35
      416 CAPTURE                          UPVAL U5
      417 CAPTURE                          UPVAL U2
      418 CAPTURE                          VAL R25
      419 CAPTURE                          VAL R24
      420 CAPTURE                          VAL R22
      421 LOADK                            R71 K61 ["ce-selection-rects"]
      422 CALL                             R69 2 1
      423 NEWTABLE                         R70 0 0
      425 GETTABLEKS                       R71 R1 K53 ["createEffect"]
      427 NEWCLOSURE                       R72 P34
      428 CAPTURE                          VAL R69
      429 CAPTURE                          VAL R2
      430 CAPTURE                          VAL R29
      431 CAPTURE                          VAL R70
      432 CAPTURE                          UPVAL U7
      433 LOADK                            R73 K62 ["ce-selection-rect-frames"]
      434 CALL                             R71 2 0
      435 GETTABLEKS                       R71 R1 K6 ["createComputed"]
      437 NEWCLOSURE                       R72 P35
      438 CAPTURE                          VAL R39
      439 CAPTURE                          VAL R41
      440 CAPTURE                          VAL R24
      441 CAPTURE                          VAL R22
      442 LOADK                            R73 K63 ["ce-overlay-size"]
      443 CALL                             R71 2 1
      444 LOADB                            R72 0
      445 NEWCLOSURE                       R73 P36
      446 CAPTURE                          VAL R2
      447 CAPTURE                          VAL R29
      448 CAPTURE                          VAL R35
      449 CAPTURE                          VAL R22
      450 CAPTURE                          UPVAL U5
      451 CAPTURE                          UPVAL U2
      452 CAPTURE                          VAL R24
      453 CAPTURE                          VAL R26
      454 NEWCLOSURE                       R74 P37
      455 CAPTURE                          VAL R2
      456 CAPTURE                          VAL R0
      457 CAPTURE                          REF R72
      458 CAPTURE                          VAL R73
      459 CAPTURE                          VAL R35
      460 CAPTURE                          VAL R44
      461 CAPTURE                          VAL R46
      462 NEWCLOSURE                       R75 P38
      463 CAPTURE                          REF R72
      464 CAPTURE                          VAL R2
      465 CAPTURE                          VAL R43
      466 CAPTURE                          VAL R73
      467 CAPTURE                          VAL R44
      468 CAPTURE                          VAL R35
      469 NEWCLOSURE                       R76 P39
      470 CAPTURE                          REF R72
      471 NEWCLOSURE                       R77 P40
      472 CAPTURE                          VAL R35
      473 CAPTURE                          VAL R36
      474 CAPTURE                          REF R55
      475 CAPTURE                          VAL R50
      476 CAPTURE                          VAL R56
      477 CAPTURE                          VAL R52
      478 CAPTURE                          VAL R54
      479 CAPTURE                          VAL R2
      480 CAPTURE                          VAL R0
      481 NEWCLOSURE                       R78 P41
      482 CAPTURE                          VAL R2
      483 CAPTURE                          VAL R41
      484 CAPTURE                          VAL R42
      485 CAPTURE                          VAL R35
      486 CAPTURE                          VAL R30
      487 NEWCLOSURE                       R79 P42
      488 CAPTURE                          VAL R2
      489 CAPTURE                          VAL R37
      490 CAPTURE                          VAL R35
      491 CAPTURE                          VAL R0
      492 CAPTURE                          UPVAL U4
      493 CAPTURE                          VAL R3
      494 CAPTURE                          VAL R38
      495 CAPTURE                          VAL R40
      496 CAPTURE                          VAL R42
      497 CAPTURE                          VAL R30
      498 NEWCLOSURE                       R80 P43
      499 CAPTURE                          VAL R2
      500 CAPTURE                          VAL R37
      501 CAPTURE                          VAL R35
      502 CAPTURE                          VAL R0
      503 CAPTURE                          UPVAL U4
      504 CAPTURE                          VAL R3
      505 CAPTURE                          VAL R38
      506 CAPTURE                          VAL R40
      507 CAPTURE                          VAL R42
      508 CAPTURE                          VAL R30
      509 NEWCLOSURE                       R81 P44
      510 CAPTURE                          VAL R2
      511 CAPTURE                          VAL R45
      512 CAPTURE                          VAL R43
      513 CAPTURE                          VAL R47
      514 CAPTURE                          VAL R35
      515 CAPTURE                          UPVAL U5
      516 CAPTURE                          UPVAL U2
      517 CAPTURE                          VAL R25
      518 CAPTURE                          VAL R24
      519 CAPTURE                          VAL R38
      520 CAPTURE                          VAL R37
      521 CAPTURE                          VAL R32
      522 CAPTURE                          VAL R41
      523 CAPTURE                          VAL R42
      524 CAPTURE                          VAL R30
      525 CAPTURE                          VAL R80
      526 NEWCLOSURE                       R82 P45
      527 CAPTURE                          VAL R2
      528 CAPTURE                          VAL R43
      529 CAPTURE                          VAL R45
      530 CAPTURE                          VAL R81
      531 CAPTURE                          VAL R35
      532 CAPTURE                          VAL R38
      533 CAPTURE                          VAL R37
      534 CAPTURE                          VAL R33
      535 CAPTURE                          VAL R40
      536 CAPTURE                          VAL R42
      537 CAPTURE                          VAL R30
      538 CAPTURE                          VAL R44
      539 CAPTURE                          VAL R46
      540 CAPTURE                          VAL R36
      541 CAPTURE                          REF R55
      542 CAPTURE                          VAL R50
      543 CAPTURE                          VAL R56
      544 CAPTURE                          VAL R52
      545 CAPTURE                          VAL R54
      546 CAPTURE                          VAL R0
      547 NEWTABLE                         R83 64 0
      549 GETIMPORT                        R84 K67 [Enum.KeyCode.A]
      551 LOADK                            R85 K68 ["a"]
      552 SETTABLE                         R85 R83 R84
      553 GETIMPORT                        R84 K70 [Enum.KeyCode.B]
      555 LOADK                            R85 K71 ["b"]
      556 SETTABLE                         R85 R83 R84
      557 GETIMPORT                        R84 K73 [Enum.KeyCode.C]
      559 LOADK                            R85 K74 ["c"]
      560 SETTABLE                         R85 R83 R84
      561 GETIMPORT                        R84 K76 [Enum.KeyCode.D]
      563 LOADK                            R85 K77 ["d"]
      564 SETTABLE                         R85 R83 R84
      565 GETIMPORT                        R84 K79 [Enum.KeyCode.E]
      567 LOADK                            R85 K80 ["e"]
      568 SETTABLE                         R85 R83 R84
      569 GETIMPORT                        R84 K82 [Enum.KeyCode.F]
      571 LOADK                            R85 K83 ["f"]
      572 SETTABLE                         R85 R83 R84
      573 GETIMPORT                        R84 K85 [Enum.KeyCode.G]
      575 LOADK                            R85 K86 ["g"]
      576 SETTABLE                         R85 R83 R84
      577 GETIMPORT                        R84 K88 [Enum.KeyCode.H]
      579 LOADK                            R85 K89 ["h"]
      580 SETTABLE                         R85 R83 R84
      581 GETIMPORT                        R84 K91 [Enum.KeyCode.I]
      583 LOADK                            R85 K92 ["i"]
      584 SETTABLE                         R85 R83 R84
      585 GETIMPORT                        R84 K94 [Enum.KeyCode.J]
      587 LOADK                            R85 K95 ["j"]
      588 SETTABLE                         R85 R83 R84
      589 GETIMPORT                        R84 K97 [Enum.KeyCode.K]
      591 LOADK                            R85 K98 ["k"]
      592 SETTABLE                         R85 R83 R84
      593 GETIMPORT                        R84 K100 [Enum.KeyCode.L]
      595 LOADK                            R85 K101 ["l"]
      596 SETTABLE                         R85 R83 R84
      597 GETIMPORT                        R84 K103 [Enum.KeyCode.M]
      599 LOADK                            R85 K104 ["m"]
      600 SETTABLE                         R85 R83 R84
      601 GETIMPORT                        R84 K106 [Enum.KeyCode.N]
      603 LOADK                            R85 K107 ["n"]
      604 SETTABLE                         R85 R83 R84
      605 GETIMPORT                        R84 K109 [Enum.KeyCode.O]
      607 LOADK                            R85 K110 ["o"]
      608 SETTABLE                         R85 R83 R84
      609 GETIMPORT                        R84 K112 [Enum.KeyCode.P]
      611 LOADK                            R85 K113 ["p"]
      612 SETTABLE                         R85 R83 R84
      613 GETIMPORT                        R84 K115 [Enum.KeyCode.Q]
      615 LOADK                            R85 K116 ["q"]
      616 SETTABLE                         R85 R83 R84
      617 GETIMPORT                        R84 K118 [Enum.KeyCode.R]
      619 LOADK                            R85 K119 ["r"]
      620 SETTABLE                         R85 R83 R84
      621 GETIMPORT                        R84 K121 [Enum.KeyCode.S]
      623 LOADK                            R85 K122 ["s"]
      624 SETTABLE                         R85 R83 R84
      625 GETIMPORT                        R84 K124 [Enum.KeyCode.T]
      627 LOADK                            R85 K125 ["t"]
      628 SETTABLE                         R85 R83 R84
      629 GETIMPORT                        R84 K127 [Enum.KeyCode.U]
      631 LOADK                            R85 K128 ["u"]
      632 SETTABLE                         R85 R83 R84
      633 GETIMPORT                        R84 K130 [Enum.KeyCode.V]
      635 LOADK                            R85 K131 ["v"]
      636 SETTABLE                         R85 R83 R84
      637 GETIMPORT                        R84 K133 [Enum.KeyCode.W]
      639 LOADK                            R85 K134 ["w"]
      640 SETTABLE                         R85 R83 R84
      641 GETIMPORT                        R84 K135 [Enum.KeyCode.X]
      643 LOADK                            R85 K136 ["x"]
      644 SETTABLE                         R85 R83 R84
      645 GETIMPORT                        R84 K138 [Enum.KeyCode.Y]
      647 LOADK                            R85 K139 ["y"]
      648 SETTABLE                         R85 R83 R84
      649 GETIMPORT                        R84 K141 [Enum.KeyCode.Z]
      651 LOADK                            R85 K142 ["z"]
      652 SETTABLE                         R85 R83 R84
      653 GETIMPORT                        R84 K144 [Enum.KeyCode.Zero]
      655 LOADK                            R85 K22 ["0"]
      656 SETTABLE                         R85 R83 R84
      657 GETIMPORT                        R84 K146 [Enum.KeyCode.One]
      659 LOADK                            R85 K147 ["1"]
      660 SETTABLE                         R85 R83 R84
      661 GETIMPORT                        R84 K149 [Enum.KeyCode.Two]
      663 LOADK                            R85 K150 ["2"]
      664 SETTABLE                         R85 R83 R84
      665 GETIMPORT                        R84 K152 [Enum.KeyCode.Three]
      667 LOADK                            R85 K153 ["3"]
      668 SETTABLE                         R85 R83 R84
      669 GETIMPORT                        R84 K155 [Enum.KeyCode.Four]
      671 LOADK                            R85 K156 ["4"]
      672 SETTABLE                         R85 R83 R84
      673 GETIMPORT                        R84 K158 [Enum.KeyCode.Five]
      675 LOADK                            R85 K159 ["5"]
      676 SETTABLE                         R85 R83 R84
      677 GETIMPORT                        R84 K161 [Enum.KeyCode.Six]
      679 LOADK                            R85 K162 ["6"]
      680 SETTABLE                         R85 R83 R84
      681 GETIMPORT                        R84 K164 [Enum.KeyCode.Seven]
      683 LOADK                            R85 K165 ["7"]
      684 SETTABLE                         R85 R83 R84
      685 GETIMPORT                        R84 K167 [Enum.KeyCode.Eight]
      687 LOADK                            R85 K168 ["8"]
      688 SETTABLE                         R85 R83 R84
      689 GETIMPORT                        R84 K170 [Enum.KeyCode.Nine]
      691 LOADK                            R85 K171 ["9"]
      692 SETTABLE                         R85 R83 R84
      693 GETIMPORT                        R84 K173 [Enum.KeyCode.Space]
      695 LOADK                            R85 K174 [" "]
      696 SETTABLE                         R85 R83 R84
      697 GETIMPORT                        R84 K176 [Enum.KeyCode.Period]
      699 LOADK                            R85 K177 ["."]
      700 SETTABLE                         R85 R83 R84
      701 GETIMPORT                        R84 K179 [Enum.KeyCode.Comma]
      703 LOADK                            R85 K180 [","]
      704 SETTABLE                         R85 R83 R84
      705 GETIMPORT                        R84 K182 [Enum.KeyCode.Semicolon]
      707 LOADK                            R85 K183 [";"]
      708 SETTABLE                         R85 R83 R84
      709 GETIMPORT                        R84 K185 [Enum.KeyCode.Quote]
      711 LOADK                            R85 K186 ["'"]
      712 SETTABLE                         R85 R83 R84
      713 GETIMPORT                        R84 K188 [Enum.KeyCode.LeftBracket]
      715 LOADK                            R85 K189 ["["]
      716 SETTABLE                         R85 R83 R84
      717 GETIMPORT                        R84 K191 [Enum.KeyCode.RightBracket]
      719 LOADK                            R85 K192 ["]"]
      720 SETTABLE                         R85 R83 R84
      721 GETIMPORT                        R84 K194 [Enum.KeyCode.BackSlash]
      723 LOADK                            R85 K195 ["\\"]
      724 SETTABLE                         R85 R83 R84
      725 GETIMPORT                        R84 K197 [Enum.KeyCode.Slash]
      727 LOADK                            R85 K198 ["/"]
      728 SETTABLE                         R85 R83 R84
      729 GETIMPORT                        R84 K200 [Enum.KeyCode.Minus]
      731 LOADK                            R85 K201 ["-"]
      732 SETTABLE                         R85 R83 R84
      733 GETIMPORT                        R84 K203 [Enum.KeyCode.Equals]
      735 LOADK                            R85 K204 ["="]
      736 SETTABLE                         R85 R83 R84
      737 GETIMPORT                        R84 K206 [Enum.KeyCode.Backquote]
      739 LOADK                            R85 K207 ["`"]
      740 SETTABLE                         R85 R83 R84
      741 GETIMPORT                        R84 K209 [Enum.KeyCode.Tab]
      743 LOADK                            R85 K210 ["\t"]
      744 SETTABLE                         R85 R83 R84
      745 NEWTABLE                         R84 64 0
      747 GETIMPORT                        R85 K67 [Enum.KeyCode.A]
      749 LOADK                            R86 K66 ["A"]
      750 SETTABLE                         R86 R84 R85
      751 GETIMPORT                        R85 K70 [Enum.KeyCode.B]
      753 LOADK                            R86 K69 ["B"]
      754 SETTABLE                         R86 R84 R85
      755 GETIMPORT                        R85 K73 [Enum.KeyCode.C]
      757 LOADK                            R86 K72 ["C"]
      758 SETTABLE                         R86 R84 R85
      759 GETIMPORT                        R85 K76 [Enum.KeyCode.D]
      761 LOADK                            R86 K75 ["D"]
      762 SETTABLE                         R86 R84 R85
      763 GETIMPORT                        R85 K79 [Enum.KeyCode.E]
      765 LOADK                            R86 K78 ["E"]
      766 SETTABLE                         R86 R84 R85
      767 GETIMPORT                        R85 K82 [Enum.KeyCode.F]
      769 LOADK                            R86 K81 ["F"]
      770 SETTABLE                         R86 R84 R85
      771 GETIMPORT                        R85 K85 [Enum.KeyCode.G]
      773 LOADK                            R86 K84 ["G"]
      774 SETTABLE                         R86 R84 R85
      775 GETIMPORT                        R85 K88 [Enum.KeyCode.H]
      777 LOADK                            R86 K87 ["H"]
      778 SETTABLE                         R86 R84 R85
      779 GETIMPORT                        R85 K91 [Enum.KeyCode.I]
      781 LOADK                            R86 K90 ["I"]
      782 SETTABLE                         R86 R84 R85
      783 GETIMPORT                        R85 K94 [Enum.KeyCode.J]
      785 LOADK                            R86 K93 ["J"]
      786 SETTABLE                         R86 R84 R85
      787 GETIMPORT                        R85 K97 [Enum.KeyCode.K]
      789 LOADK                            R86 K96 ["K"]
      790 SETTABLE                         R86 R84 R85
      791 GETIMPORT                        R85 K100 [Enum.KeyCode.L]
      793 LOADK                            R86 K99 ["L"]
      794 SETTABLE                         R86 R84 R85
      795 GETIMPORT                        R85 K103 [Enum.KeyCode.M]
      797 LOADK                            R86 K102 ["M"]
      798 SETTABLE                         R86 R84 R85
      799 GETIMPORT                        R85 K106 [Enum.KeyCode.N]
      801 LOADK                            R86 K105 ["N"]
      802 SETTABLE                         R86 R84 R85
      803 GETIMPORT                        R85 K109 [Enum.KeyCode.O]
      805 LOADK                            R86 K108 ["O"]
      806 SETTABLE                         R86 R84 R85
      807 GETIMPORT                        R85 K112 [Enum.KeyCode.P]
      809 LOADK                            R86 K111 ["P"]
      810 SETTABLE                         R86 R84 R85
      811 GETIMPORT                        R85 K115 [Enum.KeyCode.Q]
      813 LOADK                            R86 K114 ["Q"]
      814 SETTABLE                         R86 R84 R85
      815 GETIMPORT                        R85 K118 [Enum.KeyCode.R]
      817 LOADK                            R86 K117 ["R"]
      818 SETTABLE                         R86 R84 R85
      819 GETIMPORT                        R85 K121 [Enum.KeyCode.S]
      821 LOADK                            R86 K120 ["S"]
      822 SETTABLE                         R86 R84 R85
      823 GETIMPORT                        R85 K124 [Enum.KeyCode.T]
      825 LOADK                            R86 K123 ["T"]
      826 SETTABLE                         R86 R84 R85
      827 GETIMPORT                        R85 K127 [Enum.KeyCode.U]
      829 LOADK                            R86 K126 ["U"]
      830 SETTABLE                         R86 R84 R85
      831 GETIMPORT                        R85 K130 [Enum.KeyCode.V]
      833 LOADK                            R86 K129 ["V"]
      834 SETTABLE                         R86 R84 R85
      835 GETIMPORT                        R85 K133 [Enum.KeyCode.W]
      837 LOADK                            R86 K132 ["W"]
      838 SETTABLE                         R86 R84 R85
      839 GETIMPORT                        R85 K135 [Enum.KeyCode.X]
      841 LOADK                            R86 K29 ["X"]
      842 SETTABLE                         R86 R84 R85
      843 GETIMPORT                        R85 K138 [Enum.KeyCode.Y]
      845 LOADK                            R86 K137 ["Y"]
      846 SETTABLE                         R86 R84 R85
      847 GETIMPORT                        R85 K141 [Enum.KeyCode.Z]
      849 LOADK                            R86 K140 ["Z"]
      850 SETTABLE                         R86 R84 R85
      851 GETIMPORT                        R85 K144 [Enum.KeyCode.Zero]
      853 LOADK                            R86 K211 [")"]
      854 SETTABLE                         R86 R84 R85
      855 GETIMPORT                        R85 K146 [Enum.KeyCode.One]
      857 LOADK                            R86 K212 ["!"]
      858 SETTABLE                         R86 R84 R85
      859 GETIMPORT                        R85 K149 [Enum.KeyCode.Two]
      861 LOADK                            R86 K213 ["@"]
      862 SETTABLE                         R86 R84 R85
      863 GETIMPORT                        R85 K152 [Enum.KeyCode.Three]
      865 LOADK                            R86 K214 ["#"]
      866 SETTABLE                         R86 R84 R85
      867 GETIMPORT                        R85 K155 [Enum.KeyCode.Four]
      869 LOADK                            R86 K215 ["$"]
      870 SETTABLE                         R86 R84 R85
      871 GETIMPORT                        R85 K158 [Enum.KeyCode.Five]
      873 LOADK                            R86 K216 ["%"]
      874 SETTABLE                         R86 R84 R85
      875 GETIMPORT                        R85 K161 [Enum.KeyCode.Six]
      877 LOADK                            R86 K217 ["^"]
      878 SETTABLE                         R86 R84 R85
      879 GETIMPORT                        R85 K164 [Enum.KeyCode.Seven]
      881 LOADK                            R86 K218 ["&"]
      882 SETTABLE                         R86 R84 R85
      883 GETIMPORT                        R85 K167 [Enum.KeyCode.Eight]
      885 LOADK                            R86 K219 ["*"]
      886 SETTABLE                         R86 R84 R85
      887 GETIMPORT                        R85 K170 [Enum.KeyCode.Nine]
      889 LOADK                            R86 K220 ["("]
      890 SETTABLE                         R86 R84 R85
      891 GETIMPORT                        R85 K176 [Enum.KeyCode.Period]
      893 LOADK                            R86 K221 [">"]
      894 SETTABLE                         R86 R84 R85
      895 GETIMPORT                        R85 K179 [Enum.KeyCode.Comma]
      897 LOADK                            R86 K222 ["<"]
      898 SETTABLE                         R86 R84 R85
      899 GETIMPORT                        R85 K182 [Enum.KeyCode.Semicolon]
      901 LOADK                            R86 K223 [":"]
      902 SETTABLE                         R86 R84 R85
      903 GETIMPORT                        R85 K185 [Enum.KeyCode.Quote]
      905 LOADK                            R86 K224 ["\""]
      906 SETTABLE                         R86 R84 R85
      907 GETIMPORT                        R85 K188 [Enum.KeyCode.LeftBracket]
      909 LOADK                            R86 K225 ["{"]
      910 SETTABLE                         R86 R84 R85
      911 GETIMPORT                        R85 K191 [Enum.KeyCode.RightBracket]
      913 LOADK                            R86 K226 ["}"]
      914 SETTABLE                         R86 R84 R85
      915 GETIMPORT                        R85 K194 [Enum.KeyCode.BackSlash]
      917 LOADK                            R86 K227 ["|"]
      918 SETTABLE                         R86 R84 R85
      919 GETIMPORT                        R85 K197 [Enum.KeyCode.Slash]
      921 LOADK                            R86 K228 ["?"]
      922 SETTABLE                         R86 R84 R85
      923 GETIMPORT                        R85 K200 [Enum.KeyCode.Minus]
      925 LOADK                            R86 K229 ["_"]
      926 SETTABLE                         R86 R84 R85
      927 GETIMPORT                        R85 K203 [Enum.KeyCode.Equals]
      929 LOADK                            R86 K230 ["+"]
      930 SETTABLE                         R86 R84 R85
      931 GETIMPORT                        R85 K206 [Enum.KeyCode.Backquote]
      933 LOADK                            R86 K231 ["~"]
      934 SETTABLE                         R86 R84 R85
      935 NEWCLOSURE                       R85 P46
      936 CAPTURE                          VAL R2
      937 CAPTURE                          VAL R43
      938 CAPTURE                          VAL R45
      939 CAPTURE                          VAL R81
      940 CAPTURE                          VAL R47
      941 CAPTURE                          VAL R35
      942 CAPTURE                          UPVAL U5
      943 CAPTURE                          UPVAL U2
      944 CAPTURE                          VAL R25
      945 CAPTURE                          VAL R24
      946 CAPTURE                          VAL R38
      947 CAPTURE                          VAL R37
      948 CAPTURE                          VAL R32
      949 CAPTURE                          VAL R41
      950 CAPTURE                          VAL R42
      951 CAPTURE                          VAL R30
      952 CAPTURE                          VAL R44
      953 CAPTURE                          VAL R46
      954 CAPTURE                          VAL R36
      955 CAPTURE                          REF R55
      956 CAPTURE                          VAL R50
      957 CAPTURE                          VAL R56
      958 CAPTURE                          VAL R52
      959 CAPTURE                          VAL R54
      960 CAPTURE                          VAL R0
      961 NEWCLOSURE                       R86 P47
      962 CAPTURE                          VAL R2
      963 CAPTURE                          VAL R43
      964 CAPTURE                          VAL R45
      965 CAPTURE                          VAL R81
      966 CAPTURE                          VAL R44
      967 CAPTURE                          VAL R46
      968 CAPTURE                          VAL R35
      969 CAPTURE                          VAL R36
      970 CAPTURE                          REF R55
      971 CAPTURE                          VAL R50
      972 CAPTURE                          VAL R56
      973 CAPTURE                          VAL R52
      974 CAPTURE                          VAL R54
      975 CAPTURE                          VAL R0
      976 CAPTURE                          VAL R47
      977 CAPTURE                          UPVAL U5
      978 CAPTURE                          UPVAL U2
      979 CAPTURE                          VAL R25
      980 CAPTURE                          VAL R24
      981 CAPTURE                          VAL R38
      982 CAPTURE                          VAL R37
      983 CAPTURE                          VAL R32
      984 CAPTURE                          VAL R41
      985 CAPTURE                          VAL R42
      986 CAPTURE                          VAL R30
      987 CAPTURE                          VAL R80
      988 NEWCLOSURE                       R87 P48
      989 CAPTURE                          VAL R2
      990 CAPTURE                          VAL R43
      991 CAPTURE                          VAL R45
      992 CAPTURE                          VAL R81
      993 CAPTURE                          VAL R44
      994 CAPTURE                          VAL R46
      995 CAPTURE                          VAL R35
      996 CAPTURE                          VAL R36
      997 CAPTURE                          REF R55
      998 CAPTURE                          VAL R50
      999 CAPTURE                          VAL R56
     1000 CAPTURE                          VAL R52
     1001 CAPTURE                          VAL R54
     1002 CAPTURE                          VAL R0
     1003 CAPTURE                          VAL R47
     1004 CAPTURE                          UPVAL U5
     1005 CAPTURE                          UPVAL U2
     1006 CAPTURE                          VAL R25
     1007 CAPTURE                          VAL R24
     1008 CAPTURE                          VAL R38
     1009 CAPTURE                          VAL R37
     1010 CAPTURE                          VAL R32
     1011 CAPTURE                          VAL R41
     1012 CAPTURE                          VAL R42
     1013 CAPTURE                          VAL R30
     1014 CAPTURE                          VAL R80
     1015 NEWCLOSURE                       R88 P49
     1016 CAPTURE                          VAL R2
     1017 CAPTURE                          VAL R43
     1018 CAPTURE                          VAL R45
     1019 CAPTURE                          VAL R81
     1020 CAPTURE                          VAL R47
     1021 CAPTURE                          VAL R35
     1022 CAPTURE                          VAL R79
     1023 CAPTURE                          VAL R44
     1024 CAPTURE                          VAL R46
     1025 CAPTURE                          VAL R36
     1026 CAPTURE                          REF R55
     1027 CAPTURE                          VAL R50
     1028 CAPTURE                          VAL R56
     1029 CAPTURE                          VAL R52
     1030 CAPTURE                          VAL R54
     1031 CAPTURE                          VAL R0
     1032 NEWCLOSURE                       R89 P50
     1033 CAPTURE                          VAL R2
     1034 CAPTURE                          VAL R43
     1035 CAPTURE                          VAL R47
     1036 CAPTURE                          VAL R35
     1037 CAPTURE                          UPVAL U5
     1038 CAPTURE                          VAL R45
     1039 CAPTURE                          VAL R46
     1040 CAPTURE                          VAL R44
     1041 LOADNIL                          R90
     1042 LOADNIL                          R91
     1043 NEWCLOSURE                       R92 P51
     1044 CAPTURE                          REF R90
     1045 CAPTURE                          REF R91
     1046 NEWCLOSURE                       R93 P52
     1047 CAPTURE                          REF R90
     1048 CAPTURE                          REF R91
     1049 CAPTURE                          VAL R2
     1050 CAPTURE                          VAL R43
     1051 CAPTURE                          VAL R0
     1052 NEWCLOSURE                       R94 P53
     1053 CAPTURE                          VAL R83
     1054 CAPTURE                          VAL R84
     1055 NEWCLOSURE                       R95 P54
     1056 CAPTURE                          VAL R2
     1057 CAPTURE                          VAL R43
     1058 CAPTURE                          VAL R0
     1059 CAPTURE                          REF R90
     1060 CAPTURE                          REF R91
     1061 CAPTURE                          VAL R86
     1062 CAPTURE                          VAL R87
     1063 CAPTURE                          VAL R88
     1064 CAPTURE                          VAL R89
     1065 CAPTURE                          VAL R83
     1066 CAPTURE                          VAL R84
     1067 CAPTURE                          VAL R85
     1068 GETTABLEKS                       R96 R1 K53 ["createEffect"]
     1070 NEWCLOSURE                       R97 P55
     1071 CAPTURE                          VAL R0
     1072 CAPTURE                          VAL R95
     1073 CAPTURE                          REF R91
     1074 CAPTURE                          REF R90
     1075 CAPTURE                          REF R55
     1076 CAPTURE                          VAL R50
     1077 CAPTURE                          VAL R56
     1078 CAPTURE                          VAL R52
     1079 CAPTURE                          VAL R54
     1080 CAPTURE                          VAL R60
     1081 CAPTURE                          VAL R46
     1082 CAPTURE                          VAL R44
     1083 CAPTURE                          VAL R35
     1084 CAPTURE                          VAL R62
     1085 CAPTURE                          VAL R81
     1086 CAPTURE                          VAL R36
     1087 CAPTURE                          VAL R2
     1088 CAPTURE                          VAL R82
     1089 LOADK                            R98 K232 ["ce-input-handler"]
     1090 CALL                             R96 2 0
     1091 GETTABLEKS                       R96 R1 K53 ["createEffect"]
     1093 NEWCLOSURE                       R97 P56
     1094 CAPTURE                          VAL R0
     1095 CAPTURE                          VAL R51
     1096 CAPTURE                          VAL R53
     1097 LOADK                            R98 K233 ["ce-undo-redo-enabled"]
     1098 CALL                             R96 2 0
     1099 GETTABLEKS                       R96 R1 K53 ["createEffect"]
     1101 NEWCLOSURE                       R97 P57
     1102 CAPTURE                          VAL R0
     1103 CAPTURE                          VAL R45
     1104 CAPTURE                          VAL R43
     1105 LOADK                            R98 K234 ["ce-selection-enabled"]
     1106 CALL                             R96 2 0
     1107 GETTABLEKS                       R96 R1 K53 ["createEffect"]
     1109 NEWCLOSURE                       R97 P58
     1110 CAPTURE                          VAL R0
     1111 LOADK                            R98 K235 ["ce-paste-enabled"]
     1112 CALL                             R96 2 0
     1113 GETTABLEKS                       R96 R1 K6 ["createComputed"]
     1115 NEWCLOSURE                       R97 P59
     1116 CAPTURE                          VAL R0
     1117 CAPTURE                          VAL R39
     1118 CAPTURE                          VAL R24
     1119 LOADK                            R98 K236 ["ce-gutter-width"]
     1120 CALL                             R96 2 1
     1121 GETTABLEKS                       R97 R1 K6 ["createComputed"]
     1123 NEWCLOSURE                       R98 P60
     1124 CAPTURE                          VAL R96
     1125 LOADK                            R99 K237 ["ce-gutter-size"]
     1126 CALL                             R97 2 1
     1127 GETTABLEKS                       R98 R1 K6 ["createComputed"]
     1129 NEWCLOSURE                       R99 P61
     1130 CAPTURE                          VAL R96
     1131 LOADK                            R100 K238 ["ce-scroll-frame-size"]
     1132 CALL                             R98 2 1
     1133 GETTABLEKS                       R99 R1 K6 ["createComputed"]
     1135 NEWCLOSURE                       R100 P62
     1136 CAPTURE                          VAL R96
     1137 LOADK                            R101 K239 ["ce-code-area-position"]
     1138 CALL                             R99 2 1
     1139 GETTABLEKS                       R100 R1 K35 ["createRef"]
     1141 LOADK                            R101 K240 ["scrollFrame"]
     1142 CALL                             R100 1 1
     1143 GETTABLEKS                       R101 R1 K35 ["createRef"]
     1145 LOADK                            R102 K241 ["gutterScroll"]
     1146 CALL                             R101 1 1
     1147 GETTABLEKS                       R102 R1 K48 ["createSignal"]
     1149 LOADN                            R103 0
     1150 CALL                             R102 1 2
     1151 GETTABLEKS                       R104 R1 K48 ["createSignal"]
     1153 LOADN                            R105 0
     1154 CALL                             R104 1 2
     1155 GETTABLEKS                       R106 R1 K6 ["createComputed"]
     1157 NEWCLOSURE                       R107 P63
     1158 CAPTURE                          VAL R39
     1159 CAPTURE                          VAL R22
     1160 LOADK                            R108 K242 ["ce-gutter-canvas-size"]
     1161 CALL                             R106 2 1
     1162 GETTABLEKS                       R107 R1 K6 ["createComputed"]
     1164 NEWCLOSURE                       R108 P64
     1165 CAPTURE                          VAL R39
     1166 LOADK                            R109 K243 ["ce-line-numbers"]
     1167 CALL                             R107 2 1
     1168 GETTABLEKS                       R108 R1 K53 ["createEffect"]
     1170 NEWCLOSURE                       R109 P65
     1171 CAPTURE                          VAL R100
     1172 CAPTURE                          VAL R101
     1173 CAPTURE                          VAL R105
     1174 CAPTURE                          VAL R103
     1175 LOADK                            R110 K244 ["ce-scroll-sync"]
     1176 CALL                             R108 2 0
     1177 NEWCLOSURE                       R108 P66
     1178 CAPTURE                          VAL R0
     1179 GETTABLEKS                       R109 R1 K6 ["createComputed"]
     1181 NEWCLOSURE                       R110 P67
     1182 CAPTURE                          VAL R0
     1183 LOADK                            R111 K245 ["ce-drop-visible"]
     1184 CALL                             R109 2 1
     1185 GETTABLEKS                       R110 R1 K6 ["createComputed"]
     1187 NEWCLOSURE                       R111 P68
     1188 CAPTURE                          VAL R0
     1189 CAPTURE                          VAL R22
     1190 LOADK                            R112 K246 ["ce-drop-pos"]
     1191 CALL                             R110 2 1
     1192 DUPTABLE                         R111 K272 [{"overlaySize", "cursorVisible", "cursorPos", "cursorSize", "cursorColor", "bgColor", "scrollbarColor", "lineNumberColor", "gutterSepColor", "codeTextColor", "onInputBegan", "onInputChanged", "onInputEnded", "showLineNumbers", "gutterCanvasSize", "gutterSize", "lineNumbers", "scrollFrameSize", "codeAreaPosition", "dropIndicatorVisible", "dropIndicatorPos", "LayoutOrder", "highlightedLines", "richTextEnabled", "lineHeight"}]
     1193 SETTABLEKS                       R71 R111 K247 ["overlaySize"]
     1195 SETTABLEKS                       R66 R111 K248 ["cursorVisible"]
     1197 SETTABLEKS                       R67 R111 K249 ["cursorPos"]
     1199 SETTABLEKS                       R68 R111 K250 ["cursorSize"]
     1201 SETTABLEKS                       R20 R111 K251 ["cursorColor"]
     1203 SETTABLEKS                       R14 R111 K252 ["bgColor"]
     1205 SETTABLEKS                       R19 R111 K253 ["scrollbarColor"]
     1207 SETTABLEKS                       R15 R111 K254 ["lineNumberColor"]
     1209 SETTABLEKS                       R16 R111 K255 ["gutterSepColor"]
     1211 SETTABLEKS                       R21 R111 K256 ["codeTextColor"]
     1213 SETTABLEKS                       R74 R111 K257 ["onInputBegan"]
     1215 SETTABLEKS                       R75 R111 K258 ["onInputChanged"]
     1217 SETTABLEKS                       R76 R111 K259 ["onInputEnded"]
     1219 GETTABLEKS                       R112 R0 K260 ["showLineNumbers"]
     1221 SETTABLEKS                       R112 R111 K260 ["showLineNumbers"]
     1223 SETTABLEKS                       R106 R111 K261 ["gutterCanvasSize"]
     1225 SETTABLEKS                       R97 R111 K262 ["gutterSize"]
     1227 SETTABLEKS                       R107 R111 K263 ["lineNumbers"]
     1229 SETTABLEKS                       R98 R111 K264 ["scrollFrameSize"]
     1231 SETTABLEKS                       R99 R111 K265 ["codeAreaPosition"]
     1233 SETTABLEKS                       R109 R111 K266 ["dropIndicatorVisible"]
     1235 SETTABLEKS                       R110 R111 K267 ["dropIndicatorPos"]
     1237 GETTABLEKS                       R112 R0 K268 ["LayoutOrder"]
     1239 SETTABLEKS                       R112 R111 K268 ["LayoutOrder"]
     1241 GETTABLEKS                       R112 R37 K46 ["lines"]
     1243 SETTABLEKS                       R112 R111 K269 ["highlightedLines"]
     1245 SETTABLEKS                       R28 R111 K270 ["richTextEnabled"]
     1247 SETTABLEKS                       R22 R111 K271 ["lineHeight"]
     1249 CLOSEUPVALS                      R55
     1250 RETURN                           R111 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["BloxCodeEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Blox"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["expr"]
       16 GETIMPORT                        R4 K6 [require]
       18 GETTABLEKS                       R5 R1 K9 ["BloxUI"]
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R5 R4 K10 ["ThemeProvider"]
       23 GETIMPORT                        R6 K6 [require]
       25 GETIMPORT                        R7 K1 [script]
       27 GETTABLEKS                       R7 R7 K4 ["Parent"]
       29 GETTABLEKS                       R7 R7 K11 ["RichTextHitTest"]
       31 CALL                             R6 1 1
       32 GETIMPORT                        R7 K6 [require]
       34 GETIMPORT                        R8 K1 [script]
       36 GETTABLEKS                       R8 R8 K4 ["Parent"]
       38 GETTABLEKS                       R8 R8 K12 ["TextMeasure"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K6 [require]
       43 GETIMPORT                        R9 K1 [script]
       45 GETTABLEKS                       R9 R9 K4 ["Parent"]
       47 GETTABLEKS                       R9 R9 K13 ["SyntaxHighlighter"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETIMPORT                        R10 K1 [script]
       54 GETTABLEKS                       R10 R10 K4 ["Parent"]
       56 GETTABLEKS                       R10 R10 K14 ["UndoStack"]
       58 CALL                             R9 1 1
       59 GETTABLEKS                       R10 R2 K15 ["Debug"]
       61 GETTABLEKS                       R11 R2 K16 ["template"]
       63 GETTABLEKS                       R12 R2 K17 ["Frame"]
       65 GETTABLEKS                       R13 R2 K18 ["TextLabel"]
       67 GETTABLEKS                       R14 R2 K19 ["TextButton"]
       69 GETTABLEKS                       R15 R2 K20 ["ScrollingFrame"]
       71 GETTABLEKS                       R16 R2 K21 ["VirtualList"]
       73 GETIMPORT                        R17 K24 [Color3.fromRGB]
       75 LOADN                            R18 82
       76 LOADN                            R19 139
       77 LOADN                            R20 255
       78 CALL                             R17 3 1
       79 GETIMPORT                        R18 K27 [Font.new]
       81 LOADK                            R19 K28 ["rbxasset://fonts/families/BuilderMono.json"]
       82 GETIMPORT                        R20 K32 [Enum.FontWeight.Regular]
       84 GETIMPORT                        R21 K35 [Enum.FontStyle.Normal]
       86 CALL                             R18 3 1
       87 MOVE                             R19 R11
       88 LOADK                            R20 K36 ["CodeEditor"]
       89 DUPTABLE                         R21 K48 [{"text", "onTextChanged", "language", "editable", "showLineNumbers", "dropLineIndex", "LayoutOrder", "inputCaptureActive", "onInteraction", "debugInput", "editorCompat"}]
       90 LOADK                            R22 K49 [""]
       91 SETTABLEKS                       R22 R21 K37 ["text"]
       93 LOADNIL                          R22
       94 SETTABLEKS                       R22 R21 K38 ["onTextChanged"]
       96 LOADK                            R22 K50 ["luau"]
       97 SETTABLEKS                       R22 R21 K39 ["language"]
       99 LOADB                            R22 1
      100 SETTABLEKS                       R22 R21 K40 ["editable"]
      102 LOADB                            R22 0
      103 SETTABLEKS                       R22 R21 K41 ["showLineNumbers"]
      105 LOADNIL                          R22
      106 SETTABLEKS                       R22 R21 K42 ["dropLineIndex"]
      108 LOADN                            R22 0
      109 SETTABLEKS                       R22 R21 K43 ["LayoutOrder"]
      111 LOADB                            R22 1
      112 SETTABLEKS                       R22 R21 K44 ["inputCaptureActive"]
      114 LOADNIL                          R22
      115 SETTABLEKS                       R22 R21 K45 ["onInteraction"]
      117 LOADB                            R22 0
      118 SETTABLEKS                       R22 R21 K46 ["debugInput"]
      120 LOADNIL                          R22
      121 SETTABLEKS                       R22 R21 K47 ["editorCompat"]
      123 NEWTABLE                         R22 0 1
      125 MOVE                             R23 R12
      126 NEWTABLE                         R24 8 2
      128 GETIMPORT                        R27 K52 [UDim2.new]
      130 LOADN                            R28 1
      131 LOADN                            R29 0
      132 LOADN                            R30 1
      133 LOADN                            R31 0
      134 CALL                             R27 4 1
      135 SETTABLEKS                       R27 R24 K53 ["Size"]
      137 MOVE                             R27 R3
      138 LOADK                            R28 K54 ["bgColor"]
      139 CALL                             R27 1 1
      140 SETTABLEKS                       R27 R24 K55 ["BackgroundColor3"]
      142 LOADN                            R27 0
      143 SETTABLEKS                       R27 R24 K56 ["BackgroundTransparency"]
      145 LOADN                            R27 0
      146 SETTABLEKS                       R27 R24 K57 ["BorderSizePixel"]
      148 MOVE                             R27 R3
      149 LOADK                            R28 K43 ["LayoutOrder"]
      150 CALL                             R27 1 1
      151 SETTABLEKS                       R27 R24 K43 ["LayoutOrder"]
      153 MOVE                             R25 R15
      154 NEWTABLE                         R26 16 2
      156 LOADK                            R29 K58 ["gutterScroll"]
      157 SETTABLEKS                       R29 R26 K59 ["ref"]
      159 LOADK                            R29 K60 ["LineNumberGutter"]
      160 SETTABLEKS                       R29 R26 K61 ["Name"]
      162 MOVE                             R29 R3
      163 LOADK                            R30 K62 ["gutterSize"]
      164 CALL                             R29 1 1
      165 SETTABLEKS                       R29 R26 K53 ["Size"]
      167 MOVE                             R29 R3
      168 LOADK                            R30 K63 ["gutterCanvasSize"]
      169 CALL                             R29 1 1
      170 SETTABLEKS                       R29 R26 K64 ["CanvasSize"]
      172 GETIMPORT                        R29 K67 [Enum.ScrollingDirection.Y]
      174 SETTABLEKS                       R29 R26 K65 ["ScrollingDirection"]
      176 LOADB                            R29 0
      177 SETTABLEKS                       R29 R26 K68 ["ScrollingEnabled"]
      179 LOADN                            R29 1
      180 SETTABLEKS                       R29 R26 K69 ["ScrollBarImageTransparency"]
      182 LOADN                            R29 0
      183 SETTABLEKS                       R29 R26 K70 ["ScrollBarThickness"]
      185 MOVE                             R29 R3
      186 LOADK                            R30 K54 ["bgColor"]
      187 CALL                             R29 1 1
      188 SETTABLEKS                       R29 R26 K55 ["BackgroundColor3"]
      190 LOADN                            R29 0
      191 SETTABLEKS                       R29 R26 K56 ["BackgroundTransparency"]
      193 LOADN                            R29 0
      194 SETTABLEKS                       R29 R26 K57 ["BorderSizePixel"]
      196 MOVE                             R29 R3
      197 LOADK                            R30 K41 ["showLineNumbers"]
      198 CALL                             R29 1 1
      199 SETTABLEKS                       R29 R26 K71 ["Visible"]
      201 MOVE                             R27 R16
      202 DUPTABLE                         R28 K78 [{"items", "itemSize", "overscan", "strategy", "useParentScroll", "Each"}]
      203 MOVE                             R29 R3
      204 LOADK                            R30 K79 ["lineNumbers"]
      205 CALL                             R29 1 1
      206 SETTABLEKS                       R29 R28 K72 ["items"]
      208 MOVE                             R29 R3
      209 LOADK                            R30 K80 ["lineHeight"]
      210 CALL                             R29 1 1
      211 SETTABLEKS                       R29 R28 K73 ["itemSize"]
      213 LOADN                            R29 10
      214 SETTABLEKS                       R29 R28 K74 ["overscan"]
      216 LOADK                            R29 K81 ["cache"]
      217 SETTABLEKS                       R29 R28 K75 ["strategy"]
      219 LOADB                            R29 1
      220 SETTABLEKS                       R29 R28 K76 ["useParentScroll"]
      222 MOVE                             R29 R11
      223 NEWTABLE                         R30 0 2
      225 LOADK                            R31 K82 ["idx"]
      226 LOADK                            R32 K83 ["item"]
      227 SETLIST                          R30 R31 2 [1]
      229 NEWTABLE                         R31 0 1
      231 MOVE                             R32 R13
      232 DUPTABLE                         R33 K91 [{"Tags", "Size", "BackgroundTransparency", "FontFace", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "Text"}]
      233 LOADK                            R34 K92 ["pad-r-10"]
      234 SETTABLEKS                       R34 R33 K84 ["Tags"]
      236 GETIMPORT                        R34 K52 [UDim2.new]
      238 LOADN                            R35 1
      239 LOADN                            R36 0
      240 LOADN                            R37 1
      241 LOADN                            R38 0
      242 CALL                             R34 4 1
      243 SETTABLEKS                       R34 R33 K53 ["Size"]
      245 LOADN                            R34 1
      246 SETTABLEKS                       R34 R33 K56 ["BackgroundTransparency"]
      248 SETTABLEKS                       R18 R33 K85 ["FontFace"]
      250 LOADN                            R34 16
      251 SETTABLEKS                       R34 R33 K86 ["TextSize"]
      253 MOVE                             R34 R3
      254 LOADK                            R35 K93 ["lineNumberColor"]
      255 CALL                             R34 1 1
      256 SETTABLEKS                       R34 R33 K87 ["TextColor3"]
      258 GETIMPORT                        R34 K95 [Enum.TextXAlignment.Right]
      260 SETTABLEKS                       R34 R33 K88 ["TextXAlignment"]
      262 GETIMPORT                        R34 K97 [Enum.TextYAlignment.Top]
      264 SETTABLEKS                       R34 R33 K89 ["TextYAlignment"]
      266 MOVE                             R34 R3
      267 LOADK                            R35 K83 ["item"]
      268 CALL                             R34 1 1
      269 SETTABLEKS                       R34 R33 K90 ["Text"]
      271 CALL                             R32 1 -1
      272 SETLIST                          R31 R32 -1 [1]
      274 CALL                             R29 2 1
      275 SETTABLEKS                       R29 R28 K77 ["Each"]
      277 CALL                             R27 1 1
      278 MOVE                             R28 R12
      279 DUPTABLE                         R29 K99 [{"Name", "Position", "Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
      280 LOADK                            R30 K100 ["GutterSeparator"]
      281 SETTABLEKS                       R30 R29 K61 ["Name"]
      283 GETIMPORT                        R30 K52 [UDim2.new]
      285 LOADN                            R31 1
      286 LOADN                            R32 255
      287 LOADN                            R33 0
      288 LOADN                            R34 0
      289 CALL                             R30 4 1
      290 SETTABLEKS                       R30 R29 K98 ["Position"]
      292 GETIMPORT                        R30 K52 [UDim2.new]
      294 LOADN                            R31 0
      295 LOADN                            R32 1
      296 LOADN                            R33 1
      297 LOADN                            R34 0
      298 CALL                             R30 4 1
      299 SETTABLEKS                       R30 R29 K53 ["Size"]
      301 MOVE                             R30 R3
      302 LOADK                            R31 K101 ["gutterSepColor"]
      303 CALL                             R30 1 1
      304 SETTABLEKS                       R30 R29 K55 ["BackgroundColor3"]
      306 LOADN                            R30 0
      307 SETTABLEKS                       R30 R29 K56 ["BackgroundTransparency"]
      309 LOADN                            R30 0
      310 SETTABLEKS                       R30 R29 K57 ["BorderSizePixel"]
      312 CALL                             R28 1 -1
      313 SETLIST                          R26 R27 -1 [1]
      315 CALL                             R25 1 1
      316 MOVE                             R26 R15
      317 NEWTABLE                         R27 16 5
      319 LOADK                            R33 K102 ["scrollFrame"]
      320 SETTABLEKS                       R33 R27 K59 ["ref"]
      322 MOVE                             R33 R3
      323 LOADK                            R34 K103 ["codeAreaPosition"]
      324 CALL                             R33 1 1
      325 SETTABLEKS                       R33 R27 K98 ["Position"]
      327 MOVE                             R33 R3
      328 LOADK                            R34 K104 ["scrollFrameSize"]
      329 CALL                             R33 1 1
      330 SETTABLEKS                       R33 R27 K53 ["Size"]
      332 GETIMPORT                        R33 K106 [Enum.ScrollingDirection.XY]
      334 SETTABLEKS                       R33 R27 K65 ["ScrollingDirection"]
      336 GETIMPORT                        R33 K108 [Enum.AutomaticSize.XY]
      338 SETTABLEKS                       R33 R27 K109 ["AutomaticCanvasSize"]
      340 MOVE                             R33 R3
      341 LOADK                            R34 K54 ["bgColor"]
      342 CALL                             R33 1 1
      343 SETTABLEKS                       R33 R27 K55 ["BackgroundColor3"]
      345 LOADN                            R33 0
      346 SETTABLEKS                       R33 R27 K56 ["BackgroundTransparency"]
      348 LOADN                            R33 0
      349 SETTABLEKS                       R33 R27 K57 ["BorderSizePixel"]
      351 GETIMPORT                        R33 K52 [UDim2.new]
      353 LOADN                            R34 0
      354 LOADN                            R35 0
      355 LOADN                            R36 0
      356 LOADN                            R37 0
      357 CALL                             R33 4 1
      358 SETTABLEKS                       R33 R27 K64 ["CanvasSize"]
      360 MOVE                             R33 R3
      361 LOADK                            R34 K110 ["scrollbarColor"]
      362 CALL                             R33 1 1
      363 SETTABLEKS                       R33 R27 K111 ["ScrollBarImageColor3"]
      365 LOADN                            R33 6
      366 SETTABLEKS                       R33 R27 K70 ["ScrollBarThickness"]
      368 LOADN                            R33 1
      369 SETTABLEKS                       R33 R27 K43 ["LayoutOrder"]
      371 MOVE                             R28 R12
      372 DUPTABLE                         R29 K112 [{"ref", "Size", "BackgroundTransparency"}]
      373 LOADK                            R30 K113 ["container"]
      374 SETTABLEKS                       R30 R29 K59 ["ref"]
      376 MOVE                             R30 R3
      377 LOADK                            R31 K114 ["overlaySize"]
      378 CALL                             R30 1 1
      379 SETTABLEKS                       R30 R29 K53 ["Size"]
      381 LOADN                            R30 1
      382 SETTABLEKS                       R30 R29 K56 ["BackgroundTransparency"]
      384 CALL                             R28 1 1
      385 MOVE                             R29 R12
      386 DUPTABLE                         R30 K116 [{"Name", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Position", "Size", "Visible", "ZIndex"}]
      387 LOADK                            R31 K117 ["Cursor"]
      388 SETTABLEKS                       R31 R30 K61 ["Name"]
      390 MOVE                             R31 R3
      391 LOADK                            R32 K118 ["cursorColor"]
      392 CALL                             R31 1 1
      393 SETTABLEKS                       R31 R30 K55 ["BackgroundColor3"]
      395 LOADN                            R31 0
      396 SETTABLEKS                       R31 R30 K56 ["BackgroundTransparency"]
      398 LOADN                            R31 0
      399 SETTABLEKS                       R31 R30 K57 ["BorderSizePixel"]
      401 MOVE                             R31 R3
      402 LOADK                            R32 K119 ["cursorPos"]
      403 CALL                             R31 1 1
      404 SETTABLEKS                       R31 R30 K98 ["Position"]
      406 MOVE                             R31 R3
      407 LOADK                            R32 K120 ["cursorSize"]
      408 CALL                             R31 1 1
      409 SETTABLEKS                       R31 R30 K53 ["Size"]
      411 MOVE                             R31 R3
      412 LOADK                            R32 K121 ["cursorVisible"]
      413 CALL                             R31 1 1
      414 SETTABLEKS                       R31 R30 K71 ["Visible"]
      416 LOADN                            R31 4
      417 SETTABLEKS                       R31 R30 K115 ["ZIndex"]
      419 CALL                             R29 1 1
      420 MOVE                             R30 R12
      421 DUPTABLE                         R31 K116 [{"Name", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Position", "Size", "Visible", "ZIndex"}]
      422 LOADK                            R32 K122 ["DropIndicator"]
      423 SETTABLEKS                       R32 R31 K61 ["Name"]
      425 GETIMPORT                        R32 K24 [Color3.fromRGB]
      427 LOADN                            R33 82
      428 LOADN                            R34 139
      429 LOADN                            R35 255
      430 CALL                             R32 3 1
      431 SETTABLEKS                       R32 R31 K55 ["BackgroundColor3"]
      433 LOADN                            R32 0
      434 SETTABLEKS                       R32 R31 K56 ["BackgroundTransparency"]
      436 LOADN                            R32 0
      437 SETTABLEKS                       R32 R31 K57 ["BorderSizePixel"]
      439 MOVE                             R32 R3
      440 LOADK                            R33 K123 ["dropIndicatorPos"]
      441 CALL                             R32 1 1
      442 SETTABLEKS                       R32 R31 K98 ["Position"]
      444 GETIMPORT                        R32 K52 [UDim2.new]
      446 LOADN                            R33 1
      447 LOADN                            R34 0
      448 LOADN                            R35 0
      449 LOADN                            R36 2
      450 CALL                             R32 4 1
      451 SETTABLEKS                       R32 R31 K53 ["Size"]
      453 MOVE                             R32 R3
      454 LOADK                            R33 K124 ["dropIndicatorVisible"]
      455 CALL                             R32 1 1
      456 SETTABLEKS                       R32 R31 K71 ["Visible"]
      458 LOADN                            R32 5
      459 SETTABLEKS                       R32 R31 K115 ["ZIndex"]
      461 CALL                             R30 1 1
      462 MOVE                             R31 R14
      463 DUPTABLE                         R32 K129 [{"Size", "BackgroundTransparency", "Text", "ZIndex", "Selectable", "OnInputBegan", "OnInputChanged", "OnInputEnded"}]
      464 MOVE                             R33 R3
      465 LOADK                            R34 K114 ["overlaySize"]
      466 CALL                             R33 1 1
      467 SETTABLEKS                       R33 R32 K53 ["Size"]
      469 LOADN                            R33 1
      470 SETTABLEKS                       R33 R32 K56 ["BackgroundTransparency"]
      472 LOADK                            R33 K49 [""]
      473 SETTABLEKS                       R33 R32 K90 ["Text"]
      475 LOADN                            R33 3
      476 SETTABLEKS                       R33 R32 K115 ["ZIndex"]
      478 LOADB                            R33 0
      479 SETTABLEKS                       R33 R32 K125 ["Selectable"]
      481 MOVE                             R33 R3
      482 LOADK                            R34 K130 ["onInputBegan"]
      483 CALL                             R33 1 1
      484 SETTABLEKS                       R33 R32 K126 ["OnInputBegan"]
      486 MOVE                             R33 R3
      487 LOADK                            R34 K131 ["onInputChanged"]
      488 CALL                             R33 1 1
      489 SETTABLEKS                       R33 R32 K127 ["OnInputChanged"]
      491 MOVE                             R33 R3
      492 LOADK                            R34 K132 ["onInputEnded"]
      493 CALL                             R33 1 1
      494 SETTABLEKS                       R33 R32 K128 ["OnInputEnded"]
      496 CALL                             R31 1 1
      497 MOVE                             R32 R16
      498 DUPTABLE                         R33 K78 [{"items", "itemSize", "overscan", "strategy", "useParentScroll", "Each"}]
      499 MOVE                             R34 R3
      500 LOADK                            R35 K133 ["highlightedLines"]
      501 CALL                             R34 1 1
      502 SETTABLEKS                       R34 R33 K72 ["items"]
      504 MOVE                             R34 R3
      505 LOADK                            R35 K80 ["lineHeight"]
      506 CALL                             R34 1 1
      507 SETTABLEKS                       R34 R33 K73 ["itemSize"]
      509 LOADN                            R34 30
      510 SETTABLEKS                       R34 R33 K74 ["overscan"]
      512 LOADK                            R34 K81 ["cache"]
      513 SETTABLEKS                       R34 R33 K75 ["strategy"]
      515 LOADB                            R34 1
      516 SETTABLEKS                       R34 R33 K76 ["useParentScroll"]
      518 MOVE                             R34 R11
      519 NEWTABLE                         R35 0 2
      521 LOADK                            R36 K82 ["idx"]
      522 LOADK                            R37 K83 ["item"]
      523 SETLIST                          R35 R36 2 [1]
      525 NEWTABLE                         R36 0 1
      527 MOVE                             R37 R13
      528 DUPTABLE                         R38 K135 [{"Size", "AutomaticSize", "BackgroundTransparency", "FontFace", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "Text", "RichText", "ZIndex"}]
      529 GETIMPORT                        R39 K52 [UDim2.new]
      531 LOADN                            R40 0
      532 LOADN                            R41 0
      533 LOADN                            R42 1
      534 LOADN                            R43 0
      535 CALL                             R39 4 1
      536 SETTABLEKS                       R39 R38 K53 ["Size"]
      538 GETIMPORT                        R39 K137 [Enum.AutomaticSize.X]
      540 SETTABLEKS                       R39 R38 K107 ["AutomaticSize"]
      542 LOADN                            R39 1
      543 SETTABLEKS                       R39 R38 K56 ["BackgroundTransparency"]
      545 SETTABLEKS                       R18 R38 K85 ["FontFace"]
      547 LOADN                            R39 16
      548 SETTABLEKS                       R39 R38 K86 ["TextSize"]
      550 MOVE                             R39 R3
      551 LOADK                            R40 K138 ["codeTextColor"]
      552 CALL                             R39 1 1
      553 SETTABLEKS                       R39 R38 K87 ["TextColor3"]
      555 GETIMPORT                        R39 K140 [Enum.TextXAlignment.Left]
      557 SETTABLEKS                       R39 R38 K88 ["TextXAlignment"]
      559 GETIMPORT                        R39 K97 [Enum.TextYAlignment.Top]
      561 SETTABLEKS                       R39 R38 K89 ["TextYAlignment"]
      563 MOVE                             R39 R3
      564 LOADK                            R40 K83 ["item"]
      565 CALL                             R39 1 1
      566 SETTABLEKS                       R39 R38 K90 ["Text"]
      568 MOVE                             R39 R3
      569 LOADK                            R40 K141 ["richTextEnabled"]
      570 CALL                             R39 1 1
      571 SETTABLEKS                       R39 R38 K134 ["RichText"]
      573 LOADN                            R39 2
      574 SETTABLEKS                       R39 R38 K115 ["ZIndex"]
      576 CALL                             R37 1 -1
      577 SETLIST                          R36 R37 -1 [1]
      579 CALL                             R34 2 1
      580 SETTABLEKS                       R34 R33 K77 ["Each"]
      582 CALL                             R32 1 -1
      583 SETLIST                          R27 R28 -1 [1]
      585 CALL                             R26 1 -1
      586 SETLIST                          R24 R25 -1 [1]
      588 CALL                             R23 1 -1
      589 SETLIST                          R22 R23 -1 [1]
      591 DUPCLOSURE                       R23 K142 [PROTO_90]
      592 CAPTURE                          VAL R5
      593 CAPTURE                          VAL R6
      594 CAPTURE                          VAL R18
      595 CAPTURE                          VAL R10
      596 CAPTURE                          VAL R8
      597 CAPTURE                          VAL R7
      598 CAPTURE                          VAL R9
      599 CAPTURE                          VAL R17
      600 CALL                             R19 4 1
      601 RETURN                           R19 1
