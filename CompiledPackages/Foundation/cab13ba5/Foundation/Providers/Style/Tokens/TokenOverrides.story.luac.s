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
       49 SUBRK                            R2 R10 K3 ["type"]
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
       32 SUBRK                            R3 R7 K4 ["current"]
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
       12 SUBRK                            R3 R4 K4 [1]
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
      172 DUPTABLE                         R19 K27 [{"id", "text"}]
      173 LOADK                            R20 K28 ["__none__"]
      174 SETTABLEKS                       R20 R19 K25 ["id"]
      176 LOADK                            R20 K29 ["(Pick category)"]
      177 SETTABLEKS                       R20 R19 K26 ["text"]
      179 SETLIST                          R18 R19 1 [1]
      181 MOVE                             R19 R1
      182 LOADNIL                          R20
      183 LOADNIL                          R21
      184 FORGPREP                         R19
      185 DUPTABLE                         R26 K27 [{"id", "text"}]
      186 SETTABLEKS                       R23 R26 K25 ["id"]
      188 SETTABLEKS                       R23 R26 K26 ["text"]
      190 FASTCALL2                        TABLE_INSERT R18 R26 ; [+4]
      192 MOVE                             R25 R18
      193 GETIMPORT                        R24 K31 [table.insert]
      195 CALL                             R24 2 0
      196 FORGLOOP                         R19 2 ; [-12]
      198 NEWTABLE                         R19 0 1
      200 DUPTABLE                         R20 K27 [{"id", "text"}]
      201 LOADK                            R21 K32 ["__select__"]
      202 SETTABLEKS                       R21 R20 K25 ["id"]
      204 LOADK                            R21 K33 ["Select token…"]
      205 SETTABLEKS                       R21 R20 K26 ["text"]
      207 SETLIST                          R19 R20 1 [1]
      209 JUMPIFNOT                        R3 ; [+26]
      210 GETUPVAL                         R20 4
      211 GETTABLEKS                       R21 R0 K0 ["tokens"]
      213 MOVE                             R22 R3
      214 CALL                             R20 2 1
      215 MOVE                             R21 R20
      216 LOADNIL                          R22
      217 LOADNIL                          R23
      218 FORGPREP                         R21
      219 DUPTABLE                         R28 K27 [{"id", "text"}]
      220 GETTABLEKS                       R29 R25 K34 ["path"]
      222 SETTABLEKS                       R29 R28 K25 ["id"]
      224 GETTABLEKS                       R29 R25 K35 ["key"]
      226 SETTABLEKS                       R29 R28 K26 ["text"]
      228 FASTCALL2                        TABLE_INSERT R19 R28 ; [+4]
      230 MOVE                             R27 R19
      231 GETIMPORT                        R26 K31 [table.insert]
      233 CALL                             R26 2 0
      234 FORGLOOP                         R21 2 ; [-16]
      236 GETTABLEKS                       R21 R0 K1 ["currentOverride"]
      238 JUMPIFNOTEQKNIL                  R21 ; [+2]
      240 LOADB                            R20 0 +1
      241 LOADB                            R20 1
      242 LOADB                            R21 0
      243 GETUPVAL                         R22 2
      244 GETTABLEKS                       R22 R22 K21 ["Custom"]
      246 JUMPIFNOTEQ                      R5 R22 ; [+30]
      248 GETTABLEKS                       R22 R0 K1 ["currentOverride"]
      250 LOADB                            R21 0
      251 FASTCALL1                        TYPE R22 ; [+3]
      252 MOVE                             R24 R22
      253 GETIMPORT                        R23 K3 [type]
      255 CALL                             R23 1 1
      256 JUMPIFNOTEQKS                    R23 K15 ["table"] ; [+20]
      258 LOADB                            R21 0
      259 GETTABLEKS                       R24 R22 K16 ["Color3"]
      261 FASTCALL1                        TYPEOF R24 ; [+2]
      262 GETIMPORT                        R23 K18 [typeof]
      264 CALL                             R23 1 1
      265 JUMPIFNOTEQKS                    R23 K16 ["Color3"] ; [+11]
      267 GETTABLEKS                       R24 R22 K19 ["Transparency"]
      269 FASTCALL1                        TYPEOF R24 ; [+2]
      270 GETIMPORT                        R23 K18 [typeof]
      272 CALL                             R23 1 1
      273 JUMPIFEQKS                       R23 K20 ["number"] ; [+2]
      275 LOADB                            R21 0 +1
      276 LOADB                            R21 1
      277 GETUPVAL                         R22 1
      278 GETTABLEKS                       R22 R22 K36 ["createElement"]
      280 GETUPVAL                         R23 5
      281 DUPTABLE                         R24 K38 [{"tag"}]
      282 LOADK                            R25 K39 ["col gap-small auto-xy"]
      283 SETTABLEKS                       R25 R24 K37 ["tag"]
      285 DUPTABLE                         R25 K41 [{"HeaderRow"}]
      286 GETUPVAL                         R26 1
      287 GETTABLEKS                       R26 R26 K36 ["createElement"]
      289 GETUPVAL                         R27 5
      290 DUPTABLE                         R28 K43 [{"tag", "LayoutOrder"}]
      291 LOADK                            R29 K44 ["row gap-small auto-xy align-y-center"]
      292 SETTABLEKS                       R29 R28 K37 ["tag"]
      294 LOADN                            R29 1
      295 SETTABLEKS                       R29 R28 K42 ["LayoutOrder"]
      297 DUPTABLE                         R29 K51 [{"Label", "OverrideMode", "PathCategory", "PathValue", "CustomColorPopover", "ResetButton"}]
      298 GETUPVAL                         R30 1
      299 GETTABLEKS                       R30 R30 K36 ["createElement"]
      301 GETUPVAL                         R31 5
      302 DUPTABLE                         R32 K53 [{"tag", "Size", "LayoutOrder"}]
      303 LOADK                            R33 K54 ["auto-y"]
      304 SETTABLEKS                       R33 R32 K37 ["tag"]
      306 GETIMPORT                        R33 K57 [UDim2.fromOffset]
      308 LOADN                            R34 100
      309 LOADN                            R35 0
      310 CALL                             R33 2 1
      311 SETTABLEKS                       R33 R32 K52 ["Size"]
      313 LOADN                            R33 1
      314 SETTABLEKS                       R33 R32 K42 ["LayoutOrder"]
      316 DUPTABLE                         R33 K59 [{"Text"}]
      317 GETUPVAL                         R34 1
      318 GETTABLEKS                       R34 R34 K36 ["createElement"]
      320 GETUPVAL                         R35 6
      321 DUPTABLE                         R36 K60 [{"Text", "tag"}]
      322 GETTABLEKS                       R37 R0 K61 ["tokenKey"]
      324 SETTABLEKS                       R37 R36 K58 ["Text"]
      326 LOADK                            R37 K62 ["auto-xy text-label-small"]
      327 SETTABLEKS                       R37 R36 K37 ["tag"]
      329 CALL                             R34 2 1
      330 SETTABLEKS                       R34 R33 K58 ["Text"]
      332 CALL                             R30 3 1
      333 SETTABLEKS                       R30 R29 K45 ["Label"]
      335 GETUPVAL                         R30 1
      336 GETTABLEKS                       R30 R30 K36 ["createElement"]
      338 GETUPVAL                         R31 7
      339 DUPTABLE                         R32 K67 [{"segments", "value", "size", "onActivated", "LayoutOrder"}]
      340 GETUPVAL                         R33 8
      341 GETTABLEKS                       R33 R33 K68 ["map"]
      343 GETUPVAL                         R34 8
      344 GETTABLEKS                       R34 R34 K69 ["values"]
      346 GETUPVAL                         R35 2
      347 CALL                             R34 1 1
      348 DUPCLOSURE                       R35 K70 [PROTO_14]
      349 CALL                             R33 2 1
      350 SETTABLEKS                       R33 R32 K63 ["segments"]
      352 SETTABLEKS                       R5 R32 K64 ["value"]
      354 GETUPVAL                         R33 9
      355 GETTABLEKS                       R33 R33 K71 ["Small"]
      357 SETTABLEKS                       R33 R32 K65 ["size"]
      359 NEWCLOSURE                       R33 P5
      360 CAPTURE                          UPVAL U2
      361 CAPTURE                          VAL R6
      362 CAPTURE                          VAL R4
      363 CAPTURE                          VAL R0
      364 CAPTURE                          UPVAL U10
      365 SETTABLEKS                       R33 R32 K66 ["onActivated"]
      367 LOADN                            R33 2
      368 SETTABLEKS                       R33 R32 K42 ["LayoutOrder"]
      370 CALL                             R30 2 1
      371 SETTABLEKS                       R30 R29 K46 ["OverrideMode"]
      373 GETUPVAL                         R31 2
      374 GETTABLEKS                       R31 R31 K14 ["Path"]
      376 JUMPIFNOTEQ                      R5 R31 ; [+38]
      378 GETUPVAL                         R30 1
      379 GETTABLEKS                       R30 R30 K36 ["createElement"]
      381 GETUPVAL                         R31 11
      382 GETTABLEKS                       R31 R31 K72 ["Root"]
      384 DUPTABLE                         R32 K77 [{"label", "value", "items", "size", "onItemChanged", "width", "LayoutOrder"}]
      385 LOADK                            R33 K78 [""]
      386 SETTABLEKS                       R33 R32 K73 ["label"]
      388 ORK                              R33 R3 K28 ["__none__"]
      389 SETTABLEKS                       R33 R32 K64 ["value"]
      391 SETTABLEKS                       R18 R32 K74 ["items"]
      393 GETUPVAL                         R33 9
      394 GETTABLEKS                       R33 R33 K71 ["Small"]
      396 SETTABLEKS                       R33 R32 K65 ["size"]
      398 NEWCLOSURE                       R33 P6
      399 CAPTURE                          VAL R4
      400 CAPTURE                          VAL R0
      401 SETTABLEKS                       R33 R32 K75 ["onItemChanged"]
      403 GETIMPORT                        R33 K81 [UDim.new]
      405 LOADN                            R34 0
      406 LOADN                            R35 120
      407 CALL                             R33 2 1
      408 SETTABLEKS                       R33 R32 K76 ["width"]
      410 LOADN                            R33 3
      411 SETTABLEKS                       R33 R32 K42 ["LayoutOrder"]
      413 CALL                             R30 2 1
      414 JUMP                             ; [+1]
      415 LOADNIL                          R30
      416 SETTABLEKS                       R30 R29 K47 ["PathCategory"]
      418 GETUPVAL                         R31 2
      419 GETTABLEKS                       R31 R31 K14 ["Path"]
      421 JUMPIFNOTEQ                      R5 R31 ; [+49]
      423 JUMPIFNOT                        R3 ; [+47]
      424 GETUPVAL                         R30 1
      425 GETTABLEKS                       R30 R30 K36 ["createElement"]
      427 GETUPVAL                         R31 11
      428 GETTABLEKS                       R31 R31 K72 ["Root"]
      430 DUPTABLE                         R32 K77 [{"label", "value", "items", "size", "onItemChanged", "width", "LayoutOrder"}]
      431 LOADK                            R33 K78 [""]
      432 SETTABLEKS                       R33 R32 K73 ["label"]
      434 GETTABLEKS                       R35 R0 K1 ["currentOverride"]
      436 FASTCALL1                        TYPE R35 ; [+2]
      437 GETIMPORT                        R34 K3 [type]
      439 CALL                             R34 1 1
      440 JUMPIFNOTEQKS                    R34 K4 ["string"] ; [+4]
      442 GETTABLEKS                       R33 R0 K1 ["currentOverride"]
      444 JUMP                             ; [+1]
      445 LOADK                            R33 K32 ["__select__"]
      446 SETTABLEKS                       R33 R32 K64 ["value"]
      448 SETTABLEKS                       R19 R32 K74 ["items"]
      450 GETUPVAL                         R33 9
      451 GETTABLEKS                       R33 R33 K71 ["Small"]
      453 SETTABLEKS                       R33 R32 K65 ["size"]
      455 NEWCLOSURE                       R33 P7
      456 CAPTURE                          VAL R0
      457 SETTABLEKS                       R33 R32 K75 ["onItemChanged"]
      459 GETIMPORT                        R33 K81 [UDim.new]
      461 LOADN                            R34 0
      462 LOADN                            R35 200
      463 CALL                             R33 2 1
      464 SETTABLEKS                       R33 R32 K76 ["width"]
      466 LOADN                            R33 4
      467 SETTABLEKS                       R33 R32 K42 ["LayoutOrder"]
      469 CALL                             R30 2 1
      470 JUMP                             ; [+1]
      471 LOADNIL                          R30
      472 SETTABLEKS                       R30 R29 K48 ["PathValue"]
      474 JUMPIFNOT                        R21 ; [+444]
      475 GETUPVAL                         R30 1
      476 GETTABLEKS                       R30 R30 K36 ["createElement"]
      478 GETUPVAL                         R31 12
      479 GETTABLEKS                       R31 R31 K72 ["Root"]
      481 DUPTABLE                         R32 K83 [{"isOpen"}]
      482 SETTABLEKS                       R7 R32 K82 ["isOpen"]
      484 DUPTABLE                         R33 K86 [{"Anchor", "Content"}]
      485 GETUPVAL                         R34 1
      486 GETTABLEKS                       R34 R34 K36 ["createElement"]
      488 GETUPVAL                         R35 12
      489 GETTABLEKS                       R35 R35 K84 ["Anchor"]
      491 DUPTABLE                         R36 K87 [{"LayoutOrder"}]
      492 LOADN                            R37 5
      493 SETTABLEKS                       R37 R36 K42 ["LayoutOrder"]
      495 GETUPVAL                         R37 1
      496 GETTABLEKS                       R37 R37 K36 ["createElement"]
      498 GETUPVAL                         R38 5
      499 DUPTABLE                         R39 K88 [{"onActivated", "tag"}]
      500 NEWCLOSURE                       R40 P8
      501 CAPTURE                          VAL R7
      502 CAPTURE                          VAL R8
      503 CAPTURE                          VAL R10
      504 CAPTURE                          VAL R0
      505 CAPTURE                          VAL R13
      506 CAPTURE                          VAL R12
      507 SETTABLEKS                       R40 R39 K66 ["onActivated"]
      509 LOADK                            R40 K89 ["row align-y-center gap-small size-2500-800 padding-x-small radius-medium bg-shift-200 clip"]
      510 SETTABLEKS                       R40 R39 K37 ["tag"]
      512 DUPTABLE                         R40 K92 [{"Swatch", "HexLabel"}]
      513 GETUPVAL                         R41 1
      514 GETTABLEKS                       R41 R41 K36 ["createElement"]
      516 GETUPVAL                         R42 5
      517 DUPTABLE                         R43 K93 [{"LayoutOrder", "tag"}]
      518 LOADN                            R44 1
      519 SETTABLEKS                       R44 R43 K42 ["LayoutOrder"]
      521 LOADK                            R44 K94 ["radius-small size-500-500"]
      522 SETTABLEKS                       R44 R43 K37 ["tag"]
      524 DUPTABLE                         R44 K97 [{"Checkerboard", "ColorOverlay"}]
      525 GETUPVAL                         R45 1
      526 GETTABLEKS                       R45 R45 K36 ["createElement"]
      528 GETUPVAL                         R46 13
      529 DUPTABLE                         R47 K102 [{"Image", "ScaleType", "TileSize", "tag", "ZIndex"}]
      530 LOADK                            R48 K103 ["component_assets/checkerboard_12"]
      531 SETTABLEKS                       R48 R47 K98 ["Image"]
      533 GETIMPORT                        R48 K106 [Enum.ScaleType.Tile]
      535 SETTABLEKS                       R48 R47 K99 ["ScaleType"]
      537 GETIMPORT                        R48 K57 [UDim2.fromOffset]
      539 LOADN                            R49 10
      540 LOADN                            R50 10
      541 CALL                             R48 2 1
      542 SETTABLEKS                       R48 R47 K100 ["TileSize"]
      544 LOADK                            R48 K107 ["size-full radius-small"]
      545 SETTABLEKS                       R48 R47 K37 ["tag"]
      547 LOADN                            R48 1
      548 SETTABLEKS                       R48 R47 K101 ["ZIndex"]
      550 CALL                             R45 2 1
      551 SETTABLEKS                       R45 R44 K95 ["Checkerboard"]
      553 GETUPVAL                         R45 1
      554 GETTABLEKS                       R45 R45 K36 ["createElement"]
      556 GETUPVAL                         R46 5
      557 DUPTABLE                         R47 K109 [{"tag", "backgroundStyle", "ZIndex"}]
      558 LOADK                            R48 K107 ["size-full radius-small"]
      559 SETTABLEKS                       R48 R47 K37 ["tag"]
      561 DUPTABLE                         R48 K110 [{"Color3", "Transparency"}]
      562 SETTABLEKS                       R15 R48 K16 ["Color3"]
      564 SUBRK                            R49 R111 K16 ["Color3"]
      565 SETTABLEKS                       R49 R48 K19 ["Transparency"]
      567 SETTABLEKS                       R48 R47 K108 ["backgroundStyle"]
      569 LOADN                            R48 2
      570 SETTABLEKS                       R48 R47 K101 ["ZIndex"]
      572 CALL                             R45 2 1
      573 SETTABLEKS                       R45 R44 K96 ["ColorOverlay"]
      575 CALL                             R41 3 1
      576 SETTABLEKS                       R41 R40 K90 ["Swatch"]
      578 GETUPVAL                         R41 1
      579 GETTABLEKS                       R41 R41 K36 ["createElement"]
      581 GETUPVAL                         R42 6
      582 DUPTABLE                         R43 K112 [{"LayoutOrder", "Text", "tag"}]
      583 LOADN                            R44 2
      584 SETTABLEKS                       R44 R43 K42 ["LayoutOrder"]
      586 SETTABLEKS                       R17 R43 K58 ["Text"]
      588 LOADK                            R44 K113 ["auto-xy size-0-0 text-body-small text-truncate-end content-emphasis"]
      589 SETTABLEKS                       R44 R43 K37 ["tag"]
      591 CALL                             R41 2 1
      592 SETTABLEKS                       R41 R40 K91 ["HexLabel"]
      594 CALL                             R37 3 -1
      595 CALL                             R34 -1 1
      596 SETTABLEKS                       R34 R33 K84 ["Anchor"]
      598 GETUPVAL                         R34 1
      599 GETTABLEKS                       R34 R34 K36 ["createElement"]
      601 GETUPVAL                         R35 12
      602 GETTABLEKS                       R35 R35 K85 ["Content"]
      604 DUPTABLE                         R36 K117 [{"side", "hasArrow", "onPressedOutside"}]
      605 GETUPVAL                         R37 14
      606 GETTABLEKS                       R37 R37 K118 ["Right"]
      608 SETTABLEKS                       R37 R36 K114 ["side"]
      610 LOADB                            R37 1
      611 SETTABLEKS                       R37 R36 K115 ["hasArrow"]
      613 NEWCLOSURE                       R37 P9
      614 CAPTURE                          VAL R8
      615 CAPTURE                          VAL R10
      616 SETTABLEKS                       R37 R36 K116 ["onPressedOutside"]
      618 JUMPIFNOT                        R7 ; [+294]
      619 JUMPIFNOT                        R9 ; [+293]
      620 GETUPVAL                         R37 1
      621 GETTABLEKS                       R37 R37 K36 ["createElement"]
      623 GETUPVAL                         R38 5
      624 DUPTABLE                         R39 K119 [{"tag", "Size"}]
      625 LOADK                            R40 K120 ["col gap-medium padding-medium"]
      626 SETTABLEKS                       R40 R39 K37 ["tag"]
      628 GETIMPORT                        R40 K57 [UDim2.fromOffset]
      630 LOADN                            R41 44
      631 LOADN                            R42 44
      632 CALL                             R40 2 1
      633 SETTABLEKS                       R40 R39 K52 ["Size"]
      635 DUPTABLE                         R40 K124 [{"Hint", "Picker", "Actions"}]
      636 GETUPVAL                         R41 1
      637 GETTABLEKS                       R41 R41 K36 ["createElement"]
      639 GETUPVAL                         R42 6
      640 DUPTABLE                         R43 K125 [{"Text", "tag", "LayoutOrder"}]
      641 LOADK                            R44 K126 ["Color + alpha → token Color3 and Transparency."]
      642 SETTABLEKS                       R44 R43 K58 ["Text"]
      644 LOADK                            R44 K127 ["auto-xy text-caption-small text-subtle"]
      645 SETTABLEKS                       R44 R43 K37 ["tag"]
      647 LOADN                            R44 0
      648 SETTABLEKS                       R44 R43 K42 ["LayoutOrder"]
      650 CALL                             R41 2 1
      651 SETTABLEKS                       R41 R40 K121 ["Hint"]
      653 GETUPVAL                         R41 1
      654 GETTABLEKS                       R41 R41 K36 ["createElement"]
      656 GETUPVAL                         R42 15
      657 DUPTABLE                         R43 K132 [{"key", "initialColor", "initialAlpha", "onColorChanged", "onAlphaChanged", "LayoutOrder"}]
      658 LOADK                            R45 K133 ["%*-popover-%*"]
      659 GETTABLEKS                       R47 R0 K134 ["tokenPath"]
      661 MOVE                             R48 R11
      662 NAMECALL                         R45 R45 K135 ["format"]
      664 CALL                             R45 3 1
      665 MOVE                             R44 R45
      666 SETTABLEKS                       R44 R43 K35 ["key"]
      668 GETTABLEKS                       R44 R9 K16 ["Color3"]
      670 SETTABLEKS                       R44 R43 K128 ["initialColor"]
      672 GETTABLEKS                       R44 R9 K136 ["alpha"]
      674 SETTABLEKS                       R44 R43 K129 ["initialAlpha"]
      676 NEWCLOSURE                       R44 P10
      677 CAPTURE                          VAL R10
      678 SETTABLEKS                       R44 R43 K130 ["onColorChanged"]
      680 NEWCLOSURE                       R44 P11
      681 CAPTURE                          VAL R10
      682 SETTABLEKS                       R44 R43 K131 ["onAlphaChanged"]
      684 LOADN                            R44 1
      685 SETTABLEKS                       R44 R43 K42 ["LayoutOrder"]
      687 CALL                             R41 2 1
      688 SETTABLEKS                       R41 R40 K122 ["Picker"]
      690 GETUPVAL                         R41 1
      691 GETTABLEKS                       R41 R41 K36 ["createElement"]
      693 GETUPVAL                         R42 5
      694 DUPTABLE                         R43 K43 [{"tag", "LayoutOrder"}]
      695 LOADK                            R44 K137 ["row align-x-right gap-small size-full-0 auto-y"]
      696 SETTABLEKS                       R44 R43 K37 ["tag"]
      698 LOADN                            R44 2
      699 SETTABLEKS                       R44 R43 K42 ["LayoutOrder"]
      701 DUPTABLE                         R44 K140 [{"CancelButton", "DoneButton"}]
      702 GETUPVAL                         R45 1
      703 GETTABLEKS                       R45 R45 K36 ["createElement"]
      705 GETUPVAL                         R46 16
      706 DUPTABLE                         R47 K142 [{"onActivated", "Size", "AutomaticSize"}]
      707 NEWCLOSURE                       R48 P12
      708 CAPTURE                          VAL R13
      709 CAPTURE                          VAL R0
      710 CAPTURE                          VAL R8
      711 CAPTURE                          VAL R10
      712 SETTABLEKS                       R48 R47 K66 ["onActivated"]
      714 GETIMPORT                        R48 K143 [UDim2.new]
      716 LOADN                            R49 0
      717 LOADN                            R50 0
      718 LOADN                            R51 0
      719 LOADN                            R52 0
      720 CALL                             R48 4 1
      721 SETTABLEKS                       R48 R47 K52 ["Size"]
      723 GETIMPORT                        R48 K145 [Enum.AutomaticSize.XY]
      725 SETTABLEKS                       R48 R47 K141 ["AutomaticSize"]
      727 DUPTABLE                         R48 K147 [{"CancelLabel"}]
      728 GETUPVAL                         R49 1
      729 GETTABLEKS                       R49 R49 K36 ["createElement"]
      731 GETUPVAL                         R50 5
      732 DUPTABLE                         R51 K149 [{"tag", "backgroundStyle", "stroke"}]
      733 LOADK                            R52 K150 ["auto-xy padding-small radius-small"]
      734 SETTABLEKS                       R52 R51 K37 ["tag"]
      736 GETTABLEKS                       R52 R14 K151 ["Color"]
      738 GETTABLEKS                       R52 R52 K8 ["Surface"]
      740 GETTABLEKS                       R52 R52 K152 ["Surface_100"]
      742 SETTABLEKS                       R52 R51 K108 ["backgroundStyle"]
      744 DUPTABLE                         R52 K154 [{"Color", "Transparency", "Thickness"}]
      745 GETTABLEKS                       R53 R14 K151 ["Color"]
      747 GETTABLEKS                       R53 R53 K155 ["System"]
      749 GETTABLEKS                       R53 R53 K156 ["Neutral"]
      751 GETTABLEKS                       R53 R53 K16 ["Color3"]
      753 SETTABLEKS                       R53 R52 K151 ["Color"]
      755 GETTABLEKS                       R53 R14 K151 ["Color"]
      757 GETTABLEKS                       R53 R53 K155 ["System"]
      759 GETTABLEKS                       R53 R53 K156 ["Neutral"]
      761 GETTABLEKS                       R53 R53 K19 ["Transparency"]
      763 SETTABLEKS                       R53 R52 K19 ["Transparency"]
      765 LOADN                            R53 1
      766 SETTABLEKS                       R53 R52 K153 ["Thickness"]
      768 SETTABLEKS                       R52 R51 K148 ["stroke"]
      770 DUPTABLE                         R52 K59 [{"Text"}]
      771 GETUPVAL                         R53 1
      772 GETTABLEKS                       R53 R53 K36 ["createElement"]
      774 GETUPVAL                         R54 6
      775 DUPTABLE                         R55 K159 [{"Text", "fontStyle", "textStyle", "tag"}]
      776 LOADK                            R56 K160 ["Cancel"]
      777 SETTABLEKS                       R56 R55 K58 ["Text"]
      779 GETTABLEKS                       R56 R14 K161 ["Typography"]
      781 GETTABLEKS                       R56 R56 K162 ["BodyMedium"]
      783 SETTABLEKS                       R56 R55 K157 ["fontStyle"]
      785 GETTABLEKS                       R56 R14 K151 ["Color"]
      787 GETTABLEKS                       R56 R56 K85 ["Content"]
      789 GETTABLEKS                       R56 R56 K163 ["Default"]
      791 SETTABLEKS                       R56 R55 K158 ["textStyle"]
      793 LOADK                            R56 K164 ["auto-xy"]
      794 SETTABLEKS                       R56 R55 K37 ["tag"]
      796 CALL                             R53 2 1
      797 SETTABLEKS                       R53 R52 K58 ["Text"]
      799 CALL                             R49 3 1
      800 SETTABLEKS                       R49 R48 K146 ["CancelLabel"]
      802 CALL                             R45 3 1
      803 SETTABLEKS                       R45 R44 K138 ["CancelButton"]
      805 GETUPVAL                         R45 1
      806 GETTABLEKS                       R45 R45 K36 ["createElement"]
      808 GETUPVAL                         R46 16
      809 DUPTABLE                         R47 K142 [{"onActivated", "Size", "AutomaticSize"}]
      810 NEWCLOSURE                       R48 P13
      811 CAPTURE                          VAL R9
      812 CAPTURE                          VAL R0
      813 CAPTURE                          VAL R8
      814 CAPTURE                          VAL R10
      815 SETTABLEKS                       R48 R47 K66 ["onActivated"]
      817 GETIMPORT                        R48 K143 [UDim2.new]
      819 LOADN                            R49 0
      820 LOADN                            R50 0
      821 LOADN                            R51 0
      822 LOADN                            R52 0
      823 CALL                             R48 4 1
      824 SETTABLEKS                       R48 R47 K52 ["Size"]
      826 GETIMPORT                        R48 K145 [Enum.AutomaticSize.XY]
      828 SETTABLEKS                       R48 R47 K141 ["AutomaticSize"]
      830 DUPTABLE                         R48 K166 [{"DoneLabel"}]
      831 GETUPVAL                         R49 1
      832 GETTABLEKS                       R49 R49 K36 ["createElement"]
      834 GETUPVAL                         R50 5
      835 DUPTABLE                         R51 K149 [{"tag", "backgroundStyle", "stroke"}]
      836 LOADK                            R52 K150 ["auto-xy padding-small radius-small"]
      837 SETTABLEKS                       R52 R51 K37 ["tag"]
      839 GETTABLEKS                       R52 R14 K151 ["Color"]
      841 GETTABLEKS                       R52 R52 K8 ["Surface"]
      843 GETTABLEKS                       R52 R52 K152 ["Surface_100"]
      845 SETTABLEKS                       R52 R51 K108 ["backgroundStyle"]
      847 DUPTABLE                         R52 K154 [{"Color", "Transparency", "Thickness"}]
      848 GETTABLEKS                       R53 R14 K151 ["Color"]
      850 GETTABLEKS                       R53 R53 K155 ["System"]
      852 GETTABLEKS                       R53 R53 K156 ["Neutral"]
      854 GETTABLEKS                       R53 R53 K16 ["Color3"]
      856 SETTABLEKS                       R53 R52 K151 ["Color"]
      858 GETTABLEKS                       R53 R14 K151 ["Color"]
      860 GETTABLEKS                       R53 R53 K155 ["System"]
      862 GETTABLEKS                       R53 R53 K156 ["Neutral"]
      864 GETTABLEKS                       R53 R53 K19 ["Transparency"]
      866 SETTABLEKS                       R53 R52 K19 ["Transparency"]
      868 LOADN                            R53 1
      869 SETTABLEKS                       R53 R52 K153 ["Thickness"]
      871 SETTABLEKS                       R52 R51 K148 ["stroke"]
      873 DUPTABLE                         R52 K59 [{"Text"}]
      874 GETUPVAL                         R53 1
      875 GETTABLEKS                       R53 R53 K36 ["createElement"]
      877 GETUPVAL                         R54 6
      878 DUPTABLE                         R55 K159 [{"Text", "fontStyle", "textStyle", "tag"}]
      879 LOADK                            R56 K167 ["Done"]
      880 SETTABLEKS                       R56 R55 K58 ["Text"]
      882 GETTABLEKS                       R56 R14 K161 ["Typography"]
      884 GETTABLEKS                       R56 R56 K162 ["BodyMedium"]
      886 SETTABLEKS                       R56 R55 K157 ["fontStyle"]
      888 GETTABLEKS                       R56 R14 K151 ["Color"]
      890 GETTABLEKS                       R56 R56 K85 ["Content"]
      892 GETTABLEKS                       R56 R56 K163 ["Default"]
      894 SETTABLEKS                       R56 R55 K158 ["textStyle"]
      896 LOADK                            R56 K164 ["auto-xy"]
      897 SETTABLEKS                       R56 R55 K37 ["tag"]
      899 CALL                             R53 2 1
      900 SETTABLEKS                       R53 R52 K58 ["Text"]
      902 CALL                             R49 3 1
      903 SETTABLEKS                       R49 R48 K165 ["DoneLabel"]
      905 CALL                             R45 3 1
      906 SETTABLEKS                       R45 R44 K139 ["DoneButton"]
      908 CALL                             R41 3 1
      909 SETTABLEKS                       R41 R40 K123 ["Actions"]
      911 CALL                             R37 3 1
      912 JUMP                             ; [+1]
      913 LOADNIL                          R37
      914 CALL                             R34 3 1
      915 SETTABLEKS                       R34 R33 K85 ["Content"]
      917 CALL                             R30 3 1
      918 JUMP                             ; [+1]
      919 LOADNIL                          R30
      920 SETTABLEKS                       R30 R29 K49 ["CustomColorPopover"]
      922 JUMPIFNOT                        R20 ; [+30]
      923 GETUPVAL                         R30 1
      924 GETTABLEKS                       R30 R30 K36 ["createElement"]
      926 GETUPVAL                         R31 17
      927 DUPTABLE                         R32 K169 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      928 LOADK                            R33 K170 ["Reset"]
      929 SETTABLEKS                       R33 R32 K26 ["text"]
      931 GETUPVAL                         R33 9
      932 GETTABLEKS                       R33 R33 K71 ["Small"]
      934 SETTABLEKS                       R33 R32 K65 ["size"]
      936 GETUPVAL                         R33 18
      937 GETTABLEKS                       R33 R33 K171 ["Standard"]
      939 SETTABLEKS                       R33 R32 K168 ["variant"]
      941 NEWCLOSURE                       R33 P14
      942 CAPTURE                          VAL R6
      943 CAPTURE                          UPVAL U2
      944 CAPTURE                          VAL R4
      945 CAPTURE                          VAL R0
      946 SETTABLEKS                       R33 R32 K66 ["onActivated"]
      948 LOADN                            R33 6
      949 SETTABLEKS                       R33 R32 K42 ["LayoutOrder"]
      951 CALL                             R30 2 1
      952 JUMP                             ; [+1]
      953 LOADNIL                          R30
      954 SETTABLEKS                       R30 R29 K50 ["ResetButton"]
      956 CALL                             R26 3 1
      957 SETTABLEKS                       R26 R25 K40 ["HeaderRow"]
      959 CALL                             R22 3 -1
      960 RETURN                           R22 -1

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
       32 DUPTABLE                         R8 K4 [{"tag"}]
       33 LOADK                            R9 K5 ["col gap-xsmall auto-xy padding-medium"]
       34 SETTABLEKS                       R9 R8 K3 ["tag"]
       36 GETUPVAL                         R9 6
       37 GETTABLEKS                       R9 R9 K6 ["map"]
       39 MOVE                             R10 R4
       40 NEWCLOSURE                       R11 P3
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          UPVAL U7
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R3
       46 CALL                             R9 2 -1
       47 CALL                             R6 -1 -1
       48 RETURN                           R6 -1

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
      130 DUPTABLE                         R19 K33 [{"None", "Path", "Custom"}]
      131 LOADK                            R20 K30 ["None"]
      132 SETTABLEKS                       R20 R19 K30 ["None"]
      134 LOADK                            R20 K31 ["Path"]
      135 SETTABLEKS                       R20 R19 K31 ["Path"]
      137 LOADK                            R20 K32 ["Custom"]
      138 SETTABLEKS                       R20 R19 K32 ["Custom"]
      140 DUPCLOSURE                       R20 K34 [PROTO_0]
      141 DUPCLOSURE                       R21 K35 [PROTO_1]
      142 CAPTURE                          VAL R19
      143 DUPCLOSURE                       R22 K36 [PROTO_2]
      144 DUPCLOSURE                       R23 K37 [PROTO_4]
      145 DUPCLOSURE                       R24 K38 [PROTO_6]
      146 DUPCLOSURE                       R25 K39 [PROTO_7]
      147 DUPCLOSURE                       R26 K40 [PROTO_8]
      148 CAPTURE                          VAL R14
      149 DUPCLOSURE                       R27 K41 [PROTO_28]
      150 CAPTURE                          VAL R22
      151 CAPTURE                          VAL R3
      152 CAPTURE                          VAL R19
      153 CAPTURE                          VAL R18
      154 CAPTURE                          VAL R23
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R9
      160 CAPTURE                          VAL R26
      161 CAPTURE                          VAL R7
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R8
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R10
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R5
      169 DUPCLOSURE                       R28 K42 [PROTO_36]
      170 CAPTURE                          VAL R18
      171 CAPTURE                          VAL R17
      172 CAPTURE                          VAL R3
      173 CAPTURE                          VAL R24
      174 CAPTURE                          VAL R15
      175 CAPTURE                          VAL R2
      176 CAPTURE                          VAL R27
      177 DUPTABLE                         R29 K45 [{"summary", "stories"}]
      178 LOADK                            R30 K46 ["Configure token overrides (path remap or custom color) for all other stories"]
      179 SETTABLEKS                       R30 R29 K43 ["summary"]
      181 GETTABLEKS                       R30 R2 K47 ["map"]
      183 NEWTABLE                         R31 0 14
      185 LOADK                            R32 K48 ["Surface"]
      186 LOADK                            R33 K49 ["Shift"]
      187 LOADK                            R34 K50 ["OverMedia"]
      188 LOADK                            R35 K51 ["ActionAlert"]
      189 LOADK                            R36 K52 ["ActionEmphasis"]
      190 LOADK                            R37 K53 ["ActionSoftEmphasis"]
      191 LOADK                            R38 K54 ["ActionStandard"]
      192 LOADK                            R39 K55 ["ActionSubtle"]
      193 LOADK                            R40 K56 ["ActionLink"]
      194 LOADK                            R41 K57 ["ActionUtility"]
      195 LOADK                            R42 K58 ["Content"]
      196 LOADK                            R43 K59 ["Stroke"]
      197 LOADK                            R44 K60 ["System"]
      198 LOADK                            R45 K61 ["Common"]
      199 SETLIST                          R31 R32 14 [1]
      201 DUPCLOSURE                       R32 K62 [PROTO_37]
      202 CAPTURE                          VAL R18
      203 CAPTURE                          VAL R17
      204 CAPTURE                          VAL R3
      205 CAPTURE                          VAL R24
      206 CAPTURE                          VAL R15
      207 CAPTURE                          VAL R2
      208 CAPTURE                          VAL R27
      209 CALL                             R30 2 1
      210 SETTABLEKS                       R30 R29 K44 ["stories"]
      212 RETURN                           R29 1
