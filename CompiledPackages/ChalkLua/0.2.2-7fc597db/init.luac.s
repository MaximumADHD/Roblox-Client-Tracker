PROTO_0:
        0 GETIMPORT                        R3 K2 [string.find]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 LOADN                            R6 1
        5 LOADB                            R7 1
        6 CALL                             R3 4 1
        7 JUMPIFNOTEQKNIL                  R3 ; [+2]
        9 RETURN                           R0 1
       10 LENGTH                           R4 R1
       11 LOADN                            R5 1
       12 LOADK                            R6 K3 [""]
       13 MOVE                             R7 R6
       14 SUBK                             R14 R3 K4 [1]
       15 FASTCALL3                        STRING_SUB R0 R5 R14
       17 MOVE                             R12 R0
       18 MOVE                             R13 R5
       19 GETIMPORT                        R11 K6 [string.sub]
       21 CALL                             R11 3 1
       22 MOVE                             R8 R11
       23 MOVE                             R9 R1
       24 MOVE                             R10 R2
       25 CONCAT                           R6 R7 R10
       26 ADD                              R5 R3 R4
       27 GETIMPORT                        R7 K2 [string.find]
       29 MOVE                             R8 R0
       30 MOVE                             R9 R1
       31 MOVE                             R10 R5
       32 LOADB                            R11 1
       33 CALL                             R7 4 1
       34 MOVE                             R3 R7
       35 JUMPIFEQKNIL                     R3 ; [+2]
       37 JUMPBACK                         ; [-25]
       38 MOVE                             R7 R6
       39 FASTCALL2                        STRING_SUB R0 R5 ; [+5]
       41 MOVE                             R9 R0
       42 MOVE                             R10 R5
       43 GETIMPORT                        R8 K6 [string.sub]
       45 CALL                             R8 2 1
       46 CONCAT                           R6 R7 R8
       47 RETURN                           R6 1

PROTO_1:
        0 LOADN                            R4 1
        1 LOADK                            R5 K0 [""]
        2 SUBK                             R9 R3 K1 [1]
        3 SUBK                             R10 R3 K1 [1]
        4 FASTCALL3                        STRING_SUB R0 R9 R10
        6 MOVE                             R8 R0
        7 GETIMPORT                        R7 K4 [string.sub]
        9 CALL                             R7 3 1
       10 JUMPIFEQKS                       R7 K5 ["\r"] ; [+2]
       12 LOADB                            R6 0 +1
       13 LOADB                            R6 1
       14 MOVE                             R7 R5
       15 JUMPIFNOT                        R6 ; [+2]
       16 SUBK                             R15 R3 K6 [2]
       17 JUMP                             ; [+1]
       18 SUBK                             R15 R3 K1 [1]
       19 FASTCALL3                        STRING_SUB R0 R4 R15
       21 MOVE                             R13 R0
       22 MOVE                             R14 R4
       23 GETIMPORT                        R12 K4 [string.sub]
       25 CALL                             R12 3 1
       26 MOVE                             R8 R12
       27 MOVE                             R9 R1
       28 JUMPIFNOT                        R6 ; [+2]
       29 LOADK                            R10 K7 ["\r\n"]
       30 JUMP                             ; [+1]
       31 LOADK                            R10 K8 ["\n"]
       32 MOVE                             R11 R2
       33 CONCAT                           R5 R7 R11
       34 ADDK                             R4 R3 K1 [1]
       35 GETIMPORT                        R7 K10 [string.find]
       37 MOVE                             R8 R0
       38 LOADK                            R9 K8 ["\n"]
       39 MOVE                             R10 R4
       40 CALL                             R7 3 1
       41 MOVE                             R3 R7
       42 JUMPIFEQKNIL                     R3 ; [+2]
       44 JUMPBACK                         ; [-43]
       45 MOVE                             R6 R5
       46 FASTCALL2                        STRING_SUB R0 R4 ; [+5]
       48 MOVE                             R8 R0
       49 MOVE                             R9 R4
       50 GETIMPORT                        R7 K4 [string.sub]
       52 CALL                             R7 2 1
       53 CONCAT                           R5 R6 R7
       54 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R0 K0 ["open"]
        3 GETTABLEKS                       R5 R1 K0 ["open"]
        5 CONCAT                           R3 R4 R5
        6 GETTABLEKS                       R5 R1 K1 ["close"]
        8 GETTABLEKS                       R6 R0 K1 ["close"]
       10 CONCAT                           R4 R5 R6
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_3]
        3 CALL                             R0 1 1
        4 RETURN                           R0 1

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_8:
        0 DUPTABLE                         R2 K2 [{"open", "close"}]
        1 SETTABLEKS                       R0 R2 K0 ["open"]
        3 SETTABLEKS                       R1 R2 K1 ["close"]
        5 DUPTABLE                         R5 K5 [{"__call", "__concat"}]
        6 NEWCLOSURE                       R6 P0
        7 CAPTURE                          UPVAL U0
        8 SETTABLEKS                       R6 R5 K3 ["__call"]
       10 DUPCLOSURE                       R6 K6 [PROTO_7]
       11 CAPTURE                          UPVAL U1
       12 SETTABLEKS                       R6 R5 K4 ["__concat"]
       14 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       16 MOVE                             R4 R2
       17 GETIMPORT                        R3 K8 [setmetatable]
       19 CALL                             R3 2 0
       20 RETURN                           R2 1

PROTO_9:
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
       25 GETTABLEKS                       R2 R0 K8 ["open"]
       27 GETTABLEKS                       R3 R0 K9 ["close"]
       29 GETIMPORT                        R4 K11 [string.match]
       31 MOVE                             R5 R1
       32 LOADK                            R6 K12 ["\x"]
       33 CALL                             R4 2 1
       34 JUMPIFNOT                        R4 ; [+8]
       35 GETUPVAL                         R4 1
       36 MOVE                             R5 R1
       37 GETTABLEKS                       R6 R0 K9 ["close"]
       39 GETTABLEKS                       R7 R0 K8 ["open"]
       41 CALL                             R4 3 1
       42 MOVE                             R1 R4
       43 GETIMPORT                        R4 K14 [string.find]
       45 MOVE                             R5 R1
       46 LOADK                            R6 K15 ["\n"]
       47 CALL                             R4 2 1
       48 JUMPIFEQKNIL                     R4 ; [+8]
       50 GETUPVAL                         R5 2
       51 MOVE                             R6 R1
       52 MOVE                             R7 R3
       53 MOVE                             R8 R2
       54 MOVE                             R9 R4
       55 CALL                             R5 4 1
       56 MOVE                             R1 R5
       57 GETTABLEKS                       R6 R0 K8 ["open"]
       59 FASTCALL1                        TOSTRING R1 ; [+3]
       60 MOVE                             R10 R1
       61 GETIMPORT                        R9 K7 [tostring]
       63 CALL                             R9 1 1
       64 MOVE                             R7 R9
       65 GETTABLEKS                       R8 R0 K9 ["close"]
       67 CONCAT                           R5 R6 R8
       68 RETURN                           R5 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [""]
        2 LOADK                            R2 K0 [""]
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPTABLE                         R2 K5 [{"modifier", "color", "bgColor"}]
        4 DUPTABLE                         R3 K15 [{"reset", "bold", "dim", "italic", "underline", "overline", "inverse", "hidden", "strikethrough"}]
        5 NEWTABLE                         R4 0 2
        7 LOADN                            R5 0
        8 LOADN                            R6 0
        9 SETLIST                          R4 R5 2 [1]
       11 SETTABLEKS                       R4 R3 K6 ["reset"]
       13 NEWTABLE                         R4 0 2
       15 LOADN                            R5 1
       16 LOADN                            R6 22
       17 SETLIST                          R4 R5 2 [1]
       19 SETTABLEKS                       R4 R3 K7 ["bold"]
       21 NEWTABLE                         R4 0 2
       23 LOADN                            R5 2
       24 LOADN                            R6 22
       25 SETLIST                          R4 R5 2 [1]
       27 SETTABLEKS                       R4 R3 K8 ["dim"]
       29 NEWTABLE                         R4 0 2
       31 LOADN                            R5 3
       32 LOADN                            R6 23
       33 SETLIST                          R4 R5 2 [1]
       35 SETTABLEKS                       R4 R3 K9 ["italic"]
       37 NEWTABLE                         R4 0 2
       39 LOADN                            R5 4
       40 LOADN                            R6 24
       41 SETLIST                          R4 R5 2 [1]
       43 SETTABLEKS                       R4 R3 K10 ["underline"]
       45 NEWTABLE                         R4 0 2
       47 LOADN                            R5 53
       48 LOADN                            R6 55
       49 SETLIST                          R4 R5 2 [1]
       51 SETTABLEKS                       R4 R3 K11 ["overline"]
       53 NEWTABLE                         R4 0 2
       55 LOADN                            R5 7
       56 LOADN                            R6 27
       57 SETLIST                          R4 R5 2 [1]
       59 SETTABLEKS                       R4 R3 K12 ["inverse"]
       61 NEWTABLE                         R4 0 2
       63 LOADN                            R5 8
       64 LOADN                            R6 28
       65 SETLIST                          R4 R5 2 [1]
       67 SETTABLEKS                       R4 R3 K13 ["hidden"]
       69 NEWTABLE                         R4 0 2
       71 LOADN                            R5 9
       72 LOADN                            R6 29
       73 SETLIST                          R4 R5 2 [1]
       75 SETTABLEKS                       R4 R3 K14 ["strikethrough"]
       77 SETTABLEKS                       R3 R2 K2 ["modifier"]
       79 DUPTABLE                         R3 K34 [{"black", "red", "green", "yellow", "blue", "magenta", "cyan", "white", "blackBright", "gray", "grey", "redBright", "greenBright", "yellowBright", "blueBright", "magentaBright", "cyanBright", "whiteBright"}]
       80 NEWTABLE                         R4 0 2
       82 LOADN                            R5 30
       83 LOADN                            R6 39
       84 SETLIST                          R4 R5 2 [1]
       86 SETTABLEKS                       R4 R3 K16 ["black"]
       88 NEWTABLE                         R4 0 2
       90 LOADN                            R5 31
       91 LOADN                            R6 39
       92 SETLIST                          R4 R5 2 [1]
       94 SETTABLEKS                       R4 R3 K17 ["red"]
       96 NEWTABLE                         R4 0 2
       98 LOADN                            R5 32
       99 LOADN                            R6 39
      100 SETLIST                          R4 R5 2 [1]
      102 SETTABLEKS                       R4 R3 K18 ["green"]
      104 NEWTABLE                         R4 0 2
      106 LOADN                            R5 33
      107 LOADN                            R6 39
      108 SETLIST                          R4 R5 2 [1]
      110 SETTABLEKS                       R4 R3 K19 ["yellow"]
      112 NEWTABLE                         R4 0 2
      114 LOADN                            R5 34
      115 LOADN                            R6 39
      116 SETLIST                          R4 R5 2 [1]
      118 SETTABLEKS                       R4 R3 K20 ["blue"]
      120 NEWTABLE                         R4 0 2
      122 LOADN                            R5 35
      123 LOADN                            R6 39
      124 SETLIST                          R4 R5 2 [1]
      126 SETTABLEKS                       R4 R3 K21 ["magenta"]
      128 NEWTABLE                         R4 0 2
      130 LOADN                            R5 36
      131 LOADN                            R6 39
      132 SETLIST                          R4 R5 2 [1]
      134 SETTABLEKS                       R4 R3 K22 ["cyan"]
      136 NEWTABLE                         R4 0 2
      138 LOADN                            R5 37
      139 LOADN                            R6 39
      140 SETLIST                          R4 R5 2 [1]
      142 SETTABLEKS                       R4 R3 K23 ["white"]
      144 NEWTABLE                         R4 0 2
      146 LOADN                            R5 90
      147 LOADN                            R6 39
      148 SETLIST                          R4 R5 2 [1]
      150 SETTABLEKS                       R4 R3 K24 ["blackBright"]
      152 NEWTABLE                         R4 0 2
      154 LOADN                            R5 90
      155 LOADN                            R6 39
      156 SETLIST                          R4 R5 2 [1]
      158 SETTABLEKS                       R4 R3 K25 ["gray"]
      160 NEWTABLE                         R4 0 2
      162 LOADN                            R5 90
      163 LOADN                            R6 39
      164 SETLIST                          R4 R5 2 [1]
      166 SETTABLEKS                       R4 R3 K26 ["grey"]
      168 NEWTABLE                         R4 0 2
      170 LOADN                            R5 91
      171 LOADN                            R6 39
      172 SETLIST                          R4 R5 2 [1]
      174 SETTABLEKS                       R4 R3 K27 ["redBright"]
      176 NEWTABLE                         R4 0 2
      178 LOADN                            R5 92
      179 LOADN                            R6 39
      180 SETLIST                          R4 R5 2 [1]
      182 SETTABLEKS                       R4 R3 K28 ["greenBright"]
      184 NEWTABLE                         R4 0 2
      186 LOADN                            R5 93
      187 LOADN                            R6 39
      188 SETLIST                          R4 R5 2 [1]
      190 SETTABLEKS                       R4 R3 K29 ["yellowBright"]
      192 NEWTABLE                         R4 0 2
      194 LOADN                            R5 94
      195 LOADN                            R6 39
      196 SETLIST                          R4 R5 2 [1]
      198 SETTABLEKS                       R4 R3 K30 ["blueBright"]
      200 NEWTABLE                         R4 0 2
      202 LOADN                            R5 95
      203 LOADN                            R6 39
      204 SETLIST                          R4 R5 2 [1]
      206 SETTABLEKS                       R4 R3 K31 ["magentaBright"]
      208 NEWTABLE                         R4 0 2
      210 LOADN                            R5 96
      211 LOADN                            R6 39
      212 SETLIST                          R4 R5 2 [1]
      214 SETTABLEKS                       R4 R3 K32 ["cyanBright"]
      216 NEWTABLE                         R4 0 2
      218 LOADN                            R5 97
      219 LOADN                            R6 39
      220 SETLIST                          R4 R5 2 [1]
      222 SETTABLEKS                       R4 R3 K33 ["whiteBright"]
      224 SETTABLEKS                       R3 R2 K3 ["color"]
      226 DUPTABLE                         R3 K53 [{"bgBlack", "bgRed", "bgGreen", "bgYellow", "bgBlue", "bgMagenta", "bgCyan", "bgWhite", "bgBlackBright", "bgGray", "bgGrey", "bgRedBright", "bgGreenBright", "bgYellowBright", "bgBlueBright", "bgMagentaBright", "bgCyanBright", "bgWhiteBright"}]
      227 NEWTABLE                         R4 0 2
      229 LOADN                            R5 40
      230 LOADN                            R6 49
      231 SETLIST                          R4 R5 2 [1]
      233 SETTABLEKS                       R4 R3 K35 ["bgBlack"]
      235 NEWTABLE                         R4 0 2
      237 LOADN                            R5 41
      238 LOADN                            R6 49
      239 SETLIST                          R4 R5 2 [1]
      241 SETTABLEKS                       R4 R3 K36 ["bgRed"]
      243 NEWTABLE                         R4 0 2
      245 LOADN                            R5 42
      246 LOADN                            R6 49
      247 SETLIST                          R4 R5 2 [1]
      249 SETTABLEKS                       R4 R3 K37 ["bgGreen"]
      251 NEWTABLE                         R4 0 2
      253 LOADN                            R5 43
      254 LOADN                            R6 49
      255 SETLIST                          R4 R5 2 [1]
      257 SETTABLEKS                       R4 R3 K38 ["bgYellow"]
      259 NEWTABLE                         R4 0 2
      261 LOADN                            R5 44
      262 LOADN                            R6 49
      263 SETLIST                          R4 R5 2 [1]
      265 SETTABLEKS                       R4 R3 K39 ["bgBlue"]
      267 NEWTABLE                         R4 0 2
      269 LOADN                            R5 45
      270 LOADN                            R6 49
      271 SETLIST                          R4 R5 2 [1]
      273 SETTABLEKS                       R4 R3 K40 ["bgMagenta"]
      275 NEWTABLE                         R4 0 2
      277 LOADN                            R5 46
      278 LOADN                            R6 49
      279 SETLIST                          R4 R5 2 [1]
      281 SETTABLEKS                       R4 R3 K41 ["bgCyan"]
      283 NEWTABLE                         R4 0 2
      285 LOADN                            R5 47
      286 LOADN                            R6 49
      287 SETLIST                          R4 R5 2 [1]
      289 SETTABLEKS                       R4 R3 K42 ["bgWhite"]
      291 NEWTABLE                         R4 0 2
      293 LOADN                            R5 100
      294 LOADN                            R6 49
      295 SETLIST                          R4 R5 2 [1]
      297 SETTABLEKS                       R4 R3 K43 ["bgBlackBright"]
      299 NEWTABLE                         R4 0 2
      301 LOADN                            R5 100
      302 LOADN                            R6 49
      303 SETLIST                          R4 R5 2 [1]
      305 SETTABLEKS                       R4 R3 K44 ["bgGray"]
      307 NEWTABLE                         R4 0 2
      309 LOADN                            R5 100
      310 LOADN                            R6 49
      311 SETLIST                          R4 R5 2 [1]
      313 SETTABLEKS                       R4 R3 K45 ["bgGrey"]
      315 NEWTABLE                         R4 0 2
      317 LOADN                            R5 101
      318 LOADN                            R6 49
      319 SETLIST                          R4 R5 2 [1]
      321 SETTABLEKS                       R4 R3 K46 ["bgRedBright"]
      323 NEWTABLE                         R4 0 2
      325 LOADN                            R5 102
      326 LOADN                            R6 49
      327 SETLIST                          R4 R5 2 [1]
      329 SETTABLEKS                       R4 R3 K47 ["bgGreenBright"]
      331 NEWTABLE                         R4 0 2
      333 LOADN                            R5 103
      334 LOADN                            R6 49
      335 SETLIST                          R4 R5 2 [1]
      337 SETTABLEKS                       R4 R3 K48 ["bgYellowBright"]
      339 NEWTABLE                         R4 0 2
      341 LOADN                            R5 104
      342 LOADN                            R6 49
      343 SETLIST                          R4 R5 2 [1]
      345 SETTABLEKS                       R4 R3 K49 ["bgBlueBright"]
      347 NEWTABLE                         R4 0 2
      349 LOADN                            R5 105
      350 LOADN                            R6 49
      351 SETLIST                          R4 R5 2 [1]
      353 SETTABLEKS                       R4 R3 K50 ["bgMagentaBright"]
      355 NEWTABLE                         R4 0 2
      357 LOADN                            R5 106
      358 LOADN                            R6 49
      359 SETLIST                          R4 R5 2 [1]
      361 SETTABLEKS                       R4 R3 K51 ["bgCyanBright"]
      363 NEWTABLE                         R4 0 2
      365 LOADN                            R5 107
      366 LOADN                            R6 49
      367 SETLIST                          R4 R5 2 [1]
      369 SETTABLEKS                       R4 R3 K52 ["bgWhiteBright"]
      371 SETTABLEKS                       R3 R2 K4 ["bgColor"]
      373 NEWTABLE                         R3 0 0
      375 GETIMPORT                        R4 K55 [pairs]
      377 MOVE                             R5 R2
      378 CALL                             R4 1 3
      379 FORGPREP_NEXT                    R4
      380 GETIMPORT                        R9 K55 [pairs]
      382 MOVE                             R10 R8
      383 CALL                             R9 1 3
      384 FORGPREP_NEXT                    R9
      385 DUPTABLE                         R14 K58 [{"open", "close"}]
      386 GETIMPORT                        R15 K61 [string.format]
      388 LOADK                            R16 K62 ["%c[%dm"]
      389 LOADN                            R17 27
      390 GETTABLEN                        R18 R13 1
      391 CALL                             R15 3 1
      392 SETTABLEKS                       R15 R14 K56 ["open"]
      394 GETIMPORT                        R15 K61 [string.format]
      396 LOADK                            R16 K62 ["%c[%dm"]
      397 LOADN                            R17 27
      398 GETTABLEN                        R18 R13 2
      399 CALL                             R15 3 1
      400 SETTABLEKS                       R15 R14 K57 ["close"]
      402 SETTABLE                         R14 R3 R12
      403 FORGLOOP                         R9 2 ; [-19]
      405 FORGLOOP                         R4 2 ; [-26]
      407 LOADNIL                          R4
      408 LOADNIL                          R5
      409 NEWCLOSURE                       R6 P2
      410 CAPTURE                          REF R4
      411 DUPCLOSURE                       R7 K63 [PROTO_4]
      412 DUPTABLE                         R8 K66 [{["level"] = 2}]
      413 GETIMPORT                        R9 K68 [_G]
      415 GETTABLEKS                       R9 R9 K69 ["NOCOLOR"]
      417 JUMPIF                           R9 ; [+6]
      418 GETIMPORT                        R10 K71 [pcall]
      420 DUPCLOSURE                       R11 K72 [PROTO_3]
      421 CALL                             R10 1 1
      422 MOVE                             R9 R10
      423 JUMPIF                           R9 ; [+3]
      424 LOADN                            R9 0
      425 SETTABLEKS                       R9 R8 K64 ["level"]
      427 DUPTABLE                         R11 K74 [{"__call"}]
      428 DUPCLOSURE                       R12 K75 [PROTO_5]
      429 SETTABLEKS                       R12 R11 K73 ["__call"]
      431 FASTCALL2                        SETMETATABLE R8 R11 ; [+4]
      433 MOVE                             R10 R8
      434 GETIMPORT                        R9 K77 [setmetatable]
      436 CALL                             R9 2 0
      437 NEWCLOSURE                       R4 P6
      438 CAPTURE                          REF R5
      439 CAPTURE                          VAL R6
      440 DUPCLOSURE                       R5 K78 [PROTO_9]
      441 CAPTURE                          VAL R8
      442 CAPTURE                          VAL R0
      443 CAPTURE                          VAL R1
      444 NEWCLOSURE                       R9 P8
      445 CAPTURE                          REF R4
      446 GETIMPORT                        R10 K61 [string.format]
      448 LOADK                            R11 K62 ["%c[%dm"]
      449 LOADN                            R12 27
      450 LOADN                            R13 39
      451 CALL                             R10 3 1
      452 GETIMPORT                        R11 K61 [string.format]
      454 LOADK                            R12 K62 ["%c[%dm"]
      455 LOADN                            R13 27
      456 LOADN                            R14 49
      457 CALL                             R11 3 1
      458 GETIMPORT                        R12 K61 [string.format]
      460 LOADK                            R13 K62 ["%c[%dm"]
      461 LOADN                            R14 27
      462 LOADN                            R15 0
      463 CALL                             R12 3 1
      464 GETIMPORT                        R13 K55 [pairs]
      466 MOVE                             R14 R3
      467 CALL                             R13 1 3
      468 FORGPREP_NEXT                    R13
      469 MOVE                             R18 R4
      470 GETTABLEKS                       R19 R17 K56 ["open"]
      472 GETTABLEKS                       R20 R17 K57 ["close"]
      474 CALL                             R18 2 1
      475 SETTABLE                         R18 R8 R16
      476 FORGLOOP                         R13 2 ; [-8]
      478 MOVE                             R13 R4
      479 MOVE                             R14 R12
      480 MOVE                             R15 R12
      481 CALL                             R13 2 1
      482 SETTABLEKS                       R13 R8 K6 ["reset"]
      484 DUPCLOSURE                       R13 K79 [PROTO_11]
      485 NEWCLOSURE                       R14 P10
      486 CAPTURE                          VAL R9
      487 CAPTURE                          VAL R13
      488 CAPTURE                          REF R4
      489 CAPTURE                          VAL R10
      490 SETTABLEKS                       R14 R8 K80 ["rgb"]
      492 NEWCLOSURE                       R14 P11
      493 CAPTURE                          VAL R9
      494 CAPTURE                          VAL R13
      495 CAPTURE                          REF R4
      496 CAPTURE                          VAL R11
      497 SETTABLEKS                       R14 R8 K81 ["bgRgb"]
      499 DUPCLOSURE                       R14 K82 [PROTO_14]
      500 CAPTURE                          VAL R13
      501 NEWCLOSURE                       R15 P13
      502 CAPTURE                          VAL R9
      503 CAPTURE                          VAL R13
      504 CAPTURE                          REF R4
      505 CAPTURE                          VAL R10
      506 SETTABLEKS                       R15 R8 K83 ["hex"]
      508 NEWCLOSURE                       R15 P14
      509 CAPTURE                          VAL R9
      510 CAPTURE                          VAL R13
      511 CAPTURE                          REF R4
      512 CAPTURE                          VAL R11
      513 SETTABLEKS                       R15 R8 K84 ["bgHex"]
      515 NEWCLOSURE                       R15 P15
      516 CAPTURE                          VAL R9
      517 CAPTURE                          REF R4
      518 CAPTURE                          VAL R10
      519 SETTABLEKS                       R15 R8 K85 ["ansi"]
      521 NEWCLOSURE                       R15 P16
      522 CAPTURE                          VAL R9
      523 CAPTURE                          REF R4
      524 CAPTURE                          VAL R11
      525 SETTABLEKS                       R15 R8 K86 ["bgAnsi"]
      527 NEWCLOSURE                       R15 P17
      528 CAPTURE                          VAL R9
      529 CAPTURE                          REF R4
      530 CAPTURE                          VAL R10
      531 SETTABLEKS                       R15 R8 K87 ["ansi256"]
      533 NEWCLOSURE                       R15 P18
      534 CAPTURE                          VAL R9
      535 CAPTURE                          REF R4
      536 CAPTURE                          VAL R11
      537 SETTABLEKS                       R15 R8 K88 ["bgAnsi256"]
      539 CLOSEUPVALS                      R4
      540 RETURN                           R8 1
