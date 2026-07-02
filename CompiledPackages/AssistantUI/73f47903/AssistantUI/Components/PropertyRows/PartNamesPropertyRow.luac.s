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
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+22]
        3 GETIMPORT                        R1 K2 [table.clone]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K3 ["current"]
        8 CALL                             R1 1 1
        9 GETIMPORT                        R2 K5 [table.remove]
       11 MOVE                             R3 R1
       12 MOVE                             R4 R0
       13 CALL                             R2 2 0
       14 GETUPVAL                         R2 1
       15 SETTABLEKS                       R1 R2 K3 ["current"]
       17 GETUPVAL                         R2 2
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 3
       21 MOVE                             R3 R1
       22 LOADB                            R4 1
       23 CALL                             R2 2 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 2
       26 NEWCLOSURE                       R2 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U3
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

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
       45 CALL                             R3 0 1
       46 JUMPIFNOT                        R3 ; [+40]
       47 GETUPVAL                         R3 1
       48 GETTABLEKS                       R3 R3 K11 ["current"]
       50 LENGTH                           R4 R3
       51 LOADN                            R5 8
       52 JUMPIFNOTLE                      R5 R4 ; [+2]
       54 RETURN                           R0 0
       55 GETIMPORT                        R4 K13 [table.clone]
       57 MOVE                             R5 R3
       58 CALL                             R4 1 1
       59 MOVE                             R5 R2
       60 LOADNIL                          R6
       61 LOADNIL                          R7
       62 FORGPREP                         R5
       63 LENGTH                           R10 R4
       64 LOADN                            R11 8
       65 JUMPIFLE                         R11 R10 ; [+10]
       67 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       69 MOVE                             R11 R4
       70 MOVE                             R12 R9
       71 GETIMPORT                        R10 K10 [table.insert]
       73 CALL                             R10 2 0
       74 FORGLOOP                         R5 2 ; [-12]
       76 GETUPVAL                         R5 1
       77 SETTABLEKS                       R4 R5 K11 ["current"]
       79 GETUPVAL                         R5 2
       80 MOVE                             R6 R4
       81 CALL                             R5 1 0
       82 GETUPVAL                         R5 3
       83 MOVE                             R6 R4
       84 LOADB                            R7 1
       85 CALL                             R5 2 0
       86 RETURN                           R0 0
       87 GETUPVAL                         R3 2
       88 NEWCLOSURE                       R4 P0
       89 CAPTURE                          VAL R2
       90 CAPTURE                          UPVAL U3
       91 CALL                             R3 1 0
       92 RETURN                           R0 0

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
       59 CALL                             R9 0 1
       60 JUMPIFNOT                        R9 ; [+2]
       61 SETTABLEKS                       R6 R8 K12 ["current"]
       63 GETUPVAL                         R9 1
       64 GETTABLEKS                       R9 R9 K10 ["useState"]
       66 MOVE                             R10 R4
       67 CALL                             R9 1 2
       68 GETUPVAL                         R11 1
       69 GETTABLEKS                       R11 R11 K10 ["useState"]
       71 LOADB                            R12 0
       72 CALL                             R11 1 2
       73 GETUPVAL                         R13 1
       74 GETTABLEKS                       R13 R13 K10 ["useState"]
       76 LOADNIL                          R14
       77 CALL                             R13 1 2
       78 GETUPVAL                         R15 0
       79 GETTABLEKS                       R15 R15 K0 ["Hooks"]
       81 GETTABLEKS                       R15 R15 K13 ["useBreakpoint"]
       83 MOVE                             R16 R13
       84 CALL                             R15 1 2
       85 GETTABLEKS                       R17 R16 K14 ["X"]
       87 GETUPVAL                         R18 1
       88 GETTABLEKS                       R18 R18 K15 ["useCallback"]
       90 NEWCLOSURE                       R19 P1
       91 CAPTURE                          VAL R0
       92 NEWTABLE                         R20 0 2
       94 GETTABLEKS                       R21 R0 K16 ["onChange"]
       96 GETTABLEKS                       R22 R0 K7 ["definition"]
       98 GETTABLEKS                       R22 R22 K17 ["onChanged"]
      100 SETLIST                          R20 R21 2 [1]
      102 CALL                             R18 2 1
      103 GETUPVAL                         R19 1
      104 GETTABLEKS                       R19 R19 K18 ["useEffect"]
      106 NEWCLOSURE                       R20 P2
      107 CAPTURE                          VAL R0
      108 CAPTURE                          UPVAL U3
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R18
      113 NEWTABLE                         R21 0 0
      115 CALL                             R19 2 0
      116 GETUPVAL                         R19 1
      117 GETTABLEKS                       R19 R19 K15 ["useCallback"]
      119 NEWCLOSURE                       R20 P3
      120 CAPTURE                          UPVAL U4
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R18
      124 NEWTABLE                         R21 0 1
      126 MOVE                             R22 R18
      127 SETLIST                          R21 R22 1 [1]
      129 CALL                             R19 2 1
      130 GETUPVAL                         R20 1
      131 GETTABLEKS                       R20 R20 K15 ["useCallback"]
      133 NEWCLOSURE                       R21 P4
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R0
      137 NEWTABLE                         R22 0 2
      139 GETTABLEKS                       R23 R0 K7 ["definition"]
      141 GETTABLEKS                       R23 R23 K19 ["onCancelPressed"]
      143 GETTABLEKS                       R24 R0 K16 ["onChange"]
      145 SETLIST                          R22 R23 2 [1]
      147 CALL                             R20 2 1
      148 GETUPVAL                         R21 1
      149 GETTABLEKS                       R21 R21 K15 ["useCallback"]
      151 NEWCLOSURE                       R22 P5
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R0
      155 NEWTABLE                         R23 0 1
      157 GETTABLEKS                       R24 R0 K7 ["definition"]
      159 GETTABLEKS                       R24 R24 K20 ["onSuggestPressed"]
      161 SETLIST                          R23 R24 1 [1]
      163 CALL                             R21 2 1
      164 GETUPVAL                         R22 1
      165 GETTABLEKS                       R22 R22 K11 ["useRef"]
      167 LOADNIL                          R23
      168 CALL                             R22 1 1
      169 GETUPVAL                         R23 1
      170 GETTABLEKS                       R23 R23 K15 ["useCallback"]
      172 NEWCLOSURE                       R24 P6
      173 CAPTURE                          UPVAL U4
      174 CAPTURE                          VAL R8
      175 CAPTURE                          VAL R7
      176 CAPTURE                          VAL R18
      177 NEWTABLE                         R25 0 1
      179 MOVE                             R26 R18
      180 SETLIST                          R25 R26 1 [1]
      182 CALL                             R23 2 1
      183 NEWTABLE                         R24 0 0
      185 MOVE                             R25 R6
      186 LOADNIL                          R26
      187 LOADNIL                          R27
      188 FORGPREP                         R25
      189 LOADK                            R31 K21 ["pill_"]
      190 MOVE                             R32 R28
      191 CONCAT                           R30 R31 R32
      192 GETUPVAL                         R31 5
      193 MOVE                             R32 R29
      194 LOADK                            R33 K22 ["bg-shift-300 stroke-standard stroke-muted stroke-position-inner"]
      195 GETTABLEKS                       R35 R0 K23 ["isDisabled"]
      197 JUMPIF                           R35 ; [+4]
      198 NEWCLOSURE                       R34 P7
      199 CAPTURE                          VAL R19
      200 CAPTURE                          VAL R28
      201 JUMP                             ; [+1]
      202 LOADNIL                          R34
      203 MOVE                             R35 R28
      204 CALL                             R31 4 1
      205 SETTABLE                         R31 R24 R30
      206 FORGLOOP                         R25 2 ; [-18]
      208 JUMPIFNOT                        R9 ; [+11]
      209 GETUPVAL                         R25 5
      210 GETTABLEKS                       R26 R3 K24 ["Suggesting"]
      212 LOADK                            R27 K22 ["bg-shift-300 stroke-standard stroke-muted stroke-position-inner"]
      213 MOVE                             R28 R20
      214 LOADN                            R29 10
      215 LOADB                            R30 1
      216 CALL                             R25 5 1
      217 SETTABLEKS                       R25 R24 K25 ["pill_suggesting"]
      219 JUMP                             ; [+43]
      220 JUMPIFNOT                        R11 ; [+42]
      221 GETTABLEKS                       R25 R0 K7 ["definition"]
      223 GETTABLEKS                       R25 R25 K20 ["onSuggestPressed"]
      225 JUMPIFEQKNIL                     R25 ; [+37]
      227 GETTABLEKS                       R25 R0 K23 ["isDisabled"]
      229 JUMPIF                           R25 ; [+33]
      230 GETUPVAL                         R25 6
      231 GETUPVAL                         R26 7
      232 DUPTABLE                         R27 K32 [{["icon"], ["size"], ["onActivated"], ["testId"], ["LayoutOrder"] = 10}]
      233 GETUPVAL                         R28 0
      234 GETTABLEKS                       R28 R28 K33 ["Enums"]
      236 GETTABLEKS                       R28 R28 K34 ["IconName"]
      238 GETTABLEKS                       R28 R28 K35 ["TwoArrowsSpinClockwise"]
      240 SETTABLEKS                       R28 R27 K26 ["icon"]
      242 GETUPVAL                         R28 0
      243 GETTABLEKS                       R28 R28 K33 ["Enums"]
      245 GETTABLEKS                       R28 R28 K36 ["InputSize"]
      247 GETTABLEKS                       R28 R28 K37 ["XSmall"]
      249 SETTABLEKS                       R28 R27 K27 ["size"]
      251 SETTABLEKS                       R21 R27 K28 ["onActivated"]
      253 GETUPVAL                         R28 8
      254 GETTABLEKS                       R28 R28 K38 ["SegmentationPropertyRow"]
      256 GETTABLEKS                       R28 R28 K39 ["SuggestButton"]
      258 SETTABLEKS                       R28 R27 K29 ["testId"]
      260 CALL                             R25 2 1
      261 SETTABLEKS                       R25 R24 K40 ["pill_resuggest"]
      263 GETUPVAL                         R25 9
      264 CALL                             R25 0 1
      265 GETIMPORT                        R27 K42 [next]
      267 MOVE                             R28 R24
      268 CALL                             R27 1 1
      269 JUMPIFNOTEQKNIL                  R27 ; [+2]
      271 LOADB                            R26 0 +1
      272 LOADB                            R26 1
      273 GETUPVAL                         R28 4
      274 CALL                             R28 0 1
      275 JUMPIFNOT                        R28 ; [+5]
      276 JUMPIFNOT                        R26 ; [+2]
      277 LOADK                            R27 K43 ["bg-surface-200 radius-small padding-small size-full-0 auto-y"]
      278 JUMP                             ; [+3]
      279 LOADK                            R27 K44 ["size-full-0 auto-y"]
      280 JUMP                             ; [+1]
      281 LOADK                            R27 K45 ["bg-surface-200 radius-small padding-xsmall size-full-0 auto-y"]
      282 GETUPVAL                         R28 6
      283 GETUPVAL                         R29 10
      284 DUPTABLE                         R30 K48 [{["tag"] = "col gap-xxsmall size-full-0 auto-y", ["LayoutOrder"]}]
      285 GETTABLEKS                       R31 R0 K30 ["LayoutOrder"]
      287 SETTABLEKS                       R31 R30 K30 ["LayoutOrder"]
      289 DUPTABLE                         R31 K51 [{"PillBox", "Input"}]
      290 GETUPVAL                         R32 6
      291 GETUPVAL                         R33 10
      292 DUPTABLE                         R34 K52 [{"tag", "LayoutOrder"}]
      293 SETTABLEKS                       R27 R34 K46 ["tag"]
      295 MOVE                             R35 R25
      296 CALL                             R35 0 1
      297 SETTABLEKS                       R35 R34 K30 ["LayoutOrder"]
      299 DUPTABLE                         R35 K55 [{"Measure", "Pills"}]
      300 GETUPVAL                         R36 6
      301 GETUPVAL                         R37 10
      302 DUPTABLE                         R38 K58 [{["tag"] = "size-full-0", ["ref"]}]
      303 SETTABLEKS                       R14 R38 K57 ["ref"]
      305 CALL                             R36 2 1
      306 SETTABLEKS                       R36 R35 K53 ["Measure"]
      308 GETUPVAL                         R36 6
      309 GETUPVAL                         R37 10
      310 DUPTABLE                         R38 K61 [{["tag"] = "row wrap gap-xxsmall auto-y", ["Size"]}]
      311 GETIMPORT                        R39 K64 [UDim2.fromOffset]
      313 MOVE                             R40 R17
      314 LOADN                            R41 0
      315 CALL                             R39 2 1
      316 SETTABLEKS                       R39 R38 K60 ["Size"]
      318 MOVE                             R39 R24
      319 CALL                             R36 3 1
      320 SETTABLEKS                       R36 R35 K54 ["Pills"]
      322 CALL                             R32 3 1
      323 SETTABLEKS                       R32 R31 K49 ["PillBox"]
      325 GETTABLEKS                       R33 R0 K23 ["isDisabled"]
      327 JUMPIF                           R33 ; [+94]
      328 GETUPVAL                         R32 6
      329 GETUPVAL                         R33 10
      330 DUPTABLE                         R34 K66 [{["tag"] = "size-full-0 auto-y padding-xsmall radius-small bg-surface-300", ["LayoutOrder"]}]
      331 MOVE                             R35 R25
      332 CALL                             R35 0 1
      333 SETTABLEKS                       R35 R34 K30 ["LayoutOrder"]
      335 DUPTABLE                         R35 K67 [{"Input"}]
      336 GETUPVAL                         R36 6
      337 LOADK                            R37 K68 ["TextBox"]
      338 NEWTABLE                         R38 16 0
      340 GETIMPORT                        R39 K70 [UDim2.fromScale]
      342 LOADN                            R40 1
      343 LOADN                            R41 0
      344 CALL                             R39 2 1
      345 SETTABLEKS                       R39 R38 K60 ["Size"]
      347 GETIMPORT                        R39 K74 [Enum.AutomaticSize.Y]
      349 SETTABLEKS                       R39 R38 K72 ["AutomaticSize"]
      351 LOADN                            R39 1
      352 SETTABLEKS                       R39 R38 K75 ["BackgroundTransparency"]
      354 GETTABLEKS                       R39 R3 K76 ["InputPlaceholder"]
      356 SETTABLEKS                       R39 R38 K77 ["PlaceholderText"]
      358 LOADK                            R39 K78 [""]
      359 SETTABLEKS                       R39 R38 K79 ["Text"]
      361 SETTABLEKS                       R22 R38 K57 ["ref"]
      363 GETTABLEKS                       R39 R2 K80 ["Font"]
      365 SETTABLEKS                       R39 R38 K80 ["Font"]
      367 GETTABLEKS                       R39 R2 K81 ["FontSize"]
      369 SETTABLEKS                       R39 R38 K82 ["TextSize"]
      371 GETTABLEKS                       R39 R1 K83 ["Color"]
      373 GETTABLEKS                       R39 R39 K84 ["Content"]
      375 GETTABLEKS                       R39 R39 K85 ["Default"]
      377 GETTABLEKS                       R39 R39 K86 ["Color3"]
      379 SETTABLEKS                       R39 R38 K87 ["TextColor3"]
      381 GETTABLEKS                       R39 R1 K83 ["Color"]
      383 GETTABLEKS                       R39 R39 K84 ["Content"]
      385 GETTABLEKS                       R39 R39 K85 ["Default"]
      387 GETTABLEKS                       R39 R39 K88 ["Transparency"]
      389 SETTABLEKS                       R39 R38 K89 ["TextTransparency"]
      391 GETTABLEKS                       R39 R1 K83 ["Color"]
      393 GETTABLEKS                       R39 R39 K84 ["Content"]
      395 GETTABLEKS                       R39 R39 K90 ["Muted"]
      397 GETTABLEKS                       R39 R39 K86 ["Color3"]
      399 SETTABLEKS                       R39 R38 K91 ["PlaceholderColor3"]
      401 GETIMPORT                        R39 K94 [Enum.TextXAlignment.Left]
      403 SETTABLEKS                       R39 R38 K92 ["TextXAlignment"]
      405 LOADB                            R39 0
      406 SETTABLEKS                       R39 R38 K95 ["ClearTextOnFocus"]
      408 GETUPVAL                         R39 1
      409 GETTABLEKS                       R39 R39 K96 ["Event"]
      411 GETTABLEKS                       R39 R39 K97 ["FocusLost"]
      413 NEWCLOSURE                       R40 P8
      414 CAPTURE                          VAL R23
      415 CAPTURE                          VAL R22
      416 SETTABLE                         R40 R38 R39
      417 CALL                             R36 2 1
      418 SETTABLEKS                       R36 R35 K50 ["Input"]
      420 CALL                             R32 3 1
      421 JUMP                             ; [+1]
      422 LOADNIL                          R32
      423 SETTABLEKS                       R32 R31 K50 ["Input"]
      425 CALL                             R28 3 -1
      426 RETURN                           R28 -1

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
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Flags"]
       41 GETTABLEKS                       R6 R6 K14 ["FFlagAssistantSegmentationUIFixes"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R1 K15 ["Icon"]
       46 GETTABLEKS                       R7 R1 K16 ["IconButton"]
       48 GETTABLEKS                       R8 R1 K17 ["Text"]
       50 GETTABLEKS                       R9 R1 K18 ["View"]
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R11 R0 K19 ["Components"]
       56 GETTABLEKS                       R11 R11 K20 ["ShimmerGradient"]
       58 CALL                             R10 1 1
       59 GETTABLEKS                       R11 R3 K21 ["createNextOrder"]
       61 GETIMPORT                        R12 K5 [require]
       63 GETIMPORT                        R13 K1 [script]
       65 GETTABLEKS                       R13 R13 K6 ["Parent"]
       67 GETTABLEKS                       R13 R13 K22 ["PropertyRowTypes"]
       69 CALL                             R12 1 1
       70 GETIMPORT                        R13 K5 [require]
       72 GETTABLEKS                       R14 R0 K23 ["Util"]
       74 GETTABLEKS                       R14 R14 K24 ["TestIds"]
       76 CALL                             R13 1 1
       77 GETTABLEKS                       R14 R2 K25 ["createElement"]
       79 DUPCLOSURE                       R15 K26 [PROTO_0]
       80 DUPCLOSURE                       R16 K27 [PROTO_1]
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R14
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R10
       89 DUPCLOSURE                       R17 K28 [PROTO_16]
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R15
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R16
       96 CAPTURE                          VAL R14
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R9
      101 DUPCLOSURE                       R18 K29 [PROTO_17]
      102 CAPTURE                          VAL R12
      103 DUPTABLE                         R19 K32 [{"PartNamesPropertyRow", "createRowDefinition"}]
      104 SETTABLEKS                       R17 R19 K30 ["PartNamesPropertyRow"]
      106 SETTABLEKS                       R18 R19 K31 ["createRowDefinition"]
      108 RETURN                           R19 1
