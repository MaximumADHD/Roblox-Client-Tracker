PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R4 K0 ["[^,]+"]
        3 NAMECALL                         R2 R0 K1 ["gmatch"]
        5 CALL                             R2 2 3
        6 FORGPREP                         R2
        7 LOADK                            R9 K2 ["^%s*(.-)%s*$"]
        8 NAMECALL                         R7 R5 K3 ["match"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+11]
       12 LENGTH                           R8 R7
       13 LOADN                            R9 0
       14 JUMPIFNOTLT                      R9 R8 ; [+8]
       16 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       18 MOVE                             R9 R1
       19 MOVE                             R10 R7
       20 GETIMPORT                        R8 K6 [table.insert]
       22 CALL                             R8 2 0
       23 FORGLOOP                         R2 1 ; [-17]
       25 RETURN                           R1 1

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
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       10 MOVE                             R8 R1
       11 MOVE                             R9 R6
       12 GETIMPORT                        R7 K4 [table.insert]
       14 CALL                             R7 2 0
       15 FORGLOOP                         R2 2 ; [-8]
       17 GETIMPORT                        R2 K7 [task.spawn]
       19 GETUPVAL                         R3 1
       20 MOVE                             R4 R1
       21 CALL                             R2 2 0
       22 RETURN                           R1 1

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
       47 JUMPIFNOT                        R3 ; [+30]
       48 GETIMPORT                        R3 K13 [table.clone]
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R4 R4 K14 ["current"]
       53 CALL                             R3 1 1
       54 MOVE                             R4 R2
       55 LOADNIL                          R5
       56 LOADNIL                          R6
       57 FORGPREP                         R4
       58 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       60 MOVE                             R10 R3
       61 MOVE                             R11 R8
       62 GETIMPORT                        R9 K10 [table.insert]
       64 CALL                             R9 2 0
       65 FORGLOOP                         R4 2 ; [-8]
       67 GETUPVAL                         R4 1
       68 SETTABLEKS                       R3 R4 K14 ["current"]
       70 GETUPVAL                         R4 2
       71 MOVE                             R5 R3
       72 CALL                             R4 1 0
       73 GETUPVAL                         R4 3
       74 MOVE                             R5 R3
       75 LOADB                            R6 1
       76 CALL                             R4 2 0
       77 RETURN                           R0 0
       78 GETUPVAL                         R3 2
       79 NEWCLOSURE                       R4 P0
       80 CAPTURE                          VAL R2
       81 CAPTURE                          UPVAL U3
       82 CALL                             R3 1 0
       83 RETURN                           R0 0

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
       23 GETTABLEKS                       R5 R0 K8 ["definition"]
       25 GETTABLEKS                       R5 R5 K9 ["maxParts"]
       27 ORK                              R4 R5 K7 [8]
       28 GETTABLEKS                       R6 R0 K8 ["definition"]
       30 GETTABLEKS                       R6 R6 K10 ["isLoading"]
       32 JUMPIFEQKB                       R6 TRUE ; [+2]
       34 LOADB                            R5 0 +1
       35 LOADB                            R5 1
       36 JUMPIF                           R5 ; [+14]
       37 GETTABLEKS                       R7 R0 K11 ["value"]
       39 JUMPIFNOT                        R7 ; [+11]
       40 GETTABLEKS                       R8 R0 K11 ["value"]
       42 LENGTH                           R7 R8
       43 LOADN                            R8 0
       44 JUMPIFNOTLT                      R8 R7 ; [+6]
       46 GETUPVAL                         R6 3
       47 GETTABLEKS                       R7 R0 K11 ["value"]
       49 CALL                             R6 1 1
       50 JUMP                             ; [+2]
       51 NEWTABLE                         R6 0 0
       53 GETUPVAL                         R7 1
       54 GETTABLEKS                       R7 R7 K12 ["useState"]
       56 MOVE                             R8 R6
       57 CALL                             R7 1 2
       58 GETUPVAL                         R9 1
       59 GETTABLEKS                       R9 R9 K13 ["useRef"]
       61 MOVE                             R10 R7
       62 CALL                             R9 1 1
       63 GETUPVAL                         R10 4
       64 GETTABLEKS                       R10 R10 K14 ["FFlagAssistantSegmentationUIFixes"]
       66 JUMPIFNOT                        R10 ; [+2]
       67 SETTABLEKS                       R7 R9 K15 ["current"]
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R10 R10 K12 ["useState"]
       72 MOVE                             R11 R5
       73 CALL                             R10 1 2
       74 GETUPVAL                         R12 1
       75 GETTABLEKS                       R12 R12 K12 ["useState"]
       77 LOADB                            R13 0
       78 CALL                             R12 1 2
       79 GETUPVAL                         R14 1
       80 GETTABLEKS                       R14 R14 K12 ["useState"]
       82 LOADNIL                          R15
       83 CALL                             R14 1 2
       84 GETUPVAL                         R16 0
       85 GETTABLEKS                       R16 R16 K0 ["Hooks"]
       87 GETTABLEKS                       R16 R16 K16 ["useBreakpoint"]
       89 MOVE                             R17 R14
       90 CALL                             R16 1 2
       91 GETTABLEKS                       R18 R17 K17 ["X"]
       93 GETUPVAL                         R19 1
       94 GETTABLEKS                       R19 R19 K13 ["useRef"]
       96 LOADB                            R20 0
       97 CALL                             R19 1 1
       98 LOADN                            R20 0
       99 JUMPIFNOTLT                      R20 R18 ; [+4]
      101 LOADB                            R20 1
      102 SETTABLEKS                       R20 R19 K15 ["current"]
      104 GETUPVAL                         R20 1
      105 GETTABLEKS                       R20 R20 K18 ["useCallback"]
      107 NEWCLOSURE                       R21 P1
      108 CAPTURE                          VAL R0
      109 NEWTABLE                         R22 0 2
      111 GETTABLEKS                       R23 R0 K19 ["onChange"]
      113 GETTABLEKS                       R24 R0 K8 ["definition"]
      115 GETTABLEKS                       R24 R24 K20 ["onChanged"]
      117 SETLIST                          R22 R23 2 [1]
      119 CALL                             R20 2 1
      120 GETUPVAL                         R21 1
      121 GETTABLEKS                       R21 R21 K21 ["useEffect"]
      123 NEWCLOSURE                       R22 P2
      124 CAPTURE                          VAL R0
      125 CAPTURE                          UPVAL U3
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R20
      130 NEWTABLE                         R23 0 0
      132 CALL                             R21 2 0
      133 GETUPVAL                         R21 1
      134 GETTABLEKS                       R21 R21 K18 ["useCallback"]
      136 NEWCLOSURE                       R22 P3
      137 CAPTURE                          UPVAL U4
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R20
      141 NEWTABLE                         R23 0 1
      143 MOVE                             R24 R20
      144 SETLIST                          R23 R24 1 [1]
      146 CALL                             R21 2 1
      147 GETUPVAL                         R22 1
      148 GETTABLEKS                       R22 R22 K18 ["useCallback"]
      150 NEWCLOSURE                       R23 P4
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R0
      154 NEWTABLE                         R24 0 2
      156 GETTABLEKS                       R25 R0 K8 ["definition"]
      158 GETTABLEKS                       R25 R25 K22 ["onCancelPressed"]
      160 GETTABLEKS                       R26 R0 K19 ["onChange"]
      162 SETLIST                          R24 R25 2 [1]
      164 CALL                             R22 2 1
      165 GETUPVAL                         R23 1
      166 GETTABLEKS                       R23 R23 K18 ["useCallback"]
      168 NEWCLOSURE                       R24 P5
      169 CAPTURE                          VAL R11
      170 CAPTURE                          VAL R13
      171 CAPTURE                          VAL R0
      172 NEWTABLE                         R25 0 1
      174 GETTABLEKS                       R26 R0 K8 ["definition"]
      176 GETTABLEKS                       R26 R26 K23 ["onSuggestPressed"]
      178 SETLIST                          R25 R26 1 [1]
      180 CALL                             R23 2 1
      181 GETUPVAL                         R24 1
      182 GETTABLEKS                       R24 R24 K13 ["useRef"]
      184 LOADNIL                          R25
      185 CALL                             R24 1 1
      186 GETUPVAL                         R25 1
      187 GETTABLEKS                       R25 R25 K18 ["useCallback"]
      189 NEWCLOSURE                       R26 P6
      190 CAPTURE                          UPVAL U4
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R8
      193 CAPTURE                          VAL R20
      194 NEWTABLE                         R27 0 1
      196 MOVE                             R28 R20
      197 SETLIST                          R27 R28 1 [1]
      199 CALL                             R25 2 1
      200 NEWTABLE                         R26 0 0
      202 MOVE                             R27 R7
      203 LOADNIL                          R28
      204 LOADNIL                          R29
      205 FORGPREP                         R27
      206 LOADK                            R33 K24 ["pill_"]
      207 MOVE                             R34 R30
      208 CONCAT                           R32 R33 R34
      209 GETUPVAL                         R33 5
      210 MOVE                             R34 R31
      211 LOADK                            R35 K25 ["bg-shift-300 stroke-standard stroke-muted stroke-position-inner"]
      212 GETTABLEKS                       R37 R0 K26 ["isDisabled"]
      214 JUMPIF                           R37 ; [+4]
      215 NEWCLOSURE                       R36 P7
      216 CAPTURE                          VAL R21
      217 CAPTURE                          VAL R30
      218 JUMP                             ; [+1]
      219 LOADNIL                          R36
      220 MOVE                             R37 R30
      221 CALL                             R33 4 1
      222 SETTABLE                         R33 R26 R32
      223 FORGLOOP                         R27 2 ; [-18]
      225 JUMPIFNOT                        R10 ; [+12]
      226 GETUPVAL                         R27 5
      227 GETTABLEKS                       R28 R3 K27 ["Suggesting"]
      229 LOADK                            R29 K25 ["bg-shift-300 stroke-standard stroke-muted stroke-position-inner"]
      230 MOVE                             R30 R22
      231 LENGTH                           R32 R7
      232 ADDK                             R31 R32 K28 [2]
      233 LOADB                            R32 1
      234 CALL                             R27 5 1
      235 SETTABLEKS                       R27 R26 K29 ["pill_suggesting"]
      237 JUMP                             ; [+47]
      238 JUMPIFNOT                        R12 ; [+46]
      239 GETTABLEKS                       R27 R0 K8 ["definition"]
      241 GETTABLEKS                       R27 R27 K23 ["onSuggestPressed"]
      243 JUMPIFEQKNIL                     R27 ; [+41]
      245 GETTABLEKS                       R27 R0 K26 ["isDisabled"]
      247 JUMPIF                           R27 ; [+37]
      248 GETUPVAL                         R27 6
      249 GETUPVAL                         R28 7
      250 DUPTABLE                         R29 K35 [{"icon", "size", "onActivated", "testId", "LayoutOrder"}]
      251 GETUPVAL                         R30 0
      252 GETTABLEKS                       R30 R30 K36 ["Enums"]
      254 GETTABLEKS                       R30 R30 K37 ["IconName"]
      256 GETTABLEKS                       R30 R30 K38 ["TwoArrowsSpinClockwise"]
      258 SETTABLEKS                       R30 R29 K30 ["icon"]
      260 GETUPVAL                         R30 0
      261 GETTABLEKS                       R30 R30 K36 ["Enums"]
      263 GETTABLEKS                       R30 R30 K39 ["InputSize"]
      265 GETTABLEKS                       R30 R30 K40 ["XSmall"]
      267 SETTABLEKS                       R30 R29 K31 ["size"]
      269 SETTABLEKS                       R23 R29 K32 ["onActivated"]
      271 GETUPVAL                         R30 8
      272 GETTABLEKS                       R30 R30 K41 ["SegmentationPropertyRow"]
      274 GETTABLEKS                       R30 R30 K42 ["SuggestButton"]
      276 SETTABLEKS                       R30 R29 K33 ["testId"]
      278 LENGTH                           R31 R7
      279 ADDK                             R30 R31 K28 [2]
      280 SETTABLEKS                       R30 R29 K34 ["LayoutOrder"]
      282 CALL                             R27 2 1
      283 SETTABLEKS                       R27 R26 K43 ["pill_resuggest"]
      285 GETUPVAL                         R27 9
      286 CALL                             R27 0 1
      287 GETTABLEKS                       R28 R0 K8 ["definition"]
      289 GETTABLEKS                       R28 R28 K44 ["minParts"]
      291 LENGTH                           R30 R7
      292 JUMPIFLT                         R4 R30 ; [+2]
      294 LOADB                            R29 0 +1
      295 LOADB                            R29 1
      296 LOADB                            R30 0
      297 JUMPIFEQKNIL                     R28 ; [+11]
      299 LOADB                            R30 0
      300 LENGTH                           R31 R7
      301 LOADN                            R32 0
      302 JUMPIFNOTLT                      R32 R31 ; [+6]
      304 LENGTH                           R31 R7
      305 JUMPIFLT                         R31 R28 ; [+2]
      307 LOADB                            R30 0 +1
      308 LOADB                            R30 1
      309 GETIMPORT                        R32 K46 [next]
      311 MOVE                             R33 R26
      312 CALL                             R32 1 1
      313 JUMPIFNOTEQKNIL                  R32 ; [+2]
      315 LOADB                            R31 0 +1
      316 LOADB                            R31 1
      317 NEWTABLE                         R32 2 0
      319 GETUPVAL                         R34 4
      320 GETTABLEKS                       R34 R34 K14 ["FFlagAssistantSegmentationUIFixes"]
      322 JUMPIFNOT                        R34 ; [+5]
      323 JUMPIFNOT                        R31 ; [+2]
      324 LOADK                            R33 K47 ["bg-surface-200 radius-small padding-small size-full-0 auto-y"]
      325 JUMP                             ; [+3]
      326 LOADK                            R33 K48 ["size-full-0 auto-y"]
      327 JUMP                             ; [+1]
      328 LOADK                            R33 K49 ["bg-surface-200 radius-small padding-xsmall size-full-0 auto-y"]
      329 LOADB                            R34 1
      330 SETTABLE                         R34 R32 R33
      331 OR                               R33 R29 R30
      332 SETTABLEKS                       R33 R32 K50 ["stroke-alert"]
      334 LOADK                            R34 K51 ["Stack_"]
      335 LENGTH                           R35 R7
      336 LOADK                            R36 K52 ["_"]
      337 GETTABLEKS                       R43 R19 K15 ["current"]
      339 FASTCALL1                        TOSTRING R43 ; [+2]
      340 GETIMPORT                        R42 K54 [tostring]
      342 CALL                             R42 1 1
      343 MOVE                             R37 R42
      344 LOADK                            R38 K52 ["_"]
      345 FASTCALL1                        TOSTRING R29 ; [+3]
      346 MOVE                             R43 R29
      347 GETIMPORT                        R42 K54 [tostring]
      349 CALL                             R42 1 1
      350 MOVE                             R39 R42
      351 LOADK                            R40 K52 ["_"]
      352 FASTCALL1                        TOSTRING R30 ; [+3]
      353 MOVE                             R42 R30
      354 GETIMPORT                        R41 K54 [tostring]
      356 CALL                             R41 1 1
      357 CONCAT                           R33 R34 R41
      358 NEWTABLE                         R34 1 0
      360 GETUPVAL                         R35 6
      361 GETUPVAL                         R36 10
      362 DUPTABLE                         R37 K57 [{["tag"] = "col gap-xxsmall size-full-0 auto-y"}]
      363 DUPTABLE                         R38 K61 [{"PillBox", "ErrorLabel", "Input"}]
      364 GETUPVAL                         R39 6
      365 GETUPVAL                         R40 10
      366 DUPTABLE                         R41 K62 [{"tag", "LayoutOrder"}]
      367 SETTABLEKS                       R32 R41 K55 ["tag"]
      369 MOVE                             R42 R27
      370 CALL                             R42 0 1
      371 SETTABLEKS                       R42 R41 K34 ["LayoutOrder"]
      373 DUPTABLE                         R42 K65 [{"Measure", "Pills"}]
      374 GETUPVAL                         R43 6
      375 GETUPVAL                         R44 10
      376 DUPTABLE                         R45 K68 [{["tag"] = "size-full-0", ["ref"]}]
      377 SETTABLEKS                       R15 R45 K67 ["ref"]
      379 CALL                             R43 2 1
      380 SETTABLEKS                       R43 R42 K63 ["Measure"]
      382 GETUPVAL                         R43 6
      383 GETUPVAL                         R44 10
      384 DUPTABLE                         R45 K71 [{["tag"] = "row wrap gap-xxsmall auto-y", ["Size"]}]
      385 LOADN                            R47 0
      386 JUMPIFNOTLT                      R47 R18 ; [+7]
      388 GETIMPORT                        R46 K74 [UDim2.fromOffset]
      390 MOVE                             R47 R18
      391 LOADN                            R48 0
      392 CALL                             R46 2 1
      393 JUMP                             ; [+5]
      394 GETIMPORT                        R46 K76 [UDim2.fromScale]
      396 LOADN                            R47 1
      397 LOADN                            R48 0
      398 CALL                             R46 2 1
      399 SETTABLEKS                       R46 R45 K70 ["Size"]
      401 MOVE                             R46 R26
      402 CALL                             R43 3 1
      403 SETTABLEKS                       R43 R42 K64 ["Pills"]
      405 CALL                             R39 3 1
      406 SETTABLEKS                       R39 R38 K58 ["PillBox"]
      408 JUMPIFNOT                        R29 ; [+25]
      409 GETUPVAL                         R39 6
      410 GETUPVAL                         R40 11
      411 DUPTABLE                         R41 K79 [{["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-alert", ["Text"], ["LayoutOrder"]}]
      412 GETUPVAL                         R42 2
      413 LOADK                            R44 K80 ["Segmentation"]
      414 LOADK                            R45 K81 ["MaxPartsError"]
      415 DUPTABLE                         R46 K83 [{"max"}]
      416 GETIMPORT                        R47 K86 [string.format]
      418 LOADK                            R48 K87 ["%d"]
      419 MOVE                             R49 R4
      420 CALL                             R47 2 1
      421 SETTABLEKS                       R47 R46 K82 ["max"]
      423 NAMECALL                         R42 R42 K88 ["getText"]
      425 CALL                             R42 4 1
      426 SETTABLEKS                       R42 R41 K78 ["Text"]
      428 MOVE                             R42 R27
      429 CALL                             R42 0 1
      430 SETTABLEKS                       R42 R41 K34 ["LayoutOrder"]
      432 CALL                             R39 2 1
      433 JUMP                             ; [+27]
      434 JUMPIFNOT                        R30 ; [+25]
      435 GETUPVAL                         R39 6
      436 GETUPVAL                         R40 11
      437 DUPTABLE                         R41 K79 [{["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-alert", ["Text"], ["LayoutOrder"]}]
      438 GETUPVAL                         R42 2
      439 LOADK                            R44 K80 ["Segmentation"]
      440 LOADK                            R45 K89 ["MinPartsError"]
      441 DUPTABLE                         R46 K91 [{"min"}]
      442 GETIMPORT                        R47 K86 [string.format]
      444 LOADK                            R48 K87 ["%d"]
      445 MOVE                             R49 R28
      446 CALL                             R47 2 1
      447 SETTABLEKS                       R47 R46 K90 ["min"]
      449 NAMECALL                         R42 R42 K88 ["getText"]
      451 CALL                             R42 4 1
      452 SETTABLEKS                       R42 R41 K78 ["Text"]
      454 MOVE                             R42 R27
      455 CALL                             R42 0 1
      456 SETTABLEKS                       R42 R41 K34 ["LayoutOrder"]
      458 CALL                             R39 2 1
      459 JUMP                             ; [+1]
      460 LOADNIL                          R39
      461 SETTABLEKS                       R39 R38 K59 ["ErrorLabel"]
      463 GETTABLEKS                       R40 R0 K26 ["isDisabled"]
      465 JUMPIF                           R40 ; [+94]
      466 GETUPVAL                         R39 6
      467 GETUPVAL                         R40 10
      468 DUPTABLE                         R41 K93 [{["tag"] = "size-full-0 auto-y padding-xsmall radius-small bg-surface-300", ["LayoutOrder"]}]
      469 MOVE                             R42 R27
      470 CALL                             R42 0 1
      471 SETTABLEKS                       R42 R41 K34 ["LayoutOrder"]
      473 DUPTABLE                         R42 K94 [{"Input"}]
      474 GETUPVAL                         R43 6
      475 LOADK                            R44 K95 ["TextBox"]
      476 NEWTABLE                         R45 16 0
      478 GETIMPORT                        R46 K76 [UDim2.fromScale]
      480 LOADN                            R47 1
      481 LOADN                            R48 0
      482 CALL                             R46 2 1
      483 SETTABLEKS                       R46 R45 K70 ["Size"]
      485 GETIMPORT                        R46 K99 [Enum.AutomaticSize.Y]
      487 SETTABLEKS                       R46 R45 K97 ["AutomaticSize"]
      489 LOADN                            R46 1
      490 SETTABLEKS                       R46 R45 K100 ["BackgroundTransparency"]
      492 GETTABLEKS                       R46 R3 K101 ["InputPlaceholder"]
      494 SETTABLEKS                       R46 R45 K102 ["PlaceholderText"]
      496 LOADK                            R46 K103 [""]
      497 SETTABLEKS                       R46 R45 K78 ["Text"]
      499 SETTABLEKS                       R24 R45 K67 ["ref"]
      501 GETTABLEKS                       R46 R2 K104 ["Font"]
      503 SETTABLEKS                       R46 R45 K104 ["Font"]
      505 GETTABLEKS                       R46 R2 K105 ["FontSize"]
      507 SETTABLEKS                       R46 R45 K106 ["TextSize"]
      509 GETTABLEKS                       R46 R1 K107 ["Color"]
      511 GETTABLEKS                       R46 R46 K108 ["Content"]
      513 GETTABLEKS                       R46 R46 K109 ["Default"]
      515 GETTABLEKS                       R46 R46 K110 ["Color3"]
      517 SETTABLEKS                       R46 R45 K111 ["TextColor3"]
      519 GETTABLEKS                       R46 R1 K107 ["Color"]
      521 GETTABLEKS                       R46 R46 K108 ["Content"]
      523 GETTABLEKS                       R46 R46 K109 ["Default"]
      525 GETTABLEKS                       R46 R46 K112 ["Transparency"]
      527 SETTABLEKS                       R46 R45 K113 ["TextTransparency"]
      529 GETTABLEKS                       R46 R1 K107 ["Color"]
      531 GETTABLEKS                       R46 R46 K108 ["Content"]
      533 GETTABLEKS                       R46 R46 K114 ["Muted"]
      535 GETTABLEKS                       R46 R46 K110 ["Color3"]
      537 SETTABLEKS                       R46 R45 K115 ["PlaceholderColor3"]
      539 GETIMPORT                        R46 K118 [Enum.TextXAlignment.Left]
      541 SETTABLEKS                       R46 R45 K116 ["TextXAlignment"]
      543 LOADB                            R46 0
      544 SETTABLEKS                       R46 R45 K119 ["ClearTextOnFocus"]
      546 GETUPVAL                         R46 1
      547 GETTABLEKS                       R46 R46 K120 ["Event"]
      549 GETTABLEKS                       R46 R46 K121 ["FocusLost"]
      551 NEWCLOSURE                       R47 P8
      552 CAPTURE                          VAL R25
      553 CAPTURE                          VAL R24
      554 SETTABLE                         R47 R45 R46
      555 CALL                             R43 2 1
      556 SETTABLEKS                       R43 R42 K60 ["Input"]
      558 CALL                             R39 3 1
      559 JUMP                             ; [+1]
      560 LOADNIL                          R39
      561 SETTABLEKS                       R39 R38 K60 ["Input"]
      563 CALL                             R35 3 1
      564 SETTABLE                         R35 R34 R33
      565 GETUPVAL                         R35 6
      566 GETUPVAL                         R36 10
      567 DUPTABLE                         R37 K122 [{["tag"] = "col gap-xxsmall size-full-0 auto-y", ["LayoutOrder"]}]
      568 GETTABLEKS                       R38 R0 K34 ["LayoutOrder"]
      570 SETTABLEKS                       R38 R37 K34 ["LayoutOrder"]
      572 MOVE                             R38 R34
      573 CALL                             R35 3 -1
      574 RETURN                           R35 -1

PROTO_17:
        0 DUPTABLE                         R1 K13 [{"type", "label", "prop", "initialValue", "isLoading", "maxParts", "minParts", "registerSetValue", "registerSetIsLoading", "onChanged", "onCancelPressed", "onSuggestPressed", "infoPopoverNamespace"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K14 ["ROW_TYPES"]
        4 GETTABLEKS                       R2 R2 K15 ["PartNames"]
        6 SETTABLEKS                       R2 R1 K0 ["type"]
        8 GETTABLEKS                       R2 R0 K1 ["label"]
       10 SETTABLEKS                       R2 R1 K1 ["label"]
       12 GETTABLEKS                       R2 R0 K2 ["prop"]
       14 SETTABLEKS                       R2 R1 K2 ["prop"]
       16 GETTABLEKS                       R2 R0 K3 ["initialValue"]
       18 SETTABLEKS                       R2 R1 K3 ["initialValue"]
       20 GETTABLEKS                       R2 R0 K4 ["isLoading"]
       22 SETTABLEKS                       R2 R1 K4 ["isLoading"]
       24 GETTABLEKS                       R2 R0 K5 ["maxParts"]
       26 SETTABLEKS                       R2 R1 K5 ["maxParts"]
       28 GETTABLEKS                       R2 R0 K6 ["minParts"]
       30 SETTABLEKS                       R2 R1 K6 ["minParts"]
       32 GETTABLEKS                       R2 R0 K7 ["registerSetValue"]
       34 SETTABLEKS                       R2 R1 K7 ["registerSetValue"]
       36 GETTABLEKS                       R2 R0 K8 ["registerSetIsLoading"]
       38 SETTABLEKS                       R2 R1 K8 ["registerSetIsLoading"]
       40 GETTABLEKS                       R2 R0 K9 ["onChanged"]
       42 SETTABLEKS                       R2 R1 K9 ["onChanged"]
       44 GETTABLEKS                       R2 R0 K10 ["onCancelPressed"]
       46 SETTABLEKS                       R2 R1 K10 ["onCancelPressed"]
       48 GETTABLEKS                       R2 R0 K11 ["onSuggestPressed"]
       50 SETTABLEKS                       R2 R1 K11 ["onSuggestPressed"]
       52 GETTABLEKS                       R2 R0 K12 ["infoPopoverNamespace"]
       54 SETTABLEKS                       R2 R1 K12 ["infoPopoverNamespace"]
       56 RETURN                           R1 1

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
       99 CAPTURE                          VAL R7
      100 DUPCLOSURE                       R18 K28 [PROTO_17]
      101 CAPTURE                          VAL R12
      102 DUPTABLE                         R19 K31 [{"PartNamesPropertyRow", "createRowDefinition"}]
      103 SETTABLEKS                       R17 R19 K29 ["PartNamesPropertyRow"]
      105 SETTABLEKS                       R18 R19 K30 ["createRowDefinition"]
      107 RETURN                           R19 1
