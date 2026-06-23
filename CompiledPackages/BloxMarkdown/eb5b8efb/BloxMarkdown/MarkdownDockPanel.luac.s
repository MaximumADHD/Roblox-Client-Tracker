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
      256 DUPTABLE                         R44 K75 [{"markdown", "onMarkdownChanged", "action", "onAction", "isActionDisabled", "secondaryAction", "onSecondaryAction", "title", "onDirtyChanged", "revisions", "onRevisionSelected", "inputEnabled", "editorToggleText", "versionsText"}]
      257 LOADK                            R45 K76 [""]
      258 SETTABLEKS                       R45 R44 K61 ["markdown"]
      260 LOADNIL                          R45
      261 SETTABLEKS                       R45 R44 K62 ["onMarkdownChanged"]
      263 LOADK                            R45 K76 [""]
      264 SETTABLEKS                       R45 R44 K63 ["action"]
      266 LOADNIL                          R45
      267 SETTABLEKS                       R45 R44 K64 ["onAction"]
      269 LOADB                            R45 0
      270 SETTABLEKS                       R45 R44 K65 ["isActionDisabled"]
      272 LOADK                            R45 K76 [""]
      273 SETTABLEKS                       R45 R44 K66 ["secondaryAction"]
      275 LOADNIL                          R45
      276 SETTABLEKS                       R45 R44 K67 ["onSecondaryAction"]
      278 LOADK                            R45 K76 [""]
      279 SETTABLEKS                       R45 R44 K68 ["title"]
      281 LOADNIL                          R45
      282 SETTABLEKS                       R45 R44 K69 ["onDirtyChanged"]
      284 NEWTABLE                         R45 0 0
      286 SETTABLEKS                       R45 R44 K70 ["revisions"]
      288 LOADNIL                          R45
      289 SETTABLEKS                       R45 R44 K71 ["onRevisionSelected"]
      291 LOADB                            R45 1
      292 SETTABLEKS                       R45 R44 K72 ["inputEnabled"]
      294 LOADK                            R45 K77 ["Editor"]
      295 SETTABLEKS                       R45 R44 K73 ["editorToggleText"]
      297 LOADK                            R45 K78 ["Versions"]
      298 SETTABLEKS                       R45 R44 K74 ["versionsText"]
      300 NEWTABLE                         R45 0 1
      302 MOVE                             R46 R31
      303 NEWTABLE                         R47 2 2
      305 GETTABLEKS                       R50 R23 K79 ["token"]
      307 SETTABLEKS                       R50 R47 K80 ["provider"]
      309 MOVE                             R50 R33
      310 LOADK                            R51 K81 ["theme"]
      311 CALL                             R50 1 1
      312 SETTABLEKS                       R50 R47 K82 ["value"]
      314 MOVE                             R48 R22
      315 NEWTABLE                         R49 0 0
      317 CALL                             R48 1 1
      318 MOVE                             R49 R28
      319 NEWTABLE                         R50 4 2
      321 LOADK                            R53 K83 ["MarkdownDockPanelRoot"]
      322 SETTABLEKS                       R53 R50 K84 ["Name"]
      324 LOADK                            R53 K85 ["box"]
      325 SETTABLEKS                       R53 R50 K86 ["Tags"]
      327 GETIMPORT                        R53 K89 [UDim2.new]
      329 LOADN                            R54 1
      330 LOADN                            R55 0
      331 LOADN                            R56 1
      332 LOADN                            R57 0
      333 CALL                             R53 4 1
      334 SETTABLEKS                       R53 R50 K90 ["Size"]
      336 LOADB                            R53 1
      337 SETTABLEKS                       R53 R50 K91 ["ClipsDescendants"]
      339 MOVE                             R51 R28
      340 NEWTABLE                         R52 4 3
      342 LOADK                            R56 K92 ["Toolbar"]
      343 SETTABLEKS                       R56 R52 K84 ["Name"]
      345 LOADK                            R56 K93 ["surface-100 row pad-x-8 gap-8 align-y-center"]
      346 SETTABLEKS                       R56 R52 K86 ["Tags"]
      348 GETIMPORT                        R56 K89 [UDim2.new]
      350 LOADN                            R57 1
      351 LOADN                            R58 0
      352 LOADN                            R59 0
      353 LOADN                            R60 32
      354 CALL                             R56 4 1
      355 SETTABLEKS                       R56 R52 K90 ["Size"]
      357 MOVE                             R53 R32
      358 DUPTABLE                         R54 K96 [{"when", "Then"}]
      359 MOVE                             R55 R33
      360 LOADK                            R56 K97 ["hasTitle"]
      361 CALL                             R55 1 1
      362 SETTABLEKS                       R55 R54 K94 ["when"]
      364 MOVE                             R55 R27
      365 NEWTABLE                         R56 0 1
      367 MOVE                             R57 R30
      368 DUPTABLE                         R58 K101 [{"Name", "Tags", "Text", "Font", "Size", "AutomaticSize"}]
      369 LOADK                            R59 K102 ["TitleLabel"]
      370 SETTABLEKS                       R59 R58 K84 ["Name"]
      372 LOADK                            R59 K103 ["text-label text-truncate-end"]
      373 SETTABLEKS                       R59 R58 K86 ["Tags"]
      375 MOVE                             R59 R33
      376 LOADK                            R60 K104 ["titleText"]
      377 CALL                             R59 1 1
      378 SETTABLEKS                       R59 R58 K98 ["Text"]
      380 GETIMPORT                        R59 K107 [Enum.Font.BuilderSansMedium]
      382 SETTABLEKS                       R59 R58 K99 ["Font"]
      384 GETIMPORT                        R59 K89 [UDim2.new]
      386 LOADN                            R60 0
      387 LOADN                            R61 0
      388 LOADN                            R62 1
      389 LOADN                            R63 0
      390 CALL                             R59 4 1
      391 SETTABLEKS                       R59 R58 K90 ["Size"]
      393 GETIMPORT                        R59 K109 [Enum.AutomaticSize.X]
      395 SETTABLEKS                       R59 R58 K100 ["AutomaticSize"]
      397 CALL                             R57 1 -1
      398 SETLIST                          R56 R57 -1 [1]
      400 CALL                             R55 1 1
      401 SETTABLEKS                       R55 R54 K95 ["Then"]
      403 CALL                             R53 1 1
      404 MOVE                             R54 R28
      405 DUPTABLE                         R55 K110 [{"Name", "Tags"}]
      406 LOADK                            R56 K111 ["Spacer"]
      407 SETTABLEKS                       R56 R55 K84 ["Name"]
      409 LOADK                            R56 K112 ["box grow-x"]
      410 SETTABLEKS                       R56 R55 K86 ["Tags"]
      412 CALL                             R54 1 1
      413 MOVE                             R55 R28
      414 NEWTABLE                         R56 2 4
      416 LOADK                            R61 K113 ["RightControls"]
      417 SETTABLEKS                       R61 R56 K84 ["Name"]
      419 LOADK                            R61 K114 ["box row gap-8 auto-xy align-y-center"]
      420 SETTABLEKS                       R61 R56 K86 ["Tags"]
      422 MOVE                             R57 R32
      423 DUPTABLE                         R58 K96 [{"when", "Then"}]
      424 MOVE                             R59 R33
      425 LOADK                            R60 K115 ["hasRevisions"]
      426 CALL                             R59 1 1
      427 SETTABLEKS                       R59 R58 K94 ["when"]
      429 MOVE                             R59 R27
      430 NEWTABLE                         R60 0 1
      432 MOVE                             R61 R25
      433 DUPTABLE                         R62 K120 [{"text", "options", "selectedValue", "onSelect"}]
      434 MOVE                             R63 R33
      435 LOADK                            R64 K121 ["selectedRevisionLabel"]
      436 CALL                             R63 1 1
      437 SETTABLEKS                       R63 R62 K116 ["text"]
      439 MOVE                             R63 R33
      440 LOADK                            R64 K122 ["revisionOptions"]
      441 CALL                             R63 1 1
      442 SETTABLEKS                       R63 R62 K117 ["options"]
      444 MOVE                             R63 R33
      445 LOADK                            R64 K123 ["selectedRevisionValue"]
      446 CALL                             R63 1 1
      447 SETTABLEKS                       R63 R62 K118 ["selectedValue"]
      449 MOVE                             R63 R33
      450 LOADK                            R64 K124 ["fn(value) handleRevisionSelect(value)"]
      451 CALL                             R63 1 1
      452 SETTABLEKS                       R63 R62 K119 ["onSelect"]
      454 CALL                             R61 1 -1
      455 SETLIST                          R60 R61 -1 [1]
      457 CALL                             R59 1 1
      458 SETTABLEKS                       R59 R58 K95 ["Then"]
      460 CALL                             R57 1 1
      461 MOVE                             R58 R26
      462 DUPTABLE                         R59 K128 [{"selected", "onToggle", "text", "labelPosition"}]
      463 MOVE                             R60 R33
      464 LOADK                            R61 K129 ["isCodeView"]
      465 CALL                             R60 1 1
      466 SETTABLEKS                       R60 R59 K125 ["selected"]
      468 MOVE                             R60 R33
      469 LOADK                            R61 K130 ["handleToggleView"]
      470 CALL                             R60 1 1
      471 SETTABLEKS                       R60 R59 K126 ["onToggle"]
      473 MOVE                             R60 R33
      474 LOADK                            R61 K73 ["editorToggleText"]
      475 CALL                             R60 1 1
      476 SETTABLEKS                       R60 R59 K116 ["text"]
      478 LOADK                            R60 K131 ["left"]
      479 SETTABLEKS                       R60 R59 K127 ["labelPosition"]
      481 CALL                             R58 1 1
      482 MOVE                             R59 R32
      483 DUPTABLE                         R60 K96 [{"when", "Then"}]
      484 MOVE                             R61 R33
      485 LOADK                            R62 K132 ["hasAction"]
      486 CALL                             R61 1 1
      487 SETTABLEKS                       R61 R60 K94 ["when"]
      489 MOVE                             R61 R27
      490 NEWTABLE                         R62 0 1
      492 MOVE                             R63 R29
      493 NEWTABLE                         R64 8 1
      495 LOADK                            R66 K133 ["ActionButton"]
      496 SETTABLEKS                       R66 R64 K84 ["Name"]
      498 MOVE                             R66 R33
      499 LOADK                            R67 K134 ["actionButtonTags"]
      500 CALL                             R66 1 1
      501 SETTABLEKS                       R66 R64 K86 ["Tags"]
      503 GETIMPORT                        R66 K89 [UDim2.new]
      505 LOADN                            R67 0
      506 LOADN                            R68 0
      507 LOADN                            R69 0
      508 LOADN                            R70 24
      509 CALL                             R66 4 1
      510 SETTABLEKS                       R66 R64 K90 ["Size"]
      512 GETIMPORT                        R66 K109 [Enum.AutomaticSize.X]
      514 SETTABLEKS                       R66 R64 K100 ["AutomaticSize"]
      516 MOVE                             R66 R33
      517 LOADK                            R67 K135 ["handleAction"]
      518 CALL                             R66 1 1
      519 SETTABLEKS                       R66 R64 K136 ["OnActivated"]
      521 MOVE                             R65 R30
      522 DUPTABLE                         R66 K137 [{"Name", "Tags", "Text", "Size", "AutomaticSize", "Font"}]
      523 LOADK                            R67 K138 ["Label"]
      524 SETTABLEKS                       R67 R66 K84 ["Name"]
      526 MOVE                             R67 R33
      527 LOADK                            R68 K139 ["actionLabelTags"]
      528 CALL                             R67 1 1
      529 SETTABLEKS                       R67 R66 K86 ["Tags"]
      531 MOVE                             R67 R33
      532 LOADK                            R68 K140 ["actionText"]
      533 CALL                             R67 1 1
      534 SETTABLEKS                       R67 R66 K98 ["Text"]
      536 GETIMPORT                        R67 K89 [UDim2.new]
      538 LOADN                            R68 0
      539 LOADN                            R69 0
      540 LOADN                            R70 1
      541 LOADN                            R71 0
      542 CALL                             R67 4 1
      543 SETTABLEKS                       R67 R66 K90 ["Size"]
      545 GETIMPORT                        R67 K109 [Enum.AutomaticSize.X]
      547 SETTABLEKS                       R67 R66 K100 ["AutomaticSize"]
      549 GETIMPORT                        R67 K107 [Enum.Font.BuilderSansMedium]
      551 SETTABLEKS                       R67 R66 K99 ["Font"]
      553 CALL                             R65 1 -1
      554 SETLIST                          R64 R65 -1 [1]
      556 CALL                             R63 1 -1
      557 SETLIST                          R62 R63 -1 [1]
      559 CALL                             R61 1 1
      560 SETTABLEKS                       R61 R60 K95 ["Then"]
      562 CALL                             R59 1 1
      563 MOVE                             R60 R32
      564 DUPTABLE                         R61 K96 [{"when", "Then"}]
      565 MOVE                             R62 R33
      566 LOADK                            R63 K141 ["hasSecondaryAction"]
      567 CALL                             R62 1 1
      568 SETTABLEKS                       R62 R61 K94 ["when"]
      570 MOVE                             R62 R27
      571 NEWTABLE                         R63 0 1
      573 MOVE                             R64 R29
      574 NEWTABLE                         R65 8 1
      576 LOADK                            R67 K142 ["SecondaryActionButton"]
      577 SETTABLEKS                       R67 R65 K84 ["Name"]
      579 MOVE                             R67 R33
      580 LOADK                            R68 K143 ["secondaryActionButtonTags"]
      581 CALL                             R67 1 1
      582 SETTABLEKS                       R67 R65 K86 ["Tags"]
      584 GETIMPORT                        R67 K89 [UDim2.new]
      586 LOADN                            R68 0
      587 LOADN                            R69 0
      588 LOADN                            R70 0
      589 LOADN                            R71 24
      590 CALL                             R67 4 1
      591 SETTABLEKS                       R67 R65 K90 ["Size"]
      593 GETIMPORT                        R67 K109 [Enum.AutomaticSize.X]
      595 SETTABLEKS                       R67 R65 K100 ["AutomaticSize"]
      597 MOVE                             R67 R33
      598 LOADK                            R68 K144 ["handleSecondaryAction"]
      599 CALL                             R67 1 1
      600 SETTABLEKS                       R67 R65 K136 ["OnActivated"]
      602 MOVE                             R66 R30
      603 DUPTABLE                         R67 K137 [{"Name", "Tags", "Text", "Size", "AutomaticSize", "Font"}]
      604 LOADK                            R68 K138 ["Label"]
      605 SETTABLEKS                       R68 R67 K84 ["Name"]
      607 MOVE                             R68 R33
      608 LOADK                            R69 K145 ["secondaryActionLabelTags"]
      609 CALL                             R68 1 1
      610 SETTABLEKS                       R68 R67 K86 ["Tags"]
      612 MOVE                             R68 R33
      613 LOADK                            R69 K146 ["secondaryActionText"]
      614 CALL                             R68 1 1
      615 SETTABLEKS                       R68 R67 K98 ["Text"]
      617 GETIMPORT                        R68 K89 [UDim2.new]
      619 LOADN                            R69 0
      620 LOADN                            R70 0
      621 LOADN                            R71 1
      622 LOADN                            R72 0
      623 CALL                             R68 4 1
      624 SETTABLEKS                       R68 R67 K90 ["Size"]
      626 GETIMPORT                        R68 K109 [Enum.AutomaticSize.X]
      628 SETTABLEKS                       R68 R67 K100 ["AutomaticSize"]
      630 GETIMPORT                        R68 K107 [Enum.Font.BuilderSansMedium]
      632 SETTABLEKS                       R68 R67 K99 ["Font"]
      634 CALL                             R66 1 -1
      635 SETLIST                          R65 R66 -1 [1]
      637 CALL                             R64 1 -1
      638 SETLIST                          R63 R64 -1 [1]
      640 CALL                             R62 1 1
      641 SETTABLEKS                       R62 R61 K95 ["Then"]
      643 CALL                             R60 1 -1
      644 SETLIST                          R56 R57 -1 [1]
      646 CALL                             R55 1 -1
      647 SETLIST                          R52 R53 -1 [1]
      649 CALL                             R51 1 1
      650 MOVE                             R52 R28
      651 NEWTABLE                         R53 8 1
      653 LOADK                            R55 K147 ["EditorBody"]
      654 SETTABLEKS                       R55 R53 K84 ["Name"]
      656 LOADK                            R55 K85 ["box"]
      657 SETTABLEKS                       R55 R53 K86 ["Tags"]
      659 GETIMPORT                        R55 K89 [UDim2.new]
      661 LOADN                            R56 0
      662 LOADN                            R57 0
      663 LOADN                            R58 0
      664 LOADN                            R59 32
      665 CALL                             R55 4 1
      666 SETTABLEKS                       R55 R53 K148 ["Position"]
      668 GETIMPORT                        R55 K89 [UDim2.new]
      670 LOADN                            R56 1
      671 LOADN                            R57 0
      672 LOADN                            R58 1
      673 LOADN                            R59 224
      674 CALL                             R55 4 1
      675 SETTABLEKS                       R55 R53 K90 ["Size"]
      677 LOADB                            R55 1
      678 SETTABLEKS                       R55 R53 K91 ["ClipsDescendants"]
      680 MOVE                             R54 R32
      681 DUPTABLE                         R55 K150 [{"when", "Then", "Else"}]
      682 MOVE                             R56 R33
      683 LOADK                            R57 K129 ["isCodeView"]
      684 CALL                             R56 1 1
      685 SETTABLEKS                       R56 R55 K94 ["when"]
      687 MOVE                             R56 R27
      688 NEWTABLE                         R57 0 1
      690 MOVE                             R58 R28
      691 NEWTABLE                         R59 4 1
      693 LOADK                            R61 K151 ["CodePane"]
      694 SETTABLEKS                       R61 R59 K84 ["Name"]
      696 LOADK                            R61 K152 ["surface-100"]
      697 SETTABLEKS                       R61 R59 K86 ["Tags"]
      699 GETIMPORT                        R61 K89 [UDim2.new]
      701 LOADN                            R62 1
      702 LOADN                            R63 0
      703 LOADN                            R64 1
      704 LOADN                            R65 0
      705 CALL                             R61 4 1
      706 SETTABLEKS                       R61 R59 K90 ["Size"]
      708 LOADB                            R61 1
      709 SETTABLEKS                       R61 R59 K91 ["ClipsDescendants"]
      711 MOVE                             R60 R24
      712 DUPTABLE                         R61 K158 [{"text", "onTextChanged", "language", "editable", "showLineNumbers", "editorCompat"}]
      713 MOVE                             R62 R33
      714 LOADK                            R63 K159 ["code"]
      715 CALL                             R62 1 1
      716 SETTABLEKS                       R62 R61 K116 ["text"]
      718 MOVE                             R62 R33
      719 LOADK                            R63 K160 ["handleCodeTextChanged"]
      720 CALL                             R62 1 1
      721 SETTABLEKS                       R62 R61 K153 ["onTextChanged"]
      723 LOADK                            R62 K61 ["markdown"]
      724 SETTABLEKS                       R62 R61 K154 ["language"]
      726 LOADB                            R62 1
      727 SETTABLEKS                       R62 R61 K155 ["editable"]
      729 LOADB                            R62 1
      730 SETTABLEKS                       R62 R61 K156 ["showLineNumbers"]
      732 MOVE                             R62 R33
      733 LOADK                            R63 K157 ["editorCompat"]
      734 CALL                             R62 1 1
      735 SETTABLEKS                       R62 R61 K157 ["editorCompat"]
      737 CALL                             R60 1 -1
      738 SETLIST                          R59 R60 -1 [1]
      740 CALL                             R58 1 -1
      741 SETLIST                          R57 R58 -1 [1]
      743 CALL                             R56 1 1
      744 SETTABLEKS                       R56 R55 K95 ["Then"]
      746 MOVE                             R56 R27
      747 NEWTABLE                         R57 0 1
      749 MOVE                             R58 R28
      750 NEWTABLE                         R59 4 1
      752 LOADK                            R61 K161 ["PreviewPane"]
      753 SETTABLEKS                       R61 R59 K84 ["Name"]
      755 LOADK                            R61 K162 ["surface-200"]
      756 SETTABLEKS                       R61 R59 K86 ["Tags"]
      758 GETIMPORT                        R61 K89 [UDim2.new]
      760 LOADN                            R62 1
      761 LOADN                            R63 0
      762 LOADN                            R64 1
      763 LOADN                            R65 0
      764 CALL                             R61 4 1
      765 SETTABLEKS                       R61 R59 K90 ["Size"]
      767 LOADB                            R61 1
      768 SETTABLEKS                       R61 R59 K91 ["ClipsDescendants"]
      770 MOVE                             R60 R5
      771 DUPTABLE                         R61 K165 [{"markdown", "editable", "virtualized", "inputCaptureActive"}]
      772 MOVE                             R62 R33
      773 LOADK                            R63 K166 ["markdownForViewer"]
      774 CALL                             R62 1 1
      775 SETTABLEKS                       R62 R61 K61 ["markdown"]
      777 LOADB                            R62 0
      778 SETTABLEKS                       R62 R61 K155 ["editable"]
      780 LOADB                            R62 0
      781 SETTABLEKS                       R62 R61 K163 ["virtualized"]
      783 MOVE                             R62 R33
      784 LOADK                            R63 K72 ["inputEnabled"]
      785 CALL                             R62 1 1
      786 SETTABLEKS                       R62 R61 K164 ["inputCaptureActive"]
      788 CALL                             R60 1 -1
      789 SETLIST                          R59 R60 -1 [1]
      791 CALL                             R58 1 -1
      792 SETLIST                          R57 R58 -1 [1]
      794 CALL                             R56 1 1
      795 SETTABLEKS                       R56 R55 K149 ["Else"]
      797 CALL                             R54 1 -1
      798 SETLIST                          R53 R54 -1 [1]
      800 CALL                             R52 1 -1
      801 SETLIST                          R50 R51 -1 [1]
      803 CALL                             R49 1 -1
      804 SETLIST                          R47 R48 -1 [1]
      806 CALL                             R46 1 -1
      807 SETLIST                          R45 R46 -1 [1]
      809 DUPCLOSURE                       R46 K167 [PROTO_30]
      810 CAPTURE                          VAL R23
      811 CAPTURE                          VAL R41
      812 CAPTURE                          VAL R40
      813 CALL                             R42 4 1
      814 LOADNIL                          R43
      815 LOADNIL                          R44
      816 LOADNIL                          R45
      817 LOADNIL                          R46
      818 LOADNIL                          R47
      819 LOADNIL                          R48
      820 LOADNIL                          R49
      821 LOADNIL                          R50
      822 LOADNIL                          R51
      823 LOADNIL                          R52
      824 LOADNIL                          R53
      825 DUPTABLE                         R54 K169 [{"current"}]
      826 LOADNIL                          R55
      827 SETTABLEKS                       R55 R54 K168 ["current"]
      829 DUPTABLE                         R55 K169 [{"current"}]
      830 LOADNIL                          R56
      831 SETTABLEKS                       R56 R55 K168 ["current"]
      833 DUPTABLE                         R56 K169 [{"current"}]
      834 LOADNIL                          R57
      835 SETTABLEKS                       R57 R56 K168 ["current"]
      837 DUPTABLE                         R57 K169 [{"current"}]
      838 LOADNIL                          R58
      839 SETTABLEKS                       R58 R57 K168 ["current"]
      841 DUPTABLE                         R58 K169 [{"current"}]
      842 LOADNIL                          R59
      843 SETTABLEKS                       R59 R58 K168 ["current"]
      845 LOADB                            R59 0
      846 LOADN                            R60 0
      847 NEWCLOSURE                       R61 P5
      848 CAPTURE                          REF R59
      849 CAPTURE                          VAL R2
      850 CAPTURE                          VAL R22
      851 CAPTURE                          VAL R42
      852 CAPTURE                          VAL R25
      853 CAPTURE                          VAL R26
      854 CAPTURE                          VAL R24
      855 CAPTURE                          VAL R5
      856 CAPTURE                          VAL R6
      857 CAPTURE                          VAL R7
      858 CAPTURE                          VAL R8
      859 CAPTURE                          VAL R9
      860 CAPTURE                          VAL R10
      861 CAPTURE                          VAL R11
      862 CAPTURE                          VAL R12
      863 CAPTURE                          VAL R13
      864 CAPTURE                          VAL R14
      865 CAPTURE                          VAL R15
      866 CAPTURE                          VAL R16
      867 CAPTURE                          VAL R17
      868 CAPTURE                          VAL R18
      869 CAPTURE                          VAL R19
      870 CAPTURE                          VAL R20
      871 CAPTURE                          VAL R21
      872 NEWCLOSURE                       R62 P6
      873 CAPTURE                          REF R43
      874 CAPTURE                          VAL R37
      875 CAPTURE                          VAL R2
      876 CAPTURE                          VAL R38
      877 CAPTURE                          VAL R35
      878 CAPTURE                          VAL R39
      879 CAPTURE                          VAL R61
      880 CAPTURE                          REF R45
      881 CAPTURE                          REF R46
      882 CAPTURE                          REF R47
      883 CAPTURE                          REF R48
      884 CAPTURE                          REF R49
      885 CAPTURE                          REF R50
      886 CAPTURE                          REF R51
      887 CAPTURE                          REF R52
      888 CAPTURE                          REF R53
      889 CAPTURE                          VAL R54
      890 CAPTURE                          VAL R55
      891 CAPTURE                          VAL R56
      892 CAPTURE                          VAL R57
      893 CAPTURE                          VAL R58
      894 CAPTURE                          REF R44
      895 CAPTURE                          VAL R42
      896 NEWTABLE                         R63 16 0
      898 SETTABLEKS                       R63 R63 K170 ["__index"]
      900 NEWCLOSURE                       R64 P7
      901 CAPTURE                          REF R60
      902 CAPTURE                          REF R45
      903 SETTABLEKS                       R64 R63 K171 ["setMarkdown"]
      905 NEWCLOSURE                       R64 P8
      906 CAPTURE                          REF R60
      907 CAPTURE                          REF R50
      908 SETTABLEKS                       R64 R63 K172 ["setRevisions"]
      910 NEWCLOSURE                       R64 P9
      911 CAPTURE                          REF R60
      912 CAPTURE                          REF R46
      913 SETTABLEKS                       R64 R63 K173 ["setAction"]
      915 NEWCLOSURE                       R64 P10
      916 CAPTURE                          REF R60
      917 CAPTURE                          REF R47
      918 SETTABLEKS                       R64 R63 K174 ["setIsActionDisabled"]
      920 NEWCLOSURE                       R64 P11
      921 CAPTURE                          REF R60
      922 CAPTURE                          REF R48
      923 SETTABLEKS                       R64 R63 K175 ["setSecondaryAction"]
      925 NEWCLOSURE                       R64 P12
      926 CAPTURE                          REF R60
      927 CAPTURE                          REF R49
      928 SETTABLEKS                       R64 R63 K176 ["setTitle"]
      930 NEWCLOSURE                       R64 P13
      931 CAPTURE                          REF R60
      932 CAPTURE                          REF R51
      933 SETTABLEKS                       R64 R63 K177 ["setInputEnabled"]
      935 NEWCLOSURE                       R64 P14
      936 CAPTURE                          REF R60
      937 CAPTURE                          REF R43
      938 SETTABLEKS                       R64 R63 K178 ["close"]
      940 NEWCLOSURE                       R64 P15
      941 CAPTURE                          REF R60
      942 CAPTURE                          VAL R63
      943 NEWTABLE                         R65 2 0
      945 NEWCLOSURE                       R66 P16
      946 CAPTURE                          REF R60
      947 CAPTURE                          VAL R62
      948 CAPTURE                          VAL R54
      949 CAPTURE                          VAL R55
      950 CAPTURE                          VAL R56
      951 CAPTURE                          VAL R57
      952 CAPTURE                          VAL R58
      953 CAPTURE                          REF R45
      954 CAPTURE                          REF R46
      955 CAPTURE                          REF R47
      956 CAPTURE                          REF R48
      957 CAPTURE                          REF R49
      958 CAPTURE                          REF R50
      959 CAPTURE                          REF R51
      960 CAPTURE                          REF R52
      961 CAPTURE                          REF R53
      962 CAPTURE                          VAL R63
      963 SETTABLEKS                       R66 R65 K179 ["open"]
      965 NEWCLOSURE                       R66 P17
      966 CAPTURE                          REF R43
      967 SETTABLEKS                       R66 R65 K178 ["close"]
      969 CLOSEUPVALS                      R43
      970 RETURN                           R65 1
