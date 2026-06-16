PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 LOADK                            R0 K0 [0.5]
        3 RETURN                           R0 1
        4 LOADN                            R0 1
        5 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 LOADN                            R0 0
        3 RETURN                           R0 1
        4 LOADN                            R0 1
        5 RETURN                           R0 1

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
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKS                    R2 K0 ["Light"] ; [+3]
        5 GETUPVAL                         R1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 2
        8 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKS                    R2 K0 ["Light"] ; [+3]
        5 GETUPVAL                         R1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 2
        8 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKS                    R2 K0 ["Light"] ; [+3]
        5 GETUPVAL                         R1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 2
        8 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKS                    R2 K0 ["Light"] ; [+3]
        5 GETUPVAL                         R1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 2
        8 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetTextBoundsAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LENGTH                           R4 R0
        3 ADDK                             R3 R4 K0 [1]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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
       64 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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

PROTO_28:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_29:
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

PROTO_31:
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

PROTO_32:
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

PROTO_33:
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

PROTO_34:
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

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
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

PROTO_39:
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

PROTO_40:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R1 R2 ; [+3]
        6 LOADB                            R1 0
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_41:
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
       20 JUMPIF                           R1 ; [+1]
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 1
       23 MOVE                             R2 R0
       24 CALL                             R1 1 1
       25 GETUPVAL                         R2 2
       26 GETUPVAL                         R3 3
       27 CALL                             R2 1 1
       28 JUMPIFEQKNIL                     R1 ; [+25]
       30 JUMPIFNOT                        R2 ; [+23]
       31 GETUPVAL                         R3 4
       32 SETTABLEKS                       R3 R2 K4 ["Text"]
       34 GETUPVAL                         R3 5
       35 SETTABLEKS                       R3 R2 K5 ["CursorPosition"]
       37 GETIMPORT                        R4 K7 [game]
       39 LOADK                            R6 K8 ["UserInputService"]
       40 NAMECALL                         R4 R4 K9 ["GetService"]
       42 CALL                             R4 2 1
       43 NAMECALL                         R4 R4 K10 ["GetFocusedTextBox"]
       45 CALL                             R4 1 1
       46 JUMPIFEQ                         R4 R2 ; [+2]
       48 LOADB                            R3 0 +1
       49 LOADB                            R3 1
       50 JUMPIF                           R3 ; [+3]
       51 NAMECALL                         R4 R2 K11 ["CaptureFocus"]
       53 CALL                             R4 1 0
       54 RETURN                           R0 0

PROTO_42:
        0 GETIMPORT                        R0 K2 [table.concat]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["current"]
        5 LOADK                            R2 K4 ["\n"]
        6 CALL                             R0 2 1
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R0 R1 K3 ["current"]
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R2 R2 K5 ["onTextChanged"]
       14 CALL                             R1 1 1
       15 JUMPIFNOT                        R1 ; [+3]
       16 MOVE                             R2 R1
       17 MOVE                             R3 R0
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Text"]
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 2
        6 SETTABLEKS                       R1 R0 K1 ["CursorPosition"]
        8 LOADB                            R0 0
        9 SETUPVAL                         R0 3
       10 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Text"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+2]
        6 RETURN                           R0 0
        7 LOADB                            R1 1
        8 SETUPVAL                         R1 2
        9 GETIMPORT                        R1 K3 [task.defer]
       11 GETUPVAL                         R2 3
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 4
       14 GETUPVAL                         R2 5
       15 CALL                             R1 1 1
       16 JUMPIFNOTEQKNIL                  R1 ; [+2]
       18 RETURN                           R0 0
       19 LENGTH                           R2 R0
       20 GETUPVAL                         R4 1
       21 LENGTH                           R3 R4
       22 JUMPIFNOTLT                      R2 R3 ; [+239]
       24 GETUPVAL                         R3 4
       25 GETUPVAL                         R4 6
       26 CALL                             R3 1 1
       27 OR                               R2 R3 R1
       28 JUMPIFEQ                         R2 R1 ; [+29]
       30 GETUPVAL                         R3 7
       31 CALL                             R3 0 1
       32 GETUPVAL                         R4 8
       33 MOVE                             R5 R3
       34 CALL                             R4 1 0
       35 GETUPVAL                         R4 9
       36 MOVE                             R5 R3
       37 CALL                             R4 1 0
       38 GETIMPORT                        R4 K6 [table.concat]
       40 GETUPVAL                         R5 10
       41 GETTABLEKS                       R5 R5 K7 ["current"]
       43 LOADK                            R6 K8 ["\n"]
       44 CALL                             R4 2 1
       45 GETUPVAL                         R5 11
       46 SETTABLEKS                       R4 R5 K7 ["current"]
       48 GETUPVAL                         R5 4
       49 GETUPVAL                         R6 12
       50 GETTABLEKS                       R6 R6 K9 ["onTextChanged"]
       52 CALL                             R5 1 1
       53 JUMPIFNOT                        R5 ; [+3]
       54 MOVE                             R6 R5
       55 MOVE                             R7 R4
       56 CALL                             R6 1 0
       57 RETURN                           R0 0
       58 LOADN                            R3 1
       59 JUMPIFNOTLE                      R1 R3 ; [+2]
       61 RETURN                           R0 0
       62 GETUPVAL                         R3 13
       63 MOVE                             R4 R1
       64 CALL                             R3 1 2
       65 LOADN                            R5 1
       66 JUMPIFNOTLT                      R5 R4 ; [+136]
       68 GETUPVAL                         R6 10
       69 GETTABLEKS                       R6 R6 K7 ["current"]
       71 GETTABLE                         R5 R6 R3
       72 GETUPVAL                         R6 14
       73 GETTABLEKS                       R6 R6 K10 ["prevCharBytes"]
       75 MOVE                             R7 R5
       76 MOVE                             R8 R4
       77 CALL                             R6 2 1
       78 LOADN                            R7 1
       79 JUMPIFNOTLT                      R6 R7 ; [+2]
       81 LOADN                            R6 1
       82 GETUPVAL                         R8 14
       83 GETTABLEKS                       R8 R8 K11 ["containsNonMonospace"]
       85 MOVE                             R9 R5
       86 CALL                             R8 1 1
       87 JUMPIFNOT                        R8 ; [+8]
       88 GETUPVAL                         R7 14
       89 GETTABLEKS                       R7 R7 K12 ["measureLineWidth"]
       91 MOVE                             R8 R5
       92 GETUPVAL                         R9 15
       93 LOADN                            R10 16
       94 CALL                             R7 3 1
       95 JUMP                             ; [+7]
       96 GETUPVAL                         R8 16
       97 MOVE                             R9 R5
       98 LENGTH                           R11 R5
       99 ADDK                             R10 R11 K13 [1]
      100 CALL                             R8 2 1
      101 GETUPVAL                         R9 17
      102 MUL                              R7 R8 R9
      103 GETUPVAL                         R8 10
      104 GETTABLEKS                       R8 R8 K7 ["current"]
      106 LOADN                            R14 1
      107 SUBK                             R16 R4 K13 [1]
      108 SUB                              R15 R16 R6
      109 NAMECALL                         R12 R5 K14 ["sub"]
      111 CALL                             R12 3 1
      112 MOVE                             R10 R12
      113 MOVE                             R13 R4
      114 NAMECALL                         R11 R5 K14 ["sub"]
      116 CALL                             R11 2 1
      117 CONCAT                           R9 R10 R11
      118 SETTABLE                         R9 R8 R3
      119 GETUPVAL                         R8 18
      120 GETUPVAL                         R10 19
      121 GETTABLEKS                       R10 R10 K15 ["lines"]
      123 GETTABLE                         R9 R10 R3
      124 CALL                             R8 1 1
      125 GETUPVAL                         R10 20
      126 GETUPVAL                         R12 10
      127 GETTABLEKS                       R12 R12 K7 ["current"]
      129 GETTABLE                         R11 R12 R3
      130 CALL                             R10 1 -1
      131 NAMECALL                         R8 R8 K16 ["set"]
      133 CALL                             R8 -1 0
      134 GETUPVAL                         R10 10
      135 GETTABLEKS                       R10 R10 K7 ["current"]
      137 GETTABLE                         R9 R10 R3
      138 GETUPVAL                         R10 14
      139 GETTABLEKS                       R10 R10 K11 ["containsNonMonospace"]
      141 MOVE                             R11 R9
      142 CALL                             R10 1 1
      143 JUMPIFNOT                        R10 ; [+9]
      144 GETUPVAL                         R10 14
      145 GETTABLEKS                       R10 R10 K12 ["measureLineWidth"]
      147 MOVE                             R11 R9
      148 GETUPVAL                         R12 15
      149 LOADN                            R13 16
      150 CALL                             R10 3 1
      151 MOVE                             R8 R10
      152 JUMP                             ; [+7]
      153 GETUPVAL                         R10 16
      154 MOVE                             R11 R9
      155 LENGTH                           R13 R9
      156 ADDK                             R12 R13 K13 [1]
      157 CALL                             R10 2 1
      158 GETUPVAL                         R11 17
      159 MUL                              R8 R10 R11
      160 GETUPVAL                         R9 4
      161 GETUPVAL                         R10 21
      162 CALL                             R9 1 1
      163 JUMPIFNOTLE                      R9 R8 ; [+5]
      165 GETUPVAL                         R10 22
      166 MOVE                             R11 R8
      167 CALL                             R10 1 0
      168 JUMP                             ; [+26]
      169 JUMPIFNOTLE                      R9 R7 ; [+25]
      171 JUMPIFNOTLT                      R8 R7 ; [+23]
      173 GETUPVAL                         R10 22
      174 GETUPVAL                         R12 10
      175 GETTABLEKS                       R12 R12 K7 ["current"]
      177 LOADN                            R13 0
      178 MOVE                             R14 R12
      179 LOADNIL                          R15
      180 LOADNIL                          R16
      181 FORGPREP                         R14
      182 MOVE                             R20 R13
      183 GETUPVAL                         R21 23
      184 MOVE                             R22 R18
      185 CALL                             R21 1 -1
      186 FASTCALL                         MATH_MAX ; [+2]
      187 GETIMPORT                        R19 K19 [math.max]
      189 CALL                             R19 -1 1
      190 MOVE                             R13 R19
      191 FORGLOOP                         R14 2 ; [-10]
      193 MOVE                             R11 R13
      194 CALL                             R10 1 0
      195 SUB                              R8 R1 R6
      196 GETUPVAL                         R9 8
      197 MOVE                             R10 R8
      198 CALL                             R9 1 0
      199 GETUPVAL                         R9 9
      200 MOVE                             R10 R8
      201 CALL                             R9 1 0
      202 JUMP                             ; [+39]
      203 LOADN                            R5 1
      204 JUMPIFNOTLE                      R3 R5 ; [+2]
      206 RETURN                           R0 0
      207 GETUPVAL                         R6 10
      208 GETTABLEKS                       R6 R6 K7 ["current"]
      210 SUBK                             R7 R3 K13 [1]
      211 GETTABLE                         R5 R6 R7
      212 GETUPVAL                         R7 10
      213 GETTABLEKS                       R7 R7 K7 ["current"]
      215 GETTABLE                         R6 R7 R3
      216 GETUPVAL                         R7 10
      217 GETTABLEKS                       R7 R7 K7 ["current"]
      219 SUBK                             R8 R3 K13 [1]
      220 MOVE                             R10 R5
      221 MOVE                             R11 R6
      222 CONCAT                           R9 R10 R11
      223 SETTABLE                         R9 R7 R8
      224 GETIMPORT                        R7 K21 [table.remove]
      226 GETUPVAL                         R8 10
      227 GETTABLEKS                       R8 R8 K7 ["current"]
      229 MOVE                             R9 R3
      230 CALL                             R7 2 0
      231 GETUPVAL                         R7 24
      232 SUBK                             R8 R3 K13 [1]
      233 LOADN                            R9 1
      234 CALL                             R7 2 0
      235 SUBK                             R7 R1 K13 [1]
      236 GETUPVAL                         R8 8
      237 MOVE                             R9 R7
      238 CALL                             R8 1 0
      239 GETUPVAL                         R8 9
      240 MOVE                             R9 R7
      241 CALL                             R8 1 0
      242 GETIMPORT                        R5 K6 [table.concat]
      244 GETUPVAL                         R6 10
      245 GETTABLEKS                       R6 R6 K7 ["current"]
      247 LOADK                            R7 K8 ["\n"]
      248 CALL                             R5 2 1
      249 GETUPVAL                         R6 11
      250 SETTABLEKS                       R5 R6 K7 ["current"]
      252 GETUPVAL                         R6 4
      253 GETUPVAL                         R7 12
      254 GETTABLEKS                       R7 R7 K9 ["onTextChanged"]
      256 CALL                             R6 1 1
      257 JUMPIFNOT                        R6 ; [+3]
      258 MOVE                             R7 R6
      259 MOVE                             R8 R5
      260 CALL                             R7 1 0
      261 RETURN                           R0 0
      262 LOADN                            R2 0
      263 LOADK                            R5 K8 ["\n"]
      264 NAMECALL                         R3 R0 K22 ["gmatch"]
      266 CALL                             R3 2 3
      267 FORGPREP                         R3
      268 ADDK                             R2 R2 K13 [1]
      269 FORGLOOP                         R3 1 ; [-2]
      271 LOADN                            R3 2
      272 JUMPIFNOTLT                      R3 R2 ; [+68]
      274 GETUPVAL                         R4 4
      275 GETUPVAL                         R5 6
      276 CALL                             R4 1 1
      277 OR                               R3 R4 R1
      278 JUMPIFEQ                         R3 R1 ; [+4]
      280 GETUPVAL                         R4 7
      281 CALL                             R4 0 1
      282 MOVE                             R1 R4
      283 GETUPVAL                         R4 13
      284 MOVE                             R5 R1
      285 CALL                             R4 1 2
      286 GETUPVAL                         R7 10
      287 GETTABLEKS                       R7 R7 K7 ["current"]
      289 GETTABLE                         R6 R7 R4
      290 GETUPVAL                         R7 10
      291 GETTABLEKS                       R7 R7 K7 ["current"]
      293 LOADN                            R10 1
      294 SUBK                             R11 R5 K13 [1]
      295 NAMECALL                         R8 R6 K14 ["sub"]
      297 CALL                             R8 3 1
      298 SETTABLE                         R8 R7 R4
      299 GETUPVAL                         R8 10
      300 GETTABLEKS                       R8 R8 K7 ["current"]
      302 ADDK                             R9 R4 K13 [1]
      303 MOVE                             R12 R5
      304 NAMECALL                         R10 R6 K14 ["sub"]
      306 CALL                             R10 2 -1
      307 FASTCALL                         TABLE_INSERT ; [+2]
      308 GETIMPORT                        R7 K24 [table.insert]
      310 CALL                             R7 -1 0
      311 GETUPVAL                         R7 25
      312 MOVE                             R8 R4
      313 CALL                             R7 1 0
      314 ADDK                             R7 R1 K13 [1]
      315 GETUPVAL                         R8 8
      316 MOVE                             R9 R7
      317 CALL                             R8 1 0
      318 GETUPVAL                         R8 9
      319 MOVE                             R9 R7
      320 CALL                             R8 1 0
      321 GETIMPORT                        R8 K6 [table.concat]
      323 GETUPVAL                         R9 10
      324 GETTABLEKS                       R9 R9 K7 ["current"]
      326 LOADK                            R10 K8 ["\n"]
      327 CALL                             R8 2 1
      328 GETUPVAL                         R9 11
      329 SETTABLEKS                       R8 R9 K7 ["current"]
      331 GETUPVAL                         R9 4
      332 GETUPVAL                         R10 12
      333 GETTABLEKS                       R10 R10 K9 ["onTextChanged"]
      335 CALL                             R9 1 1
      336 JUMPIFNOT                        R9 ; [+3]
      337 MOVE                             R10 R9
      338 MOVE                             R11 R8
      339 CALL                             R10 1 0
      340 RETURN                           R0 0
      341 GETIMPORT                        R3 K27 [string.split]
      343 MOVE                             R4 R0
      344 LOADK                            R5 K8 ["\n"]
      345 CALL                             R3 2 1
      346 GETTABLEN                        R5 R3 2
      347 ORK                              R4 R5 K28 [""]
      348 LOADN                            R7 2
      349 LENGTH                           R9 R4
      350 SUBK                             R8 R9 K13 [1]
      351 NAMECALL                         R5 R4 K14 ["sub"]
      353 CALL                             R5 3 1
      354 JUMPIFNOTEQKS                    R5 K28 [""] ; [+2]
      356 RETURN                           R0 0
      357 GETUPVAL                         R7 4
      358 GETUPVAL                         R8 6
      359 CALL                             R7 1 1
      360 OR                               R6 R7 R1
      361 JUMPIFEQ                         R6 R1 ; [+4]
      363 GETUPVAL                         R7 7
      364 CALL                             R7 0 1
      365 MOVE                             R1 R7
      366 GETUPVAL                         R7 13
      367 MOVE                             R8 R1
      368 CALL                             R7 1 2
      369 GETUPVAL                         R10 10
      370 GETTABLEKS                       R10 R10 K7 ["current"]
      372 GETTABLE                         R9 R10 R7
      373 GETUPVAL                         R11 14
      374 GETTABLEKS                       R11 R11 K11 ["containsNonMonospace"]
      376 MOVE                             R12 R9
      377 CALL                             R11 1 1
      378 JUMPIFNOT                        R11 ; [+8]
      379 GETUPVAL                         R10 14
      380 GETTABLEKS                       R10 R10 K12 ["measureLineWidth"]
      382 MOVE                             R11 R9
      383 GETUPVAL                         R12 15
      384 LOADN                            R13 16
      385 CALL                             R10 3 1
      386 JUMP                             ; [+7]
      387 GETUPVAL                         R11 16
      388 MOVE                             R12 R9
      389 LENGTH                           R14 R9
      390 ADDK                             R13 R14 K13 [1]
      391 CALL                             R11 2 1
      392 GETUPVAL                         R12 17
      393 MUL                              R10 R11 R12
      394 GETUPVAL                         R11 10
      395 GETTABLEKS                       R11 R11 K7 ["current"]
      397 LOADN                            R18 1
      398 SUBK                             R19 R8 K13 [1]
      399 NAMECALL                         R16 R9 K14 ["sub"]
      401 CALL                             R16 3 1
      402 MOVE                             R13 R16
      403 MOVE                             R14 R5
      404 MOVE                             R17 R8
      405 NAMECALL                         R15 R9 K14 ["sub"]
      407 CALL                             R15 2 1
      408 CONCAT                           R12 R13 R15
      409 SETTABLE                         R12 R11 R7
      410 GETUPVAL                         R11 18
      411 GETUPVAL                         R13 19
      412 GETTABLEKS                       R13 R13 K15 ["lines"]
      414 GETTABLE                         R12 R13 R7
      415 CALL                             R11 1 1
      416 GETUPVAL                         R13 20
      417 GETUPVAL                         R15 10
      418 GETTABLEKS                       R15 R15 K7 ["current"]
      420 GETTABLE                         R14 R15 R7
      421 CALL                             R13 1 -1
      422 NAMECALL                         R11 R11 K16 ["set"]
      424 CALL                             R11 -1 0
      425 GETUPVAL                         R13 10
      426 GETTABLEKS                       R13 R13 K7 ["current"]
      428 GETTABLE                         R12 R13 R7
      429 GETUPVAL                         R13 14
      430 GETTABLEKS                       R13 R13 K11 ["containsNonMonospace"]
      432 MOVE                             R14 R12
      433 CALL                             R13 1 1
      434 JUMPIFNOT                        R13 ; [+9]
      435 GETUPVAL                         R13 14
      436 GETTABLEKS                       R13 R13 K12 ["measureLineWidth"]
      438 MOVE                             R14 R12
      439 GETUPVAL                         R15 15
      440 LOADN                            R16 16
      441 CALL                             R13 3 1
      442 MOVE                             R11 R13
      443 JUMP                             ; [+7]
      444 GETUPVAL                         R13 16
      445 MOVE                             R14 R12
      446 LENGTH                           R16 R12
      447 ADDK                             R15 R16 K13 [1]
      448 CALL                             R13 2 1
      449 GETUPVAL                         R14 17
      450 MUL                              R11 R13 R14
      451 GETUPVAL                         R12 4
      452 GETUPVAL                         R13 21
      453 CALL                             R12 1 1
      454 JUMPIFNOTLE                      R12 R11 ; [+5]
      456 GETUPVAL                         R13 22
      457 MOVE                             R14 R11
      458 CALL                             R13 1 0
      459 JUMP                             ; [+26]
      460 JUMPIFNOTLE                      R12 R10 ; [+25]
      462 JUMPIFNOTLT                      R11 R10 ; [+23]
      464 GETUPVAL                         R13 22
      465 GETUPVAL                         R15 10
      466 GETTABLEKS                       R15 R15 K7 ["current"]
      468 LOADN                            R16 0
      469 MOVE                             R17 R15
      470 LOADNIL                          R18
      471 LOADNIL                          R19
      472 FORGPREP                         R17
      473 MOVE                             R23 R16
      474 GETUPVAL                         R24 23
      475 MOVE                             R25 R21
      476 CALL                             R24 1 -1
      477 FASTCALL                         MATH_MAX ; [+2]
      478 GETIMPORT                        R22 K19 [math.max]
      480 CALL                             R22 -1 1
      481 MOVE                             R16 R22
      482 FORGLOOP                         R17 2 ; [-10]
      484 MOVE                             R14 R16
      485 CALL                             R13 1 0
      486 LENGTH                           R12 R5
      487 ADD                              R11 R1 R12
      488 GETUPVAL                         R12 8
      489 MOVE                             R13 R11
      490 CALL                             R12 1 0
      491 GETUPVAL                         R12 9
      492 MOVE                             R13 R11
      493 CALL                             R12 1 0
      494 GETIMPORT                        R12 K6 [table.concat]
      496 GETUPVAL                         R13 10
      497 GETTABLEKS                       R13 R13 K7 ["current"]
      499 LOADK                            R14 K8 ["\n"]
      500 CALL                             R12 2 1
      501 GETUPVAL                         R13 11
      502 SETTABLEKS                       R12 R13 K7 ["current"]
      504 GETUPVAL                         R13 4
      505 GETUPVAL                         R14 12
      506 GETTABLEKS                       R14 R14 K9 ["onTextChanged"]
      508 CALL                             R13 1 1
      509 JUMPIFNOT                        R13 ; [+3]
      510 MOVE                             R14 R13
      511 MOVE                             R15 R12
      512 CALL                             R14 1 0
      513 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["Text"]
        6 GETUPVAL                         R1 2
        7 JUMPIFEQ                         R0 R1 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R1 3
       12 SETTABLEKS                       R1 R0 K1 ["CursorPosition"]
       14 GETUPVAL                         R0 4
       15 GETUPVAL                         R1 5
       16 CALL                             R0 1 1
       17 JUMPIFNOTEQKNIL                  R0 ; [+2]
       19 RETURN                           R0 0
       20 GETUPVAL                         R1 6
       21 MOVE                             R2 R0
       22 CALL                             R1 1 2
       23 GETUPVAL                         R3 7
       24 GETTABLEKS                       R3 R3 K2 ["current"]
       26 GETUPVAL                         R4 8
       27 GETUPVAL                         R6 3
       28 SUBK                             R5 R6 K3 [1]
       29 JUMPIFNOTEQ                      R4 R5 ; [+33]
       31 LOADN                            R4 1
       32 JUMPIFNOTLT                      R4 R0 ; [+175]
       34 GETTABLE                         R4 R3 R1
       35 LOADNIL                          R5
       36 LOADN                            R6 1
       37 JUMPIFNOTLT                      R6 R2 ; [+9]
       39 GETUPVAL                         R6 9
       40 GETTABLEKS                       R6 R6 K4 ["prevCharBytes"]
       42 MOVE                             R7 R4
       43 MOVE                             R8 R2
       44 CALL                             R6 2 1
       45 MOVE                             R5 R6
       46 JUMP                             ; [+1]
       47 LOADN                            R5 1
       48 FASTCALL2K                       MATH_MAX R5 K3 ; [+5]
       50 MOVE                             R8 R5
       51 LOADK                            R9 K3 [1]
       52 GETIMPORT                        R7 K7 [math.max]
       54 CALL                             R7 2 1
       55 SUB                              R6 R0 R7
       56 GETUPVAL                         R7 10
       57 MOVE                             R8 R6
       58 CALL                             R7 1 0
       59 GETUPVAL                         R7 11
       60 MOVE                             R8 R6
       61 CALL                             R7 1 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R4 8
       64 GETUPVAL                         R6 3
       65 ADDK                             R5 R6 K3 [1]
       66 JUMPIFNOTEQ                      R4 R5 ; [+52]
       68 GETUPVAL                         R5 7
       69 GETTABLEKS                       R5 R5 K2 ["current"]
       71 LENGTH                           R6 R5
       72 JUMPIFNOTEQKN                    R6 K8 [0] ; [+3]
       74 LOADN                            R4 0
       75 JUMP                             ; [+12]
       76 LOADN                            R6 0
       77 MOVE                             R7 R5
       78 LOADNIL                          R8
       79 LOADNIL                          R9
       80 FORGPREP                         R7
       81 LENGTH                           R12 R11
       82 ADD                              R6 R6 R12
       83 FORGLOOP                         R7 2 ; [-3]
       85 LENGTH                           R8 R5
       86 ADD                              R7 R6 R8
       87 SUBK                             R4 R7 K3 [1]
       88 JUMPIFNOTLE                      R0 R4 ; [+119]
       90 GETTABLE                         R5 R3 R1
       91 LOADNIL                          R6
       92 LENGTH                           R7 R5
       93 JUMPIFNOTLE                      R2 R7 ; [+9]
       95 GETUPVAL                         R7 9
       96 GETTABLEKS                       R7 R7 K9 ["currCharBytes"]
       98 MOVE                             R8 R5
       99 MOVE                             R9 R2
      100 CALL                             R7 2 1
      101 MOVE                             R6 R7
      102 JUMP                             ; [+1]
      103 LOADN                            R6 1
      104 FASTCALL2K                       MATH_MAX R6 K3 ; [+5]
      106 MOVE                             R9 R6
      107 LOADK                            R10 K3 [1]
      108 GETIMPORT                        R8 K7 [math.max]
      110 CALL                             R8 2 1
      111 ADD                              R7 R0 R8
      112 GETUPVAL                         R8 10
      113 MOVE                             R9 R7
      114 CALL                             R8 1 0
      115 GETUPVAL                         R8 11
      116 MOVE                             R9 R7
      117 CALL                             R8 1 0
      118 RETURN                           R0 0
      119 GETUPVAL                         R4 8
      120 GETUPVAL                         R5 3
      121 JUMPIFNOTLT                      R4 R5 ; [+44]
      123 LOADN                            R4 1
      124 JUMPIFNOTLT                      R4 R1 ; [+83]
      126 SUBK                             R9 R1 K3 [1]
      127 GETTABLE                         R8 R3 R9
      128 LENGTH                           R7 R8
      129 ADDK                             R6 R7 K3 [1]
      130 FASTCALL2                        MATH_MIN R2 R6 ; [+4]
      132 MOVE                             R5 R2
      133 GETIMPORT                        R4 K11 [math.min]
      135 CALL                             R4 2 1
      136 SUBK                             R6 R1 K3 [1]
      137 GETUPVAL                         R7 7
      138 GETTABLEKS                       R7 R7 K2 ["current"]
      140 LOADN                            R8 1
      141 LOADN                            R11 1
      142 SUBK                             R13 R6 K3 [1]
      143 LENGTH                           R14 R7
      144 FASTCALL2                        MATH_MIN R13 R14 ; [+3]
      146 GETIMPORT                        R12 K11 [math.min]
      148 CALL                             R12 2 1
      149 MOVE                             R9 R12
      150 LOADN                            R10 1
      151 FORNPREP                         R9
      152 GETTABLE                         R14 R7 R11
      153 LENGTH                           R13 R14
      154 ADDK                             R12 R13 K3 [1]
      155 ADD                              R8 R8 R12
      156 FORNLOOP                         R9
      157 ADD                              R9 R8 R4
      158 SUBK                             R5 R9 K3 [1]
      159 GETUPVAL                         R6 10
      160 MOVE                             R7 R5
      161 CALL                             R6 1 0
      162 GETUPVAL                         R6 11
      163 MOVE                             R7 R5
      164 CALL                             R6 1 0
      165 RETURN                           R0 0
      166 LENGTH                           R4 R3
      167 JUMPIFNOTLT                      R1 R4 ; [+40]
      169 ADDK                             R9 R1 K3 [1]
      170 GETTABLE                         R8 R3 R9
      171 LENGTH                           R7 R8
      172 ADDK                             R6 R7 K3 [1]
      173 FASTCALL2                        MATH_MIN R2 R6 ; [+4]
      175 MOVE                             R5 R2
      176 GETIMPORT                        R4 K11 [math.min]
      178 CALL                             R4 2 1
      179 ADDK                             R6 R1 K3 [1]
      180 GETUPVAL                         R7 7
      181 GETTABLEKS                       R7 R7 K2 ["current"]
      183 LOADN                            R8 1
      184 LOADN                            R11 1
      185 SUBK                             R13 R6 K3 [1]
      186 LENGTH                           R14 R7
      187 FASTCALL2                        MATH_MIN R13 R14 ; [+3]
      189 GETIMPORT                        R12 K11 [math.min]
      191 CALL                             R12 2 1
      192 MOVE                             R9 R12
      193 LOADN                            R10 1
      194 FORNPREP                         R9
      195 GETTABLE                         R14 R7 R11
      196 LENGTH                           R13 R14
      197 ADDK                             R12 R13 K3 [1]
      198 ADD                              R8 R8 R12
      199 FORNLOOP                         R9
      200 ADD                              R9 R8 R4
      201 SUBK                             R5 R9 K3 [1]
      202 GETUPVAL                         R6 10
      203 MOVE                             R7 R5
      204 CALL                             R6 1 0
      205 GETUPVAL                         R6 11
      206 MOVE                             R7 R5
      207 CALL                             R6 1 0
      208 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["Text"]
        6 GETUPVAL                         R1 2
        7 JUMPIFEQ                         R0 R1 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K1 ["CursorPosition"]
       13 JUMPIFEQKN                       R0 K2 [-1] ; [+4]
       15 GETUPVAL                         R1 3
       16 JUMPIFNOTEQ                      R0 R1 ; [+2]
       18 RETURN                           R0 0
       19 GETIMPORT                        R1 K5 [task.defer]
       21 NEWCLOSURE                       R2 P0
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U8
       32 CAPTURE                          UPVAL U9
       33 CAPTURE                          UPVAL U10
       34 CALL                             R1 1 0
       35 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_52:
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

PROTO_53:
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
       11 LOADB                            R2 0
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          REF R2
       17 LOADK                            R6 K1 ["Text"]
       18 NAMECALL                         R4 R1 K2 ["GetPropertyChangedSignal"]
       20 CALL                             R4 2 1
       21 NEWCLOSURE                       R6 P1
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          REF R2
       25 CAPTURE                          VAL R3
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          UPVAL U8
       31 CAPTURE                          UPVAL U9
       32 CAPTURE                          UPVAL U10
       33 CAPTURE                          UPVAL U11
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          UPVAL U12
       36 CAPTURE                          UPVAL U13
       37 CAPTURE                          UPVAL U14
       38 CAPTURE                          UPVAL U15
       39 CAPTURE                          UPVAL U16
       40 CAPTURE                          UPVAL U17
       41 CAPTURE                          UPVAL U18
       42 CAPTURE                          UPVAL U19
       43 CAPTURE                          UPVAL U20
       44 CAPTURE                          UPVAL U21
       45 CAPTURE                          UPVAL U22
       46 CAPTURE                          UPVAL U23
       47 CAPTURE                          UPVAL U24
       48 NAMECALL                         R4 R4 K3 ["Connect"]
       50 CALL                             R4 2 1
       51 LOADK                            R7 K4 ["CursorPosition"]
       52 NAMECALL                         R5 R1 K2 ["GetPropertyChangedSignal"]
       54 CALL                             R5 2 1
       55 NEWCLOSURE                       R7 P2
       56 CAPTURE                          REF R2
       57 CAPTURE                          VAL R1
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          UPVAL U5
       62 CAPTURE                          UPVAL U12
       63 CAPTURE                          UPVAL U10
       64 CAPTURE                          UPVAL U13
       65 CAPTURE                          UPVAL U8
       66 CAPTURE                          UPVAL U9
       67 NAMECALL                         R5 R5 K3 ["Connect"]
       69 CALL                             R5 2 1
       70 GETTABLEKS                       R6 R1 K5 ["FocusLost"]
       72 NEWCLOSURE                       R8 P3
       73 CAPTURE                          UPVAL U8
       74 CAPTURE                          UPVAL U9
       75 NAMECALL                         R6 R6 K3 ["Connect"]
       77 CALL                             R6 2 1
       78 NEWCLOSURE                       R7 P4
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R6
       82 CLOSEUPVALS                      R2
       83 RETURN                           R7 1

PROTO_54:
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

PROTO_55:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 0
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R0
        5 CALL                             R3 1 1
        6 LOADN                            R4 1
        7 LOADN                            R5 0
        8 CALL                             R1 4 -1
        9 RETURN                           R1 -1

PROTO_56:
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

PROTO_57:
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

PROTO_58:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        5 LOADN                            R3 0
        6 GETUPVAL                         R5 1
        7 MUL                              R4 R1 R5
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_59:
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

PROTO_60:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["AbsoluteSize"]
        4 GETTABLEKS                       R1 R1 K1 ["Y"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_61:
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

PROTO_62:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_63:
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

PROTO_64:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["dropLineIndex"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+3]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 MOVE                             R2 R1
        8 MOVE                             R3 R0
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_65:
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

PROTO_66:
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

PROTO_67:
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
       22 LOADK                            R8 K5 ["ce-sentinel-text"]
       23 CALL                             R6 2 1
       24 GETTABLEKS                       R7 R1 K4 ["createComputed"]
       26 NEWCLOSURE                       R8 P1
       27 CAPTURE                          VAL R3
       28 LOADK                            R9 K6 ["ce-hidden-size"]
       29 CALL                             R7 2 1
       30 GETTABLEKS                       R8 R1 K4 ["createComputed"]
       32 NEWCLOSURE                       R9 P2
       33 CAPTURE                          VAL R3
       34 LOADK                            R10 K7 ["ce-hidden-bg-tr"]
       35 CALL                             R8 2 1
       36 GETTABLEKS                       R9 R1 K4 ["createComputed"]
       38 NEWCLOSURE                       R10 P3
       39 CAPTURE                          VAL R3
       40 LOADK                            R11 K8 ["ce-hidden-text-tr"]
       41 CALL                             R9 2 1
       42 GETTABLEKS                       R10 R1 K9 ["provide"]
       44 GETUPVAL                         R11 0
       45 GETTABLEKS                       R11 R11 K10 ["token"]
       47 CALL                             R10 1 1
       48 GETIMPORT                        R11 K13 [Color3.fromRGB]
       50 LOADN                            R12 18
       51 LOADN                            R13 18
       52 LOADN                            R14 21
       53 CALL                             R11 3 1
       54 GETIMPORT                        R12 K13 [Color3.fromRGB]
       56 LOADN                            R13 255
       57 LOADN                            R14 255
       58 LOADN                            R15 255
       59 CALL                             R12 3 1
       60 GETIMPORT                        R13 K13 [Color3.fromRGB]
       62 LOADN                            R14 100
       63 LOADN                            R15 100
       64 LOADN                            R16 110
       65 CALL                             R13 3 1
       66 GETIMPORT                        R14 K13 [Color3.fromRGB]
       68 LOADN                            R15 140
       69 LOADN                            R16 142
       70 LOADN                            R17 150
       71 CALL                             R14 3 1
       72 GETIMPORT                        R15 K13 [Color3.fromRGB]
       74 LOADN                            R16 40
       75 LOADN                            R17 40
       76 LOADN                            R18 45
       77 CALL                             R15 3 1
       78 GETIMPORT                        R16 K13 [Color3.fromRGB]
       80 LOADN                            R17 210
       81 LOADN                            R18 212
       82 LOADN                            R19 218
       83 CALL                             R16 3 1
       84 GETIMPORT                        R17 K13 [Color3.fromRGB]
       86 LOADN                            R18 244
       87 LOADN                            R19 244
       88 LOADN                            R20 246
       89 CALL                             R17 3 1
       90 GETIMPORT                        R18 K13 [Color3.fromRGB]
       92 LOADN                            R19 39
       93 LOADN                            R20 41
       94 LOADN                            R21 48
       95 CALL                             R18 3 1
       96 GETIMPORT                        R19 K13 [Color3.fromRGB]
       98 LOADN                            R20 221
       99 LOADN                            R21 223
      100 LOADN                            R22 227
      101 CALL                             R19 3 1
      102 GETIMPORT                        R20 K13 [Color3.fromRGB]
      104 LOADN                            R21 39
      105 LOADN                            R22 41
      106 LOADN                            R23 48
      107 CALL                             R20 3 1
      108 GETTABLEKS                       R21 R1 K4 ["createComputed"]
      110 NEWCLOSURE                       R22 P4
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R11
      114 LOADK                            R23 K14 ["ce-bg-color"]
      115 CALL                             R21 2 1
      116 GETTABLEKS                       R22 R1 K4 ["createComputed"]
      118 NEWCLOSURE                       R23 P5
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R13
      122 LOADK                            R24 K15 ["ce-line-num-color"]
      123 CALL                             R22 2 1
      124 GETTABLEKS                       R23 R1 K4 ["createComputed"]
      126 NEWCLOSURE                       R24 P6
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R16
      129 CAPTURE                          VAL R15
      130 LOADK                            R25 K16 ["ce-gutter-sep-color"]
      131 CALL                             R23 2 1
      132 GETIMPORT                        R24 K13 [Color3.fromRGB]
      134 LOADN                            R25 115
      135 LOADN                            R26 120
      136 LOADN                            R27 140
      137 CALL                             R24 3 1
      138 GETIMPORT                        R25 K13 [Color3.fromRGB]
      140 LOADN                            R26 184
      141 LOADN                            R27 186
      142 LOADN                            R28 194
      143 CALL                             R25 3 1
      144 GETTABLEKS                       R26 R1 K4 ["createComputed"]
      146 NEWCLOSURE                       R27 P7
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R25
      149 CAPTURE                          VAL R24
      150 LOADK                            R28 K17 ["ce-scrollbar-color"]
      151 CALL                             R26 2 1
      152 GETTABLEKS                       R27 R1 K4 ["createComputed"]
      154 NEWCLOSURE                       R28 P8
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R18
      157 CAPTURE                          VAL R17
      158 LOADK                            R29 K18 ["ce-cursor-color"]
      159 CALL                             R27 2 1
      160 GETTABLEKS                       R28 R1 K4 ["createComputed"]
      162 NEWCLOSURE                       R29 P9
      163 CAPTURE                          VAL R10
      164 CAPTURE                          VAL R20
      165 CAPTURE                          VAL R19
      166 LOADK                            R30 K19 ["ce-code-text-color"]
      167 CALL                             R28 2 1
      168 GETUPVAL                         R29 1
      169 GETTABLEKS                       R29 R29 K20 ["measureLineHeight"]
      171 GETUPVAL                         R30 2
      172 LOADN                            R31 16
      173 CALL                             R29 2 1
      174 GETIMPORT                        R30 K22 [game]
      176 LOADK                            R32 K23 ["TextService"]
      177 NAMECALL                         R30 R30 K24 ["GetService"]
      179 CALL                             R30 2 1
      180 GETIMPORT                        R32 K27 [Instance.new]
      182 LOADK                            R33 K28 ["GetTextBoundsParams"]
      183 CALL                             R32 1 1
      184 LOADK                            R33 K29 ["0"]
      185 SETTABLEKS                       R33 R32 K30 ["Text"]
      187 GETUPVAL                         R33 2
      188 SETTABLEKS                       R33 R32 K31 ["Font"]
      190 LOADN                            R33 16
      191 SETTABLEKS                       R33 R32 K32 ["Size"]
      193 LOADN                            R33 232
      194 SETTABLEKS                       R33 R32 K33 ["Width"]
      196 GETIMPORT                        R33 K35 [pcall]
      198 NEWCLOSURE                       R34 P10
      199 CAPTURE                          VAL R30
      200 CAPTURE                          VAL R32
      201 CALL                             R33 1 2
      202 JUMPIFNOT                        R33 ; [+3]
      203 GETTABLEKS                       R31 R34 K36 ["X"]
      205 JUMP                             ; [+1]
      206 LOADK                            R31 K37 [9.6]
      207 DUPCLOSURE                       R32 K38 [PROTO_12]
      208 DUPCLOSURE                       R33 K39 [PROTO_13]
      209 DUPCLOSURE                       R34 K40 [PROTO_14]
      210 CAPTURE                          VAL R32
      211 GETTABLEKS                       R35 R1 K4 ["createComputed"]
      213 NEWCLOSURE                       R36 P14
      214 CAPTURE                          UPVAL U3
      215 CAPTURE                          VAL R0
      216 CAPTURE                          UPVAL U4
      217 LOADK                            R37 K41 ["ce-rich-text-enabled"]
      218 CALL                             R35 2 1
      219 GETTABLEKS                       R36 R1 K42 ["createRef"]
      221 LOADK                            R37 K43 ["container"]
      222 CALL                             R36 1 1
      223 GETTABLEKS                       R37 R1 K42 ["createRef"]
      225 LOADK                            R38 K44 ["hiddenInput"]
      226 CALL                             R37 1 1
      227 NEWCLOSURE                       R38 P15
      228 CAPTURE                          UPVAL U5
      229 CAPTURE                          UPVAL U2
      230 CAPTURE                          VAL R32
      231 CAPTURE                          VAL R31
      232 NEWCLOSURE                       R39 P16
      233 CAPTURE                          VAL R38
      234 NEWCLOSURE                       R40 P17
      235 CAPTURE                          VAL R2
      236 CAPTURE                          VAL R0
      237 CAPTURE                          UPVAL U4
      238 CAPTURE                          VAL R10
      239 NEWCLOSURE                       R41 P18
      240 CAPTURE                          VAL R2
      241 CAPTURE                          VAL R0
      242 CAPTURE                          UPVAL U4
      243 CAPTURE                          VAL R10
      244 MOVE                             R43 R2
      245 GETTABLEKS                       R44 R0 K46 ["text"]
      247 CALL                             R43 1 1
      248 ORK                              R42 R43 K45 [""]
      249 DUPTABLE                         R43 K48 [{"current"}]
      250 GETIMPORT                        R44 K51 [string.split]
      252 MOVE                             R45 R42
      253 LOADK                            R46 K52 ["\n"]
      254 CALL                             R44 2 1
      255 SETTABLEKS                       R44 R43 K47 ["current"]
      257 DUPTABLE                         R44 K48 [{"current"}]
      258 SETTABLEKS                       R42 R44 K47 ["current"]
      260 GETTABLEKS                       R45 R1 K53 ["createStore"]
      262 DUPTABLE                         R46 K55 [{"lines"}]
      263 MOVE                             R47 R41
      264 GETTABLEKS                       R48 R43 K47 ["current"]
      266 CALL                             R47 1 1
      267 SETTABLEKS                       R47 R46 K54 ["lines"]
      269 CALL                             R45 1 2
      270 GETTABLEKS                       R47 R1 K56 ["createSignal"]
      272 GETTABLEKS                       R49 R43 K47 ["current"]
      274 LENGTH                           R48 R49
      275 CALL                             R47 1 2
      276 GETTABLEKS                       R49 R1 K56 ["createSignal"]
      278 GETTABLEKS                       R51 R43 K47 ["current"]
      280 LOADN                            R52 0
      281 MOVE                             R53 R51
      282 LOADNIL                          R54
      283 LOADNIL                          R55
      284 FORGPREP                         R53
      285 MOVE                             R59 R52
      286 MOVE                             R60 R38
      287 MOVE                             R61 R57
      288 CALL                             R60 1 -1
      289 FASTCALL                         MATH_MAX ; [+2]
      290 GETIMPORT                        R58 K59 [math.max]
      292 CALL                             R58 -1 1
      293 MOVE                             R52 R58
      294 FORGLOOP                         R53 2 ; [-10]
      296 MOVE                             R50 R52
      297 CALL                             R49 1 2
      298 GETTABLEKS                       R51 R1 K56 ["createSignal"]
      300 LOADNIL                          R52
      301 CALL                             R51 1 2
      302 GETTABLEKS                       R53 R1 K56 ["createSignal"]
      304 LOADNIL                          R54
      305 CALL                             R53 1 2
      306 NEWCLOSURE                       R55 P19
      307 CAPTURE                          VAL R43
      308 NEWCLOSURE                       R56 P20
      309 CAPTURE                          VAL R43
      310 NEWCLOSURE                       R57 P21
      311 CAPTURE                          VAL R43
      312 GETTABLEKS                       R58 R1 K60 ["createEffect"]
      314 NEWCLOSURE                       R59 P22
      315 CAPTURE                          VAL R0
      316 CAPTURE                          VAL R44
      317 CAPTURE                          VAL R43
      318 CAPTURE                          VAL R46
      319 CAPTURE                          VAL R45
      320 CAPTURE                          VAL R41
      321 CAPTURE                          VAL R48
      322 CAPTURE                          VAL R50
      323 CAPTURE                          VAL R38
      324 LOADK                            R60 K61 ["ce-sync-external"]
      325 CALL                             R58 2 0
      326 GETTABLEKS                       R58 R1 K60 ["createEffect"]
      328 NEWCLOSURE                       R59 P23
      329 CAPTURE                          VAL R10
      330 CAPTURE                          VAL R46
      331 CAPTURE                          VAL R45
      332 CAPTURE                          VAL R41
      333 CAPTURE                          VAL R43
      334 LOADK                            R60 K62 ["ce-rehighlight-on-theme"]
      335 CALL                             R58 2 0
      336 NEWCLOSURE                       R58 P24
      337 CAPTURE                          VAL R0
      338 GETTABLEKS                       R59 R1 K60 ["createEffect"]
      340 NEWCLOSURE                       R60 P25
      341 CAPTURE                          VAL R0
      342 CAPTURE                          VAL R52
      343 CAPTURE                          VAL R54
      344 LOADK                            R61 K63 ["ce-clear-when-inactive"]
      345 CALL                             R59 2 0
      346 GETTABLEKS                       R59 R1 K56 ["createSignal"]
      348 LOADB                            R60 1
      349 CALL                             R59 1 2
      350 GETTABLEKS                       R61 R1 K60 ["createEffect"]
      352 NEWCLOSURE                       R62 P26
      353 CAPTURE                          VAL R51
      354 CAPTURE                          VAL R53
      355 CAPTURE                          VAL R60
      356 LOADK                            R63 K64 ["ce-cursor-blink"]
      357 CALL                             R61 2 0
      358 GETTABLEKS                       R61 R1 K4 ["createComputed"]
      360 NEWCLOSURE                       R62 P27
      361 CAPTURE                          VAL R0
      362 CAPTURE                          VAL R51
      363 CAPTURE                          VAL R53
      364 CAPTURE                          VAL R59
      365 LOADK                            R63 K65 ["ce-cursor-visible"]
      366 CALL                             R61 2 1
      367 GETTABLEKS                       R62 R1 K4 ["createComputed"]
      369 NEWCLOSURE                       R63 P28
      370 CAPTURE                          VAL R51
      371 CAPTURE                          VAL R55
      372 CAPTURE                          VAL R43
      373 CAPTURE                          UPVAL U5
      374 CAPTURE                          UPVAL U2
      375 CAPTURE                          VAL R32
      376 CAPTURE                          VAL R31
      377 CAPTURE                          VAL R29
      378 LOADK                            R64 K66 ["ce-cursor-pos"]
      379 CALL                             R62 2 1
      380 GETTABLEKS                       R63 R1 K4 ["createComputed"]
      382 NEWCLOSURE                       R64 P29
      383 CAPTURE                          VAL R51
      384 CAPTURE                          VAL R29
      385 LOADK                            R65 K67 ["ce-cursor-size"]
      386 CALL                             R63 2 1
      387 GETTABLEKS                       R64 R1 K4 ["createComputed"]
      389 NEWCLOSURE                       R65 P30
      390 CAPTURE                          VAL R53
      391 CAPTURE                          VAL R51
      392 CAPTURE                          VAL R55
      393 CAPTURE                          VAL R43
      394 CAPTURE                          UPVAL U5
      395 CAPTURE                          UPVAL U2
      396 CAPTURE                          VAL R32
      397 CAPTURE                          VAL R31
      398 CAPTURE                          VAL R29
      399 LOADK                            R66 K68 ["ce-selection-rects"]
      400 CALL                             R64 2 1
      401 NEWTABLE                         R65 0 0
      403 GETTABLEKS                       R66 R1 K60 ["createEffect"]
      405 NEWCLOSURE                       R67 P31
      406 CAPTURE                          VAL R64
      407 CAPTURE                          VAL R2
      408 CAPTURE                          VAL R36
      409 CAPTURE                          VAL R65
      410 CAPTURE                          UPVAL U6
      411 LOADK                            R68 K69 ["ce-selection-rect-frames"]
      412 CALL                             R66 2 0
      413 GETTABLEKS                       R66 R1 K4 ["createComputed"]
      415 NEWCLOSURE                       R67 P32
      416 CAPTURE                          VAL R47
      417 CAPTURE                          VAL R49
      418 CAPTURE                          VAL R31
      419 CAPTURE                          VAL R29
      420 LOADK                            R68 K70 ["ce-overlay-size"]
      421 CALL                             R66 2 1
      422 LOADB                            R67 0
      423 NEWCLOSURE                       R68 P33
      424 CAPTURE                          VAL R2
      425 CAPTURE                          VAL R36
      426 CAPTURE                          VAL R43
      427 CAPTURE                          VAL R29
      428 CAPTURE                          UPVAL U5
      429 CAPTURE                          UPVAL U2
      430 CAPTURE                          VAL R31
      431 CAPTURE                          VAL R33
      432 NEWCLOSURE                       R69 P34
      433 CAPTURE                          VAL R2
      434 CAPTURE                          VAL R0
      435 CAPTURE                          REF R67
      436 CAPTURE                          VAL R68
      437 CAPTURE                          VAL R43
      438 CAPTURE                          VAL R52
      439 CAPTURE                          VAL R54
      440 NEWCLOSURE                       R70 P35
      441 CAPTURE                          REF R67
      442 CAPTURE                          VAL R2
      443 CAPTURE                          VAL R51
      444 CAPTURE                          VAL R68
      445 CAPTURE                          VAL R52
      446 CAPTURE                          VAL R43
      447 NEWCLOSURE                       R71 P36
      448 CAPTURE                          REF R67
      449 GETTABLEKS                       R72 R1 K60 ["createEffect"]
      451 NEWCLOSURE                       R73 P37
      452 CAPTURE                          VAL R0
      453 CAPTURE                          VAL R51
      454 CAPTURE                          VAL R2
      455 CAPTURE                          VAL R37
      456 CAPTURE                          VAL R4
      457 CAPTURE                          VAL R5
      458 LOADK                            R74 K71 ["ce-focus-on-select"]
      459 CALL                             R72 2 0
      460 NEWCLOSURE                       R72 P38
      461 CAPTURE                          VAL R43
      462 CAPTURE                          VAL R44
      463 CAPTURE                          VAL R2
      464 CAPTURE                          VAL R0
      465 NEWCLOSURE                       R73 P39
      466 CAPTURE                          VAL R2
      467 CAPTURE                          VAL R49
      468 CAPTURE                          VAL R50
      469 CAPTURE                          VAL R43
      470 CAPTURE                          VAL R38
      471 NEWCLOSURE                       R74 P40
      472 CAPTURE                          VAL R2
      473 CAPTURE                          VAL R45
      474 CAPTURE                          VAL R43
      475 CAPTURE                          VAL R0
      476 CAPTURE                          UPVAL U4
      477 CAPTURE                          VAL R10
      478 CAPTURE                          VAL R46
      479 CAPTURE                          VAL R48
      480 CAPTURE                          VAL R50
      481 CAPTURE                          VAL R38
      482 NEWCLOSURE                       R75 P41
      483 CAPTURE                          VAL R2
      484 CAPTURE                          VAL R45
      485 CAPTURE                          VAL R43
      486 CAPTURE                          VAL R0
      487 CAPTURE                          UPVAL U4
      488 CAPTURE                          VAL R10
      489 CAPTURE                          VAL R46
      490 CAPTURE                          VAL R48
      491 CAPTURE                          VAL R50
      492 CAPTURE                          VAL R38
      493 NEWCLOSURE                       R76 P42
      494 CAPTURE                          VAL R2
      495 CAPTURE                          VAL R53
      496 CAPTURE                          VAL R51
      497 CAPTURE                          VAL R55
      498 CAPTURE                          VAL R43
      499 CAPTURE                          UPVAL U5
      500 CAPTURE                          UPVAL U2
      501 CAPTURE                          VAL R32
      502 CAPTURE                          VAL R31
      503 CAPTURE                          VAL R46
      504 CAPTURE                          VAL R45
      505 CAPTURE                          VAL R40
      506 CAPTURE                          VAL R49
      507 CAPTURE                          VAL R50
      508 CAPTURE                          VAL R38
      509 CAPTURE                          VAL R75
      510 GETTABLEKS                       R77 R1 K60 ["createEffect"]
      512 NEWCLOSURE                       R78 P43
      513 CAPTURE                          VAL R37
      514 CAPTURE                          VAL R2
      515 CAPTURE                          VAL R0
      516 CAPTURE                          VAL R4
      517 CAPTURE                          VAL R5
      518 CAPTURE                          VAL R51
      519 CAPTURE                          VAL R53
      520 CAPTURE                          VAL R76
      521 CAPTURE                          VAL R52
      522 CAPTURE                          VAL R54
      523 CAPTURE                          VAL R43
      524 CAPTURE                          VAL R44
      525 CAPTURE                          VAL R55
      526 CAPTURE                          UPVAL U5
      527 CAPTURE                          UPVAL U2
      528 CAPTURE                          VAL R32
      529 CAPTURE                          VAL R31
      530 CAPTURE                          VAL R46
      531 CAPTURE                          VAL R45
      532 CAPTURE                          VAL R40
      533 CAPTURE                          VAL R49
      534 CAPTURE                          VAL R50
      535 CAPTURE                          VAL R38
      536 CAPTURE                          VAL R75
      537 CAPTURE                          VAL R74
      538 LOADK                            R79 K72 ["ce-input-handler"]
      539 CALL                             R77 2 0
      540 GETTABLEKS                       R77 R1 K4 ["createComputed"]
      542 NEWCLOSURE                       R78 P44
      543 CAPTURE                          VAL R0
      544 CAPTURE                          VAL R47
      545 CAPTURE                          VAL R31
      546 LOADK                            R79 K73 ["ce-gutter-width"]
      547 CALL                             R77 2 1
      548 GETTABLEKS                       R78 R1 K4 ["createComputed"]
      550 NEWCLOSURE                       R79 P45
      551 CAPTURE                          VAL R77
      552 LOADK                            R80 K74 ["ce-gutter-size"]
      553 CALL                             R78 2 1
      554 GETTABLEKS                       R79 R1 K4 ["createComputed"]
      556 NEWCLOSURE                       R80 P46
      557 CAPTURE                          VAL R77
      558 LOADK                            R81 K75 ["ce-scroll-frame-size"]
      559 CALL                             R79 2 1
      560 GETTABLEKS                       R80 R1 K4 ["createComputed"]
      562 NEWCLOSURE                       R81 P47
      563 CAPTURE                          VAL R77
      564 LOADK                            R82 K76 ["ce-code-area-position"]
      565 CALL                             R80 2 1
      566 GETTABLEKS                       R81 R1 K42 ["createRef"]
      568 LOADK                            R82 K77 ["scrollFrame"]
      569 CALL                             R81 1 1
      570 GETTABLEKS                       R82 R1 K42 ["createRef"]
      572 LOADK                            R83 K78 ["gutterScroll"]
      573 CALL                             R82 1 1
      574 GETTABLEKS                       R83 R1 K56 ["createSignal"]
      576 LOADN                            R84 0
      577 CALL                             R83 1 2
      578 GETTABLEKS                       R85 R1 K56 ["createSignal"]
      580 LOADN                            R86 0
      581 CALL                             R85 1 2
      582 GETTABLEKS                       R87 R1 K4 ["createComputed"]
      584 NEWCLOSURE                       R88 P48
      585 CAPTURE                          VAL R47
      586 CAPTURE                          VAL R29
      587 LOADK                            R89 K79 ["ce-gutter-canvas-size"]
      588 CALL                             R87 2 1
      589 GETTABLEKS                       R88 R1 K4 ["createComputed"]
      591 NEWCLOSURE                       R89 P49
      592 CAPTURE                          VAL R47
      593 LOADK                            R90 K80 ["ce-line-numbers"]
      594 CALL                             R88 2 1
      595 GETTABLEKS                       R89 R1 K60 ["createEffect"]
      597 NEWCLOSURE                       R90 P50
      598 CAPTURE                          VAL R81
      599 CAPTURE                          VAL R82
      600 CAPTURE                          VAL R86
      601 CAPTURE                          VAL R84
      602 LOADK                            R91 K81 ["ce-scroll-sync"]
      603 CALL                             R89 2 0
      604 NEWCLOSURE                       R89 P51
      605 CAPTURE                          VAL R0
      606 GETTABLEKS                       R90 R1 K4 ["createComputed"]
      608 NEWCLOSURE                       R91 P52
      609 CAPTURE                          VAL R0
      610 LOADK                            R92 K82 ["ce-drop-visible"]
      611 CALL                             R90 2 1
      612 GETTABLEKS                       R91 R1 K4 ["createComputed"]
      614 NEWCLOSURE                       R92 P53
      615 CAPTURE                          VAL R0
      616 CAPTURE                          VAL R29
      617 LOADK                            R93 K83 ["ce-drop-pos"]
      618 CALL                             R91 2 1
      619 DUPTABLE                         R92 K113 [{"overlaySize", "cursorVisible", "cursorPos", "cursorSize", "cursorColor", "bgColor", "scrollbarColor", "lineNumberColor", "gutterSepColor", "codeTextColor", "onInputBegan", "onInputChanged", "onInputEnded", "showLineNumbers", "gutterCanvasSize", "gutterSize", "lineNumbers", "scrollFrameSize", "codeAreaPosition", "dropIndicatorVisible", "dropIndicatorPos", "LayoutOrder", "sentinelText", "hiddenInputSize", "hiddenInputBgTransparency", "hiddenInputTextTransparency", "highlightedLines", "richTextEnabled", "lineHeight"}]
      620 SETTABLEKS                       R66 R92 K84 ["overlaySize"]
      622 SETTABLEKS                       R61 R92 K85 ["cursorVisible"]
      624 SETTABLEKS                       R62 R92 K86 ["cursorPos"]
      626 SETTABLEKS                       R63 R92 K87 ["cursorSize"]
      628 SETTABLEKS                       R27 R92 K88 ["cursorColor"]
      630 SETTABLEKS                       R21 R92 K89 ["bgColor"]
      632 SETTABLEKS                       R26 R92 K90 ["scrollbarColor"]
      634 SETTABLEKS                       R22 R92 K91 ["lineNumberColor"]
      636 SETTABLEKS                       R23 R92 K92 ["gutterSepColor"]
      638 SETTABLEKS                       R28 R92 K93 ["codeTextColor"]
      640 SETTABLEKS                       R69 R92 K94 ["onInputBegan"]
      642 SETTABLEKS                       R70 R92 K95 ["onInputChanged"]
      644 SETTABLEKS                       R71 R92 K96 ["onInputEnded"]
      646 GETTABLEKS                       R93 R0 K97 ["showLineNumbers"]
      648 SETTABLEKS                       R93 R92 K97 ["showLineNumbers"]
      650 SETTABLEKS                       R87 R92 K98 ["gutterCanvasSize"]
      652 SETTABLEKS                       R78 R92 K99 ["gutterSize"]
      654 SETTABLEKS                       R88 R92 K100 ["lineNumbers"]
      656 SETTABLEKS                       R79 R92 K101 ["scrollFrameSize"]
      658 SETTABLEKS                       R80 R92 K102 ["codeAreaPosition"]
      660 SETTABLEKS                       R90 R92 K103 ["dropIndicatorVisible"]
      662 SETTABLEKS                       R91 R92 K104 ["dropIndicatorPos"]
      664 GETTABLEKS                       R93 R0 K105 ["LayoutOrder"]
      666 SETTABLEKS                       R93 R92 K105 ["LayoutOrder"]
      668 SETTABLEKS                       R6 R92 K106 ["sentinelText"]
      670 SETTABLEKS                       R7 R92 K107 ["hiddenInputSize"]
      672 SETTABLEKS                       R8 R92 K108 ["hiddenInputBgTransparency"]
      674 SETTABLEKS                       R9 R92 K109 ["hiddenInputTextTransparency"]
      676 GETTABLEKS                       R93 R45 K54 ["lines"]
      678 SETTABLEKS                       R93 R92 K110 ["highlightedLines"]
      680 SETTABLEKS                       R35 R92 K111 ["richTextEnabled"]
      682 SETTABLEKS                       R29 R92 K112 ["lineHeight"]
      684 CLOSEUPVALS                      R67
      685 RETURN                           R92 1

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
       16 GETTABLEKS                       R4 R0 K8 ["BloxUI"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["ThemeProvider"]
       21 GETIMPORT                        R5 K5 [require]
       23 GETIMPORT                        R6 K1 [script]
       25 GETTABLEKS                       R6 R6 K10 ["Parent"]
       27 GETTABLEKS                       R6 R6 K11 ["RichTextHitTest"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K5 [require]
       32 GETIMPORT                        R7 K1 [script]
       34 GETTABLEKS                       R7 R7 K10 ["Parent"]
       36 GETTABLEKS                       R7 R7 K12 ["TextMeasure"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETIMPORT                        R8 K1 [script]
       43 GETTABLEKS                       R8 R8 K10 ["Parent"]
       45 GETTABLEKS                       R8 R8 K13 ["SyntaxHighlighter"]
       47 CALL                             R7 1 1
       48 GETTABLEKS                       R8 R1 K14 ["Debug"]
       50 GETTABLEKS                       R9 R1 K15 ["template"]
       52 GETTABLEKS                       R10 R1 K16 ["Frame"]
       54 GETTABLEKS                       R11 R1 K17 ["TextLabel"]
       56 GETTABLEKS                       R12 R1 K18 ["TextButton"]
       58 GETTABLEKS                       R13 R1 K19 ["TextBox"]
       60 GETTABLEKS                       R14 R1 K20 ["ScrollingFrame"]
       62 GETTABLEKS                       R15 R1 K21 ["VirtualList"]
       64 GETIMPORT                        R16 K24 [Color3.fromRGB]
       66 LOADN                            R17 82
       67 LOADN                            R18 139
       68 LOADN                            R19 255
       69 CALL                             R16 3 1
       70 GETIMPORT                        R17 K27 [Font.new]
       72 LOADK                            R18 K28 ["rbxasset://fonts/families/BuilderMono.json"]
       73 GETIMPORT                        R19 K32 [Enum.FontWeight.Regular]
       75 GETIMPORT                        R20 K35 [Enum.FontStyle.Normal]
       77 CALL                             R17 3 1
       78 MOVE                             R18 R9
       79 LOADK                            R19 K36 ["CodeEditor"]
       80 DUPTABLE                         R20 K47 [{"text", "onTextChanged", "language", "editable", "showLineNumbers", "dropLineIndex", "LayoutOrder", "inputCaptureActive", "onInteraction", "debugInput"}]
       81 LOADK                            R21 K48 [""]
       82 SETTABLEKS                       R21 R20 K37 ["text"]
       84 LOADNIL                          R21
       85 SETTABLEKS                       R21 R20 K38 ["onTextChanged"]
       87 LOADK                            R21 K49 ["luau"]
       88 SETTABLEKS                       R21 R20 K39 ["language"]
       90 LOADB                            R21 1
       91 SETTABLEKS                       R21 R20 K40 ["editable"]
       93 LOADB                            R21 0
       94 SETTABLEKS                       R21 R20 K41 ["showLineNumbers"]
       96 LOADNIL                          R21
       97 SETTABLEKS                       R21 R20 K42 ["dropLineIndex"]
       99 LOADN                            R21 0
      100 SETTABLEKS                       R21 R20 K43 ["LayoutOrder"]
      102 LOADB                            R21 1
      103 SETTABLEKS                       R21 R20 K44 ["inputCaptureActive"]
      105 LOADNIL                          R21
      106 SETTABLEKS                       R21 R20 K45 ["onInteraction"]
      108 LOADB                            R21 0
      109 SETTABLEKS                       R21 R20 K46 ["debugInput"]
      111 NEWTABLE                         R21 0 1
      113 MOVE                             R22 R10
      114 NEWTABLE                         R23 8 3
      116 GETIMPORT                        R27 K51 [UDim2.new]
      118 LOADN                            R28 1
      119 LOADN                            R29 0
      120 LOADN                            R30 1
      121 LOADN                            R31 0
      122 CALL                             R27 4 1
      123 SETTABLEKS                       R27 R23 K52 ["Size"]
      125 MOVE                             R27 R2
      126 LOADK                            R28 K53 ["bgColor"]
      127 CALL                             R27 1 1
      128 SETTABLEKS                       R27 R23 K54 ["BackgroundColor3"]
      130 LOADN                            R27 0
      131 SETTABLEKS                       R27 R23 K55 ["BackgroundTransparency"]
      133 LOADN                            R27 0
      134 SETTABLEKS                       R27 R23 K56 ["BorderSizePixel"]
      136 MOVE                             R27 R2
      137 LOADK                            R28 K43 ["LayoutOrder"]
      138 CALL                             R27 1 1
      139 SETTABLEKS                       R27 R23 K43 ["LayoutOrder"]
      141 MOVE                             R24 R14
      142 NEWTABLE                         R25 16 2
      144 LOADK                            R28 K57 ["gutterScroll"]
      145 SETTABLEKS                       R28 R25 K58 ["ref"]
      147 LOADK                            R28 K59 ["LineNumberGutter"]
      148 SETTABLEKS                       R28 R25 K60 ["Name"]
      150 MOVE                             R28 R2
      151 LOADK                            R29 K61 ["gutterSize"]
      152 CALL                             R28 1 1
      153 SETTABLEKS                       R28 R25 K52 ["Size"]
      155 MOVE                             R28 R2
      156 LOADK                            R29 K62 ["gutterCanvasSize"]
      157 CALL                             R28 1 1
      158 SETTABLEKS                       R28 R25 K63 ["CanvasSize"]
      160 GETIMPORT                        R28 K66 [Enum.ScrollingDirection.Y]
      162 SETTABLEKS                       R28 R25 K64 ["ScrollingDirection"]
      164 LOADB                            R28 0
      165 SETTABLEKS                       R28 R25 K67 ["ScrollingEnabled"]
      167 LOADN                            R28 1
      168 SETTABLEKS                       R28 R25 K68 ["ScrollBarImageTransparency"]
      170 LOADN                            R28 0
      171 SETTABLEKS                       R28 R25 K69 ["ScrollBarThickness"]
      173 MOVE                             R28 R2
      174 LOADK                            R29 K53 ["bgColor"]
      175 CALL                             R28 1 1
      176 SETTABLEKS                       R28 R25 K54 ["BackgroundColor3"]
      178 LOADN                            R28 0
      179 SETTABLEKS                       R28 R25 K55 ["BackgroundTransparency"]
      181 LOADN                            R28 0
      182 SETTABLEKS                       R28 R25 K56 ["BorderSizePixel"]
      184 MOVE                             R28 R2
      185 LOADK                            R29 K41 ["showLineNumbers"]
      186 CALL                             R28 1 1
      187 SETTABLEKS                       R28 R25 K70 ["Visible"]
      189 MOVE                             R26 R15
      190 DUPTABLE                         R27 K77 [{"items", "itemSize", "overscan", "strategy", "useParentScroll", "Each"}]
      191 MOVE                             R28 R2
      192 LOADK                            R29 K78 ["lineNumbers"]
      193 CALL                             R28 1 1
      194 SETTABLEKS                       R28 R27 K71 ["items"]
      196 MOVE                             R28 R2
      197 LOADK                            R29 K79 ["lineHeight"]
      198 CALL                             R28 1 1
      199 SETTABLEKS                       R28 R27 K72 ["itemSize"]
      201 LOADN                            R28 10
      202 SETTABLEKS                       R28 R27 K73 ["overscan"]
      204 LOADK                            R28 K80 ["cache"]
      205 SETTABLEKS                       R28 R27 K74 ["strategy"]
      207 LOADB                            R28 1
      208 SETTABLEKS                       R28 R27 K75 ["useParentScroll"]
      210 MOVE                             R28 R9
      211 NEWTABLE                         R29 0 2
      213 LOADK                            R30 K81 ["idx"]
      214 LOADK                            R31 K82 ["item"]
      215 SETLIST                          R29 R30 2 [1]
      217 NEWTABLE                         R30 0 1
      219 MOVE                             R31 R11
      220 DUPTABLE                         R32 K90 [{"Tags", "Size", "BackgroundTransparency", "FontFace", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "Text"}]
      221 LOADK                            R33 K91 ["pad-r-10"]
      222 SETTABLEKS                       R33 R32 K83 ["Tags"]
      224 GETIMPORT                        R33 K51 [UDim2.new]
      226 LOADN                            R34 1
      227 LOADN                            R35 0
      228 LOADN                            R36 1
      229 LOADN                            R37 0
      230 CALL                             R33 4 1
      231 SETTABLEKS                       R33 R32 K52 ["Size"]
      233 LOADN                            R33 1
      234 SETTABLEKS                       R33 R32 K55 ["BackgroundTransparency"]
      236 SETTABLEKS                       R17 R32 K84 ["FontFace"]
      238 LOADN                            R33 16
      239 SETTABLEKS                       R33 R32 K85 ["TextSize"]
      241 MOVE                             R33 R2
      242 LOADK                            R34 K92 ["lineNumberColor"]
      243 CALL                             R33 1 1
      244 SETTABLEKS                       R33 R32 K86 ["TextColor3"]
      246 GETIMPORT                        R33 K94 [Enum.TextXAlignment.Right]
      248 SETTABLEKS                       R33 R32 K87 ["TextXAlignment"]
      250 GETIMPORT                        R33 K96 [Enum.TextYAlignment.Top]
      252 SETTABLEKS                       R33 R32 K88 ["TextYAlignment"]
      254 MOVE                             R33 R2
      255 LOADK                            R34 K82 ["item"]
      256 CALL                             R33 1 1
      257 SETTABLEKS                       R33 R32 K89 ["Text"]
      259 CALL                             R31 1 -1
      260 SETLIST                          R30 R31 -1 [1]
      262 CALL                             R28 2 1
      263 SETTABLEKS                       R28 R27 K76 ["Each"]
      265 CALL                             R26 1 1
      266 MOVE                             R27 R10
      267 DUPTABLE                         R28 K98 [{"Name", "Position", "Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
      268 LOADK                            R29 K99 ["GutterSeparator"]
      269 SETTABLEKS                       R29 R28 K60 ["Name"]
      271 GETIMPORT                        R29 K51 [UDim2.new]
      273 LOADN                            R30 1
      274 LOADN                            R31 255
      275 LOADN                            R32 0
      276 LOADN                            R33 0
      277 CALL                             R29 4 1
      278 SETTABLEKS                       R29 R28 K97 ["Position"]
      280 GETIMPORT                        R29 K51 [UDim2.new]
      282 LOADN                            R30 0
      283 LOADN                            R31 1
      284 LOADN                            R32 1
      285 LOADN                            R33 0
      286 CALL                             R29 4 1
      287 SETTABLEKS                       R29 R28 K52 ["Size"]
      289 MOVE                             R29 R2
      290 LOADK                            R30 K100 ["gutterSepColor"]
      291 CALL                             R29 1 1
      292 SETTABLEKS                       R29 R28 K54 ["BackgroundColor3"]
      294 LOADN                            R29 0
      295 SETTABLEKS                       R29 R28 K55 ["BackgroundTransparency"]
      297 LOADN                            R29 0
      298 SETTABLEKS                       R29 R28 K56 ["BorderSizePixel"]
      300 CALL                             R27 1 -1
      301 SETLIST                          R25 R26 -1 [1]
      303 CALL                             R24 1 1
      304 MOVE                             R25 R14
      305 NEWTABLE                         R26 16 5
      307 LOADK                            R32 K101 ["scrollFrame"]
      308 SETTABLEKS                       R32 R26 K58 ["ref"]
      310 MOVE                             R32 R2
      311 LOADK                            R33 K102 ["codeAreaPosition"]
      312 CALL                             R32 1 1
      313 SETTABLEKS                       R32 R26 K97 ["Position"]
      315 MOVE                             R32 R2
      316 LOADK                            R33 K103 ["scrollFrameSize"]
      317 CALL                             R32 1 1
      318 SETTABLEKS                       R32 R26 K52 ["Size"]
      320 GETIMPORT                        R32 K105 [Enum.ScrollingDirection.XY]
      322 SETTABLEKS                       R32 R26 K64 ["ScrollingDirection"]
      324 GETIMPORT                        R32 K107 [Enum.AutomaticSize.XY]
      326 SETTABLEKS                       R32 R26 K108 ["AutomaticCanvasSize"]
      328 MOVE                             R32 R2
      329 LOADK                            R33 K53 ["bgColor"]
      330 CALL                             R32 1 1
      331 SETTABLEKS                       R32 R26 K54 ["BackgroundColor3"]
      333 LOADN                            R32 0
      334 SETTABLEKS                       R32 R26 K55 ["BackgroundTransparency"]
      336 LOADN                            R32 0
      337 SETTABLEKS                       R32 R26 K56 ["BorderSizePixel"]
      339 GETIMPORT                        R32 K51 [UDim2.new]
      341 LOADN                            R33 0
      342 LOADN                            R34 0
      343 LOADN                            R35 0
      344 LOADN                            R36 0
      345 CALL                             R32 4 1
      346 SETTABLEKS                       R32 R26 K63 ["CanvasSize"]
      348 MOVE                             R32 R2
      349 LOADK                            R33 K109 ["scrollbarColor"]
      350 CALL                             R32 1 1
      351 SETTABLEKS                       R32 R26 K110 ["ScrollBarImageColor3"]
      353 LOADN                            R32 6
      354 SETTABLEKS                       R32 R26 K69 ["ScrollBarThickness"]
      356 LOADN                            R32 1
      357 SETTABLEKS                       R32 R26 K43 ["LayoutOrder"]
      359 MOVE                             R27 R10
      360 DUPTABLE                         R28 K111 [{"ref", "Size", "BackgroundTransparency"}]
      361 LOADK                            R29 K112 ["container"]
      362 SETTABLEKS                       R29 R28 K58 ["ref"]
      364 MOVE                             R29 R2
      365 LOADK                            R30 K113 ["overlaySize"]
      366 CALL                             R29 1 1
      367 SETTABLEKS                       R29 R28 K52 ["Size"]
      369 LOADN                            R29 1
      370 SETTABLEKS                       R29 R28 K55 ["BackgroundTransparency"]
      372 CALL                             R27 1 1
      373 MOVE                             R28 R10
      374 DUPTABLE                         R29 K115 [{"Name", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Position", "Size", "Visible", "ZIndex"}]
      375 LOADK                            R30 K116 ["Cursor"]
      376 SETTABLEKS                       R30 R29 K60 ["Name"]
      378 MOVE                             R30 R2
      379 LOADK                            R31 K117 ["cursorColor"]
      380 CALL                             R30 1 1
      381 SETTABLEKS                       R30 R29 K54 ["BackgroundColor3"]
      383 LOADN                            R30 0
      384 SETTABLEKS                       R30 R29 K55 ["BackgroundTransparency"]
      386 LOADN                            R30 0
      387 SETTABLEKS                       R30 R29 K56 ["BorderSizePixel"]
      389 MOVE                             R30 R2
      390 LOADK                            R31 K118 ["cursorPos"]
      391 CALL                             R30 1 1
      392 SETTABLEKS                       R30 R29 K97 ["Position"]
      394 MOVE                             R30 R2
      395 LOADK                            R31 K119 ["cursorSize"]
      396 CALL                             R30 1 1
      397 SETTABLEKS                       R30 R29 K52 ["Size"]
      399 MOVE                             R30 R2
      400 LOADK                            R31 K120 ["cursorVisible"]
      401 CALL                             R30 1 1
      402 SETTABLEKS                       R30 R29 K70 ["Visible"]
      404 LOADN                            R30 4
      405 SETTABLEKS                       R30 R29 K114 ["ZIndex"]
      407 CALL                             R28 1 1
      408 MOVE                             R29 R10
      409 DUPTABLE                         R30 K115 [{"Name", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Position", "Size", "Visible", "ZIndex"}]
      410 LOADK                            R31 K121 ["DropIndicator"]
      411 SETTABLEKS                       R31 R30 K60 ["Name"]
      413 GETIMPORT                        R31 K24 [Color3.fromRGB]
      415 LOADN                            R32 82
      416 LOADN                            R33 139
      417 LOADN                            R34 255
      418 CALL                             R31 3 1
      419 SETTABLEKS                       R31 R30 K54 ["BackgroundColor3"]
      421 LOADN                            R31 0
      422 SETTABLEKS                       R31 R30 K55 ["BackgroundTransparency"]
      424 LOADN                            R31 0
      425 SETTABLEKS                       R31 R30 K56 ["BorderSizePixel"]
      427 MOVE                             R31 R2
      428 LOADK                            R32 K122 ["dropIndicatorPos"]
      429 CALL                             R31 1 1
      430 SETTABLEKS                       R31 R30 K97 ["Position"]
      432 GETIMPORT                        R31 K51 [UDim2.new]
      434 LOADN                            R32 1
      435 LOADN                            R33 0
      436 LOADN                            R34 0
      437 LOADN                            R35 2
      438 CALL                             R31 4 1
      439 SETTABLEKS                       R31 R30 K52 ["Size"]
      441 MOVE                             R31 R2
      442 LOADK                            R32 K123 ["dropIndicatorVisible"]
      443 CALL                             R31 1 1
      444 SETTABLEKS                       R31 R30 K70 ["Visible"]
      446 LOADN                            R31 5
      447 SETTABLEKS                       R31 R30 K114 ["ZIndex"]
      449 CALL                             R29 1 1
      450 MOVE                             R30 R12
      451 DUPTABLE                         R31 K128 [{"Size", "BackgroundTransparency", "Text", "ZIndex", "Selectable", "OnInputBegan", "OnInputChanged", "OnInputEnded"}]
      452 MOVE                             R32 R2
      453 LOADK                            R33 K113 ["overlaySize"]
      454 CALL                             R32 1 1
      455 SETTABLEKS                       R32 R31 K52 ["Size"]
      457 LOADN                            R32 1
      458 SETTABLEKS                       R32 R31 K55 ["BackgroundTransparency"]
      460 LOADK                            R32 K48 [""]
      461 SETTABLEKS                       R32 R31 K89 ["Text"]
      463 LOADN                            R32 3
      464 SETTABLEKS                       R32 R31 K114 ["ZIndex"]
      466 LOADB                            R32 0
      467 SETTABLEKS                       R32 R31 K124 ["Selectable"]
      469 MOVE                             R32 R2
      470 LOADK                            R33 K129 ["onInputBegan"]
      471 CALL                             R32 1 1
      472 SETTABLEKS                       R32 R31 K125 ["OnInputBegan"]
      474 MOVE                             R32 R2
      475 LOADK                            R33 K130 ["onInputChanged"]
      476 CALL                             R32 1 1
      477 SETTABLEKS                       R32 R31 K126 ["OnInputChanged"]
      479 MOVE                             R32 R2
      480 LOADK                            R33 K131 ["onInputEnded"]
      481 CALL                             R32 1 1
      482 SETTABLEKS                       R32 R31 K127 ["OnInputEnded"]
      484 CALL                             R30 1 1
      485 MOVE                             R31 R15
      486 DUPTABLE                         R32 K77 [{"items", "itemSize", "overscan", "strategy", "useParentScroll", "Each"}]
      487 MOVE                             R33 R2
      488 LOADK                            R34 K132 ["highlightedLines"]
      489 CALL                             R33 1 1
      490 SETTABLEKS                       R33 R32 K71 ["items"]
      492 MOVE                             R33 R2
      493 LOADK                            R34 K79 ["lineHeight"]
      494 CALL                             R33 1 1
      495 SETTABLEKS                       R33 R32 K72 ["itemSize"]
      497 LOADN                            R33 30
      498 SETTABLEKS                       R33 R32 K73 ["overscan"]
      500 LOADK                            R33 K80 ["cache"]
      501 SETTABLEKS                       R33 R32 K74 ["strategy"]
      503 LOADB                            R33 1
      504 SETTABLEKS                       R33 R32 K75 ["useParentScroll"]
      506 MOVE                             R33 R9
      507 NEWTABLE                         R34 0 2
      509 LOADK                            R35 K81 ["idx"]
      510 LOADK                            R36 K82 ["item"]
      511 SETLIST                          R34 R35 2 [1]
      513 NEWTABLE                         R35 0 1
      515 MOVE                             R36 R11
      516 DUPTABLE                         R37 K134 [{"Size", "AutomaticSize", "BackgroundTransparency", "FontFace", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "Text", "RichText", "ZIndex"}]
      517 GETIMPORT                        R38 K51 [UDim2.new]
      519 LOADN                            R39 0
      520 LOADN                            R40 0
      521 LOADN                            R41 1
      522 LOADN                            R42 0
      523 CALL                             R38 4 1
      524 SETTABLEKS                       R38 R37 K52 ["Size"]
      526 GETIMPORT                        R38 K136 [Enum.AutomaticSize.X]
      528 SETTABLEKS                       R38 R37 K106 ["AutomaticSize"]
      530 LOADN                            R38 1
      531 SETTABLEKS                       R38 R37 K55 ["BackgroundTransparency"]
      533 SETTABLEKS                       R17 R37 K84 ["FontFace"]
      535 LOADN                            R38 16
      536 SETTABLEKS                       R38 R37 K85 ["TextSize"]
      538 MOVE                             R38 R2
      539 LOADK                            R39 K137 ["codeTextColor"]
      540 CALL                             R38 1 1
      541 SETTABLEKS                       R38 R37 K86 ["TextColor3"]
      543 GETIMPORT                        R38 K139 [Enum.TextXAlignment.Left]
      545 SETTABLEKS                       R38 R37 K87 ["TextXAlignment"]
      547 GETIMPORT                        R38 K96 [Enum.TextYAlignment.Top]
      549 SETTABLEKS                       R38 R37 K88 ["TextYAlignment"]
      551 MOVE                             R38 R2
      552 LOADK                            R39 K82 ["item"]
      553 CALL                             R38 1 1
      554 SETTABLEKS                       R38 R37 K89 ["Text"]
      556 MOVE                             R38 R2
      557 LOADK                            R39 K140 ["richTextEnabled"]
      558 CALL                             R38 1 1
      559 SETTABLEKS                       R38 R37 K133 ["RichText"]
      561 LOADN                            R38 2
      562 SETTABLEKS                       R38 R37 K114 ["ZIndex"]
      564 CALL                             R36 1 -1
      565 SETLIST                          R35 R36 -1 [1]
      567 CALL                             R33 2 1
      568 SETTABLEKS                       R33 R32 K76 ["Each"]
      570 CALL                             R31 1 -1
      571 SETLIST                          R26 R27 -1 [1]
      573 CALL                             R25 1 1
      574 MOVE                             R26 R13
      575 DUPTABLE                         R27 K145 [{"Name", "ref", "AnchorPoint", "Position", "Size", "BackgroundTransparency", "TextTransparency", "Text", "ClearTextOnFocus", "MultiLine", "ZIndex"}]
      576 LOADK                            R28 K146 ["HiddenInput"]
      577 SETTABLEKS                       R28 R27 K60 ["Name"]
      579 LOADK                            R28 K147 ["hiddenInput"]
      580 SETTABLEKS                       R28 R27 K58 ["ref"]
      582 GETIMPORT                        R28 K149 [Vector2.new]
      584 LOADN                            R29 1
      585 LOADN                            R30 1
      586 CALL                             R28 2 1
      587 SETTABLEKS                       R28 R27 K141 ["AnchorPoint"]
      589 GETIMPORT                        R28 K51 [UDim2.new]
      591 LOADN                            R29 1
      592 LOADN                            R30 254
      593 LOADN                            R31 1
      594 LOADN                            R32 254
      595 CALL                             R28 4 1
      596 SETTABLEKS                       R28 R27 K97 ["Position"]
      598 MOVE                             R28 R2
      599 LOADK                            R29 K150 ["hiddenInputSize"]
      600 CALL                             R28 1 1
      601 SETTABLEKS                       R28 R27 K52 ["Size"]
      603 MOVE                             R28 R2
      604 LOADK                            R29 K151 ["hiddenInputBgTransparency"]
      605 CALL                             R28 1 1
      606 SETTABLEKS                       R28 R27 K55 ["BackgroundTransparency"]
      608 MOVE                             R28 R2
      609 LOADK                            R29 K152 ["hiddenInputTextTransparency"]
      610 CALL                             R28 1 1
      611 SETTABLEKS                       R28 R27 K142 ["TextTransparency"]
      613 MOVE                             R28 R2
      614 LOADK                            R29 K153 ["sentinelText"]
      615 CALL                             R28 1 1
      616 SETTABLEKS                       R28 R27 K89 ["Text"]
      618 LOADB                            R28 0
      619 SETTABLEKS                       R28 R27 K143 ["ClearTextOnFocus"]
      621 LOADB                            R28 1
      622 SETTABLEKS                       R28 R27 K144 ["MultiLine"]
      624 LOADN                            R28 10
      625 SETTABLEKS                       R28 R27 K114 ["ZIndex"]
      627 CALL                             R26 1 -1
      628 SETLIST                          R23 R24 -1 [1]
      630 CALL                             R22 1 -1
      631 SETLIST                          R21 R22 -1 [1]
      633 DUPCLOSURE                       R22 K154 [PROTO_67]
      634 CAPTURE                          VAL R4
      635 CAPTURE                          VAL R5
      636 CAPTURE                          VAL R17
      637 CAPTURE                          VAL R8
      638 CAPTURE                          VAL R7
      639 CAPTURE                          VAL R6
      640 CAPTURE                          VAL R16
      641 CALL                             R18 4 1
      642 RETURN                           R18 1
