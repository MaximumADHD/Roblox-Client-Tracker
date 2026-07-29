PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R4 K0 ["[^,]+"]
        3 NAMECALL                         R2 R0 K1 ["gmatch"]
        5 CALL                             R2 2 3
        6 FORGPREP                         R2
        7 LOADK                            R9 K2 ["^%s*(.-)%s*$"]
        8 NAMECALL                         R7 R5 K3 ["match"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+15]
       12 LENGTH                           R8 R7
       13 LOADN                            R9 0
       14 JUMPIFNOTLT                      R9 R8 ; [+12]
       16 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       18 MOVE                             R9 R1
       19 MOVE                             R10 R7
       20 GETIMPORT                        R8 K6 [table.insert]
       22 CALL                             R8 2 0
       23 LENGTH                           R8 R1
       24 LOADN                            R9 8
       25 JUMPIFLE                         R9 R8 ; [+3]
       27 FORGLOOP                         R2 1 ; [-21]
       29 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 GETUPVAL                         R6 1
        3 GETUPVAL                         R7 2
        4 DUPTABLE                         R8 K2 [{"tag", "LayoutOrder"}]
        5 MOVE                             R10 R1
        6 LOADK                            R11 K3 [" radius-circle padding-y-xsmall padding-left-small padding-right-xsmall row gap-xsmall align-y-center auto-xy"]
        7 CONCAT                           R9 R10 R11
        8 SETTABLEKS                       R9 R8 K0 ["tag"]
       10 SETTABLEKS                       R3 R8 K1 ["LayoutOrder"]
       12 DUPTABLE                         R9 K7 [{"Label", "DeleteButton", "Shimmer"}]
       13 GETUPVAL                         R10 1
       14 GETUPVAL                         R11 3
       15 DUPTABLE                         R12 K10 [{[1] = "auto-xy text-body-small content-default", ["Text"], ["LayoutOrder"]}]
       16 SETTABLEKS                       R0 R12 K9 ["Text"]
       18 MOVE                             R13 R5
       19 CALL                             R13 0 1
       20 SETTABLEKS                       R13 R12 K1 ["LayoutOrder"]
       22 CALL                             R10 2 1
       23 SETTABLEKS                       R10 R9 K4 ["Label"]
       25 JUMPIFEQKNIL                     R2 ; [+44]
       27 GETUPVAL                         R10 1
       28 GETUPVAL                         R11 2
       29 DUPTABLE                         R12 K14 [{[1] = "align-y-center auto-xy", ["onActivated"], ["LayoutOrder"], ["testId"]}]
       30 SETTABLEKS                       R2 R12 K12 ["onActivated"]
       32 MOVE                             R13 R5
       33 CALL                             R13 0 1
       34 SETTABLEKS                       R13 R12 K1 ["LayoutOrder"]
       36 GETUPVAL                         R13 4
       37 GETTABLEKS                       R13 R13 K15 ["SegmentationPropertyRow"]
       39 GETTABLEKS                       R13 R13 K16 ["DeletePillButton"]
       41 SETTABLEKS                       R13 R12 K13 ["testId"]
       43 DUPTABLE                         R13 K18 [{"Icon"}]
       44 GETUPVAL                         R14 1
       45 GETUPVAL                         R15 5
       46 DUPTABLE                         R16 K21 [{"name", "size"}]
       47 GETUPVAL                         R17 6
       48 GETTABLEKS                       R17 R17 K22 ["Enums"]
       50 GETTABLEKS                       R17 R17 K23 ["IconName"]
       52 GETTABLEKS                       R17 R17 K24 ["X"]
       54 SETTABLEKS                       R17 R16 K19 ["name"]
       56 GETUPVAL                         R17 6
       57 GETTABLEKS                       R17 R17 K22 ["Enums"]
       59 GETTABLEKS                       R17 R17 K25 ["IconSize"]
       61 GETTABLEKS                       R17 R17 K26 ["XSmall"]
       63 SETTABLEKS                       R17 R16 K20 ["size"]
       65 CALL                             R14 2 1
       66 SETTABLEKS                       R14 R13 K17 ["Icon"]
       68 CALL                             R10 3 1
       69 JUMP                             ; [+1]
       70 LOADNIL                          R10
       71 SETTABLEKS                       R10 R9 K5 ["DeleteButton"]
       73 JUMPIFNOT                        R4 ; [+4]
       74 GETUPVAL                         R10 1
       75 GETUPVAL                         R11 7
       76 CALL                             R10 1 1
       77 JUMP                             ; [+1]
       78 LOADNIL                          R10
       79 SETTABLEKS                       R10 R9 K6 ["Shimmer"]
       81 CALL                             R6 3 -1
       82 RETURN                           R6 -1

PROTO_2:
        0 DUPTABLE                         R0 K2 [{"Suggesting", "InputPlaceholder"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["Segmentation"]
        3 LOADK                            R4 K0 ["Suggesting"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Suggesting"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K5 ["MeshGen"]
       11 LOADK                            R4 K6 ["InputPartNamesPlaceholder"]
       12 NAMECALL                         R1 R1 K4 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["InputPlaceholder"]
       17 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R2 K2 [table.concat]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 [", "]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K4 ["onChange"]
        8 JUMPIFNOT                        R3 ; [+5]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K4 ["onChange"]
       12 MOVE                             R4 R2
       13 CALL                             R3 1 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K5 ["definition"]
       17 GETTABLEKS                       R3 R3 K6 ["onChanged"]
       19 JUMPIFNOT                        R3 ; [+11]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K5 ["definition"]
       23 GETTABLEKS                       R3 R3 K6 ["onChanged"]
       25 MOVE                             R4 R2
       26 JUMPIFEQKB                       R1 TRUE ; [+2]
       28 LOADB                            R5 0 +1
       29 LOADB                            R5 1
       30 CALL                             R3 2 0
       31 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 CALL                             R2 1 0
        6 GETUPVAL                         R2 2
        7 LOADB                            R3 0
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 3
       10 LOADB                            R3 0
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 4
       13 MOVE                             R3 R1
       14 LOADB                            R4 0
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R1 1
        5 LOADB                            R2 0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 NEWTABLE                         R2 0 0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["definition"]
        3 GETTABLEKS                       R0 R0 K1 ["registerSetValue"]
        5 JUMPIFNOT                        R0 ; [+12]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["definition"]
        9 GETTABLEKS                       R0 R0 K1 ["registerSetValue"]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K0 ["definition"]
       21 GETTABLEKS                       R0 R0 K2 ["registerSetIsLoading"]
       23 JUMPIFNOT                        R0 ; [+10]
       24 GETUPVAL                         R0 0
       25 GETTABLEKS                       R0 R0 K0 ["definition"]
       27 GETTABLEKS                       R0 R0 K2 ["registerSetIsLoading"]
       29 NEWCLOSURE                       R1 P1
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U2
       33 CALL                             R0 1 0
       34 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K4 [table.remove]
        6 MOVE                             R3 R1
        7 GETUPVAL                         R4 0
        8 CALL                             R2 2 0
        9 GETIMPORT                        R2 K7 [task.spawn]
       11 GETUPVAL                         R3 1
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantSegmentationUIFixes"]
        3 JUMPIFNOT                        R1 ; [+22]
        4 GETIMPORT                        R1 K3 [table.clone]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K4 ["current"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K6 [table.remove]
       12 MOVE                             R3 R1
       13 MOVE                             R4 R0
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 1
       16 SETTABLEKS                       R1 R2 K4 ["current"]
       18 GETUPVAL                         R2 2
       19 MOVE                             R3 R1
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 3
       22 MOVE                             R3 R1
       23 LOADB                            R4 1
       24 CALL                             R2 2 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R1 2
       27 NEWCLOSURE                       R2 P0
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U3
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K0 ["onChange"]
        9 JUMPIFNOT                        R0 ; [+5]
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K0 ["onChange"]
       13 LOADK                            R1 K1 [""]
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K2 ["definition"]
       18 GETTABLEKS                       R0 R0 K3 ["onCancelPressed"]
       20 JUMPIFNOT                        R0 ; [+6]
       21 GETUPVAL                         R0 2
       22 GETTABLEKS                       R0 R0 K2 ["definition"]
       24 GETTABLEKS                       R0 R0 K3 ["onCancelPressed"]
       26 CALL                             R0 0 0
       27 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 0
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K0 ["definition"]
        9 GETTABLEKS                       R0 R0 K1 ["onSuggestPressed"]
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K0 ["definition"]
       15 GETTABLEKS                       R0 R0 K1 ["onSuggestPressed"]
       17 CALL                             R0 0 0
       18 RETURN                           R0 0

PROTO_11:
        0 LENGTH                           R1 R0
        1 LOADN                            R2 8
        2 JUMPIFNOTLE                      R2 R1 ; [+2]
        4 RETURN                           R0 1
        5 GETIMPORT                        R1 K2 [table.clone]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 0
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 LENGTH                           R7 R1
       14 LOADN                            R8 8
       15 JUMPIFLE                         R8 R7 ; [+10]
       17 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       19 MOVE                             R8 R1
       20 MOVE                             R9 R6
       21 GETIMPORT                        R7 K4 [table.insert]
       23 CALL                             R7 2 0
       24 FORGLOOP                         R2 2 ; [-12]
       26 GETIMPORT                        R2 K7 [task.spawn]
       28 GETUPVAL                         R3 1
       29 MOVE                             R4 R1
       30 CALL                             R2 2 0
       31 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["Text"]
        2 LOADK                            R3 K1 ["^%s*(.-)%s*$"]
        3 NAMECALL                         R1 R1 K2 ["match"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+3]
        7 LENGTH                           R2 R1
        8 JUMPIFNOTEQKN                    R2 K3 [0] ; [+2]
       10 RETURN                           R0 0
       11 LOADK                            R2 K4 [""]
       12 SETTABLEKS                       R2 R0 K0 ["Text"]
       14 NEWTABLE                         R2 0 0
       16 LOADK                            R5 K5 ["[^,]+"]
       17 NAMECALL                         R3 R1 K6 ["gmatch"]
       19 CALL                             R3 2 3
       20 FORGPREP                         R3
       21 LOADK                            R10 K1 ["^%s*(.-)%s*$"]
       22 NAMECALL                         R8 R6 K2 ["match"]
       24 CALL                             R8 2 1
       25 JUMPIFNOT                        R8 ; [+12]
       26 LENGTH                           R9 R8
       27 LOADN                            R10 0
       28 JUMPIFNOTLT                      R10 R9 ; [+9]
       30 MOVE                             R10 R2
       31 NAMECALL                         R11 R8 K7 ["lower"]
       33 CALL                             R11 1 -1
       34 FASTCALL                         TABLE_INSERT ; [+2]
       35 GETIMPORT                        R9 K10 [table.insert]
       37 CALL                             R9 -1 0
       38 FORGLOOP                         R3 1 ; [-18]
       40 LENGTH                           R3 R2
       41 JUMPIFNOTEQKN                    R3 K3 [0] ; [+2]
       43 RETURN                           R0 0
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R3 R3 K11 ["FFlagAssistantSegmentationUIFixes"]
       47 JUMPIFNOT                        R3 ; [+40]
       48 GETUPVAL                         R3 1
       49 GETTABLEKS                       R3 R3 K12 ["current"]
       51 LENGTH                           R4 R3
       52 LOADN                            R5 8
       53 JUMPIFNOTLE                      R5 R4 ; [+2]
       55 RETURN                           R0 0
       56 GETIMPORT                        R4 K14 [table.clone]
       58 MOVE                             R5 R3
       59 CALL                             R4 1 1
       60 MOVE                             R5 R2
       61 LOADNIL                          R6
       62 LOADNIL                          R7
       63 FORGPREP                         R5
       64 LENGTH                           R10 R4
       65 LOADN                            R11 8
       66 JUMPIFLE                         R11 R10 ; [+10]
       68 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       70 MOVE                             R11 R4
       71 MOVE                             R12 R9
       72 GETIMPORT                        R10 K10 [table.insert]
       74 CALL                             R10 2 0
       75 FORGLOOP                         R5 2 ; [-12]
       77 GETUPVAL                         R5 1
       78 SETTABLEKS                       R4 R5 K12 ["current"]
       80 GETUPVAL                         R5 2
       81 MOVE                             R6 R4
       82 CALL                             R5 1 0
       83 GETUPVAL                         R5 3
       84 MOVE                             R6 R4
       85 LOADB                            R7 1
       86 CALL                             R5 2 0
       87 RETURN                           R0 0
       88 GETUPVAL                         R3 2
       89 NEWCLOSURE                       R4 P0
       90 CAPTURE                          VAL R2
       91 CAPTURE                          UPVAL U3
       92 CALL                             R3 1 0
       93 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["CaptureFocus"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETIMPORT                        R2 K2 [task.defer]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Typography"]
        8 GETTABLEKS                       R2 R2 K3 ["BodySmall"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["useMemo"]
       13 DUPCLOSURE                       R4 K5 [PROTO_2]
       14 CAPTURE                          UPVAL U2
       15 NEWTABLE                         R5 0 1
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K6 ["locale"]
       20 SETLIST                          R5 R6 1 [1]
       22 CALL                             R3 2 1
       23 GETTABLEKS                       R5 R0 K7 ["definition"]
       25 GETTABLEKS                       R5 R5 K8 ["isLoading"]
       27 JUMPIFEQKB                       R5 TRUE ; [+2]
       29 LOADB                            R4 0 +1
       30 LOADB                            R4 1
       31 JUMPIF                           R4 ; [+14]
       32 GETTABLEKS                       R6 R0 K9 ["value"]
       34 JUMPIFNOT                        R6 ; [+11]
       35 GETTABLEKS                       R7 R0 K9 ["value"]
       37 LENGTH                           R6 R7
       38 LOADN                            R7 0
       39 JUMPIFNOTLT                      R7 R6 ; [+6]
       41 GETUPVAL                         R5 3
       42 GETTABLEKS                       R6 R0 K9 ["value"]
       44 CALL                             R5 1 1
       45 JUMP                             ; [+2]
       46 NEWTABLE                         R5 0 0
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R6 R6 K10 ["useState"]
       51 MOVE                             R7 R5
       52 CALL                             R6 1 2
       53 GETUPVAL                         R8 1
       54 GETTABLEKS                       R8 R8 K11 ["useRef"]
       56 MOVE                             R9 R6
       57 CALL                             R8 1 1
       58 GETUPVAL                         R9 4
       59 GETTABLEKS                       R9 R9 K12 ["FFlagAssistantSegmentationUIFixes"]
       61 JUMPIFNOT                        R9 ; [+2]
       62 SETTABLEKS                       R6 R8 K13 ["current"]
       64 GETUPVAL                         R9 1
       65 GETTABLEKS                       R9 R9 K10 ["useState"]
       67 MOVE                             R10 R4
       68 CALL                             R9 1 2
       69 GETUPVAL                         R11 1
       70 GETTABLEKS                       R11 R11 K10 ["useState"]
       72 LOADB                            R12 0
       73 CALL                             R11 1 2
       74 GETUPVAL                         R13 1
       75 GETTABLEKS                       R13 R13 K10 ["useState"]
       77 LOADNIL                          R14
       78 CALL                             R13 1 2
       79 GETUPVAL                         R15 0
       80 GETTABLEKS                       R15 R15 K0 ["Hooks"]
       82 GETTABLEKS                       R15 R15 K14 ["useBreakpoint"]
       84 MOVE                             R16 R13
       85 CALL                             R15 1 2
       86 GETTABLEKS                       R17 R16 K15 ["X"]
       88 GETUPVAL                         R18 1
       89 GETTABLEKS                       R18 R18 K16 ["useCallback"]
       91 NEWCLOSURE                       R19 P1
       92 CAPTURE                          VAL R0
       93 NEWTABLE                         R20 0 2
       95 GETTABLEKS                       R21 R0 K17 ["onChange"]
       97 GETTABLEKS                       R22 R0 K7 ["definition"]
       99 GETTABLEKS                       R22 R22 K18 ["onChanged"]
      101 SETLIST                          R20 R21 2 [1]
      103 CALL                             R18 2 1
      104 GETUPVAL                         R19 1
      105 GETTABLEKS                       R19 R19 K19 ["useEffect"]
      107 NEWCLOSURE                       R20 P2
      108 CAPTURE                          VAL R0
      109 CAPTURE                          UPVAL U3
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R18
      114 NEWTABLE                         R21 0 0
      116 CALL                             R19 2 0
      117 GETUPVAL                         R19 1
      118 GETTABLEKS                       R19 R19 K16 ["useCallback"]
      120 NEWCLOSURE                       R20 P3
      121 CAPTURE                          UPVAL U4
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R18
      125 NEWTABLE                         R21 0 1
      127 MOVE                             R22 R18
      128 SETLIST                          R21 R22 1 [1]
      130 CALL                             R19 2 1
      131 GETUPVAL                         R20 1
      132 GETTABLEKS                       R20 R20 K16 ["useCallback"]
      134 NEWCLOSURE                       R21 P4
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R0
      138 NEWTABLE                         R22 0 2
      140 GETTABLEKS                       R23 R0 K7 ["definition"]
      142 GETTABLEKS                       R23 R23 K20 ["onCancelPressed"]
      144 GETTABLEKS                       R24 R0 K17 ["onChange"]
      146 SETLIST                          R22 R23 2 [1]
      148 CALL                             R20 2 1
      149 GETUPVAL                         R21 1
      150 GETTABLEKS                       R21 R21 K16 ["useCallback"]
      152 NEWCLOSURE                       R22 P5
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R0
      156 NEWTABLE                         R23 0 1
      158 GETTABLEKS                       R24 R0 K7 ["definition"]
      160 GETTABLEKS                       R24 R24 K21 ["onSuggestPressed"]
      162 SETLIST                          R23 R24 1 [1]
      164 CALL                             R21 2 1
      165 GETUPVAL                         R22 1
      166 GETTABLEKS                       R22 R22 K11 ["useRef"]
      168 LOADNIL                          R23
      169 CALL                             R22 1 1
      170 GETUPVAL                         R23 1
      171 GETTABLEKS                       R23 R23 K16 ["useCallback"]
      173 NEWCLOSURE                       R24 P6
      174 CAPTURE                          UPVAL U4
      175 CAPTURE                          VAL R8
      176 CAPTURE                          VAL R7
      177 CAPTURE                          VAL R18
      178 NEWTABLE                         R25 0 1
      180 MOVE                             R26 R18
      181 SETLIST                          R25 R26 1 [1]
      183 CALL                             R23 2 1
      184 NEWTABLE                         R24 0 0
      186 MOVE                             R25 R6
      187 LOADNIL                          R26
      188 LOADNIL                          R27
      189 FORGPREP                         R25
      190 LOADK                            R31 K22 ["pill_"]
      191 MOVE                             R32 R28
      192 CONCAT                           R30 R31 R32
      193 GETUPVAL                         R31 5
      194 MOVE                             R32 R29
      195 LOADK                            R33 K23 ["bg-shift-300 stroke-standard stroke-muted stroke-position-inner"]
      196 GETTABLEKS                       R35 R0 K24 ["isDisabled"]
      198 JUMPIF                           R35 ; [+4]
      199 NEWCLOSURE                       R34 P7
      200 CAPTURE                          VAL R19
      201 CAPTURE                          VAL R28
      202 JUMP                             ; [+1]
      203 LOADNIL                          R34
      204 MOVE                             R35 R28
      205 CALL                             R31 4 1
      206 SETTABLE                         R31 R24 R30
      207 FORGLOOP                         R25 2 ; [-18]
      209 JUMPIFNOT                        R9 ; [+11]
      210 GETUPVAL                         R25 5
      211 GETTABLEKS                       R26 R3 K25 ["Suggesting"]
      213 LOADK                            R27 K23 ["bg-shift-300 stroke-standard stroke-muted stroke-position-inner"]
      214 MOVE                             R28 R20
      215 LOADN                            R29 10
      216 LOADB                            R30 1
      217 CALL                             R25 5 1
      218 SETTABLEKS                       R25 R24 K26 ["pill_suggesting"]
      220 JUMP                             ; [+43]
      221 JUMPIFNOT                        R11 ; [+42]
      222 GETTABLEKS                       R25 R0 K7 ["definition"]
      224 GETTABLEKS                       R25 R25 K21 ["onSuggestPressed"]
      226 JUMPIFEQKNIL                     R25 ; [+37]
      228 GETTABLEKS                       R25 R0 K24 ["isDisabled"]
      230 JUMPIF                           R25 ; [+33]
      231 GETUPVAL                         R25 6
      232 GETUPVAL                         R26 7
      233 DUPTABLE                         R27 K33 [{["icon"], ["size"], ["onActivated"], ["testId"], ["LayoutOrder"] = 10}]
      234 GETUPVAL                         R28 0
      235 GETTABLEKS                       R28 R28 K34 ["Enums"]
      237 GETTABLEKS                       R28 R28 K35 ["IconName"]
      239 GETTABLEKS                       R28 R28 K36 ["TwoArrowsSpinClockwise"]
      241 SETTABLEKS                       R28 R27 K27 ["icon"]
      243 GETUPVAL                         R28 0
      244 GETTABLEKS                       R28 R28 K34 ["Enums"]
      246 GETTABLEKS                       R28 R28 K37 ["InputSize"]
      248 GETTABLEKS                       R28 R28 K38 ["XSmall"]
      250 SETTABLEKS                       R28 R27 K28 ["size"]
      252 SETTABLEKS                       R21 R27 K29 ["onActivated"]
      254 GETUPVAL                         R28 8
      255 GETTABLEKS                       R28 R28 K39 ["SegmentationPropertyRow"]
      257 GETTABLEKS                       R28 R28 K40 ["SuggestButton"]
      259 SETTABLEKS                       R28 R27 K30 ["testId"]
      261 CALL                             R25 2 1
      262 SETTABLEKS                       R25 R24 K41 ["pill_resuggest"]
      264 GETUPVAL                         R25 9
      265 CALL                             R25 0 1
      266 GETIMPORT                        R27 K43 [next]
      268 MOVE                             R28 R24
      269 CALL                             R27 1 1
      270 JUMPIFNOTEQKNIL                  R27 ; [+2]
      272 LOADB                            R26 0 +1
      273 LOADB                            R26 1
      274 GETUPVAL                         R28 4
      275 GETTABLEKS                       R28 R28 K12 ["FFlagAssistantSegmentationUIFixes"]
      277 JUMPIFNOT                        R28 ; [+5]
      278 JUMPIFNOT                        R26 ; [+2]
      279 LOADK                            R27 K44 ["bg-surface-200 radius-small padding-small size-full-0 auto-y"]
      280 JUMP                             ; [+3]
      281 LOADK                            R27 K45 ["size-full-0 auto-y"]
      282 JUMP                             ; [+1]
      283 LOADK                            R27 K46 ["bg-surface-200 radius-small padding-xsmall size-full-0 auto-y"]
      284 GETUPVAL                         R28 6
      285 GETUPVAL                         R29 10
      286 DUPTABLE                         R30 K49 [{["tag"] = "col gap-xxsmall size-full-0 auto-y", ["LayoutOrder"]}]
      287 GETTABLEKS                       R31 R0 K31 ["LayoutOrder"]
      289 SETTABLEKS                       R31 R30 K31 ["LayoutOrder"]
      291 DUPTABLE                         R31 K52 [{"PillBox", "Input"}]
      292 GETUPVAL                         R32 6
      293 GETUPVAL                         R33 10
      294 DUPTABLE                         R34 K53 [{"tag", "LayoutOrder"}]
      295 SETTABLEKS                       R27 R34 K47 ["tag"]
      297 MOVE                             R35 R25
      298 CALL                             R35 0 1
      299 SETTABLEKS                       R35 R34 K31 ["LayoutOrder"]
      301 DUPTABLE                         R35 K56 [{"Measure", "Pills"}]
      302 GETUPVAL                         R36 6
      303 GETUPVAL                         R37 10
      304 DUPTABLE                         R38 K59 [{["tag"] = "size-full-0", ["ref"]}]
      305 SETTABLEKS                       R14 R38 K58 ["ref"]
      307 CALL                             R36 2 1
      308 SETTABLEKS                       R36 R35 K54 ["Measure"]
      310 GETUPVAL                         R36 6
      311 GETUPVAL                         R37 10
      312 DUPTABLE                         R38 K62 [{["tag"] = "row wrap gap-xxsmall auto-y", ["Size"]}]
      313 GETIMPORT                        R39 K65 [UDim2.fromOffset]
      315 MOVE                             R40 R17
      316 LOADN                            R41 0
      317 CALL                             R39 2 1
      318 SETTABLEKS                       R39 R38 K61 ["Size"]
      320 MOVE                             R39 R24
      321 CALL                             R36 3 1
      322 SETTABLEKS                       R36 R35 K55 ["Pills"]
      324 CALL                             R32 3 1
      325 SETTABLEKS                       R32 R31 K50 ["PillBox"]
      327 GETTABLEKS                       R33 R0 K24 ["isDisabled"]
      329 JUMPIF                           R33 ; [+94]
      330 GETUPVAL                         R32 6
      331 GETUPVAL                         R33 10
      332 DUPTABLE                         R34 K67 [{["tag"] = "size-full-0 auto-y padding-xsmall radius-small bg-surface-300", ["LayoutOrder"]}]
      333 MOVE                             R35 R25
      334 CALL                             R35 0 1
      335 SETTABLEKS                       R35 R34 K31 ["LayoutOrder"]
      337 DUPTABLE                         R35 K68 [{"Input"}]
      338 GETUPVAL                         R36 6
      339 LOADK                            R37 K69 ["TextBox"]
      340 NEWTABLE                         R38 16 0
      342 GETIMPORT                        R39 K71 [UDim2.fromScale]
      344 LOADN                            R40 1
      345 LOADN                            R41 0
      346 CALL                             R39 2 1
      347 SETTABLEKS                       R39 R38 K61 ["Size"]
      349 GETIMPORT                        R39 K75 [Enum.AutomaticSize.Y]
      351 SETTABLEKS                       R39 R38 K73 ["AutomaticSize"]
      353 LOADN                            R39 1
      354 SETTABLEKS                       R39 R38 K76 ["BackgroundTransparency"]
      356 GETTABLEKS                       R39 R3 K77 ["InputPlaceholder"]
      358 SETTABLEKS                       R39 R38 K78 ["PlaceholderText"]
      360 LOADK                            R39 K79 [""]
      361 SETTABLEKS                       R39 R38 K80 ["Text"]
      363 SETTABLEKS                       R22 R38 K58 ["ref"]
      365 GETTABLEKS                       R39 R2 K81 ["Font"]
      367 SETTABLEKS                       R39 R38 K81 ["Font"]
      369 GETTABLEKS                       R39 R2 K82 ["FontSize"]
      371 SETTABLEKS                       R39 R38 K83 ["TextSize"]
      373 GETTABLEKS                       R39 R1 K84 ["Color"]
      375 GETTABLEKS                       R39 R39 K85 ["Content"]
      377 GETTABLEKS                       R39 R39 K86 ["Default"]
      379 GETTABLEKS                       R39 R39 K87 ["Color3"]
      381 SETTABLEKS                       R39 R38 K88 ["TextColor3"]
      383 GETTABLEKS                       R39 R1 K84 ["Color"]
      385 GETTABLEKS                       R39 R39 K85 ["Content"]
      387 GETTABLEKS                       R39 R39 K86 ["Default"]
      389 GETTABLEKS                       R39 R39 K89 ["Transparency"]
      391 SETTABLEKS                       R39 R38 K90 ["TextTransparency"]
      393 GETTABLEKS                       R39 R1 K84 ["Color"]
      395 GETTABLEKS                       R39 R39 K85 ["Content"]
      397 GETTABLEKS                       R39 R39 K91 ["Muted"]
      399 GETTABLEKS                       R39 R39 K87 ["Color3"]
      401 SETTABLEKS                       R39 R38 K92 ["PlaceholderColor3"]
      403 GETIMPORT                        R39 K95 [Enum.TextXAlignment.Left]
      405 SETTABLEKS                       R39 R38 K93 ["TextXAlignment"]
      407 LOADB                            R39 0
      408 SETTABLEKS                       R39 R38 K96 ["ClearTextOnFocus"]
      410 GETUPVAL                         R39 1
      411 GETTABLEKS                       R39 R39 K97 ["Event"]
      413 GETTABLEKS                       R39 R39 K98 ["FocusLost"]
      415 NEWCLOSURE                       R40 P8
      416 CAPTURE                          VAL R23
      417 CAPTURE                          VAL R22
      418 SETTABLE                         R40 R38 R39
      419 CALL                             R36 2 1
      420 SETTABLEKS                       R36 R35 K51 ["Input"]
      422 CALL                             R32 3 1
      423 JUMP                             ; [+1]
      424 LOADNIL                          R32
      425 SETTABLEKS                       R32 R31 K51 ["Input"]
      427 CALL                             R28 3 -1
      428 RETURN                           R28 -1

PROTO_17:
        0 DUPTABLE                         R1 K11 [{"type", "label", "prop", "initialValue", "isLoading", "registerSetValue", "registerSetIsLoading", "onChanged", "onCancelPressed", "onSuggestPressed", "infoPopoverNamespace"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K12 ["ROW_TYPES"]
        4 GETTABLEKS                       R2 R2 K13 ["PartNames"]
        6 SETTABLEKS                       R2 R1 K0 ["type"]
        8 GETTABLEKS                       R2 R0 K1 ["label"]
       10 SETTABLEKS                       R2 R1 K1 ["label"]
       12 GETTABLEKS                       R2 R0 K2 ["prop"]
       14 SETTABLEKS                       R2 R1 K2 ["prop"]
       16 GETTABLEKS                       R2 R0 K3 ["initialValue"]
       18 SETTABLEKS                       R2 R1 K3 ["initialValue"]
       20 GETTABLEKS                       R2 R0 K4 ["isLoading"]
       22 SETTABLEKS                       R2 R1 K4 ["isLoading"]
       24 GETTABLEKS                       R2 R0 K5 ["registerSetValue"]
       26 SETTABLEKS                       R2 R1 K5 ["registerSetValue"]
       28 GETTABLEKS                       R2 R0 K6 ["registerSetIsLoading"]
       30 SETTABLEKS                       R2 R1 K6 ["registerSetIsLoading"]
       32 GETTABLEKS                       R2 R0 K7 ["onChanged"]
       34 SETTABLEKS                       R2 R1 K7 ["onChanged"]
       36 GETTABLEKS                       R2 R0 K8 ["onCancelPressed"]
       38 SETTABLEKS                       R2 R1 K8 ["onCancelPressed"]
       40 GETTABLEKS                       R2 R0 K9 ["onSuggestPressed"]
       42 SETTABLEKS                       R2 R1 K9 ["onSuggestPressed"]
       44 GETTABLEKS                       R2 R0 K10 ["infoPopoverNamespace"]
       46 SETTABLEKS                       R2 R1 K10 ["infoPopoverNamespace"]
       48 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Resources"]
       32 GETTABLEKS                       R5 R5 K11 ["Localization"]
       34 GETTABLEKS                       R5 R5 K12 ["Translator"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["Icon"]
       39 GETTABLEKS                       R6 R1 K14 ["IconButton"]
       41 GETTABLEKS                       R7 R1 K15 ["Text"]
       43 GETTABLEKS                       R8 R1 K16 ["View"]
       45 GETIMPORT                        R9 K5 [require]
       47 GETTABLEKS                       R10 R0 K17 ["Components"]
       49 GETTABLEKS                       R10 R10 K18 ["ShimmerGradient"]
       51 CALL                             R9 1 1
       52 GETTABLEKS                       R10 R3 K19 ["createNextOrder"]
       54 GETIMPORT                        R11 K5 [require]
       56 GETTABLEKS                       R12 R0 K20 ["Flags"]
       58 CALL                             R11 1 1
       59 GETIMPORT                        R12 K5 [require]
       61 GETIMPORT                        R13 K1 [script]
       63 GETTABLEKS                       R13 R13 K6 ["Parent"]
       65 GETTABLEKS                       R13 R13 K21 ["PropertyRowTypes"]
       67 CALL                             R12 1 1
       68 GETIMPORT                        R13 K5 [require]
       70 GETTABLEKS                       R14 R0 K22 ["Util"]
       72 GETTABLEKS                       R14 R14 K23 ["TestIds"]
       74 CALL                             R13 1 1
       75 GETTABLEKS                       R14 R2 K24 ["createElement"]
       77 DUPCLOSURE                       R15 K25 [PROTO_0]
       78 DUPCLOSURE                       R16 K26 [PROTO_1]
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R14
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R9
       87 DUPCLOSURE                       R17 K27 [PROTO_16]
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R15
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R16
       94 CAPTURE                          VAL R14
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R8
       99 DUPCLOSURE                       R18 K28 [PROTO_17]
      100 CAPTURE                          VAL R12
      101 DUPTABLE                         R19 K31 [{"PartNamesPropertyRow", "createRowDefinition"}]
      102 SETTABLEKS                       R17 R19 K29 ["PartNamesPropertyRow"]
      104 SETTABLEKS                       R18 R19 K30 ["createRowDefinition"]
      106 RETURN                           R19 1
