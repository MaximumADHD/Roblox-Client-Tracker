PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R0 K0 ["open"]
        3 GETTABLEKS                       R5 R1 K0 ["open"]
        5 CONCAT                           R3 R4 R5
        6 GETTABLEKS                       R5 R1 K1 ["close"]
        8 GETTABLEKS                       R6 R0 K1 ["close"]
       10 CONCAT                           R4 R5 R6
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["getService"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_1]
        3 CALL                             R0 1 1
        4 RETURN                           R0 1

PROTO_3:
        0 JUMPIFEQKNIL                     R1 ; [+11]
        2 FASTCALL1                        TYPE R1 ; [+3]
        3 MOVE                             R3 R1
        4 GETIMPORT                        R2 K1 [type]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+6]
        9 LENGTH                           R2 R1
       10 JUMPIFNOTEQKN                    R2 K3 [0] ; [+3]
       12 LOADK                            R2 K4 [""]
       13 RETURN                           R2 1
       14 FASTCALL1                        TOSTRING R1 ; [+3]
       15 MOVE                             R3 R1
       16 GETIMPORT                        R2 K6 [tostring]
       18 CALL                             R2 1 1
       19 RETURN                           R2 1

PROTO_4:
        0 JUMPIFEQKNIL                     R1 ; [+11]
        2 FASTCALL1                        TYPE R1 ; [+3]
        3 MOVE                             R3 R1
        4 GETIMPORT                        R2 K1 [type]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+6]
        9 LENGTH                           R2 R1
       10 JUMPIFNOTEQKN                    R2 K3 [0] ; [+3]
       12 LOADK                            R2 K4 [""]
       13 RETURN                           R2 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K5 ["level"]
       17 JUMPIFNOTEQKN                    R2 K3 [0] ; [+7]
       19 FASTCALL1                        TOSTRING R1 ; [+3]
       20 MOVE                             R3 R1
       21 GETIMPORT                        R2 K7 [tostring]
       23 CALL                             R2 1 1
       24 RETURN                           R2 1
       25 GETTABLEKS                       R3 R0 K8 ["open"]
       27 FASTCALL1                        TOSTRING R1 ; [+3]
       28 MOVE                             R7 R1
       29 GETIMPORT                        R6 K7 [tostring]
       31 CALL                             R6 1 1
       32 MOVE                             R4 R6
       33 GETTABLEKS                       R5 R0 K9 ["close"]
       35 CONCAT                           R2 R3 R5
       36 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_6:
        0 DUPTABLE                         R2 K2 [{"open", "close"}]
        1 SETTABLEKS                       R0 R2 K0 ["open"]
        3 SETTABLEKS                       R1 R2 K1 ["close"]
        5 DUPTABLE                         R5 K5 [{"__call", "__concat"}]
        6 DUPCLOSURE                       R6 K6 [PROTO_4]
        7 CAPTURE                          UPVAL U0
        8 SETTABLEKS                       R6 R5 K3 ["__call"]
       10 DUPCLOSURE                       R6 K7 [PROTO_5]
       11 CAPTURE                          UPVAL U1
       12 SETTABLEKS                       R6 R5 K4 ["__concat"]
       14 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       16 MOVE                             R4 R2
       17 GETIMPORT                        R3 K9 [setmetatable]
       19 CALL                             R3 2 0
       20 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [""]
        2 LOADK                            R2 K0 [""]
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_8:
        0 JUMPIFNOTEQ                      R0 R1 ; [+22]
        2 JUMPIFNOTEQ                      R1 R2 ; [+20]
        4 LOADN                            R3 8
        5 JUMPIFNOTLT                      R0 R3 ; [+3]
        7 LOADN                            R3 16
        8 RETURN                           R3 1
        9 LOADN                            R3 248
       10 JUMPIFNOTLT                      R3 R0 ; [+3]
       12 LOADN                            R3 231
       13 RETURN                           R3 1
       14 SUBK                             R7 R0 K3 [8]
       15 DIVK                             R6 R7 K2 [247]
       16 MULK                             R5 R6 K1 [24]
       17 ADDK                             R4 R5 K0 [232]
       18 FASTCALL1                        MATH_ROUND R4 ; [+2]
       19 GETIMPORT                        R3 K6 [math.round]
       21 CALL                             R3 1 1
       22 RETURN                           R3 1
       23 DIVK                             R9 R0 K10 [255]
       24 MULK                             R8 R9 K9 [5]
       25 FASTCALL1                        MATH_ROUND R8 ; [+2]
       26 GETIMPORT                        R7 K6 [math.round]
       28 CALL                             R7 1 1
       29 MULK                             R6 R7 K8 [36]
       30 ADDK                             R5 R6 K7 [16]
       31 DIVK                             R9 R1 K10 [255]
       32 MULK                             R8 R9 K9 [5]
       33 FASTCALL1                        MATH_ROUND R8 ; [+2]
       34 GETIMPORT                        R7 K6 [math.round]
       36 CALL                             R7 1 1
       37 MULK                             R6 R7 K11 [6]
       38 ADD                              R4 R5 R6
       39 DIVK                             R7 R2 K10 [255]
       40 MULK                             R6 R7 K9 [5]
       41 FASTCALL1                        MATH_ROUND R6 ; [+2]
       42 GETIMPORT                        R5 K6 [math.round]
       44 CALL                             R5 1 1
       45 ADD                              R3 R4 R5
       46 RETURN                           R3 1

PROTO_9:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+33]
        7 FASTCALL1                        TYPE R1 ; [+3]
        8 MOVE                             R4 R1
        9 GETIMPORT                        R3 K1 [type]
       11 CALL                             R3 1 1
       12 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+26]
       14 FASTCALL1                        TYPE R2 ; [+3]
       15 MOVE                             R4 R2
       16 GETIMPORT                        R3 K1 [type]
       18 CALL                             R3 1 1
       19 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+19]
       21 LOADN                            R3 255
       22 JUMPIFLT                         R3 R0 ; [+16]
       24 LOADN                            R3 0
       25 JUMPIFLT                         R0 R3 ; [+13]
       27 LOADN                            R3 255
       28 JUMPIFLT                         R3 R1 ; [+10]
       30 LOADN                            R3 0
       31 JUMPIFLT                         R1 R3 ; [+7]
       33 LOADN                            R3 255
       34 JUMPIFLT                         R3 R2 ; [+4]
       36 LOADN                            R3 0
       37 JUMPIFNOTLT                      R2 R3 ; [+4]
       39 GETUPVAL                         R3 0
       40 CALL                             R3 0 -1
       41 RETURN                           R3 -1
       42 GETIMPORT                        R3 K5 [string.format]
       44 LOADK                            R4 K6 ["%c[%d;5;%dm"]
       45 LOADN                            R5 27
       46 LOADN                            R6 38
       47 GETUPVAL                         R7 1
       48 MOVE                             R8 R0
       49 MOVE                             R9 R1
       50 MOVE                             R10 R2
       51 CALL                             R7 3 1
       52 CALL                             R3 4 1
       53 GETUPVAL                         R4 2
       54 MOVE                             R5 R3
       55 GETUPVAL                         R6 3
       56 CALL                             R4 2 -1
       57 RETURN                           R4 -1

PROTO_10:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+33]
        7 FASTCALL1                        TYPE R1 ; [+3]
        8 MOVE                             R4 R1
        9 GETIMPORT                        R3 K1 [type]
       11 CALL                             R3 1 1
       12 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+26]
       14 FASTCALL1                        TYPE R2 ; [+3]
       15 MOVE                             R4 R2
       16 GETIMPORT                        R3 K1 [type]
       18 CALL                             R3 1 1
       19 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+19]
       21 LOADN                            R3 255
       22 JUMPIFLT                         R3 R0 ; [+16]
       24 LOADN                            R3 0
       25 JUMPIFLT                         R0 R3 ; [+13]
       27 LOADN                            R3 255
       28 JUMPIFLT                         R3 R1 ; [+10]
       30 LOADN                            R3 0
       31 JUMPIFLT                         R1 R3 ; [+7]
       33 LOADN                            R3 255
       34 JUMPIFLT                         R3 R2 ; [+4]
       36 LOADN                            R3 0
       37 JUMPIFNOTLT                      R2 R3 ; [+4]
       39 GETUPVAL                         R3 0
       40 CALL                             R3 0 -1
       41 RETURN                           R3 -1
       42 GETIMPORT                        R3 K5 [string.format]
       44 LOADK                            R4 K6 ["%c[%d;5;%dm"]
       45 LOADN                            R5 27
       46 LOADN                            R6 48
       47 GETUPVAL                         R7 1
       48 MOVE                             R8 R0
       49 MOVE                             R9 R1
       50 MOVE                             R10 R2
       51 CALL                             R7 3 1
       52 CALL                             R3 4 1
       53 GETUPVAL                         R4 2
       54 MOVE                             R5 R3
       55 GETUPVAL                         R6 3
       56 CALL                             R4 2 -1
       57 RETURN                           R4 -1

PROTO_11:
        0 LOADN                            R4 2
        1 LOADN                            R5 3
        2 FASTCALL3                        STRING_SUB R0 R4 R5
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [string.sub]
        7 CALL                             R2 3 1
        8 FASTCALL2K                       TONUMBER R2 K3 ; [+4]
       10 LOADK                            R3 K3 [16]
       11 GETIMPORT                        R1 K5 [tonumber]
       13 CALL                             R1 2 1
       14 LOADN                            R5 4
       15 LOADN                            R6 5
       16 FASTCALL3                        STRING_SUB R0 R5 R6
       18 MOVE                             R4 R0
       19 GETIMPORT                        R3 K2 [string.sub]
       21 CALL                             R3 3 1
       22 FASTCALL2K                       TONUMBER R3 K3 ; [+4]
       24 LOADK                            R4 K3 [16]
       25 GETIMPORT                        R2 K5 [tonumber]
       27 CALL                             R2 2 1
       28 LOADN                            R6 6
       29 LOADN                            R7 7
       30 FASTCALL3                        STRING_SUB R0 R6 R7
       32 MOVE                             R5 R0
       33 GETIMPORT                        R4 K2 [string.sub]
       35 CALL                             R4 3 1
       36 FASTCALL2K                       TONUMBER R4 K3 ; [+4]
       38 LOADK                            R5 K3 [16]
       39 GETIMPORT                        R3 K5 [tonumber]
       41 CALL                             R3 2 1
       42 GETUPVAL                         R4 0
       43 MOVE                             R5 R1
       44 MOVE                             R6 R2
       45 MOVE                             R7 R3
       46 CALL                             R4 3 1
       47 RETURN                           R4 1

PROTO_12:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+11]
        7 GETIMPORT                        R1 K4 [string.find]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K5 ["#%X"]
       11 CALL                             R1 2 1
       12 JUMPIFNOTEQKNIL                  R1 ; [+4]
       14 LENGTH                           R1 R0
       15 JUMPIFEQKN                       R1 K6 [7] ; [+4]
       17 GETUPVAL                         R1 0
       18 CALL                             R1 0 -1
       19 RETURN                           R1 -1
       20 GETIMPORT                        R1 K8 [string.format]
       22 LOADK                            R2 K9 ["%c[%d;5;%dm"]
       23 LOADN                            R3 27
       24 LOADN                            R4 38
       25 LOADN                            R9 2
       26 LOADN                            R10 3
       27 FASTCALL3                        STRING_SUB R0 R9 R10
       29 MOVE                             R8 R0
       30 GETIMPORT                        R7 K11 [string.sub]
       32 CALL                             R7 3 1
       33 FASTCALL2K                       TONUMBER R7 K12 ; [+4]
       35 LOADK                            R8 K12 [16]
       36 GETIMPORT                        R6 K14 [tonumber]
       38 CALL                             R6 2 1
       39 LOADN                            R10 4
       40 LOADN                            R11 5
       41 FASTCALL3                        STRING_SUB R0 R10 R11
       43 MOVE                             R9 R0
       44 GETIMPORT                        R8 K11 [string.sub]
       46 CALL                             R8 3 1
       47 FASTCALL2K                       TONUMBER R8 K12 ; [+4]
       49 LOADK                            R9 K12 [16]
       50 GETIMPORT                        R7 K14 [tonumber]
       52 CALL                             R7 2 1
       53 LOADN                            R11 6
       54 LOADN                            R12 7
       55 FASTCALL3                        STRING_SUB R0 R11 R12
       57 MOVE                             R10 R0
       58 GETIMPORT                        R9 K11 [string.sub]
       60 CALL                             R9 3 1
       61 FASTCALL2K                       TONUMBER R9 K12 ; [+4]
       63 LOADK                            R10 K12 [16]
       64 GETIMPORT                        R8 K14 [tonumber]
       66 CALL                             R8 2 1
       67 GETUPVAL                         R9 1
       68 MOVE                             R10 R6
       69 MOVE                             R11 R7
       70 MOVE                             R12 R8
       71 CALL                             R9 3 1
       72 MOVE                             R5 R9
       73 CALL                             R1 4 1
       74 GETUPVAL                         R2 2
       75 MOVE                             R3 R1
       76 GETUPVAL                         R4 3
       77 CALL                             R2 2 -1
       78 RETURN                           R2 -1

PROTO_13:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+11]
        7 GETIMPORT                        R1 K4 [string.find]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K5 ["#%X"]
       11 CALL                             R1 2 1
       12 JUMPIFNOTEQKNIL                  R1 ; [+4]
       14 LENGTH                           R1 R0
       15 JUMPIFEQKN                       R1 K6 [7] ; [+4]
       17 GETUPVAL                         R1 0
       18 CALL                             R1 0 -1
       19 RETURN                           R1 -1
       20 GETIMPORT                        R1 K8 [string.format]
       22 LOADK                            R2 K9 ["%c[%d;5;%dm"]
       23 LOADN                            R3 27
       24 LOADN                            R4 48
       25 LOADN                            R9 2
       26 LOADN                            R10 3
       27 FASTCALL3                        STRING_SUB R0 R9 R10
       29 MOVE                             R8 R0
       30 GETIMPORT                        R7 K11 [string.sub]
       32 CALL                             R7 3 1
       33 FASTCALL2K                       TONUMBER R7 K12 ; [+4]
       35 LOADK                            R8 K12 [16]
       36 GETIMPORT                        R6 K14 [tonumber]
       38 CALL                             R6 2 1
       39 LOADN                            R10 4
       40 LOADN                            R11 5
       41 FASTCALL3                        STRING_SUB R0 R10 R11
       43 MOVE                             R9 R0
       44 GETIMPORT                        R8 K11 [string.sub]
       46 CALL                             R8 3 1
       47 FASTCALL2K                       TONUMBER R8 K12 ; [+4]
       49 LOADK                            R9 K12 [16]
       50 GETIMPORT                        R7 K14 [tonumber]
       52 CALL                             R7 2 1
       53 LOADN                            R11 6
       54 LOADN                            R12 7
       55 FASTCALL3                        STRING_SUB R0 R11 R12
       57 MOVE                             R10 R0
       58 GETIMPORT                        R9 K11 [string.sub]
       60 CALL                             R9 3 1
       61 FASTCALL2K                       TONUMBER R9 K12 ; [+4]
       63 LOADK                            R10 K12 [16]
       64 GETIMPORT                        R8 K14 [tonumber]
       66 CALL                             R8 2 1
       67 GETUPVAL                         R9 1
       68 MOVE                             R10 R6
       69 MOVE                             R11 R7
       70 MOVE                             R12 R8
       71 CALL                             R9 3 1
       72 MOVE                             R5 R9
       73 CALL                             R1 4 1
       74 GETUPVAL                         R2 2
       75 MOVE                             R3 R1
       76 GETUPVAL                         R4 3
       77 CALL                             R2 2 -1
       78 RETURN                           R2 -1

PROTO_14:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+13]
        7 LOADN                            R1 30
        8 JUMPIFLT                         R0 R1 ; [+10]
       10 LOADN                            R1 37
       11 JUMPIFNOTLT                      R1 R0 ; [+4]
       13 LOADN                            R1 90
       14 JUMPIFLT                         R0 R1 ; [+4]
       16 LOADN                            R1 97
       17 JUMPIFNOTLT                      R1 R0 ; [+4]
       19 GETUPVAL                         R1 0
       20 CALL                             R1 0 -1
       21 RETURN                           R1 -1
       22 GETIMPORT                        R1 K5 [string.format]
       24 LOADK                            R2 K6 ["%c[%dm"]
       25 LOADN                            R3 27
       26 MOVE                             R4 R0
       27 CALL                             R1 3 1
       28 GETUPVAL                         R2 1
       29 MOVE                             R3 R1
       30 GETUPVAL                         R4 2
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1

PROTO_15:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+13]
        7 LOADN                            R1 40
        8 JUMPIFLT                         R0 R1 ; [+10]
       10 LOADN                            R1 47
       11 JUMPIFNOTLT                      R1 R0 ; [+4]
       13 LOADN                            R1 100
       14 JUMPIFLT                         R0 R1 ; [+4]
       16 LOADN                            R1 107
       17 JUMPIFNOTLT                      R1 R0 ; [+4]
       19 GETUPVAL                         R1 0
       20 CALL                             R1 0 -1
       21 RETURN                           R1 -1
       22 GETIMPORT                        R1 K5 [string.format]
       24 LOADK                            R2 K6 ["%c[%dm"]
       25 LOADN                            R3 27
       26 MOVE                             R4 R0
       27 CALL                             R1 3 1
       28 GETUPVAL                         R2 1
       29 MOVE                             R3 R1
       30 GETUPVAL                         R4 2
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1

PROTO_16:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+7]
        7 LOADN                            R1 0
        8 JUMPIFLT                         R0 R1 ; [+4]
       10 LOADN                            R1 255
       11 JUMPIFNOTLT                      R1 R0 ; [+4]
       13 GETUPVAL                         R1 0
       14 CALL                             R1 0 -1
       15 RETURN                           R1 -1
       16 GETIMPORT                        R1 K5 [string.format]
       18 LOADK                            R2 K6 ["%c[%d;5;%dm"]
       19 LOADN                            R3 27
       20 LOADN                            R4 38
       21 MOVE                             R5 R0
       22 CALL                             R1 4 1
       23 GETUPVAL                         R2 1
       24 MOVE                             R3 R1
       25 GETUPVAL                         R4 2
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1

PROTO_17:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+7]
        7 LOADN                            R1 0
        8 JUMPIFLT                         R0 R1 ; [+4]
       10 LOADN                            R1 255
       11 JUMPIFNOTLT                      R1 R0 ; [+4]
       13 GETUPVAL                         R1 0
       14 CALL                             R1 0 -1
       15 RETURN                           R1 -1
       16 GETIMPORT                        R1 K5 [string.format]
       18 LOADK                            R2 K6 ["%c[%d;5;%dm"]
       19 LOADN                            R3 27
       20 LOADN                            R4 48
       21 MOVE                             R5 R0
       22 CALL                             R1 4 1
       23 GETUPVAL                         R2 1
       24 MOVE                             R3 R1
       25 GETUPVAL                         R4 2
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"modifier", "color", "bgColor"}]
        2 DUPTABLE                         R1 K13 [{"reset", "bold", "dim", "italic", "underline", "overline", "inverse", "hidden", "strikethrough"}]
        3 NEWTABLE                         R2 0 2
        5 LOADN                            R3 0
        6 LOADN                            R4 0
        7 SETLIST                          R2 R3 2 [1]
        9 SETTABLEKS                       R2 R1 K4 ["reset"]
       11 NEWTABLE                         R2 0 2
       13 LOADN                            R3 1
       14 LOADN                            R4 22
       15 SETLIST                          R2 R3 2 [1]
       17 SETTABLEKS                       R2 R1 K5 ["bold"]
       19 NEWTABLE                         R2 0 2
       21 LOADN                            R3 2
       22 LOADN                            R4 22
       23 SETLIST                          R2 R3 2 [1]
       25 SETTABLEKS                       R2 R1 K6 ["dim"]
       27 NEWTABLE                         R2 0 2
       29 LOADN                            R3 3
       30 LOADN                            R4 23
       31 SETLIST                          R2 R3 2 [1]
       33 SETTABLEKS                       R2 R1 K7 ["italic"]
       35 NEWTABLE                         R2 0 2
       37 LOADN                            R3 4
       38 LOADN                            R4 24
       39 SETLIST                          R2 R3 2 [1]
       41 SETTABLEKS                       R2 R1 K8 ["underline"]
       43 NEWTABLE                         R2 0 2
       45 LOADN                            R3 53
       46 LOADN                            R4 55
       47 SETLIST                          R2 R3 2 [1]
       49 SETTABLEKS                       R2 R1 K9 ["overline"]
       51 NEWTABLE                         R2 0 2
       53 LOADN                            R3 7
       54 LOADN                            R4 27
       55 SETLIST                          R2 R3 2 [1]
       57 SETTABLEKS                       R2 R1 K10 ["inverse"]
       59 NEWTABLE                         R2 0 2
       61 LOADN                            R3 8
       62 LOADN                            R4 28
       63 SETLIST                          R2 R3 2 [1]
       65 SETTABLEKS                       R2 R1 K11 ["hidden"]
       67 NEWTABLE                         R2 0 2
       69 LOADN                            R3 9
       70 LOADN                            R4 29
       71 SETLIST                          R2 R3 2 [1]
       73 SETTABLEKS                       R2 R1 K12 ["strikethrough"]
       75 SETTABLEKS                       R1 R0 K0 ["modifier"]
       77 DUPTABLE                         R1 K32 [{"black", "red", "green", "yellow", "blue", "magenta", "cyan", "white", "blackBright", "gray", "grey", "redBright", "greenBright", "yellowBright", "blueBright", "magentaBright", "cyanBright", "whiteBright"}]
       78 NEWTABLE                         R2 0 2
       80 LOADN                            R3 30
       81 LOADN                            R4 39
       82 SETLIST                          R2 R3 2 [1]
       84 SETTABLEKS                       R2 R1 K14 ["black"]
       86 NEWTABLE                         R2 0 2
       88 LOADN                            R3 31
       89 LOADN                            R4 39
       90 SETLIST                          R2 R3 2 [1]
       92 SETTABLEKS                       R2 R1 K15 ["red"]
       94 NEWTABLE                         R2 0 2
       96 LOADN                            R3 32
       97 LOADN                            R4 39
       98 SETLIST                          R2 R3 2 [1]
      100 SETTABLEKS                       R2 R1 K16 ["green"]
      102 NEWTABLE                         R2 0 2
      104 LOADN                            R3 33
      105 LOADN                            R4 39
      106 SETLIST                          R2 R3 2 [1]
      108 SETTABLEKS                       R2 R1 K17 ["yellow"]
      110 NEWTABLE                         R2 0 2
      112 LOADN                            R3 34
      113 LOADN                            R4 39
      114 SETLIST                          R2 R3 2 [1]
      116 SETTABLEKS                       R2 R1 K18 ["blue"]
      118 NEWTABLE                         R2 0 2
      120 LOADN                            R3 35
      121 LOADN                            R4 39
      122 SETLIST                          R2 R3 2 [1]
      124 SETTABLEKS                       R2 R1 K19 ["magenta"]
      126 NEWTABLE                         R2 0 2
      128 LOADN                            R3 36
      129 LOADN                            R4 39
      130 SETLIST                          R2 R3 2 [1]
      132 SETTABLEKS                       R2 R1 K20 ["cyan"]
      134 NEWTABLE                         R2 0 2
      136 LOADN                            R3 37
      137 LOADN                            R4 39
      138 SETLIST                          R2 R3 2 [1]
      140 SETTABLEKS                       R2 R1 K21 ["white"]
      142 NEWTABLE                         R2 0 2
      144 LOADN                            R3 90
      145 LOADN                            R4 39
      146 SETLIST                          R2 R3 2 [1]
      148 SETTABLEKS                       R2 R1 K22 ["blackBright"]
      150 NEWTABLE                         R2 0 2
      152 LOADN                            R3 90
      153 LOADN                            R4 39
      154 SETLIST                          R2 R3 2 [1]
      156 SETTABLEKS                       R2 R1 K23 ["gray"]
      158 NEWTABLE                         R2 0 2
      160 LOADN                            R3 90
      161 LOADN                            R4 39
      162 SETLIST                          R2 R3 2 [1]
      164 SETTABLEKS                       R2 R1 K24 ["grey"]
      166 NEWTABLE                         R2 0 2
      168 LOADN                            R3 91
      169 LOADN                            R4 39
      170 SETLIST                          R2 R3 2 [1]
      172 SETTABLEKS                       R2 R1 K25 ["redBright"]
      174 NEWTABLE                         R2 0 2
      176 LOADN                            R3 92
      177 LOADN                            R4 39
      178 SETLIST                          R2 R3 2 [1]
      180 SETTABLEKS                       R2 R1 K26 ["greenBright"]
      182 NEWTABLE                         R2 0 2
      184 LOADN                            R3 93
      185 LOADN                            R4 39
      186 SETLIST                          R2 R3 2 [1]
      188 SETTABLEKS                       R2 R1 K27 ["yellowBright"]
      190 NEWTABLE                         R2 0 2
      192 LOADN                            R3 94
      193 LOADN                            R4 39
      194 SETLIST                          R2 R3 2 [1]
      196 SETTABLEKS                       R2 R1 K28 ["blueBright"]
      198 NEWTABLE                         R2 0 2
      200 LOADN                            R3 95
      201 LOADN                            R4 39
      202 SETLIST                          R2 R3 2 [1]
      204 SETTABLEKS                       R2 R1 K29 ["magentaBright"]
      206 NEWTABLE                         R2 0 2
      208 LOADN                            R3 96
      209 LOADN                            R4 39
      210 SETLIST                          R2 R3 2 [1]
      212 SETTABLEKS                       R2 R1 K30 ["cyanBright"]
      214 NEWTABLE                         R2 0 2
      216 LOADN                            R3 97
      217 LOADN                            R4 39
      218 SETLIST                          R2 R3 2 [1]
      220 SETTABLEKS                       R2 R1 K31 ["whiteBright"]
      222 SETTABLEKS                       R1 R0 K1 ["color"]
      224 DUPTABLE                         R1 K51 [{"bgBlack", "bgRed", "bgGreen", "bgYellow", "bgBlue", "bgMagenta", "bgCyan", "bgWhite", "bgBlackBright", "bgGray", "bgGrey", "bgRedBright", "bgGreenBright", "bgYellowBright", "bgBlueBright", "bgMagentaBright", "bgCyanBright", "bgWhiteBright"}]
      225 NEWTABLE                         R2 0 2
      227 LOADN                            R3 40
      228 LOADN                            R4 49
      229 SETLIST                          R2 R3 2 [1]
      231 SETTABLEKS                       R2 R1 K33 ["bgBlack"]
      233 NEWTABLE                         R2 0 2
      235 LOADN                            R3 41
      236 LOADN                            R4 49
      237 SETLIST                          R2 R3 2 [1]
      239 SETTABLEKS                       R2 R1 K34 ["bgRed"]
      241 NEWTABLE                         R2 0 2
      243 LOADN                            R3 42
      244 LOADN                            R4 49
      245 SETLIST                          R2 R3 2 [1]
      247 SETTABLEKS                       R2 R1 K35 ["bgGreen"]
      249 NEWTABLE                         R2 0 2
      251 LOADN                            R3 43
      252 LOADN                            R4 49
      253 SETLIST                          R2 R3 2 [1]
      255 SETTABLEKS                       R2 R1 K36 ["bgYellow"]
      257 NEWTABLE                         R2 0 2
      259 LOADN                            R3 44
      260 LOADN                            R4 49
      261 SETLIST                          R2 R3 2 [1]
      263 SETTABLEKS                       R2 R1 K37 ["bgBlue"]
      265 NEWTABLE                         R2 0 2
      267 LOADN                            R3 45
      268 LOADN                            R4 49
      269 SETLIST                          R2 R3 2 [1]
      271 SETTABLEKS                       R2 R1 K38 ["bgMagenta"]
      273 NEWTABLE                         R2 0 2
      275 LOADN                            R3 46
      276 LOADN                            R4 49
      277 SETLIST                          R2 R3 2 [1]
      279 SETTABLEKS                       R2 R1 K39 ["bgCyan"]
      281 NEWTABLE                         R2 0 2
      283 LOADN                            R3 47
      284 LOADN                            R4 49
      285 SETLIST                          R2 R3 2 [1]
      287 SETTABLEKS                       R2 R1 K40 ["bgWhite"]
      289 NEWTABLE                         R2 0 2
      291 LOADN                            R3 100
      292 LOADN                            R4 49
      293 SETLIST                          R2 R3 2 [1]
      295 SETTABLEKS                       R2 R1 K41 ["bgBlackBright"]
      297 NEWTABLE                         R2 0 2
      299 LOADN                            R3 100
      300 LOADN                            R4 49
      301 SETLIST                          R2 R3 2 [1]
      303 SETTABLEKS                       R2 R1 K42 ["bgGray"]
      305 NEWTABLE                         R2 0 2
      307 LOADN                            R3 100
      308 LOADN                            R4 49
      309 SETLIST                          R2 R3 2 [1]
      311 SETTABLEKS                       R2 R1 K43 ["bgGrey"]
      313 NEWTABLE                         R2 0 2
      315 LOADN                            R3 101
      316 LOADN                            R4 49
      317 SETLIST                          R2 R3 2 [1]
      319 SETTABLEKS                       R2 R1 K44 ["bgRedBright"]
      321 NEWTABLE                         R2 0 2
      323 LOADN                            R3 102
      324 LOADN                            R4 49
      325 SETLIST                          R2 R3 2 [1]
      327 SETTABLEKS                       R2 R1 K45 ["bgGreenBright"]
      329 NEWTABLE                         R2 0 2
      331 LOADN                            R3 103
      332 LOADN                            R4 49
      333 SETLIST                          R2 R3 2 [1]
      335 SETTABLEKS                       R2 R1 K46 ["bgYellowBright"]
      337 NEWTABLE                         R2 0 2
      339 LOADN                            R3 104
      340 LOADN                            R4 49
      341 SETLIST                          R2 R3 2 [1]
      343 SETTABLEKS                       R2 R1 K47 ["bgBlueBright"]
      345 NEWTABLE                         R2 0 2
      347 LOADN                            R3 105
      348 LOADN                            R4 49
      349 SETLIST                          R2 R3 2 [1]
      351 SETTABLEKS                       R2 R1 K48 ["bgMagentaBright"]
      353 NEWTABLE                         R2 0 2
      355 LOADN                            R3 106
      356 LOADN                            R4 49
      357 SETLIST                          R2 R3 2 [1]
      359 SETTABLEKS                       R2 R1 K49 ["bgCyanBright"]
      361 NEWTABLE                         R2 0 2
      363 LOADN                            R3 107
      364 LOADN                            R4 49
      365 SETLIST                          R2 R3 2 [1]
      367 SETTABLEKS                       R2 R1 K50 ["bgWhiteBright"]
      369 SETTABLEKS                       R1 R0 K2 ["bgColor"]
      371 NEWTABLE                         R1 0 0
      373 GETIMPORT                        R2 K53 [pairs]
      375 MOVE                             R3 R0
      376 CALL                             R2 1 3
      377 FORGPREP_NEXT                    R2
      378 GETIMPORT                        R7 K53 [pairs]
      380 MOVE                             R8 R6
      381 CALL                             R7 1 3
      382 FORGPREP_NEXT                    R7
      383 DUPTABLE                         R12 K56 [{"open", "close"}]
      384 GETIMPORT                        R13 K59 [string.format]
      386 LOADK                            R14 K60 ["%c[%dm"]
      387 LOADN                            R15 27
      388 GETTABLEN                        R16 R11 1
      389 CALL                             R13 3 1
      390 SETTABLEKS                       R13 R12 K54 ["open"]
      392 GETIMPORT                        R13 K59 [string.format]
      394 LOADK                            R14 K60 ["%c[%dm"]
      395 LOADN                            R15 27
      396 GETTABLEN                        R16 R11 2
      397 CALL                             R13 3 1
      398 SETTABLEKS                       R13 R12 K55 ["close"]
      400 SETTABLE                         R12 R1 R10
      401 FORGLOOP                         R7 2 ; [-19]
      403 FORGLOOP                         R2 2 ; [-26]
      405 LOADNIL                          R2
      406 NEWCLOSURE                       R3 P0
      407 CAPTURE                          REF R2
      408 DUPCLOSURE                       R4 K61 [PROTO_2]
      409 DUPTABLE                         R5 K64 [{["level"] = 2}]
      410 GETIMPORT                        R6 K66 [_G]
      412 GETTABLEKS                       R6 R6 K67 ["NOCOLOR"]
      414 JUMPIF                           R6 ; [+6]
      415 GETIMPORT                        R7 K69 [pcall]
      417 DUPCLOSURE                       R8 K70 [PROTO_1]
      418 CALL                             R7 1 1
      419 MOVE                             R6 R7
      420 JUMPIF                           R6 ; [+3]
      421 LOADN                            R6 0
      422 SETTABLEKS                       R6 R5 K62 ["level"]
      424 DUPTABLE                         R8 K72 [{"__call"}]
      425 DUPCLOSURE                       R9 K73 [PROTO_3]
      426 SETTABLEKS                       R9 R8 K71 ["__call"]
      428 FASTCALL2                        SETMETATABLE R5 R8 ; [+4]
      430 MOVE                             R7 R5
      431 GETIMPORT                        R6 K75 [setmetatable]
      433 CALL                             R6 2 0
      434 DUPCLOSURE                       R2 K76 [PROTO_6]
      435 CAPTURE                          VAL R5
      436 CAPTURE                          VAL R3
      437 NEWCLOSURE                       R6 P5
      438 CAPTURE                          REF R2
      439 GETIMPORT                        R7 K59 [string.format]
      441 LOADK                            R8 K60 ["%c[%dm"]
      442 LOADN                            R9 27
      443 LOADN                            R10 39
      444 CALL                             R7 3 1
      445 GETIMPORT                        R8 K59 [string.format]
      447 LOADK                            R9 K60 ["%c[%dm"]
      448 LOADN                            R10 27
      449 LOADN                            R11 49
      450 CALL                             R8 3 1
      451 GETIMPORT                        R9 K59 [string.format]
      453 LOADK                            R10 K60 ["%c[%dm"]
      454 LOADN                            R11 27
      455 LOADN                            R12 0
      456 CALL                             R9 3 1
      457 GETIMPORT                        R10 K53 [pairs]
      459 MOVE                             R11 R1
      460 CALL                             R10 1 3
      461 FORGPREP_NEXT                    R10
      462 MOVE                             R15 R2
      463 GETTABLEKS                       R16 R14 K54 ["open"]
      465 GETTABLEKS                       R17 R14 K55 ["close"]
      467 CALL                             R15 2 1
      468 SETTABLE                         R15 R5 R13
      469 FORGLOOP                         R10 2 ; [-8]
      471 MOVE                             R10 R2
      472 MOVE                             R11 R9
      473 MOVE                             R12 R9
      474 CALL                             R10 2 1
      475 SETTABLEKS                       R10 R5 K4 ["reset"]
      477 DUPCLOSURE                       R10 K77 [PROTO_8]
      478 NEWCLOSURE                       R11 P7
      479 CAPTURE                          VAL R6
      480 CAPTURE                          VAL R10
      481 CAPTURE                          REF R2
      482 CAPTURE                          VAL R7
      483 SETTABLEKS                       R11 R5 K78 ["rgb"]
      485 NEWCLOSURE                       R11 P8
      486 CAPTURE                          VAL R6
      487 CAPTURE                          VAL R10
      488 CAPTURE                          REF R2
      489 CAPTURE                          VAL R8
      490 SETTABLEKS                       R11 R5 K79 ["bgRgb"]
      492 DUPCLOSURE                       R11 K80 [PROTO_11]
      493 CAPTURE                          VAL R10
      494 NEWCLOSURE                       R12 P10
      495 CAPTURE                          VAL R6
      496 CAPTURE                          VAL R10
      497 CAPTURE                          REF R2
      498 CAPTURE                          VAL R7
      499 SETTABLEKS                       R12 R5 K81 ["hex"]
      501 NEWCLOSURE                       R12 P11
      502 CAPTURE                          VAL R6
      503 CAPTURE                          VAL R10
      504 CAPTURE                          REF R2
      505 CAPTURE                          VAL R8
      506 SETTABLEKS                       R12 R5 K82 ["bgHex"]
      508 NEWCLOSURE                       R12 P12
      509 CAPTURE                          VAL R6
      510 CAPTURE                          REF R2
      511 CAPTURE                          VAL R7
      512 SETTABLEKS                       R12 R5 K83 ["ansi"]
      514 NEWCLOSURE                       R12 P13
      515 CAPTURE                          VAL R6
      516 CAPTURE                          REF R2
      517 CAPTURE                          VAL R8
      518 SETTABLEKS                       R12 R5 K84 ["bgAnsi"]
      520 NEWCLOSURE                       R12 P14
      521 CAPTURE                          VAL R6
      522 CAPTURE                          REF R2
      523 CAPTURE                          VAL R7
      524 SETTABLEKS                       R12 R5 K85 ["ansi256"]
      526 NEWCLOSURE                       R12 P15
      527 CAPTURE                          VAL R6
      528 CAPTURE                          REF R2
      529 CAPTURE                          VAL R8
      530 SETTABLEKS                       R12 R5 K86 ["bgAnsi256"]
      532 CLOSEUPVALS                      R2
      533 RETURN                           R5 1
