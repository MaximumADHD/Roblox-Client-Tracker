PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["Highlight"]
        5 NAMECALL                         R7 R6 K2 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+5]
        9 GETTABLEKS                       R7 R6 K3 ["Adornee"]
       11 JUMPIFNOTEQ                      R7 R1 ; [+2]
       13 RETURN                           R6 1
       14 FORGLOOP                         R2 2 ; [-11]
       16 LOADNIL                          R2
       17 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["CsgNegateHighlightsContainer"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+6]
        6 LOADK                            R3 K2 ["Folder"]
        7 NAMECALL                         R1 R0 K3 ["IsA"]
        9 CALL                             R1 2 1
       10 JUMPIFNOT                        R1 ; [+1]
       11 RETURN                           R0 1
       12 LOADNIL                          R1
       13 RETURN                           R1 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 MOVE                             R1 R0
        5 JUMPIFNOT                        R1 ; [+2]
        6 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        8 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 JUMPIFNOT                        R1 ; [+2]
        7 GETTABLEKS                       R1 R2 K0 ["Enabled"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R3 K0 ["Enabled"]
        1 NAMECALL                         R1 R0 K1 ["GetPropertyChangedSignal"]
        3 CALL                             R1 2 1
        4 GETUPVAL                         R3 0
        5 NAMECALL                         R1 R1 K2 ["Connect"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 1
        9 SETTABLE                         R1 R2 R0
       10 GETUPVAL                         R3 2
       11 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       13 MOVE                             R4 R1
       14 GETIMPORT                        R2 K5 [table.insert]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R3 K0 ["Highlight"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+32]
        5 GETTABLEKS                       R1 R0 K2 ["Adornee"]
        7 GETUPVAL                         R2 0
        8 JUMPIFNOTEQ                      R1 R2 ; [+28]
       10 LOADK                            R3 K3 ["Enabled"]
       11 NAMECALL                         R1 R0 K4 ["GetPropertyChangedSignal"]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R3 1
       15 NAMECALL                         R1 R1 K5 ["Connect"]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R2 2
       19 SETTABLE                         R1 R2 R0
       20 GETUPVAL                         R3 3
       21 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       23 MOVE                             R4 R1
       24 GETIMPORT                        R2 K8 [table.insert]
       26 CALL                             R2 2 0
       27 GETUPVAL                         R1 4
       28 GETUPVAL                         R3 5
       29 GETUPVAL                         R4 6
       30 GETUPVAL                         R5 0
       31 CALL                             R3 2 1
       32 MOVE                             R2 R3
       33 JUMPIFNOT                        R2 ; [+2]
       34 GETTABLEKS                       R2 R3 K3 ["Enabled"]
       36 CALL                             R1 1 0
       37 RETURN                           R0 0

PROTO_7:
        0 LOADK                            R3 K0 ["Highlight"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+11]
        5 GETUPVAL                         R2 0
        6 GETTABLE                         R1 R2 R0
        7 JUMPIFNOT                        R1 ; [+8]
        8 GETUPVAL                         R2 0
        9 GETTABLE                         R1 R2 R0
       10 NAMECALL                         R1 R1 K2 ["Disconnect"]
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 0
       14 LOADNIL                          R2
       15 SETTABLE                         R2 R1 R0
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R3 2
       18 GETUPVAL                         R4 3
       19 GETUPVAL                         R5 4
       20 CALL                             R3 2 1
       21 MOVE                             R2 R3
       22 JUMPIFNOT                        R2 ; [+2]
       23 GETTABLEKS                       R2 R3 K3 ["Enabled"]
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NEWCLOSURE                       R3 P1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 NEWCLOSURE                       R4 P2
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U3
       15 NAMECALL                         R5 R0 K0 ["GetChildren"]
       17 CALL                             R5 1 3
       18 FORGPREP                         R5
       19 LOADK                            R12 K1 ["Highlight"]
       20 NAMECALL                         R10 R9 K2 ["IsA"]
       22 CALL                             R10 2 1
       23 JUMPIFNOT                        R10 ; [+16]
       24 LOADK                            R12 K3 ["Enabled"]
       25 NAMECALL                         R10 R9 K4 ["GetPropertyChangedSignal"]
       27 CALL                             R10 2 1
       28 MOVE                             R12 R3
       29 NAMECALL                         R10 R10 K5 ["Connect"]
       31 CALL                             R10 2 1
       32 SETTABLE                         R10 R1 R9
       33 GETUPVAL                         R12 3
       34 FASTCALL2                        TABLE_INSERT R12 R10 ; [+4]
       36 MOVE                             R13 R10
       37 GETIMPORT                        R11 K8 [table.insert]
       39 CALL                             R11 2 0
       40 FORGLOOP                         R5 2 ; [-22]
       42 GETUPVAL                         R6 3
       43 GETTABLEKS                       R7 R0 K9 ["ChildAdded"]
       45 NEWCLOSURE                       R9 P3
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R1
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          VAL R0
       53 NAMECALL                         R7 R7 K5 ["Connect"]
       55 CALL                             R7 2 -1
       56 FASTCALL                         TABLE_INSERT ; [+2]
       57 GETIMPORT                        R5 K8 [table.insert]
       59 CALL                             R5 -1 0
       60 GETUPVAL                         R6 3
       61 GETTABLEKS                       R7 R0 K10 ["ChildRemoved"]
       63 NEWCLOSURE                       R9 P4
       64 CAPTURE                          VAL R1
       65 CAPTURE                          UPVAL U2
       66 CAPTURE                          UPVAL U0
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U1
       69 NAMECALL                         R7 R7 K5 ["Connect"]
       71 CALL                             R7 2 -1
       72 FASTCALL                         TABLE_INSERT ; [+2]
       73 GETIMPORT                        R5 K8 [table.insert]
       75 CALL                             R5 -1 0
       76 GETUPVAL                         R6 0
       77 MOVE                             R7 R0
       78 GETUPVAL                         R8 1
       79 CALL                             R6 2 1
       80 MOVE                             R5 R6
       81 JUMPIFNOT                        R5 ; [+2]
       82 GETTABLEKS                       R5 R6 K3 ["Enabled"]
       84 RETURN                           R5 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["Name"]
        2 JUMPIFNOTEQKS                    R1 K1 ["CsgNegateHighlightsContainer"] ; [+12]
        4 LOADK                            R3 K2 ["Folder"]
        5 NAMECALL                         R1 R0 K3 ["IsA"]
        7 CALL                             R1 2 1
        8 JUMPIFNOT                        R1 ; [+6]
        9 GETUPVAL                         R1 0
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 1
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_12:
        0 LOADK                            R4 K0 ["BasePart"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+3]
        5 LOADNIL                          R2
        6 DUPCLOSURE                       R3 K2 [PROTO_2]
        7 RETURN                           R2 2
        8 NEWTABLE                         R2 0 0
       10 NEWCLOSURE                       R3 P1
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 GETUPVAL                         R5 1
       16 LOADK                            R7 K3 ["CsgNegateHighlightsContainer"]
       17 NAMECALL                         R5 R5 K4 ["FindFirstChild"]
       19 CALL                             R5 2 1
       20 JUMPIFNOT                        R5 ; [+7]
       21 LOADK                            R8 K5 ["Folder"]
       22 NAMECALL                         R6 R5 K1 ["IsA"]
       24 CALL                             R6 2 1
       25 JUMPIFNOT                        R6 ; [+2]
       26 MOVE                             R4 R5
       27 JUMP                             ; [+1]
       28 LOADNIL                          R4
       29 JUMPIFNOT                        R4 ; [+7]
       30 MOVE                             R5 R3
       31 MOVE                             R6 R4
       32 CALL                             R5 1 1
       33 MOVE                             R6 R5
       34 NEWCLOSURE                       R7 P2
       35 CAPTURE                          VAL R2
       36 RETURN                           R6 2
       37 NEWCLOSURE                       R5 P3
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R1
       40 MOVE                             R7 R2
       41 GETUPVAL                         R8 1
       42 GETTABLEKS                       R8 R8 K6 ["ChildAdded"]
       44 MOVE                             R10 R5
       45 NAMECALL                         R8 R8 K7 ["Connect"]
       47 CALL                             R8 2 -1
       48 FASTCALL                         TABLE_INSERT ; [+2]
       49 GETIMPORT                        R6 K10 [table.insert]
       51 CALL                             R6 -1 0
       52 LOADNIL                          R6
       53 NEWCLOSURE                       R7 P4
       54 CAPTURE                          VAL R2
       55 RETURN                           R6 2

PROTO_13:
        0 JUMPIFNOT                        R1 ; [+6]
        1 LOADK                            R4 K0 ["NegateSelection"]
        2 LOADK                            R5 K1 ["PartIsNegated"]
        3 NAMECALL                         R2 R0 K2 ["getText"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["valueBinding"]
        4 NAMECALL                         R5 R5 K1 ["getValue"]
        6 CALL                             R5 1 1
        7 JUMPIFNOT                        R5 ; [+7]
        8 LOADK                            R8 K2 ["NegateSelection"]
        9 LOADK                            R9 K3 ["PartIsNegated"]
       10 NAMECALL                         R6 R4 K4 ["getText"]
       12 CALL                             R6 3 1
       13 MOVE                             R3 R6
       14 JUMP                             ; [+1]
       15 LOADNIL                          R3
       16 JUMPIFNOTEQKNIL                  R3 ; [+2]
       18 RETURN                           R0 0
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K5 ["mouseEnter"]
       22 MOVE                             R5 R0
       23 MOVE                             R6 R1
       24 MOVE                             R7 R2
       25 MOVE                             R8 R3
       26 CALL                             R4 4 0
       27 RETURN                           R0 0

PROTO_15:
        0 JUMPIFEQKB                       R0 TRUE ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K3 ["useContext"]
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K4 ["Context"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R3 K5 ["getClassIcon"]
       19 LOADK                            R5 K6 ["NegateOperation"]
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K7 ["useCallback"]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R2
       28 NEWTABLE                         R7 0 3
       30 GETUPVAL                         R8 4
       31 GETTABLEKS                       R9 R0 K8 ["valueBinding"]
       33 GETTABLEKS                       R10 R2 K9 ["mouseEnter"]
       35 SETLIST                          R7 R8 3 [1]
       37 CALL                             R5 2 1
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R6 R6 K10 ["createElement"]
       41 LOADK                            R7 K11 ["ImageLabel"]
       42 NEWTABLE                         R8 16 0
       44 GETIMPORT                        R9 K14 [UDim2.fromOffset]
       46 LOADN                            R10 16
       47 LOADN                            R11 16
       48 CALL                             R9 2 1
       49 SETTABLEKS                       R9 R8 K15 ["Size"]
       51 LOADN                            R9 1
       52 SETTABLEKS                       R9 R8 K16 ["BackgroundTransparency"]
       54 GETUPVAL                         R9 2
       55 GETTABLEKS                       R9 R9 K17 ["Event"]
       57 GETTABLEKS                       R9 R9 K18 ["MouseEnter"]
       59 SETTABLE                         R5 R8 R9
       60 GETUPVAL                         R9 2
       61 GETTABLEKS                       R9 R9 K17 ["Event"]
       63 GETTABLEKS                       R9 R9 K19 ["MouseLeave"]
       65 GETTABLEKS                       R10 R2 K20 ["mouseLeave"]
       67 SETTABLE                         R10 R8 R9
       68 GETUPVAL                         R9 2
       69 GETTABLEKS                       R9 R9 K21 ["Tag"]
       71 LOADK                            R10 K22 ["data-testid=NegateSelection"]
       72 SETTABLE                         R10 R8 R9
       73 GETTABLEKS                       R9 R4 K23 ["Image"]
       75 SETTABLEKS                       R9 R8 K23 ["Image"]
       77 GETTABLEKS                       R9 R4 K24 ["ImageRectOffset"]
       79 SETTABLEKS                       R9 R8 K24 ["ImageRectOffset"]
       81 GETTABLEKS                       R9 R4 K25 ["ImageRectSize"]
       83 SETTABLEKS                       R9 R8 K25 ["ImageRectSize"]
       85 GETTABLEKS                       R9 R0 K8 ["valueBinding"]
       87 DUPCLOSURE                       R11 K26 [PROTO_15]
       88 NAMECALL                         R9 R9 K27 ["map"]
       90 CALL                             R9 2 1
       91 SETTABLEKS                       R9 R8 K28 ["Visible"]
       93 CALL                             R6 2 -1
       94 RETURN                           R6 -1

PROTO_17:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K3 [{"valueBinding", "fireAction"}]
        5 SETTABLEKS                       R0 R4 K1 ["valueBinding"]
        7 SETTABLEKS                       R1 R4 K2 ["fireAction"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Explorer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Components"]
       17 GETTABLEKS                       R3 R3 K11 ["Contexts"]
       19 GETTABLEKS                       R3 R3 K12 ["ClassIconContext"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K13 ["Fields"]
       26 GETTABLEKS                       R4 R4 K14 ["FieldTypes"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K15 ["Parent"]
       33 GETTABLEKS                       R5 R5 K16 ["Framework"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K15 ["Parent"]
       40 GETTABLEKS                       R6 R6 K17 ["React"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R1 K18 ["Hooks"]
       47 GETTABLEKS                       R7 R7 K19 ["useTooltipActions"]
       49 CALL                             R6 1 1
       50 DUPCLOSURE                       R7 K20 [PROTO_0]
       51 DUPCLOSURE                       R8 K21 [PROTO_1]
       52 CAPTURE                          VAL R0
       53 DUPCLOSURE                       R9 K22 [PROTO_12]
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R0
       56 DUPCLOSURE                       R10 K23 [PROTO_13]
       57 DUPCLOSURE                       R11 K24 [PROTO_16]
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R10
       63 DUPTABLE                         R12 K31 [{"key", "icon", "watch", "validateArgs", "render", "permanent"}]
       64 LOADK                            R13 K32 ["negateSelection"]
       65 SETTABLEKS                       R13 R12 K25 ["key"]
       67 LOADK                            R13 K33 [""]
       68 SETTABLEKS                       R13 R12 K26 ["icon"]
       70 SETTABLEKS                       R9 R12 K27 ["watch"]
       72 DUPCLOSURE                       R13 K34 [PROTO_17]
       73 SETTABLEKS                       R13 R12 K28 ["validateArgs"]
       75 DUPCLOSURE                       R13 K35 [PROTO_18]
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R11
       78 SETTABLEKS                       R13 R12 K29 ["render"]
       80 LOADB                            R13 1
       81 SETTABLEKS                       R13 R12 K30 ["permanent"]
       83 RETURN                           R12 1
