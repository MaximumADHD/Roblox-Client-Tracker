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

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LENGTH                           R4 R0
        3 ADDK                             R3 R4 K0 [1]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_13:
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

PROTO_14:
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETUPVAL                         R9 0
        6 MOVE                             R10 R6
        7 LENGTH                           R12 R6
        8 ADDK                             R11 R12 K0 [1]
        9 CALL                             R9 2 1
       10 FASTCALL2                        MATH_MAX R1 R9 ; [+4]
       12 MOVE                             R8 R1
       13 GETIMPORT                        R7 K3 [math.max]
       15 CALL                             R7 2 1
       16 MOVE                             R1 R7
       17 FORGLOOP                         R2 2 ; [-13]
       19 RETURN                           R1 1

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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
       51 GETUPVAL                         R13 8
       52 MOVE                             R14 R10
       53 LENGTH                           R16 R10
       54 ADDK                             R15 R16 K9 [1]
       55 CALL                             R13 2 1
       56 FASTCALL2                        MATH_MAX R5 R13 ; [+4]
       58 MOVE                             R12 R5
       59 GETIMPORT                        R11 K12 [math.max]
       61 CALL                             R11 2 1
       62 MOVE                             R5 R11
       63 FORGLOOP                         R6 2 ; [-13]
       65 MOVE                             R3 R5
       66 CALL                             R2 1 0
       67 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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
       19 GETUPVAL                         R5 3
       20 MOVE                             R6 R4
       21 MOVE                             R7 R3
       22 CALL                             R5 2 1
       23 GETIMPORT                        R6 K2 [UDim2.fromOffset]
       25 GETUPVAL                         R8 4
       26 MUL                              R7 R5 R8
       27 SUBK                             R9 R2 K5 [1]
       28 GETUPVAL                         R10 5
       29 MUL                              R8 R9 R10
       30 CALL                             R6 2 -1
       31 RETURN                           R6 -1

PROTO_29:
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

PROTO_30:
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
       56 GETUPVAL                         R16 4
       57 MOVE                             R17 R13
       58 MOVE                             R18 R14
       59 CALL                             R16 2 1
       60 GETUPVAL                         R17 4
       61 MOVE                             R18 R13
       62 MOVE                             R19 R15
       63 CALL                             R17 2 1
       64 JUMPIFNOTLT                      R16 R17 ; [+27]
       66 DUPTABLE                         R20 K12 [{"x", "y", "width", "height", "index"}]
       67 GETUPVAL                         R22 5
       68 MUL                              R21 R16 R22
       69 SETTABLEKS                       R21 R20 K7 ["x"]
       71 SUBK                             R22 R12 K6 [1]
       72 GETUPVAL                         R23 6
       73 MUL                              R21 R22 R23
       74 SETTABLEKS                       R21 R20 K8 ["y"]
       76 SUB                              R22 R17 R16
       77 GETUPVAL                         R23 5
       78 MUL                              R21 R22 R23
       79 SETTABLEKS                       R21 R20 K9 ["width"]
       81 GETUPVAL                         R21 6
       82 SETTABLEKS                       R21 R20 K10 ["height"]
       84 SETTABLEKS                       R12 R20 K11 ["index"]
       86 FASTCALL2                        TABLE_INSERT R9 R20 ; [+4]
       88 MOVE                             R19 R9
       89 GETIMPORT                        R18 K15 [table.insert]
       91 CALL                             R18 2 0
       92 FORNLOOP                         R10
       93 RETURN                           R9 1

PROTO_31:
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

PROTO_32:
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

PROTO_33:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETIMPORT                        R3 K2 [UDim2.fromOffset]
        8 GETUPVAL                         R7 2
        9 MUL                              R6 R2 R7
       10 GETUPVAL                         R7 2
       11 ADD                              R5 R6 R7
       12 FASTCALL2K                       MATH_MAX R5 K3 ; [+4]
       14 LOADK                            R6 K3 [1]
       15 GETIMPORT                        R4 K6 [math.max]
       17 CALL                             R4 2 1
       18 GETUPVAL                         R7 3
       19 MUL                              R6 R1 R7
       20 GETUPVAL                         R7 3
       21 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       23 GETIMPORT                        R5 K6 [math.max]
       25 CALL                             R5 2 1
       26 CALL                             R3 2 -1
       27 RETURN                           R3 -1

PROTO_34:
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
       40 LOADN                            R7 0
       41 GETUPVAL                         R11 4
       42 DIV                              R10 R2 R11
       43 ADDK                             R9 R10 K11 [0.5]
       44 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       45 GETIMPORT                        R8 K8 [math.floor]
       47 CALL                             R8 1 1
       48 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       50 GETIMPORT                        R6 K13 [math.max]
       52 CALL                             R6 2 1
       53 GETUPVAL                         R7 5
       54 GETTABLE                         R8 R4 R5
       55 MOVE                             R9 R6
       56 CALL                             R7 2 1
       57 LOADN                            R10 1
       58 GETTABLE                         R13 R4 R5
       59 LENGTH                           R12 R13
       60 ADDK                             R11 R12 K5 [1]
       61 FASTCALL3                        MATH_CLAMP R7 R10 R11
       63 MOVE                             R9 R7
       64 GETIMPORT                        R8 K10 [math.clamp]
       66 CALL                             R8 3 1
       67 MOVE                             R7 R8
       68 MOVE                             R8 R5
       69 MOVE                             R9 R7
       70 RETURN                           R8 2

PROTO_35:
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

PROTO_36:
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

PROTO_37:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R1 R2 ; [+3]
        6 LOADB                            R1 0
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_38:
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

PROTO_39:
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

PROTO_40:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 CALL                             R3 1 1
        3 JUMPIFNOTLE                      R3 R2 ; [+5]
        5 GETUPVAL                         R4 2
        6 MOVE                             R5 R2
        7 CALL                             R4 1 0
        8 RETURN                           R0 0
        9 JUMPIFNOTLE                      R3 R1 ; [+28]
       11 JUMPIFNOTLT                      R2 R1 ; [+26]
       13 GETUPVAL                         R4 2
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R6 R6 K0 ["current"]
       17 LOADN                            R7 0
       18 MOVE                             R8 R6
       19 LOADNIL                          R9
       20 LOADNIL                          R10
       21 FORGPREP                         R8
       22 GETUPVAL                         R15 4
       23 MOVE                             R16 R12
       24 LENGTH                           R18 R12
       25 ADDK                             R17 R18 K1 [1]
       26 CALL                             R15 2 1
       27 FASTCALL2                        MATH_MAX R7 R15 ; [+4]
       29 MOVE                             R14 R7
       30 GETIMPORT                        R13 K4 [math.max]
       32 CALL                             R13 2 1
       33 MOVE                             R7 R13
       34 FORGLOOP                         R8 2 ; [-13]
       36 MOVE                             R5 R7
       37 CALL                             R4 1 0
       38 RETURN                           R0 0

PROTO_41:
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
      117 GETUPVAL                         R14 9
      118 MOVE                             R15 R11
      119 LENGTH                           R17 R11
      120 ADDK                             R16 R17 K5 [1]
      121 CALL                             R14 2 1
      122 FASTCALL2                        MATH_MAX R6 R14 ; [+4]
      124 MOVE                             R13 R6
      125 GETIMPORT                        R12 K12 [math.max]
      127 CALL                             R12 2 1
      128 MOVE                             R6 R12
      129 FORGLOOP                         R7 2 ; [-13]
      131 MOVE                             R4 R6
      132 CALL                             R3 1 0
      133 RETURN                           R0 0

PROTO_42:
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
      108 GETUPVAL                         R15 9
      109 MOVE                             R16 R12
      110 LENGTH                           R18 R12
      111 ADDK                             R17 R18 K9 [1]
      112 CALL                             R15 2 1
      113 FASTCALL2                        MATH_MAX R7 R15 ; [+4]
      115 MOVE                             R14 R7
      116 GETIMPORT                        R13 K12 [math.max]
      118 CALL                             R13 2 1
      119 MOVE                             R7 R13
      120 FORGLOOP                         R8 2 ; [-13]
      122 MOVE                             R5 R7
      123 CALL                             R4 1 0
      124 RETURN                           R0 0

PROTO_43:
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
       35 JUMPIFNOTEQ                      R4 R6 ; [+89]
       37 GETUPVAL                         R9 4
       38 GETTABLEKS                       R9 R9 K5 ["current"]
       40 GETTABLE                         R8 R9 R4
       41 GETUPVAL                         R9 5
       42 MOVE                             R10 R8
       43 LENGTH                           R12 R8
       44 ADDK                             R11 R12 K6 [1]
       45 CALL                             R9 2 1
       46 GETUPVAL                         R10 4
       47 GETTABLEKS                       R10 R10 K5 ["current"]
       49 LOADN                            R16 1
       50 SUBK                             R17 R5 K6 [1]
       51 NAMECALL                         R14 R8 K7 ["sub"]
       53 CALL                             R14 3 1
       54 MOVE                             R12 R14
       55 MOVE                             R15 R7
       56 NAMECALL                         R13 R8 K7 ["sub"]
       58 CALL                             R13 2 1
       59 CONCAT                           R11 R12 R13
       60 SETTABLE                         R11 R10 R4
       61 GETUPVAL                         R10 6
       62 GETUPVAL                         R12 7
       63 GETTABLEKS                       R12 R12 K8 ["lines"]
       65 GETTABLE                         R11 R12 R4
       66 CALL                             R10 1 1
       67 GETUPVAL                         R12 8
       68 GETUPVAL                         R14 4
       69 GETTABLEKS                       R14 R14 K5 ["current"]
       71 GETTABLE                         R13 R14 R4
       72 CALL                             R12 1 -1
       73 NAMECALL                         R10 R10 K9 ["set"]
       75 CALL                             R10 -1 0
       76 GETUPVAL                         R12 4
       77 GETTABLEKS                       R12 R12 K5 ["current"]
       79 GETTABLE                         R11 R12 R4
       80 GETUPVAL                         R12 5
       81 MOVE                             R13 R11
       82 LENGTH                           R15 R11
       83 ADDK                             R14 R15 K6 [1]
       84 CALL                             R12 2 1
       85 MOVE                             R10 R12
       86 GETUPVAL                         R11 0
       87 GETUPVAL                         R12 9
       88 CALL                             R11 1 1
       89 JUMPIFNOTLE                      R11 R10 ; [+5]
       91 GETUPVAL                         R12 10
       92 MOVE                             R13 R10
       93 CALL                             R12 1 0
       94 RETURN                           R2 1
       95 JUMPIFNOTLE                      R11 R9 ; [+69]
       97 JUMPIFNOTLT                      R10 R9 ; [+67]
       99 GETUPVAL                         R12 10
      100 GETUPVAL                         R14 4
      101 GETTABLEKS                       R14 R14 K5 ["current"]
      103 LOADN                            R15 0
      104 MOVE                             R16 R14
      105 LOADNIL                          R17
      106 LOADNIL                          R18
      107 FORGPREP                         R16
      108 GETUPVAL                         R23 5
      109 MOVE                             R24 R20
      110 LENGTH                           R26 R20
      111 ADDK                             R25 R26 K6 [1]
      112 CALL                             R23 2 1
      113 FASTCALL2                        MATH_MAX R15 R23 ; [+4]
      115 MOVE                             R22 R15
      116 GETIMPORT                        R21 K4 [math.max]
      118 CALL                             R21 2 1
      119 MOVE                             R15 R21
      120 FORGLOOP                         R16 2 ; [-13]
      122 MOVE                             R13 R15
      123 CALL                             R12 1 0
      124 RETURN                           R2 1
      125 GETUPVAL                         R9 4
      126 GETTABLEKS                       R9 R9 K5 ["current"]
      128 GETTABLE                         R8 R9 R4
      129 GETUPVAL                         R10 4
      130 GETTABLEKS                       R10 R10 K5 ["current"]
      132 GETTABLE                         R9 R10 R6
      133 GETUPVAL                         R10 4
      134 GETTABLEKS                       R10 R10 K5 ["current"]
      136 LOADN                            R16 1
      137 SUBK                             R17 R5 K6 [1]
      138 NAMECALL                         R14 R8 K7 ["sub"]
      140 CALL                             R14 3 1
      141 MOVE                             R12 R14
      142 MOVE                             R15 R7
      143 NAMECALL                         R13 R9 K7 ["sub"]
      145 CALL                             R13 2 1
      146 CONCAT                           R11 R12 R13
      147 SETTABLE                         R11 R10 R4
      148 SUB                              R10 R6 R4
      149 LOADN                            R13 1
      150 MOVE                             R11 R10
      151 LOADN                            R12 1
      152 FORNPREP                         R11
      153 GETIMPORT                        R14 K12 [table.remove]
      155 GETUPVAL                         R15 4
      156 GETTABLEKS                       R15 R15 K5 ["current"]
      158 ADDK                             R16 R4 K6 [1]
      159 CALL                             R14 2 0
      160 FORNLOOP                         R11
      161 GETUPVAL                         R11 11
      162 MOVE                             R12 R4
      163 MOVE                             R13 R10
      164 CALL                             R11 2 0
      165 RETURN                           R2 1

PROTO_44:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Text"]
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 2
        6 SETTABLEKS                       R1 R0 K1 ["CursorPosition"]
        8 LOADB                            R0 0
        9 SETUPVAL                         R0 3
       10 RETURN                           R0 0

PROTO_45:
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
       22 JUMPIFNOTLT                      R2 R3 ; [+192]
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
       66 JUMPIFNOTLT                      R5 R4 ; [+89]
       68 GETUPVAL                         R6 10
       69 GETTABLEKS                       R6 R6 K7 ["current"]
       71 GETTABLE                         R5 R6 R3
       72 GETUPVAL                         R6 14
       73 MOVE                             R7 R5
       74 LENGTH                           R9 R5
       75 ADDK                             R8 R9 K10 [1]
       76 CALL                             R6 2 1
       77 GETUPVAL                         R7 10
       78 GETTABLEKS                       R7 R7 K7 ["current"]
       80 LOADN                            R13 1
       81 SUBK                             R14 R4 K11 [2]
       82 NAMECALL                         R11 R5 K12 ["sub"]
       84 CALL                             R11 3 1
       85 MOVE                             R9 R11
       86 MOVE                             R12 R4
       87 NAMECALL                         R10 R5 K12 ["sub"]
       89 CALL                             R10 2 1
       90 CONCAT                           R8 R9 R10
       91 SETTABLE                         R8 R7 R3
       92 GETUPVAL                         R7 15
       93 GETUPVAL                         R9 16
       94 GETTABLEKS                       R9 R9 K13 ["lines"]
       96 GETTABLE                         R8 R9 R3
       97 CALL                             R7 1 1
       98 GETUPVAL                         R9 17
       99 GETUPVAL                         R11 10
      100 GETTABLEKS                       R11 R11 K7 ["current"]
      102 GETTABLE                         R10 R11 R3
      103 CALL                             R9 1 -1
      104 NAMECALL                         R7 R7 K14 ["set"]
      106 CALL                             R7 -1 0
      107 GETUPVAL                         R9 10
      108 GETTABLEKS                       R9 R9 K7 ["current"]
      110 GETTABLE                         R8 R9 R3
      111 GETUPVAL                         R9 14
      112 MOVE                             R10 R8
      113 LENGTH                           R12 R8
      114 ADDK                             R11 R12 K10 [1]
      115 CALL                             R9 2 1
      116 MOVE                             R7 R9
      117 GETUPVAL                         R8 4
      118 GETUPVAL                         R9 18
      119 CALL                             R8 1 1
      120 JUMPIFNOTLE                      R8 R7 ; [+5]
      122 GETUPVAL                         R9 19
      123 MOVE                             R10 R7
      124 CALL                             R9 1 0
      125 JUMP                             ; [+62]
      126 JUMPIFNOTLE                      R8 R6 ; [+61]
      128 JUMPIFNOTLT                      R7 R6 ; [+59]
      130 GETUPVAL                         R9 19
      131 GETUPVAL                         R11 10
      132 GETTABLEKS                       R11 R11 K7 ["current"]
      134 LOADN                            R12 0
      135 MOVE                             R13 R11
      136 LOADNIL                          R14
      137 LOADNIL                          R15
      138 FORGPREP                         R13
      139 GETUPVAL                         R20 14
      140 MOVE                             R21 R17
      141 LENGTH                           R23 R17
      142 ADDK                             R22 R23 K10 [1]
      143 CALL                             R20 2 1
      144 FASTCALL2                        MATH_MAX R12 R20 ; [+4]
      146 MOVE                             R19 R12
      147 GETIMPORT                        R18 K17 [math.max]
      149 CALL                             R18 2 1
      150 MOVE                             R12 R18
      151 FORGLOOP                         R13 2 ; [-13]
      153 MOVE                             R10 R12
      154 CALL                             R9 1 0
      155 JUMP                             ; [+32]
      156 LOADN                            R5 1
      157 JUMPIFNOTLE                      R3 R5 ; [+2]
      159 RETURN                           R0 0
      160 GETUPVAL                         R6 10
      161 GETTABLEKS                       R6 R6 K7 ["current"]
      163 SUBK                             R7 R3 K10 [1]
      164 GETTABLE                         R5 R6 R7
      165 GETUPVAL                         R7 10
      166 GETTABLEKS                       R7 R7 K7 ["current"]
      168 GETTABLE                         R6 R7 R3
      169 GETUPVAL                         R7 10
      170 GETTABLEKS                       R7 R7 K7 ["current"]
      172 SUBK                             R8 R3 K10 [1]
      173 MOVE                             R10 R5
      174 MOVE                             R11 R6
      175 CONCAT                           R9 R10 R11
      176 SETTABLE                         R9 R7 R8
      177 GETIMPORT                        R7 K19 [table.remove]
      179 GETUPVAL                         R8 10
      180 GETTABLEKS                       R8 R8 K7 ["current"]
      182 MOVE                             R9 R3
      183 CALL                             R7 2 0
      184 GETUPVAL                         R7 20
      185 SUBK                             R8 R3 K10 [1]
      186 LOADN                            R9 1
      187 CALL                             R7 2 0
      188 SUBK                             R5 R1 K10 [1]
      189 GETUPVAL                         R6 8
      190 MOVE                             R7 R5
      191 CALL                             R6 1 0
      192 GETUPVAL                         R6 9
      193 MOVE                             R7 R5
      194 CALL                             R6 1 0
      195 GETIMPORT                        R6 K6 [table.concat]
      197 GETUPVAL                         R7 10
      198 GETTABLEKS                       R7 R7 K7 ["current"]
      200 LOADK                            R8 K8 ["\n"]
      201 CALL                             R6 2 1
      202 GETUPVAL                         R7 11
      203 SETTABLEKS                       R6 R7 K7 ["current"]
      205 GETUPVAL                         R7 4
      206 GETUPVAL                         R8 12
      207 GETTABLEKS                       R8 R8 K9 ["onTextChanged"]
      209 CALL                             R7 1 1
      210 JUMPIFNOT                        R7 ; [+3]
      211 MOVE                             R8 R7
      212 MOVE                             R9 R6
      213 CALL                             R8 1 0
      214 RETURN                           R0 0
      215 LOADN                            R2 0
      216 LOADK                            R5 K8 ["\n"]
      217 NAMECALL                         R3 R0 K20 ["gmatch"]
      219 CALL                             R3 2 3
      220 FORGPREP                         R3
      221 ADDK                             R2 R2 K10 [1]
      222 FORGLOOP                         R3 1 ; [-2]
      224 LOADN                            R3 2
      225 JUMPIFNOTLT                      R3 R2 ; [+68]
      227 GETUPVAL                         R4 4
      228 GETUPVAL                         R5 6
      229 CALL                             R4 1 1
      230 OR                               R3 R4 R1
      231 JUMPIFEQ                         R3 R1 ; [+4]
      233 GETUPVAL                         R4 7
      234 CALL                             R4 0 1
      235 MOVE                             R1 R4
      236 GETUPVAL                         R4 13
      237 MOVE                             R5 R1
      238 CALL                             R4 1 2
      239 GETUPVAL                         R7 10
      240 GETTABLEKS                       R7 R7 K7 ["current"]
      242 GETTABLE                         R6 R7 R4
      243 GETUPVAL                         R7 10
      244 GETTABLEKS                       R7 R7 K7 ["current"]
      246 LOADN                            R10 1
      247 SUBK                             R11 R5 K10 [1]
      248 NAMECALL                         R8 R6 K12 ["sub"]
      250 CALL                             R8 3 1
      251 SETTABLE                         R8 R7 R4
      252 GETUPVAL                         R8 10
      253 GETTABLEKS                       R8 R8 K7 ["current"]
      255 ADDK                             R9 R4 K10 [1]
      256 MOVE                             R12 R5
      257 NAMECALL                         R10 R6 K12 ["sub"]
      259 CALL                             R10 2 -1
      260 FASTCALL                         TABLE_INSERT ; [+2]
      261 GETIMPORT                        R7 K22 [table.insert]
      263 CALL                             R7 -1 0
      264 GETUPVAL                         R7 21
      265 MOVE                             R8 R4
      266 CALL                             R7 1 0
      267 ADDK                             R7 R1 K10 [1]
      268 GETUPVAL                         R8 8
      269 MOVE                             R9 R7
      270 CALL                             R8 1 0
      271 GETUPVAL                         R8 9
      272 MOVE                             R9 R7
      273 CALL                             R8 1 0
      274 GETIMPORT                        R8 K6 [table.concat]
      276 GETUPVAL                         R9 10
      277 GETTABLEKS                       R9 R9 K7 ["current"]
      279 LOADK                            R10 K8 ["\n"]
      280 CALL                             R8 2 1
      281 GETUPVAL                         R9 11
      282 SETTABLEKS                       R8 R9 K7 ["current"]
      284 GETUPVAL                         R9 4
      285 GETUPVAL                         R10 12
      286 GETTABLEKS                       R10 R10 K9 ["onTextChanged"]
      288 CALL                             R9 1 1
      289 JUMPIFNOT                        R9 ; [+3]
      290 MOVE                             R10 R9
      291 MOVE                             R11 R8
      292 CALL                             R10 1 0
      293 RETURN                           R0 0
      294 GETIMPORT                        R3 K25 [string.split]
      296 MOVE                             R4 R0
      297 LOADK                            R5 K8 ["\n"]
      298 CALL                             R3 2 1
      299 GETTABLEN                        R5 R3 2
      300 ORK                              R4 R5 K26 [""]
      301 LOADN                            R7 2
      302 LENGTH                           R9 R4
      303 SUBK                             R8 R9 K10 [1]
      304 NAMECALL                         R5 R4 K12 ["sub"]
      306 CALL                             R5 3 1
      307 JUMPIFNOTEQKS                    R5 K26 [""] ; [+2]
      309 RETURN                           R0 0
      310 GETUPVAL                         R7 4
      311 GETUPVAL                         R8 6
      312 CALL                             R7 1 1
      313 OR                               R6 R7 R1
      314 JUMPIFEQ                         R6 R1 ; [+4]
      316 GETUPVAL                         R7 7
      317 CALL                             R7 0 1
      318 MOVE                             R1 R7
      319 GETUPVAL                         R7 13
      320 MOVE                             R8 R1
      321 CALL                             R7 1 2
      322 GETUPVAL                         R10 10
      323 GETTABLEKS                       R10 R10 K7 ["current"]
      325 GETTABLE                         R9 R10 R7
      326 GETUPVAL                         R10 14
      327 MOVE                             R11 R9
      328 LENGTH                           R13 R9
      329 ADDK                             R12 R13 K10 [1]
      330 CALL                             R10 2 1
      331 GETUPVAL                         R11 10
      332 GETTABLEKS                       R11 R11 K7 ["current"]
      334 LOADN                            R18 1
      335 SUBK                             R19 R8 K10 [1]
      336 NAMECALL                         R16 R9 K12 ["sub"]
      338 CALL                             R16 3 1
      339 MOVE                             R13 R16
      340 MOVE                             R14 R5
      341 MOVE                             R17 R8
      342 NAMECALL                         R15 R9 K12 ["sub"]
      344 CALL                             R15 2 1
      345 CONCAT                           R12 R13 R15
      346 SETTABLE                         R12 R11 R7
      347 GETUPVAL                         R11 15
      348 GETUPVAL                         R13 16
      349 GETTABLEKS                       R13 R13 K13 ["lines"]
      351 GETTABLE                         R12 R13 R7
      352 CALL                             R11 1 1
      353 GETUPVAL                         R13 17
      354 GETUPVAL                         R15 10
      355 GETTABLEKS                       R15 R15 K7 ["current"]
      357 GETTABLE                         R14 R15 R7
      358 CALL                             R13 1 -1
      359 NAMECALL                         R11 R11 K14 ["set"]
      361 CALL                             R11 -1 0
      362 GETUPVAL                         R13 10
      363 GETTABLEKS                       R13 R13 K7 ["current"]
      365 GETTABLE                         R12 R13 R7
      366 GETUPVAL                         R13 14
      367 MOVE                             R14 R12
      368 LENGTH                           R16 R12
      369 ADDK                             R15 R16 K10 [1]
      370 CALL                             R13 2 1
      371 MOVE                             R11 R13
      372 GETUPVAL                         R12 4
      373 GETUPVAL                         R13 18
      374 CALL                             R12 1 1
      375 JUMPIFNOTLE                      R12 R11 ; [+5]
      377 GETUPVAL                         R13 19
      378 MOVE                             R14 R11
      379 CALL                             R13 1 0
      380 JUMP                             ; [+29]
      381 JUMPIFNOTLE                      R12 R10 ; [+28]
      383 JUMPIFNOTLT                      R11 R10 ; [+26]
      385 GETUPVAL                         R13 19
      386 GETUPVAL                         R15 10
      387 GETTABLEKS                       R15 R15 K7 ["current"]
      389 LOADN                            R16 0
      390 MOVE                             R17 R15
      391 LOADNIL                          R18
      392 LOADNIL                          R19
      393 FORGPREP                         R17
      394 GETUPVAL                         R24 14
      395 MOVE                             R25 R21
      396 LENGTH                           R27 R21
      397 ADDK                             R26 R27 K10 [1]
      398 CALL                             R24 2 1
      399 FASTCALL2                        MATH_MAX R16 R24 ; [+4]
      401 MOVE                             R23 R16
      402 GETIMPORT                        R22 K17 [math.max]
      404 CALL                             R22 2 1
      405 MOVE                             R16 R22
      406 FORGLOOP                         R17 2 ; [-13]
      408 MOVE                             R14 R16
      409 CALL                             R13 1 0
      410 LENGTH                           R12 R5
      411 ADD                              R11 R1 R12
      412 GETUPVAL                         R12 8
      413 MOVE                             R13 R11
      414 CALL                             R12 1 0
      415 GETUPVAL                         R12 9
      416 MOVE                             R13 R11
      417 CALL                             R12 1 0
      418 GETIMPORT                        R12 K6 [table.concat]
      420 GETUPVAL                         R13 10
      421 GETTABLEKS                       R13 R13 K7 ["current"]
      423 LOADK                            R14 K8 ["\n"]
      424 CALL                             R12 2 1
      425 GETUPVAL                         R13 11
      426 SETTABLEKS                       R12 R13 K7 ["current"]
      428 GETUPVAL                         R13 4
      429 GETUPVAL                         R14 12
      430 GETTABLEKS                       R14 R14 K9 ["onTextChanged"]
      432 CALL                             R13 1 1
      433 JUMPIFNOT                        R13 ; [+3]
      434 MOVE                             R14 R13
      435 MOVE                             R15 R12
      436 CALL                             R14 1 0
      437 RETURN                           R0 0

PROTO_46:
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
       29 JUMPIFNOTEQ                      R4 R5 ; [+12]
       31 LOADN                            R4 1
       32 JUMPIFNOTLT                      R4 R0 ; [+133]
       34 SUBK                             R4 R0 K3 [1]
       35 GETUPVAL                         R5 9
       36 MOVE                             R6 R4
       37 CALL                             R5 1 0
       38 GETUPVAL                         R5 10
       39 MOVE                             R6 R4
       40 CALL                             R5 1 0
       41 RETURN                           R0 0
       42 GETUPVAL                         R4 8
       43 GETUPVAL                         R6 3
       44 ADDK                             R5 R6 K3 [1]
       45 JUMPIFNOTEQ                      R4 R5 ; [+31]
       47 GETUPVAL                         R5 7
       48 GETTABLEKS                       R5 R5 K2 ["current"]
       50 LENGTH                           R6 R5
       51 JUMPIFNOTEQKN                    R6 K4 [0] ; [+3]
       53 LOADN                            R4 0
       54 JUMP                             ; [+12]
       55 LOADN                            R6 0
       56 MOVE                             R7 R5
       57 LOADNIL                          R8
       58 LOADNIL                          R9
       59 FORGPREP                         R7
       60 LENGTH                           R12 R11
       61 ADD                              R6 R6 R12
       62 FORGLOOP                         R7 2 ; [-3]
       64 LENGTH                           R8 R5
       65 ADD                              R7 R6 R8
       66 SUBK                             R4 R7 K3 [1]
       67 JUMPIFNOTLE                      R0 R4 ; [+98]
       69 ADDK                             R5 R0 K3 [1]
       70 GETUPVAL                         R6 9
       71 MOVE                             R7 R5
       72 CALL                             R6 1 0
       73 GETUPVAL                         R6 10
       74 MOVE                             R7 R5
       75 CALL                             R6 1 0
       76 RETURN                           R0 0
       77 GETUPVAL                         R4 8
       78 GETUPVAL                         R5 3
       79 JUMPIFNOTLT                      R4 R5 ; [+44]
       81 LOADN                            R4 1
       82 JUMPIFNOTLT                      R4 R1 ; [+83]
       84 SUBK                             R9 R1 K3 [1]
       85 GETTABLE                         R8 R3 R9
       86 LENGTH                           R7 R8
       87 ADDK                             R6 R7 K3 [1]
       88 FASTCALL2                        MATH_MIN R2 R6 ; [+4]
       90 MOVE                             R5 R2
       91 GETIMPORT                        R4 K7 [math.min]
       93 CALL                             R4 2 1
       94 SUBK                             R6 R1 K3 [1]
       95 GETUPVAL                         R7 7
       96 GETTABLEKS                       R7 R7 K2 ["current"]
       98 LOADN                            R8 1
       99 LOADN                            R11 1
      100 SUBK                             R13 R6 K3 [1]
      101 LENGTH                           R14 R7
      102 FASTCALL2                        MATH_MIN R13 R14 ; [+3]
      104 GETIMPORT                        R12 K7 [math.min]
      106 CALL                             R12 2 1
      107 MOVE                             R9 R12
      108 LOADN                            R10 1
      109 FORNPREP                         R9
      110 GETTABLE                         R14 R7 R11
      111 LENGTH                           R13 R14
      112 ADDK                             R12 R13 K3 [1]
      113 ADD                              R8 R8 R12
      114 FORNLOOP                         R9
      115 ADD                              R9 R8 R4
      116 SUBK                             R5 R9 K3 [1]
      117 GETUPVAL                         R6 9
      118 MOVE                             R7 R5
      119 CALL                             R6 1 0
      120 GETUPVAL                         R6 10
      121 MOVE                             R7 R5
      122 CALL                             R6 1 0
      123 RETURN                           R0 0
      124 LENGTH                           R4 R3
      125 JUMPIFNOTLT                      R1 R4 ; [+40]
      127 ADDK                             R9 R1 K3 [1]
      128 GETTABLE                         R8 R3 R9
      129 LENGTH                           R7 R8
      130 ADDK                             R6 R7 K3 [1]
      131 FASTCALL2                        MATH_MIN R2 R6 ; [+4]
      133 MOVE                             R5 R2
      134 GETIMPORT                        R4 K7 [math.min]
      136 CALL                             R4 2 1
      137 ADDK                             R6 R1 K3 [1]
      138 GETUPVAL                         R7 7
      139 GETTABLEKS                       R7 R7 K2 ["current"]
      141 LOADN                            R8 1
      142 LOADN                            R11 1
      143 SUBK                             R13 R6 K3 [1]
      144 LENGTH                           R14 R7
      145 FASTCALL2                        MATH_MIN R13 R14 ; [+3]
      147 GETIMPORT                        R12 K7 [math.min]
      149 CALL                             R12 2 1
      150 MOVE                             R9 R12
      151 LOADN                            R10 1
      152 FORNPREP                         R9
      153 GETTABLE                         R14 R7 R11
      154 LENGTH                           R13 R14
      155 ADDK                             R12 R13 K3 [1]
      156 ADD                              R8 R8 R12
      157 FORNLOOP                         R9
      158 ADD                              R9 R8 R4
      159 SUBK                             R5 R9 K3 [1]
      160 GETUPVAL                         R6 9
      161 MOVE                             R7 R5
      162 CALL                             R6 1 0
      163 GETUPVAL                         R6 10
      164 MOVE                             R7 R5
      165 CALL                             R6 1 0
      166 RETURN                           R0 0

PROTO_47:
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
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_49:
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

PROTO_50:
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
       44 NAMECALL                         R4 R4 K3 ["Connect"]
       46 CALL                             R4 2 1
       47 LOADK                            R7 K4 ["CursorPosition"]
       48 NAMECALL                         R5 R1 K2 ["GetPropertyChangedSignal"]
       50 CALL                             R5 2 1
       51 NEWCLOSURE                       R7 P2
       52 CAPTURE                          REF R2
       53 CAPTURE                          VAL R1
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          UPVAL U1
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          UPVAL U12
       59 CAPTURE                          UPVAL U10
       60 CAPTURE                          UPVAL U8
       61 CAPTURE                          UPVAL U9
       62 NAMECALL                         R5 R5 K3 ["Connect"]
       64 CALL                             R5 2 1
       65 GETTABLEKS                       R6 R1 K5 ["FocusLost"]
       67 NEWCLOSURE                       R8 P3
       68 CAPTURE                          UPVAL U8
       69 CAPTURE                          UPVAL U9
       70 NAMECALL                         R6 R6 K3 ["Connect"]
       72 CALL                             R6 2 1
       73 NEWCLOSURE                       R7 P4
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R6
       77 CLOSEUPVALS                      R2
       78 RETURN                           R7 1

PROTO_51:
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

PROTO_52:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 0
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R0
        5 CALL                             R3 1 1
        6 LOADN                            R4 1
        7 LOADN                            R5 0
        8 CALL                             R1 4 -1
        9 RETURN                           R1 -1

PROTO_53:
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

PROTO_54:
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

PROTO_55:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        5 LOADN                            R3 0
        6 GETUPVAL                         R5 1
        7 MUL                              R4 R1 R5
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_56:
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

PROTO_57:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["AbsoluteSize"]
        4 GETTABLEKS                       R1 R1 K1 ["Y"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_58:
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

PROTO_59:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_60:
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

PROTO_61:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["dropLineIndex"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+3]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 MOVE                             R2 R1
        8 MOVE                             R3 R0
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_62:
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

PROTO_63:
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

PROTO_64:
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
      172 LOADN                            R31 15
      173 CALL                             R29 2 1
      174 GETIMPORT                        R30 K22 [game]
      176 LOADK                            R32 K23 ["TextService"]
      177 NAMECALL                         R30 R30 K24 ["GetService"]
      179 CALL                             R30 2 1
      180 LOADK                            R33 K25 ["0"]
      181 LOADN                            R34 15
      182 GETUPVAL                         R35 3
      183 GETIMPORT                        R36 K28 [Vector2.new]
      185 LOADN                            R37 232
      186 LOADN                            R38 232
      187 CALL                             R36 2 -1
      188 NAMECALL                         R31 R30 K29 ["GetTextSize"]
      190 CALL                             R31 -1 1
      191 GETTABLEKS                       R31 R31 K30 ["X"]
      193 DUPCLOSURE                       R32 K31 [PROTO_10]
      194 DUPCLOSURE                       R33 K32 [PROTO_11]
      195 DUPCLOSURE                       R34 K33 [PROTO_12]
      196 CAPTURE                          VAL R32
      197 GETTABLEKS                       R35 R1 K4 ["createComputed"]
      199 NEWCLOSURE                       R36 P13
      200 CAPTURE                          UPVAL U4
      201 CAPTURE                          VAL R0
      202 CAPTURE                          UPVAL U5
      203 LOADK                            R37 K34 ["ce-rich-text-enabled"]
      204 CALL                             R35 2 1
      205 GETTABLEKS                       R36 R1 K35 ["createRef"]
      207 LOADK                            R37 K36 ["container"]
      208 CALL                             R36 1 1
      209 GETTABLEKS                       R37 R1 K35 ["createRef"]
      211 LOADK                            R38 K37 ["hiddenInput"]
      212 CALL                             R37 1 1
      213 DUPCLOSURE                       R38 K38 [PROTO_14]
      214 CAPTURE                          VAL R32
      215 NEWCLOSURE                       R39 P15
      216 CAPTURE                          VAL R2
      217 CAPTURE                          VAL R0
      218 CAPTURE                          UPVAL U5
      219 CAPTURE                          VAL R10
      220 NEWCLOSURE                       R40 P16
      221 CAPTURE                          VAL R2
      222 CAPTURE                          VAL R0
      223 CAPTURE                          UPVAL U5
      224 CAPTURE                          VAL R10
      225 MOVE                             R42 R2
      226 GETTABLEKS                       R43 R0 K40 ["text"]
      228 CALL                             R42 1 1
      229 ORK                              R41 R42 K39 [""]
      230 DUPTABLE                         R42 K42 [{"current"}]
      231 GETIMPORT                        R43 K45 [string.split]
      233 MOVE                             R44 R41
      234 LOADK                            R45 K46 ["\n"]
      235 CALL                             R43 2 1
      236 SETTABLEKS                       R43 R42 K41 ["current"]
      238 DUPTABLE                         R43 K42 [{"current"}]
      239 SETTABLEKS                       R41 R43 K41 ["current"]
      241 GETTABLEKS                       R44 R1 K47 ["createStore"]
      243 DUPTABLE                         R45 K49 [{"lines"}]
      244 MOVE                             R46 R40
      245 GETTABLEKS                       R47 R42 K41 ["current"]
      247 CALL                             R46 1 1
      248 SETTABLEKS                       R46 R45 K48 ["lines"]
      250 CALL                             R44 1 2
      251 GETTABLEKS                       R46 R1 K50 ["createSignal"]
      253 GETTABLEKS                       R48 R42 K41 ["current"]
      255 LENGTH                           R47 R48
      256 CALL                             R46 1 2
      257 GETTABLEKS                       R48 R1 K50 ["createSignal"]
      259 GETTABLEKS                       R50 R42 K41 ["current"]
      261 LOADN                            R51 0
      262 MOVE                             R52 R50
      263 LOADNIL                          R53
      264 LOADNIL                          R54
      265 FORGPREP                         R52
      266 MOVE                             R59 R32
      267 MOVE                             R60 R56
      268 LENGTH                           R62 R56
      269 ADDK                             R61 R62 K51 [1]
      270 CALL                             R59 2 1
      271 FASTCALL2                        MATH_MAX R51 R59 ; [+4]
      273 MOVE                             R58 R51
      274 GETIMPORT                        R57 K54 [math.max]
      276 CALL                             R57 2 1
      277 MOVE                             R51 R57
      278 FORGLOOP                         R52 2 ; [-13]
      280 MOVE                             R49 R51
      281 CALL                             R48 1 2
      282 GETTABLEKS                       R50 R1 K50 ["createSignal"]
      284 LOADNIL                          R51
      285 CALL                             R50 1 2
      286 GETTABLEKS                       R52 R1 K50 ["createSignal"]
      288 LOADNIL                          R53
      289 CALL                             R52 1 2
      290 NEWCLOSURE                       R54 P17
      291 CAPTURE                          VAL R42
      292 NEWCLOSURE                       R55 P18
      293 CAPTURE                          VAL R42
      294 NEWCLOSURE                       R56 P19
      295 CAPTURE                          VAL R42
      296 GETTABLEKS                       R57 R1 K55 ["createEffect"]
      298 NEWCLOSURE                       R58 P20
      299 CAPTURE                          VAL R0
      300 CAPTURE                          VAL R43
      301 CAPTURE                          VAL R42
      302 CAPTURE                          VAL R45
      303 CAPTURE                          VAL R44
      304 CAPTURE                          VAL R40
      305 CAPTURE                          VAL R47
      306 CAPTURE                          VAL R49
      307 CAPTURE                          VAL R32
      308 LOADK                            R59 K56 ["ce-sync-external"]
      309 CALL                             R57 2 0
      310 GETTABLEKS                       R57 R1 K55 ["createEffect"]
      312 NEWCLOSURE                       R58 P21
      313 CAPTURE                          VAL R10
      314 CAPTURE                          VAL R45
      315 CAPTURE                          VAL R44
      316 CAPTURE                          VAL R40
      317 CAPTURE                          VAL R42
      318 LOADK                            R59 K57 ["ce-rehighlight-on-theme"]
      319 CALL                             R57 2 0
      320 NEWCLOSURE                       R57 P22
      321 CAPTURE                          VAL R0
      322 GETTABLEKS                       R58 R1 K55 ["createEffect"]
      324 NEWCLOSURE                       R59 P23
      325 CAPTURE                          VAL R0
      326 CAPTURE                          VAL R51
      327 CAPTURE                          VAL R53
      328 LOADK                            R60 K58 ["ce-clear-when-inactive"]
      329 CALL                             R58 2 0
      330 GETTABLEKS                       R58 R1 K50 ["createSignal"]
      332 LOADB                            R59 1
      333 CALL                             R58 1 2
      334 GETTABLEKS                       R60 R1 K55 ["createEffect"]
      336 NEWCLOSURE                       R61 P24
      337 CAPTURE                          VAL R50
      338 CAPTURE                          VAL R52
      339 CAPTURE                          VAL R59
      340 LOADK                            R62 K59 ["ce-cursor-blink"]
      341 CALL                             R60 2 0
      342 GETTABLEKS                       R60 R1 K4 ["createComputed"]
      344 NEWCLOSURE                       R61 P25
      345 CAPTURE                          VAL R0
      346 CAPTURE                          VAL R50
      347 CAPTURE                          VAL R52
      348 CAPTURE                          VAL R58
      349 LOADK                            R62 K60 ["ce-cursor-visible"]
      350 CALL                             R60 2 1
      351 GETTABLEKS                       R61 R1 K4 ["createComputed"]
      353 NEWCLOSURE                       R62 P26
      354 CAPTURE                          VAL R50
      355 CAPTURE                          VAL R54
      356 CAPTURE                          VAL R42
      357 CAPTURE                          VAL R32
      358 CAPTURE                          VAL R31
      359 CAPTURE                          VAL R29
      360 LOADK                            R63 K61 ["ce-cursor-pos"]
      361 CALL                             R61 2 1
      362 GETTABLEKS                       R62 R1 K4 ["createComputed"]
      364 NEWCLOSURE                       R63 P27
      365 CAPTURE                          VAL R50
      366 CAPTURE                          VAL R29
      367 LOADK                            R64 K62 ["ce-cursor-size"]
      368 CALL                             R62 2 1
      369 GETTABLEKS                       R63 R1 K4 ["createComputed"]
      371 NEWCLOSURE                       R64 P28
      372 CAPTURE                          VAL R52
      373 CAPTURE                          VAL R50
      374 CAPTURE                          VAL R54
      375 CAPTURE                          VAL R42
      376 CAPTURE                          VAL R32
      377 CAPTURE                          VAL R31
      378 CAPTURE                          VAL R29
      379 LOADK                            R65 K63 ["ce-selection-rects"]
      380 CALL                             R63 2 1
      381 NEWTABLE                         R64 0 0
      383 GETTABLEKS                       R65 R1 K55 ["createEffect"]
      385 NEWCLOSURE                       R66 P29
      386 CAPTURE                          VAL R63
      387 CAPTURE                          VAL R2
      388 CAPTURE                          VAL R36
      389 CAPTURE                          VAL R64
      390 CAPTURE                          UPVAL U6
      391 LOADK                            R67 K64 ["ce-selection-rect-frames"]
      392 CALL                             R65 2 0
      393 GETTABLEKS                       R65 R1 K4 ["createComputed"]
      395 NEWCLOSURE                       R66 P30
      396 CAPTURE                          VAL R46
      397 CAPTURE                          VAL R48
      398 CAPTURE                          VAL R31
      399 CAPTURE                          VAL R29
      400 LOADK                            R67 K65 ["ce-overlay-size"]
      401 CALL                             R65 2 1
      402 LOADB                            R66 0
      403 NEWCLOSURE                       R67 P31
      404 CAPTURE                          VAL R2
      405 CAPTURE                          VAL R36
      406 CAPTURE                          VAL R42
      407 CAPTURE                          VAL R29
      408 CAPTURE                          VAL R31
      409 CAPTURE                          VAL R33
      410 NEWCLOSURE                       R68 P32
      411 CAPTURE                          VAL R2
      412 CAPTURE                          VAL R0
      413 CAPTURE                          REF R66
      414 CAPTURE                          VAL R67
      415 CAPTURE                          VAL R42
      416 CAPTURE                          VAL R51
      417 CAPTURE                          VAL R53
      418 NEWCLOSURE                       R69 P33
      419 CAPTURE                          REF R66
      420 CAPTURE                          VAL R2
      421 CAPTURE                          VAL R50
      422 CAPTURE                          VAL R67
      423 CAPTURE                          VAL R51
      424 CAPTURE                          VAL R42
      425 NEWCLOSURE                       R70 P34
      426 CAPTURE                          REF R66
      427 GETTABLEKS                       R71 R1 K55 ["createEffect"]
      429 NEWCLOSURE                       R72 P35
      430 CAPTURE                          VAL R0
      431 CAPTURE                          VAL R50
      432 CAPTURE                          VAL R2
      433 CAPTURE                          VAL R37
      434 CAPTURE                          VAL R4
      435 CAPTURE                          VAL R5
      436 LOADK                            R73 K66 ["ce-focus-on-select"]
      437 CALL                             R71 2 0
      438 NEWCLOSURE                       R71 P36
      439 CAPTURE                          VAL R42
      440 CAPTURE                          VAL R43
      441 CAPTURE                          VAL R2
      442 CAPTURE                          VAL R0
      443 NEWCLOSURE                       R72 P37
      444 CAPTURE                          VAL R2
      445 CAPTURE                          VAL R48
      446 CAPTURE                          VAL R49
      447 CAPTURE                          VAL R42
      448 CAPTURE                          VAL R32
      449 NEWCLOSURE                       R73 P38
      450 CAPTURE                          VAL R2
      451 CAPTURE                          VAL R44
      452 CAPTURE                          VAL R42
      453 CAPTURE                          VAL R0
      454 CAPTURE                          UPVAL U5
      455 CAPTURE                          VAL R10
      456 CAPTURE                          VAL R45
      457 CAPTURE                          VAL R47
      458 CAPTURE                          VAL R49
      459 CAPTURE                          VAL R32
      460 NEWCLOSURE                       R74 P39
      461 CAPTURE                          VAL R2
      462 CAPTURE                          VAL R44
      463 CAPTURE                          VAL R42
      464 CAPTURE                          VAL R0
      465 CAPTURE                          UPVAL U5
      466 CAPTURE                          VAL R10
      467 CAPTURE                          VAL R45
      468 CAPTURE                          VAL R47
      469 CAPTURE                          VAL R49
      470 CAPTURE                          VAL R32
      471 NEWCLOSURE                       R75 P40
      472 CAPTURE                          VAL R2
      473 CAPTURE                          VAL R52
      474 CAPTURE                          VAL R50
      475 CAPTURE                          VAL R54
      476 CAPTURE                          VAL R42
      477 CAPTURE                          VAL R32
      478 CAPTURE                          VAL R45
      479 CAPTURE                          VAL R44
      480 CAPTURE                          VAL R39
      481 CAPTURE                          VAL R48
      482 CAPTURE                          VAL R49
      483 CAPTURE                          VAL R74
      484 GETTABLEKS                       R76 R1 K55 ["createEffect"]
      486 NEWCLOSURE                       R77 P41
      487 CAPTURE                          VAL R37
      488 CAPTURE                          VAL R2
      489 CAPTURE                          VAL R0
      490 CAPTURE                          VAL R4
      491 CAPTURE                          VAL R5
      492 CAPTURE                          VAL R50
      493 CAPTURE                          VAL R52
      494 CAPTURE                          VAL R75
      495 CAPTURE                          VAL R51
      496 CAPTURE                          VAL R53
      497 CAPTURE                          VAL R42
      498 CAPTURE                          VAL R43
      499 CAPTURE                          VAL R54
      500 CAPTURE                          VAL R32
      501 CAPTURE                          VAL R45
      502 CAPTURE                          VAL R44
      503 CAPTURE                          VAL R39
      504 CAPTURE                          VAL R48
      505 CAPTURE                          VAL R49
      506 CAPTURE                          VAL R74
      507 CAPTURE                          VAL R73
      508 LOADK                            R78 K67 ["ce-input-handler"]
      509 CALL                             R76 2 0
      510 GETTABLEKS                       R76 R1 K4 ["createComputed"]
      512 NEWCLOSURE                       R77 P42
      513 CAPTURE                          VAL R0
      514 CAPTURE                          VAL R46
      515 CAPTURE                          VAL R31
      516 LOADK                            R78 K68 ["ce-gutter-width"]
      517 CALL                             R76 2 1
      518 GETTABLEKS                       R77 R1 K4 ["createComputed"]
      520 NEWCLOSURE                       R78 P43
      521 CAPTURE                          VAL R76
      522 LOADK                            R79 K69 ["ce-gutter-size"]
      523 CALL                             R77 2 1
      524 GETTABLEKS                       R78 R1 K4 ["createComputed"]
      526 NEWCLOSURE                       R79 P44
      527 CAPTURE                          VAL R76
      528 LOADK                            R80 K70 ["ce-scroll-frame-size"]
      529 CALL                             R78 2 1
      530 GETTABLEKS                       R79 R1 K4 ["createComputed"]
      532 NEWCLOSURE                       R80 P45
      533 CAPTURE                          VAL R76
      534 LOADK                            R81 K71 ["ce-code-area-position"]
      535 CALL                             R79 2 1
      536 GETTABLEKS                       R80 R1 K35 ["createRef"]
      538 LOADK                            R81 K72 ["scrollFrame"]
      539 CALL                             R80 1 1
      540 GETTABLEKS                       R81 R1 K35 ["createRef"]
      542 LOADK                            R82 K73 ["gutterScroll"]
      543 CALL                             R81 1 1
      544 GETTABLEKS                       R82 R1 K50 ["createSignal"]
      546 LOADN                            R83 0
      547 CALL                             R82 1 2
      548 GETTABLEKS                       R84 R1 K50 ["createSignal"]
      550 LOADN                            R85 0
      551 CALL                             R84 1 2
      552 GETTABLEKS                       R86 R1 K4 ["createComputed"]
      554 NEWCLOSURE                       R87 P46
      555 CAPTURE                          VAL R46
      556 CAPTURE                          VAL R29
      557 LOADK                            R88 K74 ["ce-gutter-canvas-size"]
      558 CALL                             R86 2 1
      559 GETTABLEKS                       R87 R1 K4 ["createComputed"]
      561 NEWCLOSURE                       R88 P47
      562 CAPTURE                          VAL R46
      563 LOADK                            R89 K75 ["ce-line-numbers"]
      564 CALL                             R87 2 1
      565 GETTABLEKS                       R88 R1 K55 ["createEffect"]
      567 NEWCLOSURE                       R89 P48
      568 CAPTURE                          VAL R80
      569 CAPTURE                          VAL R81
      570 CAPTURE                          VAL R85
      571 CAPTURE                          VAL R83
      572 LOADK                            R90 K76 ["ce-scroll-sync"]
      573 CALL                             R88 2 0
      574 NEWCLOSURE                       R88 P49
      575 CAPTURE                          VAL R0
      576 GETTABLEKS                       R89 R1 K4 ["createComputed"]
      578 NEWCLOSURE                       R90 P50
      579 CAPTURE                          VAL R0
      580 LOADK                            R91 K77 ["ce-drop-visible"]
      581 CALL                             R89 2 1
      582 GETTABLEKS                       R90 R1 K4 ["createComputed"]
      584 NEWCLOSURE                       R91 P51
      585 CAPTURE                          VAL R0
      586 CAPTURE                          VAL R29
      587 LOADK                            R92 K78 ["ce-drop-pos"]
      588 CALL                             R90 2 1
      589 DUPTABLE                         R91 K108 [{"overlaySize", "cursorVisible", "cursorPos", "cursorSize", "cursorColor", "bgColor", "scrollbarColor", "lineNumberColor", "gutterSepColor", "codeTextColor", "onInputBegan", "onInputChanged", "onInputEnded", "showLineNumbers", "gutterCanvasSize", "gutterSize", "lineNumbers", "scrollFrameSize", "codeAreaPosition", "dropIndicatorVisible", "dropIndicatorPos", "LayoutOrder", "sentinelText", "hiddenInputSize", "hiddenInputBgTransparency", "hiddenInputTextTransparency", "highlightedLines", "richTextEnabled", "lineHeight"}]
      590 SETTABLEKS                       R65 R91 K79 ["overlaySize"]
      592 SETTABLEKS                       R60 R91 K80 ["cursorVisible"]
      594 SETTABLEKS                       R61 R91 K81 ["cursorPos"]
      596 SETTABLEKS                       R62 R91 K82 ["cursorSize"]
      598 SETTABLEKS                       R27 R91 K83 ["cursorColor"]
      600 SETTABLEKS                       R21 R91 K84 ["bgColor"]
      602 SETTABLEKS                       R26 R91 K85 ["scrollbarColor"]
      604 SETTABLEKS                       R22 R91 K86 ["lineNumberColor"]
      606 SETTABLEKS                       R23 R91 K87 ["gutterSepColor"]
      608 SETTABLEKS                       R28 R91 K88 ["codeTextColor"]
      610 SETTABLEKS                       R68 R91 K89 ["onInputBegan"]
      612 SETTABLEKS                       R69 R91 K90 ["onInputChanged"]
      614 SETTABLEKS                       R70 R91 K91 ["onInputEnded"]
      616 GETTABLEKS                       R92 R0 K92 ["showLineNumbers"]
      618 SETTABLEKS                       R92 R91 K92 ["showLineNumbers"]
      620 SETTABLEKS                       R86 R91 K93 ["gutterCanvasSize"]
      622 SETTABLEKS                       R77 R91 K94 ["gutterSize"]
      624 SETTABLEKS                       R87 R91 K95 ["lineNumbers"]
      626 SETTABLEKS                       R78 R91 K96 ["scrollFrameSize"]
      628 SETTABLEKS                       R79 R91 K97 ["codeAreaPosition"]
      630 SETTABLEKS                       R89 R91 K98 ["dropIndicatorVisible"]
      632 SETTABLEKS                       R90 R91 K99 ["dropIndicatorPos"]
      634 GETTABLEKS                       R92 R0 K100 ["LayoutOrder"]
      636 SETTABLEKS                       R92 R91 K100 ["LayoutOrder"]
      638 SETTABLEKS                       R6 R91 K101 ["sentinelText"]
      640 SETTABLEKS                       R7 R91 K102 ["hiddenInputSize"]
      642 SETTABLEKS                       R8 R91 K103 ["hiddenInputBgTransparency"]
      644 SETTABLEKS                       R9 R91 K104 ["hiddenInputTextTransparency"]
      646 GETTABLEKS                       R92 R44 K48 ["lines"]
      648 SETTABLEKS                       R92 R91 K105 ["highlightedLines"]
      650 SETTABLEKS                       R35 R91 K106 ["richTextEnabled"]
      652 SETTABLEKS                       R29 R91 K107 ["lineHeight"]
      654 CLOSEUPVALS                      R66
      655 RETURN                           R91 1

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
       36 GETTABLEKS                       R7 R7 K12 ["SyntaxHighlighter"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R1 K13 ["Debug"]
       41 GETTABLEKS                       R8 R1 K14 ["template"]
       43 GETTABLEKS                       R9 R1 K15 ["Frame"]
       45 GETTABLEKS                       R10 R1 K16 ["TextLabel"]
       47 GETTABLEKS                       R11 R1 K17 ["TextButton"]
       49 GETTABLEKS                       R12 R1 K18 ["TextBox"]
       51 GETTABLEKS                       R13 R1 K19 ["ScrollingFrame"]
       53 GETTABLEKS                       R14 R1 K20 ["VirtualList"]
       55 GETIMPORT                        R15 K23 [Color3.fromRGB]
       57 LOADN                            R16 82
       58 LOADN                            R17 139
       59 LOADN                            R18 255
       60 CALL                             R15 3 1
       61 GETIMPORT                        R16 K27 [Enum.Font.Code]
       63 GETIMPORT                        R17 K29 [Font.fromEnum]
       65 MOVE                             R18 R16
       66 CALL                             R17 1 1
       67 MOVE                             R18 R8
       68 LOADK                            R19 K30 ["CodeEditor"]
       69 DUPTABLE                         R20 K41 [{"text", "onTextChanged", "language", "editable", "showLineNumbers", "dropLineIndex", "LayoutOrder", "inputCaptureActive", "onInteraction", "debugInput"}]
       70 LOADK                            R21 K42 [""]
       71 SETTABLEKS                       R21 R20 K31 ["text"]
       73 LOADNIL                          R21
       74 SETTABLEKS                       R21 R20 K32 ["onTextChanged"]
       76 LOADK                            R21 K43 ["luau"]
       77 SETTABLEKS                       R21 R20 K33 ["language"]
       79 LOADB                            R21 1
       80 SETTABLEKS                       R21 R20 K34 ["editable"]
       82 LOADB                            R21 0
       83 SETTABLEKS                       R21 R20 K35 ["showLineNumbers"]
       85 LOADNIL                          R21
       86 SETTABLEKS                       R21 R20 K36 ["dropLineIndex"]
       88 LOADN                            R21 0
       89 SETTABLEKS                       R21 R20 K37 ["LayoutOrder"]
       91 LOADB                            R21 1
       92 SETTABLEKS                       R21 R20 K38 ["inputCaptureActive"]
       94 LOADNIL                          R21
       95 SETTABLEKS                       R21 R20 K39 ["onInteraction"]
       97 LOADB                            R21 0
       98 SETTABLEKS                       R21 R20 K40 ["debugInput"]
      100 NEWTABLE                         R21 0 1
      102 MOVE                             R22 R9
      103 NEWTABLE                         R23 8 3
      105 GETIMPORT                        R27 K46 [UDim2.new]
      107 LOADN                            R28 1
      108 LOADN                            R29 0
      109 LOADN                            R30 1
      110 LOADN                            R31 0
      111 CALL                             R27 4 1
      112 SETTABLEKS                       R27 R23 K47 ["Size"]
      114 MOVE                             R27 R2
      115 LOADK                            R28 K48 ["bgColor"]
      116 CALL                             R27 1 1
      117 SETTABLEKS                       R27 R23 K49 ["BackgroundColor3"]
      119 LOADN                            R27 0
      120 SETTABLEKS                       R27 R23 K50 ["BackgroundTransparency"]
      122 LOADN                            R27 0
      123 SETTABLEKS                       R27 R23 K51 ["BorderSizePixel"]
      125 MOVE                             R27 R2
      126 LOADK                            R28 K37 ["LayoutOrder"]
      127 CALL                             R27 1 1
      128 SETTABLEKS                       R27 R23 K37 ["LayoutOrder"]
      130 MOVE                             R24 R13
      131 NEWTABLE                         R25 16 2
      133 LOADK                            R28 K52 ["gutterScroll"]
      134 SETTABLEKS                       R28 R25 K53 ["ref"]
      136 LOADK                            R28 K54 ["LineNumberGutter"]
      137 SETTABLEKS                       R28 R25 K55 ["Name"]
      139 MOVE                             R28 R2
      140 LOADK                            R29 K56 ["gutterSize"]
      141 CALL                             R28 1 1
      142 SETTABLEKS                       R28 R25 K47 ["Size"]
      144 MOVE                             R28 R2
      145 LOADK                            R29 K57 ["gutterCanvasSize"]
      146 CALL                             R28 1 1
      147 SETTABLEKS                       R28 R25 K58 ["CanvasSize"]
      149 GETIMPORT                        R28 K61 [Enum.ScrollingDirection.Y]
      151 SETTABLEKS                       R28 R25 K59 ["ScrollingDirection"]
      153 LOADB                            R28 0
      154 SETTABLEKS                       R28 R25 K62 ["ScrollingEnabled"]
      156 LOADN                            R28 1
      157 SETTABLEKS                       R28 R25 K63 ["ScrollBarImageTransparency"]
      159 LOADN                            R28 0
      160 SETTABLEKS                       R28 R25 K64 ["ScrollBarThickness"]
      162 MOVE                             R28 R2
      163 LOADK                            R29 K48 ["bgColor"]
      164 CALL                             R28 1 1
      165 SETTABLEKS                       R28 R25 K49 ["BackgroundColor3"]
      167 LOADN                            R28 0
      168 SETTABLEKS                       R28 R25 K50 ["BackgroundTransparency"]
      170 LOADN                            R28 0
      171 SETTABLEKS                       R28 R25 K51 ["BorderSizePixel"]
      173 MOVE                             R28 R2
      174 LOADK                            R29 K35 ["showLineNumbers"]
      175 CALL                             R28 1 1
      176 SETTABLEKS                       R28 R25 K65 ["Visible"]
      178 MOVE                             R26 R14
      179 DUPTABLE                         R27 K72 [{"items", "itemSize", "overscan", "strategy", "useParentScroll", "Each"}]
      180 MOVE                             R28 R2
      181 LOADK                            R29 K73 ["lineNumbers"]
      182 CALL                             R28 1 1
      183 SETTABLEKS                       R28 R27 K66 ["items"]
      185 MOVE                             R28 R2
      186 LOADK                            R29 K74 ["lineHeight"]
      187 CALL                             R28 1 1
      188 SETTABLEKS                       R28 R27 K67 ["itemSize"]
      190 LOADN                            R28 10
      191 SETTABLEKS                       R28 R27 K68 ["overscan"]
      193 LOADK                            R28 K75 ["cache"]
      194 SETTABLEKS                       R28 R27 K69 ["strategy"]
      196 LOADB                            R28 1
      197 SETTABLEKS                       R28 R27 K70 ["useParentScroll"]
      199 MOVE                             R28 R8
      200 NEWTABLE                         R29 0 2
      202 LOADK                            R30 K76 ["idx"]
      203 LOADK                            R31 K77 ["item"]
      204 SETLIST                          R29 R30 2 [1]
      206 NEWTABLE                         R30 0 1
      208 MOVE                             R31 R10
      209 DUPTABLE                         R32 K84 [{"Tags", "Size", "BackgroundTransparency", "Font", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "Text"}]
      210 LOADK                            R33 K85 ["pad-r-10"]
      211 SETTABLEKS                       R33 R32 K78 ["Tags"]
      213 GETIMPORT                        R33 K46 [UDim2.new]
      215 LOADN                            R34 1
      216 LOADN                            R35 0
      217 LOADN                            R36 1
      218 LOADN                            R37 0
      219 CALL                             R33 4 1
      220 SETTABLEKS                       R33 R32 K47 ["Size"]
      222 LOADN                            R33 1
      223 SETTABLEKS                       R33 R32 K50 ["BackgroundTransparency"]
      225 SETTABLEKS                       R16 R32 K25 ["Font"]
      227 LOADN                            R33 15
      228 SETTABLEKS                       R33 R32 K79 ["TextSize"]
      230 MOVE                             R33 R2
      231 LOADK                            R34 K86 ["lineNumberColor"]
      232 CALL                             R33 1 1
      233 SETTABLEKS                       R33 R32 K80 ["TextColor3"]
      235 GETIMPORT                        R33 K88 [Enum.TextXAlignment.Right]
      237 SETTABLEKS                       R33 R32 K81 ["TextXAlignment"]
      239 GETIMPORT                        R33 K90 [Enum.TextYAlignment.Top]
      241 SETTABLEKS                       R33 R32 K82 ["TextYAlignment"]
      243 MOVE                             R33 R2
      244 LOADK                            R34 K77 ["item"]
      245 CALL                             R33 1 1
      246 SETTABLEKS                       R33 R32 K83 ["Text"]
      248 CALL                             R31 1 -1
      249 SETLIST                          R30 R31 -1 [1]
      251 CALL                             R28 2 1
      252 SETTABLEKS                       R28 R27 K71 ["Each"]
      254 CALL                             R26 1 1
      255 MOVE                             R27 R9
      256 DUPTABLE                         R28 K92 [{"Name", "Position", "Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
      257 LOADK                            R29 K93 ["GutterSeparator"]
      258 SETTABLEKS                       R29 R28 K55 ["Name"]
      260 GETIMPORT                        R29 K46 [UDim2.new]
      262 LOADN                            R30 1
      263 LOADN                            R31 255
      264 LOADN                            R32 0
      265 LOADN                            R33 0
      266 CALL                             R29 4 1
      267 SETTABLEKS                       R29 R28 K91 ["Position"]
      269 GETIMPORT                        R29 K46 [UDim2.new]
      271 LOADN                            R30 0
      272 LOADN                            R31 1
      273 LOADN                            R32 1
      274 LOADN                            R33 0
      275 CALL                             R29 4 1
      276 SETTABLEKS                       R29 R28 K47 ["Size"]
      278 MOVE                             R29 R2
      279 LOADK                            R30 K94 ["gutterSepColor"]
      280 CALL                             R29 1 1
      281 SETTABLEKS                       R29 R28 K49 ["BackgroundColor3"]
      283 LOADN                            R29 0
      284 SETTABLEKS                       R29 R28 K50 ["BackgroundTransparency"]
      286 LOADN                            R29 0
      287 SETTABLEKS                       R29 R28 K51 ["BorderSizePixel"]
      289 CALL                             R27 1 -1
      290 SETLIST                          R25 R26 -1 [1]
      292 CALL                             R24 1 1
      293 MOVE                             R25 R13
      294 NEWTABLE                         R26 16 5
      296 LOADK                            R32 K95 ["scrollFrame"]
      297 SETTABLEKS                       R32 R26 K53 ["ref"]
      299 MOVE                             R32 R2
      300 LOADK                            R33 K96 ["codeAreaPosition"]
      301 CALL                             R32 1 1
      302 SETTABLEKS                       R32 R26 K91 ["Position"]
      304 MOVE                             R32 R2
      305 LOADK                            R33 K97 ["scrollFrameSize"]
      306 CALL                             R32 1 1
      307 SETTABLEKS                       R32 R26 K47 ["Size"]
      309 GETIMPORT                        R32 K99 [Enum.ScrollingDirection.XY]
      311 SETTABLEKS                       R32 R26 K59 ["ScrollingDirection"]
      313 GETIMPORT                        R32 K101 [Enum.AutomaticSize.XY]
      315 SETTABLEKS                       R32 R26 K102 ["AutomaticCanvasSize"]
      317 MOVE                             R32 R2
      318 LOADK                            R33 K48 ["bgColor"]
      319 CALL                             R32 1 1
      320 SETTABLEKS                       R32 R26 K49 ["BackgroundColor3"]
      322 LOADN                            R32 0
      323 SETTABLEKS                       R32 R26 K50 ["BackgroundTransparency"]
      325 LOADN                            R32 0
      326 SETTABLEKS                       R32 R26 K51 ["BorderSizePixel"]
      328 GETIMPORT                        R32 K46 [UDim2.new]
      330 LOADN                            R33 0
      331 LOADN                            R34 0
      332 LOADN                            R35 0
      333 LOADN                            R36 0
      334 CALL                             R32 4 1
      335 SETTABLEKS                       R32 R26 K58 ["CanvasSize"]
      337 MOVE                             R32 R2
      338 LOADK                            R33 K103 ["scrollbarColor"]
      339 CALL                             R32 1 1
      340 SETTABLEKS                       R32 R26 K104 ["ScrollBarImageColor3"]
      342 LOADN                            R32 6
      343 SETTABLEKS                       R32 R26 K64 ["ScrollBarThickness"]
      345 LOADN                            R32 1
      346 SETTABLEKS                       R32 R26 K37 ["LayoutOrder"]
      348 MOVE                             R27 R9
      349 DUPTABLE                         R28 K105 [{"ref", "Size", "BackgroundTransparency"}]
      350 LOADK                            R29 K106 ["container"]
      351 SETTABLEKS                       R29 R28 K53 ["ref"]
      353 MOVE                             R29 R2
      354 LOADK                            R30 K107 ["overlaySize"]
      355 CALL                             R29 1 1
      356 SETTABLEKS                       R29 R28 K47 ["Size"]
      358 LOADN                            R29 1
      359 SETTABLEKS                       R29 R28 K50 ["BackgroundTransparency"]
      361 CALL                             R27 1 1
      362 MOVE                             R28 R9
      363 DUPTABLE                         R29 K109 [{"Name", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Position", "Size", "Visible", "ZIndex"}]
      364 LOADK                            R30 K110 ["Cursor"]
      365 SETTABLEKS                       R30 R29 K55 ["Name"]
      367 MOVE                             R30 R2
      368 LOADK                            R31 K111 ["cursorColor"]
      369 CALL                             R30 1 1
      370 SETTABLEKS                       R30 R29 K49 ["BackgroundColor3"]
      372 LOADN                            R30 0
      373 SETTABLEKS                       R30 R29 K50 ["BackgroundTransparency"]
      375 LOADN                            R30 0
      376 SETTABLEKS                       R30 R29 K51 ["BorderSizePixel"]
      378 MOVE                             R30 R2
      379 LOADK                            R31 K112 ["cursorPos"]
      380 CALL                             R30 1 1
      381 SETTABLEKS                       R30 R29 K91 ["Position"]
      383 MOVE                             R30 R2
      384 LOADK                            R31 K113 ["cursorSize"]
      385 CALL                             R30 1 1
      386 SETTABLEKS                       R30 R29 K47 ["Size"]
      388 MOVE                             R30 R2
      389 LOADK                            R31 K114 ["cursorVisible"]
      390 CALL                             R30 1 1
      391 SETTABLEKS                       R30 R29 K65 ["Visible"]
      393 LOADN                            R30 4
      394 SETTABLEKS                       R30 R29 K108 ["ZIndex"]
      396 CALL                             R28 1 1
      397 MOVE                             R29 R9
      398 DUPTABLE                         R30 K109 [{"Name", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Position", "Size", "Visible", "ZIndex"}]
      399 LOADK                            R31 K115 ["DropIndicator"]
      400 SETTABLEKS                       R31 R30 K55 ["Name"]
      402 GETIMPORT                        R31 K23 [Color3.fromRGB]
      404 LOADN                            R32 82
      405 LOADN                            R33 139
      406 LOADN                            R34 255
      407 CALL                             R31 3 1
      408 SETTABLEKS                       R31 R30 K49 ["BackgroundColor3"]
      410 LOADN                            R31 0
      411 SETTABLEKS                       R31 R30 K50 ["BackgroundTransparency"]
      413 LOADN                            R31 0
      414 SETTABLEKS                       R31 R30 K51 ["BorderSizePixel"]
      416 MOVE                             R31 R2
      417 LOADK                            R32 K116 ["dropIndicatorPos"]
      418 CALL                             R31 1 1
      419 SETTABLEKS                       R31 R30 K91 ["Position"]
      421 GETIMPORT                        R31 K46 [UDim2.new]
      423 LOADN                            R32 1
      424 LOADN                            R33 0
      425 LOADN                            R34 0
      426 LOADN                            R35 2
      427 CALL                             R31 4 1
      428 SETTABLEKS                       R31 R30 K47 ["Size"]
      430 MOVE                             R31 R2
      431 LOADK                            R32 K117 ["dropIndicatorVisible"]
      432 CALL                             R31 1 1
      433 SETTABLEKS                       R31 R30 K65 ["Visible"]
      435 LOADN                            R31 5
      436 SETTABLEKS                       R31 R30 K108 ["ZIndex"]
      438 CALL                             R29 1 1
      439 MOVE                             R30 R11
      440 DUPTABLE                         R31 K122 [{"Size", "BackgroundTransparency", "Text", "ZIndex", "Selectable", "OnInputBegan", "OnInputChanged", "OnInputEnded"}]
      441 MOVE                             R32 R2
      442 LOADK                            R33 K107 ["overlaySize"]
      443 CALL                             R32 1 1
      444 SETTABLEKS                       R32 R31 K47 ["Size"]
      446 LOADN                            R32 1
      447 SETTABLEKS                       R32 R31 K50 ["BackgroundTransparency"]
      449 LOADK                            R32 K42 [""]
      450 SETTABLEKS                       R32 R31 K83 ["Text"]
      452 LOADN                            R32 3
      453 SETTABLEKS                       R32 R31 K108 ["ZIndex"]
      455 LOADB                            R32 0
      456 SETTABLEKS                       R32 R31 K118 ["Selectable"]
      458 MOVE                             R32 R2
      459 LOADK                            R33 K123 ["onInputBegan"]
      460 CALL                             R32 1 1
      461 SETTABLEKS                       R32 R31 K119 ["OnInputBegan"]
      463 MOVE                             R32 R2
      464 LOADK                            R33 K124 ["onInputChanged"]
      465 CALL                             R32 1 1
      466 SETTABLEKS                       R32 R31 K120 ["OnInputChanged"]
      468 MOVE                             R32 R2
      469 LOADK                            R33 K125 ["onInputEnded"]
      470 CALL                             R32 1 1
      471 SETTABLEKS                       R32 R31 K121 ["OnInputEnded"]
      473 CALL                             R30 1 1
      474 MOVE                             R31 R14
      475 DUPTABLE                         R32 K72 [{"items", "itemSize", "overscan", "strategy", "useParentScroll", "Each"}]
      476 MOVE                             R33 R2
      477 LOADK                            R34 K126 ["highlightedLines"]
      478 CALL                             R33 1 1
      479 SETTABLEKS                       R33 R32 K66 ["items"]
      481 MOVE                             R33 R2
      482 LOADK                            R34 K74 ["lineHeight"]
      483 CALL                             R33 1 1
      484 SETTABLEKS                       R33 R32 K67 ["itemSize"]
      486 LOADN                            R33 30
      487 SETTABLEKS                       R33 R32 K68 ["overscan"]
      489 LOADK                            R33 K75 ["cache"]
      490 SETTABLEKS                       R33 R32 K69 ["strategy"]
      492 LOADB                            R33 1
      493 SETTABLEKS                       R33 R32 K70 ["useParentScroll"]
      495 MOVE                             R33 R8
      496 NEWTABLE                         R34 0 2
      498 LOADK                            R35 K76 ["idx"]
      499 LOADK                            R36 K77 ["item"]
      500 SETLIST                          R34 R35 2 [1]
      502 NEWTABLE                         R35 0 1
      504 MOVE                             R36 R10
      505 DUPTABLE                         R37 K128 [{"Size", "AutomaticSize", "BackgroundTransparency", "Font", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "Text", "RichText", "ZIndex"}]
      506 GETIMPORT                        R38 K46 [UDim2.new]
      508 LOADN                            R39 0
      509 LOADN                            R40 0
      510 LOADN                            R41 1
      511 LOADN                            R42 0
      512 CALL                             R38 4 1
      513 SETTABLEKS                       R38 R37 K47 ["Size"]
      515 GETIMPORT                        R38 K130 [Enum.AutomaticSize.X]
      517 SETTABLEKS                       R38 R37 K100 ["AutomaticSize"]
      519 LOADN                            R38 1
      520 SETTABLEKS                       R38 R37 K50 ["BackgroundTransparency"]
      522 SETTABLEKS                       R16 R37 K25 ["Font"]
      524 LOADN                            R38 15
      525 SETTABLEKS                       R38 R37 K79 ["TextSize"]
      527 MOVE                             R38 R2
      528 LOADK                            R39 K131 ["codeTextColor"]
      529 CALL                             R38 1 1
      530 SETTABLEKS                       R38 R37 K80 ["TextColor3"]
      532 GETIMPORT                        R38 K133 [Enum.TextXAlignment.Left]
      534 SETTABLEKS                       R38 R37 K81 ["TextXAlignment"]
      536 GETIMPORT                        R38 K90 [Enum.TextYAlignment.Top]
      538 SETTABLEKS                       R38 R37 K82 ["TextYAlignment"]
      540 MOVE                             R38 R2
      541 LOADK                            R39 K77 ["item"]
      542 CALL                             R38 1 1
      543 SETTABLEKS                       R38 R37 K83 ["Text"]
      545 MOVE                             R38 R2
      546 LOADK                            R39 K134 ["richTextEnabled"]
      547 CALL                             R38 1 1
      548 SETTABLEKS                       R38 R37 K127 ["RichText"]
      550 LOADN                            R38 2
      551 SETTABLEKS                       R38 R37 K108 ["ZIndex"]
      553 CALL                             R36 1 -1
      554 SETLIST                          R35 R36 -1 [1]
      556 CALL                             R33 2 1
      557 SETTABLEKS                       R33 R32 K71 ["Each"]
      559 CALL                             R31 1 -1
      560 SETLIST                          R26 R27 -1 [1]
      562 CALL                             R25 1 1
      563 MOVE                             R26 R12
      564 DUPTABLE                         R27 K139 [{"Name", "ref", "AnchorPoint", "Position", "Size", "BackgroundTransparency", "TextTransparency", "Text", "ClearTextOnFocus", "MultiLine", "ZIndex"}]
      565 LOADK                            R28 K140 ["HiddenInput"]
      566 SETTABLEKS                       R28 R27 K55 ["Name"]
      568 LOADK                            R28 K141 ["hiddenInput"]
      569 SETTABLEKS                       R28 R27 K53 ["ref"]
      571 GETIMPORT                        R28 K143 [Vector2.new]
      573 LOADN                            R29 1
      574 LOADN                            R30 1
      575 CALL                             R28 2 1
      576 SETTABLEKS                       R28 R27 K135 ["AnchorPoint"]
      578 GETIMPORT                        R28 K46 [UDim2.new]
      580 LOADN                            R29 1
      581 LOADN                            R30 254
      582 LOADN                            R31 1
      583 LOADN                            R32 254
      584 CALL                             R28 4 1
      585 SETTABLEKS                       R28 R27 K91 ["Position"]
      587 MOVE                             R28 R2
      588 LOADK                            R29 K144 ["hiddenInputSize"]
      589 CALL                             R28 1 1
      590 SETTABLEKS                       R28 R27 K47 ["Size"]
      592 MOVE                             R28 R2
      593 LOADK                            R29 K145 ["hiddenInputBgTransparency"]
      594 CALL                             R28 1 1
      595 SETTABLEKS                       R28 R27 K50 ["BackgroundTransparency"]
      597 MOVE                             R28 R2
      598 LOADK                            R29 K146 ["hiddenInputTextTransparency"]
      599 CALL                             R28 1 1
      600 SETTABLEKS                       R28 R27 K136 ["TextTransparency"]
      602 MOVE                             R28 R2
      603 LOADK                            R29 K147 ["sentinelText"]
      604 CALL                             R28 1 1
      605 SETTABLEKS                       R28 R27 K83 ["Text"]
      607 LOADB                            R28 0
      608 SETTABLEKS                       R28 R27 K137 ["ClearTextOnFocus"]
      610 LOADB                            R28 1
      611 SETTABLEKS                       R28 R27 K138 ["MultiLine"]
      613 LOADN                            R28 10
      614 SETTABLEKS                       R28 R27 K108 ["ZIndex"]
      616 CALL                             R26 1 -1
      617 SETLIST                          R23 R24 -1 [1]
      619 CALL                             R22 1 -1
      620 SETLIST                          R21 R22 -1 [1]
      622 DUPCLOSURE                       R22 K148 [PROTO_64]
      623 CAPTURE                          VAL R4
      624 CAPTURE                          VAL R5
      625 CAPTURE                          VAL R17
      626 CAPTURE                          VAL R16
      627 CAPTURE                          VAL R7
      628 CAPTURE                          VAL R6
      629 CAPTURE                          VAL R15
      630 CALL                             R18 4 1
      631 RETURN                           R18 1
