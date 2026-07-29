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
        0 RETURN                           R0 0

PROTO_36:
        0 GETIMPORT                        R0 K2 [table.freeze]
        2 DUPTABLE                         R1 K5 [{"triggered", "setEnabled"}]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K6 ["Event"]
        6 SETTABLEKS                       R2 R1 K3 ["triggered"]
        8 DUPCLOSURE                       R2 K7 [PROTO_35]
        9 SETTABLEKS                       R2 R1 K4 ["setEnabled"]
       11 CALL                             R0 1 -1
       12 RETURN                           R0 -1

PROTO_37:
        0 RETURN                           R0 0

PROTO_38:
        0 LOADK                            R0 K0 [""]
        1 RETURN                           R0 1

PROTO_39:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_40:
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

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+3]
        4 MOVE                             R2 R1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 MOVE                             R1 R0
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 MOVE                             R1 R0
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+3]
        4 MOVE                             R2 R1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+3]
        4 MOVE                             R2 R1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_46:
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
       45 LOADNIL                          R3
       46 GETUPVAL                         R4 1
       47 JUMPIFNOT                        R4 ; [+108]
       48 GETIMPORT                        R4 K23 [game]
       50 LOADK                            R6 K24 ["StudioService"]
       51 NAMECALL                         R4 R4 K25 ["GetService"]
       53 CALL                             R4 2 1
       54 NEWCLOSURE                       R5 P1
       55 CAPTURE                          VAL R2
       56 GETUPVAL                         R6 2
       57 GETTABLEKS                       R6 R6 K26 ["createSignal"]
       59 LOADB                            R7 0
       60 CALL                             R6 1 2
       61 LOADNIL                          R8
       62 GETUPVAL                         R9 3
       63 JUMPIFNOT                        R9 ; [+24]
       64 LOADK                            R11 K27 ["MarkdownEditorBridge"]
       65 NAMECALL                         R9 R0 K28 ["GetPluginComponent"]
       67 CALL                             R9 2 1
       68 MOVE                             R8 R9
       69 LOADN                            R9 0
       70 GETTABLEKS                       R10 R8 K29 ["IsTextInClipboardChanged"]
       72 NEWCLOSURE                       R12 P2
       73 CAPTURE                          REF R9
       74 CAPTURE                          VAL R7
       75 NAMECALL                         R10 R10 K30 ["Connect"]
       77 CALL                             R10 2 0
       78 MOVE                             R10 R9
       79 GETIMPORT                        R11 K33 [task.spawn]
       81 NEWCLOSURE                       R12 P3
       82 CAPTURE                          REF R8
       83 CAPTURE                          REF R9
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R7
       86 CALL                             R11 1 0
       87 CLOSEUPVALS                      R9
       88 GETIMPORT                        R9 K36 [table.freeze]
       90 DUPTABLE                         R10 K49 [{"inputBegan", "inputEnded", "undo", "redo", "selectAll", "delete", "copy", "cut", "paste", "writeToClipboard", "readFromClipboard", "isTextInClipboard"}]
       91 GETTABLEKS                       R11 R2 K50 ["InputBegan"]
       93 SETTABLEKS                       R11 R10 K37 ["inputBegan"]
       95 GETTABLEKS                       R11 R2 K51 ["InputEnded"]
       97 SETTABLEKS                       R11 R10 K38 ["inputEnded"]
       99 MOVE                             R11 R5
      100 GETIMPORT                        R12 K54 [Enum.StudioAction.Undo]
      102 CALL                             R11 1 1
      103 SETTABLEKS                       R11 R10 K39 ["undo"]
      105 MOVE                             R11 R5
      106 GETIMPORT                        R12 K56 [Enum.StudioAction.Redo]
      108 CALL                             R11 1 1
      109 SETTABLEKS                       R11 R10 K40 ["redo"]
      111 MOVE                             R11 R5
      112 GETIMPORT                        R12 K58 [Enum.StudioAction.SelectAll]
      114 CALL                             R11 1 1
      115 SETTABLEKS                       R11 R10 K41 ["selectAll"]
      117 MOVE                             R11 R5
      118 GETIMPORT                        R12 K60 [Enum.StudioAction.DeleteSelected]
      120 CALL                             R11 1 1
      121 SETTABLEKS                       R11 R10 K42 ["delete"]
      123 MOVE                             R11 R5
      124 GETIMPORT                        R12 K62 [Enum.StudioAction.Copy]
      126 CALL                             R11 1 1
      127 SETTABLEKS                       R11 R10 K43 ["copy"]
      129 MOVE                             R11 R5
      130 GETIMPORT                        R12 K64 [Enum.StudioAction.Cut]
      132 CALL                             R11 1 1
      133 SETTABLEKS                       R11 R10 K44 ["cut"]
      135 MOVE                             R11 R5
      136 GETIMPORT                        R12 K66 [Enum.StudioAction.Paste]
      138 CALL                             R11 1 1
      139 SETTABLEKS                       R11 R10 K45 ["paste"]
      141 NEWCLOSURE                       R11 P4
      142 CAPTURE                          VAL R4
      143 SETTABLEKS                       R11 R10 K46 ["writeToClipboard"]
      145 NEWCLOSURE                       R11 P5
      146 CAPTURE                          UPVAL U3
      147 CAPTURE                          REF R8
      148 SETTABLEKS                       R11 R10 K47 ["readFromClipboard"]
      150 SETTABLEKS                       R6 R10 K48 ["isTextInClipboard"]
      152 CALL                             R9 1 1
      153 MOVE                             R3 R9
      154 CLOSEUPVALS                      R8
      155 JUMP                             ; [+56]
      156 GETIMPORT                        R4 K68 [Instance.new]
      158 LOADK                            R5 K69 ["BindableEvent"]
      159 CALL                             R4 1 1
      160 NEWCLOSURE                       R5 P6
      161 CAPTURE                          VAL R4
      162 GETIMPORT                        R6 K36 [table.freeze]
      164 DUPTABLE                         R7 K49 [{"inputBegan", "inputEnded", "undo", "redo", "selectAll", "delete", "copy", "cut", "paste", "writeToClipboard", "readFromClipboard", "isTextInClipboard"}]
      165 GETTABLEKS                       R8 R2 K50 ["InputBegan"]
      167 SETTABLEKS                       R8 R7 K37 ["inputBegan"]
      169 GETTABLEKS                       R8 R2 K51 ["InputEnded"]
      171 SETTABLEKS                       R8 R7 K38 ["inputEnded"]
      173 MOVE                             R8 R5
      174 CALL                             R8 0 1
      175 SETTABLEKS                       R8 R7 K39 ["undo"]
      177 MOVE                             R8 R5
      178 CALL                             R8 0 1
      179 SETTABLEKS                       R8 R7 K40 ["redo"]
      181 MOVE                             R8 R5
      182 CALL                             R8 0 1
      183 SETTABLEKS                       R8 R7 K41 ["selectAll"]
      185 MOVE                             R8 R5
      186 CALL                             R8 0 1
      187 SETTABLEKS                       R8 R7 K42 ["delete"]
      189 MOVE                             R8 R5
      190 CALL                             R8 0 1
      191 SETTABLEKS                       R8 R7 K43 ["copy"]
      193 MOVE                             R8 R5
      194 CALL                             R8 0 1
      195 SETTABLEKS                       R8 R7 K44 ["cut"]
      197 MOVE                             R8 R5
      198 CALL                             R8 0 1
      199 SETTABLEKS                       R8 R7 K45 ["paste"]
      201 DUPCLOSURE                       R8 K70 [PROTO_37]
      202 SETTABLEKS                       R8 R7 K46 ["writeToClipboard"]
      204 DUPCLOSURE                       R8 K71 [PROTO_38]
      205 SETTABLEKS                       R8 R7 K47 ["readFromClipboard"]
      207 DUPCLOSURE                       R8 K72 [PROTO_39]
      208 SETTABLEKS                       R8 R7 K48 ["isTextInClipboard"]
      210 CALL                             R6 1 1
      211 MOVE                             R3 R6
      212 GETUPVAL                         R4 4
      213 JUMPIFNOT                        R4 ; [+24]
      214 LOADK                            R6 K73 ["Panels"]
      215 NAMECALL                         R4 R0 K28 ["GetPluginComponent"]
      217 CALL                             R4 2 1
      218 NAMECALL                         R5 R0 K74 ["GetUri"]
      220 CALL                             R5 1 1
      221 GETIMPORT                        R6 K76 [table.clone]
      223 MOVE                             R7 R5
      224 CALL                             R6 1 1
      225 LOADK                            R7 K73 ["Panels"]
      226 SETTABLEKS                       R7 R6 K77 ["Category"]
      228 LOADK                            R7 K14 ["MarkdownDockPanel"]
      229 SETTABLEKS                       R7 R6 K78 ["ItemId"]
      231 GETIMPORT                        R7 K33 [task.spawn]
      233 NEWCLOSURE                       R8 P10
      234 CAPTURE                          VAL R4
      235 CAPTURE                          VAL R6
      236 CAPTURE                          UPVAL U5
      237 CALL                             R7 1 0
      238 GETUPVAL                         R4 6
      239 CALL                             R4 0 0
      240 GETUPVAL                         R4 2
      241 GETTABLEKS                       R4 R4 K26 ["createSignal"]
      243 LOADK                            R5 K79 [""]
      244 CALL                             R4 1 2
      245 SETUPVAL                         R5 7
      246 GETUPVAL                         R6 2
      247 GETTABLEKS                       R6 R6 K26 ["createSignal"]
      249 LOADK                            R7 K79 [""]
      250 CALL                             R6 1 2
      251 SETUPVAL                         R7 8
      252 GETUPVAL                         R8 2
      253 GETTABLEKS                       R8 R8 K26 ["createSignal"]
      255 LOADB                            R9 0
      256 CALL                             R8 1 2
      257 SETUPVAL                         R9 9
      258 GETUPVAL                         R10 2
      259 GETTABLEKS                       R10 R10 K26 ["createSignal"]
      261 LOADK                            R11 K79 [""]
      262 CALL                             R10 1 2
      263 SETUPVAL                         R11 10
      264 GETUPVAL                         R12 2
      265 GETTABLEKS                       R12 R12 K26 ["createSignal"]
      267 LOADK                            R13 K79 [""]
      268 CALL                             R12 1 2
      269 SETUPVAL                         R13 11
      270 GETUPVAL                         R14 2
      271 GETTABLEKS                       R14 R14 K26 ["createSignal"]
      273 NEWTABLE                         R15 0 0
      275 CALL                             R14 1 2
      276 SETUPVAL                         R15 12
      277 GETUPVAL                         R16 2
      278 GETTABLEKS                       R16 R16 K26 ["createSignal"]
      280 LOADB                            R17 1
      281 CALL                             R16 1 2
      282 SETUPVAL                         R17 13
      283 GETUPVAL                         R18 2
      284 GETTABLEKS                       R18 R18 K26 ["createSignal"]
      286 LOADB                            R19 1
      287 CALL                             R18 1 2
      288 SETUPVAL                         R19 14
      289 GETUPVAL                         R20 2
      290 GETTABLEKS                       R20 R20 K26 ["createSignal"]
      292 LOADK                            R21 K80 ["Editor"]
      293 CALL                             R20 1 2
      294 SETUPVAL                         R21 15
      295 GETUPVAL                         R22 2
      296 GETTABLEKS                       R22 R22 K26 ["createSignal"]
      298 LOADK                            R23 K81 ["Versions"]
      299 CALL                             R22 1 2
      300 SETUPVAL                         R23 16
      301 DUPCLOSURE                       R24 K82 [PROTO_41]
      302 CAPTURE                          UPVAL U17
      303 DUPCLOSURE                       R25 K83 [PROTO_42]
      304 CAPTURE                          UPVAL U18
      305 DUPCLOSURE                       R26 K84 [PROTO_43]
      306 CAPTURE                          UPVAL U19
      307 DUPCLOSURE                       R27 K85 [PROTO_44]
      308 CAPTURE                          UPVAL U20
      309 DUPCLOSURE                       R28 K86 [PROTO_45]
      310 CAPTURE                          UPVAL U21
      311 GETUPVAL                         R29 2
      312 GETTABLEKS                       R29 R29 K87 ["mount"]
      314 GETUPVAL                         R30 23
      315 DUPTABLE                         R31 K104 [{"markdown", "onMarkdownChanged", "action", "onAction", "isActionDisabled", "secondaryAction", "onSecondaryAction", "title", "onDirtyChanged", "revisions", "onRevisionSelected", "inputEnabled", "editable", "editorToggleText", "versionsText", "editorCompat"}]
      316 SETTABLEKS                       R4 R31 K88 ["markdown"]
      318 SETTABLEKS                       R24 R31 K89 ["onMarkdownChanged"]
      320 SETTABLEKS                       R6 R31 K90 ["action"]
      322 SETTABLEKS                       R25 R31 K91 ["onAction"]
      324 SETTABLEKS                       R8 R31 K92 ["isActionDisabled"]
      326 SETTABLEKS                       R10 R31 K93 ["secondaryAction"]
      328 SETTABLEKS                       R26 R31 K94 ["onSecondaryAction"]
      330 SETTABLEKS                       R12 R31 K95 ["title"]
      332 SETTABLEKS                       R28 R31 K96 ["onDirtyChanged"]
      334 SETTABLEKS                       R14 R31 K97 ["revisions"]
      336 SETTABLEKS                       R27 R31 K98 ["onRevisionSelected"]
      338 SETTABLEKS                       R16 R31 K99 ["inputEnabled"]
      340 SETTABLEKS                       R18 R31 K100 ["editable"]
      342 SETTABLEKS                       R20 R31 K101 ["editorToggleText"]
      344 SETTABLEKS                       R22 R31 K102 ["versionsText"]
      346 SETTABLEKS                       R3 R31 K103 ["editorCompat"]
      348 MOVE                             R32 R2
      349 CALL                             R29 3 1
      350 SETUPVAL                         R29 22
      351 SETUPVAL                         R2 0
      352 RETURN                           R2 1

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

PROTO_50:
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

PROTO_51:
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

PROTO_52:
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

PROTO_53:
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

PROTO_54:
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

PROTO_55:
        0 DUPTABLE                         R1 K1 [{"_generation"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["_generation"]
        4 GETUPVAL                         R2 1
        5 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        7 GETIMPORT                        R0 K3 [setmetatable]
        9 CALL                             R0 2 1
       10 RETURN                           R0 1

PROTO_56:
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

PROTO_57:
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
      213 LOADK                            R37 K42 ["StudioActionOverrideAPI"]
      214 CALL                             R36 1 1
      215 CALL                             R36 0 1
      216 GETTABLEKS                       R37 R5 K40 ["createGetFFlag"]
      218 LOADK                            R38 K43 ["EnableMarkdownEditorBridge"]
      219 CALL                             R37 1 1
      220 CALL                             R37 0 1
      221 GETTABLEKS                       R38 R5 K40 ["createGetFFlag"]
      223 LOADK                            R39 K44 ["StudioSinkBareKeyShortcuts"]
      224 CALL                             R38 1 1
      225 CALL                             R38 0 1
      226 NEWTABLE                         R39 0 12
      228 LOADK                            R40 K45 ["Jan"]
      229 LOADK                            R41 K46 ["Feb"]
      230 LOADK                            R42 K47 ["Mar"]
      231 LOADK                            R43 K48 ["Apr"]
      232 LOADK                            R44 K49 ["May"]
      233 LOADK                            R45 K50 ["Jun"]
      234 LOADK                            R46 K51 ["Jul"]
      235 LOADK                            R47 K52 ["Aug"]
      236 LOADK                            R48 K53 ["Sep"]
      237 LOADK                            R49 K54 ["Oct"]
      238 LOADK                            R50 K55 ["Nov"]
      239 LOADK                            R51 K56 ["Dec"]
      240 SETLIST                          R39 R40 12 [1]
      242 DUPCLOSURE                       R40 K57 [PROTO_0]
      243 CAPTURE                          VAL R39
      244 MOVE                             R41 R28
      245 LOADK                            R42 K58 ["MarkdownDockPanel"]
      246 DUPTABLE                         R43 K80 [{["markdown"] = "", ["onMarkdownChanged"] = , ["action"] = "", ["onAction"] = , ["isActionDisabled"] = False, ["secondaryAction"] = "", ["onSecondaryAction"] = , ["title"] = "", ["onDirtyChanged"] = , ["revisions"], ["onRevisionSelected"] = , ["inputEnabled"] = True, ["editable"] = True, ["editorToggleText"] = "Editor", ["versionsText"] = "Versions"}]
      247 NEWTABLE                         R44 0 0
      249 SETTABLEKS                       R44 R43 K71 ["revisions"]
      251 NEWTABLE                         R44 0 1
      253 MOVE                             R45 R32
      254 NEWTABLE                         R46 2 2
      256 GETTABLEKS                       R49 R24 K81 ["token"]
      258 SETTABLEKS                       R49 R46 K82 ["provider"]
      260 MOVE                             R49 R34
      261 LOADK                            R50 K83 ["theme"]
      262 CALL                             R49 1 1
      263 SETTABLEKS                       R49 R46 K84 ["value"]
      265 MOVE                             R47 R23
      266 NEWTABLE                         R48 0 0
      268 CALL                             R47 1 1
      269 MOVE                             R48 R29
      270 NEWTABLE                         R49 4 2
      272 LOADK                            R52 K85 ["MarkdownDockPanelRoot"]
      273 SETTABLEKS                       R52 R49 K86 ["Name"]
      275 LOADK                            R52 K87 ["box"]
      276 SETTABLEKS                       R52 R49 K88 ["Tags"]
      278 GETIMPORT                        R52 K91 [UDim2.new]
      280 LOADN                            R53 1
      281 LOADN                            R54 0
      282 LOADN                            R55 1
      283 LOADN                            R56 0
      284 CALL                             R52 4 1
      285 SETTABLEKS                       R52 R49 K92 ["Size"]
      287 LOADB                            R52 1
      288 SETTABLEKS                       R52 R49 K93 ["ClipsDescendants"]
      290 MOVE                             R50 R29
      291 NEWTABLE                         R51 4 3
      293 LOADK                            R55 K94 ["Toolbar"]
      294 SETTABLEKS                       R55 R51 K86 ["Name"]
      296 LOADK                            R55 K95 ["surface-100 row pad-x-8 gap-8 align-y-center"]
      297 SETTABLEKS                       R55 R51 K88 ["Tags"]
      299 GETIMPORT                        R55 K91 [UDim2.new]
      301 LOADN                            R56 1
      302 LOADN                            R57 0
      303 LOADN                            R58 0
      304 LOADN                            R59 32
      305 CALL                             R55 4 1
      306 SETTABLEKS                       R55 R51 K92 ["Size"]
      308 MOVE                             R52 R33
      309 DUPTABLE                         R53 K98 [{"when", "Then"}]
      310 MOVE                             R54 R34
      311 LOADK                            R55 K99 ["hasTitle"]
      312 CALL                             R54 1 1
      313 SETTABLEKS                       R54 R53 K96 ["when"]
      315 MOVE                             R54 R28
      316 NEWTABLE                         R55 0 1
      318 MOVE                             R56 R31
      319 DUPTABLE                         R57 K105 [{["Name"] = "TitleLabel", ["Tags"] = "text-label text-truncate-end", ["Text"], ["Font"], ["Size"], ["AutomaticSize"]}]
      320 MOVE                             R58 R34
      321 LOADK                            R59 K106 ["titleText"]
      322 CALL                             R58 1 1
      323 SETTABLEKS                       R58 R57 K102 ["Text"]
      325 GETIMPORT                        R58 K109 [Enum.Font.BuilderSansMedium]
      327 SETTABLEKS                       R58 R57 K103 ["Font"]
      329 GETIMPORT                        R58 K91 [UDim2.new]
      331 LOADN                            R59 0
      332 LOADN                            R60 0
      333 LOADN                            R61 1
      334 LOADN                            R62 0
      335 CALL                             R58 4 1
      336 SETTABLEKS                       R58 R57 K92 ["Size"]
      338 GETIMPORT                        R58 K111 [Enum.AutomaticSize.X]
      340 SETTABLEKS                       R58 R57 K104 ["AutomaticSize"]
      342 CALL                             R56 1 -1
      343 SETLIST                          R55 R56 -1 [1]
      345 CALL                             R54 1 1
      346 SETTABLEKS                       R54 R53 K97 ["Then"]
      348 CALL                             R52 1 1
      349 MOVE                             R53 R29
      350 DUPTABLE                         R54 K114 [{["Name"] = "Spacer", ["Tags"] = "box grow-x"}]
      351 CALL                             R53 1 1
      352 MOVE                             R54 R29
      353 NEWTABLE                         R55 2 4
      355 LOADK                            R60 K115 ["RightControls"]
      356 SETTABLEKS                       R60 R55 K86 ["Name"]
      358 LOADK                            R60 K116 ["box row gap-8 auto-xy align-y-center"]
      359 SETTABLEKS                       R60 R55 K88 ["Tags"]
      361 MOVE                             R56 R33
      362 DUPTABLE                         R57 K98 [{"when", "Then"}]
      363 MOVE                             R58 R34
      364 LOADK                            R59 K117 ["hasRevisions"]
      365 CALL                             R58 1 1
      366 SETTABLEKS                       R58 R57 K96 ["when"]
      368 MOVE                             R58 R28
      369 NEWTABLE                         R59 0 1
      371 MOVE                             R60 R26
      372 DUPTABLE                         R61 K122 [{"text", "options", "selectedValue", "onSelect"}]
      373 MOVE                             R62 R34
      374 LOADK                            R63 K123 ["selectedRevisionLabel"]
      375 CALL                             R62 1 1
      376 SETTABLEKS                       R62 R61 K118 ["text"]
      378 MOVE                             R62 R34
      379 LOADK                            R63 K124 ["revisionOptions"]
      380 CALL                             R62 1 1
      381 SETTABLEKS                       R62 R61 K119 ["options"]
      383 MOVE                             R62 R34
      384 LOADK                            R63 K125 ["selectedRevisionValue"]
      385 CALL                             R62 1 1
      386 SETTABLEKS                       R62 R61 K120 ["selectedValue"]
      388 MOVE                             R62 R34
      389 LOADK                            R63 K126 ["fn(value) handleRevisionSelect(value)"]
      390 CALL                             R62 1 1
      391 SETTABLEKS                       R62 R61 K121 ["onSelect"]
      393 CALL                             R60 1 -1
      394 SETLIST                          R59 R60 -1 [1]
      396 CALL                             R58 1 1
      397 SETTABLEKS                       R58 R57 K97 ["Then"]
      399 CALL                             R56 1 1
      400 MOVE                             R57 R33
      401 DUPTABLE                         R58 K98 [{"when", "Then"}]
      402 MOVE                             R59 R34
      403 LOADK                            R60 K75 ["editable"]
      404 CALL                             R59 1 1
      405 SETTABLEKS                       R59 R58 K96 ["when"]
      407 MOVE                             R59 R28
      408 NEWTABLE                         R60 0 1
      410 MOVE                             R61 R27
      411 DUPTABLE                         R62 K131 [{["selected"], ["onToggle"], ["text"], ["labelPosition"] = "left"}]
      412 MOVE                             R63 R34
      413 LOADK                            R64 K132 ["isCodeView"]
      414 CALL                             R63 1 1
      415 SETTABLEKS                       R63 R62 K127 ["selected"]
      417 MOVE                             R63 R34
      418 LOADK                            R64 K133 ["handleToggleView"]
      419 CALL                             R63 1 1
      420 SETTABLEKS                       R63 R62 K128 ["onToggle"]
      422 MOVE                             R63 R34
      423 LOADK                            R64 K76 ["editorToggleText"]
      424 CALL                             R63 1 1
      425 SETTABLEKS                       R63 R62 K118 ["text"]
      427 CALL                             R61 1 -1
      428 SETLIST                          R60 R61 -1 [1]
      430 CALL                             R59 1 1
      431 SETTABLEKS                       R59 R58 K97 ["Then"]
      433 CALL                             R57 1 1
      434 MOVE                             R58 R33
      435 DUPTABLE                         R59 K98 [{"when", "Then"}]
      436 MOVE                             R60 R34
      437 LOADK                            R61 K134 ["hasAction"]
      438 CALL                             R60 1 1
      439 SETTABLEKS                       R60 R59 K96 ["when"]
      441 MOVE                             R60 R28
      442 NEWTABLE                         R61 0 1
      444 MOVE                             R62 R30
      445 NEWTABLE                         R63 8 1
      447 LOADK                            R65 K135 ["ActionButton"]
      448 SETTABLEKS                       R65 R63 K86 ["Name"]
      450 MOVE                             R65 R34
      451 LOADK                            R66 K136 ["actionButtonTags"]
      452 CALL                             R65 1 1
      453 SETTABLEKS                       R65 R63 K88 ["Tags"]
      455 GETIMPORT                        R65 K91 [UDim2.new]
      457 LOADN                            R66 0
      458 LOADN                            R67 0
      459 LOADN                            R68 0
      460 LOADN                            R69 24
      461 CALL                             R65 4 1
      462 SETTABLEKS                       R65 R63 K92 ["Size"]
      464 GETIMPORT                        R65 K111 [Enum.AutomaticSize.X]
      466 SETTABLEKS                       R65 R63 K104 ["AutomaticSize"]
      468 MOVE                             R65 R34
      469 LOADK                            R66 K137 ["handleAction"]
      470 CALL                             R65 1 1
      471 SETTABLEKS                       R65 R63 K138 ["OnActivated"]
      473 MOVE                             R64 R31
      474 DUPTABLE                         R65 K140 [{["Name"] = "Label", ["Tags"], ["Text"], ["Size"], ["AutomaticSize"], ["Font"]}]
      475 MOVE                             R66 R34
      476 LOADK                            R67 K141 ["actionLabelTags"]
      477 CALL                             R66 1 1
      478 SETTABLEKS                       R66 R65 K88 ["Tags"]
      480 MOVE                             R66 R34
      481 LOADK                            R67 K142 ["actionText"]
      482 CALL                             R66 1 1
      483 SETTABLEKS                       R66 R65 K102 ["Text"]
      485 GETIMPORT                        R66 K91 [UDim2.new]
      487 LOADN                            R67 0
      488 LOADN                            R68 0
      489 LOADN                            R69 1
      490 LOADN                            R70 0
      491 CALL                             R66 4 1
      492 SETTABLEKS                       R66 R65 K92 ["Size"]
      494 GETIMPORT                        R66 K111 [Enum.AutomaticSize.X]
      496 SETTABLEKS                       R66 R65 K104 ["AutomaticSize"]
      498 GETIMPORT                        R66 K109 [Enum.Font.BuilderSansMedium]
      500 SETTABLEKS                       R66 R65 K103 ["Font"]
      502 CALL                             R64 1 -1
      503 SETLIST                          R63 R64 -1 [1]
      505 CALL                             R62 1 -1
      506 SETLIST                          R61 R62 -1 [1]
      508 CALL                             R60 1 1
      509 SETTABLEKS                       R60 R59 K97 ["Then"]
      511 CALL                             R58 1 1
      512 MOVE                             R59 R33
      513 DUPTABLE                         R60 K98 [{"when", "Then"}]
      514 MOVE                             R61 R34
      515 LOADK                            R62 K143 ["hasSecondaryAction"]
      516 CALL                             R61 1 1
      517 SETTABLEKS                       R61 R60 K96 ["when"]
      519 MOVE                             R61 R28
      520 NEWTABLE                         R62 0 1
      522 MOVE                             R63 R30
      523 NEWTABLE                         R64 8 1
      525 LOADK                            R66 K144 ["SecondaryActionButton"]
      526 SETTABLEKS                       R66 R64 K86 ["Name"]
      528 MOVE                             R66 R34
      529 LOADK                            R67 K145 ["secondaryActionButtonTags"]
      530 CALL                             R66 1 1
      531 SETTABLEKS                       R66 R64 K88 ["Tags"]
      533 GETIMPORT                        R66 K91 [UDim2.new]
      535 LOADN                            R67 0
      536 LOADN                            R68 0
      537 LOADN                            R69 0
      538 LOADN                            R70 24
      539 CALL                             R66 4 1
      540 SETTABLEKS                       R66 R64 K92 ["Size"]
      542 GETIMPORT                        R66 K111 [Enum.AutomaticSize.X]
      544 SETTABLEKS                       R66 R64 K104 ["AutomaticSize"]
      546 MOVE                             R66 R34
      547 LOADK                            R67 K146 ["handleSecondaryAction"]
      548 CALL                             R66 1 1
      549 SETTABLEKS                       R66 R64 K138 ["OnActivated"]
      551 MOVE                             R65 R31
      552 DUPTABLE                         R66 K140 [{["Name"] = "Label", ["Tags"], ["Text"], ["Size"], ["AutomaticSize"], ["Font"]}]
      553 MOVE                             R67 R34
      554 LOADK                            R68 K147 ["secondaryActionLabelTags"]
      555 CALL                             R67 1 1
      556 SETTABLEKS                       R67 R66 K88 ["Tags"]
      558 MOVE                             R67 R34
      559 LOADK                            R68 K148 ["secondaryActionText"]
      560 CALL                             R67 1 1
      561 SETTABLEKS                       R67 R66 K102 ["Text"]
      563 GETIMPORT                        R67 K91 [UDim2.new]
      565 LOADN                            R68 0
      566 LOADN                            R69 0
      567 LOADN                            R70 1
      568 LOADN                            R71 0
      569 CALL                             R67 4 1
      570 SETTABLEKS                       R67 R66 K92 ["Size"]
      572 GETIMPORT                        R67 K111 [Enum.AutomaticSize.X]
      574 SETTABLEKS                       R67 R66 K104 ["AutomaticSize"]
      576 GETIMPORT                        R67 K109 [Enum.Font.BuilderSansMedium]
      578 SETTABLEKS                       R67 R66 K103 ["Font"]
      580 CALL                             R65 1 -1
      581 SETLIST                          R64 R65 -1 [1]
      583 CALL                             R63 1 -1
      584 SETLIST                          R62 R63 -1 [1]
      586 CALL                             R61 1 1
      587 SETTABLEKS                       R61 R60 K97 ["Then"]
      589 CALL                             R59 1 -1
      590 SETLIST                          R55 R56 -1 [1]
      592 CALL                             R54 1 -1
      593 SETLIST                          R51 R52 -1 [1]
      595 CALL                             R50 1 1
      596 MOVE                             R51 R29
      597 NEWTABLE                         R52 8 1
      599 LOADK                            R54 K149 ["EditorBody"]
      600 SETTABLEKS                       R54 R52 K86 ["Name"]
      602 LOADK                            R54 K87 ["box"]
      603 SETTABLEKS                       R54 R52 K88 ["Tags"]
      605 GETIMPORT                        R54 K91 [UDim2.new]
      607 LOADN                            R55 0
      608 LOADN                            R56 0
      609 LOADN                            R57 0
      610 LOADN                            R58 32
      611 CALL                             R54 4 1
      612 SETTABLEKS                       R54 R52 K150 ["Position"]
      614 GETIMPORT                        R54 K91 [UDim2.new]
      616 LOADN                            R55 1
      617 LOADN                            R56 0
      618 LOADN                            R57 1
      619 LOADN                            R58 -32
      620 CALL                             R54 4 1
      621 SETTABLEKS                       R54 R52 K92 ["Size"]
      623 LOADB                            R54 1
      624 SETTABLEKS                       R54 R52 K93 ["ClipsDescendants"]
      626 MOVE                             R53 R33
      627 DUPTABLE                         R54 K152 [{"when", "Then", "Else"}]
      628 MOVE                             R55 R34
      629 LOADK                            R56 K132 ["isCodeView"]
      630 CALL                             R55 1 1
      631 SETTABLEKS                       R55 R54 K96 ["when"]
      633 MOVE                             R55 R28
      634 NEWTABLE                         R56 0 1
      636 MOVE                             R57 R29
      637 NEWTABLE                         R58 4 1
      639 LOADK                            R60 K153 ["CodePane"]
      640 SETTABLEKS                       R60 R58 K86 ["Name"]
      642 LOADK                            R60 K154 ["surface-100"]
      643 SETTABLEKS                       R60 R58 K88 ["Tags"]
      645 GETIMPORT                        R60 K91 [UDim2.new]
      647 LOADN                            R61 1
      648 LOADN                            R62 0
      649 LOADN                            R63 1
      650 LOADN                            R64 0
      651 CALL                             R60 4 1
      652 SETTABLEKS                       R60 R58 K92 ["Size"]
      654 LOADB                            R60 1
      655 SETTABLEKS                       R60 R58 K93 ["ClipsDescendants"]
      657 MOVE                             R59 R25
      658 DUPTABLE                         R60 K159 [{["text"], ["onTextChanged"], ["language"] = "markdown", ["editable"], ["showLineNumbers"] = True, ["editorCompat"]}]
      659 MOVE                             R61 R34
      660 LOADK                            R62 K160 ["code"]
      661 CALL                             R61 1 1
      662 SETTABLEKS                       R61 R60 K118 ["text"]
      664 MOVE                             R61 R34
      665 LOADK                            R62 K161 ["handleCodeTextChanged"]
      666 CALL                             R61 1 1
      667 SETTABLEKS                       R61 R60 K155 ["onTextChanged"]
      669 MOVE                             R61 R34
      670 LOADK                            R62 K75 ["editable"]
      671 CALL                             R61 1 1
      672 SETTABLEKS                       R61 R60 K75 ["editable"]
      674 MOVE                             R61 R34
      675 LOADK                            R62 K158 ["editorCompat"]
      676 CALL                             R61 1 1
      677 SETTABLEKS                       R61 R60 K158 ["editorCompat"]
      679 CALL                             R59 1 -1
      680 SETLIST                          R58 R59 -1 [1]
      682 CALL                             R57 1 -1
      683 SETLIST                          R56 R57 -1 [1]
      685 CALL                             R55 1 1
      686 SETTABLEKS                       R55 R54 K97 ["Then"]
      688 MOVE                             R55 R28
      689 NEWTABLE                         R56 0 1
      691 MOVE                             R57 R29
      692 NEWTABLE                         R58 4 1
      694 LOADK                            R60 K162 ["PreviewPane"]
      695 SETTABLEKS                       R60 R58 K86 ["Name"]
      697 LOADK                            R60 K163 ["surface-200"]
      698 SETTABLEKS                       R60 R58 K88 ["Tags"]
      700 GETIMPORT                        R60 K91 [UDim2.new]
      702 LOADN                            R61 1
      703 LOADN                            R62 0
      704 LOADN                            R63 1
      705 LOADN                            R64 0
      706 CALL                             R60 4 1
      707 SETTABLEKS                       R60 R58 K92 ["Size"]
      709 LOADB                            R60 1
      710 SETTABLEKS                       R60 R58 K93 ["ClipsDescendants"]
      712 MOVE                             R59 R6
      713 DUPTABLE                         R60 K166 [{["markdown"], ["editable"] = False, ["virtualized"] = False, ["inputCaptureActive"]}]
      714 MOVE                             R61 R34
      715 LOADK                            R62 K167 ["markdownForViewer"]
      716 CALL                             R61 1 1
      717 SETTABLEKS                       R61 R60 K59 ["markdown"]
      719 MOVE                             R61 R34
      720 LOADK                            R62 K73 ["inputEnabled"]
      721 CALL                             R61 1 1
      722 SETTABLEKS                       R61 R60 K165 ["inputCaptureActive"]
      724 CALL                             R59 1 -1
      725 SETLIST                          R58 R59 -1 [1]
      727 CALL                             R57 1 -1
      728 SETLIST                          R56 R57 -1 [1]
      730 CALL                             R55 1 1
      731 SETTABLEKS                       R55 R54 K151 ["Else"]
      733 CALL                             R53 1 -1
      734 SETLIST                          R52 R53 -1 [1]
      736 CALL                             R51 1 -1
      737 SETLIST                          R49 R50 -1 [1]
      739 CALL                             R48 1 -1
      740 SETLIST                          R46 R47 -1 [1]
      742 CALL                             R45 1 -1
      743 SETLIST                          R44 R45 -1 [1]
      745 DUPCLOSURE                       R45 K168 [PROTO_26]
      746 CAPTURE                          VAL R24
      747 CAPTURE                          VAL R40
      748 CAPTURE                          VAL R39
      749 CALL                             R41 4 1
      750 LOADNIL                          R42
      751 LOADNIL                          R43
      752 LOADNIL                          R44
      753 LOADNIL                          R45
      754 LOADNIL                          R46
      755 LOADNIL                          R47
      756 LOADNIL                          R48
      757 LOADNIL                          R49
      758 LOADNIL                          R50
      759 LOADNIL                          R51
      760 LOADNIL                          R52
      761 LOADNIL                          R53
      762 DUPTABLE                         R54 K170 [{["current"] = }]
      763 DUPTABLE                         R55 K170 [{["current"] = }]
      764 DUPTABLE                         R56 K170 [{["current"] = }]
      765 DUPTABLE                         R57 K170 [{["current"] = }]
      766 DUPTABLE                         R58 K170 [{["current"] = }]
      767 LOADB                            R59 0
      768 LOADN                            R60 0
      769 NEWCLOSURE                       R61 P2
      770 CAPTURE                          REF R59
      771 CAPTURE                          VAL R2
      772 CAPTURE                          VAL R23
      773 CAPTURE                          VAL R41
      774 CAPTURE                          VAL R26
      775 CAPTURE                          VAL R27
      776 CAPTURE                          VAL R25
      777 CAPTURE                          VAL R6
      778 CAPTURE                          VAL R7
      779 CAPTURE                          VAL R8
      780 CAPTURE                          VAL R9
      781 CAPTURE                          VAL R10
      782 CAPTURE                          VAL R11
      783 CAPTURE                          VAL R12
      784 CAPTURE                          VAL R13
      785 CAPTURE                          VAL R14
      786 CAPTURE                          VAL R15
      787 CAPTURE                          VAL R16
      788 CAPTURE                          VAL R17
      789 CAPTURE                          VAL R18
      790 CAPTURE                          VAL R19
      791 CAPTURE                          VAL R20
      792 CAPTURE                          VAL R21
      793 CAPTURE                          VAL R22
      794 NEWCLOSURE                       R62 P3
      795 CAPTURE                          REF R42
      796 CAPTURE                          VAL R36
      797 CAPTURE                          VAL R2
      798 CAPTURE                          VAL R37
      799 CAPTURE                          VAL R35
      800 CAPTURE                          VAL R38
      801 CAPTURE                          VAL R61
      802 CAPTURE                          REF R44
      803 CAPTURE                          REF R45
      804 CAPTURE                          REF R46
      805 CAPTURE                          REF R47
      806 CAPTURE                          REF R48
      807 CAPTURE                          REF R49
      808 CAPTURE                          REF R50
      809 CAPTURE                          REF R51
      810 CAPTURE                          REF R52
      811 CAPTURE                          REF R53
      812 CAPTURE                          VAL R54
      813 CAPTURE                          VAL R55
      814 CAPTURE                          VAL R56
      815 CAPTURE                          VAL R57
      816 CAPTURE                          VAL R58
      817 CAPTURE                          REF R43
      818 CAPTURE                          VAL R41
      819 NEWTABLE                         R63 16 0
      821 SETTABLEKS                       R63 R63 K171 ["__index"]
      823 NEWCLOSURE                       R64 P4
      824 CAPTURE                          REF R60
      825 CAPTURE                          REF R44
      826 SETTABLEKS                       R64 R63 K172 ["setMarkdown"]
      828 NEWCLOSURE                       R64 P5
      829 CAPTURE                          REF R60
      830 CAPTURE                          REF R49
      831 SETTABLEKS                       R64 R63 K173 ["setRevisions"]
      833 NEWCLOSURE                       R64 P6
      834 CAPTURE                          REF R60
      835 CAPTURE                          REF R45
      836 SETTABLEKS                       R64 R63 K174 ["setAction"]
      838 NEWCLOSURE                       R64 P7
      839 CAPTURE                          REF R60
      840 CAPTURE                          REF R46
      841 SETTABLEKS                       R64 R63 K175 ["setIsActionDisabled"]
      843 NEWCLOSURE                       R64 P8
      844 CAPTURE                          REF R60
      845 CAPTURE                          REF R47
      846 SETTABLEKS                       R64 R63 K176 ["setSecondaryAction"]
      848 NEWCLOSURE                       R64 P9
      849 CAPTURE                          REF R60
      850 CAPTURE                          REF R48
      851 SETTABLEKS                       R64 R63 K177 ["setTitle"]
      853 NEWCLOSURE                       R64 P10
      854 CAPTURE                          REF R60
      855 CAPTURE                          REF R50
      856 SETTABLEKS                       R64 R63 K178 ["setInputEnabled"]
      858 NEWCLOSURE                       R64 P11
      859 CAPTURE                          REF R60
      860 CAPTURE                          REF R42
      861 SETTABLEKS                       R64 R63 K179 ["close"]
      863 NEWCLOSURE                       R64 P12
      864 CAPTURE                          REF R60
      865 CAPTURE                          VAL R63
      866 NEWTABLE                         R65 2 0
      868 NEWCLOSURE                       R66 P13
      869 CAPTURE                          REF R60
      870 CAPTURE                          VAL R62
      871 CAPTURE                          VAL R54
      872 CAPTURE                          VAL R55
      873 CAPTURE                          VAL R56
      874 CAPTURE                          VAL R57
      875 CAPTURE                          VAL R58
      876 CAPTURE                          REF R44
      877 CAPTURE                          REF R45
      878 CAPTURE                          REF R46
      879 CAPTURE                          REF R47
      880 CAPTURE                          REF R48
      881 CAPTURE                          REF R49
      882 CAPTURE                          REF R50
      883 CAPTURE                          REF R51
      884 CAPTURE                          REF R52
      885 CAPTURE                          REF R53
      886 CAPTURE                          VAL R63
      887 SETTABLEKS                       R66 R65 K180 ["open"]
      889 NEWCLOSURE                       R66 P14
      890 CAPTURE                          REF R42
      891 SETTABLEKS                       R66 R65 K179 ["close"]
      893 CLOSEUPVALS                      R42
      894 RETURN                           R65 1
