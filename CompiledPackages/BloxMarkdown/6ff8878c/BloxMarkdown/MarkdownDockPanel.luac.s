PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 LOADB                            R3 0
        4 NAMECALL                         R0 R0 K2 ["DefineFastFlag"]
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 GETIMPORT                        R1 K1 [pcall]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 CALL                             R1 1 2
       10 JUMPIFNOT                        R1 ; [+2]
       11 MOVE                             R3 R2
       12 RETURN                           R3 1
       13 LOADB                            R3 0
       14 RETURN                           R3 1

PROTO_3:
        0 GETIMPORT                        R2 K2 [os.date]
        2 LOADK                            R3 K3 ["*t"]
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 GETIMPORT                        R3 K6 [string.format]
        7 LOADK                            R4 K7 ["Version %d - %02d:%02d %s %d"]
        8 MOVE                             R5 R0
        9 GETTABLEKS                       R6 R2 K8 ["hour"]
       11 GETTABLEKS                       R7 R2 K9 ["min"]
       13 GETUPVAL                         R9 0
       14 GETTABLEKS                       R10 R2 K10 ["month"]
       16 GETTABLE                         R8 R9 R10
       17 GETTABLEKS                       R9 R2 K11 ["day"]
       19 CALL                             R3 6 -1
       20 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFEQKS                       R2 K0 ["code"] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 CALL                             R0 0 -1
        8 RETURN                           R0 -1
        9 GETUPVAL                         R0 1
       10 GETUPVAL                         R1 2
       11 CALL                             R0 1 -1
       12 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 JUMPIFNOTEQKS                    R0 K0 ["code"] ; [+15]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 3
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 4
       12 LOADNIL                          R3
       13 SETTABLEKS                       R3 R2 K1 ["current"]
       15 GETUPVAL                         R2 5
       16 LOADK                            R3 K2 ["markdown"]
       17 CALL                             R2 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 4
       20 GETTABLEKS                       R2 R2 K1 ["current"]
       22 JUMPIFNOT                        R2 ; [+5]
       23 GETUPVAL                         R1 4
       24 GETTABLEKS                       R1 R1 K1 ["current"]
       26 CALL                             R1 0 1
       27 JUMP                             ; [+3]
       28 GETUPVAL                         R1 0
       29 GETUPVAL                         R2 2
       30 CALL                             R1 1 1
       31 GETUPVAL                         R2 6
       32 MOVE                             R3 R1
       33 CALL                             R2 1 0
       34 GETUPVAL                         R2 4
       35 LOADNIL                          R3
       36 SETTABLEKS                       R3 R2 K1 ["current"]
       38 GETUPVAL                         R2 5
       39 LOADK                            R3 K0 ["code"]
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["onDirtyChanged"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 MOVE                             R2 R1
        7 MOVE                             R3 R0
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["markdown"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 1
        9 SETTABLEKS                       R1 R2 K1 ["current"]
       11 GETUPVAL                         R2 2
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 3
       15 GETUPVAL                         R3 4
       16 CALL                             R2 1 1
       17 JUMPIFNOT                        R2 ; [+12]
       18 GETUPVAL                         R2 5
       19 LOADB                            R3 0
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 3
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K2 ["onDirtyChanged"]
       25 CALL                             R2 1 1
       26 JUMPIFNOT                        R2 ; [+3]
       27 MOVE                             R3 R2
       28 LOADB                            R4 0
       29 CALL                             R3 1 0
       30 GETUPVAL                         R2 3
       31 GETUPVAL                         R3 6
       32 CALL                             R2 1 1
       33 JUMPIFNOTEQKS                    R2 K0 ["markdown"] ; [+8]
       35 GETUPVAL                         R2 7
       36 MOVE                             R3 R1
       37 CALL                             R2 1 0
       38 GETUPVAL                         R2 8
       39 LOADNIL                          R3
       40 SETTABLEKS                       R3 R2 K1 ["current"]
       42 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R1 1 1
        6 JUMPIF                           R1 ; [+12]
        7 GETUPVAL                         R1 3
        8 LOADB                            R2 1
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R2 4
       12 GETTABLEKS                       R2 R2 K0 ["onDirtyChanged"]
       14 CALL                             R1 1 1
       15 JUMPIFNOT                        R1 ; [+3]
       16 MOVE                             R2 R1
       17 LOADB                            R3 1
       18 CALL                             R2 1 0
       19 GETUPVAL                         R1 1
       20 GETUPVAL                         R2 4
       21 GETTABLEKS                       R2 R2 K1 ["onMarkdownChanged"]
       23 CALL                             R1 1 1
       24 JUMPIFNOT                        R1 ; [+3]
       25 MOVE                             R2 R1
       26 MOVE                             R3 R0
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["title"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 LOADB                            R2 0
        6 JUMPIFEQKNIL                     R1 ; [+5]
        8 JUMPIFNOTEQKS                    R1 K1 [""] ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["title"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 ORK                              R1 R2 K0 [""]
        6 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["action"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 LOADB                            R2 0
        6 JUMPIFEQKNIL                     R1 ; [+5]
        8 JUMPIFNOTEQKS                    R1 K1 [""] ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["action"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 ORK                              R1 R2 K0 [""]
        6 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isActionDisabled"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADK                            R2 K1 ["button variant-standard size-toolbar state-disabled"]
        7 RETURN                           R2 1
        8 LOADK                            R2 K2 ["button variant-standard size-toolbar state-enabled"]
        9 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isActionDisabled"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADK                            R2 K1 ["button-label variant-standard state-disabled"]
        7 RETURN                           R2 1
        8 LOADK                            R2 K2 ["button-label variant-standard"]
        9 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["isActionDisabled"]
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["onAction"]
       11 CALL                             R0 1 1
       12 JUMPIFNOT                        R0 ; [+2]
       13 MOVE                             R1 R0
       14 CALL                             R1 0 0
       15 GETUPVAL                         R1 2
       16 LOADB                            R2 0
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 0
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K2 ["onDirtyChanged"]
       22 CALL                             R1 1 1
       23 JUMPIFNOT                        R1 ; [+3]
       24 MOVE                             R2 R1
       25 LOADB                            R3 0
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["secondaryAction"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 LOADB                            R2 0
        6 JUMPIFEQKNIL                     R1 ; [+5]
        8 JUMPIFNOTEQKS                    R1 K1 [""] ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["secondaryAction"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 ORK                              R1 R2 K0 [""]
        6 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isActionDisabled"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADK                            R2 K1 ["button variant-utility size-toolbar state-disabled"]
        7 RETURN                           R2 1
        8 LOADK                            R2 K2 ["button variant-utility size-toolbar state-enabled"]
        9 RETURN                           R2 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isActionDisabled"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADK                            R2 K1 ["button-label variant-utility state-disabled"]
        7 RETURN                           R2 1
        8 LOADK                            R2 K2 ["button-label variant-utility"]
        9 RETURN                           R2 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["isActionDisabled"]
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R1 R1 K1 ["current"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 0
       13 GETUPVAL                         R1 4
       14 CALL                             R0 1 1
       15 JUMPIFNOTEQKS                    R0 K2 ["markdown"] ; [+10]
       17 GETUPVAL                         R0 5
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R1 R1 K1 ["current"]
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 6
       23 LOADNIL                          R1
       24 SETTABLEKS                       R1 R0 K1 ["current"]
       26 GETUPVAL                         R0 7
       27 LOADB                            R1 0
       28 CALL                             R0 1 0
       29 GETUPVAL                         R0 0
       30 GETUPVAL                         R1 1
       31 GETTABLEKS                       R1 R1 K3 ["onDirtyChanged"]
       33 CALL                             R0 1 1
       34 JUMPIFNOT                        R0 ; [+3]
       35 MOVE                             R1 R0
       36 LOADB                            R2 0
       37 CALL                             R1 1 0
       38 GETUPVAL                         R0 0
       39 GETUPVAL                         R1 1
       40 GETTABLEKS                       R1 R1 K4 ["onSecondaryAction"]
       42 CALL                             R0 1 1
       43 JUMPIFNOT                        R0 ; [+2]
       44 MOVE                             R1 R0
       45 CALL                             R1 0 0
       46 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["revisions"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 LOADB                            R2 0
        6 FASTCALL1                        TYPE R1 ; [+3]
        7 MOVE                             R4 R1
        8 GETIMPORT                        R3 K2 [type]
       10 CALL                             R3 1 1
       11 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+7]
       13 LENGTH                           R3 R1
       14 LOADN                            R4 1
       15 JUMPIFLE                         R4 R3 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["revisions"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 FASTCALL1                        TYPE R1 ; [+3]
        6 MOVE                             R3 R1
        7 GETIMPORT                        R2 K2 [type]
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+5]
       12 LENGTH                           R2 R1
       13 LOADN                            R3 1
       14 JUMPIFNOTLT                      R2 R3 ; [+4]
       16 NEWTABLE                         R2 0 0
       18 RETURN                           R2 1
       19 NEWTABLE                         R2 0 0
       21 MOVE                             R3 R1
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 FORGPREP                         R3
       25 MOVE                             R9 R2
       26 GETUPVAL                         R10 1
       27 MOVE                             R11 R6
       28 GETTABLEKS                       R12 R7 K4 ["createdAt"]
       30 CALL                             R10 2 -1
       31 FASTCALL                         TABLE_INSERT ; [+2]
       32 GETIMPORT                        R8 K6 [table.insert]
       34 CALL                             R8 -1 0
       35 FORGLOOP                         R3 2 ; [-11]
       37 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["revisions"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 FASTCALL1                        TYPE R2 ; [+3]
        9 MOVE                             R4 R2
       10 GETIMPORT                        R3 K2 [type]
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+7]
       15 LOADN                            R3 1
       16 JUMPIFLT                         R1 R3 ; [+4]
       18 LENGTH                           R3 R2
       19 JUMPIFNOTLT                      R3 R1 ; [+22]
       21 FASTCALL1                        TYPE R2 ; [+3]
       22 MOVE                             R4 R2
       23 GETIMPORT                        R3 K2 [type]
       25 CALL                             R3 1 1
       26 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+13]
       28 LENGTH                           R3 R2
       29 LOADN                            R4 0
       30 JUMPIFNOTLT                      R4 R3 ; [+9]
       32 GETUPVAL                         R3 2
       33 LENGTH                           R4 R2
       34 LENGTH                           R6 R2
       35 GETTABLE                         R5 R2 R6
       36 GETTABLEKS                       R5 R5 K4 ["createdAt"]
       38 CALL                             R3 2 -1
       39 RETURN                           R3 -1
       40 LOADK                            R3 K5 [""]
       41 RETURN                           R3 1
       42 GETUPVAL                         R3 2
       43 MOVE                             R4 R1
       44 GETTABLE                         R5 R2 R1
       45 GETTABLEKS                       R5 R5 K4 ["createdAt"]
       47 CALL                             R3 2 -1
       48 RETURN                           R3 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["revisions"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 FASTCALL1                        TYPE R2 ; [+3]
        9 MOVE                             R4 R2
       10 GETIMPORT                        R3 K2 [type]
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+4]
       15 LENGTH                           R3 R2
       16 JUMPIFNOTEQKN                    R3 K4 [0] ; [+7]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K5 ["versionsText"]
       21 MOVE                             R4 R0
       22 CALL                             R3 1 -1
       23 RETURN                           R3 -1
       24 LOADN                            R4 1
       25 JUMPIFLT                         R1 R4 ; [+4]
       27 LENGTH                           R4 R2
       28 JUMPIFNOTLT                      R4 R1 ; [+3]
       30 LENGTH                           R3 R2
       31 JUMP                             ; [+1]
       32 MOVE                             R3 R1
       33 GETUPVAL                         R4 2
       34 MOVE                             R5 R3
       35 GETTABLE                         R6 R2 R3
       36 GETTABLEKS                       R6 R6 K6 ["createdAt"]
       38 CALL                             R4 2 -1
       39 RETURN                           R4 -1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["revisions"]
        4 CALL                             R1 1 1
        5 FASTCALL1                        TYPE R1 ; [+3]
        6 MOVE                             R3 R1
        7 GETIMPORT                        R2 K2 [type]
        9 CALL                             R2 1 1
       10 JUMPIFEQKS                       R2 K3 ["table"] ; [+2]
       12 RETURN                           R0 0
       13 MOVE                             R2 R1
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 GETTABLEKS                       R8 R6 K4 ["createdAt"]
       19 GETIMPORT                        R9 K7 [os.date]
       21 LOADK                            R10 K8 ["*t"]
       22 MOVE                             R11 R8
       23 CALL                             R9 2 1
       24 GETIMPORT                        R10 K11 [string.format]
       26 LOADK                            R11 K12 ["Version %d - %02d:%02d %s %d"]
       27 MOVE                             R12 R5
       28 GETTABLEKS                       R13 R9 K13 ["hour"]
       30 GETTABLEKS                       R14 R9 K14 ["min"]
       32 GETUPVAL                         R16 2
       33 GETTABLEKS                       R17 R9 K15 ["month"]
       35 GETTABLE                         R15 R16 R17
       36 GETTABLEKS                       R16 R9 K16 ["day"]
       38 CALL                             R10 6 1
       39 MOVE                             R7 R10
       40 JUMPIFNOTEQ                      R7 R0 ; [+31]
       42 GETUPVAL                         R7 3
       43 MOVE                             R8 R5
       44 CALL                             R7 1 0
       45 GETUPVAL                         R7 4
       46 GETTABLEKS                       R8 R6 K17 ["markdown"]
       48 CALL                             R7 1 0
       49 GETUPVAL                         R7 0
       50 GETUPVAL                         R8 5
       51 CALL                             R7 1 1
       52 JUMPIFNOTEQKS                    R7 K17 ["markdown"] ; [+9]
       54 GETUPVAL                         R7 6
       55 GETTABLEKS                       R8 R6 K17 ["markdown"]
       57 CALL                             R7 1 0
       58 GETUPVAL                         R7 7
       59 LOADNIL                          R8
       60 SETTABLEKS                       R8 R7 K18 ["current"]
       62 GETUPVAL                         R7 0
       63 GETUPVAL                         R8 1
       64 GETTABLEKS                       R8 R8 K19 ["onRevisionSelected"]
       66 CALL                             R7 1 1
       67 JUMPIFNOT                        R7 ; [+6]
       68 MOVE                             R8 R7
       69 MOVE                             R9 R5
       70 CALL                             R8 1 0
       71 RETURN                           R0 0
       72 FORGLOOP                         R2 2 ; [-56]
       74 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["revisions"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 FASTCALL1                        TYPE R1 ; [+3]
        6 MOVE                             R3 R1
        7 GETIMPORT                        R2 K2 [type]
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+8]
       12 LENGTH                           R2 R1
       13 LOADN                            R3 0
       14 JUMPIFNOTLT                      R3 R2 ; [+4]
       16 GETUPVAL                         R2 1
       17 LENGTH                           R3 R1
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R2 R1 K0 ["peek"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["connectStudioTheme"]
        5 MOVE                             R4 R1
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R4 R1 K2 ["createSignal"]
        9 MOVE                             R6 R2
       10 GETTABLEKS                       R7 R0 K4 ["markdown"]
       12 CALL                             R6 1 1
       13 ORK                              R5 R6 K3 [""]
       14 CALL                             R4 1 2
       15 DUPTABLE                         R6 K6 [{"current"}]
       16 MOVE                             R8 R2
       17 GETTABLEKS                       R9 R0 K4 ["markdown"]
       19 CALL                             R8 1 1
       20 ORK                              R7 R8 K3 [""]
       21 SETTABLEKS                       R7 R6 K5 ["current"]
       23 GETTABLEKS                       R7 R1 K2 ["createSignal"]
       25 LOADK                            R8 K4 ["markdown"]
       26 CALL                             R7 1 2
       27 GETTABLEKS                       R9 R1 K7 ["wrap"]
       29 NEWCLOSURE                       R10 P0
       30 CAPTURE                          VAL R7
       31 CALL                             R9 1 1
       32 GETTABLEKS                       R10 R1 K2 ["createSignal"]
       34 MOVE                             R12 R2
       35 GETTABLEKS                       R13 R0 K4 ["markdown"]
       37 CALL                             R12 1 1
       38 ORK                              R11 R12 K3 [""]
       39 CALL                             R10 1 2
       40 DUPTABLE                         R12 K6 [{"current"}]
       41 LOADNIL                          R13
       42 SETTABLEKS                       R13 R12 K5 ["current"]
       44 NEWCLOSURE                       R13 P1
       45 CAPTURE                          VAL R12
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R4
       48 NEWCLOSURE                       R14 P2
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R11
       53 CAPTURE                          VAL R12
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R5
       56 GETTABLEKS                       R15 R1 K2 ["createSignal"]
       58 LOADB                            R16 0
       59 CALL                             R15 1 2
       60 NEWCLOSURE                       R17 P3
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R0
       63 GETTABLEKS                       R18 R1 K8 ["createEffect"]
       65 NEWCLOSURE                       R19 P4
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R15
       71 CAPTURE                          VAL R16
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R12
       75 CALL                             R18 1 0
       76 NEWCLOSURE                       R18 P5
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R15
       80 CAPTURE                          VAL R16
       81 CAPTURE                          VAL R0
       82 GETTABLEKS                       R19 R1 K7 ["wrap"]
       84 NEWCLOSURE                       R20 P6
       85 CAPTURE                          VAL R0
       86 CALL                             R19 1 1
       87 GETTABLEKS                       R20 R1 K7 ["wrap"]
       89 NEWCLOSURE                       R21 P7
       90 CAPTURE                          VAL R0
       91 CALL                             R20 1 1
       92 GETTABLEKS                       R21 R1 K7 ["wrap"]
       94 NEWCLOSURE                       R22 P8
       95 CAPTURE                          VAL R0
       96 CALL                             R21 1 1
       97 GETTABLEKS                       R22 R1 K7 ["wrap"]
       99 NEWCLOSURE                       R23 P9
      100 CAPTURE                          VAL R0
      101 CALL                             R22 1 1
      102 GETTABLEKS                       R23 R1 K7 ["wrap"]
      104 NEWCLOSURE                       R24 P10
      105 CAPTURE                          VAL R0
      106 CALL                             R23 1 1
      107 GETTABLEKS                       R24 R1 K7 ["wrap"]
      109 NEWCLOSURE                       R25 P11
      110 CAPTURE                          VAL R0
      111 CALL                             R24 1 1
      112 NEWCLOSURE                       R25 P12
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R0
      115 CAPTURE                          VAL R16
      116 GETTABLEKS                       R26 R1 K7 ["wrap"]
      118 NEWCLOSURE                       R27 P13
      119 CAPTURE                          VAL R0
      120 CALL                             R26 1 1
      121 GETTABLEKS                       R27 R1 K7 ["wrap"]
      123 NEWCLOSURE                       R28 P14
      124 CAPTURE                          VAL R0
      125 CALL                             R27 1 1
      126 GETTABLEKS                       R28 R1 K7 ["wrap"]
      128 NEWCLOSURE                       R29 P15
      129 CAPTURE                          VAL R0
      130 CALL                             R28 1 1
      131 GETTABLEKS                       R29 R1 K7 ["wrap"]
      133 NEWCLOSURE                       R30 P16
      134 CAPTURE                          VAL R0
      135 CALL                             R29 1 1
      136 NEWCLOSURE                       R30 P17
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R0
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R12
      144 CAPTURE                          VAL R16
      145 GETTABLEKS                       R31 R1 K2 ["createSignal"]
      147 LOADN                            R32 0
      148 CALL                             R31 1 2
      149 GETTABLEKS                       R33 R1 K7 ["wrap"]
      151 NEWCLOSURE                       R34 P18
      152 CAPTURE                          VAL R0
      153 CALL                             R33 1 1
      154 GETTABLEKS                       R34 R1 K9 ["createComputed"]
      156 NEWCLOSURE                       R35 P19
      157 CAPTURE                          VAL R0
      158 CAPTURE                          UPVAL U1
      159 LOADK                            R36 K10 ["revision-options"]
      160 CALL                             R34 2 1
      161 GETTABLEKS                       R35 R1 K9 ["createComputed"]
      163 NEWCLOSURE                       R36 P20
      164 CAPTURE                          VAL R31
      165 CAPTURE                          VAL R0
      166 CAPTURE                          UPVAL U1
      167 LOADK                            R37 K11 ["selected-revision-value"]
      168 CALL                             R35 2 1
      169 GETTABLEKS                       R36 R1 K9 ["createComputed"]
      171 NEWCLOSURE                       R37 P21
      172 CAPTURE                          VAL R31
      173 CAPTURE                          VAL R0
      174 CAPTURE                          UPVAL U1
      175 LOADK                            R38 K12 ["selected-revision-label"]
      176 CALL                             R36 2 1
      177 NEWCLOSURE                       R37 P22
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R0
      180 CAPTURE                          UPVAL U2
      181 CAPTURE                          VAL R32
      182 CAPTURE                          VAL R5
      183 CAPTURE                          VAL R7
      184 CAPTURE                          VAL R11
      185 CAPTURE                          VAL R12
      186 GETTABLEKS                       R38 R1 K8 ["createEffect"]
      188 NEWCLOSURE                       R39 P23
      189 CAPTURE                          VAL R0
      190 CAPTURE                          VAL R32
      191 CALL                             R38 1 0
      192 DUPTABLE                         R38 K38 [{"theme", "code", "isCodeView", "markdownForViewer", "handleCodeTextChanged", "handleToggleView", "hasTitle", "titleText", "hasAction", "actionText", "actionButtonTags", "actionLabelTags", "handleAction", "hasSecondaryAction", "secondaryActionText", "secondaryActionButtonTags", "secondaryActionLabelTags", "handleSecondaryAction", "hasRevisions", "revisionOptions", "selectedRevisionValue", "selectedRevisionLabel", "handleRevisionSelect", "inputEnabled", "editorToggleText"}]
      193 SETTABLEKS                       R3 R38 K13 ["theme"]
      195 SETTABLEKS                       R4 R38 K14 ["code"]
      197 SETTABLEKS                       R9 R38 K15 ["isCodeView"]
      199 SETTABLEKS                       R10 R38 K16 ["markdownForViewer"]
      201 SETTABLEKS                       R18 R38 K17 ["handleCodeTextChanged"]
      203 SETTABLEKS                       R14 R38 K18 ["handleToggleView"]
      205 SETTABLEKS                       R19 R38 K19 ["hasTitle"]
      207 SETTABLEKS                       R20 R38 K20 ["titleText"]
      209 SETTABLEKS                       R21 R38 K21 ["hasAction"]
      211 SETTABLEKS                       R22 R38 K22 ["actionText"]
      213 SETTABLEKS                       R23 R38 K23 ["actionButtonTags"]
      215 SETTABLEKS                       R24 R38 K24 ["actionLabelTags"]
      217 SETTABLEKS                       R25 R38 K25 ["handleAction"]
      219 SETTABLEKS                       R26 R38 K26 ["hasSecondaryAction"]
      221 SETTABLEKS                       R27 R38 K27 ["secondaryActionText"]
      223 SETTABLEKS                       R28 R38 K28 ["secondaryActionButtonTags"]
      225 SETTABLEKS                       R29 R38 K29 ["secondaryActionLabelTags"]
      227 SETTABLEKS                       R30 R38 K30 ["handleSecondaryAction"]
      229 SETTABLEKS                       R33 R38 K31 ["hasRevisions"]
      231 SETTABLEKS                       R34 R38 K32 ["revisionOptions"]
      233 SETTABLEKS                       R35 R38 K33 ["selectedRevisionValue"]
      235 SETTABLEKS                       R36 R38 K34 ["selectedRevisionLabel"]
      237 SETTABLEKS                       R37 R38 K35 ["handleRevisionSelect"]
      239 GETTABLEKS                       R39 R0 K36 ["inputEnabled"]
      241 SETTABLEKS                       R39 R38 K36 ["inputEnabled"]
      243 GETTABLEKS                       R39 R0 K37 ["editorToggleText"]
      245 SETTABLEKS                       R39 R38 K37 ["editorToggleText"]
      247 RETURN                           R38 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["TemplateResolver"]
        8 GETTABLEKS                       R0 R0 K1 ["addStaticCustomTemplate"]
       10 MOVE                             R1 R0
       11 GETUPVAL                         R2 2
       12 CALL                             R1 1 0
       13 MOVE                             R1 R0
       14 GETUPVAL                         R2 3
       15 CALL                             R1 1 0
       16 MOVE                             R1 R0
       17 GETUPVAL                         R2 4
       18 CALL                             R1 1 0
       19 MOVE                             R1 R0
       20 GETUPVAL                         R2 5
       21 CALL                             R1 1 0
       22 MOVE                             R1 R0
       23 GETUPVAL                         R2 6
       24 CALL                             R1 1 0
       25 MOVE                             R1 R0
       26 GETUPVAL                         R2 7
       27 CALL                             R1 1 0
       28 MOVE                             R1 R0
       29 GETUPVAL                         R2 8
       30 CALL                             R1 1 0
       31 MOVE                             R1 R0
       32 GETUPVAL                         R2 9
       33 CALL                             R1 1 0
       34 MOVE                             R1 R0
       35 GETUPVAL                         R2 10
       36 CALL                             R1 1 0
       37 MOVE                             R1 R0
       38 GETUPVAL                         R2 11
       39 CALL                             R1 1 0
       40 MOVE                             R1 R0
       41 GETUPVAL                         R2 12
       42 CALL                             R1 1 0
       43 MOVE                             R1 R0
       44 GETUPVAL                         R2 13
       45 CALL                             R1 1 0
       46 MOVE                             R1 R0
       47 GETUPVAL                         R2 14
       48 CALL                             R1 1 0
       49 MOVE                             R1 R0
       50 GETUPVAL                         R2 15
       51 CALL                             R1 1 0
       52 MOVE                             R1 R0
       53 GETUPVAL                         R2 16
       54 CALL                             R1 1 0
       55 MOVE                             R1 R0
       56 GETUPVAL                         R2 17
       57 CALL                             R1 1 0
       58 MOVE                             R1 R0
       59 GETUPVAL                         R2 18
       60 CALL                             R1 1 0
       61 MOVE                             R1 R0
       62 GETUPVAL                         R2 19
       63 CALL                             R1 1 0
       64 MOVE                             R1 R0
       65 GETUPVAL                         R2 20
       66 CALL                             R1 1 0
       67 MOVE                             R1 R0
       68 GETUPVAL                         R2 21
       69 CALL                             R1 1 0
       70 MOVE                             R1 R0
       71 GETUPVAL                         R2 22
       72 CALL                             R1 1 0
       73 MOVE                             R1 R0
       74 GETUPVAL                         R2 23
       75 CALL                             R1 1 0
       76 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        4 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETIMPORT                        R3 K3 [Enum.DockLocation.Center]
        4 NAMECALL                         R0 R0 K4 ["DockAsync"]
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+3]
        4 MOVE                             R2 R1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 MOVE                             R1 R0
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 MOVE                             R1 R0
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+3]
        4 MOVE                             R2 R1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+3]
        4 MOVE                             R2 R1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 RETURN                           R0 1
        4 GETIMPORT                        R0 K1 [script]
        6 LOADK                            R2 K2 ["Plugin"]
        7 NAMECALL                         R0 R0 K3 ["FindFirstAncestorOfClass"]
        9 CALL                             R0 2 1
       10 FASTCALL2K                       ASSERT R0 K4 ; [+5]
       12 MOVE                             R2 R0
       13 LOADK                            R3 K4 ["MarkdownDockPanel: could not find Plugin ancestor"]
       14 GETIMPORT                        R1 K6 [assert]
       16 CALL                             R1 2 0
       17 GETIMPORT                        R1 K9 [DockWidgetPluginGuiInfo.new]
       19 GETIMPORT                        R2 K13 [Enum.InitialDockState.Float]
       21 LOADB                            R3 0
       22 LOADB                            R4 0
       23 LOADN                            R5 128
       24 LOADN                            R6 224
       25 LOADN                            R7 64
       26 LOADN                            R8 240
       27 CALL                             R1 7 1
       28 LOADK                            R4 K14 ["MarkdownDockPanel"]
       29 MOVE                             R5 R1
       30 NAMECALL                         R2 R0 K15 ["CreateDockWidgetPluginGui"]
       32 CALL                             R2 3 1
       33 LOADK                            R3 K16 ["Plan"]
       34 SETTABLEKS                       R3 R2 K17 ["Title"]
       36 GETIMPORT                        R3 K20 [Enum.ZIndexBehavior.Sibling]
       38 SETTABLEKS                       R3 R2 K18 ["ZIndexBehavior"]
       40 NEWCLOSURE                       R5 P0
       41 CAPTURE                          VAL R2
       42 NAMECALL                         R3 R2 K21 ["BindToClose"]
       44 CALL                             R3 2 0
       45 GETUPVAL                         R3 1
       46 JUMPIFNOT                        R3 ; [+23]
       47 LOADK                            R5 K22 ["Panels"]
       48 NAMECALL                         R3 R0 K23 ["GetPluginComponent"]
       50 CALL                             R3 2 1
       51 NAMECALL                         R4 R0 K24 ["GetUri"]
       53 CALL                             R4 1 1
       54 GETIMPORT                        R5 K27 [table.clone]
       56 MOVE                             R6 R4
       57 CALL                             R5 1 1
       58 LOADK                            R6 K22 ["Panels"]
       59 SETTABLEKS                       R6 R5 K28 ["Category"]
       61 LOADK                            R6 K14 ["MarkdownDockPanel"]
       62 SETTABLEKS                       R6 R5 K29 ["ItemId"]
       64 GETIMPORT                        R6 K32 [task.spawn]
       66 NEWCLOSURE                       R7 P1
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R5
       69 CALL                             R6 1 0
       70 GETUPVAL                         R3 2
       71 CALL                             R3 0 0
       72 GETUPVAL                         R3 3
       73 GETTABLEKS                       R3 R3 K33 ["createSignal"]
       75 LOADK                            R4 K34 [""]
       76 CALL                             R3 1 2
       77 SETUPVAL                         R4 4
       78 GETUPVAL                         R5 3
       79 GETTABLEKS                       R5 R5 K33 ["createSignal"]
       81 LOADK                            R6 K34 [""]
       82 CALL                             R5 1 2
       83 SETUPVAL                         R6 5
       84 GETUPVAL                         R7 3
       85 GETTABLEKS                       R7 R7 K33 ["createSignal"]
       87 LOADB                            R8 0
       88 CALL                             R7 1 2
       89 SETUPVAL                         R8 6
       90 GETUPVAL                         R9 3
       91 GETTABLEKS                       R9 R9 K33 ["createSignal"]
       93 LOADK                            R10 K34 [""]
       94 CALL                             R9 1 2
       95 SETUPVAL                         R10 7
       96 GETUPVAL                         R11 3
       97 GETTABLEKS                       R11 R11 K33 ["createSignal"]
       99 LOADK                            R12 K34 [""]
      100 CALL                             R11 1 2
      101 SETUPVAL                         R12 8
      102 GETUPVAL                         R13 3
      103 GETTABLEKS                       R13 R13 K33 ["createSignal"]
      105 NEWTABLE                         R14 0 0
      107 CALL                             R13 1 2
      108 SETUPVAL                         R14 9
      109 GETUPVAL                         R15 3
      110 GETTABLEKS                       R15 R15 K33 ["createSignal"]
      112 LOADB                            R16 1
      113 CALL                             R15 1 2
      114 SETUPVAL                         R16 10
      115 GETUPVAL                         R17 3
      116 GETTABLEKS                       R17 R17 K33 ["createSignal"]
      118 LOADK                            R18 K35 ["Editor"]
      119 CALL                             R17 1 2
      120 SETUPVAL                         R18 11
      121 GETUPVAL                         R19 3
      122 GETTABLEKS                       R19 R19 K33 ["createSignal"]
      124 LOADK                            R20 K36 ["Versions"]
      125 CALL                             R19 1 2
      126 SETUPVAL                         R20 12
      127 DUPCLOSURE                       R21 K37 [PROTO_32]
      128 CAPTURE                          UPVAL U13
      129 DUPCLOSURE                       R22 K38 [PROTO_33]
      130 CAPTURE                          UPVAL U14
      131 DUPCLOSURE                       R23 K39 [PROTO_34]
      132 CAPTURE                          UPVAL U15
      133 DUPCLOSURE                       R24 K40 [PROTO_35]
      134 CAPTURE                          UPVAL U16
      135 DUPCLOSURE                       R25 K41 [PROTO_36]
      136 CAPTURE                          UPVAL U17
      137 GETUPVAL                         R26 3
      138 GETTABLEKS                       R26 R26 K42 ["mount"]
      140 GETUPVAL                         R27 19
      141 DUPTABLE                         R28 K57 [{"markdown", "onMarkdownChanged", "action", "onAction", "isActionDisabled", "secondaryAction", "onSecondaryAction", "title", "onDirtyChanged", "revisions", "onRevisionSelected", "inputEnabled", "editorToggleText", "versionsText"}]
      142 SETTABLEKS                       R3 R28 K43 ["markdown"]
      144 SETTABLEKS                       R21 R28 K44 ["onMarkdownChanged"]
      146 SETTABLEKS                       R5 R28 K45 ["action"]
      148 SETTABLEKS                       R22 R28 K46 ["onAction"]
      150 SETTABLEKS                       R7 R28 K47 ["isActionDisabled"]
      152 SETTABLEKS                       R9 R28 K48 ["secondaryAction"]
      154 SETTABLEKS                       R23 R28 K49 ["onSecondaryAction"]
      156 SETTABLEKS                       R11 R28 K50 ["title"]
      158 SETTABLEKS                       R25 R28 K51 ["onDirtyChanged"]
      160 SETTABLEKS                       R13 R28 K52 ["revisions"]
      162 SETTABLEKS                       R24 R28 K53 ["onRevisionSelected"]
      164 SETTABLEKS                       R15 R28 K54 ["inputEnabled"]
      166 SETTABLEKS                       R17 R28 K55 ["editorToggleText"]
      168 SETTABLEKS                       R19 R28 K56 ["versionsText"]
      170 MOVE                             R29 R2
      171 CALL                             R26 3 1
      172 SETUPVAL                         R26 18
      173 SETUPVAL                         R2 0
      174 RETURN                           R2 1

PROTO_38:
        0 GETTABLEKS                       R2 R0 K0 ["_generation"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 JUMPIFNOT                        R2 ; [+3]
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_39:
        0 GETTABLEKS                       R2 R0 K0 ["_generation"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 JUMPIFNOT                        R2 ; [+3]
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_40:
        0 GETTABLEKS                       R2 R0 K0 ["_generation"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 JUMPIFNOT                        R2 ; [+3]
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_41:
        0 GETTABLEKS                       R2 R0 K0 ["_generation"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 JUMPIFNOT                        R2 ; [+3]
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_42:
        0 GETTABLEKS                       R2 R0 K0 ["_generation"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 JUMPIFNOT                        R2 ; [+3]
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_43:
        0 GETTABLEKS                       R2 R0 K0 ["_generation"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 JUMPIFNOT                        R2 ; [+3]
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_44:
        0 GETTABLEKS                       R2 R0 K0 ["_generation"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 JUMPIFNOT                        R2 ; [+3]
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_45:
        0 GETTABLEKS                       R1 R0 K0 ["_generation"]
        2 GETUPVAL                         R2 0
        3 JUMPIFEQ                         R1 R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETUPVAL                         R1 1
        9 LOADB                            R2 0
       10 SETTABLEKS                       R2 R1 K1 ["Enabled"]
       12 RETURN                           R0 0

PROTO_46:
        0 DUPTABLE                         R1 K1 [{"_generation"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["_generation"]
        4 GETUPVAL                         R2 1
        5 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        7 GETIMPORT                        R0 K3 [setmetatable]
        9 CALL                             R0 2 1
       10 RETURN                           R0 1

PROTO_47:
        0 GETUPVAL                         R1 0
        1 ADDK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 GETTABLEKS                       R3 R0 K2 ["title"]
        7 ORK                              R2 R3 K1 ["Plan"]
        8 SETTABLEKS                       R2 R1 K3 ["Title"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R3 R0 K4 ["onMarkdownChanged"]
       13 SETTABLEKS                       R3 R2 K5 ["current"]
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R3 R0 K6 ["onAction"]
       18 SETTABLEKS                       R3 R2 K5 ["current"]
       20 GETUPVAL                         R2 4
       21 GETTABLEKS                       R3 R0 K7 ["onSecondaryAction"]
       23 SETTABLEKS                       R3 R2 K5 ["current"]
       25 GETUPVAL                         R2 5
       26 GETTABLEKS                       R3 R0 K8 ["onRevisionSelected"]
       28 SETTABLEKS                       R3 R2 K5 ["current"]
       30 GETUPVAL                         R2 6
       31 GETTABLEKS                       R3 R0 K9 ["onDirtyChanged"]
       33 SETTABLEKS                       R3 R2 K5 ["current"]
       35 GETUPVAL                         R2 7
       36 JUMPIFNOT                        R2 ; [+4]
       37 GETUPVAL                         R2 7
       38 GETTABLEKS                       R3 R0 K10 ["markdown"]
       40 CALL                             R2 1 0
       41 GETUPVAL                         R2 8
       42 JUMPIFNOT                        R2 ; [+5]
       43 GETUPVAL                         R2 8
       44 GETTABLEKS                       R4 R0 K12 ["action"]
       46 ORK                              R3 R4 K11 [""]
       47 CALL                             R2 1 0
       48 GETUPVAL                         R2 9
       49 JUMPIFNOT                        R2 ; [+5]
       50 GETUPVAL                         R2 9
       51 GETTABLEKS                       R4 R0 K14 ["isActionDisabled"]
       53 ORK                              R3 R4 K13 [False]
       54 CALL                             R2 1 0
       55 GETUPVAL                         R2 10
       56 JUMPIFNOT                        R2 ; [+5]
       57 GETUPVAL                         R2 10
       58 GETTABLEKS                       R4 R0 K15 ["secondaryAction"]
       60 ORK                              R3 R4 K11 [""]
       61 CALL                             R2 1 0
       62 GETUPVAL                         R2 11
       63 JUMPIFNOT                        R2 ; [+5]
       64 GETUPVAL                         R2 11
       65 GETTABLEKS                       R4 R0 K2 ["title"]
       67 ORK                              R3 R4 K11 [""]
       68 CALL                             R2 1 0
       69 GETUPVAL                         R2 12
       70 JUMPIFNOT                        R2 ; [+7]
       71 GETUPVAL                         R2 12
       72 GETTABLEKS                       R3 R0 K16 ["revisions"]
       74 JUMPIF                           R3 ; [+2]
       75 NEWTABLE                         R3 0 0
       77 CALL                             R2 1 0
       78 GETUPVAL                         R2 13
       79 JUMPIFNOT                        R2 ; [+10]
       80 GETUPVAL                         R2 13
       81 GETTABLEKS                       R4 R0 K17 ["inputEnabled"]
       83 JUMPIFEQKNIL                     R4 ; [+4]
       85 GETTABLEKS                       R3 R0 K17 ["inputEnabled"]
       87 JUMP                             ; [+1]
       88 LOADB                            R3 1
       89 CALL                             R2 1 0
       90 GETUPVAL                         R2 14
       91 JUMPIFNOT                        R2 ; [+5]
       92 GETUPVAL                         R2 14
       93 GETTABLEKS                       R4 R0 K19 ["editorToggleText"]
       95 ORK                              R3 R4 K18 ["Editor"]
       96 CALL                             R2 1 0
       97 GETUPVAL                         R2 15
       98 JUMPIFNOT                        R2 ; [+5]
       99 GETUPVAL                         R2 15
      100 GETTABLEKS                       R4 R0 K21 ["versionsText"]
      102 ORK                              R3 R4 K20 ["Versions"]
      103 CALL                             R2 1 0
      104 LOADB                            R2 1
      105 SETTABLEKS                       R2 R1 K22 ["Enabled"]
      107 DUPTABLE                         R3 K24 [{"_generation"}]
      108 GETUPVAL                         R4 0
      109 SETTABLEKS                       R4 R3 K23 ["_generation"]
      111 GETUPVAL                         R4 16
      112 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
      114 GETIMPORT                        R2 K26 [setmetatable]
      116 CALL                             R2 2 1
      117 RETURN                           R2 1

PROTO_48:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Blox"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["BloxCodeEditor"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R4 R0 K8 ["BloxUI"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K5 [require]
       24 GETIMPORT                        R5 K1 [script]
       26 GETTABLEKS                       R5 R5 K9 ["Parent"]
       28 GETTABLEKS                       R5 R5 K10 ["MarkdownViewer"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETIMPORT                        R6 K1 [script]
       35 GETTABLEKS                       R6 R6 K9 ["Parent"]
       37 GETTABLEKS                       R6 R6 K11 ["MarkdownStyles"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETIMPORT                        R7 K1 [script]
       44 GETTABLEKS                       R7 R7 K9 ["Parent"]
       46 GETTABLEKS                       R7 R7 K12 ["MarkdownBlock"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETIMPORT                        R8 K1 [script]
       53 GETTABLEKS                       R8 R8 K9 ["Parent"]
       55 GETTABLEKS                       R8 R8 K13 ["MarkdownDarkStyles"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETIMPORT                        R9 K1 [script]
       62 GETTABLEKS                       R9 R9 K9 ["Parent"]
       64 GETTABLEKS                       R9 R9 K14 ["MarkdownLightStyles"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETIMPORT                        R10 K1 [script]
       71 GETTABLEKS                       R10 R10 K9 ["Parent"]
       73 GETTABLEKS                       R10 R10 K15 ["InlineContent"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETIMPORT                        R11 K1 [script]
       80 GETTABLEKS                       R11 R11 K9 ["Parent"]
       82 GETTABLEKS                       R11 R11 K16 ["MarkdownHeading"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETIMPORT                        R12 K1 [script]
       89 GETTABLEKS                       R12 R12 K9 ["Parent"]
       91 GETTABLEKS                       R12 R12 K17 ["MarkdownParagraph"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETIMPORT                        R13 K1 [script]
       98 GETTABLEKS                       R13 R13 K9 ["Parent"]
      100 GETTABLEKS                       R13 R13 K18 ["MarkdownList"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETIMPORT                        R14 K1 [script]
      107 GETTABLEKS                       R14 R14 K9 ["Parent"]
      109 GETTABLEKS                       R14 R14 K19 ["MarkdownListItem"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K5 [require]
      114 GETIMPORT                        R15 K1 [script]
      116 GETTABLEKS                       R15 R15 K9 ["Parent"]
      118 GETTABLEKS                       R15 R15 K20 ["MarkdownCheckboxItem"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K5 [require]
      123 GETIMPORT                        R16 K1 [script]
      125 GETTABLEKS                       R16 R16 K9 ["Parent"]
      127 GETTABLEKS                       R16 R16 K21 ["MarkdownCodeBlock"]
      129 CALL                             R15 1 1
      130 GETIMPORT                        R16 K5 [require]
      132 GETIMPORT                        R17 K1 [script]
      134 GETTABLEKS                       R17 R17 K9 ["Parent"]
      136 GETTABLEKS                       R17 R17 K22 ["MarkdownImage"]
      138 CALL                             R16 1 1
      139 GETIMPORT                        R17 K5 [require]
      141 GETIMPORT                        R18 K1 [script]
      143 GETTABLEKS                       R18 R18 K9 ["Parent"]
      145 GETTABLEKS                       R18 R18 K23 ["MarkdownTable"]
      147 CALL                             R17 1 1
      148 GETIMPORT                        R18 K5 [require]
      150 GETIMPORT                        R19 K1 [script]
      152 GETTABLEKS                       R19 R19 K9 ["Parent"]
      154 GETTABLEKS                       R19 R19 K24 ["MarkdownDivider"]
      156 CALL                             R18 1 1
      157 GETIMPORT                        R19 K5 [require]
      159 GETIMPORT                        R20 K1 [script]
      161 GETTABLEKS                       R20 R20 K9 ["Parent"]
      163 GETTABLEKS                       R20 R20 K25 ["MarkdownQuote"]
      165 CALL                             R19 1 1
      166 GETIMPORT                        R20 K5 [require]
      168 GETIMPORT                        R21 K1 [script]
      170 GETTABLEKS                       R21 R21 K9 ["Parent"]
      172 GETTABLEKS                       R21 R21 K26 ["MarkdownComponent"]
      174 CALL                             R20 1 1
      175 GETTABLEKS                       R21 R3 K27 ["ComponentStyles"]
      177 GETTABLEKS                       R22 R3 K28 ["ThemeProvider"]
      179 GETTABLEKS                       R23 R2 K29 ["CodeEditor"]
      181 GETTABLEKS                       R24 R3 K30 ["SelectInput"]
      183 GETTABLEKS                       R25 R3 K31 ["ToggleButton"]
      185 GETTABLEKS                       R26 R1 K32 ["template"]
      187 GETTABLEKS                       R27 R1 K33 ["Frame"]
      189 GETTABLEKS                       R28 R1 K34 ["TextButton"]
      191 GETTABLEKS                       R29 R1 K35 ["TextLabel"]
      193 GETTABLEKS                       R30 R1 K36 ["Provide"]
      195 GETTABLEKS                       R31 R1 K37 ["If"]
      197 GETTABLEKS                       R32 R1 K38 ["expr"]
      199 DUPCLOSURE                       R33 K39 [PROTO_2]
      200 MOVE                             R34 R33
      201 LOADK                            R35 K40 ["BloxMarkdownDockPanelCenter"]
      202 CALL                             R34 1 1
      203 NEWTABLE                         R35 0 12
      205 LOADK                            R36 K41 ["Jan"]
      206 LOADK                            R37 K42 ["Feb"]
      207 LOADK                            R38 K43 ["Mar"]
      208 LOADK                            R39 K44 ["Apr"]
      209 LOADK                            R40 K45 ["May"]
      210 LOADK                            R41 K46 ["Jun"]
      211 LOADK                            R42 K47 ["Jul"]
      212 LOADK                            R43 K48 ["Aug"]
      213 LOADK                            R44 K49 ["Sep"]
      214 LOADK                            R45 K50 ["Oct"]
      215 LOADK                            R46 K51 ["Nov"]
      216 LOADK                            R47 K52 ["Dec"]
      217 SETLIST                          R35 R36 12 [1]
      219 DUPCLOSURE                       R36 K53 [PROTO_3]
      220 CAPTURE                          VAL R35
      221 MOVE                             R37 R26
      222 LOADK                            R38 K54 ["MarkdownDockPanel"]
      223 DUPTABLE                         R39 K69 [{"markdown", "onMarkdownChanged", "action", "onAction", "isActionDisabled", "secondaryAction", "onSecondaryAction", "title", "onDirtyChanged", "revisions", "onRevisionSelected", "inputEnabled", "editorToggleText", "versionsText"}]
      224 LOADK                            R40 K70 [""]
      225 SETTABLEKS                       R40 R39 K55 ["markdown"]
      227 LOADNIL                          R40
      228 SETTABLEKS                       R40 R39 K56 ["onMarkdownChanged"]
      230 LOADK                            R40 K70 [""]
      231 SETTABLEKS                       R40 R39 K57 ["action"]
      233 LOADNIL                          R40
      234 SETTABLEKS                       R40 R39 K58 ["onAction"]
      236 LOADB                            R40 0
      237 SETTABLEKS                       R40 R39 K59 ["isActionDisabled"]
      239 LOADK                            R40 K70 [""]
      240 SETTABLEKS                       R40 R39 K60 ["secondaryAction"]
      242 LOADNIL                          R40
      243 SETTABLEKS                       R40 R39 K61 ["onSecondaryAction"]
      245 LOADK                            R40 K70 [""]
      246 SETTABLEKS                       R40 R39 K62 ["title"]
      248 LOADNIL                          R40
      249 SETTABLEKS                       R40 R39 K63 ["onDirtyChanged"]
      251 NEWTABLE                         R40 0 0
      253 SETTABLEKS                       R40 R39 K64 ["revisions"]
      255 LOADNIL                          R40
      256 SETTABLEKS                       R40 R39 K65 ["onRevisionSelected"]
      258 LOADB                            R40 1
      259 SETTABLEKS                       R40 R39 K66 ["inputEnabled"]
      261 LOADK                            R40 K71 ["Editor"]
      262 SETTABLEKS                       R40 R39 K67 ["editorToggleText"]
      264 LOADK                            R40 K72 ["Versions"]
      265 SETTABLEKS                       R40 R39 K68 ["versionsText"]
      267 NEWTABLE                         R40 0 1
      269 MOVE                             R41 R30
      270 NEWTABLE                         R42 2 2
      272 GETTABLEKS                       R45 R22 K73 ["token"]
      274 SETTABLEKS                       R45 R42 K74 ["provider"]
      276 MOVE                             R45 R32
      277 LOADK                            R46 K75 ["theme"]
      278 CALL                             R45 1 1
      279 SETTABLEKS                       R45 R42 K76 ["value"]
      281 MOVE                             R43 R21
      282 NEWTABLE                         R44 0 0
      284 CALL                             R43 1 1
      285 MOVE                             R44 R27
      286 NEWTABLE                         R45 4 2
      288 LOADK                            R48 K77 ["MarkdownDockPanelRoot"]
      289 SETTABLEKS                       R48 R45 K78 ["Name"]
      291 LOADK                            R48 K79 ["box"]
      292 SETTABLEKS                       R48 R45 K80 ["Tags"]
      294 GETIMPORT                        R48 K83 [UDim2.new]
      296 LOADN                            R49 1
      297 LOADN                            R50 0
      298 LOADN                            R51 1
      299 LOADN                            R52 0
      300 CALL                             R48 4 1
      301 SETTABLEKS                       R48 R45 K84 ["Size"]
      303 LOADB                            R48 1
      304 SETTABLEKS                       R48 R45 K85 ["ClipsDescendants"]
      306 MOVE                             R46 R27
      307 NEWTABLE                         R47 4 3
      309 LOADK                            R51 K86 ["Toolbar"]
      310 SETTABLEKS                       R51 R47 K78 ["Name"]
      312 LOADK                            R51 K87 ["surface-100 row pad-x-8 gap-8 align-y-center"]
      313 SETTABLEKS                       R51 R47 K80 ["Tags"]
      315 GETIMPORT                        R51 K83 [UDim2.new]
      317 LOADN                            R52 1
      318 LOADN                            R53 0
      319 LOADN                            R54 0
      320 LOADN                            R55 32
      321 CALL                             R51 4 1
      322 SETTABLEKS                       R51 R47 K84 ["Size"]
      324 MOVE                             R48 R31
      325 DUPTABLE                         R49 K90 [{"when", "Then"}]
      326 MOVE                             R50 R32
      327 LOADK                            R51 K91 ["hasTitle"]
      328 CALL                             R50 1 1
      329 SETTABLEKS                       R50 R49 K88 ["when"]
      331 MOVE                             R50 R26
      332 NEWTABLE                         R51 0 1
      334 MOVE                             R52 R29
      335 DUPTABLE                         R53 K95 [{"Name", "Tags", "Text", "Font", "Size", "AutomaticSize"}]
      336 LOADK                            R54 K96 ["TitleLabel"]
      337 SETTABLEKS                       R54 R53 K78 ["Name"]
      339 LOADK                            R54 K97 ["text-label text-truncate-end"]
      340 SETTABLEKS                       R54 R53 K80 ["Tags"]
      342 MOVE                             R54 R32
      343 LOADK                            R55 K98 ["titleText"]
      344 CALL                             R54 1 1
      345 SETTABLEKS                       R54 R53 K92 ["Text"]
      347 GETIMPORT                        R54 K101 [Enum.Font.BuilderSansMedium]
      349 SETTABLEKS                       R54 R53 K93 ["Font"]
      351 GETIMPORT                        R54 K83 [UDim2.new]
      353 LOADN                            R55 0
      354 LOADN                            R56 0
      355 LOADN                            R57 1
      356 LOADN                            R58 0
      357 CALL                             R54 4 1
      358 SETTABLEKS                       R54 R53 K84 ["Size"]
      360 GETIMPORT                        R54 K103 [Enum.AutomaticSize.X]
      362 SETTABLEKS                       R54 R53 K94 ["AutomaticSize"]
      364 CALL                             R52 1 -1
      365 SETLIST                          R51 R52 -1 [1]
      367 CALL                             R50 1 1
      368 SETTABLEKS                       R50 R49 K89 ["Then"]
      370 CALL                             R48 1 1
      371 MOVE                             R49 R27
      372 DUPTABLE                         R50 K104 [{"Name", "Tags"}]
      373 LOADK                            R51 K105 ["Spacer"]
      374 SETTABLEKS                       R51 R50 K78 ["Name"]
      376 LOADK                            R51 K106 ["box grow-x"]
      377 SETTABLEKS                       R51 R50 K80 ["Tags"]
      379 CALL                             R49 1 1
      380 MOVE                             R50 R27
      381 NEWTABLE                         R51 2 4
      383 LOADK                            R56 K107 ["RightControls"]
      384 SETTABLEKS                       R56 R51 K78 ["Name"]
      386 LOADK                            R56 K108 ["box row gap-8 auto-xy align-y-center"]
      387 SETTABLEKS                       R56 R51 K80 ["Tags"]
      389 MOVE                             R52 R31
      390 DUPTABLE                         R53 K90 [{"when", "Then"}]
      391 MOVE                             R54 R32
      392 LOADK                            R55 K109 ["hasRevisions"]
      393 CALL                             R54 1 1
      394 SETTABLEKS                       R54 R53 K88 ["when"]
      396 MOVE                             R54 R26
      397 NEWTABLE                         R55 0 1
      399 MOVE                             R56 R24
      400 DUPTABLE                         R57 K114 [{"text", "options", "selectedValue", "onSelect"}]
      401 MOVE                             R58 R32
      402 LOADK                            R59 K115 ["selectedRevisionLabel"]
      403 CALL                             R58 1 1
      404 SETTABLEKS                       R58 R57 K110 ["text"]
      406 MOVE                             R58 R32
      407 LOADK                            R59 K116 ["revisionOptions"]
      408 CALL                             R58 1 1
      409 SETTABLEKS                       R58 R57 K111 ["options"]
      411 MOVE                             R58 R32
      412 LOADK                            R59 K117 ["selectedRevisionValue"]
      413 CALL                             R58 1 1
      414 SETTABLEKS                       R58 R57 K112 ["selectedValue"]
      416 MOVE                             R58 R32
      417 LOADK                            R59 K118 ["fn(value) handleRevisionSelect(value)"]
      418 CALL                             R58 1 1
      419 SETTABLEKS                       R58 R57 K113 ["onSelect"]
      421 CALL                             R56 1 -1
      422 SETLIST                          R55 R56 -1 [1]
      424 CALL                             R54 1 1
      425 SETTABLEKS                       R54 R53 K89 ["Then"]
      427 CALL                             R52 1 1
      428 MOVE                             R53 R25
      429 DUPTABLE                         R54 K122 [{"selected", "onToggle", "text", "labelPosition"}]
      430 MOVE                             R55 R32
      431 LOADK                            R56 K123 ["isCodeView"]
      432 CALL                             R55 1 1
      433 SETTABLEKS                       R55 R54 K119 ["selected"]
      435 MOVE                             R55 R32
      436 LOADK                            R56 K124 ["handleToggleView"]
      437 CALL                             R55 1 1
      438 SETTABLEKS                       R55 R54 K120 ["onToggle"]
      440 MOVE                             R55 R32
      441 LOADK                            R56 K67 ["editorToggleText"]
      442 CALL                             R55 1 1
      443 SETTABLEKS                       R55 R54 K110 ["text"]
      445 LOADK                            R55 K125 ["left"]
      446 SETTABLEKS                       R55 R54 K121 ["labelPosition"]
      448 CALL                             R53 1 1
      449 MOVE                             R54 R31
      450 DUPTABLE                         R55 K90 [{"when", "Then"}]
      451 MOVE                             R56 R32
      452 LOADK                            R57 K126 ["hasAction"]
      453 CALL                             R56 1 1
      454 SETTABLEKS                       R56 R55 K88 ["when"]
      456 MOVE                             R56 R26
      457 NEWTABLE                         R57 0 1
      459 MOVE                             R58 R28
      460 NEWTABLE                         R59 8 1
      462 LOADK                            R61 K127 ["ActionButton"]
      463 SETTABLEKS                       R61 R59 K78 ["Name"]
      465 MOVE                             R61 R32
      466 LOADK                            R62 K128 ["actionButtonTags"]
      467 CALL                             R61 1 1
      468 SETTABLEKS                       R61 R59 K80 ["Tags"]
      470 GETIMPORT                        R61 K83 [UDim2.new]
      472 LOADN                            R62 0
      473 LOADN                            R63 0
      474 LOADN                            R64 0
      475 LOADN                            R65 24
      476 CALL                             R61 4 1
      477 SETTABLEKS                       R61 R59 K84 ["Size"]
      479 GETIMPORT                        R61 K103 [Enum.AutomaticSize.X]
      481 SETTABLEKS                       R61 R59 K94 ["AutomaticSize"]
      483 MOVE                             R61 R32
      484 LOADK                            R62 K129 ["handleAction"]
      485 CALL                             R61 1 1
      486 SETTABLEKS                       R61 R59 K130 ["OnActivated"]
      488 MOVE                             R60 R29
      489 DUPTABLE                         R61 K131 [{"Name", "Tags", "Text", "Size", "AutomaticSize", "Font"}]
      490 LOADK                            R62 K132 ["Label"]
      491 SETTABLEKS                       R62 R61 K78 ["Name"]
      493 MOVE                             R62 R32
      494 LOADK                            R63 K133 ["actionLabelTags"]
      495 CALL                             R62 1 1
      496 SETTABLEKS                       R62 R61 K80 ["Tags"]
      498 MOVE                             R62 R32
      499 LOADK                            R63 K134 ["actionText"]
      500 CALL                             R62 1 1
      501 SETTABLEKS                       R62 R61 K92 ["Text"]
      503 GETIMPORT                        R62 K83 [UDim2.new]
      505 LOADN                            R63 0
      506 LOADN                            R64 0
      507 LOADN                            R65 1
      508 LOADN                            R66 0
      509 CALL                             R62 4 1
      510 SETTABLEKS                       R62 R61 K84 ["Size"]
      512 GETIMPORT                        R62 K103 [Enum.AutomaticSize.X]
      514 SETTABLEKS                       R62 R61 K94 ["AutomaticSize"]
      516 GETIMPORT                        R62 K101 [Enum.Font.BuilderSansMedium]
      518 SETTABLEKS                       R62 R61 K93 ["Font"]
      520 CALL                             R60 1 -1
      521 SETLIST                          R59 R60 -1 [1]
      523 CALL                             R58 1 -1
      524 SETLIST                          R57 R58 -1 [1]
      526 CALL                             R56 1 1
      527 SETTABLEKS                       R56 R55 K89 ["Then"]
      529 CALL                             R54 1 1
      530 MOVE                             R55 R31
      531 DUPTABLE                         R56 K90 [{"when", "Then"}]
      532 MOVE                             R57 R32
      533 LOADK                            R58 K135 ["hasSecondaryAction"]
      534 CALL                             R57 1 1
      535 SETTABLEKS                       R57 R56 K88 ["when"]
      537 MOVE                             R57 R26
      538 NEWTABLE                         R58 0 1
      540 MOVE                             R59 R28
      541 NEWTABLE                         R60 8 1
      543 LOADK                            R62 K136 ["SecondaryActionButton"]
      544 SETTABLEKS                       R62 R60 K78 ["Name"]
      546 MOVE                             R62 R32
      547 LOADK                            R63 K137 ["secondaryActionButtonTags"]
      548 CALL                             R62 1 1
      549 SETTABLEKS                       R62 R60 K80 ["Tags"]
      551 GETIMPORT                        R62 K83 [UDim2.new]
      553 LOADN                            R63 0
      554 LOADN                            R64 0
      555 LOADN                            R65 0
      556 LOADN                            R66 24
      557 CALL                             R62 4 1
      558 SETTABLEKS                       R62 R60 K84 ["Size"]
      560 GETIMPORT                        R62 K103 [Enum.AutomaticSize.X]
      562 SETTABLEKS                       R62 R60 K94 ["AutomaticSize"]
      564 MOVE                             R62 R32
      565 LOADK                            R63 K138 ["handleSecondaryAction"]
      566 CALL                             R62 1 1
      567 SETTABLEKS                       R62 R60 K130 ["OnActivated"]
      569 MOVE                             R61 R29
      570 DUPTABLE                         R62 K131 [{"Name", "Tags", "Text", "Size", "AutomaticSize", "Font"}]
      571 LOADK                            R63 K132 ["Label"]
      572 SETTABLEKS                       R63 R62 K78 ["Name"]
      574 MOVE                             R63 R32
      575 LOADK                            R64 K139 ["secondaryActionLabelTags"]
      576 CALL                             R63 1 1
      577 SETTABLEKS                       R63 R62 K80 ["Tags"]
      579 MOVE                             R63 R32
      580 LOADK                            R64 K140 ["secondaryActionText"]
      581 CALL                             R63 1 1
      582 SETTABLEKS                       R63 R62 K92 ["Text"]
      584 GETIMPORT                        R63 K83 [UDim2.new]
      586 LOADN                            R64 0
      587 LOADN                            R65 0
      588 LOADN                            R66 1
      589 LOADN                            R67 0
      590 CALL                             R63 4 1
      591 SETTABLEKS                       R63 R62 K84 ["Size"]
      593 GETIMPORT                        R63 K103 [Enum.AutomaticSize.X]
      595 SETTABLEKS                       R63 R62 K94 ["AutomaticSize"]
      597 GETIMPORT                        R63 K101 [Enum.Font.BuilderSansMedium]
      599 SETTABLEKS                       R63 R62 K93 ["Font"]
      601 CALL                             R61 1 -1
      602 SETLIST                          R60 R61 -1 [1]
      604 CALL                             R59 1 -1
      605 SETLIST                          R58 R59 -1 [1]
      607 CALL                             R57 1 1
      608 SETTABLEKS                       R57 R56 K89 ["Then"]
      610 CALL                             R55 1 -1
      611 SETLIST                          R51 R52 -1 [1]
      613 CALL                             R50 1 -1
      614 SETLIST                          R47 R48 -1 [1]
      616 CALL                             R46 1 1
      617 MOVE                             R47 R27
      618 NEWTABLE                         R48 8 1
      620 LOADK                            R50 K141 ["EditorBody"]
      621 SETTABLEKS                       R50 R48 K78 ["Name"]
      623 LOADK                            R50 K79 ["box"]
      624 SETTABLEKS                       R50 R48 K80 ["Tags"]
      626 GETIMPORT                        R50 K83 [UDim2.new]
      628 LOADN                            R51 0
      629 LOADN                            R52 0
      630 LOADN                            R53 0
      631 LOADN                            R54 32
      632 CALL                             R50 4 1
      633 SETTABLEKS                       R50 R48 K142 ["Position"]
      635 GETIMPORT                        R50 K83 [UDim2.new]
      637 LOADN                            R51 1
      638 LOADN                            R52 0
      639 LOADN                            R53 1
      640 LOADN                            R54 224
      641 CALL                             R50 4 1
      642 SETTABLEKS                       R50 R48 K84 ["Size"]
      644 LOADB                            R50 1
      645 SETTABLEKS                       R50 R48 K85 ["ClipsDescendants"]
      647 MOVE                             R49 R31
      648 DUPTABLE                         R50 K144 [{"when", "Then", "Else"}]
      649 MOVE                             R51 R32
      650 LOADK                            R52 K123 ["isCodeView"]
      651 CALL                             R51 1 1
      652 SETTABLEKS                       R51 R50 K88 ["when"]
      654 MOVE                             R51 R26
      655 NEWTABLE                         R52 0 1
      657 MOVE                             R53 R27
      658 NEWTABLE                         R54 4 1
      660 LOADK                            R56 K145 ["CodePane"]
      661 SETTABLEKS                       R56 R54 K78 ["Name"]
      663 LOADK                            R56 K146 ["surface-100"]
      664 SETTABLEKS                       R56 R54 K80 ["Tags"]
      666 GETIMPORT                        R56 K83 [UDim2.new]
      668 LOADN                            R57 1
      669 LOADN                            R58 0
      670 LOADN                            R59 1
      671 LOADN                            R60 0
      672 CALL                             R56 4 1
      673 SETTABLEKS                       R56 R54 K84 ["Size"]
      675 LOADB                            R56 1
      676 SETTABLEKS                       R56 R54 K85 ["ClipsDescendants"]
      678 MOVE                             R55 R23
      679 DUPTABLE                         R56 K151 [{"text", "onTextChanged", "language", "editable", "showLineNumbers"}]
      680 MOVE                             R57 R32
      681 LOADK                            R58 K152 ["code"]
      682 CALL                             R57 1 1
      683 SETTABLEKS                       R57 R56 K110 ["text"]
      685 MOVE                             R57 R32
      686 LOADK                            R58 K153 ["handleCodeTextChanged"]
      687 CALL                             R57 1 1
      688 SETTABLEKS                       R57 R56 K147 ["onTextChanged"]
      690 LOADK                            R57 K55 ["markdown"]
      691 SETTABLEKS                       R57 R56 K148 ["language"]
      693 LOADB                            R57 1
      694 SETTABLEKS                       R57 R56 K149 ["editable"]
      696 LOADB                            R57 1
      697 SETTABLEKS                       R57 R56 K150 ["showLineNumbers"]
      699 CALL                             R55 1 -1
      700 SETLIST                          R54 R55 -1 [1]
      702 CALL                             R53 1 -1
      703 SETLIST                          R52 R53 -1 [1]
      705 CALL                             R51 1 1
      706 SETTABLEKS                       R51 R50 K89 ["Then"]
      708 MOVE                             R51 R26
      709 NEWTABLE                         R52 0 1
      711 MOVE                             R53 R27
      712 NEWTABLE                         R54 4 1
      714 LOADK                            R56 K154 ["PreviewPane"]
      715 SETTABLEKS                       R56 R54 K78 ["Name"]
      717 LOADK                            R56 K155 ["surface-200"]
      718 SETTABLEKS                       R56 R54 K80 ["Tags"]
      720 GETIMPORT                        R56 K83 [UDim2.new]
      722 LOADN                            R57 1
      723 LOADN                            R58 0
      724 LOADN                            R59 1
      725 LOADN                            R60 0
      726 CALL                             R56 4 1
      727 SETTABLEKS                       R56 R54 K84 ["Size"]
      729 LOADB                            R56 1
      730 SETTABLEKS                       R56 R54 K85 ["ClipsDescendants"]
      732 MOVE                             R55 R4
      733 DUPTABLE                         R56 K158 [{"markdown", "editable", "virtualized", "inputCaptureActive"}]
      734 MOVE                             R57 R32
      735 LOADK                            R58 K159 ["markdownForViewer"]
      736 CALL                             R57 1 1
      737 SETTABLEKS                       R57 R56 K55 ["markdown"]
      739 LOADB                            R57 0
      740 SETTABLEKS                       R57 R56 K149 ["editable"]
      742 LOADB                            R57 0
      743 SETTABLEKS                       R57 R56 K156 ["virtualized"]
      745 MOVE                             R57 R32
      746 LOADK                            R58 K66 ["inputEnabled"]
      747 CALL                             R57 1 1
      748 SETTABLEKS                       R57 R56 K157 ["inputCaptureActive"]
      750 CALL                             R55 1 -1
      751 SETLIST                          R54 R55 -1 [1]
      753 CALL                             R53 1 -1
      754 SETLIST                          R52 R53 -1 [1]
      756 CALL                             R51 1 1
      757 SETTABLEKS                       R51 R50 K143 ["Else"]
      759 CALL                             R49 1 -1
      760 SETLIST                          R48 R49 -1 [1]
      762 CALL                             R47 1 -1
      763 SETLIST                          R45 R46 -1 [1]
      765 CALL                             R44 1 -1
      766 SETLIST                          R42 R43 -1 [1]
      768 CALL                             R41 1 -1
      769 SETLIST                          R40 R41 -1 [1]
      771 DUPCLOSURE                       R41 K160 [PROTO_28]
      772 CAPTURE                          VAL R22
      773 CAPTURE                          VAL R36
      774 CAPTURE                          VAL R35
      775 CALL                             R37 4 1
      776 LOADNIL                          R38
      777 LOADNIL                          R39
      778 LOADNIL                          R40
      779 LOADNIL                          R41
      780 LOADNIL                          R42
      781 LOADNIL                          R43
      782 LOADNIL                          R44
      783 LOADNIL                          R45
      784 LOADNIL                          R46
      785 LOADNIL                          R47
      786 LOADNIL                          R48
      787 DUPTABLE                         R49 K162 [{"current"}]
      788 LOADNIL                          R50
      789 SETTABLEKS                       R50 R49 K161 ["current"]
      791 DUPTABLE                         R50 K162 [{"current"}]
      792 LOADNIL                          R51
      793 SETTABLEKS                       R51 R50 K161 ["current"]
      795 DUPTABLE                         R51 K162 [{"current"}]
      796 LOADNIL                          R52
      797 SETTABLEKS                       R52 R51 K161 ["current"]
      799 DUPTABLE                         R52 K162 [{"current"}]
      800 LOADNIL                          R53
      801 SETTABLEKS                       R53 R52 K161 ["current"]
      803 DUPTABLE                         R53 K162 [{"current"}]
      804 LOADNIL                          R54
      805 SETTABLEKS                       R54 R53 K161 ["current"]
      807 LOADB                            R54 0
      808 LOADN                            R55 0
      809 NEWCLOSURE                       R56 P3
      810 CAPTURE                          REF R54
      811 CAPTURE                          VAL R1
      812 CAPTURE                          VAL R21
      813 CAPTURE                          VAL R37
      814 CAPTURE                          VAL R24
      815 CAPTURE                          VAL R25
      816 CAPTURE                          VAL R23
      817 CAPTURE                          VAL R4
      818 CAPTURE                          VAL R5
      819 CAPTURE                          VAL R6
      820 CAPTURE                          VAL R7
      821 CAPTURE                          VAL R8
      822 CAPTURE                          VAL R9
      823 CAPTURE                          VAL R10
      824 CAPTURE                          VAL R11
      825 CAPTURE                          VAL R12
      826 CAPTURE                          VAL R13
      827 CAPTURE                          VAL R14
      828 CAPTURE                          VAL R15
      829 CAPTURE                          VAL R16
      830 CAPTURE                          VAL R17
      831 CAPTURE                          VAL R18
      832 CAPTURE                          VAL R19
      833 CAPTURE                          VAL R20
      834 NEWCLOSURE                       R57 P4
      835 CAPTURE                          REF R38
      836 CAPTURE                          VAL R34
      837 CAPTURE                          VAL R56
      838 CAPTURE                          VAL R1
      839 CAPTURE                          REF R40
      840 CAPTURE                          REF R41
      841 CAPTURE                          REF R42
      842 CAPTURE                          REF R43
      843 CAPTURE                          REF R44
      844 CAPTURE                          REF R45
      845 CAPTURE                          REF R46
      846 CAPTURE                          REF R47
      847 CAPTURE                          REF R48
      848 CAPTURE                          VAL R49
      849 CAPTURE                          VAL R50
      850 CAPTURE                          VAL R51
      851 CAPTURE                          VAL R52
      852 CAPTURE                          VAL R53
      853 CAPTURE                          REF R39
      854 CAPTURE                          VAL R37
      855 NEWTABLE                         R58 16 0
      857 SETTABLEKS                       R58 R58 K163 ["__index"]
      859 NEWCLOSURE                       R59 P5
      860 CAPTURE                          REF R55
      861 CAPTURE                          REF R40
      862 SETTABLEKS                       R59 R58 K164 ["setMarkdown"]
      864 NEWCLOSURE                       R59 P6
      865 CAPTURE                          REF R55
      866 CAPTURE                          REF R45
      867 SETTABLEKS                       R59 R58 K165 ["setRevisions"]
      869 NEWCLOSURE                       R59 P7
      870 CAPTURE                          REF R55
      871 CAPTURE                          REF R41
      872 SETTABLEKS                       R59 R58 K166 ["setAction"]
      874 NEWCLOSURE                       R59 P8
      875 CAPTURE                          REF R55
      876 CAPTURE                          REF R42
      877 SETTABLEKS                       R59 R58 K167 ["setIsActionDisabled"]
      879 NEWCLOSURE                       R59 P9
      880 CAPTURE                          REF R55
      881 CAPTURE                          REF R43
      882 SETTABLEKS                       R59 R58 K168 ["setSecondaryAction"]
      884 NEWCLOSURE                       R59 P10
      885 CAPTURE                          REF R55
      886 CAPTURE                          REF R44
      887 SETTABLEKS                       R59 R58 K169 ["setTitle"]
      889 NEWCLOSURE                       R59 P11
      890 CAPTURE                          REF R55
      891 CAPTURE                          REF R46
      892 SETTABLEKS                       R59 R58 K170 ["setInputEnabled"]
      894 NEWCLOSURE                       R59 P12
      895 CAPTURE                          REF R55
      896 CAPTURE                          REF R38
      897 SETTABLEKS                       R59 R58 K171 ["close"]
      899 NEWCLOSURE                       R59 P13
      900 CAPTURE                          REF R55
      901 CAPTURE                          VAL R58
      902 NEWTABLE                         R60 2 0
      904 NEWCLOSURE                       R61 P14
      905 CAPTURE                          REF R55
      906 CAPTURE                          VAL R57
      907 CAPTURE                          VAL R49
      908 CAPTURE                          VAL R50
      909 CAPTURE                          VAL R51
      910 CAPTURE                          VAL R52
      911 CAPTURE                          VAL R53
      912 CAPTURE                          REF R40
      913 CAPTURE                          REF R41
      914 CAPTURE                          REF R42
      915 CAPTURE                          REF R43
      916 CAPTURE                          REF R44
      917 CAPTURE                          REF R45
      918 CAPTURE                          REF R46
      919 CAPTURE                          REF R47
      920 CAPTURE                          REF R48
      921 CAPTURE                          VAL R58
      922 SETTABLEKS                       R61 R60 K172 ["open"]
      924 NEWCLOSURE                       R61 P15
      925 CAPTURE                          REF R38
      926 SETTABLEKS                       R61 R60 K171 ["close"]
      928 CLOSEUPVALS                      R38
      929 RETURN                           R60 1
