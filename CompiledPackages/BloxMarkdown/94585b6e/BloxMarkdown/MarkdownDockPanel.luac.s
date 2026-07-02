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
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R1 ; [+2]
        6 MOVE                             R3 R2
        7 RETURN                           R3 1
        8 LOADB                            R3 0
        9 RETURN                           R3 1

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFEQKS                       R2 K0 ["code"] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["onDirtyChanged"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 MOVE                             R2 R1
        7 MOVE                             R3 R0
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["title"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 ORK                              R1 R2 K0 [""]
        6 RETURN                           R1 1

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["action"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 ORK                              R1 R2 K0 [""]
        6 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isActionDisabled"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADK                            R2 K1 ["button variant-standard size-toolbar state-disabled"]
        7 RETURN                           R2 1
        8 LOADK                            R2 K2 ["button variant-standard size-toolbar state-enabled"]
        9 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isActionDisabled"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADK                            R2 K1 ["button-label variant-standard state-disabled"]
        7 RETURN                           R2 1
        8 LOADK                            R2 K2 ["button-label variant-standard"]
        9 RETURN                           R2 1

PROTO_18:
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

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["secondaryAction"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 ORK                              R1 R2 K0 [""]
        6 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isActionDisabled"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADK                            R2 K1 ["button variant-utility size-toolbar state-disabled"]
        7 RETURN                           R2 1
        8 LOADK                            R2 K2 ["button variant-utility size-toolbar state-enabled"]
        9 RETURN                           R2 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isActionDisabled"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADK                            R2 K1 ["button-label variant-utility state-disabled"]
        7 RETURN                           R2 1
        8 LOADK                            R2 K2 ["button-label variant-utility"]
        9 RETURN                           R2 1

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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

PROTO_29:
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

PROTO_30:
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
       73 NEWCLOSURE                       R18 P5
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R15
       77 CAPTURE                          VAL R16
       78 CAPTURE                          VAL R0
       79 GETTABLEKS                       R19 R1 K7 ["wrap"]
       81 NEWCLOSURE                       R20 P6
       82 CAPTURE                          VAL R0
       83 CALL                             R19 1 1
       84 GETTABLEKS                       R20 R1 K7 ["wrap"]
       86 NEWCLOSURE                       R21 P7
       87 CAPTURE                          VAL R0
       88 CALL                             R20 1 1
       89 GETTABLEKS                       R21 R1 K7 ["wrap"]
       91 NEWCLOSURE                       R22 P8
       92 CAPTURE                          VAL R0
       93 CALL                             R21 1 1
       94 GETTABLEKS                       R22 R1 K7 ["wrap"]
       96 NEWCLOSURE                       R23 P9
       97 CAPTURE                          VAL R0
       98 CALL                             R22 1 1
       99 GETTABLEKS                       R23 R1 K7 ["wrap"]
      101 NEWCLOSURE                       R24 P10
      102 CAPTURE                          VAL R0
      103 CALL                             R23 1 1
      104 GETTABLEKS                       R24 R1 K7 ["wrap"]
      106 NEWCLOSURE                       R25 P11
      107 CAPTURE                          VAL R0
      108 CALL                             R24 1 1
      109 NEWCLOSURE                       R25 P12
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R0
      112 CAPTURE                          VAL R16
      113 GETTABLEKS                       R26 R1 K7 ["wrap"]
      115 NEWCLOSURE                       R27 P13
      116 CAPTURE                          VAL R0
      117 CALL                             R26 1 1
      118 GETTABLEKS                       R27 R1 K7 ["wrap"]
      120 NEWCLOSURE                       R28 P14
      121 CAPTURE                          VAL R0
      122 CALL                             R27 1 1
      123 GETTABLEKS                       R28 R1 K7 ["wrap"]
      125 NEWCLOSURE                       R29 P15
      126 CAPTURE                          VAL R0
      127 CALL                             R28 1 1
      128 GETTABLEKS                       R29 R1 K7 ["wrap"]
      130 NEWCLOSURE                       R30 P16
      131 CAPTURE                          VAL R0
      132 CALL                             R29 1 1
      133 NEWCLOSURE                       R30 P17
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R0
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R16
      142 GETTABLEKS                       R31 R1 K2 ["createSignal"]
      144 LOADN                            R32 0
      145 CALL                             R31 1 2
      146 GETTABLEKS                       R33 R1 K7 ["wrap"]
      148 NEWCLOSURE                       R34 P18
      149 CAPTURE                          VAL R0
      150 CALL                             R33 1 1
      151 GETTABLEKS                       R34 R1 K11 ["createComputed"]
      153 NEWCLOSURE                       R35 P19
      154 CAPTURE                          VAL R0
      155 CAPTURE                          UPVAL U1
      156 LOADK                            R36 K12 ["revision-options"]
      157 CALL                             R34 2 1
      158 GETTABLEKS                       R35 R1 K11 ["createComputed"]
      160 NEWCLOSURE                       R36 P20
      161 CAPTURE                          VAL R31
      162 CAPTURE                          VAL R0
      163 CAPTURE                          UPVAL U1
      164 LOADK                            R37 K13 ["selected-revision-value"]
      165 CALL                             R35 2 1
      166 GETTABLEKS                       R36 R1 K11 ["createComputed"]
      168 NEWCLOSURE                       R37 P21
      169 CAPTURE                          VAL R31
      170 CAPTURE                          VAL R0
      171 CAPTURE                          UPVAL U1
      172 LOADK                            R38 K14 ["selected-revision-label"]
      173 CALL                             R36 2 1
      174 NEWCLOSURE                       R37 P22
      175 CAPTURE                          VAL R2
      176 CAPTURE                          VAL R0
      177 CAPTURE                          UPVAL U2
      178 CAPTURE                          VAL R32
      179 CAPTURE                          VAL R5
      180 CAPTURE                          VAL R7
      181 CAPTURE                          VAL R11
      182 CAPTURE                          VAL R12
      183 GETTABLEKS                       R38 R1 K10 ["createEffect"]
      185 NEWCLOSURE                       R39 P23
      186 CAPTURE                          VAL R0
      187 CAPTURE                          VAL R32
      188 CALL                             R38 1 0
      189 DUPTABLE                         R38 K40 [{"theme", "code", "isCodeView", "markdownForViewer", "handleCodeTextChanged", "handleToggleView", "hasTitle", "titleText", "hasAction", "actionText", "actionButtonTags", "actionLabelTags", "handleAction", "hasSecondaryAction", "secondaryActionText", "secondaryActionButtonTags", "secondaryActionLabelTags", "handleSecondaryAction", "hasRevisions", "revisionOptions", "selectedRevisionValue", "selectedRevisionLabel", "handleRevisionSelect", "inputEnabled", "editorToggleText"}]
      190 SETTABLEKS                       R3 R38 K15 ["theme"]
      192 SETTABLEKS                       R4 R38 K16 ["code"]
      194 SETTABLEKS                       R9 R38 K17 ["isCodeView"]
      196 SETTABLEKS                       R10 R38 K18 ["markdownForViewer"]
      198 SETTABLEKS                       R18 R38 K19 ["handleCodeTextChanged"]
      200 SETTABLEKS                       R14 R38 K20 ["handleToggleView"]
      202 SETTABLEKS                       R19 R38 K21 ["hasTitle"]
      204 SETTABLEKS                       R20 R38 K22 ["titleText"]
      206 SETTABLEKS                       R21 R38 K23 ["hasAction"]
      208 SETTABLEKS                       R22 R38 K24 ["actionText"]
      210 SETTABLEKS                       R23 R38 K25 ["actionButtonTags"]
      212 SETTABLEKS                       R24 R38 K26 ["actionLabelTags"]
      214 SETTABLEKS                       R25 R38 K27 ["handleAction"]
      216 SETTABLEKS                       R26 R38 K28 ["hasSecondaryAction"]
      218 SETTABLEKS                       R27 R38 K29 ["secondaryActionText"]
      220 SETTABLEKS                       R28 R38 K30 ["secondaryActionButtonTags"]
      222 SETTABLEKS                       R29 R38 K31 ["secondaryActionLabelTags"]
      224 SETTABLEKS                       R30 R38 K32 ["handleSecondaryAction"]
      226 SETTABLEKS                       R33 R38 K33 ["hasRevisions"]
      228 SETTABLEKS                       R34 R38 K34 ["revisionOptions"]
      230 SETTABLEKS                       R35 R38 K35 ["selectedRevisionValue"]
      232 SETTABLEKS                       R36 R38 K36 ["selectedRevisionLabel"]
      234 SETTABLEKS                       R37 R38 K37 ["handleRevisionSelect"]
      236 GETTABLEKS                       R39 R0 K38 ["inputEnabled"]
      238 SETTABLEKS                       R39 R38 K38 ["inputEnabled"]
      240 GETTABLEKS                       R39 R0 K39 ["editorToggleText"]
      242 SETTABLEKS                       R39 R38 K39 ["editorToggleText"]
      244 RETURN                           R38 1

PROTO_31:
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

PROTO_32:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        4 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["Enabled"]
        3 RETURN                           R0 0

PROTO_34:
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

PROTO_35:
        0 GETUPVAL                         R1 0
        1 ADDK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_36:
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

PROTO_37:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CopyToClipboard"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["ReadClipboardTextAsync"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1
        7 LOADK                            R0 K1 [""]
        8 RETURN                           R0 1

PROTO_39:
        0 RETURN                           R0 0

PROTO_40:
        0 GETIMPORT                        R0 K2 [table.freeze]
        2 DUPTABLE                         R1 K5 [{"triggered", "setEnabled"}]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K6 ["Event"]
        6 SETTABLEKS                       R2 R1 K3 ["triggered"]
        8 DUPCLOSURE                       R2 K7 [PROTO_39]
        9 SETTABLEKS                       R2 R1 K4 ["setEnabled"]
       11 CALL                             R0 1 -1
       12 RETURN                           R0 -1

PROTO_41:
        0 RETURN                           R0 0

PROTO_42:
        0 LOADK                            R0 K0 [""]
        1 RETURN                           R0 1

PROTO_43:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_44:
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
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 MOVE                             R1 R0
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 MOVE                             R1 R0
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+3]
        4 MOVE                             R2 R1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+3]
        4 MOVE                             R2 R1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_50:
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
      201 DUPCLOSURE                       R8 K70 [PROTO_41]
      202 SETTABLEKS                       R8 R7 K46 ["writeToClipboard"]
      204 DUPCLOSURE                       R8 K71 [PROTO_42]
      205 SETTABLEKS                       R8 R7 K47 ["readFromClipboard"]
      207 DUPCLOSURE                       R8 K72 [PROTO_43]
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
      286 LOADK                            R19 K80 ["Editor"]
      287 CALL                             R18 1 2
      288 SETUPVAL                         R19 14
      289 GETUPVAL                         R20 2
      290 GETTABLEKS                       R20 R20 K26 ["createSignal"]
      292 LOADK                            R21 K81 ["Versions"]
      293 CALL                             R20 1 2
      294 SETUPVAL                         R21 15
      295 DUPCLOSURE                       R22 K82 [PROTO_45]
      296 CAPTURE                          UPVAL U16
      297 DUPCLOSURE                       R23 K83 [PROTO_46]
      298 CAPTURE                          UPVAL U17
      299 DUPCLOSURE                       R24 K84 [PROTO_47]
      300 CAPTURE                          UPVAL U18
      301 DUPCLOSURE                       R25 K85 [PROTO_48]
      302 CAPTURE                          UPVAL U19
      303 DUPCLOSURE                       R26 K86 [PROTO_49]
      304 CAPTURE                          UPVAL U20
      305 GETUPVAL                         R27 2
      306 GETTABLEKS                       R27 R27 K87 ["mount"]
      308 GETUPVAL                         R28 22
      309 DUPTABLE                         R29 K103 [{"markdown", "onMarkdownChanged", "action", "onAction", "isActionDisabled", "secondaryAction", "onSecondaryAction", "title", "onDirtyChanged", "revisions", "onRevisionSelected", "inputEnabled", "editorToggleText", "versionsText", "editorCompat"}]
      310 SETTABLEKS                       R4 R29 K88 ["markdown"]
      312 SETTABLEKS                       R22 R29 K89 ["onMarkdownChanged"]
      314 SETTABLEKS                       R6 R29 K90 ["action"]
      316 SETTABLEKS                       R23 R29 K91 ["onAction"]
      318 SETTABLEKS                       R8 R29 K92 ["isActionDisabled"]
      320 SETTABLEKS                       R10 R29 K93 ["secondaryAction"]
      322 SETTABLEKS                       R24 R29 K94 ["onSecondaryAction"]
      324 SETTABLEKS                       R12 R29 K95 ["title"]
      326 SETTABLEKS                       R26 R29 K96 ["onDirtyChanged"]
      328 SETTABLEKS                       R14 R29 K97 ["revisions"]
      330 SETTABLEKS                       R25 R29 K98 ["onRevisionSelected"]
      332 SETTABLEKS                       R16 R29 K99 ["inputEnabled"]
      334 SETTABLEKS                       R18 R29 K100 ["editorToggleText"]
      336 SETTABLEKS                       R20 R29 K101 ["versionsText"]
      338 SETTABLEKS                       R3 R29 K102 ["editorCompat"]
      340 MOVE                             R30 R2
      341 CALL                             R27 3 1
      342 SETUPVAL                         R27 21
      343 SETUPVAL                         R2 0
      344 RETURN                           R2 1

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

PROTO_55:
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

PROTO_56:
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

PROTO_57:
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

PROTO_58:
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

PROTO_59:
        0 DUPTABLE                         R1 K1 [{"_generation"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["_generation"]
        4 GETUPVAL                         R2 1
        5 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        7 GETIMPORT                        R0 K3 [setmetatable]
        9 CALL                             R0 2 1
       10 RETURN                           R0 1

PROTO_60:
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

PROTO_61:
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
       26 GETIMPORT                        R6 K1 [script]
       28 GETTABLEKS                       R6 R6 K4 ["Parent"]
       30 GETTABLEKS                       R6 R6 K10 ["MarkdownViewer"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETIMPORT                        R7 K1 [script]
       37 GETTABLEKS                       R7 R7 K4 ["Parent"]
       39 GETTABLEKS                       R7 R7 K11 ["MarkdownStyles"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETIMPORT                        R8 K1 [script]
       46 GETTABLEKS                       R8 R8 K4 ["Parent"]
       48 GETTABLEKS                       R8 R8 K12 ["MarkdownBlock"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETIMPORT                        R9 K1 [script]
       55 GETTABLEKS                       R9 R9 K4 ["Parent"]
       57 GETTABLEKS                       R9 R9 K13 ["MarkdownDarkStyles"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETIMPORT                        R10 K1 [script]
       64 GETTABLEKS                       R10 R10 K4 ["Parent"]
       66 GETTABLEKS                       R10 R10 K14 ["MarkdownLightStyles"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K6 [require]
       71 GETIMPORT                        R11 K1 [script]
       73 GETTABLEKS                       R11 R11 K4 ["Parent"]
       75 GETTABLEKS                       R11 R11 K15 ["InlineContent"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K6 [require]
       80 GETIMPORT                        R12 K1 [script]
       82 GETTABLEKS                       R12 R12 K4 ["Parent"]
       84 GETTABLEKS                       R12 R12 K16 ["MarkdownHeading"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K6 [require]
       89 GETIMPORT                        R13 K1 [script]
       91 GETTABLEKS                       R13 R13 K4 ["Parent"]
       93 GETTABLEKS                       R13 R13 K17 ["MarkdownParagraph"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K6 [require]
       98 GETIMPORT                        R14 K1 [script]
      100 GETTABLEKS                       R14 R14 K4 ["Parent"]
      102 GETTABLEKS                       R14 R14 K18 ["MarkdownList"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K6 [require]
      107 GETIMPORT                        R15 K1 [script]
      109 GETTABLEKS                       R15 R15 K4 ["Parent"]
      111 GETTABLEKS                       R15 R15 K19 ["MarkdownListItem"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K6 [require]
      116 GETIMPORT                        R16 K1 [script]
      118 GETTABLEKS                       R16 R16 K4 ["Parent"]
      120 GETTABLEKS                       R16 R16 K20 ["MarkdownCheckboxItem"]
      122 CALL                             R15 1 1
      123 GETIMPORT                        R16 K6 [require]
      125 GETIMPORT                        R17 K1 [script]
      127 GETTABLEKS                       R17 R17 K4 ["Parent"]
      129 GETTABLEKS                       R17 R17 K21 ["MarkdownCodeBlock"]
      131 CALL                             R16 1 1
      132 GETIMPORT                        R17 K6 [require]
      134 GETIMPORT                        R18 K1 [script]
      136 GETTABLEKS                       R18 R18 K4 ["Parent"]
      138 GETTABLEKS                       R18 R18 K22 ["MarkdownImage"]
      140 CALL                             R17 1 1
      141 GETIMPORT                        R18 K6 [require]
      143 GETIMPORT                        R19 K1 [script]
      145 GETTABLEKS                       R19 R19 K4 ["Parent"]
      147 GETTABLEKS                       R19 R19 K23 ["MarkdownTable"]
      149 CALL                             R18 1 1
      150 GETIMPORT                        R19 K6 [require]
      152 GETIMPORT                        R20 K1 [script]
      154 GETTABLEKS                       R20 R20 K4 ["Parent"]
      156 GETTABLEKS                       R20 R20 K24 ["MarkdownDivider"]
      158 CALL                             R19 1 1
      159 GETIMPORT                        R20 K6 [require]
      161 GETIMPORT                        R21 K1 [script]
      163 GETTABLEKS                       R21 R21 K4 ["Parent"]
      165 GETTABLEKS                       R21 R21 K25 ["MarkdownQuote"]
      167 CALL                             R20 1 1
      168 GETIMPORT                        R21 K6 [require]
      170 GETIMPORT                        R22 K1 [script]
      172 GETTABLEKS                       R22 R22 K4 ["Parent"]
      174 GETTABLEKS                       R22 R22 K26 ["MarkdownComponent"]
      176 CALL                             R21 1 1
      177 GETTABLEKS                       R22 R4 K27 ["ComponentStyles"]
      179 GETTABLEKS                       R23 R4 K28 ["ThemeProvider"]
      181 GETTABLEKS                       R24 R3 K29 ["CodeEditor"]
      183 GETTABLEKS                       R25 R4 K30 ["SelectInput"]
      185 GETTABLEKS                       R26 R4 K31 ["ToggleButton"]
      187 GETTABLEKS                       R27 R2 K32 ["template"]
      189 GETTABLEKS                       R28 R2 K33 ["Frame"]
      191 GETTABLEKS                       R29 R2 K34 ["TextButton"]
      193 GETTABLEKS                       R30 R2 K35 ["TextLabel"]
      195 GETTABLEKS                       R31 R2 K36 ["Provide"]
      197 GETTABLEKS                       R32 R2 K37 ["If"]
      199 GETTABLEKS                       R33 R2 K38 ["expr"]
      201 DUPCLOSURE                       R34 K39 [PROTO_2]
      202 MOVE                             R35 R34
      203 LOADK                            R36 K40 ["BloxMarkdownDockPanelCenter2"]
      204 CALL                             R35 1 1
      205 DUPCLOSURE                       R36 K41 [PROTO_4]
      206 GETIMPORT                        R38 K43 [pcall]
      208 LOADK                            R40 K44 ["StudioActionOverrideAPI"]
      209 NEWCLOSURE                       R39 P2
      210 CAPTURE                          VAL R40
      211 CALL                             R38 1 2
      212 JUMPIFNOT                        R38 ; [+2]
      213 MOVE                             R37 R39
      214 JUMP                             ; [+1]
      215 LOADB                            R37 0
      216 GETIMPORT                        R39 K43 [pcall]
      218 LOADK                            R41 K45 ["EnableMarkdownEditorBridge"]
      219 NEWCLOSURE                       R40 P2
      220 CAPTURE                          VAL R41
      221 CALL                             R39 1 2
      222 JUMPIFNOT                        R39 ; [+2]
      223 MOVE                             R38 R40
      224 JUMP                             ; [+1]
      225 LOADB                            R38 0
      226 GETIMPORT                        R40 K43 [pcall]
      228 LOADK                            R42 K46 ["StudioSinkBareKeyShortcuts"]
      229 NEWCLOSURE                       R41 P2
      230 CAPTURE                          VAL R42
      231 CALL                             R40 1 2
      232 JUMPIFNOT                        R40 ; [+2]
      233 MOVE                             R39 R41
      234 JUMP                             ; [+1]
      235 LOADB                            R39 0
      236 NEWTABLE                         R40 0 12
      238 LOADK                            R41 K47 ["Jan"]
      239 LOADK                            R42 K48 ["Feb"]
      240 LOADK                            R43 K49 ["Mar"]
      241 LOADK                            R44 K50 ["Apr"]
      242 LOADK                            R45 K51 ["May"]
      243 LOADK                            R46 K52 ["Jun"]
      244 LOADK                            R47 K53 ["Jul"]
      245 LOADK                            R48 K54 ["Aug"]
      246 LOADK                            R49 K55 ["Sep"]
      247 LOADK                            R50 K56 ["Oct"]
      248 LOADK                            R51 K57 ["Nov"]
      249 LOADK                            R52 K58 ["Dec"]
      250 SETLIST                          R40 R41 12 [1]
      252 DUPCLOSURE                       R41 K59 [PROTO_5]
      253 CAPTURE                          VAL R40
      254 MOVE                             R42 R27
      255 LOADK                            R43 K60 ["MarkdownDockPanel"]
      256 DUPTABLE                         R44 K81 [{["markdown"] = "", ["onMarkdownChanged"] = , ["action"] = "", ["onAction"] = , ["isActionDisabled"] = False, ["secondaryAction"] = "", ["onSecondaryAction"] = , ["title"] = "", ["onDirtyChanged"] = , ["revisions"], ["onRevisionSelected"] = , ["inputEnabled"] = True, ["editorToggleText"] = "Editor", ["versionsText"] = "Versions"}]
      257 NEWTABLE                         R45 0 0
      259 SETTABLEKS                       R45 R44 K73 ["revisions"]
      261 NEWTABLE                         R45 0 1
      263 MOVE                             R46 R31
      264 NEWTABLE                         R47 2 2
      266 GETTABLEKS                       R50 R23 K82 ["token"]
      268 SETTABLEKS                       R50 R47 K83 ["provider"]
      270 MOVE                             R50 R33
      271 LOADK                            R51 K84 ["theme"]
      272 CALL                             R50 1 1
      273 SETTABLEKS                       R50 R47 K85 ["value"]
      275 MOVE                             R48 R22
      276 NEWTABLE                         R49 0 0
      278 CALL                             R48 1 1
      279 MOVE                             R49 R28
      280 NEWTABLE                         R50 4 2
      282 LOADK                            R53 K86 ["MarkdownDockPanelRoot"]
      283 SETTABLEKS                       R53 R50 K87 ["Name"]
      285 LOADK                            R53 K88 ["box"]
      286 SETTABLEKS                       R53 R50 K89 ["Tags"]
      288 GETIMPORT                        R53 K92 [UDim2.new]
      290 LOADN                            R54 1
      291 LOADN                            R55 0
      292 LOADN                            R56 1
      293 LOADN                            R57 0
      294 CALL                             R53 4 1
      295 SETTABLEKS                       R53 R50 K93 ["Size"]
      297 LOADB                            R53 1
      298 SETTABLEKS                       R53 R50 K94 ["ClipsDescendants"]
      300 MOVE                             R51 R28
      301 NEWTABLE                         R52 4 3
      303 LOADK                            R56 K95 ["Toolbar"]
      304 SETTABLEKS                       R56 R52 K87 ["Name"]
      306 LOADK                            R56 K96 ["surface-100 row pad-x-8 gap-8 align-y-center"]
      307 SETTABLEKS                       R56 R52 K89 ["Tags"]
      309 GETIMPORT                        R56 K92 [UDim2.new]
      311 LOADN                            R57 1
      312 LOADN                            R58 0
      313 LOADN                            R59 0
      314 LOADN                            R60 32
      315 CALL                             R56 4 1
      316 SETTABLEKS                       R56 R52 K93 ["Size"]
      318 MOVE                             R53 R32
      319 DUPTABLE                         R54 K99 [{"when", "Then"}]
      320 MOVE                             R55 R33
      321 LOADK                            R56 K100 ["hasTitle"]
      322 CALL                             R55 1 1
      323 SETTABLEKS                       R55 R54 K97 ["when"]
      325 MOVE                             R55 R27
      326 NEWTABLE                         R56 0 1
      328 MOVE                             R57 R30
      329 DUPTABLE                         R58 K106 [{["Name"] = "TitleLabel", ["Tags"] = "text-label text-truncate-end", ["Text"], ["Font"], ["Size"], ["AutomaticSize"]}]
      330 MOVE                             R59 R33
      331 LOADK                            R60 K107 ["titleText"]
      332 CALL                             R59 1 1
      333 SETTABLEKS                       R59 R58 K103 ["Text"]
      335 GETIMPORT                        R59 K110 [Enum.Font.BuilderSansMedium]
      337 SETTABLEKS                       R59 R58 K104 ["Font"]
      339 GETIMPORT                        R59 K92 [UDim2.new]
      341 LOADN                            R60 0
      342 LOADN                            R61 0
      343 LOADN                            R62 1
      344 LOADN                            R63 0
      345 CALL                             R59 4 1
      346 SETTABLEKS                       R59 R58 K93 ["Size"]
      348 GETIMPORT                        R59 K112 [Enum.AutomaticSize.X]
      350 SETTABLEKS                       R59 R58 K105 ["AutomaticSize"]
      352 CALL                             R57 1 -1
      353 SETLIST                          R56 R57 -1 [1]
      355 CALL                             R55 1 1
      356 SETTABLEKS                       R55 R54 K98 ["Then"]
      358 CALL                             R53 1 1
      359 MOVE                             R54 R28
      360 DUPTABLE                         R55 K115 [{["Name"] = "Spacer", ["Tags"] = "box grow-x"}]
      361 CALL                             R54 1 1
      362 MOVE                             R55 R28
      363 NEWTABLE                         R56 2 4
      365 LOADK                            R61 K116 ["RightControls"]
      366 SETTABLEKS                       R61 R56 K87 ["Name"]
      368 LOADK                            R61 K117 ["box row gap-8 auto-xy align-y-center"]
      369 SETTABLEKS                       R61 R56 K89 ["Tags"]
      371 MOVE                             R57 R32
      372 DUPTABLE                         R58 K99 [{"when", "Then"}]
      373 MOVE                             R59 R33
      374 LOADK                            R60 K118 ["hasRevisions"]
      375 CALL                             R59 1 1
      376 SETTABLEKS                       R59 R58 K97 ["when"]
      378 MOVE                             R59 R27
      379 NEWTABLE                         R60 0 1
      381 MOVE                             R61 R25
      382 DUPTABLE                         R62 K123 [{"text", "options", "selectedValue", "onSelect"}]
      383 MOVE                             R63 R33
      384 LOADK                            R64 K124 ["selectedRevisionLabel"]
      385 CALL                             R63 1 1
      386 SETTABLEKS                       R63 R62 K119 ["text"]
      388 MOVE                             R63 R33
      389 LOADK                            R64 K125 ["revisionOptions"]
      390 CALL                             R63 1 1
      391 SETTABLEKS                       R63 R62 K120 ["options"]
      393 MOVE                             R63 R33
      394 LOADK                            R64 K126 ["selectedRevisionValue"]
      395 CALL                             R63 1 1
      396 SETTABLEKS                       R63 R62 K121 ["selectedValue"]
      398 MOVE                             R63 R33
      399 LOADK                            R64 K127 ["fn(value) handleRevisionSelect(value)"]
      400 CALL                             R63 1 1
      401 SETTABLEKS                       R63 R62 K122 ["onSelect"]
      403 CALL                             R61 1 -1
      404 SETLIST                          R60 R61 -1 [1]
      406 CALL                             R59 1 1
      407 SETTABLEKS                       R59 R58 K98 ["Then"]
      409 CALL                             R57 1 1
      410 MOVE                             R58 R26
      411 DUPTABLE                         R59 K132 [{["selected"], ["onToggle"], ["text"], ["labelPosition"] = "left"}]
      412 MOVE                             R60 R33
      413 LOADK                            R61 K133 ["isCodeView"]
      414 CALL                             R60 1 1
      415 SETTABLEKS                       R60 R59 K128 ["selected"]
      417 MOVE                             R60 R33
      418 LOADK                            R61 K134 ["handleToggleView"]
      419 CALL                             R60 1 1
      420 SETTABLEKS                       R60 R59 K129 ["onToggle"]
      422 MOVE                             R60 R33
      423 LOADK                            R61 K77 ["editorToggleText"]
      424 CALL                             R60 1 1
      425 SETTABLEKS                       R60 R59 K119 ["text"]
      427 CALL                             R58 1 1
      428 MOVE                             R59 R32
      429 DUPTABLE                         R60 K99 [{"when", "Then"}]
      430 MOVE                             R61 R33
      431 LOADK                            R62 K135 ["hasAction"]
      432 CALL                             R61 1 1
      433 SETTABLEKS                       R61 R60 K97 ["when"]
      435 MOVE                             R61 R27
      436 NEWTABLE                         R62 0 1
      438 MOVE                             R63 R29
      439 NEWTABLE                         R64 8 1
      441 LOADK                            R66 K136 ["ActionButton"]
      442 SETTABLEKS                       R66 R64 K87 ["Name"]
      444 MOVE                             R66 R33
      445 LOADK                            R67 K137 ["actionButtonTags"]
      446 CALL                             R66 1 1
      447 SETTABLEKS                       R66 R64 K89 ["Tags"]
      449 GETIMPORT                        R66 K92 [UDim2.new]
      451 LOADN                            R67 0
      452 LOADN                            R68 0
      453 LOADN                            R69 0
      454 LOADN                            R70 24
      455 CALL                             R66 4 1
      456 SETTABLEKS                       R66 R64 K93 ["Size"]
      458 GETIMPORT                        R66 K112 [Enum.AutomaticSize.X]
      460 SETTABLEKS                       R66 R64 K105 ["AutomaticSize"]
      462 MOVE                             R66 R33
      463 LOADK                            R67 K138 ["handleAction"]
      464 CALL                             R66 1 1
      465 SETTABLEKS                       R66 R64 K139 ["OnActivated"]
      467 MOVE                             R65 R30
      468 DUPTABLE                         R66 K141 [{["Name"] = "Label", ["Tags"], ["Text"], ["Size"], ["AutomaticSize"], ["Font"]}]
      469 MOVE                             R67 R33
      470 LOADK                            R68 K142 ["actionLabelTags"]
      471 CALL                             R67 1 1
      472 SETTABLEKS                       R67 R66 K89 ["Tags"]
      474 MOVE                             R67 R33
      475 LOADK                            R68 K143 ["actionText"]
      476 CALL                             R67 1 1
      477 SETTABLEKS                       R67 R66 K103 ["Text"]
      479 GETIMPORT                        R67 K92 [UDim2.new]
      481 LOADN                            R68 0
      482 LOADN                            R69 0
      483 LOADN                            R70 1
      484 LOADN                            R71 0
      485 CALL                             R67 4 1
      486 SETTABLEKS                       R67 R66 K93 ["Size"]
      488 GETIMPORT                        R67 K112 [Enum.AutomaticSize.X]
      490 SETTABLEKS                       R67 R66 K105 ["AutomaticSize"]
      492 GETIMPORT                        R67 K110 [Enum.Font.BuilderSansMedium]
      494 SETTABLEKS                       R67 R66 K104 ["Font"]
      496 CALL                             R65 1 -1
      497 SETLIST                          R64 R65 -1 [1]
      499 CALL                             R63 1 -1
      500 SETLIST                          R62 R63 -1 [1]
      502 CALL                             R61 1 1
      503 SETTABLEKS                       R61 R60 K98 ["Then"]
      505 CALL                             R59 1 1
      506 MOVE                             R60 R32
      507 DUPTABLE                         R61 K99 [{"when", "Then"}]
      508 MOVE                             R62 R33
      509 LOADK                            R63 K144 ["hasSecondaryAction"]
      510 CALL                             R62 1 1
      511 SETTABLEKS                       R62 R61 K97 ["when"]
      513 MOVE                             R62 R27
      514 NEWTABLE                         R63 0 1
      516 MOVE                             R64 R29
      517 NEWTABLE                         R65 8 1
      519 LOADK                            R67 K145 ["SecondaryActionButton"]
      520 SETTABLEKS                       R67 R65 K87 ["Name"]
      522 MOVE                             R67 R33
      523 LOADK                            R68 K146 ["secondaryActionButtonTags"]
      524 CALL                             R67 1 1
      525 SETTABLEKS                       R67 R65 K89 ["Tags"]
      527 GETIMPORT                        R67 K92 [UDim2.new]
      529 LOADN                            R68 0
      530 LOADN                            R69 0
      531 LOADN                            R70 0
      532 LOADN                            R71 24
      533 CALL                             R67 4 1
      534 SETTABLEKS                       R67 R65 K93 ["Size"]
      536 GETIMPORT                        R67 K112 [Enum.AutomaticSize.X]
      538 SETTABLEKS                       R67 R65 K105 ["AutomaticSize"]
      540 MOVE                             R67 R33
      541 LOADK                            R68 K147 ["handleSecondaryAction"]
      542 CALL                             R67 1 1
      543 SETTABLEKS                       R67 R65 K139 ["OnActivated"]
      545 MOVE                             R66 R30
      546 DUPTABLE                         R67 K141 [{["Name"] = "Label", ["Tags"], ["Text"], ["Size"], ["AutomaticSize"], ["Font"]}]
      547 MOVE                             R68 R33
      548 LOADK                            R69 K148 ["secondaryActionLabelTags"]
      549 CALL                             R68 1 1
      550 SETTABLEKS                       R68 R67 K89 ["Tags"]
      552 MOVE                             R68 R33
      553 LOADK                            R69 K149 ["secondaryActionText"]
      554 CALL                             R68 1 1
      555 SETTABLEKS                       R68 R67 K103 ["Text"]
      557 GETIMPORT                        R68 K92 [UDim2.new]
      559 LOADN                            R69 0
      560 LOADN                            R70 0
      561 LOADN                            R71 1
      562 LOADN                            R72 0
      563 CALL                             R68 4 1
      564 SETTABLEKS                       R68 R67 K93 ["Size"]
      566 GETIMPORT                        R68 K112 [Enum.AutomaticSize.X]
      568 SETTABLEKS                       R68 R67 K105 ["AutomaticSize"]
      570 GETIMPORT                        R68 K110 [Enum.Font.BuilderSansMedium]
      572 SETTABLEKS                       R68 R67 K104 ["Font"]
      574 CALL                             R66 1 -1
      575 SETLIST                          R65 R66 -1 [1]
      577 CALL                             R64 1 -1
      578 SETLIST                          R63 R64 -1 [1]
      580 CALL                             R62 1 1
      581 SETTABLEKS                       R62 R61 K98 ["Then"]
      583 CALL                             R60 1 -1
      584 SETLIST                          R56 R57 -1 [1]
      586 CALL                             R55 1 -1
      587 SETLIST                          R52 R53 -1 [1]
      589 CALL                             R51 1 1
      590 MOVE                             R52 R28
      591 NEWTABLE                         R53 8 1
      593 LOADK                            R55 K150 ["EditorBody"]
      594 SETTABLEKS                       R55 R53 K87 ["Name"]
      596 LOADK                            R55 K88 ["box"]
      597 SETTABLEKS                       R55 R53 K89 ["Tags"]
      599 GETIMPORT                        R55 K92 [UDim2.new]
      601 LOADN                            R56 0
      602 LOADN                            R57 0
      603 LOADN                            R58 0
      604 LOADN                            R59 32
      605 CALL                             R55 4 1
      606 SETTABLEKS                       R55 R53 K151 ["Position"]
      608 GETIMPORT                        R55 K92 [UDim2.new]
      610 LOADN                            R56 1
      611 LOADN                            R57 0
      612 LOADN                            R58 1
      613 LOADN                            R59 -32
      614 CALL                             R55 4 1
      615 SETTABLEKS                       R55 R53 K93 ["Size"]
      617 LOADB                            R55 1
      618 SETTABLEKS                       R55 R53 K94 ["ClipsDescendants"]
      620 MOVE                             R54 R32
      621 DUPTABLE                         R55 K153 [{"when", "Then", "Else"}]
      622 MOVE                             R56 R33
      623 LOADK                            R57 K133 ["isCodeView"]
      624 CALL                             R56 1 1
      625 SETTABLEKS                       R56 R55 K97 ["when"]
      627 MOVE                             R56 R27
      628 NEWTABLE                         R57 0 1
      630 MOVE                             R58 R28
      631 NEWTABLE                         R59 4 1
      633 LOADK                            R61 K154 ["CodePane"]
      634 SETTABLEKS                       R61 R59 K87 ["Name"]
      636 LOADK                            R61 K155 ["surface-100"]
      637 SETTABLEKS                       R61 R59 K89 ["Tags"]
      639 GETIMPORT                        R61 K92 [UDim2.new]
      641 LOADN                            R62 1
      642 LOADN                            R63 0
      643 LOADN                            R64 1
      644 LOADN                            R65 0
      645 CALL                             R61 4 1
      646 SETTABLEKS                       R61 R59 K93 ["Size"]
      648 LOADB                            R61 1
      649 SETTABLEKS                       R61 R59 K94 ["ClipsDescendants"]
      651 MOVE                             R60 R24
      652 DUPTABLE                         R61 K161 [{["text"], ["onTextChanged"], ["language"] = "markdown", ["editable"] = True, ["showLineNumbers"] = True, ["editorCompat"]}]
      653 MOVE                             R62 R33
      654 LOADK                            R63 K162 ["code"]
      655 CALL                             R62 1 1
      656 SETTABLEKS                       R62 R61 K119 ["text"]
      658 MOVE                             R62 R33
      659 LOADK                            R63 K163 ["handleCodeTextChanged"]
      660 CALL                             R62 1 1
      661 SETTABLEKS                       R62 R61 K156 ["onTextChanged"]
      663 MOVE                             R62 R33
      664 LOADK                            R63 K160 ["editorCompat"]
      665 CALL                             R62 1 1
      666 SETTABLEKS                       R62 R61 K160 ["editorCompat"]
      668 CALL                             R60 1 -1
      669 SETLIST                          R59 R60 -1 [1]
      671 CALL                             R58 1 -1
      672 SETLIST                          R57 R58 -1 [1]
      674 CALL                             R56 1 1
      675 SETTABLEKS                       R56 R55 K98 ["Then"]
      677 MOVE                             R56 R27
      678 NEWTABLE                         R57 0 1
      680 MOVE                             R58 R28
      681 NEWTABLE                         R59 4 1
      683 LOADK                            R61 K164 ["PreviewPane"]
      684 SETTABLEKS                       R61 R59 K87 ["Name"]
      686 LOADK                            R61 K165 ["surface-200"]
      687 SETTABLEKS                       R61 R59 K89 ["Tags"]
      689 GETIMPORT                        R61 K92 [UDim2.new]
      691 LOADN                            R62 1
      692 LOADN                            R63 0
      693 LOADN                            R64 1
      694 LOADN                            R65 0
      695 CALL                             R61 4 1
      696 SETTABLEKS                       R61 R59 K93 ["Size"]
      698 LOADB                            R61 1
      699 SETTABLEKS                       R61 R59 K94 ["ClipsDescendants"]
      701 MOVE                             R60 R5
      702 DUPTABLE                         R61 K168 [{["markdown"], ["editable"] = False, ["virtualized"] = False, ["inputCaptureActive"]}]
      703 MOVE                             R62 R33
      704 LOADK                            R63 K169 ["markdownForViewer"]
      705 CALL                             R62 1 1
      706 SETTABLEKS                       R62 R61 K61 ["markdown"]
      708 MOVE                             R62 R33
      709 LOADK                            R63 K75 ["inputEnabled"]
      710 CALL                             R62 1 1
      711 SETTABLEKS                       R62 R61 K167 ["inputCaptureActive"]
      713 CALL                             R60 1 -1
      714 SETLIST                          R59 R60 -1 [1]
      716 CALL                             R58 1 -1
      717 SETLIST                          R57 R58 -1 [1]
      719 CALL                             R56 1 1
      720 SETTABLEKS                       R56 R55 K152 ["Else"]
      722 CALL                             R54 1 -1
      723 SETLIST                          R53 R54 -1 [1]
      725 CALL                             R52 1 -1
      726 SETLIST                          R50 R51 -1 [1]
      728 CALL                             R49 1 -1
      729 SETLIST                          R47 R48 -1 [1]
      731 CALL                             R46 1 -1
      732 SETLIST                          R45 R46 -1 [1]
      734 DUPCLOSURE                       R46 K170 [PROTO_30]
      735 CAPTURE                          VAL R23
      736 CAPTURE                          VAL R41
      737 CAPTURE                          VAL R40
      738 CALL                             R42 4 1
      739 LOADNIL                          R43
      740 LOADNIL                          R44
      741 LOADNIL                          R45
      742 LOADNIL                          R46
      743 LOADNIL                          R47
      744 LOADNIL                          R48
      745 LOADNIL                          R49
      746 LOADNIL                          R50
      747 LOADNIL                          R51
      748 LOADNIL                          R52
      749 LOADNIL                          R53
      750 DUPTABLE                         R54 K172 [{["current"] = }]
      751 DUPTABLE                         R55 K172 [{["current"] = }]
      752 DUPTABLE                         R56 K172 [{["current"] = }]
      753 DUPTABLE                         R57 K172 [{["current"] = }]
      754 DUPTABLE                         R58 K172 [{["current"] = }]
      755 LOADB                            R59 0
      756 LOADN                            R60 0
      757 NEWCLOSURE                       R61 P5
      758 CAPTURE                          REF R59
      759 CAPTURE                          VAL R2
      760 CAPTURE                          VAL R22
      761 CAPTURE                          VAL R42
      762 CAPTURE                          VAL R25
      763 CAPTURE                          VAL R26
      764 CAPTURE                          VAL R24
      765 CAPTURE                          VAL R5
      766 CAPTURE                          VAL R6
      767 CAPTURE                          VAL R7
      768 CAPTURE                          VAL R8
      769 CAPTURE                          VAL R9
      770 CAPTURE                          VAL R10
      771 CAPTURE                          VAL R11
      772 CAPTURE                          VAL R12
      773 CAPTURE                          VAL R13
      774 CAPTURE                          VAL R14
      775 CAPTURE                          VAL R15
      776 CAPTURE                          VAL R16
      777 CAPTURE                          VAL R17
      778 CAPTURE                          VAL R18
      779 CAPTURE                          VAL R19
      780 CAPTURE                          VAL R20
      781 CAPTURE                          VAL R21
      782 NEWCLOSURE                       R62 P6
      783 CAPTURE                          REF R43
      784 CAPTURE                          VAL R37
      785 CAPTURE                          VAL R2
      786 CAPTURE                          VAL R38
      787 CAPTURE                          VAL R35
      788 CAPTURE                          VAL R39
      789 CAPTURE                          VAL R61
      790 CAPTURE                          REF R45
      791 CAPTURE                          REF R46
      792 CAPTURE                          REF R47
      793 CAPTURE                          REF R48
      794 CAPTURE                          REF R49
      795 CAPTURE                          REF R50
      796 CAPTURE                          REF R51
      797 CAPTURE                          REF R52
      798 CAPTURE                          REF R53
      799 CAPTURE                          VAL R54
      800 CAPTURE                          VAL R55
      801 CAPTURE                          VAL R56
      802 CAPTURE                          VAL R57
      803 CAPTURE                          VAL R58
      804 CAPTURE                          REF R44
      805 CAPTURE                          VAL R42
      806 NEWTABLE                         R63 16 0
      808 SETTABLEKS                       R63 R63 K173 ["__index"]
      810 NEWCLOSURE                       R64 P7
      811 CAPTURE                          REF R60
      812 CAPTURE                          REF R45
      813 SETTABLEKS                       R64 R63 K174 ["setMarkdown"]
      815 NEWCLOSURE                       R64 P8
      816 CAPTURE                          REF R60
      817 CAPTURE                          REF R50
      818 SETTABLEKS                       R64 R63 K175 ["setRevisions"]
      820 NEWCLOSURE                       R64 P9
      821 CAPTURE                          REF R60
      822 CAPTURE                          REF R46
      823 SETTABLEKS                       R64 R63 K176 ["setAction"]
      825 NEWCLOSURE                       R64 P10
      826 CAPTURE                          REF R60
      827 CAPTURE                          REF R47
      828 SETTABLEKS                       R64 R63 K177 ["setIsActionDisabled"]
      830 NEWCLOSURE                       R64 P11
      831 CAPTURE                          REF R60
      832 CAPTURE                          REF R48
      833 SETTABLEKS                       R64 R63 K178 ["setSecondaryAction"]
      835 NEWCLOSURE                       R64 P12
      836 CAPTURE                          REF R60
      837 CAPTURE                          REF R49
      838 SETTABLEKS                       R64 R63 K179 ["setTitle"]
      840 NEWCLOSURE                       R64 P13
      841 CAPTURE                          REF R60
      842 CAPTURE                          REF R51
      843 SETTABLEKS                       R64 R63 K180 ["setInputEnabled"]
      845 NEWCLOSURE                       R64 P14
      846 CAPTURE                          REF R60
      847 CAPTURE                          REF R43
      848 SETTABLEKS                       R64 R63 K181 ["close"]
      850 NEWCLOSURE                       R64 P15
      851 CAPTURE                          REF R60
      852 CAPTURE                          VAL R63
      853 NEWTABLE                         R65 2 0
      855 NEWCLOSURE                       R66 P16
      856 CAPTURE                          REF R60
      857 CAPTURE                          VAL R62
      858 CAPTURE                          VAL R54
      859 CAPTURE                          VAL R55
      860 CAPTURE                          VAL R56
      861 CAPTURE                          VAL R57
      862 CAPTURE                          VAL R58
      863 CAPTURE                          REF R45
      864 CAPTURE                          REF R46
      865 CAPTURE                          REF R47
      866 CAPTURE                          REF R48
      867 CAPTURE                          REF R49
      868 CAPTURE                          REF R50
      869 CAPTURE                          REF R51
      870 CAPTURE                          REF R52
      871 CAPTURE                          REF R53
      872 CAPTURE                          VAL R63
      873 SETTABLEKS                       R66 R65 K182 ["open"]
      875 NEWCLOSURE                       R66 P17
      876 CAPTURE                          REF R43
      877 SETTABLEKS                       R66 R65 K181 ["close"]
      879 CLOSEUPVALS                      R43
      880 RETURN                           R65 1
