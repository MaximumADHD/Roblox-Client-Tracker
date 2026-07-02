PROTO_0:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+20]
        8 LOADB                            R1 0
        9 GETTABLEKS                       R3 R0 K3 ["Color3"]
       11 FASTCALL1                        TYPEOF R3 ; [+2]
       12 GETIMPORT                        R2 K5 [typeof]
       14 CALL                             R2 1 1
       15 JUMPIFNOTEQKS                    R2 K3 ["Color3"] ; [+11]
       17 GETTABLEKS                       R3 R0 K6 ["Transparency"]
       19 FASTCALL1                        TYPEOF R3 ; [+2]
       20 GETIMPORT                        R2 K5 [typeof]
       22 CALL                             R2 1 1
       23 JUMPIFEQKS                       R2 K7 ["number"] ; [+2]
       25 LOADB                            R1 0 +1
       26 LOADB                            R1 1
       27 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+5]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["None"]
        5 RETURN                           R1 1
        6 FASTCALL1                        TYPE R0 ; [+3]
        7 MOVE                             R2 R0
        8 GETIMPORT                        R1 K2 [type]
       10 CALL                             R1 1 1
       11 JUMPIFNOTEQKS                    R1 K3 ["string"] ; [+5]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K4 ["Path"]
       16 RETURN                           R1 1
       17 LOADB                            R1 0
       18 FASTCALL1                        TYPE R0 ; [+3]
       19 MOVE                             R3 R0
       20 GETIMPORT                        R2 K2 [type]
       22 CALL                             R2 1 1
       23 JUMPIFNOTEQKS                    R2 K5 ["table"] ; [+20]
       25 LOADB                            R1 0
       26 GETTABLEKS                       R3 R0 K6 ["Color3"]
       28 FASTCALL1                        TYPEOF R3 ; [+2]
       29 GETIMPORT                        R2 K8 [typeof]
       31 CALL                             R2 1 1
       32 JUMPIFNOTEQKS                    R2 K6 ["Color3"] ; [+11]
       34 GETTABLEKS                       R3 R0 K9 ["Transparency"]
       36 FASTCALL1                        TYPEOF R3 ; [+2]
       37 GETIMPORT                        R2 K8 [typeof]
       39 CALL                             R2 1 1
       40 JUMPIFEQKS                       R2 K10 ["number"] ; [+2]
       42 LOADB                            R1 0 +1
       43 LOADB                            R1 1
       44 JUMPIFNOT                        R1 ; [+4]
       45 GETUPVAL                         R1 0
       46 GETTABLEKS                       R1 R1 K11 ["Custom"]
       48 RETURN                           R1 1
       49 GETUPVAL                         R1 0
       50 GETTABLEKS                       R1 R1 K0 ["None"]
       52 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 1
        2 LOADK                            R2 K0 ["Surface"]
        3 SETLIST                          R1 R2 1 [1]
        5 JUMPIFNOT                        R0 ; [+24]
        6 GETTABLEKS                       R2 R0 K1 ["Color"]
        8 JUMPIFNOT                        R2 ; [+21]
        9 GETTABLEKS                       R2 R0 K1 ["Color"]
       11 GETTABLEKS                       R2 R2 K2 ["Extended"]
       13 JUMPIFNOT                        R2 ; [+16]
       14 GETTABLEKS                       R2 R0 K1 ["Color"]
       16 GETTABLEKS                       R2 R2 K2 ["Extended"]
       18 LOADNIL                          R3
       19 LOADNIL                          R4
       20 FORGPREP                         R2
       21 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       23 MOVE                             R8 R1
       24 MOVE                             R9 R5
       25 GETIMPORT                        R7 K5 [table.insert]
       27 CALL                             R7 2 0
       28 FORGLOOP                         R2 1 ; [-8]
       30 GETIMPORT                        R2 K7 [table.sort]
       32 MOVE                             R3 R1
       33 CALL                             R2 1 0
       34 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["key"]
        2 GETTABLEKS                       R4 R1 K0 ["key"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETTABLEKS                       R3 R0 K0 ["Color"]
        5 JUMPIF                           R3 ; [+1]
        6 RETURN                           R2 1
        7 JUMPIFNOTEQKS                    R1 K1 ["Surface"] ; [+33]
        9 GETTABLEKS                       R3 R0 K0 ["Color"]
       11 GETTABLEKS                       R3 R3 K1 ["Surface"]
       13 JUMPIFNOT                        R3 ; [+62]
       14 GETTABLEKS                       R3 R0 K0 ["Color"]
       16 GETTABLEKS                       R3 R3 K1 ["Surface"]
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 FORGPREP                         R3
       21 DUPTABLE                         R10 K4 [{"key", "path"}]
       22 SETTABLEKS                       R6 R10 K2 ["key"]
       24 LOADK                            R12 K5 ["Color.Surface.%*"]
       25 MOVE                             R14 R6
       26 NAMECALL                         R12 R12 K6 ["format"]
       28 CALL                             R12 2 1
       29 MOVE                             R11 R12
       30 SETTABLEKS                       R11 R10 K3 ["path"]
       32 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       34 MOVE                             R9 R2
       35 GETIMPORT                        R8 K9 [table.insert]
       37 CALL                             R8 2 0
       38 FORGLOOP                         R3 1 ; [-18]
       40 JUMP                             ; [+35]
       41 GETTABLEKS                       R3 R0 K0 ["Color"]
       43 GETTABLEKS                       R3 R3 K10 ["Extended"]
       45 JUMPIFNOT                        R3 ; [+5]
       46 GETTABLEKS                       R4 R0 K0 ["Color"]
       48 GETTABLEKS                       R4 R4 K10 ["Extended"]
       50 GETTABLE                         R3 R4 R1
       51 JUMPIFNOT                        R3 ; [+24]
       52 MOVE                             R4 R3
       53 LOADNIL                          R5
       54 LOADNIL                          R6
       55 FORGPREP                         R4
       56 DUPTABLE                         R11 K4 [{"key", "path"}]
       57 SETTABLEKS                       R7 R11 K2 ["key"]
       59 LOADK                            R13 K11 ["Color.Extended.%*.%*"]
       60 MOVE                             R15 R1
       61 MOVE                             R16 R7
       62 NAMECALL                         R13 R13 K6 ["format"]
       64 CALL                             R13 3 1
       65 MOVE                             R12 R13
       66 SETTABLEKS                       R12 R11 K3 ["path"]
       68 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       70 MOVE                             R10 R2
       71 GETIMPORT                        R9 K9 [table.insert]
       73 CALL                             R9 2 0
       74 FORGLOOP                         R4 1 ; [-19]
       76 GETIMPORT                        R3 K13 [table.sort]
       78 MOVE                             R4 R2
       79 DUPCLOSURE                       R5 K14 [PROTO_3]
       80 CALL                             R3 2 0
       81 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["key"]
        2 GETTABLEKS                       R4 R1 K0 ["key"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_6:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETTABLEKS                       R3 R0 K0 ["Color"]
        5 JUMPIF                           R3 ; [+1]
        6 RETURN                           R2 1
        7 GETTABLEKS                       R4 R0 K0 ["Color"]
        9 GETTABLE                         R3 R4 R1
       10 JUMPIFNOT                        R3 ; [+24]
       11 MOVE                             R4 R3
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 DUPTABLE                         R11 K3 [{"key", "path"}]
       16 SETTABLEKS                       R7 R11 K1 ["key"]
       18 LOADK                            R13 K4 ["Color.%*.%*"]
       19 MOVE                             R15 R1
       20 MOVE                             R16 R7
       21 NAMECALL                         R13 R13 K5 ["format"]
       23 CALL                             R13 3 1
       24 MOVE                             R12 R13
       25 SETTABLEKS                       R12 R11 K2 ["path"]
       27 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       29 MOVE                             R10 R2
       30 GETIMPORT                        R9 K8 [table.insert]
       32 CALL                             R9 2 0
       33 FORGLOOP                         R4 1 ; [-19]
       35 GETIMPORT                        R4 K10 [table.sort]
       37 MOVE                             R5 R2
       38 DUPCLOSURE                       R6 K11 [PROTO_5]
       39 CALL                             R4 2 0
       40 RETURN                           R2 1

PROTO_7:
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["Color.Surface."]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADK                            R1 K4 ["Surface"]
        7 RETURN                           R1 1
        8 GETIMPORT                        R1 K6 [string.match]
       10 MOVE                             R2 R0
       11 LOADK                            R3 K7 ["Color%.Extended%.([^.]+)%."]
       12 CALL                             R1 2 1
       13 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getTokenValue"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 LOADB                            R3 0
        7 FASTCALL1                        TYPE R2 ; [+3]
        8 MOVE                             R5 R2
        9 GETIMPORT                        R4 K2 [type]
       11 CALL                             R4 1 1
       12 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+20]
       14 LOADB                            R3 0
       15 GETTABLEKS                       R5 R2 K4 ["Color3"]
       17 FASTCALL1                        TYPEOF R5 ; [+2]
       18 GETIMPORT                        R4 K6 [typeof]
       20 CALL                             R4 1 1
       21 JUMPIFNOTEQKS                    R4 K4 ["Color3"] ; [+11]
       23 GETTABLEKS                       R5 R2 K7 ["Transparency"]
       25 FASTCALL1                        TYPEOF R5 ; [+2]
       26 GETIMPORT                        R4 K6 [typeof]
       28 CALL                             R4 1 1
       29 JUMPIFEQKS                       R4 K8 ["number"] ; [+2]
       31 LOADB                            R3 0 +1
       32 LOADB                            R3 1
       33 JUMPIFNOT                        R3 ; [+10]
       34 DUPTABLE                         R3 K9 [{"Color3", "Transparency"}]
       35 GETTABLEKS                       R4 R2 K4 ["Color3"]
       37 SETTABLEKS                       R4 R3 K4 ["Color3"]
       39 GETTABLEKS                       R4 R2 K7 ["Transparency"]
       41 SETTABLEKS                       R4 R3 K7 ["Transparency"]
       43 RETURN                           R3 1
       44 GETTABLEKS                       R3 R0 K10 ["Color"]
       46 GETTABLEKS                       R3 R3 K11 ["Extended"]
       48 GETTABLEKS                       R3 R3 K12 ["Magenta"]
       50 GETTABLEKS                       R3 R3 K13 ["Magenta_700"]
       52 DUPTABLE                         R4 K9 [{"Color3", "Transparency"}]
       53 GETTABLEKS                       R5 R3 K4 ["Color3"]
       55 SETTABLEKS                       R5 R4 K4 ["Color3"]
       57 GETTABLEKS                       R5 R3 K7 ["Transparency"]
       59 SETTABLEKS                       R5 R4 K7 ["Transparency"]
       61 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Path"]
        3 JUMPIFEQ                         R0 R1 ; [+6]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["None"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+2]
       10 RETURN                           R0 1
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K1 ["None"]
       14 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["currentOverride"]
        3 JUMPIFEQKNIL                     R0 ; [+91]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["currentOverride"]
        9 JUMPIFNOTEQKNIL                  R2 ; [+5]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K1 ["None"]
       14 JUMP                             ; [+46]
       15 FASTCALL1                        TYPE R2 ; [+3]
       16 MOVE                             R4 R2
       17 GETIMPORT                        R3 K3 [type]
       19 CALL                             R3 1 1
       20 JUMPIFNOTEQKS                    R3 K4 ["string"] ; [+5]
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R1 R1 K5 ["Path"]
       25 JUMP                             ; [+35]
       26 LOADB                            R3 0
       27 FASTCALL1                        TYPE R2 ; [+3]
       28 MOVE                             R5 R2
       29 GETIMPORT                        R4 K3 [type]
       31 CALL                             R4 1 1
       32 JUMPIFNOTEQKS                    R4 K6 ["table"] ; [+20]
       34 LOADB                            R3 0
       35 GETTABLEKS                       R5 R2 K7 ["Color3"]
       37 FASTCALL1                        TYPEOF R5 ; [+2]
       38 GETIMPORT                        R4 K9 [typeof]
       40 CALL                             R4 1 1
       41 JUMPIFNOTEQKS                    R4 K7 ["Color3"] ; [+11]
       43 GETTABLEKS                       R5 R2 K10 ["Transparency"]
       45 FASTCALL1                        TYPEOF R5 ; [+2]
       46 GETIMPORT                        R4 K9 [typeof]
       48 CALL                             R4 1 1
       49 JUMPIFEQKS                       R4 K11 ["number"] ; [+2]
       51 LOADB                            R3 0 +1
       52 LOADB                            R3 1
       53 JUMPIFNOT                        R3 ; [+4]
       54 GETUPVAL                         R1 2
       55 GETTABLEKS                       R1 R1 K12 ["Custom"]
       57 JUMP                             ; [+3]
       58 GETUPVAL                         R1 2
       59 GETTABLEKS                       R1 R1 K1 ["None"]
       61 CALL                             R0 1 0
       62 GETUPVAL                         R1 0
       63 GETTABLEKS                       R1 R1 K0 ["currentOverride"]
       65 FASTCALL1                        TYPE R1 ; [+2]
       66 GETIMPORT                        R0 K3 [type]
       68 CALL                             R0 1 1
       69 JUMPIFNOTEQKS                    R0 K4 ["string"] ; [+21]
       71 GETUPVAL                         R0 3
       72 GETUPVAL                         R2 0
       73 GETTABLEKS                       R2 R2 K0 ["currentOverride"]
       75 GETIMPORT                        R3 K14 [string.find]
       77 MOVE                             R4 R2
       78 LOADK                            R5 K15 ["Color.Surface."]
       79 CALL                             R3 2 1
       80 JUMPIFNOT                        R3 ; [+2]
       81 LOADK                            R1 K16 ["Surface"]
       82 JUMP                             ; [+6]
       83 GETIMPORT                        R3 K18 [string.match]
       85 MOVE                             R4 R2
       86 LOADK                            R5 K19 ["Color%.Extended%.([^.]+)%."]
       87 CALL                             R3 2 1
       88 MOVE                             R1 R3
       89 CALL                             R0 1 0
       90 RETURN                           R0 0
       91 GETUPVAL                         R0 3
       92 LOADNIL                          R1
       93 CALL                             R0 1 0
       94 RETURN                           R0 0
       95 GETUPVAL                         R0 1
       96 DUPCLOSURE                       R1 K20 [PROTO_9]
       97 CAPTURE                          UPVAL U2
       98 CALL                             R0 1 0
       99 GETUPVAL                         R0 3
      100 LOADNIL                          R1
      101 CALL                             R0 1 0
      102 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Custom"]
        4 JUMPIFEQ                         R0 R1 ; [+4]
        6 GETUPVAL                         R0 2
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["Color3"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["alpha"]
       10 RETURN                           R0 2
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K2 ["currentOverride"]
       14 LOADB                            R0 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R3 R1
       17 GETIMPORT                        R2 K4 [type]
       19 CALL                             R2 1 1
       20 JUMPIFNOTEQKS                    R2 K5 ["table"] ; [+20]
       22 LOADB                            R0 0
       23 GETTABLEKS                       R3 R1 K0 ["Color3"]
       25 FASTCALL1                        TYPEOF R3 ; [+2]
       26 GETIMPORT                        R2 K7 [typeof]
       28 CALL                             R2 1 1
       29 JUMPIFNOTEQKS                    R2 K0 ["Color3"] ; [+11]
       31 GETTABLEKS                       R3 R1 K8 ["Transparency"]
       33 FASTCALL1                        TYPEOF R3 ; [+2]
       34 GETIMPORT                        R2 K7 [typeof]
       36 CALL                             R2 1 1
       37 JUMPIFEQKS                       R2 K9 ["number"] ; [+2]
       39 LOADB                            R0 0 +1
       40 LOADB                            R0 1
       41 JUMPIFNOT                        R0 ; [+9]
       42 GETUPVAL                         R0 2
       43 GETTABLEKS                       R0 R0 K2 ["currentOverride"]
       45 GETTABLEKS                       R1 R0 K0 ["Color3"]
       47 GETTABLEKS                       R3 R0 K8 ["Transparency"]
       49 SUBRK                            R2 K10 [1] R3
       50 RETURN                           R1 2
       51 GETUPVAL                         R0 3
       52 GETTABLEKS                       R0 R0 K11 ["Color"]
       54 GETTABLEKS                       R0 R0 K12 ["Extended"]
       56 GETTABLEKS                       R0 R0 K13 ["Magenta"]
       58 GETTABLEKS                       R0 R0 K14 ["Magenta_700"]
       60 GETTABLEKS                       R0 R0 K0 ["Color3"]
       62 LOADN                            R1 1
       63 RETURN                           R0 2

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["R"]
        3 MULK                             R1 R2 K0 [255]
        4 FASTCALL1                        MATH_FLOOR R1 ; [+2]
        5 GETIMPORT                        R0 K4 [math.floor]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K5 ["G"]
       11 MULK                             R2 R3 K0 [255]
       12 FASTCALL1                        MATH_FLOOR R2 ; [+2]
       13 GETIMPORT                        R1 K4 [math.floor]
       15 CALL                             R1 1 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K6 ["B"]
       19 MULK                             R3 R4 K0 [255]
       20 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       21 GETIMPORT                        R2 K4 [math.floor]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [string.format]
       26 LOADK                            R4 K10 ["#%02X%02X%02X"]
       27 MOVE                             R5 R0
       28 MOVE                             R6 R1
       29 MOVE                             R7 R2
       30 CALL                             R3 4 -1
       31 RETURN                           R3 -1

PROTO_14:
        0 DUPTABLE                         R1 K2 [{"id", "text"}]
        1 SETTABLEKS                       R0 R1 K0 ["id"]
        3 SETTABLEKS                       R0 R1 K1 ["text"]
        5 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["None"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+15]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["None"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 2
       11 LOADNIL                          R2
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R1 R1 K1 ["onChanged"]
       16 LOADNIL                          R2
       17 CALL                             R1 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K2 ["Path"]
       22 JUMPIFNOTEQ                      R0 R1 ; [+24]
       24 GETUPVAL                         R1 1
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K2 ["Path"]
       28 CALL                             R1 1 0
       29 GETUPVAL                         R1 2
       30 LOADNIL                          R2
       31 CALL                             R1 1 0
       32 GETUPVAL                         R2 3
       33 GETTABLEKS                       R2 R2 K3 ["currentOverride"]
       35 FASTCALL1                        TYPE R2 ; [+2]
       36 GETIMPORT                        R1 K5 [type]
       38 CALL                             R1 1 1
       39 JUMPIFEQKS                       R1 K6 ["string"] ; [+27]
       41 GETUPVAL                         R1 3
       42 GETTABLEKS                       R1 R1 K1 ["onChanged"]
       44 LOADNIL                          R2
       45 CALL                             R1 1 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R1 1
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R2 R2 K7 ["Custom"]
       51 CALL                             R1 1 0
       52 GETUPVAL                         R1 2
       53 LOADNIL                          R2
       54 CALL                             R1 1 0
       55 GETUPVAL                         R1 3
       56 GETTABLEKS                       R1 R1 K1 ["onChanged"]
       58 GETUPVAL                         R2 4
       59 GETUPVAL                         R3 3
       60 GETTABLEKS                       R3 R3 K8 ["tokens"]
       62 GETUPVAL                         R4 3
       63 GETTABLEKS                       R4 R4 K9 ["tokenPath"]
       65 CALL                             R2 2 1
       66 CALL                             R1 1 0
       67 RETURN                           R0 0

PROTO_16:
        0 JUMPIFNOTEQKS                    R0 K0 ["__none__"] ; [+10]
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["onChanged"]
        8 LOADNIL                          R2
        9 CALL                             R1 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 0
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K1 ["onChanged"]
       17 LOADNIL                          R2
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_17:
        0 JUMPIFNOTEQKS                    R0 K0 ["__select__"] ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["onChanged"]
        5 LOADNIL                          R2
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["onChanged"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_18:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 LOADNIL                          R1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 3
       10 GETTABLEKS                       R0 R0 K0 ["currentOverride"]
       12 GETUPVAL                         R1 4
       13 DUPTABLE                         R2 K3 [{"Color3", "Transparency"}]
       14 GETTABLEKS                       R3 R0 K1 ["Color3"]
       16 SETTABLEKS                       R3 R2 K1 ["Color3"]
       18 GETTABLEKS                       R3 R0 K2 ["Transparency"]
       20 SETTABLEKS                       R3 R2 K2 ["Transparency"]
       22 SETTABLEKS                       R2 R1 K4 ["current"]
       24 GETUPVAL                         R1 2
       25 DUPTABLE                         R2 K6 [{"Color3", "alpha"}]
       26 GETTABLEKS                       R3 R0 K1 ["Color3"]
       28 SETTABLEKS                       R3 R2 K1 ["Color3"]
       30 GETTABLEKS                       R4 R0 K2 ["Transparency"]
       32 SUBRK                            R3 K7 [1] R4
       33 SETTABLEKS                       R3 R2 K5 ["alpha"]
       35 CALL                             R1 1 0
       36 GETUPVAL                         R1 5
       37 DUPCLOSURE                       R2 K8 [PROTO_18]
       38 CALL                             R1 1 0
       39 GETUPVAL                         R1 1
       40 LOADB                            R2 1
       41 CALL                             R1 1 0
       42 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_21:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 DUPTABLE                         R1 K2 [{"Color3", "alpha"}]
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K0 ["Color3"]
        7 GETTABLEKS                       R2 R0 K1 ["alpha"]
        9 SETTABLEKS                       R2 R1 K1 ["alpha"]
       11 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

PROTO_23:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 DUPTABLE                         R1 K2 [{"Color3", "alpha"}]
        4 GETTABLEKS                       R2 R0 K0 ["Color3"]
        6 SETTABLEKS                       R2 R1 K0 ["Color3"]
        8 GETUPVAL                         R2 0
        9 SETTABLEKS                       R2 R1 K1 ["alpha"]
       11 RETURN                           R1 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["onChanged"]
        7 DUPTABLE                         R2 K4 [{"Color3", "Transparency"}]
        8 GETTABLEKS                       R3 R0 K2 ["Color3"]
       10 SETTABLEKS                       R3 R2 K2 ["Color3"]
       12 GETTABLEKS                       R3 R0 K3 ["Transparency"]
       14 SETTABLEKS                       R3 R2 K3 ["Transparency"]
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 2
       18 LOADB                            R2 0
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 3
       21 LOADNIL                          R2
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+14]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["onChanged"]
        5 DUPTABLE                         R2 K3 [{"Color3", "Transparency"}]
        6 GETTABLEKS                       R3 R0 K1 ["Color3"]
        8 SETTABLEKS                       R3 R2 K1 ["Color3"]
       10 GETTABLEKS                       R4 R0 K5 ["alpha"]
       12 SUBRK                            R3 K4 [1] R4
       13 SETTABLEKS                       R3 R2 K2 ["Transparency"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 2
       17 LOADB                            R2 0
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 3
       20 LOADNIL                          R2
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["None"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 LOADNIL                          R1
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 3
        9 GETTABLEKS                       R0 R0 K1 ["onChanged"]
       11 LOADNIL                          R1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["tokens"]
        3 CALL                             R1 1 1
        4 LOADNIL                          R2
        5 GETTABLEKS                       R4 R0 K1 ["currentOverride"]
        7 FASTCALL1                        TYPE R4 ; [+2]
        8 GETIMPORT                        R3 K3 [type]
       10 CALL                             R3 1 1
       11 JUMPIFNOTEQKS                    R3 K4 ["string"] ; [+17]
       13 GETTABLEKS                       R3 R0 K1 ["currentOverride"]
       15 GETIMPORT                        R4 K6 [string.find]
       17 MOVE                             R5 R3
       18 LOADK                            R6 K7 ["Color.Surface."]
       19 CALL                             R4 2 1
       20 JUMPIFNOT                        R4 ; [+2]
       21 LOADK                            R2 K8 ["Surface"]
       22 JUMP                             ; [+6]
       23 GETIMPORT                        R4 K10 [string.match]
       25 MOVE                             R5 R3
       26 LOADK                            R6 K11 ["Color%.Extended%.([^.]+)%."]
       27 CALL                             R4 2 1
       28 MOVE                             R2 R4
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R3 R3 K12 ["useState"]
       32 MOVE                             R4 R2
       33 CALL                             R3 1 2
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K12 ["useState"]
       37 GETTABLEKS                       R7 R0 K1 ["currentOverride"]
       39 JUMPIFNOTEQKNIL                  R7 ; [+5]
       41 GETUPVAL                         R6 2
       42 GETTABLEKS                       R6 R6 K13 ["None"]
       44 JUMP                             ; [+46]
       45 FASTCALL1                        TYPE R7 ; [+3]
       46 MOVE                             R9 R7
       47 GETIMPORT                        R8 K3 [type]
       49 CALL                             R8 1 1
       50 JUMPIFNOTEQKS                    R8 K4 ["string"] ; [+5]
       52 GETUPVAL                         R6 2
       53 GETTABLEKS                       R6 R6 K14 ["Path"]
       55 JUMP                             ; [+35]
       56 LOADB                            R8 0
       57 FASTCALL1                        TYPE R7 ; [+3]
       58 MOVE                             R10 R7
       59 GETIMPORT                        R9 K3 [type]
       61 CALL                             R9 1 1
       62 JUMPIFNOTEQKS                    R9 K15 ["table"] ; [+20]
       64 LOADB                            R8 0
       65 GETTABLEKS                       R10 R7 K16 ["Color3"]
       67 FASTCALL1                        TYPEOF R10 ; [+2]
       68 GETIMPORT                        R9 K18 [typeof]
       70 CALL                             R9 1 1
       71 JUMPIFNOTEQKS                    R9 K16 ["Color3"] ; [+11]
       73 GETTABLEKS                       R10 R7 K19 ["Transparency"]
       75 FASTCALL1                        TYPEOF R10 ; [+2]
       76 GETIMPORT                        R9 K18 [typeof]
       78 CALL                             R9 1 1
       79 JUMPIFEQKS                       R9 K20 ["number"] ; [+2]
       81 LOADB                            R8 0 +1
       82 LOADB                            R8 1
       83 JUMPIFNOT                        R8 ; [+4]
       84 GETUPVAL                         R6 2
       85 GETTABLEKS                       R6 R6 K21 ["Custom"]
       87 JUMP                             ; [+3]
       88 GETUPVAL                         R6 2
       89 GETTABLEKS                       R6 R6 K13 ["None"]
       91 CALL                             R5 1 2
       92 GETUPVAL                         R7 1
       93 GETTABLEKS                       R7 R7 K12 ["useState"]
       95 LOADB                            R8 0
       96 CALL                             R7 1 2
       97 GETUPVAL                         R9 1
       98 GETTABLEKS                       R9 R9 K12 ["useState"]
      100 LOADNIL                          R10
      101 CALL                             R9 1 2
      102 GETUPVAL                         R11 1
      103 GETTABLEKS                       R11 R11 K12 ["useState"]
      105 LOADN                            R12 0
      106 CALL                             R11 1 2
      107 GETUPVAL                         R13 1
      108 GETTABLEKS                       R13 R13 K22 ["useRef"]
      110 LOADNIL                          R14
      111 CALL                             R13 1 1
      112 GETUPVAL                         R14 3
      113 CALL                             R14 0 1
      114 GETUPVAL                         R15 1
      115 GETTABLEKS                       R15 R15 K23 ["useEffect"]
      117 NEWCLOSURE                       R16 P0
      118 CAPTURE                          VAL R0
      119 CAPTURE                          VAL R6
      120 CAPTURE                          UPVAL U2
      121 CAPTURE                          VAL R4
      122 NEWTABLE                         R17 0 1
      124 GETTABLEKS                       R18 R0 K1 ["currentOverride"]
      126 SETLIST                          R17 R18 1 [1]
      128 CALL                             R15 2 0
      129 GETUPVAL                         R15 1
      130 GETTABLEKS                       R15 R15 K23 ["useEffect"]
      132 NEWCLOSURE                       R16 P1
      133 CAPTURE                          VAL R5
      134 CAPTURE                          UPVAL U2
      135 CAPTURE                          VAL R8
      136 NEWTABLE                         R17 0 1
      138 MOVE                             R18 R5
      139 SETLIST                          R17 R18 1 [1]
      141 CALL                             R15 2 0
      142 GETUPVAL                         R15 1
      143 GETTABLEKS                       R15 R15 K24 ["useMemo"]
      145 NEWCLOSURE                       R16 P2
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R0
      149 CAPTURE                          VAL R14
      150 NEWTABLE                         R17 0 3
      152 MOVE                             R18 R7
      153 MOVE                             R19 R9
      154 GETTABLEKS                       R20 R0 K1 ["currentOverride"]
      156 SETLIST                          R17 R18 3 [1]
      158 CALL                             R15 2 2
      159 GETUPVAL                         R17 1
      160 GETTABLEKS                       R17 R17 K24 ["useMemo"]
      162 NEWCLOSURE                       R18 P3
      163 CAPTURE                          VAL R15
      164 NEWTABLE                         R19 0 1
      166 MOVE                             R20 R15
      167 SETLIST                          R19 R20 1 [1]
      169 CALL                             R17 2 1
      170 NEWTABLE                         R18 0 1
      172 DUPTABLE                         R19 K29 [{["id"] = "__none__", ["text"] = "(Pick category)"}]
      173 SETLIST                          R18 R19 1 [1]
      175 MOVE                             R19 R1
      176 LOADNIL                          R20
      177 LOADNIL                          R21
      178 FORGPREP                         R19
      179 DUPTABLE                         R26 K30 [{"id", "text"}]
      180 SETTABLEKS                       R23 R26 K25 ["id"]
      182 SETTABLEKS                       R23 R26 K27 ["text"]
      184 FASTCALL2                        TABLE_INSERT R18 R26 ; [+4]
      186 MOVE                             R25 R18
      187 GETIMPORT                        R24 K32 [table.insert]
      189 CALL                             R24 2 0
      190 FORGLOOP                         R19 2 ; [-12]
      192 NEWTABLE                         R19 0 1
      194 DUPTABLE                         R20 K35 [{["id"] = "__select__", ["text"] = "Select token…"}]
      195 SETLIST                          R19 R20 1 [1]
      197 JUMPIFNOT                        R3 ; [+26]
      198 GETUPVAL                         R20 4
      199 GETTABLEKS                       R21 R0 K0 ["tokens"]
      201 MOVE                             R22 R3
      202 CALL                             R20 2 1
      203 MOVE                             R21 R20
      204 LOADNIL                          R22
      205 LOADNIL                          R23
      206 FORGPREP                         R21
      207 DUPTABLE                         R28 K30 [{"id", "text"}]
      208 GETTABLEKS                       R29 R25 K36 ["path"]
      210 SETTABLEKS                       R29 R28 K25 ["id"]
      212 GETTABLEKS                       R29 R25 K37 ["key"]
      214 SETTABLEKS                       R29 R28 K27 ["text"]
      216 FASTCALL2                        TABLE_INSERT R19 R28 ; [+4]
      218 MOVE                             R27 R19
      219 GETIMPORT                        R26 K32 [table.insert]
      221 CALL                             R26 2 0
      222 FORGLOOP                         R21 2 ; [-16]
      224 GETTABLEKS                       R21 R0 K1 ["currentOverride"]
      226 JUMPIFNOTEQKNIL                  R21 ; [+2]
      228 LOADB                            R20 0 +1
      229 LOADB                            R20 1
      230 LOADB                            R21 0
      231 GETUPVAL                         R22 2
      232 GETTABLEKS                       R22 R22 K21 ["Custom"]
      234 JUMPIFNOTEQ                      R5 R22 ; [+30]
      236 GETTABLEKS                       R22 R0 K1 ["currentOverride"]
      238 LOADB                            R21 0
      239 FASTCALL1                        TYPE R22 ; [+3]
      240 MOVE                             R24 R22
      241 GETIMPORT                        R23 K3 [type]
      243 CALL                             R23 1 1
      244 JUMPIFNOTEQKS                    R23 K15 ["table"] ; [+20]
      246 LOADB                            R21 0
      247 GETTABLEKS                       R24 R22 K16 ["Color3"]
      249 FASTCALL1                        TYPEOF R24 ; [+2]
      250 GETIMPORT                        R23 K18 [typeof]
      252 CALL                             R23 1 1
      253 JUMPIFNOTEQKS                    R23 K16 ["Color3"] ; [+11]
      255 GETTABLEKS                       R24 R22 K19 ["Transparency"]
      257 FASTCALL1                        TYPEOF R24 ; [+2]
      258 GETIMPORT                        R23 K18 [typeof]
      260 CALL                             R23 1 1
      261 JUMPIFEQKS                       R23 K20 ["number"] ; [+2]
      263 LOADB                            R21 0 +1
      264 LOADB                            R21 1
      265 GETUPVAL                         R22 1
      266 GETTABLEKS                       R22 R22 K38 ["createElement"]
      268 GETUPVAL                         R23 5
      269 DUPTABLE                         R24 K41 [{["tag"] = "col gap-small auto-xy"}]
      270 DUPTABLE                         R25 K43 [{"HeaderRow"}]
      271 GETUPVAL                         R26 1
      272 GETTABLEKS                       R26 R26 K38 ["createElement"]
      274 GETUPVAL                         R27 5
      275 DUPTABLE                         R28 K47 [{["tag"] = "row gap-small auto-xy align-y-center", ["LayoutOrder"] = 1}]
      276 DUPTABLE                         R29 K54 [{"Label", "OverrideMode", "PathCategory", "PathValue", "CustomColorPopover", "ResetButton"}]
      277 GETUPVAL                         R30 1
      278 GETTABLEKS                       R30 R30 K38 ["createElement"]
      280 GETUPVAL                         R31 5
      281 DUPTABLE                         R32 K57 [{["tag"] = "auto-y", ["Size"], ["LayoutOrder"] = 1}]
      282 GETIMPORT                        R33 K60 [UDim2.fromOffset]
      284 LOADN                            R34 100
      285 LOADN                            R35 0
      286 CALL                             R33 2 1
      287 SETTABLEKS                       R33 R32 K56 ["Size"]
      289 DUPTABLE                         R33 K62 [{"Text"}]
      290 GETUPVAL                         R34 1
      291 GETTABLEKS                       R34 R34 K38 ["createElement"]
      293 GETUPVAL                         R35 6
      294 DUPTABLE                         R36 K64 [{["Text"], ["tag"] = "auto-xy text-label-small"}]
      295 GETTABLEKS                       R37 R0 K65 ["tokenKey"]
      297 SETTABLEKS                       R37 R36 K61 ["Text"]
      299 CALL                             R34 2 1
      300 SETTABLEKS                       R34 R33 K61 ["Text"]
      302 CALL                             R30 3 1
      303 SETTABLEKS                       R30 R29 K48 ["Label"]
      305 GETUPVAL                         R30 1
      306 GETTABLEKS                       R30 R30 K38 ["createElement"]
      308 GETUPVAL                         R31 7
      309 DUPTABLE                         R32 K71 [{["segments"], ["value"], ["size"], ["onActivated"], ["LayoutOrder"] = 2}]
      310 GETUPVAL                         R33 8
      311 GETTABLEKS                       R33 R33 K72 ["map"]
      313 GETUPVAL                         R34 8
      314 GETTABLEKS                       R34 R34 K73 ["values"]
      316 GETUPVAL                         R35 2
      317 CALL                             R34 1 1
      318 DUPCLOSURE                       R35 K74 [PROTO_14]
      319 CALL                             R33 2 1
      320 SETTABLEKS                       R33 R32 K66 ["segments"]
      322 SETTABLEKS                       R5 R32 K67 ["value"]
      324 GETUPVAL                         R33 9
      325 GETTABLEKS                       R33 R33 K75 ["Small"]
      327 SETTABLEKS                       R33 R32 K68 ["size"]
      329 NEWCLOSURE                       R33 P5
      330 CAPTURE                          UPVAL U2
      331 CAPTURE                          VAL R6
      332 CAPTURE                          VAL R4
      333 CAPTURE                          VAL R0
      334 CAPTURE                          UPVAL U10
      335 SETTABLEKS                       R33 R32 K69 ["onActivated"]
      337 CALL                             R30 2 1
      338 SETTABLEKS                       R30 R29 K49 ["OverrideMode"]
      340 GETUPVAL                         R31 2
      341 GETTABLEKS                       R31 R31 K14 ["Path"]
      343 JUMPIFNOTEQ                      R5 R31 ; [+32]
      345 GETUPVAL                         R30 1
      346 GETTABLEKS                       R30 R30 K38 ["createElement"]
      348 GETUPVAL                         R31 11
      349 GETTABLEKS                       R31 R31 K76 ["Root"]
      351 DUPTABLE                         R32 K83 [{["label"] = "", ["value"], ["items"], ["size"], ["onItemChanged"], ["width"], ["LayoutOrder"] = 3}]
      352 ORK                              R33 R3 K26 ["__none__"]
      353 SETTABLEKS                       R33 R32 K67 ["value"]
      355 SETTABLEKS                       R18 R32 K79 ["items"]
      357 GETUPVAL                         R33 9
      358 GETTABLEKS                       R33 R33 K75 ["Small"]
      360 SETTABLEKS                       R33 R32 K68 ["size"]
      362 NEWCLOSURE                       R33 P6
      363 CAPTURE                          VAL R4
      364 CAPTURE                          VAL R0
      365 SETTABLEKS                       R33 R32 K80 ["onItemChanged"]
      367 GETIMPORT                        R33 K86 [UDim.new]
      369 LOADN                            R34 0
      370 LOADN                            R35 120
      371 CALL                             R33 2 1
      372 SETTABLEKS                       R33 R32 K81 ["width"]
      374 CALL                             R30 2 1
      375 JUMP                             ; [+1]
      376 LOADNIL                          R30
      377 SETTABLEKS                       R30 R29 K50 ["PathCategory"]
      379 GETUPVAL                         R31 2
      380 GETTABLEKS                       R31 R31 K14 ["Path"]
      382 JUMPIFNOTEQ                      R5 R31 ; [+43]
      384 JUMPIFNOT                        R3 ; [+41]
      385 GETUPVAL                         R30 1
      386 GETTABLEKS                       R30 R30 K38 ["createElement"]
      388 GETUPVAL                         R31 11
      389 GETTABLEKS                       R31 R31 K76 ["Root"]
      391 DUPTABLE                         R32 K88 [{["label"] = "", ["value"], ["items"], ["size"], ["onItemChanged"], ["width"], ["LayoutOrder"] = 4}]
      392 GETTABLEKS                       R35 R0 K1 ["currentOverride"]
      394 FASTCALL1                        TYPE R35 ; [+2]
      395 GETIMPORT                        R34 K3 [type]
      397 CALL                             R34 1 1
      398 JUMPIFNOTEQKS                    R34 K4 ["string"] ; [+4]
      400 GETTABLEKS                       R33 R0 K1 ["currentOverride"]
      402 JUMP                             ; [+1]
      403 LOADK                            R33 K33 ["__select__"]
      404 SETTABLEKS                       R33 R32 K67 ["value"]
      406 SETTABLEKS                       R19 R32 K79 ["items"]
      408 GETUPVAL                         R33 9
      409 GETTABLEKS                       R33 R33 K75 ["Small"]
      411 SETTABLEKS                       R33 R32 K68 ["size"]
      413 NEWCLOSURE                       R33 P7
      414 CAPTURE                          VAL R0
      415 SETTABLEKS                       R33 R32 K80 ["onItemChanged"]
      417 GETIMPORT                        R33 K86 [UDim.new]
      419 LOADN                            R34 0
      420 LOADN                            R35 200
      421 CALL                             R33 2 1
      422 SETTABLEKS                       R33 R32 K81 ["width"]
      424 CALL                             R30 2 1
      425 JUMP                             ; [+1]
      426 LOADNIL                          R30
      427 SETTABLEKS                       R30 R29 K51 ["PathValue"]
      429 JUMPIFNOT                        R21 ; [+363]
      430 GETUPVAL                         R30 1
      431 GETTABLEKS                       R30 R30 K38 ["createElement"]
      433 GETUPVAL                         R31 12
      434 GETTABLEKS                       R31 R31 K76 ["Root"]
      436 DUPTABLE                         R32 K90 [{"isOpen"}]
      437 SETTABLEKS                       R7 R32 K89 ["isOpen"]
      439 DUPTABLE                         R33 K93 [{"Anchor", "Content"}]
      440 GETUPVAL                         R34 1
      441 GETTABLEKS                       R34 R34 K38 ["createElement"]
      443 GETUPVAL                         R35 12
      444 GETTABLEKS                       R35 R35 K91 ["Anchor"]
      446 DUPTABLE                         R36 K95 [{["LayoutOrder"] = 5}]
      447 GETUPVAL                         R37 1
      448 GETTABLEKS                       R37 R37 K38 ["createElement"]
      450 GETUPVAL                         R38 5
      451 DUPTABLE                         R39 K97 [{["onActivated"], ["tag"] = "row align-y-center gap-small size-2500-800 padding-x-small radius-medium bg-shift-200 clip"}]
      452 NEWCLOSURE                       R40 P8
      453 CAPTURE                          VAL R7
      454 CAPTURE                          VAL R8
      455 CAPTURE                          VAL R10
      456 CAPTURE                          VAL R0
      457 CAPTURE                          VAL R13
      458 CAPTURE                          VAL R12
      459 SETTABLEKS                       R40 R39 K69 ["onActivated"]
      461 DUPTABLE                         R40 K100 [{"Swatch", "HexLabel"}]
      462 GETUPVAL                         R41 1
      463 GETTABLEKS                       R41 R41 K38 ["createElement"]
      465 GETUPVAL                         R42 5
      466 DUPTABLE                         R43 K102 [{["LayoutOrder"] = 1, ["tag"] = "radius-small size-500-500"}]
      467 DUPTABLE                         R44 K105 [{"Checkerboard", "ColorOverlay"}]
      468 GETUPVAL                         R45 1
      469 GETTABLEKS                       R45 R45 K38 ["createElement"]
      471 GETUPVAL                         R46 13
      472 DUPTABLE                         R47 K112 [{["Image"] = "component_assets/checkerboard_12", ["ScaleType"], ["TileSize"], ["tag"] = "size-full radius-small", ["ZIndex"] = 1}]
      473 GETIMPORT                        R48 K115 [Enum.ScaleType.Tile]
      475 SETTABLEKS                       R48 R47 K108 ["ScaleType"]
      477 GETIMPORT                        R48 K60 [UDim2.fromOffset]
      479 LOADN                            R49 10
      480 LOADN                            R50 10
      481 CALL                             R48 2 1
      482 SETTABLEKS                       R48 R47 K109 ["TileSize"]
      484 CALL                             R45 2 1
      485 SETTABLEKS                       R45 R44 K103 ["Checkerboard"]
      487 GETUPVAL                         R45 1
      488 GETTABLEKS                       R45 R45 K38 ["createElement"]
      490 GETUPVAL                         R46 5
      491 DUPTABLE                         R47 K117 [{["tag"] = "size-full radius-small", ["backgroundStyle"], ["ZIndex"] = 2}]
      492 DUPTABLE                         R48 K118 [{"Color3", "Transparency"}]
      493 SETTABLEKS                       R15 R48 K16 ["Color3"]
      495 SUBRK                            R49 K46 [1] R16
      496 SETTABLEKS                       R49 R48 K19 ["Transparency"]
      498 SETTABLEKS                       R48 R47 K116 ["backgroundStyle"]
      500 CALL                             R45 2 1
      501 SETTABLEKS                       R45 R44 K104 ["ColorOverlay"]
      503 CALL                             R41 3 1
      504 SETTABLEKS                       R41 R40 K98 ["Swatch"]
      506 GETUPVAL                         R41 1
      507 GETTABLEKS                       R41 R41 K38 ["createElement"]
      509 GETUPVAL                         R42 6
      510 DUPTABLE                         R43 K120 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "auto-xy size-0-0 text-body-small text-truncate-end content-emphasis"}]
      511 SETTABLEKS                       R17 R43 K61 ["Text"]
      513 CALL                             R41 2 1
      514 SETTABLEKS                       R41 R40 K99 ["HexLabel"]
      516 CALL                             R37 3 -1
      517 CALL                             R34 -1 1
      518 SETTABLEKS                       R34 R33 K91 ["Anchor"]
      520 GETUPVAL                         R34 1
      521 GETTABLEKS                       R34 R34 K38 ["createElement"]
      523 GETUPVAL                         R35 12
      524 GETTABLEKS                       R35 R35 K92 ["Content"]
      526 DUPTABLE                         R36 K125 [{["side"], ["hasArrow"] = True, ["onPressedOutside"]}]
      527 GETUPVAL                         R37 14
      528 GETTABLEKS                       R37 R37 K126 ["Right"]
      530 SETTABLEKS                       R37 R36 K121 ["side"]
      532 NEWCLOSURE                       R37 P9
      533 CAPTURE                          VAL R8
      534 CAPTURE                          VAL R10
      535 SETTABLEKS                       R37 R36 K124 ["onPressedOutside"]
      537 JUMPIFNOT                        R7 ; [+249]
      538 JUMPIFNOT                        R9 ; [+248]
      539 GETUPVAL                         R37 1
      540 GETTABLEKS                       R37 R37 K38 ["createElement"]
      542 GETUPVAL                         R38 5
      543 DUPTABLE                         R39 K128 [{["tag"] = "col gap-medium padding-medium", ["Size"]}]
      544 GETIMPORT                        R40 K60 [UDim2.fromOffset]
      546 LOADN                            R41 300
      547 LOADN                            R42 300
      548 CALL                             R40 2 1
      549 SETTABLEKS                       R40 R39 K56 ["Size"]
      551 DUPTABLE                         R40 K132 [{"Hint", "Picker", "Actions"}]
      552 GETUPVAL                         R41 1
      553 GETTABLEKS                       R41 R41 K38 ["createElement"]
      555 GETUPVAL                         R42 6
      556 DUPTABLE                         R43 K136 [{["Text"] = "Color + alpha → token Color3 and Transparency.", ["tag"] = "auto-xy text-caption-small text-subtle", ["LayoutOrder"] = 0}]
      557 CALL                             R41 2 1
      558 SETTABLEKS                       R41 R40 K129 ["Hint"]
      560 GETUPVAL                         R41 1
      561 GETTABLEKS                       R41 R41 K38 ["createElement"]
      563 GETUPVAL                         R42 15
      564 DUPTABLE                         R43 K141 [{["key"], ["initialColor"], ["initialAlpha"], ["onColorChanged"], ["onAlphaChanged"], ["LayoutOrder"] = 1}]
      565 LOADK                            R45 K142 ["%*-popover-%*"]
      566 GETTABLEKS                       R47 R0 K143 ["tokenPath"]
      568 MOVE                             R48 R11
      569 NAMECALL                         R45 R45 K144 ["format"]
      571 CALL                             R45 3 1
      572 MOVE                             R44 R45
      573 SETTABLEKS                       R44 R43 K37 ["key"]
      575 GETTABLEKS                       R44 R9 K16 ["Color3"]
      577 SETTABLEKS                       R44 R43 K137 ["initialColor"]
      579 GETTABLEKS                       R44 R9 K145 ["alpha"]
      581 SETTABLEKS                       R44 R43 K138 ["initialAlpha"]
      583 NEWCLOSURE                       R44 P10
      584 CAPTURE                          VAL R10
      585 SETTABLEKS                       R44 R43 K139 ["onColorChanged"]
      587 NEWCLOSURE                       R44 P11
      588 CAPTURE                          VAL R10
      589 SETTABLEKS                       R44 R43 K140 ["onAlphaChanged"]
      591 CALL                             R41 2 1
      592 SETTABLEKS                       R41 R40 K130 ["Picker"]
      594 GETUPVAL                         R41 1
      595 GETTABLEKS                       R41 R41 K38 ["createElement"]
      597 GETUPVAL                         R42 5
      598 DUPTABLE                         R43 K147 [{["tag"] = "row align-x-right gap-small size-full-0 auto-y", ["LayoutOrder"] = 2}]
      599 DUPTABLE                         R44 K150 [{"CancelButton", "DoneButton"}]
      600 GETUPVAL                         R45 1
      601 GETTABLEKS                       R45 R45 K38 ["createElement"]
      603 GETUPVAL                         R46 16
      604 DUPTABLE                         R47 K152 [{"onActivated", "Size", "AutomaticSize"}]
      605 NEWCLOSURE                       R48 P12
      606 CAPTURE                          VAL R13
      607 CAPTURE                          VAL R0
      608 CAPTURE                          VAL R8
      609 CAPTURE                          VAL R10
      610 SETTABLEKS                       R48 R47 K69 ["onActivated"]
      612 GETIMPORT                        R48 K153 [UDim2.new]
      614 LOADN                            R49 0
      615 LOADN                            R50 0
      616 LOADN                            R51 0
      617 LOADN                            R52 0
      618 CALL                             R48 4 1
      619 SETTABLEKS                       R48 R47 K56 ["Size"]
      621 GETIMPORT                        R48 K155 [Enum.AutomaticSize.XY]
      623 SETTABLEKS                       R48 R47 K151 ["AutomaticSize"]
      625 DUPTABLE                         R48 K157 [{"CancelLabel"}]
      626 GETUPVAL                         R49 1
      627 GETTABLEKS                       R49 R49 K38 ["createElement"]
      629 GETUPVAL                         R50 5
      630 DUPTABLE                         R51 K160 [{["tag"] = "auto-xy padding-small radius-small", ["backgroundStyle"], ["stroke"]}]
      631 GETTABLEKS                       R52 R14 K161 ["Color"]
      633 GETTABLEKS                       R52 R52 K8 ["Surface"]
      635 GETTABLEKS                       R52 R52 K162 ["Surface_100"]
      637 SETTABLEKS                       R52 R51 K116 ["backgroundStyle"]
      639 DUPTABLE                         R52 K164 [{["Color"], ["Transparency"], ["Thickness"] = 1}]
      640 GETTABLEKS                       R53 R14 K161 ["Color"]
      642 GETTABLEKS                       R53 R53 K165 ["System"]
      644 GETTABLEKS                       R53 R53 K166 ["Neutral"]
      646 GETTABLEKS                       R53 R53 K16 ["Color3"]
      648 SETTABLEKS                       R53 R52 K161 ["Color"]
      650 GETTABLEKS                       R53 R14 K161 ["Color"]
      652 GETTABLEKS                       R53 R53 K165 ["System"]
      654 GETTABLEKS                       R53 R53 K166 ["Neutral"]
      656 GETTABLEKS                       R53 R53 K19 ["Transparency"]
      658 SETTABLEKS                       R53 R52 K19 ["Transparency"]
      660 SETTABLEKS                       R52 R51 K159 ["stroke"]
      662 DUPTABLE                         R52 K62 [{"Text"}]
      663 GETUPVAL                         R53 1
      664 GETTABLEKS                       R53 R53 K38 ["createElement"]
      666 GETUPVAL                         R54 6
      667 DUPTABLE                         R55 K171 [{["Text"] = "Cancel", ["fontStyle"], ["textStyle"], ["tag"] = "auto-xy"}]
      668 GETTABLEKS                       R56 R14 K172 ["Typography"]
      670 GETTABLEKS                       R56 R56 K173 ["BodyMedium"]
      672 SETTABLEKS                       R56 R55 K168 ["fontStyle"]
      674 GETTABLEKS                       R56 R14 K161 ["Color"]
      676 GETTABLEKS                       R56 R56 K92 ["Content"]
      678 GETTABLEKS                       R56 R56 K174 ["Default"]
      680 SETTABLEKS                       R56 R55 K169 ["textStyle"]
      682 CALL                             R53 2 1
      683 SETTABLEKS                       R53 R52 K61 ["Text"]
      685 CALL                             R49 3 1
      686 SETTABLEKS                       R49 R48 K156 ["CancelLabel"]
      688 CALL                             R45 3 1
      689 SETTABLEKS                       R45 R44 K148 ["CancelButton"]
      691 GETUPVAL                         R45 1
      692 GETTABLEKS                       R45 R45 K38 ["createElement"]
      694 GETUPVAL                         R46 16
      695 DUPTABLE                         R47 K152 [{"onActivated", "Size", "AutomaticSize"}]
      696 NEWCLOSURE                       R48 P13
      697 CAPTURE                          VAL R9
      698 CAPTURE                          VAL R0
      699 CAPTURE                          VAL R8
      700 CAPTURE                          VAL R10
      701 SETTABLEKS                       R48 R47 K69 ["onActivated"]
      703 GETIMPORT                        R48 K153 [UDim2.new]
      705 LOADN                            R49 0
      706 LOADN                            R50 0
      707 LOADN                            R51 0
      708 LOADN                            R52 0
      709 CALL                             R48 4 1
      710 SETTABLEKS                       R48 R47 K56 ["Size"]
      712 GETIMPORT                        R48 K155 [Enum.AutomaticSize.XY]
      714 SETTABLEKS                       R48 R47 K151 ["AutomaticSize"]
      716 DUPTABLE                         R48 K176 [{"DoneLabel"}]
      717 GETUPVAL                         R49 1
      718 GETTABLEKS                       R49 R49 K38 ["createElement"]
      720 GETUPVAL                         R50 5
      721 DUPTABLE                         R51 K160 [{["tag"] = "auto-xy padding-small radius-small", ["backgroundStyle"], ["stroke"]}]
      722 GETTABLEKS                       R52 R14 K161 ["Color"]
      724 GETTABLEKS                       R52 R52 K8 ["Surface"]
      726 GETTABLEKS                       R52 R52 K162 ["Surface_100"]
      728 SETTABLEKS                       R52 R51 K116 ["backgroundStyle"]
      730 DUPTABLE                         R52 K164 [{["Color"], ["Transparency"], ["Thickness"] = 1}]
      731 GETTABLEKS                       R53 R14 K161 ["Color"]
      733 GETTABLEKS                       R53 R53 K165 ["System"]
      735 GETTABLEKS                       R53 R53 K166 ["Neutral"]
      737 GETTABLEKS                       R53 R53 K16 ["Color3"]
      739 SETTABLEKS                       R53 R52 K161 ["Color"]
      741 GETTABLEKS                       R53 R14 K161 ["Color"]
      743 GETTABLEKS                       R53 R53 K165 ["System"]
      745 GETTABLEKS                       R53 R53 K166 ["Neutral"]
      747 GETTABLEKS                       R53 R53 K19 ["Transparency"]
      749 SETTABLEKS                       R53 R52 K19 ["Transparency"]
      751 SETTABLEKS                       R52 R51 K159 ["stroke"]
      753 DUPTABLE                         R52 K62 [{"Text"}]
      754 GETUPVAL                         R53 1
      755 GETTABLEKS                       R53 R53 K38 ["createElement"]
      757 GETUPVAL                         R54 6
      758 DUPTABLE                         R55 K178 [{["Text"] = "Done", ["fontStyle"], ["textStyle"], ["tag"] = "auto-xy"}]
      759 GETTABLEKS                       R56 R14 K172 ["Typography"]
      761 GETTABLEKS                       R56 R56 K173 ["BodyMedium"]
      763 SETTABLEKS                       R56 R55 K168 ["fontStyle"]
      765 GETTABLEKS                       R56 R14 K161 ["Color"]
      767 GETTABLEKS                       R56 R56 K92 ["Content"]
      769 GETTABLEKS                       R56 R56 K174 ["Default"]
      771 SETTABLEKS                       R56 R55 K169 ["textStyle"]
      773 CALL                             R53 2 1
      774 SETTABLEKS                       R53 R52 K61 ["Text"]
      776 CALL                             R49 3 1
      777 SETTABLEKS                       R49 R48 K175 ["DoneLabel"]
      779 CALL                             R45 3 1
      780 SETTABLEKS                       R45 R44 K149 ["DoneButton"]
      782 CALL                             R41 3 1
      783 SETTABLEKS                       R41 R40 K131 ["Actions"]
      785 CALL                             R37 3 1
      786 JUMP                             ; [+1]
      787 LOADNIL                          R37
      788 CALL                             R34 3 1
      789 SETTABLEKS                       R34 R33 K92 ["Content"]
      791 CALL                             R30 3 1
      792 JUMP                             ; [+1]
      793 LOADNIL                          R30
      794 SETTABLEKS                       R30 R29 K52 ["CustomColorPopover"]
      796 JUMPIFNOT                        R20 ; [+24]
      797 GETUPVAL                         R30 1
      798 GETTABLEKS                       R30 R30 K38 ["createElement"]
      800 GETUPVAL                         R31 17
      801 DUPTABLE                         R32 K182 [{["text"] = "Reset", ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 6}]
      802 GETUPVAL                         R33 9
      803 GETTABLEKS                       R33 R33 K75 ["Small"]
      805 SETTABLEKS                       R33 R32 K68 ["size"]
      807 GETUPVAL                         R33 18
      808 GETTABLEKS                       R33 R33 K183 ["Standard"]
      810 SETTABLEKS                       R33 R32 K180 ["variant"]
      812 NEWCLOSURE                       R33 P14
      813 CAPTURE                          VAL R6
      814 CAPTURE                          UPVAL U2
      815 CAPTURE                          VAL R4
      816 CAPTURE                          VAL R0
      817 SETTABLEKS                       R33 R32 K69 ["onActivated"]
      819 CALL                             R30 2 1
      820 JUMP                             ; [+1]
      821 LOADNIL                          R30
      822 SETTABLEKS                       R30 R29 K53 ["ResetButton"]
      824 CALL                             R26 3 1
      825 SETTABLEKS                       R26 R25 K42 ["HeaderRow"]
      827 CALL                             R22 3 -1
      828 RETURN                           R22 -1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getTokenOverrides"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+2]
        5 NEWTABLE                         R0 0 0
        7 RETURN                           R0 1

PROTO_30:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 JUMPIFEQKNIL                     R2 ; [+5]
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 0
        9 SETTABLE                         R3 R1 R2
       10 RETURN                           R1 1
       11 GETUPVAL                         R2 1
       12 LOADNIL                          R3
       13 SETTABLE                         R3 R1 R2
       14 RETURN                           R1 1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R0
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setTokenOverrides"]
        3 GETIMPORT                        R2 K2 [next]
        5 GETUPVAL                         R3 1
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+2]
        8 GETUPVAL                         R1 1
        9 JUMP                             ; [+1]
       10 LOADNIL                          R1
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["path"]
        3 GETUPVAL                         R2 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{"key", "tokenKey", "tokenPath", "tokens", "currentOverride", "onChanged"}]
        5 GETTABLEKS                       R4 R0 K8 ["path"]
        7 SETTABLEKS                       R4 R3 K1 ["key"]
        9 GETTABLEKS                       R4 R0 K1 ["key"]
       11 SETTABLEKS                       R4 R3 K2 ["tokenKey"]
       13 GETTABLEKS                       R4 R0 K8 ["path"]
       15 SETTABLEKS                       R4 R3 K3 ["tokenPath"]
       17 GETUPVAL                         R4 2
       18 SETTABLEKS                       R4 R3 K4 ["tokens"]
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R6 R0 K8 ["path"]
       23 GETTABLE                         R4 R5 R6
       24 SETTABLEKS                       R4 R3 K5 ["currentOverride"]
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U4
       29 SETTABLEKS                       R4 R3 K6 ["onChanged"]
       31 CALL                             R1 2 -1
       32 RETURN                           R1 -1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["useState"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R1
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 3
       11 MOVE                             R5 R0
       12 GETUPVAL                         R6 4
       13 CALL                             R4 2 1
       14 NEWCLOSURE                       R5 P1
       15 CAPTURE                          VAL R3
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K1 ["useEffect"]
       19 NEWCLOSURE                       R7 P2
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R8 0 1
       24 MOVE                             R9 R2
       25 SETLIST                          R8 R9 1 [1]
       27 CALL                             R6 2 0
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K2 ["createElement"]
       31 GETUPVAL                         R7 5
       32 DUPTABLE                         R8 K5 [{["tag"] = "col gap-xsmall auto-xy padding-medium"}]
       33 GETUPVAL                         R9 6
       34 GETTABLEKS                       R9 R9 K6 ["map"]
       36 MOVE                             R10 R4
       37 NEWCLOSURE                       R11 P3
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 CALL                             R9 2 -1
       44 CALL                             R6 -1 -1
       45 RETURN                           R6 -1

PROTO_36:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 RETURN                           R1 1

PROTO_37:
        0 DUPTABLE                         R1 K2 [{"name", "story"}]
        1 SETTABLEKS                       R0 R1 K0 ["name"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 SETTABLEKS                       R2 R1 K1 ["story"]
       14 RETURN                           R1 1

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
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Button"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R6 K12 ["ButtonVariant"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["ColorPicker"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R8 K14 ["Dropdown"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Components"]
       51 GETTABLEKS                       R9 R9 K15 ["Image"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K11 ["Enums"]
       58 GETTABLEKS                       R10 R10 K16 ["InputSize"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K9 ["Components"]
       65 GETTABLEKS                       R11 R11 K17 ["Interactable"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K9 ["Components"]
       72 GETTABLEKS                       R12 R12 K18 ["Popover"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K9 ["Components"]
       79 GETTABLEKS                       R13 R13 K19 ["SegmentedControl"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K9 ["Components"]
       86 GETTABLEKS                       R14 R14 K20 ["Text"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETIMPORT                        R15 K1 [script]
       93 GETTABLEKS                       R15 R15 K4 ["Parent"]
       95 GETTABLEKS                       R15 R15 K21 ["TokenProcessingUtilities"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R16 R0 K9 ["Components"]
      102 GETTABLEKS                       R16 R16 K22 ["View"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K6 [require]
      107 GETTABLEKS                       R17 R0 K11 ["Enums"]
      109 GETTABLEKS                       R17 R17 K23 ["PopoverSide"]
      111 CALL                             R16 1 1
      112 GETIMPORT                        R17 K6 [require]
      114 GETTABLEKS                       R18 R0 K24 ["Utility"]
      116 GETTABLEKS                       R18 R18 K25 ["Stories"]
      118 GETTABLEKS                       R18 R18 K26 ["TokenOverridesStore"]
      120 CALL                             R17 1 1
      121 GETIMPORT                        R18 K6 [require]
      123 GETTABLEKS                       R19 R0 K27 ["Providers"]
      125 GETTABLEKS                       R19 R19 K28 ["Style"]
      127 GETTABLEKS                       R19 R19 K29 ["useTokens"]
      129 CALL                             R18 1 1
      130 DUPTABLE                         R19 K33 [{["None"] = "None", ["Path"] = "Path", ["Custom"] = "Custom"}]
      131 DUPCLOSURE                       R20 K34 [PROTO_0]
      132 DUPCLOSURE                       R21 K35 [PROTO_1]
      133 CAPTURE                          VAL R19
      134 DUPCLOSURE                       R22 K36 [PROTO_2]
      135 DUPCLOSURE                       R23 K37 [PROTO_4]
      136 DUPCLOSURE                       R24 K38 [PROTO_6]
      137 DUPCLOSURE                       R25 K39 [PROTO_7]
      138 DUPCLOSURE                       R26 K40 [PROTO_8]
      139 CAPTURE                          VAL R14
      140 DUPCLOSURE                       R27 K41 [PROTO_28]
      141 CAPTURE                          VAL R22
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R19
      144 CAPTURE                          VAL R18
      145 CAPTURE                          VAL R23
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R13
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R26
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R16
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R5
      160 DUPCLOSURE                       R28 K42 [PROTO_36]
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R17
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R24
      165 CAPTURE                          VAL R15
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R27
      168 DUPTABLE                         R29 K46 [{["summary"] = "Configure token overrides (path remap or custom color) for all other stories", ["stories"]}]
      169 GETTABLEKS                       R30 R2 K47 ["map"]
      171 NEWTABLE                         R31 0 14
      173 LOADK                            R32 K48 ["Surface"]
      174 LOADK                            R33 K49 ["Shift"]
      175 LOADK                            R34 K50 ["OverMedia"]
      176 LOADK                            R35 K51 ["ActionAlert"]
      177 LOADK                            R36 K52 ["ActionEmphasis"]
      178 LOADK                            R37 K53 ["ActionSoftEmphasis"]
      179 LOADK                            R38 K54 ["ActionStandard"]
      180 LOADK                            R39 K55 ["ActionSubtle"]
      181 LOADK                            R40 K56 ["ActionLink"]
      182 LOADK                            R41 K57 ["ActionUtility"]
      183 LOADK                            R42 K58 ["Content"]
      184 LOADK                            R43 K59 ["Stroke"]
      185 LOADK                            R44 K60 ["System"]
      186 LOADK                            R45 K61 ["Common"]
      187 SETLIST                          R31 R32 14 [1]
      189 DUPCLOSURE                       R32 K62 [PROTO_37]
      190 CAPTURE                          VAL R18
      191 CAPTURE                          VAL R17
      192 CAPTURE                          VAL R3
      193 CAPTURE                          VAL R24
      194 CAPTURE                          VAL R15
      195 CAPTURE                          VAL R2
      196 CAPTURE                          VAL R27
      197 CALL                             R30 2 1
      198 SETTABLEKS                       R30 R29 K45 ["stories"]
      200 RETURN                           R29 1
