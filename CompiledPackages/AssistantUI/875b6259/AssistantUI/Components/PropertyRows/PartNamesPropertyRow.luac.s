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
       15 DUPTABLE                         R12 K9 [{"tag", "Text", "LayoutOrder"}]
       16 LOADK                            R13 K10 ["auto-xy text-body-small content-default"]
       17 SETTABLEKS                       R13 R12 K0 ["tag"]
       19 SETTABLEKS                       R0 R12 K8 ["Text"]
       21 MOVE                             R13 R5
       22 CALL                             R13 0 1
       23 SETTABLEKS                       R13 R12 K1 ["LayoutOrder"]
       25 CALL                             R10 2 1
       26 SETTABLEKS                       R10 R9 K4 ["Label"]
       28 JUMPIFEQKNIL                     R2 ; [+47]
       30 GETUPVAL                         R10 1
       31 GETUPVAL                         R11 2
       32 DUPTABLE                         R12 K13 [{"tag", "onActivated", "LayoutOrder", "testId"}]
       33 LOADK                            R13 K14 ["auto-xy align-y-center"]
       34 SETTABLEKS                       R13 R12 K0 ["tag"]
       36 SETTABLEKS                       R2 R12 K11 ["onActivated"]
       38 MOVE                             R13 R5
       39 CALL                             R13 0 1
       40 SETTABLEKS                       R13 R12 K1 ["LayoutOrder"]
       42 GETUPVAL                         R13 4
       43 GETTABLEKS                       R13 R13 K15 ["SegmentationPropertyRow"]
       45 GETTABLEKS                       R13 R13 K16 ["DeletePillButton"]
       47 SETTABLEKS                       R13 R12 K12 ["testId"]
       49 DUPTABLE                         R13 K18 [{"Icon"}]
       50 GETUPVAL                         R14 1
       51 GETUPVAL                         R15 5
       52 DUPTABLE                         R16 K21 [{"name", "size"}]
       53 GETUPVAL                         R17 6
       54 GETTABLEKS                       R17 R17 K22 ["Enums"]
       56 GETTABLEKS                       R17 R17 K23 ["IconName"]
       58 GETTABLEKS                       R17 R17 K24 ["X"]
       60 SETTABLEKS                       R17 R16 K19 ["name"]
       62 GETUPVAL                         R17 6
       63 GETTABLEKS                       R17 R17 K22 ["Enums"]
       65 GETTABLEKS                       R17 R17 K25 ["IconSize"]
       67 GETTABLEKS                       R17 R17 K26 ["XSmall"]
       69 SETTABLEKS                       R17 R16 K20 ["size"]
       71 CALL                             R14 2 1
       72 SETTABLEKS                       R14 R13 K17 ["Icon"]
       74 CALL                             R10 3 1
       75 JUMP                             ; [+1]
       76 LOADNIL                          R10
       77 SETTABLEKS                       R10 R9 K5 ["DeleteButton"]
       79 JUMPIFNOT                        R4 ; [+4]
       80 GETUPVAL                         R10 1
       81 GETUPVAL                         R11 7
       82 CALL                             R10 1 1
       83 JUMP                             ; [+1]
       84 LOADNIL                          R10
       85 SETTABLEKS                       R10 R9 K6 ["Shimmer"]
       87 CALL                             R6 3 -1
       88 RETURN                           R6 -1

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
        0 GETIMPORT                        R1 K2 [table.concat]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 [", "]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K4 ["onChange"]
        8 JUMPIFNOT                        R2 ; [+5]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K4 ["onChange"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K5 ["definition"]
       17 GETTABLEKS                       R2 R2 K6 ["onChanged"]
       19 JUMPIFNOT                        R2 ; [+7]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K5 ["definition"]
       23 GETTABLEKS                       R2 R2 K6 ["onChanged"]
       25 MOVE                             R3 R1
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

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
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

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
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

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
       45 NEWCLOSURE                       R4 P0
       46 CAPTURE                          VAL R2
       47 CAPTURE                          UPVAL U1
       48 CALL                             R3 1 0
       49 RETURN                           R0 0

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
       54 GETTABLEKS                       R8 R8 K10 ["useState"]
       56 MOVE                             R9 R4
       57 CALL                             R8 1 2
       58 GETUPVAL                         R10 1
       59 GETTABLEKS                       R10 R10 K10 ["useState"]
       61 LOADB                            R11 0
       62 CALL                             R10 1 2
       63 GETUPVAL                         R12 1
       64 GETTABLEKS                       R12 R12 K10 ["useState"]
       66 LOADNIL                          R13
       67 CALL                             R12 1 2
       68 GETUPVAL                         R14 0
       69 GETTABLEKS                       R14 R14 K0 ["Hooks"]
       71 GETTABLEKS                       R14 R14 K11 ["useBreakpoint"]
       73 MOVE                             R15 R12
       74 CALL                             R14 1 2
       75 GETTABLEKS                       R16 R15 K12 ["X"]
       77 GETUPVAL                         R17 1
       78 GETTABLEKS                       R17 R17 K13 ["useCallback"]
       80 NEWCLOSURE                       R18 P1
       81 CAPTURE                          VAL R0
       82 NEWTABLE                         R19 0 2
       84 GETTABLEKS                       R20 R0 K14 ["onChange"]
       86 GETTABLEKS                       R21 R0 K7 ["definition"]
       88 GETTABLEKS                       R21 R21 K15 ["onChanged"]
       90 SETLIST                          R19 R20 2 [1]
       92 CALL                             R17 2 1
       93 GETUPVAL                         R18 1
       94 GETTABLEKS                       R18 R18 K16 ["useEffect"]
       96 NEWCLOSURE                       R19 P2
       97 CAPTURE                          VAL R0
       98 CAPTURE                          UPVAL U3
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R17
      103 NEWTABLE                         R20 0 0
      105 CALL                             R18 2 0
      106 GETUPVAL                         R18 1
      107 GETTABLEKS                       R18 R18 K13 ["useCallback"]
      109 NEWCLOSURE                       R19 P3
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R17
      112 NEWTABLE                         R20 0 1
      114 MOVE                             R21 R17
      115 SETLIST                          R20 R21 1 [1]
      117 CALL                             R18 2 1
      118 GETUPVAL                         R19 1
      119 GETTABLEKS                       R19 R19 K13 ["useCallback"]
      121 NEWCLOSURE                       R20 P4
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R0
      125 NEWTABLE                         R21 0 2
      127 GETTABLEKS                       R22 R0 K7 ["definition"]
      129 GETTABLEKS                       R22 R22 K17 ["onCancelPressed"]
      131 GETTABLEKS                       R23 R0 K14 ["onChange"]
      133 SETLIST                          R21 R22 2 [1]
      135 CALL                             R19 2 1
      136 GETUPVAL                         R20 1
      137 GETTABLEKS                       R20 R20 K13 ["useCallback"]
      139 NEWCLOSURE                       R21 P5
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R0
      143 NEWTABLE                         R22 0 1
      145 GETTABLEKS                       R23 R0 K7 ["definition"]
      147 GETTABLEKS                       R23 R23 K18 ["onSuggestPressed"]
      149 SETLIST                          R22 R23 1 [1]
      151 CALL                             R20 2 1
      152 GETUPVAL                         R21 1
      153 GETTABLEKS                       R21 R21 K19 ["useRef"]
      155 LOADNIL                          R22
      156 CALL                             R21 1 1
      157 GETUPVAL                         R22 1
      158 GETTABLEKS                       R22 R22 K13 ["useCallback"]
      160 NEWCLOSURE                       R23 P6
      161 CAPTURE                          VAL R7
      162 CAPTURE                          VAL R17
      163 NEWTABLE                         R24 0 1
      165 MOVE                             R25 R17
      166 SETLIST                          R24 R25 1 [1]
      168 CALL                             R22 2 1
      169 NEWTABLE                         R23 0 0
      171 MOVE                             R24 R6
      172 LOADNIL                          R25
      173 LOADNIL                          R26
      174 FORGPREP                         R24
      175 LOADK                            R30 K20 ["pill_"]
      176 MOVE                             R31 R27
      177 CONCAT                           R29 R30 R31
      178 GETUPVAL                         R30 4
      179 MOVE                             R31 R28
      180 LOADK                            R32 K21 ["bg-shift-300 stroke-standard stroke-muted stroke-position-inner"]
      181 GETTABLEKS                       R34 R0 K22 ["isDisabled"]
      183 JUMPIF                           R34 ; [+4]
      184 NEWCLOSURE                       R33 P7
      185 CAPTURE                          VAL R18
      186 CAPTURE                          VAL R27
      187 JUMP                             ; [+1]
      188 LOADNIL                          R33
      189 MOVE                             R34 R27
      190 CALL                             R30 4 1
      191 SETTABLE                         R30 R23 R29
      192 FORGLOOP                         R24 2 ; [-18]
      194 JUMPIFNOT                        R8 ; [+11]
      195 GETUPVAL                         R24 4
      196 GETTABLEKS                       R25 R3 K23 ["Suggesting"]
      198 LOADK                            R26 K21 ["bg-shift-300 stroke-standard stroke-muted stroke-position-inner"]
      199 MOVE                             R27 R19
      200 LOADN                            R28 10
      201 LOADB                            R29 1
      202 CALL                             R24 5 1
      203 SETTABLEKS                       R24 R23 K24 ["pill_suggesting"]
      205 JUMP                             ; [+46]
      206 JUMPIFNOT                        R10 ; [+45]
      207 GETTABLEKS                       R24 R0 K7 ["definition"]
      209 GETTABLEKS                       R24 R24 K18 ["onSuggestPressed"]
      211 JUMPIFEQKNIL                     R24 ; [+40]
      213 GETTABLEKS                       R24 R0 K22 ["isDisabled"]
      215 JUMPIF                           R24 ; [+36]
      216 GETUPVAL                         R24 5
      217 GETUPVAL                         R25 6
      218 DUPTABLE                         R26 K30 [{"icon", "size", "onActivated", "testId", "LayoutOrder"}]
      219 GETUPVAL                         R27 0
      220 GETTABLEKS                       R27 R27 K31 ["Enums"]
      222 GETTABLEKS                       R27 R27 K32 ["IconName"]
      224 GETTABLEKS                       R27 R27 K33 ["TwoArrowsSpinClockwise"]
      226 SETTABLEKS                       R27 R26 K25 ["icon"]
      228 GETUPVAL                         R27 0
      229 GETTABLEKS                       R27 R27 K31 ["Enums"]
      231 GETTABLEKS                       R27 R27 K34 ["InputSize"]
      233 GETTABLEKS                       R27 R27 K35 ["XSmall"]
      235 SETTABLEKS                       R27 R26 K26 ["size"]
      237 SETTABLEKS                       R20 R26 K27 ["onActivated"]
      239 GETUPVAL                         R27 7
      240 GETTABLEKS                       R27 R27 K36 ["SegmentationPropertyRow"]
      242 GETTABLEKS                       R27 R27 K37 ["SuggestButton"]
      244 SETTABLEKS                       R27 R26 K28 ["testId"]
      246 LOADN                            R27 10
      247 SETTABLEKS                       R27 R26 K29 ["LayoutOrder"]
      249 CALL                             R24 2 1
      250 SETTABLEKS                       R24 R23 K38 ["pill_resuggest"]
      252 GETUPVAL                         R24 8
      253 CALL                             R24 0 1
      254 GETUPVAL                         R25 5
      255 GETUPVAL                         R26 9
      256 DUPTABLE                         R27 K40 [{"tag", "LayoutOrder"}]
      257 LOADK                            R28 K41 ["col size-full-0 auto-y gap-xxsmall"]
      258 SETTABLEKS                       R28 R27 K39 ["tag"]
      260 GETTABLEKS                       R28 R0 K29 ["LayoutOrder"]
      262 SETTABLEKS                       R28 R27 K29 ["LayoutOrder"]
      264 DUPTABLE                         R28 K44 [{"PillBox", "Input"}]
      265 GETUPVAL                         R29 5
      266 GETUPVAL                         R30 9
      267 DUPTABLE                         R31 K40 [{"tag", "LayoutOrder"}]
      268 LOADK                            R32 K45 ["bg-surface-200 radius-small padding-xsmall size-full-0 auto-y"]
      269 SETTABLEKS                       R32 R31 K39 ["tag"]
      271 MOVE                             R32 R24
      272 CALL                             R32 0 1
      273 SETTABLEKS                       R32 R31 K29 ["LayoutOrder"]
      275 DUPTABLE                         R32 K48 [{"Measure", "Pills"}]
      276 GETUPVAL                         R33 5
      277 GETUPVAL                         R34 9
      278 DUPTABLE                         R35 K50 [{"tag", "ref"}]
      279 LOADK                            R36 K51 ["size-full-0"]
      280 SETTABLEKS                       R36 R35 K39 ["tag"]
      282 SETTABLEKS                       R13 R35 K49 ["ref"]
      284 CALL                             R33 2 1
      285 SETTABLEKS                       R33 R32 K46 ["Measure"]
      287 GETUPVAL                         R33 5
      288 GETUPVAL                         R34 9
      289 DUPTABLE                         R35 K53 [{"tag", "Size"}]
      290 LOADK                            R36 K54 ["row gap-xxsmall wrap auto-y"]
      291 SETTABLEKS                       R36 R35 K39 ["tag"]
      293 GETIMPORT                        R36 K57 [UDim2.fromOffset]
      295 MOVE                             R37 R16
      296 LOADN                            R38 0
      297 CALL                             R36 2 1
      298 SETTABLEKS                       R36 R35 K52 ["Size"]
      300 MOVE                             R36 R23
      301 CALL                             R33 3 1
      302 SETTABLEKS                       R33 R32 K47 ["Pills"]
      304 CALL                             R29 3 1
      305 SETTABLEKS                       R29 R28 K42 ["PillBox"]
      307 GETTABLEKS                       R30 R0 K22 ["isDisabled"]
      309 JUMPIF                           R30 ; [+97]
      310 GETUPVAL                         R29 5
      311 GETUPVAL                         R30 9
      312 DUPTABLE                         R31 K40 [{"tag", "LayoutOrder"}]
      313 LOADK                            R32 K58 ["bg-surface-300 radius-small padding-xsmall size-full-0 auto-y"]
      314 SETTABLEKS                       R32 R31 K39 ["tag"]
      316 MOVE                             R32 R24
      317 CALL                             R32 0 1
      318 SETTABLEKS                       R32 R31 K29 ["LayoutOrder"]
      320 DUPTABLE                         R32 K59 [{"Input"}]
      321 GETUPVAL                         R33 5
      322 LOADK                            R34 K60 ["TextBox"]
      323 NEWTABLE                         R35 16 0
      325 GETIMPORT                        R36 K62 [UDim2.fromScale]
      327 LOADN                            R37 1
      328 LOADN                            R38 0
      329 CALL                             R36 2 1
      330 SETTABLEKS                       R36 R35 K52 ["Size"]
      332 GETIMPORT                        R36 K66 [Enum.AutomaticSize.Y]
      334 SETTABLEKS                       R36 R35 K64 ["AutomaticSize"]
      336 LOADN                            R36 1
      337 SETTABLEKS                       R36 R35 K67 ["BackgroundTransparency"]
      339 GETTABLEKS                       R36 R3 K68 ["InputPlaceholder"]
      341 SETTABLEKS                       R36 R35 K69 ["PlaceholderText"]
      343 LOADK                            R36 K70 [""]
      344 SETTABLEKS                       R36 R35 K71 ["Text"]
      346 SETTABLEKS                       R21 R35 K49 ["ref"]
      348 GETTABLEKS                       R36 R2 K72 ["Font"]
      350 SETTABLEKS                       R36 R35 K72 ["Font"]
      352 GETTABLEKS                       R36 R2 K73 ["FontSize"]
      354 SETTABLEKS                       R36 R35 K74 ["TextSize"]
      356 GETTABLEKS                       R36 R1 K75 ["Color"]
      358 GETTABLEKS                       R36 R36 K76 ["Content"]
      360 GETTABLEKS                       R36 R36 K77 ["Default"]
      362 GETTABLEKS                       R36 R36 K78 ["Color3"]
      364 SETTABLEKS                       R36 R35 K79 ["TextColor3"]
      366 GETTABLEKS                       R36 R1 K75 ["Color"]
      368 GETTABLEKS                       R36 R36 K76 ["Content"]
      370 GETTABLEKS                       R36 R36 K77 ["Default"]
      372 GETTABLEKS                       R36 R36 K80 ["Transparency"]
      374 SETTABLEKS                       R36 R35 K81 ["TextTransparency"]
      376 GETTABLEKS                       R36 R1 K75 ["Color"]
      378 GETTABLEKS                       R36 R36 K76 ["Content"]
      380 GETTABLEKS                       R36 R36 K82 ["Muted"]
      382 GETTABLEKS                       R36 R36 K78 ["Color3"]
      384 SETTABLEKS                       R36 R35 K83 ["PlaceholderColor3"]
      386 GETIMPORT                        R36 K86 [Enum.TextXAlignment.Left]
      388 SETTABLEKS                       R36 R35 K84 ["TextXAlignment"]
      390 LOADB                            R36 0
      391 SETTABLEKS                       R36 R35 K87 ["ClearTextOnFocus"]
      393 GETUPVAL                         R36 1
      394 GETTABLEKS                       R36 R36 K88 ["Event"]
      396 GETTABLEKS                       R36 R36 K89 ["FocusLost"]
      398 NEWCLOSURE                       R37 P8
      399 CAPTURE                          VAL R22
      400 CAPTURE                          VAL R21
      401 SETTABLE                         R37 R35 R36
      402 CALL                             R33 2 1
      403 SETTABLEKS                       R33 R32 K43 ["Input"]
      405 CALL                             R29 3 1
      406 JUMP                             ; [+1]
      407 LOADNIL                          R29
      408 SETTABLEKS                       R29 R28 K43 ["Input"]
      410 CALL                             R25 3 -1
      411 RETURN                           R25 -1

PROTO_17:
        0 DUPTABLE                         R1 K10 [{"type", "label", "prop", "initialValue", "isLoading", "registerSetValue", "registerSetIsLoading", "onCancelPressed", "onSuggestPressed", "infoPopoverNamespace"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K11 ["ROW_TYPES"]
        4 GETTABLEKS                       R2 R2 K12 ["PartNames"]
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
       32 GETTABLEKS                       R2 R0 K7 ["onCancelPressed"]
       34 SETTABLEKS                       R2 R1 K7 ["onCancelPressed"]
       36 GETTABLEKS                       R2 R0 K8 ["onSuggestPressed"]
       38 SETTABLEKS                       R2 R1 K8 ["onSuggestPressed"]
       40 GETTABLEKS                       R2 R0 K9 ["infoPopoverNamespace"]
       42 SETTABLEKS                       R2 R1 K9 ["infoPopoverNamespace"]
       44 RETURN                           R1 1

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
       56 GETIMPORT                        R12 K1 [script]
       58 GETTABLEKS                       R12 R12 K6 ["Parent"]
       60 GETTABLEKS                       R12 R12 K20 ["PropertyRowTypes"]
       62 CALL                             R11 1 1
       63 GETIMPORT                        R12 K5 [require]
       65 GETTABLEKS                       R13 R0 K21 ["Util"]
       67 GETTABLEKS                       R13 R13 K22 ["TestIds"]
       69 CALL                             R12 1 1
       70 GETTABLEKS                       R13 R2 K23 ["createElement"]
       72 DUPCLOSURE                       R14 K24 [PROTO_0]
       73 DUPCLOSURE                       R15 K25 [PROTO_1]
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R9
       82 DUPCLOSURE                       R16 K26 [PROTO_16]
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R14
       87 CAPTURE                          VAL R15
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R8
       93 DUPCLOSURE                       R17 K27 [PROTO_17]
       94 CAPTURE                          VAL R11
       95 DUPTABLE                         R18 K30 [{"PartNamesPropertyRow", "createRowDefinition"}]
       96 SETTABLEKS                       R16 R18 K28 ["PartNamesPropertyRow"]
       98 SETTABLEKS                       R17 R18 K29 ["createRowDefinition"]
      100 RETURN                           R18 1
