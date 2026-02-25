PROTO_0:
        0 GETIMPORT                        R2 K1 [pairs]
        2 GETUPVAL                         R3 0
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 MOVE                             R7 R6
        6 MOVE                             R8 R0
        7 MOVE                             R9 R1
        8 CALL                             R7 2 0
        9 FORGLOOP                         R2 2 ; [-5]
       11 RETURN                           R0 0

PROTO_1:
        0 LOADN                            R2 1
        1 GETUPVAL                         R3 0
        2 LENGTH                           R0 R3
        3 LOADN                            R1 1
        4 FORNPREP                         R0
        5 GETUPVAL                         R4 1
        6 GETUPVAL                         R6 0
        7 GETTABLE                         R5 R6 R2
        8 GETTABLE                         R3 R4 R5
        9 NAMECALL                         R3 R3 K0 ["disconnect"]
       11 CALL                             R3 1 0
       12 FORNLOOP                         R0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLE                         R1 R2 R3
        3 GETIMPORT                        R2 K1 [pairs]
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 MOVE                             R7 R6
        9 MOVE                             R8 R1
       10 MOVE                             R9 R0
       11 CALL                             R7 2 0
       12 FORGLOOP                         R2 2 ; [-5]
       14 RETURN                           R0 0

PROTO_3:
        0 LOADN                            R2 1
        1 GETUPVAL                         R3 0
        2 LENGTH                           R0 R3
        3 LOADN                            R1 1
        4 FORNPREP                         R0
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R5 0
        7 GETTABLE                         R4 R5 R2
        8 GETUPVAL                         R7 0
        9 GETTABLE                         R6 R7 R2
       10 GETTABLEKS                       R5 R6 K0 ["Changed"]
       12 NEWCLOSURE                       R7 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U2
       16 NAMECALL                         R5 R5 K1 ["connect"]
       18 CALL                             R5 2 1
       19 SETTABLE                         R5 R3 R4
       20 FORNLOOP                         R0
       21 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+5]
        1 LOADK                            R4 K0 ["GuiBase2d"]
        2 NAMECALL                         R2 R0 K1 ["IsA"]
        4 CALL                             R2 2 1
        5 JUMPIF                           R2 ; [+2]
        6 LOADB                            R2 0
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 0
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 NAMECALL                         R2 R2 K2 ["findItemInTable"]
       13 CALL                             R2 3 1
       14 JUMPIFEQKN                       R2 K3 [0] ; [+3]
       16 LOADB                            R2 1
       17 RETURN                           R2 1
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R3 R0 K4 ["Parent"]
       21 MOVE                             R4 R1
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 ADDK                             R2 R3 K0 [1]
        2 SETUPVAL                         R2 0
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 0
        5 SETTABLE                         R1 R2 R3
        6 GETUPVAL                         R2 0
        7 RETURN                           R2 1

PROTO_6:
        0 JUMPIF                           R1 ; [+2]
        1 LOADNIL                          R2
        2 RETURN                           R2 1
        3 GETUPVAL                         R2 0
        4 LOADNIL                          R3
        5 SETTABLE                         R3 R2 R1
        6 LOADNIL                          R2
        7 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R2 K2 [table.insert]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 GETUPVAL                         R5 1
        3 NAMECALL                         R2 R2 K0 ["removeItemFromTable"]
        5 CALL                             R2 3 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        8 MOVE                             R4 R2
        9 LOADK                            R5 K1 ["Could not remove listener from listeners"]
       10 GETIMPORT                        R3 K3 [assert]
       12 CALL                             R3 2 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 NAMECALL                         R5 R4 K2 ["onSelectionChanged"]
        7 CALL                             R5 1 0
        8 FORGLOOP                         R0 2 [inext] ; [-4]
       10 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["UIDragDetector"]
        3 NAMECALL                         R1 R1 K3 ["GetEngineFeature"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+22]
        7 LOADK                            R4 K4 ["GuiObject"]
        8 NAMECALL                         R2 R0 K5 ["IsA"]
       10 CALL                             R2 2 1
       11 JUMPIF                           R2 ; [+5]
       12 LOADK                            R3 K6 ["UIComponent"]
       13 NAMECALL                         R1 R0 K5 ["IsA"]
       15 CALL                             R1 2 1
       16 JUMPIFNOT                        R1 ; [+11]
       17 LOADK                            R4 K7 ["Path2D"]
       18 NAMECALL                         R2 R0 K5 ["IsA"]
       20 CALL                             R2 2 1
       21 NOT                              R1 R2
       22 JUMPIFNOT                        R1 ; [+5]
       23 LOADK                            R4 K2 ["UIDragDetector"]
       24 NAMECALL                         R2 R0 K5 ["IsA"]
       26 CALL                             R2 2 1
       27 NOT                              R1 R2
       28 RETURN                           R1 1
       29 LOADK                            R4 K4 ["GuiObject"]
       30 NAMECALL                         R2 R0 K5 ["IsA"]
       32 CALL                             R2 2 1
       33 JUMPIF                           R2 ; [+5]
       34 LOADK                            R3 K6 ["UIComponent"]
       35 NAMECALL                         R1 R0 K5 ["IsA"]
       37 CALL                             R1 2 1
       38 JUMPIFNOT                        R1 ; [+5]
       39 LOADK                            R4 K7 ["Path2D"]
       40 NAMECALL                         R2 R0 K5 ["IsA"]
       42 CALL                             R2 2 1
       43 NOT                              R1 R2
       44 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+2]
        4 LOADB                            R1 0
        5 RETURN                           R1 1
        6 LOADB                            R1 0
        7 GETTABLEKS                       R2 R0 K0 ["Parent"]
        9 JUMPIFEQKNIL                     R2 ; [+24]
       11 GETIMPORT                        R3 K2 [game]
       13 LOADK                            R5 K3 ["StarterGui"]
       14 NAMECALL                         R3 R3 K4 ["GetService"]
       16 CALL                             R3 2 1
       17 JUMPIFNOTEQ                      R2 R3 ; [+3]
       19 LOADB                            R1 1
       20 RETURN                           R1 1
       21 LOADK                            R5 K5 ["GuiBase2d"]
       22 NAMECALL                         R3 R2 K6 ["IsA"]
       24 CALL                             R3 2 1
       25 JUMPIF                           R3 ; [+5]
       26 LOADK                            R5 K7 ["Folder"]
       27 NAMECALL                         R3 R2 K6 ["IsA"]
       29 CALL                             R3 2 1
       30 JUMPIFNOT                        R3 ; [+3]
       31 GETTABLEKS                       R2 R2 K0 ["Parent"]
       33 JUMPBACK                         ; [-25]
       34 RETURN                           R1 1

PROTO_12:
        0 LOADK                            R4 K0 ["ScreenGui"]
        1 NAMECALL                         R2 R0 K1 ["FindFirstAncestorOfClass"]
        3 CALL                             R2 2 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 LOADK                            R6 K0 ["ScreenGui"]
        4 NAMECALL                         R4 R1 K1 ["FindFirstAncestorOfClass"]
        6 CALL                             R4 2 1
        7 JUMPIFNOTEQKNIL                  R4 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 AND                              R4 R2 R3
       12 RETURN                           R4 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["passesGuiFilter"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+9]
        6 LOADK                            R4 K1 ["GuiObject"]
        7 NAMECALL                         R2 R1 K2 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIFNOT                        R2 ; [+4]
       11 GETUPVAL                         R2 0
       12 NAMECALL                         R2 R2 K3 ["onSelectionChanged"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["onSelectionChanged"]
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 LOADN                            R3 1
        1 GETUPVAL                         R4 0
        2 LENGTH                           R1 R4
        3 LOADN                            R2 1
        4 FORNPREP                         R1
        5 GETUPVAL                         R5 1
        6 GETUPVAL                         R7 0
        7 GETTABLE                         R6 R7 R3
        8 GETTABLE                         R4 R5 R6
        9 NAMECALL                         R4 R4 K0 ["disconnect"]
       11 CALL                             R4 1 0
       12 FORNLOOP                         R1
       13 GETUPVAL                         R1 2
       14 NAMECALL                         R1 R1 K1 ["Get"]
       16 CALL                             R1 1 1
       17 SETUPVAL                         R1 3
       18 NEWTABLE                         R2 0 0
       20 SETUPVAL                         R2 0
       21 NEWTABLE                         R2 0 0
       23 SETUPVAL                         R2 4
       24 LOADN                            R4 1
       25 GETUPVAL                         R5 3
       26 LENGTH                           R2 R5
       27 LOADN                            R3 1
       28 FORNPREP                         R2
       29 GETUPVAL                         R6 3
       30 GETTABLE                         R5 R6 R4
       31 GETUPVAL                         R6 5
       32 MOVE                             R8 R5
       33 NAMECALL                         R6 R6 K2 ["passesGuiFilter"]
       35 CALL                             R6 2 1
       36 JUMPIFNOT                        R6 ; [+12]
       37 LOADK                            R8 K3 ["GuiObject"]
       38 NAMECALL                         R6 R5 K4 ["IsA"]
       40 CALL                             R6 2 1
       41 JUMPIFNOT                        R6 ; [+7]
       42 GETUPVAL                         R7 0
       43 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       45 MOVE                             R8 R5
       46 GETIMPORT                        R6 K7 [table.insert]
       48 CALL                             R6 2 0
       49 FORNLOOP                         R2
       50 LOADN                            R4 1
       51 GETUPVAL                         R5 0
       52 LENGTH                           R2 R5
       53 LOADN                            R3 1
       54 FORNPREP                         R2
       55 GETTABLE                         R7 R1 R4
       56 GETTABLEKS                       R6 R7 K8 ["Parent"]
       58 JUMPIFNOT                        R6 ; [+5]
       59 LOADK                            R9 K9 ["GuiBase2d"]
       60 NAMECALL                         R7 R6 K4 ["IsA"]
       62 CALL                             R7 2 1
       63 JUMPIF                           R7 ; [+2]
       64 LOADB                            R5 0
       65 JUMP                             ; [+16]
       66 GETUPVAL                         R7 6
       67 MOVE                             R9 R6
       68 MOVE                             R10 R1
       69 NAMECALL                         R7 R7 K10 ["findItemInTable"]
       71 CALL                             R7 3 1
       72 JUMPIFEQKN                       R7 K11 [0] ; [+3]
       74 LOADB                            R5 1
       75 JUMP                             ; [+6]
       76 GETUPVAL                         R7 7
       77 GETTABLEKS                       R8 R6 K8 ["Parent"]
       79 MOVE                             R9 R1
       80 CALL                             R7 2 1
       81 MOVE                             R5 R7
       82 JUMPIF                           R5 ; [+8]
       83 GETUPVAL                         R6 4
       84 GETUPVAL                         R8 0
       85 GETTABLE                         R7 R8 R4
       86 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
       88 GETIMPORT                        R5 K7 [table.insert]
       90 CALL                             R5 2 0
       91 FORNLOOP                         R2
       92 GETUPVAL                         R2 8
       93 CALL                             R2 0 0
       94 GETUPVAL                         R2 9
       95 JUMPIF                           R2 ; [+10]
       96 GETIMPORT                        R2 K13 [ipairs]
       98 GETUPVAL                         R3 10
       99 CALL                             R2 1 3
      100 FORGPREP_INEXT                   R2
      101 NAMECALL                         R7 R6 K14 ["onSelectionChanged"]
      103 CALL                             R7 1 0
      104 FORGLOOP                         R2 2 [inext] ; [-4]
      106 RETURN                           R0 0

PROTO_17:
        0 NEWTABLE                         R1 0 1
        2 GETUPVAL                         R3 0
        3 FASTCALL1                        TABLE_UNPACK R3 ; [+2]
        4 GETIMPORT                        R2 K1 [unpack]
        6 CALL                             R2 1 -1
        7 SETLIST                          R1 R2 -1 [1]
        9 RETURN                           R1 1

PROTO_18:
        0 NEWTABLE                         R1 0 1
        2 GETUPVAL                         R3 0
        3 FASTCALL1                        TABLE_UNPACK R3 ; [+2]
        4 GETIMPORT                        R2 K1 [unpack]
        6 CALL                             R2 1 -1
        7 SETLIST                          R1 R2 -1 [1]
        9 RETURN                           R1 1

PROTO_19:
        0 NEWTABLE                         R1 0 1
        2 GETUPVAL                         R3 0
        3 FASTCALL1                        TABLE_UNPACK R3 ; [+2]
        4 GETIMPORT                        R2 K1 [unpack]
        6 CALL                             R2 1 -1
        7 SETLIST                          R1 R2 -1 [1]
        9 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 LENGTH                           R2 R3
        2 JUMPIFNOTEQKN                    R2 K0 [0] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R3 0
        1 LENGTH                           R2 R3
        2 JUMPIFNOTEQKN                    R2 K0 [0] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_22:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["tablesAreEquivalent"]
        5 CALL                             R2 3 1
        6 JUMPIFNOT                        R2 ; [+2]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 LOADB                            R2 1
       10 SETUPVAL                         R2 2
       11 GETUPVAL                         R2 3
       12 MOVE                             R4 R1
       13 NAMECALL                         R2 R2 K1 ["Set"]
       15 CALL                             R2 2 0
       16 GETIMPORT                        R2 K4 [task.defer]
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          UPVAL U2
       20 CALL                             R2 1 0
       21 LOADB                            R2 1
       22 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R2 R1 ; [+2]
        3 RETURN                           R0 0
        4 SETUPVAL                         R1 0
        5 JUMPIF                           R1 ; [+10]
        6 GETIMPORT                        R2 K1 [ipairs]
        8 GETUPVAL                         R3 1
        9 CALL                             R2 1 3
       10 FORGPREP_INEXT                   R2
       11 NAMECALL                         R7 R6 K2 ["onSelectionChanged"]
       13 CALL                             R7 1 0
       14 FORGLOOP                         R2 2 [inext] ; [-4]
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["FFlag"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["Utility"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K8 [game]
       21 LOADK                            R4 K9 ["Selection"]
       22 NAMECALL                         R2 R2 K10 ["GetService"]
       24 CALL                             R2 2 1
       25 NEWTABLE                         R3 0 0
       27 NEWTABLE                         R4 0 0
       29 NEWTABLE                         R5 0 0
       31 NEWTABLE                         R6 0 0
       33 NEWTABLE                         R7 0 0
       35 LOADN                            R8 0
       36 NEWTABLE                         R9 0 0
       38 LOADB                            R10 0
       39 LOADB                            R11 0
       40 DUPCLOSURE                       R12 K11 [PROTO_0]
       41 CAPTURE                          VAL R7
       42 NEWCLOSURE                       R13 P1
       43 CAPTURE                          REF R4
       44 CAPTURE                          VAL R6
       45 NEWCLOSURE                       R14 P2
       46 CAPTURE                          REF R4
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R7
       49 DUPCLOSURE                       R15 K12 [PROTO_4]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R15
       52 NEWTABLE                         R16 16 0
       54 NEWCLOSURE                       R17 P4
       55 CAPTURE                          REF R8
       56 CAPTURE                          VAL R7
       57 SETTABLEKS                       R17 R16 K13 ["connectSelectionInstancesChanged"]
       59 DUPCLOSURE                       R17 K14 [PROTO_6]
       60 CAPTURE                          VAL R7
       61 SETTABLEKS                       R17 R16 K15 ["disconnectSelectionInstancesChanged"]
       63 DUPCLOSURE                       R17 K16 [PROTO_7]
       64 CAPTURE                          VAL R9
       65 SETTABLEKS                       R17 R16 K17 ["connectFilteredSelectionChanged"]
       67 DUPCLOSURE                       R17 K18 [PROTO_8]
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R9
       70 SETTABLEKS                       R17 R16 K19 ["disconnectFilteredSelectionChanged"]
       72 DUPCLOSURE                       R17 K20 [PROTO_9]
       73 CAPTURE                          VAL R9
       74 DUPCLOSURE                       R18 K21 [PROTO_10]
       75 DUPCLOSURE                       R19 K22 [PROTO_11]
       76 CAPTURE                          VAL R18
       77 DUPCLOSURE                       R20 K23 [PROTO_12]
       78 DUPCLOSURE                       R21 K24 [PROTO_13]
       79 CAPTURE                          VAL R19
       80 SETTABLEKS                       R21 R16 K25 ["passesGuiFilter"]
       82 DUPCLOSURE                       R21 K26 [PROTO_14]
       83 CAPTURE                          VAL R16
       84 SETTABLEKS                       R21 R16 K27 ["onDescendantAddedToStarterGui"]
       86 DUPCLOSURE                       R21 K28 [PROTO_15]
       87 CAPTURE                          VAL R16
       88 SETTABLEKS                       R21 R16 K29 ["onParentChanged"]
       90 NEWCLOSURE                       R21 P15
       91 CAPTURE                          REF R4
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R2
       94 CAPTURE                          REF R3
       95 CAPTURE                          REF R5
       96 CAPTURE                          VAL R16
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R15
       99 CAPTURE                          VAL R14
      100 CAPTURE                          REF R10
      101 CAPTURE                          VAL R9
      102 SETTABLEKS                       R21 R16 K30 ["onSelectionChanged"]
      104 NEWCLOSURE                       R21 P16
      105 CAPTURE                          REF R3
      106 SETTABLEKS                       R21 R16 K31 ["getRawSelection"]
      108 NEWCLOSURE                       R21 P17
      109 CAPTURE                          REF R4
      110 SETTABLEKS                       R21 R16 K32 ["getFilteredSelection"]
      112 NEWCLOSURE                       R21 P18
      113 CAPTURE                          REF R5
      114 SETTABLEKS                       R21 R16 K33 ["getFilteredSelectionCommonAncestors"]
      116 NEWCLOSURE                       R21 P19
      117 CAPTURE                          REF R3
      118 SETTABLEKS                       R21 R16 K34 ["hasSelection"]
      120 NEWCLOSURE                       R21 P20
      121 CAPTURE                          REF R4
      122 SETTABLEKS                       R21 R16 K35 ["hasFilteredSelection"]
      124 NEWCLOSURE                       R21 P21
      125 CAPTURE                          VAL R1
      126 CAPTURE                          REF R3
      127 CAPTURE                          REF R11
      128 CAPTURE                          VAL R2
      129 SETTABLEKS                       R21 R16 K36 ["setSelection"]
      131 NEWCLOSURE                       R21 P22
      132 CAPTURE                          REF R11
      133 SETTABLEKS                       R21 R16 K37 ["isSelectionBeingChangedByUIEditor"]
      135 NEWCLOSURE                       R21 P23
      136 CAPTURE                          REF R10
      137 CAPTURE                          VAL R9
      138 SETTABLEKS                       R21 R16 K38 ["setSuppressFilteredSelectionChanged"]
      140 CLOSEUPVALS                      R3
      141 RETURN                           R16 1
