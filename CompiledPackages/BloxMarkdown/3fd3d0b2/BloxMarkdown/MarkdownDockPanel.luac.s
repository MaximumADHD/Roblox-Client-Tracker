PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFEQKS                       R2 K0 ["code"] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_2:
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

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["onDirtyChanged"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 MOVE                             R2 R1
        7 MOVE                             R3 R0
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["editable"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+17]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKS                    R1 K1 ["code"] ; [+10]
       11 GETUPVAL                         R1 3
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 4
       14 CALL                             R2 1 -1
       15 CALL                             R1 -1 0
       16 GETUPVAL                         R1 5
       17 LOADNIL                          R2
       18 SETTABLEKS                       R2 R1 K2 ["current"]
       20 GETUPVAL                         R1 6
       21 LOADK                            R2 K3 ["markdown"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["title"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 ORK                              R1 R2 K0 [""]
        6 RETURN                           R1 1

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["action"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 ORK                              R1 R2 K0 [""]
        6 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isActionDisabled"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADK                            R2 K1 ["button variant-standard size-toolbar state-disabled"]
        7 RETURN                           R2 1
        8 LOADK                            R2 K2 ["button variant-standard size-toolbar state-enabled"]
        9 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isActionDisabled"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADK                            R2 K1 ["button-label variant-standard state-disabled"]
        7 RETURN                           R2 1
        8 LOADK                            R2 K2 ["button-label variant-standard"]
        9 RETURN                           R2 1

PROTO_14:
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

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["secondaryAction"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 ORK                              R1 R2 K0 [""]
        6 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isActionDisabled"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADK                            R2 K1 ["button variant-utility size-toolbar state-disabled"]
        7 RETURN                           R2 1
        8 LOADK                            R2 K2 ["button variant-utility size-toolbar state-enabled"]
        9 RETURN                           R2 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isActionDisabled"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADK                            R2 K1 ["button-label variant-utility state-disabled"]
        7 RETURN                           R2 1
        8 LOADK                            R2 K2 ["button-label variant-utility"]
        9 RETURN                           R2 1

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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
       40 DUPTABLE                         R12 K9 [{["current"] = }]
       41 NEWCLOSURE                       R13 P1
       42 CAPTURE                          VAL R12
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R4
       45 NEWCLOSURE                       R14 P2
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R11
       50 CAPTURE                          VAL R12
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R5
       53 GETTABLEKS                       R15 R1 K2 ["createSignal"]
       55 LOADB                            R16 0
       56 CALL                             R15 1 2
       57 NEWCLOSURE                       R17 P3
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R0
       60 GETTABLEKS                       R18 R1 K10 ["createEffect"]
       62 NEWCLOSURE                       R19 P4
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R15
       68 CAPTURE                          VAL R16
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R12
       72 CALL                             R18 1 0
       73 GETTABLEKS                       R18 R1 K10 ["createEffect"]
       75 NEWCLOSURE                       R19 P5
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R12
       82 CAPTURE                          VAL R8
       83 CALL                             R18 1 0
       84 NEWCLOSURE                       R18 P6
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R15
       88 CAPTURE                          VAL R16
       89 CAPTURE                          VAL R0
       90 GETTABLEKS                       R19 R1 K7 ["wrap"]
       92 NEWCLOSURE                       R20 P7
       93 CAPTURE                          VAL R0
       94 CALL                             R19 1 1
       95 GETTABLEKS                       R20 R1 K7 ["wrap"]
       97 NEWCLOSURE                       R21 P8
       98 CAPTURE                          VAL R0
       99 CALL                             R20 1 1
      100 GETTABLEKS                       R21 R1 K7 ["wrap"]
      102 NEWCLOSURE                       R22 P9
      103 CAPTURE                          VAL R0
      104 CALL                             R21 1 1
      105 GETTABLEKS                       R22 R1 K7 ["wrap"]
      107 NEWCLOSURE                       R23 P10
      108 CAPTURE                          VAL R0
      109 CALL                             R22 1 1
      110 GETTABLEKS                       R23 R1 K7 ["wrap"]
      112 NEWCLOSURE                       R24 P11
      113 CAPTURE                          VAL R0
      114 CALL                             R23 1 1
      115 GETTABLEKS                       R24 R1 K7 ["wrap"]
      117 NEWCLOSURE                       R25 P12
      118 CAPTURE                          VAL R0
      119 CALL                             R24 1 1
      120 NEWCLOSURE                       R25 P13
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R0
      123 CAPTURE                          VAL R16
      124 GETTABLEKS                       R26 R1 K7 ["wrap"]
      126 NEWCLOSURE                       R27 P14
      127 CAPTURE                          VAL R0
      128 CALL                             R26 1 1
      129 GETTABLEKS                       R27 R1 K7 ["wrap"]
      131 NEWCLOSURE                       R28 P15
      132 CAPTURE                          VAL R0
      133 CALL                             R27 1 1
      134 GETTABLEKS                       R28 R1 K7 ["wrap"]
      136 NEWCLOSURE                       R29 P16
      137 CAPTURE                          VAL R0
      138 CALL                             R28 1 1
      139 GETTABLEKS                       R29 R1 K7 ["wrap"]
      141 NEWCLOSURE                       R30 P17
      142 CAPTURE                          VAL R0
      143 CALL                             R29 1 1
      144 NEWCLOSURE                       R30 P18
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R0
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R6
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R11
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R16
      153 GETTABLEKS                       R31 R1 K2 ["createSignal"]
      155 LOADN                            R32 0
      156 CALL                             R31 1 2
      157 GETTABLEKS                       R33 R1 K7 ["wrap"]
      159 NEWCLOSURE                       R34 P19
      160 CAPTURE                          VAL R0
      161 CALL                             R33 1 1
      162 GETTABLEKS                       R34 R1 K11 ["createComputed"]
      164 NEWCLOSURE                       R35 P20
      165 CAPTURE                          VAL R0
      166 CAPTURE                          UPVAL U1
      167 LOADK                            R36 K12 ["revision-options"]
      168 CALL                             R34 2 1
      169 GETTABLEKS                       R35 R1 K11 ["createComputed"]
      171 NEWCLOSURE                       R36 P21
      172 CAPTURE                          VAL R31
      173 CAPTURE                          VAL R0
      174 CAPTURE                          UPVAL U1
      175 LOADK                            R37 K13 ["selected-revision-value"]
      176 CALL                             R35 2 1
      177 GETTABLEKS                       R36 R1 K11 ["createComputed"]
      179 NEWCLOSURE                       R37 P22
      180 CAPTURE                          VAL R31
      181 CAPTURE                          VAL R0
      182 CAPTURE                          UPVAL U1
      183 LOADK                            R38 K14 ["selected-revision-label"]
      184 CALL                             R36 2 1
      185 NEWCLOSURE                       R37 P23
      186 CAPTURE                          VAL R2
      187 CAPTURE                          VAL R0
      188 CAPTURE                          UPVAL U2
      189 CAPTURE                          VAL R32
      190 CAPTURE                          VAL R5
      191 CAPTURE                          VAL R7
      192 CAPTURE                          VAL R11
      193 CAPTURE                          VAL R12
      194 GETTABLEKS                       R38 R1 K10 ["createEffect"]
      196 NEWCLOSURE                       R39 P24
      197 CAPTURE                          VAL R0
      198 CAPTURE                          VAL R32
      199 CALL                             R38 1 0
      200 DUPTABLE                         R38 K41 [{"theme", "code", "isCodeView", "markdownForViewer", "handleCodeTextChanged", "handleToggleView", "hasTitle", "titleText", "hasAction", "actionText", "actionButtonTags", "actionLabelTags", "handleAction", "hasSecondaryAction", "secondaryActionText", "secondaryActionButtonTags", "secondaryActionLabelTags", "handleSecondaryAction", "hasRevisions", "revisionOptions", "selectedRevisionValue", "selectedRevisionLabel", "handleRevisionSelect", "inputEnabled", "editable", "editorToggleText"}]
      201 SETTABLEKS                       R3 R38 K15 ["theme"]
      203 SETTABLEKS                       R4 R38 K16 ["code"]
      205 SETTABLEKS                       R9 R38 K17 ["isCodeView"]
      207 SETTABLEKS                       R10 R38 K18 ["markdownForViewer"]
      209 SETTABLEKS                       R18 R38 K19 ["handleCodeTextChanged"]
      211 SETTABLEKS                       R14 R38 K20 ["handleToggleView"]
      213 SETTABLEKS                       R19 R38 K21 ["hasTitle"]
      215 SETTABLEKS                       R20 R38 K22 ["titleText"]
      217 SETTABLEKS                       R21 R38 K23 ["hasAction"]
      219 SETTABLEKS                       R22 R38 K24 ["actionText"]
      221 SETTABLEKS                       R23 R38 K25 ["actionButtonTags"]
      223 SETTABLEKS                       R24 R38 K26 ["actionLabelTags"]
      225 SETTABLEKS                       R25 R38 K27 ["handleAction"]
      227 SETTABLEKS                       R26 R38 K28 ["hasSecondaryAction"]
      229 SETTABLEKS                       R27 R38 K29 ["secondaryActionText"]
      231 SETTABLEKS                       R28 R38 K30 ["secondaryActionButtonTags"]
      233 SETTABLEKS                       R29 R38 K31 ["secondaryActionLabelTags"]
      235 SETTABLEKS                       R30 R38 K32 ["handleSecondaryAction"]
      237 SETTABLEKS                       R33 R38 K33 ["hasRevisions"]
      239 SETTABLEKS                       R34 R38 K34 ["revisionOptions"]
      241 SETTABLEKS                       R35 R38 K35 ["selectedRevisionValue"]
      243 SETTABLEKS                       R36 R38 K36 ["selectedRevisionLabel"]
      245 SETTABLEKS                       R37 R38 K37 ["handleRevisionSelect"]
      247 GETTABLEKS                       R39 R0 K38 ["inputEnabled"]
      249 SETTABLEKS                       R39 R38 K38 ["inputEnabled"]
      251 GETTABLEKS                       R39 R0 K39 ["editable"]
      253 SETTABLEKS                       R39 R38 K39 ["editable"]
      255 GETTABLEKS                       R39 R0 K40 ["editorToggleText"]
      257 SETTABLEKS                       R39 R38 K40 ["editorToggleText"]
      259 RETURN                           R38 1

PROTO_27:
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

PROTO_28:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        4 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["Enabled"]
        3 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["OverrideStudioAction"]
        4 CALL                             R1 2 1
        5 GETIMPORT                        R2 K3 [table.freeze]
        7 DUPTABLE                         R3 K6 [{"triggered", "setEnabled"}]
        8 GETTABLEKS                       R4 R1 K7 ["Triggered"]
       10 SETTABLEKS                       R4 R3 K4 ["triggered"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R1
       14 SETTABLEKS                       R4 R3 K5 ["setEnabled"]
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 ADDK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsTextInClipboardAsync"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R2 2
        6 JUMPIFNOTEQ                      R1 R2 ; [+4]
        8 GETUPVAL                         R1 3
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CopyToClipboard"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["ReadClipboardTextAsync"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1
        7 LOADK                            R0 K1 [""]
        8 RETURN                           R0 1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["DockAsDocumentAsync"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R2 1
        7 NAMECALL                         R0 R0 K1 ["FocusAsync"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 2
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETUPVAL                         R0 0
       13 GETUPVAL                         R2 1
       14 LOADB                            R3 1
       15 NAMECALL                         R0 R0 K2 ["SetSinkBareKeyShortcutsAsync"]
       17 CALL                             R0 3 0
       18 RETURN                           R0 0

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
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 MOVE                             R1 R0
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 MOVE                             R1 R0
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+3]
        4 MOVE                             R2 R1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+3]
        4 MOVE                             R2 R1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_41:
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
       23 LOADN                            R5 640
       24 LOADN                            R6 480
       25 LOADN                            R7 320
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
       45 GETIMPORT                        R3 K23 [game]
       47 LOADK                            R5 K24 ["StudioService"]
       48 NAMECALL                         R3 R3 K25 ["GetService"]
       50 CALL                             R3 2 1
       51 NEWCLOSURE                       R4 P1
       52 CAPTURE                          VAL R2
       53 GETUPVAL                         R5 1
       54 GETTABLEKS                       R5 R5 K26 ["createSignal"]
       56 LOADB                            R6 0
       57 CALL                             R5 1 2
       58 LOADNIL                          R7
       59 GETUPVAL                         R8 2
       60 JUMPIFNOT                        R8 ; [+24]
       61 LOADK                            R10 K27 ["MarkdownEditorBridge"]
       62 NAMECALL                         R8 R0 K28 ["GetPluginComponent"]
       64 CALL                             R8 2 1
       65 MOVE                             R7 R8
       66 LOADN                            R8 0
       67 GETTABLEKS                       R9 R7 K29 ["IsTextInClipboardChanged"]
       69 NEWCLOSURE                       R11 P2
       70 CAPTURE                          REF R8
       71 CAPTURE                          VAL R6
       72 NAMECALL                         R9 R9 K30 ["Connect"]
       74 CALL                             R9 2 0
       75 MOVE                             R9 R8
       76 GETIMPORT                        R10 K33 [task.spawn]
       78 NEWCLOSURE                       R11 P3
       79 CAPTURE                          REF R7
       80 CAPTURE                          REF R8
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R6
       83 CALL                             R10 1 0
       84 CLOSEUPVALS                      R8
       85 GETIMPORT                        R8 K36 [table.freeze]
       87 DUPTABLE                         R9 K49 [{"inputBegan", "inputEnded", "undo", "redo", "selectAll", "delete", "copy", "cut", "paste", "writeToClipboard", "readFromClipboard", "isTextInClipboard"}]
       88 GETTABLEKS                       R10 R2 K50 ["InputBegan"]
       90 SETTABLEKS                       R10 R9 K37 ["inputBegan"]
       92 GETTABLEKS                       R10 R2 K51 ["InputEnded"]
       94 SETTABLEKS                       R10 R9 K38 ["inputEnded"]
       96 MOVE                             R10 R4
       97 GETIMPORT                        R11 K54 [Enum.StudioAction.Undo]
       99 CALL                             R10 1 1
      100 SETTABLEKS                       R10 R9 K39 ["undo"]
      102 MOVE                             R10 R4
      103 GETIMPORT                        R11 K56 [Enum.StudioAction.Redo]
      105 CALL                             R10 1 1
      106 SETTABLEKS                       R10 R9 K40 ["redo"]
      108 MOVE                             R10 R4
      109 GETIMPORT                        R11 K58 [Enum.StudioAction.SelectAll]
      111 CALL                             R10 1 1
      112 SETTABLEKS                       R10 R9 K41 ["selectAll"]
      114 MOVE                             R10 R4
      115 GETIMPORT                        R11 K60 [Enum.StudioAction.DeleteSelected]
      117 CALL                             R10 1 1
      118 SETTABLEKS                       R10 R9 K42 ["delete"]
      120 MOVE                             R10 R4
      121 GETIMPORT                        R11 K62 [Enum.StudioAction.Copy]
      123 CALL                             R10 1 1
      124 SETTABLEKS                       R10 R9 K43 ["copy"]
      126 MOVE                             R10 R4
      127 GETIMPORT                        R11 K64 [Enum.StudioAction.Cut]
      129 CALL                             R10 1 1
      130 SETTABLEKS                       R10 R9 K44 ["cut"]
      132 MOVE                             R10 R4
      133 GETIMPORT                        R11 K66 [Enum.StudioAction.Paste]
      135 CALL                             R10 1 1
      136 SETTABLEKS                       R10 R9 K45 ["paste"]
      138 NEWCLOSURE                       R10 P4
      139 CAPTURE                          VAL R3
      140 SETTABLEKS                       R10 R9 K46 ["writeToClipboard"]
      142 NEWCLOSURE                       R10 P5
      143 CAPTURE                          UPVAL U2
      144 CAPTURE                          REF R7
      145 SETTABLEKS                       R10 R9 K47 ["readFromClipboard"]
      147 SETTABLEKS                       R5 R9 K48 ["isTextInClipboard"]
      149 CALL                             R8 1 1
      150 GETUPVAL                         R9 3
      151 JUMPIFNOT                        R9 ; [+24]
      152 LOADK                            R11 K67 ["Panels"]
      153 NAMECALL                         R9 R0 K28 ["GetPluginComponent"]
      155 CALL                             R9 2 1
      156 NAMECALL                         R10 R0 K68 ["GetUri"]
      158 CALL                             R10 1 1
      159 GETIMPORT                        R11 K70 [table.clone]
      161 MOVE                             R12 R10
      162 CALL                             R11 1 1
      163 LOADK                            R12 K67 ["Panels"]
      164 SETTABLEKS                       R12 R11 K71 ["Category"]
      166 LOADK                            R12 K14 ["MarkdownDockPanel"]
      167 SETTABLEKS                       R12 R11 K72 ["ItemId"]
      169 GETIMPORT                        R12 K33 [task.spawn]
      171 NEWCLOSURE                       R13 P6
      172 CAPTURE                          VAL R9
      173 CAPTURE                          VAL R11
      174 CAPTURE                          UPVAL U4
      175 CALL                             R12 1 0
      176 GETUPVAL                         R9 5
      177 CALL                             R9 0 0
      178 GETUPVAL                         R9 1
      179 GETTABLEKS                       R9 R9 K26 ["createSignal"]
      181 LOADK                            R10 K73 [""]
      182 CALL                             R9 1 2
      183 SETUPVAL                         R10 6
      184 GETUPVAL                         R11 1
      185 GETTABLEKS                       R11 R11 K26 ["createSignal"]
      187 LOADK                            R12 K73 [""]
      188 CALL                             R11 1 2
      189 SETUPVAL                         R12 7
      190 GETUPVAL                         R13 1
      191 GETTABLEKS                       R13 R13 K26 ["createSignal"]
      193 LOADB                            R14 0
      194 CALL                             R13 1 2
      195 SETUPVAL                         R14 8
      196 GETUPVAL                         R15 1
      197 GETTABLEKS                       R15 R15 K26 ["createSignal"]
      199 LOADK                            R16 K73 [""]
      200 CALL                             R15 1 2
      201 SETUPVAL                         R16 9
      202 GETUPVAL                         R17 1
      203 GETTABLEKS                       R17 R17 K26 ["createSignal"]
      205 LOADK                            R18 K73 [""]
      206 CALL                             R17 1 2
      207 SETUPVAL                         R18 10
      208 GETUPVAL                         R19 1
      209 GETTABLEKS                       R19 R19 K26 ["createSignal"]
      211 NEWTABLE                         R20 0 0
      213 CALL                             R19 1 2
      214 SETUPVAL                         R20 11
      215 GETUPVAL                         R21 1
      216 GETTABLEKS                       R21 R21 K26 ["createSignal"]
      218 LOADB                            R22 1
      219 CALL                             R21 1 2
      220 SETUPVAL                         R22 12
      221 GETUPVAL                         R23 1
      222 GETTABLEKS                       R23 R23 K26 ["createSignal"]
      224 LOADB                            R24 1
      225 CALL                             R23 1 2
      226 SETUPVAL                         R24 13
      227 GETUPVAL                         R25 1
      228 GETTABLEKS                       R25 R25 K26 ["createSignal"]
      230 LOADK                            R26 K74 ["Editor"]
      231 CALL                             R25 1 2
      232 SETUPVAL                         R26 14
      233 GETUPVAL                         R27 1
      234 GETTABLEKS                       R27 R27 K26 ["createSignal"]
      236 LOADK                            R28 K75 ["Versions"]
      237 CALL                             R27 1 2
      238 SETUPVAL                         R28 15
      239 DUPCLOSURE                       R29 K76 [PROTO_36]
      240 CAPTURE                          UPVAL U16
      241 DUPCLOSURE                       R30 K77 [PROTO_37]
      242 CAPTURE                          UPVAL U17
      243 DUPCLOSURE                       R31 K78 [PROTO_38]
      244 CAPTURE                          UPVAL U18
      245 DUPCLOSURE                       R32 K79 [PROTO_39]
      246 CAPTURE                          UPVAL U19
      247 DUPCLOSURE                       R33 K80 [PROTO_40]
      248 CAPTURE                          UPVAL U20
      249 GETUPVAL                         R34 1
      250 GETTABLEKS                       R34 R34 K81 ["mount"]
      252 GETUPVAL                         R35 22
      253 DUPTABLE                         R36 K98 [{"markdown", "onMarkdownChanged", "action", "onAction", "isActionDisabled", "secondaryAction", "onSecondaryAction", "title", "onDirtyChanged", "revisions", "onRevisionSelected", "inputEnabled", "editable", "editorToggleText", "versionsText", "editorCompat"}]
      254 SETTABLEKS                       R9 R36 K82 ["markdown"]
      256 SETTABLEKS                       R29 R36 K83 ["onMarkdownChanged"]
      258 SETTABLEKS                       R11 R36 K84 ["action"]
      260 SETTABLEKS                       R30 R36 K85 ["onAction"]
      262 SETTABLEKS                       R13 R36 K86 ["isActionDisabled"]
      264 SETTABLEKS                       R15 R36 K87 ["secondaryAction"]
      266 SETTABLEKS                       R31 R36 K88 ["onSecondaryAction"]
      268 SETTABLEKS                       R17 R36 K89 ["title"]
      270 SETTABLEKS                       R33 R36 K90 ["onDirtyChanged"]
      272 SETTABLEKS                       R19 R36 K91 ["revisions"]
      274 SETTABLEKS                       R32 R36 K92 ["onRevisionSelected"]
      276 SETTABLEKS                       R21 R36 K93 ["inputEnabled"]
      278 SETTABLEKS                       R23 R36 K94 ["editable"]
      280 SETTABLEKS                       R25 R36 K95 ["editorToggleText"]
      282 SETTABLEKS                       R27 R36 K96 ["versionsText"]
      284 SETTABLEKS                       R8 R36 K97 ["editorCompat"]
      286 MOVE                             R37 R2
      287 CALL                             R34 3 1
      288 SETUPVAL                         R34 21
      289 SETUPVAL                         R2 0
      290 CLOSEUPVALS                      R7
      291 RETURN                           R2 1

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

PROTO_46:
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

PROTO_47:
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

PROTO_48:
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

PROTO_49:
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

PROTO_50:
        0 DUPTABLE                         R1 K1 [{"_generation"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["_generation"]
        4 GETUPVAL                         R2 1
        5 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        7 GETIMPORT                        R0 K3 [setmetatable]
        9 CALL                             R0 2 1
       10 RETURN                           R0 1

PROTO_51:
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
       91 JUMPIFNOT                        R2 ; [+10]
       92 GETUPVAL                         R2 14
       93 GETTABLEKS                       R4 R0 K18 ["editable"]
       95 JUMPIFEQKNIL                     R4 ; [+4]
       97 GETTABLEKS                       R3 R0 K18 ["editable"]
       99 JUMP                             ; [+1]
      100 LOADB                            R3 1
      101 CALL                             R2 1 0
      102 GETUPVAL                         R2 15
      103 JUMPIFNOT                        R2 ; [+5]
      104 GETUPVAL                         R2 15
      105 GETTABLEKS                       R4 R0 K20 ["editorToggleText"]
      107 ORK                              R3 R4 K19 ["Editor"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R2 16
      110 JUMPIFNOT                        R2 ; [+5]
      111 GETUPVAL                         R2 16
      112 GETTABLEKS                       R4 R0 K22 ["versionsText"]
      114 ORK                              R3 R4 K21 ["Versions"]
      115 CALL                             R2 1 0
      116 LOADB                            R2 1
      117 SETTABLEKS                       R2 R1 K23 ["Enabled"]
      119 DUPTABLE                         R3 K25 [{"_generation"}]
      120 GETUPVAL                         R4 0
      121 SETTABLEKS                       R4 R3 K24 ["_generation"]
      123 GETUPVAL                         R4 17
      124 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
      126 GETIMPORT                        R2 K27 [setmetatable]
      128 CALL                             R2 2 1
      129 RETURN                           R2 1

PROTO_52:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["BloxMarkdown"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Blox"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["BloxCodeEditor"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["BloxUI"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["SafeFlags"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETIMPORT                        R7 K1 [script]
       33 GETTABLEKS                       R7 R7 K4 ["Parent"]
       35 GETTABLEKS                       R7 R7 K11 ["MarkdownViewer"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETIMPORT                        R8 K1 [script]
       42 GETTABLEKS                       R8 R8 K4 ["Parent"]
       44 GETTABLEKS                       R8 R8 K12 ["MarkdownStyles"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETIMPORT                        R9 K1 [script]
       51 GETTABLEKS                       R9 R9 K4 ["Parent"]
       53 GETTABLEKS                       R9 R9 K13 ["MarkdownBlock"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETIMPORT                        R10 K1 [script]
       60 GETTABLEKS                       R10 R10 K4 ["Parent"]
       62 GETTABLEKS                       R10 R10 K14 ["MarkdownDarkStyles"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETIMPORT                        R11 K1 [script]
       69 GETTABLEKS                       R11 R11 K4 ["Parent"]
       71 GETTABLEKS                       R11 R11 K15 ["MarkdownLightStyles"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETIMPORT                        R12 K1 [script]
       78 GETTABLEKS                       R12 R12 K4 ["Parent"]
       80 GETTABLEKS                       R12 R12 K16 ["InlineContent"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K6 [require]
       85 GETIMPORT                        R13 K1 [script]
       87 GETTABLEKS                       R13 R13 K4 ["Parent"]
       89 GETTABLEKS                       R13 R13 K17 ["MarkdownHeading"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K6 [require]
       94 GETIMPORT                        R14 K1 [script]
       96 GETTABLEKS                       R14 R14 K4 ["Parent"]
       98 GETTABLEKS                       R14 R14 K18 ["MarkdownParagraph"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K6 [require]
      103 GETIMPORT                        R15 K1 [script]
      105 GETTABLEKS                       R15 R15 K4 ["Parent"]
      107 GETTABLEKS                       R15 R15 K19 ["MarkdownList"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K6 [require]
      112 GETIMPORT                        R16 K1 [script]
      114 GETTABLEKS                       R16 R16 K4 ["Parent"]
      116 GETTABLEKS                       R16 R16 K20 ["MarkdownListItem"]
      118 CALL                             R15 1 1
      119 GETIMPORT                        R16 K6 [require]
      121 GETIMPORT                        R17 K1 [script]
      123 GETTABLEKS                       R17 R17 K4 ["Parent"]
      125 GETTABLEKS                       R17 R17 K21 ["MarkdownCheckboxItem"]
      127 CALL                             R16 1 1
      128 GETIMPORT                        R17 K6 [require]
      130 GETIMPORT                        R18 K1 [script]
      132 GETTABLEKS                       R18 R18 K4 ["Parent"]
      134 GETTABLEKS                       R18 R18 K22 ["MarkdownCodeBlock"]
      136 CALL                             R17 1 1
      137 GETIMPORT                        R18 K6 [require]
      139 GETIMPORT                        R19 K1 [script]
      141 GETTABLEKS                       R19 R19 K4 ["Parent"]
      143 GETTABLEKS                       R19 R19 K23 ["MarkdownImage"]
      145 CALL                             R18 1 1
      146 GETIMPORT                        R19 K6 [require]
      148 GETIMPORT                        R20 K1 [script]
      150 GETTABLEKS                       R20 R20 K4 ["Parent"]
      152 GETTABLEKS                       R20 R20 K24 ["MarkdownTable"]
      154 CALL                             R19 1 1
      155 GETIMPORT                        R20 K6 [require]
      157 GETIMPORT                        R21 K1 [script]
      159 GETTABLEKS                       R21 R21 K4 ["Parent"]
      161 GETTABLEKS                       R21 R21 K25 ["MarkdownDivider"]
      163 CALL                             R20 1 1
      164 GETIMPORT                        R21 K6 [require]
      166 GETIMPORT                        R22 K1 [script]
      168 GETTABLEKS                       R22 R22 K4 ["Parent"]
      170 GETTABLEKS                       R22 R22 K26 ["MarkdownQuote"]
      172 CALL                             R21 1 1
      173 GETIMPORT                        R22 K6 [require]
      175 GETIMPORT                        R23 K1 [script]
      177 GETTABLEKS                       R23 R23 K4 ["Parent"]
      179 GETTABLEKS                       R23 R23 K27 ["MarkdownComponent"]
      181 CALL                             R22 1 1
      182 GETTABLEKS                       R23 R4 K28 ["ComponentStyles"]
      184 GETTABLEKS                       R24 R4 K29 ["ThemeProvider"]
      186 GETTABLEKS                       R25 R3 K30 ["CodeEditor"]
      188 GETTABLEKS                       R26 R4 K31 ["SelectInput"]
      190 GETTABLEKS                       R27 R4 K32 ["ToggleButton"]
      192 GETTABLEKS                       R28 R2 K33 ["template"]
      194 GETTABLEKS                       R29 R2 K34 ["Frame"]
      196 GETTABLEKS                       R30 R2 K35 ["TextButton"]
      198 GETTABLEKS                       R31 R2 K36 ["TextLabel"]
      200 GETTABLEKS                       R32 R2 K37 ["Provide"]
      202 GETTABLEKS                       R33 R2 K38 ["If"]
      204 GETTABLEKS                       R34 R2 K39 ["expr"]
      206 GETTABLEKS                       R35 R5 K40 ["createGetFFlag"]
      208 LOADK                            R36 K41 ["BloxMarkdownDockPanelCenter2"]
      209 CALL                             R35 1 1
      210 CALL                             R35 0 1
      211 GETTABLEKS                       R36 R5 K40 ["createGetFFlag"]
      213 LOADK                            R37 K42 ["EnableMarkdownEditorBridge"]
      214 CALL                             R36 1 1
      215 CALL                             R36 0 1
      216 GETTABLEKS                       R37 R5 K40 ["createGetFFlag"]
      218 LOADK                            R38 K43 ["StudioSinkBareKeyShortcuts"]
      219 CALL                             R37 1 1
      220 CALL                             R37 0 1
      221 NEWTABLE                         R38 0 12
      223 LOADK                            R39 K44 ["Jan"]
      224 LOADK                            R40 K45 ["Feb"]
      225 LOADK                            R41 K46 ["Mar"]
      226 LOADK                            R42 K47 ["Apr"]
      227 LOADK                            R43 K48 ["May"]
      228 LOADK                            R44 K49 ["Jun"]
      229 LOADK                            R45 K50 ["Jul"]
      230 LOADK                            R46 K51 ["Aug"]
      231 LOADK                            R47 K52 ["Sep"]
      232 LOADK                            R48 K53 ["Oct"]
      233 LOADK                            R49 K54 ["Nov"]
      234 LOADK                            R50 K55 ["Dec"]
      235 SETLIST                          R38 R39 12 [1]
      237 DUPCLOSURE                       R39 K56 [PROTO_0]
      238 CAPTURE                          VAL R38
      239 MOVE                             R40 R28
      240 LOADK                            R41 K57 ["MarkdownDockPanel"]
      241 DUPTABLE                         R42 K79 [{["markdown"] = "", ["onMarkdownChanged"] = , ["action"] = "", ["onAction"] = , ["isActionDisabled"] = False, ["secondaryAction"] = "", ["onSecondaryAction"] = , ["title"] = "", ["onDirtyChanged"] = , ["revisions"], ["onRevisionSelected"] = , ["inputEnabled"] = True, ["editable"] = True, ["editorToggleText"] = "Editor", ["versionsText"] = "Versions"}]
      242 NEWTABLE                         R43 0 0
      244 SETTABLEKS                       R43 R42 K70 ["revisions"]
      246 NEWTABLE                         R43 0 1
      248 MOVE                             R44 R32
      249 NEWTABLE                         R45 2 2
      251 GETTABLEKS                       R48 R24 K80 ["token"]
      253 SETTABLEKS                       R48 R45 K81 ["provider"]
      255 MOVE                             R48 R34
      256 LOADK                            R49 K82 ["theme"]
      257 CALL                             R48 1 1
      258 SETTABLEKS                       R48 R45 K83 ["value"]
      260 MOVE                             R46 R23
      261 NEWTABLE                         R47 0 0
      263 CALL                             R46 1 1
      264 MOVE                             R47 R29
      265 NEWTABLE                         R48 4 2
      267 LOADK                            R51 K84 ["MarkdownDockPanelRoot"]
      268 SETTABLEKS                       R51 R48 K85 ["Name"]
      270 LOADK                            R51 K86 ["box"]
      271 SETTABLEKS                       R51 R48 K87 ["Tags"]
      273 GETIMPORT                        R51 K90 [UDim2.new]
      275 LOADN                            R52 1
      276 LOADN                            R53 0
      277 LOADN                            R54 1
      278 LOADN                            R55 0
      279 CALL                             R51 4 1
      280 SETTABLEKS                       R51 R48 K91 ["Size"]
      282 LOADB                            R51 1
      283 SETTABLEKS                       R51 R48 K92 ["ClipsDescendants"]
      285 MOVE                             R49 R29
      286 NEWTABLE                         R50 4 3
      288 LOADK                            R54 K93 ["Toolbar"]
      289 SETTABLEKS                       R54 R50 K85 ["Name"]
      291 LOADK                            R54 K94 ["surface-100 row pad-x-8 gap-8 align-y-center"]
      292 SETTABLEKS                       R54 R50 K87 ["Tags"]
      294 GETIMPORT                        R54 K90 [UDim2.new]
      296 LOADN                            R55 1
      297 LOADN                            R56 0
      298 LOADN                            R57 0
      299 LOADN                            R58 32
      300 CALL                             R54 4 1
      301 SETTABLEKS                       R54 R50 K91 ["Size"]
      303 MOVE                             R51 R33
      304 DUPTABLE                         R52 K97 [{"when", "Then"}]
      305 MOVE                             R53 R34
      306 LOADK                            R54 K98 ["hasTitle"]
      307 CALL                             R53 1 1
      308 SETTABLEKS                       R53 R52 K95 ["when"]
      310 MOVE                             R53 R28
      311 NEWTABLE                         R54 0 1
      313 MOVE                             R55 R31
      314 DUPTABLE                         R56 K104 [{["Name"] = "TitleLabel", ["Tags"] = "text-label text-truncate-end", ["Text"], ["Font"], ["Size"], ["AutomaticSize"]}]
      315 MOVE                             R57 R34
      316 LOADK                            R58 K105 ["titleText"]
      317 CALL                             R57 1 1
      318 SETTABLEKS                       R57 R56 K101 ["Text"]
      320 GETIMPORT                        R57 K108 [Enum.Font.BuilderSansMedium]
      322 SETTABLEKS                       R57 R56 K102 ["Font"]
      324 GETIMPORT                        R57 K90 [UDim2.new]
      326 LOADN                            R58 0
      327 LOADN                            R59 0
      328 LOADN                            R60 1
      329 LOADN                            R61 0
      330 CALL                             R57 4 1
      331 SETTABLEKS                       R57 R56 K91 ["Size"]
      333 GETIMPORT                        R57 K110 [Enum.AutomaticSize.X]
      335 SETTABLEKS                       R57 R56 K103 ["AutomaticSize"]
      337 CALL                             R55 1 -1
      338 SETLIST                          R54 R55 -1 [1]
      340 CALL                             R53 1 1
      341 SETTABLEKS                       R53 R52 K96 ["Then"]
      343 CALL                             R51 1 1
      344 MOVE                             R52 R29
      345 DUPTABLE                         R53 K113 [{["Name"] = "Spacer", ["Tags"] = "box grow-x"}]
      346 CALL                             R52 1 1
      347 MOVE                             R53 R29
      348 NEWTABLE                         R54 2 4
      350 LOADK                            R59 K114 ["RightControls"]
      351 SETTABLEKS                       R59 R54 K85 ["Name"]
      353 LOADK                            R59 K115 ["box row gap-8 auto-xy align-y-center"]
      354 SETTABLEKS                       R59 R54 K87 ["Tags"]
      356 MOVE                             R55 R33
      357 DUPTABLE                         R56 K97 [{"when", "Then"}]
      358 MOVE                             R57 R34
      359 LOADK                            R58 K116 ["hasRevisions"]
      360 CALL                             R57 1 1
      361 SETTABLEKS                       R57 R56 K95 ["when"]
      363 MOVE                             R57 R28
      364 NEWTABLE                         R58 0 1
      366 MOVE                             R59 R26
      367 DUPTABLE                         R60 K121 [{"text", "options", "selectedValue", "onSelect"}]
      368 MOVE                             R61 R34
      369 LOADK                            R62 K122 ["selectedRevisionLabel"]
      370 CALL                             R61 1 1
      371 SETTABLEKS                       R61 R60 K117 ["text"]
      373 MOVE                             R61 R34
      374 LOADK                            R62 K123 ["revisionOptions"]
      375 CALL                             R61 1 1
      376 SETTABLEKS                       R61 R60 K118 ["options"]
      378 MOVE                             R61 R34
      379 LOADK                            R62 K124 ["selectedRevisionValue"]
      380 CALL                             R61 1 1
      381 SETTABLEKS                       R61 R60 K119 ["selectedValue"]
      383 MOVE                             R61 R34
      384 LOADK                            R62 K125 ["fn(value) handleRevisionSelect(value)"]
      385 CALL                             R61 1 1
      386 SETTABLEKS                       R61 R60 K120 ["onSelect"]
      388 CALL                             R59 1 -1
      389 SETLIST                          R58 R59 -1 [1]
      391 CALL                             R57 1 1
      392 SETTABLEKS                       R57 R56 K96 ["Then"]
      394 CALL                             R55 1 1
      395 MOVE                             R56 R33
      396 DUPTABLE                         R57 K97 [{"when", "Then"}]
      397 MOVE                             R58 R34
      398 LOADK                            R59 K74 ["editable"]
      399 CALL                             R58 1 1
      400 SETTABLEKS                       R58 R57 K95 ["when"]
      402 MOVE                             R58 R28
      403 NEWTABLE                         R59 0 1
      405 MOVE                             R60 R27
      406 DUPTABLE                         R61 K130 [{["selected"], ["onToggle"], ["text"], ["labelPosition"] = "left"}]
      407 MOVE                             R62 R34
      408 LOADK                            R63 K131 ["isCodeView"]
      409 CALL                             R62 1 1
      410 SETTABLEKS                       R62 R61 K126 ["selected"]
      412 MOVE                             R62 R34
      413 LOADK                            R63 K132 ["handleToggleView"]
      414 CALL                             R62 1 1
      415 SETTABLEKS                       R62 R61 K127 ["onToggle"]
      417 MOVE                             R62 R34
      418 LOADK                            R63 K75 ["editorToggleText"]
      419 CALL                             R62 1 1
      420 SETTABLEKS                       R62 R61 K117 ["text"]
      422 CALL                             R60 1 -1
      423 SETLIST                          R59 R60 -1 [1]
      425 CALL                             R58 1 1
      426 SETTABLEKS                       R58 R57 K96 ["Then"]
      428 CALL                             R56 1 1
      429 MOVE                             R57 R33
      430 DUPTABLE                         R58 K97 [{"when", "Then"}]
      431 MOVE                             R59 R34
      432 LOADK                            R60 K133 ["hasAction"]
      433 CALL                             R59 1 1
      434 SETTABLEKS                       R59 R58 K95 ["when"]
      436 MOVE                             R59 R28
      437 NEWTABLE                         R60 0 1
      439 MOVE                             R61 R30
      440 NEWTABLE                         R62 8 1
      442 LOADK                            R64 K134 ["ActionButton"]
      443 SETTABLEKS                       R64 R62 K85 ["Name"]
      445 MOVE                             R64 R34
      446 LOADK                            R65 K135 ["actionButtonTags"]
      447 CALL                             R64 1 1
      448 SETTABLEKS                       R64 R62 K87 ["Tags"]
      450 GETIMPORT                        R64 K90 [UDim2.new]
      452 LOADN                            R65 0
      453 LOADN                            R66 0
      454 LOADN                            R67 0
      455 LOADN                            R68 24
      456 CALL                             R64 4 1
      457 SETTABLEKS                       R64 R62 K91 ["Size"]
      459 GETIMPORT                        R64 K110 [Enum.AutomaticSize.X]
      461 SETTABLEKS                       R64 R62 K103 ["AutomaticSize"]
      463 MOVE                             R64 R34
      464 LOADK                            R65 K136 ["handleAction"]
      465 CALL                             R64 1 1
      466 SETTABLEKS                       R64 R62 K137 ["OnActivated"]
      468 MOVE                             R63 R31
      469 DUPTABLE                         R64 K139 [{["Name"] = "Label", ["Tags"], ["Text"], ["Size"], ["AutomaticSize"], ["Font"]}]
      470 MOVE                             R65 R34
      471 LOADK                            R66 K140 ["actionLabelTags"]
      472 CALL                             R65 1 1
      473 SETTABLEKS                       R65 R64 K87 ["Tags"]
      475 MOVE                             R65 R34
      476 LOADK                            R66 K141 ["actionText"]
      477 CALL                             R65 1 1
      478 SETTABLEKS                       R65 R64 K101 ["Text"]
      480 GETIMPORT                        R65 K90 [UDim2.new]
      482 LOADN                            R66 0
      483 LOADN                            R67 0
      484 LOADN                            R68 1
      485 LOADN                            R69 0
      486 CALL                             R65 4 1
      487 SETTABLEKS                       R65 R64 K91 ["Size"]
      489 GETIMPORT                        R65 K110 [Enum.AutomaticSize.X]
      491 SETTABLEKS                       R65 R64 K103 ["AutomaticSize"]
      493 GETIMPORT                        R65 K108 [Enum.Font.BuilderSansMedium]
      495 SETTABLEKS                       R65 R64 K102 ["Font"]
      497 CALL                             R63 1 -1
      498 SETLIST                          R62 R63 -1 [1]
      500 CALL                             R61 1 -1
      501 SETLIST                          R60 R61 -1 [1]
      503 CALL                             R59 1 1
      504 SETTABLEKS                       R59 R58 K96 ["Then"]
      506 CALL                             R57 1 1
      507 MOVE                             R58 R33
      508 DUPTABLE                         R59 K97 [{"when", "Then"}]
      509 MOVE                             R60 R34
      510 LOADK                            R61 K142 ["hasSecondaryAction"]
      511 CALL                             R60 1 1
      512 SETTABLEKS                       R60 R59 K95 ["when"]
      514 MOVE                             R60 R28
      515 NEWTABLE                         R61 0 1
      517 MOVE                             R62 R30
      518 NEWTABLE                         R63 8 1
      520 LOADK                            R65 K143 ["SecondaryActionButton"]
      521 SETTABLEKS                       R65 R63 K85 ["Name"]
      523 MOVE                             R65 R34
      524 LOADK                            R66 K144 ["secondaryActionButtonTags"]
      525 CALL                             R65 1 1
      526 SETTABLEKS                       R65 R63 K87 ["Tags"]
      528 GETIMPORT                        R65 K90 [UDim2.new]
      530 LOADN                            R66 0
      531 LOADN                            R67 0
      532 LOADN                            R68 0
      533 LOADN                            R69 24
      534 CALL                             R65 4 1
      535 SETTABLEKS                       R65 R63 K91 ["Size"]
      537 GETIMPORT                        R65 K110 [Enum.AutomaticSize.X]
      539 SETTABLEKS                       R65 R63 K103 ["AutomaticSize"]
      541 MOVE                             R65 R34
      542 LOADK                            R66 K145 ["handleSecondaryAction"]
      543 CALL                             R65 1 1
      544 SETTABLEKS                       R65 R63 K137 ["OnActivated"]
      546 MOVE                             R64 R31
      547 DUPTABLE                         R65 K139 [{["Name"] = "Label", ["Tags"], ["Text"], ["Size"], ["AutomaticSize"], ["Font"]}]
      548 MOVE                             R66 R34
      549 LOADK                            R67 K146 ["secondaryActionLabelTags"]
      550 CALL                             R66 1 1
      551 SETTABLEKS                       R66 R65 K87 ["Tags"]
      553 MOVE                             R66 R34
      554 LOADK                            R67 K147 ["secondaryActionText"]
      555 CALL                             R66 1 1
      556 SETTABLEKS                       R66 R65 K101 ["Text"]
      558 GETIMPORT                        R66 K90 [UDim2.new]
      560 LOADN                            R67 0
      561 LOADN                            R68 0
      562 LOADN                            R69 1
      563 LOADN                            R70 0
      564 CALL                             R66 4 1
      565 SETTABLEKS                       R66 R65 K91 ["Size"]
      567 GETIMPORT                        R66 K110 [Enum.AutomaticSize.X]
      569 SETTABLEKS                       R66 R65 K103 ["AutomaticSize"]
      571 GETIMPORT                        R66 K108 [Enum.Font.BuilderSansMedium]
      573 SETTABLEKS                       R66 R65 K102 ["Font"]
      575 CALL                             R64 1 -1
      576 SETLIST                          R63 R64 -1 [1]
      578 CALL                             R62 1 -1
      579 SETLIST                          R61 R62 -1 [1]
      581 CALL                             R60 1 1
      582 SETTABLEKS                       R60 R59 K96 ["Then"]
      584 CALL                             R58 1 -1
      585 SETLIST                          R54 R55 -1 [1]
      587 CALL                             R53 1 -1
      588 SETLIST                          R50 R51 -1 [1]
      590 CALL                             R49 1 1
      591 MOVE                             R50 R29
      592 NEWTABLE                         R51 8 1
      594 LOADK                            R53 K148 ["EditorBody"]
      595 SETTABLEKS                       R53 R51 K85 ["Name"]
      597 LOADK                            R53 K86 ["box"]
      598 SETTABLEKS                       R53 R51 K87 ["Tags"]
      600 GETIMPORT                        R53 K90 [UDim2.new]
      602 LOADN                            R54 0
      603 LOADN                            R55 0
      604 LOADN                            R56 0
      605 LOADN                            R57 32
      606 CALL                             R53 4 1
      607 SETTABLEKS                       R53 R51 K149 ["Position"]
      609 GETIMPORT                        R53 K90 [UDim2.new]
      611 LOADN                            R54 1
      612 LOADN                            R55 0
      613 LOADN                            R56 1
      614 LOADN                            R57 -32
      615 CALL                             R53 4 1
      616 SETTABLEKS                       R53 R51 K91 ["Size"]
      618 LOADB                            R53 1
      619 SETTABLEKS                       R53 R51 K92 ["ClipsDescendants"]
      621 MOVE                             R52 R33
      622 DUPTABLE                         R53 K151 [{"when", "Then", "Else"}]
      623 MOVE                             R54 R34
      624 LOADK                            R55 K131 ["isCodeView"]
      625 CALL                             R54 1 1
      626 SETTABLEKS                       R54 R53 K95 ["when"]
      628 MOVE                             R54 R28
      629 NEWTABLE                         R55 0 1
      631 MOVE                             R56 R29
      632 NEWTABLE                         R57 4 1
      634 LOADK                            R59 K152 ["CodePane"]
      635 SETTABLEKS                       R59 R57 K85 ["Name"]
      637 LOADK                            R59 K153 ["surface-100"]
      638 SETTABLEKS                       R59 R57 K87 ["Tags"]
      640 GETIMPORT                        R59 K90 [UDim2.new]
      642 LOADN                            R60 1
      643 LOADN                            R61 0
      644 LOADN                            R62 1
      645 LOADN                            R63 0
      646 CALL                             R59 4 1
      647 SETTABLEKS                       R59 R57 K91 ["Size"]
      649 LOADB                            R59 1
      650 SETTABLEKS                       R59 R57 K92 ["ClipsDescendants"]
      652 MOVE                             R58 R25
      653 DUPTABLE                         R59 K158 [{["text"], ["onTextChanged"], ["language"] = "markdown", ["editable"], ["showLineNumbers"] = True, ["editorCompat"]}]
      654 MOVE                             R60 R34
      655 LOADK                            R61 K159 ["code"]
      656 CALL                             R60 1 1
      657 SETTABLEKS                       R60 R59 K117 ["text"]
      659 MOVE                             R60 R34
      660 LOADK                            R61 K160 ["handleCodeTextChanged"]
      661 CALL                             R60 1 1
      662 SETTABLEKS                       R60 R59 K154 ["onTextChanged"]
      664 MOVE                             R60 R34
      665 LOADK                            R61 K74 ["editable"]
      666 CALL                             R60 1 1
      667 SETTABLEKS                       R60 R59 K74 ["editable"]
      669 MOVE                             R60 R34
      670 LOADK                            R61 K157 ["editorCompat"]
      671 CALL                             R60 1 1
      672 SETTABLEKS                       R60 R59 K157 ["editorCompat"]
      674 CALL                             R58 1 -1
      675 SETLIST                          R57 R58 -1 [1]
      677 CALL                             R56 1 -1
      678 SETLIST                          R55 R56 -1 [1]
      680 CALL                             R54 1 1
      681 SETTABLEKS                       R54 R53 K96 ["Then"]
      683 MOVE                             R54 R28
      684 NEWTABLE                         R55 0 1
      686 MOVE                             R56 R29
      687 NEWTABLE                         R57 4 1
      689 LOADK                            R59 K161 ["PreviewPane"]
      690 SETTABLEKS                       R59 R57 K85 ["Name"]
      692 LOADK                            R59 K162 ["surface-200"]
      693 SETTABLEKS                       R59 R57 K87 ["Tags"]
      695 GETIMPORT                        R59 K90 [UDim2.new]
      697 LOADN                            R60 1
      698 LOADN                            R61 0
      699 LOADN                            R62 1
      700 LOADN                            R63 0
      701 CALL                             R59 4 1
      702 SETTABLEKS                       R59 R57 K91 ["Size"]
      704 LOADB                            R59 1
      705 SETTABLEKS                       R59 R57 K92 ["ClipsDescendants"]
      707 MOVE                             R58 R6
      708 DUPTABLE                         R59 K165 [{["markdown"], ["editable"] = False, ["virtualized"] = False, ["inputCaptureActive"]}]
      709 MOVE                             R60 R34
      710 LOADK                            R61 K166 ["markdownForViewer"]
      711 CALL                             R60 1 1
      712 SETTABLEKS                       R60 R59 K58 ["markdown"]
      714 MOVE                             R60 R34
      715 LOADK                            R61 K72 ["inputEnabled"]
      716 CALL                             R60 1 1
      717 SETTABLEKS                       R60 R59 K164 ["inputCaptureActive"]
      719 CALL                             R58 1 -1
      720 SETLIST                          R57 R58 -1 [1]
      722 CALL                             R56 1 -1
      723 SETLIST                          R55 R56 -1 [1]
      725 CALL                             R54 1 1
      726 SETTABLEKS                       R54 R53 K150 ["Else"]
      728 CALL                             R52 1 -1
      729 SETLIST                          R51 R52 -1 [1]
      731 CALL                             R50 1 -1
      732 SETLIST                          R48 R49 -1 [1]
      734 CALL                             R47 1 -1
      735 SETLIST                          R45 R46 -1 [1]
      737 CALL                             R44 1 -1
      738 SETLIST                          R43 R44 -1 [1]
      740 DUPCLOSURE                       R44 K167 [PROTO_26]
      741 CAPTURE                          VAL R24
      742 CAPTURE                          VAL R39
      743 CAPTURE                          VAL R38
      744 CALL                             R40 4 1
      745 LOADNIL                          R41
      746 LOADNIL                          R42
      747 LOADNIL                          R43
      748 LOADNIL                          R44
      749 LOADNIL                          R45
      750 LOADNIL                          R46
      751 LOADNIL                          R47
      752 LOADNIL                          R48
      753 LOADNIL                          R49
      754 LOADNIL                          R50
      755 LOADNIL                          R51
      756 LOADNIL                          R52
      757 DUPTABLE                         R53 K169 [{["current"] = }]
      758 DUPTABLE                         R54 K169 [{["current"] = }]
      759 DUPTABLE                         R55 K169 [{["current"] = }]
      760 DUPTABLE                         R56 K169 [{["current"] = }]
      761 DUPTABLE                         R57 K169 [{["current"] = }]
      762 LOADB                            R58 0
      763 LOADN                            R59 0
      764 NEWCLOSURE                       R60 P2
      765 CAPTURE                          REF R58
      766 CAPTURE                          VAL R2
      767 CAPTURE                          VAL R23
      768 CAPTURE                          VAL R40
      769 CAPTURE                          VAL R26
      770 CAPTURE                          VAL R27
      771 CAPTURE                          VAL R25
      772 CAPTURE                          VAL R6
      773 CAPTURE                          VAL R7
      774 CAPTURE                          VAL R8
      775 CAPTURE                          VAL R9
      776 CAPTURE                          VAL R10
      777 CAPTURE                          VAL R11
      778 CAPTURE                          VAL R12
      779 CAPTURE                          VAL R13
      780 CAPTURE                          VAL R14
      781 CAPTURE                          VAL R15
      782 CAPTURE                          VAL R16
      783 CAPTURE                          VAL R17
      784 CAPTURE                          VAL R18
      785 CAPTURE                          VAL R19
      786 CAPTURE                          VAL R20
      787 CAPTURE                          VAL R21
      788 CAPTURE                          VAL R22
      789 NEWCLOSURE                       R61 P3
      790 CAPTURE                          REF R41
      791 CAPTURE                          VAL R2
      792 CAPTURE                          VAL R36
      793 CAPTURE                          VAL R35
      794 CAPTURE                          VAL R37
      795 CAPTURE                          VAL R60
      796 CAPTURE                          REF R43
      797 CAPTURE                          REF R44
      798 CAPTURE                          REF R45
      799 CAPTURE                          REF R46
      800 CAPTURE                          REF R47
      801 CAPTURE                          REF R48
      802 CAPTURE                          REF R49
      803 CAPTURE                          REF R50
      804 CAPTURE                          REF R51
      805 CAPTURE                          REF R52
      806 CAPTURE                          VAL R53
      807 CAPTURE                          VAL R54
      808 CAPTURE                          VAL R55
      809 CAPTURE                          VAL R56
      810 CAPTURE                          VAL R57
      811 CAPTURE                          REF R42
      812 CAPTURE                          VAL R40
      813 NEWTABLE                         R62 16 0
      815 SETTABLEKS                       R62 R62 K170 ["__index"]
      817 NEWCLOSURE                       R63 P4
      818 CAPTURE                          REF R59
      819 CAPTURE                          REF R43
      820 SETTABLEKS                       R63 R62 K171 ["setMarkdown"]
      822 NEWCLOSURE                       R63 P5
      823 CAPTURE                          REF R59
      824 CAPTURE                          REF R48
      825 SETTABLEKS                       R63 R62 K172 ["setRevisions"]
      827 NEWCLOSURE                       R63 P6
      828 CAPTURE                          REF R59
      829 CAPTURE                          REF R44
      830 SETTABLEKS                       R63 R62 K173 ["setAction"]
      832 NEWCLOSURE                       R63 P7
      833 CAPTURE                          REF R59
      834 CAPTURE                          REF R45
      835 SETTABLEKS                       R63 R62 K174 ["setIsActionDisabled"]
      837 NEWCLOSURE                       R63 P8
      838 CAPTURE                          REF R59
      839 CAPTURE                          REF R46
      840 SETTABLEKS                       R63 R62 K175 ["setSecondaryAction"]
      842 NEWCLOSURE                       R63 P9
      843 CAPTURE                          REF R59
      844 CAPTURE                          REF R47
      845 SETTABLEKS                       R63 R62 K176 ["setTitle"]
      847 NEWCLOSURE                       R63 P10
      848 CAPTURE                          REF R59
      849 CAPTURE                          REF R49
      850 SETTABLEKS                       R63 R62 K177 ["setInputEnabled"]
      852 NEWCLOSURE                       R63 P11
      853 CAPTURE                          REF R59
      854 CAPTURE                          REF R41
      855 SETTABLEKS                       R63 R62 K178 ["close"]
      857 NEWCLOSURE                       R63 P12
      858 CAPTURE                          REF R59
      859 CAPTURE                          VAL R62
      860 NEWTABLE                         R64 2 0
      862 NEWCLOSURE                       R65 P13
      863 CAPTURE                          REF R59
      864 CAPTURE                          VAL R61
      865 CAPTURE                          VAL R53
      866 CAPTURE                          VAL R54
      867 CAPTURE                          VAL R55
      868 CAPTURE                          VAL R56
      869 CAPTURE                          VAL R57
      870 CAPTURE                          REF R43
      871 CAPTURE                          REF R44
      872 CAPTURE                          REF R45
      873 CAPTURE                          REF R46
      874 CAPTURE                          REF R47
      875 CAPTURE                          REF R48
      876 CAPTURE                          REF R49
      877 CAPTURE                          REF R50
      878 CAPTURE                          REF R51
      879 CAPTURE                          REF R52
      880 CAPTURE                          VAL R62
      881 SETTABLEKS                       R65 R64 K179 ["open"]
      883 NEWCLOSURE                       R65 P14
      884 CAPTURE                          REF R41
      885 SETTABLEKS                       R65 R64 K178 ["close"]
      887 CLOSEUPVALS                      R41
      888 RETURN                           R64 1
