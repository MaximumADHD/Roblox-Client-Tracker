PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+3]
        7 MOVE                             R1 R0
        8 RETURN                           R1 1
        9 NEWTABLE                         R1 0 0
       11 RETURN                           R1 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+3]
        7 MOVE                             R1 R0
        8 RETURN                           R1 1
        9 LOADK                            R1 K3 [""]
       10 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 GETUPVAL                         R6 1
        3 GETUPVAL                         R7 2
        4 DUPTABLE                         R8 K2 [{"tag", "LayoutOrder"}]
        5 NEWTABLE                         R9 2 0
        7 LOADB                            R10 1
        8 SETTABLEKS                       R10 R9 K3 ["row align-y-center gap-xsmall auto-xy padding-y-xsmall padding-left-small padding-right-xsmall radius-circle"]
       10 LOADB                            R10 1
       11 SETTABLE                         R10 R9 R1
       12 SETTABLEKS                       R9 R8 K0 ["tag"]
       14 SETTABLEKS                       R3 R8 K1 ["LayoutOrder"]
       16 DUPTABLE                         R9 K7 [{"Label", "DeleteButton", "Shimmer"}]
       17 GETUPVAL                         R10 1
       18 GETUPVAL                         R11 3
       19 DUPTABLE                         R12 K10 [{[1] = "auto-xy text-body-small content-default", ["Text"], ["LayoutOrder"]}]
       20 SETTABLEKS                       R0 R12 K9 ["Text"]
       22 MOVE                             R13 R5
       23 CALL                             R13 0 1
       24 SETTABLEKS                       R13 R12 K1 ["LayoutOrder"]
       26 CALL                             R10 2 1
       27 SETTABLEKS                       R10 R9 K4 ["Label"]
       29 JUMPIFEQKNIL                     R2 ; [+44]
       31 GETUPVAL                         R10 1
       32 GETUPVAL                         R11 2
       33 DUPTABLE                         R12 K14 [{[1] = "align-y-center auto-xy", ["onActivated"], ["LayoutOrder"], ["testId"]}]
       34 SETTABLEKS                       R2 R12 K12 ["onActivated"]
       36 MOVE                             R13 R5
       37 CALL                             R13 0 1
       38 SETTABLEKS                       R13 R12 K1 ["LayoutOrder"]
       40 GETUPVAL                         R13 4
       41 GETTABLEKS                       R13 R13 K15 ["SegmentationPropertyRow"]
       43 GETTABLEKS                       R13 R13 K16 ["DeletePillButton"]
       45 SETTABLEKS                       R13 R12 K13 ["testId"]
       47 DUPTABLE                         R13 K18 [{"Icon"}]
       48 GETUPVAL                         R14 1
       49 GETUPVAL                         R15 5
       50 DUPTABLE                         R16 K21 [{"name", "size"}]
       51 GETUPVAL                         R17 6
       52 GETTABLEKS                       R17 R17 K22 ["Enums"]
       54 GETTABLEKS                       R17 R17 K23 ["IconName"]
       56 GETTABLEKS                       R17 R17 K24 ["X"]
       58 SETTABLEKS                       R17 R16 K19 ["name"]
       60 GETUPVAL                         R17 6
       61 GETTABLEKS                       R17 R17 K22 ["Enums"]
       63 GETTABLEKS                       R17 R17 K25 ["IconSize"]
       65 GETTABLEKS                       R17 R17 K26 ["XSmall"]
       67 SETTABLEKS                       R17 R16 K20 ["size"]
       69 CALL                             R14 2 1
       70 SETTABLEKS                       R14 R13 K17 ["Icon"]
       72 CALL                             R10 3 1
       73 JUMP                             ; [+1]
       74 LOADNIL                          R10
       75 SETTABLEKS                       R10 R9 K5 ["DeleteButton"]
       77 JUMPIFNOT                        R4 ; [+4]
       78 GETUPVAL                         R10 1
       79 GETUPVAL                         R11 7
       80 CALL                             R10 1 1
       81 JUMP                             ; [+1]
       82 LOADNIL                          R10
       83 SETTABLEKS                       R10 R9 K6 ["Shimmer"]
       85 CALL                             R6 3 -1
       86 RETURN                           R6 -1

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setValue"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["reportBusy"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 JUMPIFNOT                        R0 ; [+13]
        9 GETUPVAL                         R1 2
       10 NEWTABLE                         R2 0 0
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantSegmentationUIFixes"]
       16 JUMPIFNOT                        R1 ; [+5]
       17 GETUPVAL                         R1 4
       18 NEWTABLE                         R2 0 0
       20 SETTABLEKS                       R2 R1 K2 ["current"]
       22 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+18]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+16]
        4 GETUPVAL                         R0 2
        5 JUMPIFNOT                        R0 ; [+14]
        6 GETUPVAL                         R1 3
        7 LENGTH                           R0 R1
        8 LOADN                            R1 0
        9 JUMPIFNOTLT                      R1 R0 ; [+10]
       11 GETUPVAL                         R0 4
       12 GETTABLEKS                       R0 R0 K0 ["current"]
       14 GETTABLEKS                       R0 R0 K1 ["request"]
       16 GETUPVAL                         R1 3
       17 GETUPVAL                         R2 5
       18 CALL                             R0 2 0
       19 JUMP                             ; [+6]
       20 GETUPVAL                         R0 4
       21 GETTABLEKS                       R0 R0 K0 ["current"]
       23 GETTABLEKS                       R0 R0 K2 ["cancel"]
       25 CALL                             R0 0 0
       26 LOADNIL                          R0
       27 RETURN                           R0 1

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantSegmentationUIFixes"]
        3 JUMPIFNOT                        R1 ; [+21]
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
       23 CALL                             R2 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 2
       26 NEWCLOSURE                       R2 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U3
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R0 R0 K1 ["cancel"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K2 ["setValue"]
        9 NEWTABLE                         R1 0 0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+25]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantGen3DTelemetryV2"]
        6 JUMPIFNOT                        R0 ; [+20]
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K1 ["modelFlow"]
       10 JUMPIFEQKNIL                     R0 ; [+16]
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K2 ["get"]
       15 CALL                             R0 0 1
       16 GETTABLEKS                       R0 R0 K3 ["EventLogger"]
       18 GETTABLEKS                       R0 R0 K4 ["logGen3DSegmentationRefresh"]
       20 DUPTABLE                         R1 K7 [{["modelFlow"], ["inputFormat"] = "text"}]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K1 ["modelFlow"]
       24 SETTABLEKS                       R2 R1 K1 ["modelFlow"]
       26 CALL                             R0 1 0
       27 GETUPVAL                         R0 3
       28 GETTABLEKS                       R0 R0 K8 ["current"]
       30 GETTABLEKS                       R0 R0 K9 ["requestNow"]
       32 GETUPVAL                         R1 4
       33 GETUPVAL                         R2 5
       34 CALL                             R0 2 0
       35 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
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
       47 JUMPIFNOT                        R3 ; [+29]
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
       75 CALL                             R4 1 0
       76 RETURN                           R0 0
       77 GETUPVAL                         R3 2
       78 NEWCLOSURE                       R4 P0
       79 CAPTURE                          VAL R2
       80 CAPTURE                          UPVAL U3
       81 CALL                             R3 1 0
       82 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["CaptureFocus"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETIMPORT                        R2 K2 [task.defer]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Typography"]
        8 GETTABLEKS                       R2 R2 K3 ["BodySmall"]
       10 GETTABLEKS                       R3 R0 K4 ["definition"]
       12 GETTABLEKS                       R4 R3 K5 ["suggestion"]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K6 ["useMemo"]
       17 DUPCLOSURE                       R6 K7 [PROTO_3]
       18 CAPTURE                          UPVAL U2
       19 NEWTABLE                         R7 0 1
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R8 R8 K8 ["locale"]
       24 SETLIST                          R7 R8 1 [1]
       26 CALL                             R5 2 1
       27 GETTABLEKS                       R7 R3 K10 ["maxParts"]
       29 ORK                              R6 R7 K9 [8]
       30 GETTABLEKS                       R8 R0 K11 ["value"]
       32 FASTCALL1                        TYPEOF R8 ; [+3]
       33 MOVE                             R10 R8
       34 GETIMPORT                        R9 K13 [typeof]
       36 CALL                             R9 1 1
       37 JUMPIFNOTEQKS                    R9 K14 ["table"] ; [+3]
       39 MOVE                             R7 R8
       40 JUMP                             ; [+2]
       41 NEWTABLE                         R7 0 0
       43 GETUPVAL                         R8 1
       44 GETTABLEKS                       R8 R8 K15 ["useState"]
       46 MOVE                             R9 R7
       47 CALL                             R8 1 2
       48 GETUPVAL                         R10 1
       49 GETTABLEKS                       R10 R10 K16 ["useRef"]
       51 MOVE                             R11 R8
       52 CALL                             R10 1 1
       53 GETUPVAL                         R11 3
       54 GETTABLEKS                       R11 R11 K17 ["FFlagAssistantSegmentationUIFixes"]
       56 JUMPIFNOT                        R11 ; [+2]
       57 SETTABLEKS                       R8 R10 K18 ["current"]
       59 GETUPVAL                         R11 1
       60 GETTABLEKS                       R11 R11 K15 ["useState"]
       62 LOADB                            R12 0
       63 CALL                             R11 1 2
       64 GETUPVAL                         R13 1
       65 GETTABLEKS                       R13 R13 K15 ["useState"]
       67 LOADNIL                          R14
       68 CALL                             R13 1 2
       69 GETUPVAL                         R15 0
       70 GETTABLEKS                       R15 R15 K0 ["Hooks"]
       72 GETTABLEKS                       R15 R15 K19 ["useBreakpoint"]
       74 MOVE                             R16 R13
       75 CALL                             R15 1 2
       76 GETTABLEKS                       R17 R16 K20 ["X"]
       78 GETUPVAL                         R18 1
       79 GETTABLEKS                       R18 R18 K16 ["useRef"]
       81 LOADB                            R19 0
       82 CALL                             R18 1 1
       83 LOADN                            R19 0
       84 JUMPIFNOTLT                      R19 R17 ; [+4]
       86 LOADB                            R19 1
       87 SETTABLEKS                       R19 R18 K18 ["current"]
       89 GETUPVAL                         R19 1
       90 GETTABLEKS                       R19 R19 K21 ["useCallback"]
       92 NEWCLOSURE                       R20 P1
       93 CAPTURE                          VAL R0
       94 NEWTABLE                         R21 0 1
       96 GETTABLEKS                       R22 R0 K22 ["setValue"]
       98 SETLIST                          R21 R22 1 [1]
      100 CALL                             R19 2 1
      101 GETUPVAL                         R20 4
      102 NEWCLOSURE                       R21 P2
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R19
      105 NEWCLOSURE                       R22 P3
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R0
      108 CAPTURE                          VAL R9
      109 CAPTURE                          UPVAL U3
      110 CAPTURE                          VAL R10
      111 CALL                             R20 2 1
      112 GETUPVAL                         R21 5
      113 MOVE                             R22 R20
      114 CALL                             R21 1 1
      115 JUMPIFNOT                        R4 ; [+16]
      116 GETTABLEKS                       R23 R0 K23 ["getRowValue"]
      118 GETTABLEKS                       R24 R4 K24 ["promptKey"]
      120 CALL                             R23 1 1
      121 FASTCALL1                        TYPEOF R23 ; [+3]
      122 MOVE                             R25 R23
      123 GETIMPORT                        R24 K13 [typeof]
      125 CALL                             R24 1 1
      126 JUMPIFNOTEQKS                    R24 K25 ["string"] ; [+3]
      128 MOVE                             R22 R23
      129 JUMP                             ; [+3]
      130 LOADK                            R22 K26 [""]
      131 JUMP                             ; [+1]
      132 LOADK                            R22 K26 [""]
      133 JUMPIFNOT                        R4 ; [+9]
      134 GETTABLEKS                       R24 R4 K27 ["segmentationModeKey"]
      136 JUMPIFNOT                        R24 ; [+6]
      137 GETTABLEKS                       R23 R0 K23 ["getRowValue"]
      139 GETTABLEKS                       R24 R4 K27 ["segmentationModeKey"]
      141 CALL                             R23 1 1
      142 JUMP                             ; [+1]
      143 LOADNIL                          R23
      144 JUMPIFEQKNIL                     R4 ; [+5]
      146 GETTABLEKS                       R25 R4 K28 ["suggestKey"]
      148 JUMPIFNOTEQKNIL                  R25 ; [+3]
      150 LOADB                            R24 1
      151 JUMP                             ; [+9]
      152 GETTABLEKS                       R25 R0 K23 ["getRowValue"]
      154 GETTABLEKS                       R26 R4 K28 ["suggestKey"]
      156 CALL                             R25 1 1
      157 JUMPIFEQKB                       R25 TRUE ; [+2]
      159 LOADB                            R24 0 +1
      160 LOADB                            R24 1
      161 JUMPIFNOTEQKNIL                  R4 ; [+2]
      163 LOADB                            R25 0 +1
      164 LOADB                            R25 1
      165 GETTABLEKS                       R26 R0 K29 ["active"]
      167 GETUPVAL                         R27 1
      168 GETTABLEKS                       R27 R27 K30 ["useEffect"]
      170 NEWCLOSURE                       R28 P4
      171 CAPTURE                          VAL R25
      172 CAPTURE                          VAL R26
      173 CAPTURE                          VAL R24
      174 CAPTURE                          VAL R22
      175 CAPTURE                          VAL R21
      176 CAPTURE                          VAL R23
      177 NEWTABLE                         R29 0 5
      179 MOVE                             R30 R25
      180 MOVE                             R31 R26
      181 MOVE                             R32 R24
      182 MOVE                             R33 R22
      183 MOVE                             R34 R23
      184 SETLIST                          R29 R30 5 [1]
      186 CALL                             R27 2 0
      187 GETUPVAL                         R27 1
      188 GETTABLEKS                       R27 R27 K21 ["useCallback"]
      190 NEWCLOSURE                       R28 P5
      191 CAPTURE                          UPVAL U3
      192 CAPTURE                          VAL R10
      193 CAPTURE                          VAL R9
      194 CAPTURE                          VAL R19
      195 NEWTABLE                         R29 0 1
      197 MOVE                             R30 R19
      198 SETLIST                          R29 R30 1 [1]
      200 CALL                             R27 2 1
      201 GETUPVAL                         R28 1
      202 GETTABLEKS                       R28 R28 K21 ["useCallback"]
      204 NEWCLOSURE                       R29 P6
      205 CAPTURE                          VAL R21
      206 CAPTURE                          VAL R0
      207 NEWTABLE                         R30 0 1
      209 GETTABLEKS                       R31 R0 K22 ["setValue"]
      211 SETLIST                          R30 R31 1 [1]
      213 CALL                             R28 2 1
      214 GETUPVAL                         R29 1
      215 GETTABLEKS                       R29 R29 K21 ["useCallback"]
      217 NEWCLOSURE                       R30 P7
      218 CAPTURE                          VAL R4
      219 CAPTURE                          UPVAL U3
      220 CAPTURE                          UPVAL U6
      221 CAPTURE                          VAL R21
      222 CAPTURE                          VAL R22
      223 CAPTURE                          VAL R23
      224 NEWTABLE                         R31 0 3
      226 MOVE                             R32 R4
      227 MOVE                             R33 R22
      228 MOVE                             R34 R23
      229 SETLIST                          R31 R32 3 [1]
      231 CALL                             R29 2 1
      232 GETUPVAL                         R30 1
      233 GETTABLEKS                       R30 R30 K16 ["useRef"]
      235 LOADNIL                          R31
      236 CALL                             R30 1 1
      237 GETUPVAL                         R31 1
      238 GETTABLEKS                       R31 R31 K21 ["useCallback"]
      240 NEWCLOSURE                       R32 P8
      241 CAPTURE                          UPVAL U3
      242 CAPTURE                          VAL R10
      243 CAPTURE                          VAL R9
      244 CAPTURE                          VAL R19
      245 NEWTABLE                         R33 0 1
      247 MOVE                             R34 R19
      248 SETLIST                          R33 R34 1 [1]
      250 CALL                             R31 2 1
      251 NEWTABLE                         R32 0 0
      253 MOVE                             R33 R8
      254 LOADNIL                          R34
      255 LOADNIL                          R35
      256 FORGPREP                         R33
      257 LOADK                            R39 K31 ["pill_"]
      258 MOVE                             R40 R36
      259 CONCAT                           R38 R39 R40
      260 GETUPVAL                         R39 7
      261 MOVE                             R40 R37
      262 LOADK                            R41 K32 ["bg-shift-300 stroke-standard stroke-muted stroke-position-inner"]
      263 GETTABLEKS                       R43 R0 K33 ["interactable"]
      265 JUMPIFNOT                        R43 ; [+4]
      266 NEWCLOSURE                       R42 P9
      267 CAPTURE                          VAL R27
      268 CAPTURE                          VAL R36
      269 JUMP                             ; [+1]
      270 LOADNIL                          R42
      271 MOVE                             R43 R36
      272 CALL                             R39 4 1
      273 SETTABLE                         R39 R32 R38
      274 FORGLOOP                         R33 2 ; [-18]
      276 JUMPIFNOT                        R11 ; [+12]
      277 GETUPVAL                         R33 7
      278 GETTABLEKS                       R34 R5 K34 ["Suggesting"]
      280 LOADK                            R35 K32 ["bg-shift-300 stroke-standard stroke-muted stroke-position-inner"]
      281 MOVE                             R36 R28
      282 LENGTH                           R38 R8
      283 ADDK                             R37 R38 K35 [2]
      284 LOADB                            R38 1
      285 CALL                             R33 5 1
      286 SETTABLEKS                       R33 R32 K36 ["pill_suggesting"]
      288 JUMP                             ; [+41]
      289 JUMPIFNOT                        R25 ; [+40]
      290 GETTABLEKS                       R33 R0 K33 ["interactable"]
      292 JUMPIFNOT                        R33 ; [+37]
      293 GETUPVAL                         R33 8
      294 GETUPVAL                         R34 9
      295 DUPTABLE                         R35 K42 [{"icon", "size", "onActivated", "testId", "LayoutOrder"}]
      296 GETUPVAL                         R36 0
      297 GETTABLEKS                       R36 R36 K43 ["Enums"]
      299 GETTABLEKS                       R36 R36 K44 ["IconName"]
      301 GETTABLEKS                       R36 R36 K45 ["TwoArrowsSpinClockwise"]
      303 SETTABLEKS                       R36 R35 K37 ["icon"]
      305 GETUPVAL                         R36 0
      306 GETTABLEKS                       R36 R36 K43 ["Enums"]
      308 GETTABLEKS                       R36 R36 K46 ["InputSize"]
      310 GETTABLEKS                       R36 R36 K47 ["XSmall"]
      312 SETTABLEKS                       R36 R35 K38 ["size"]
      314 SETTABLEKS                       R29 R35 K39 ["onActivated"]
      316 GETUPVAL                         R36 10
      317 GETTABLEKS                       R36 R36 K48 ["SegmentationPropertyRow"]
      319 GETTABLEKS                       R36 R36 K49 ["SuggestButton"]
      321 SETTABLEKS                       R36 R35 K40 ["testId"]
      323 LENGTH                           R37 R8
      324 ADDK                             R36 R37 K35 [2]
      325 SETTABLEKS                       R36 R35 K41 ["LayoutOrder"]
      327 CALL                             R33 2 1
      328 SETTABLEKS                       R33 R32 K50 ["pill_resuggest"]
      330 GETUPVAL                         R33 11
      331 CALL                             R33 0 1
      332 GETTABLEKS                       R34 R3 K51 ["minParts"]
      334 LENGTH                           R36 R8
      335 JUMPIFLT                         R6 R36 ; [+2]
      337 LOADB                            R35 0 +1
      338 LOADB                            R35 1
      339 LOADB                            R36 0
      340 JUMPIFEQKNIL                     R34 ; [+11]
      342 LOADB                            R36 0
      343 LENGTH                           R37 R8
      344 LOADN                            R38 0
      345 JUMPIFNOTLT                      R38 R37 ; [+6]
      347 LENGTH                           R37 R8
      348 JUMPIFLT                         R37 R34 ; [+2]
      350 LOADB                            R36 0 +1
      351 LOADB                            R36 1
      352 GETIMPORT                        R38 K53 [next]
      354 MOVE                             R39 R32
      355 CALL                             R38 1 1
      356 JUMPIFNOTEQKNIL                  R38 ; [+2]
      358 LOADB                            R37 0 +1
      359 LOADB                            R37 1
      360 NEWTABLE                         R38 2 0
      362 GETUPVAL                         R40 3
      363 GETTABLEKS                       R40 R40 K17 ["FFlagAssistantSegmentationUIFixes"]
      365 JUMPIFNOT                        R40 ; [+5]
      366 JUMPIFNOT                        R37 ; [+2]
      367 LOADK                            R39 K54 ["bg-surface-200 radius-small padding-small size-full-0 auto-y"]
      368 JUMP                             ; [+3]
      369 LOADK                            R39 K55 ["size-full-0 auto-y"]
      370 JUMP                             ; [+1]
      371 LOADK                            R39 K56 ["bg-surface-200 radius-small padding-xsmall size-full-0 auto-y"]
      372 LOADB                            R40 1
      373 SETTABLE                         R40 R38 R39
      374 OR                               R39 R35 R36
      375 SETTABLEKS                       R39 R38 K57 ["stroke-alert"]
      377 LOADK                            R40 K58 ["Stack_"]
      378 LENGTH                           R41 R8
      379 LOADK                            R42 K59 ["_"]
      380 GETTABLEKS                       R49 R18 K18 ["current"]
      382 FASTCALL1                        TOSTRING R49 ; [+2]
      383 GETIMPORT                        R48 K61 [tostring]
      385 CALL                             R48 1 1
      386 MOVE                             R43 R48
      387 LOADK                            R44 K59 ["_"]
      388 FASTCALL1                        TOSTRING R35 ; [+3]
      389 MOVE                             R49 R35
      390 GETIMPORT                        R48 K61 [tostring]
      392 CALL                             R48 1 1
      393 MOVE                             R45 R48
      394 LOADK                            R46 K59 ["_"]
      395 FASTCALL1                        TOSTRING R36 ; [+3]
      396 MOVE                             R48 R36
      397 GETIMPORT                        R47 K61 [tostring]
      399 CALL                             R47 1 1
      400 CONCAT                           R39 R40 R47
      401 NEWTABLE                         R40 1 0
      403 GETUPVAL                         R41 8
      404 GETUPVAL                         R42 12
      405 DUPTABLE                         R43 K64 [{["tag"] = "col gap-xxsmall size-full-0 auto-y"}]
      406 DUPTABLE                         R44 K68 [{"PillBox", "ErrorLabel", "Input"}]
      407 GETUPVAL                         R45 8
      408 GETUPVAL                         R46 12
      409 DUPTABLE                         R47 K69 [{"tag", "LayoutOrder"}]
      410 SETTABLEKS                       R38 R47 K62 ["tag"]
      412 MOVE                             R48 R33
      413 CALL                             R48 0 1
      414 SETTABLEKS                       R48 R47 K41 ["LayoutOrder"]
      416 DUPTABLE                         R48 K72 [{"Measure", "Pills"}]
      417 GETUPVAL                         R49 8
      418 GETUPVAL                         R50 12
      419 DUPTABLE                         R51 K75 [{["tag"] = "size-full-0", ["ref"]}]
      420 SETTABLEKS                       R14 R51 K74 ["ref"]
      422 CALL                             R49 2 1
      423 SETTABLEKS                       R49 R48 K70 ["Measure"]
      425 GETUPVAL                         R49 8
      426 GETUPVAL                         R50 12
      427 DUPTABLE                         R51 K78 [{["tag"] = "row wrap gap-xxsmall auto-y", ["Size"]}]
      428 LOADN                            R53 0
      429 JUMPIFNOTLT                      R53 R17 ; [+7]
      431 GETIMPORT                        R52 K81 [UDim2.fromOffset]
      433 MOVE                             R53 R17
      434 LOADN                            R54 0
      435 CALL                             R52 2 1
      436 JUMP                             ; [+5]
      437 GETIMPORT                        R52 K83 [UDim2.fromScale]
      439 LOADN                            R53 1
      440 LOADN                            R54 0
      441 CALL                             R52 2 1
      442 SETTABLEKS                       R52 R51 K77 ["Size"]
      444 MOVE                             R52 R32
      445 CALL                             R49 3 1
      446 SETTABLEKS                       R49 R48 K71 ["Pills"]
      448 CALL                             R45 3 1
      449 SETTABLEKS                       R45 R44 K65 ["PillBox"]
      451 JUMPIFNOT                        R35 ; [+25]
      452 GETUPVAL                         R45 8
      453 GETUPVAL                         R46 13
      454 DUPTABLE                         R47 K86 [{["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-alert", ["Text"], ["LayoutOrder"]}]
      455 GETUPVAL                         R48 2
      456 LOADK                            R50 K87 ["Segmentation"]
      457 LOADK                            R51 K88 ["MaxPartsError"]
      458 DUPTABLE                         R52 K90 [{"max"}]
      459 GETIMPORT                        R53 K92 [string.format]
      461 LOADK                            R54 K93 ["%d"]
      462 MOVE                             R55 R6
      463 CALL                             R53 2 1
      464 SETTABLEKS                       R53 R52 K89 ["max"]
      466 NAMECALL                         R48 R48 K94 ["getText"]
      468 CALL                             R48 4 1
      469 SETTABLEKS                       R48 R47 K85 ["Text"]
      471 MOVE                             R48 R33
      472 CALL                             R48 0 1
      473 SETTABLEKS                       R48 R47 K41 ["LayoutOrder"]
      475 CALL                             R45 2 1
      476 JUMP                             ; [+27]
      477 JUMPIFNOT                        R36 ; [+25]
      478 GETUPVAL                         R45 8
      479 GETUPVAL                         R46 13
      480 DUPTABLE                         R47 K86 [{["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-alert", ["Text"], ["LayoutOrder"]}]
      481 GETUPVAL                         R48 2
      482 LOADK                            R50 K87 ["Segmentation"]
      483 LOADK                            R51 K95 ["MinPartsError"]
      484 DUPTABLE                         R52 K97 [{"min"}]
      485 GETIMPORT                        R53 K92 [string.format]
      487 LOADK                            R54 K93 ["%d"]
      488 MOVE                             R55 R34
      489 CALL                             R53 2 1
      490 SETTABLEKS                       R53 R52 K96 ["min"]
      492 NAMECALL                         R48 R48 K94 ["getText"]
      494 CALL                             R48 4 1
      495 SETTABLEKS                       R48 R47 K85 ["Text"]
      497 MOVE                             R48 R33
      498 CALL                             R48 0 1
      499 SETTABLEKS                       R48 R47 K41 ["LayoutOrder"]
      501 CALL                             R45 2 1
      502 JUMP                             ; [+1]
      503 LOADNIL                          R45
      504 SETTABLEKS                       R45 R44 K66 ["ErrorLabel"]
      506 GETTABLEKS                       R46 R0 K33 ["interactable"]
      508 JUMPIFNOT                        R46 ; [+94]
      509 GETUPVAL                         R45 8
      510 GETUPVAL                         R46 12
      511 DUPTABLE                         R47 K99 [{["tag"] = "size-full-0 auto-y padding-xsmall radius-small bg-surface-300", ["LayoutOrder"]}]
      512 MOVE                             R48 R33
      513 CALL                             R48 0 1
      514 SETTABLEKS                       R48 R47 K41 ["LayoutOrder"]
      516 DUPTABLE                         R48 K100 [{"Input"}]
      517 GETUPVAL                         R49 8
      518 LOADK                            R50 K101 ["TextBox"]
      519 NEWTABLE                         R51 16 0
      521 GETIMPORT                        R52 K83 [UDim2.fromScale]
      523 LOADN                            R53 1
      524 LOADN                            R54 0
      525 CALL                             R52 2 1
      526 SETTABLEKS                       R52 R51 K77 ["Size"]
      528 GETIMPORT                        R52 K105 [Enum.AutomaticSize.Y]
      530 SETTABLEKS                       R52 R51 K103 ["AutomaticSize"]
      532 LOADN                            R52 1
      533 SETTABLEKS                       R52 R51 K106 ["BackgroundTransparency"]
      535 GETTABLEKS                       R52 R5 K107 ["InputPlaceholder"]
      537 SETTABLEKS                       R52 R51 K108 ["PlaceholderText"]
      539 LOADK                            R52 K26 [""]
      540 SETTABLEKS                       R52 R51 K85 ["Text"]
      542 SETTABLEKS                       R30 R51 K74 ["ref"]
      544 GETTABLEKS                       R52 R2 K109 ["Font"]
      546 SETTABLEKS                       R52 R51 K109 ["Font"]
      548 GETTABLEKS                       R52 R2 K110 ["FontSize"]
      550 SETTABLEKS                       R52 R51 K111 ["TextSize"]
      552 GETTABLEKS                       R52 R1 K112 ["Color"]
      554 GETTABLEKS                       R52 R52 K113 ["Content"]
      556 GETTABLEKS                       R52 R52 K114 ["Default"]
      558 GETTABLEKS                       R52 R52 K115 ["Color3"]
      560 SETTABLEKS                       R52 R51 K116 ["TextColor3"]
      562 GETTABLEKS                       R52 R1 K112 ["Color"]
      564 GETTABLEKS                       R52 R52 K113 ["Content"]
      566 GETTABLEKS                       R52 R52 K114 ["Default"]
      568 GETTABLEKS                       R52 R52 K117 ["Transparency"]
      570 SETTABLEKS                       R52 R51 K118 ["TextTransparency"]
      572 GETTABLEKS                       R52 R1 K112 ["Color"]
      574 GETTABLEKS                       R52 R52 K113 ["Content"]
      576 GETTABLEKS                       R52 R52 K119 ["Muted"]
      578 GETTABLEKS                       R52 R52 K115 ["Color3"]
      580 SETTABLEKS                       R52 R51 K120 ["PlaceholderColor3"]
      582 GETIMPORT                        R52 K123 [Enum.TextXAlignment.Left]
      584 SETTABLEKS                       R52 R51 K121 ["TextXAlignment"]
      586 LOADB                            R52 0
      587 SETTABLEKS                       R52 R51 K124 ["ClearTextOnFocus"]
      589 GETUPVAL                         R52 1
      590 GETTABLEKS                       R52 R52 K125 ["Event"]
      592 GETTABLEKS                       R52 R52 K126 ["FocusLost"]
      594 NEWCLOSURE                       R53 P10
      595 CAPTURE                          VAL R31
      596 CAPTURE                          VAL R30
      597 SETTABLE                         R53 R51 R52
      598 CALL                             R49 2 1
      599 SETTABLEKS                       R49 R48 K67 ["Input"]
      601 CALL                             R45 3 1
      602 JUMP                             ; [+1]
      603 LOADNIL                          R45
      604 SETTABLEKS                       R45 R44 K67 ["Input"]
      606 CALL                             R41 3 1
      607 SETTABLE                         R41 R40 R39
      608 GETUPVAL                         R41 8
      609 GETUPVAL                         R42 12
      610 DUPTABLE                         R43 K127 [{["tag"] = "col gap-xxsmall size-full-0 auto-y", ["LayoutOrder"]}]
      611 GETTABLEKS                       R44 R0 K41 ["LayoutOrder"]
      613 SETTABLEKS                       R44 R43 K41 ["LayoutOrder"]
      615 MOVE                             R44 R40
      616 CALL                             R41 3 -1
      617 RETURN                           R41 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Guest"]
       28 GETTABLEKS                       R6 R6 K11 ["Environment"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Flags"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETIMPORT                        R8 K1 [script]
       40 GETTABLEKS                       R8 R8 K4 ["Parent"]
       42 GETTABLEKS                       R8 R8 K4 ["Parent"]
       44 GETTABLEKS                       R8 R8 K13 ["PropertyRowTypes"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K14 ["Components"]
       51 GETTABLEKS                       R9 R9 K15 ["ShimmerGradient"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K16 ["Util"]
       58 GETTABLEKS                       R10 R10 K17 ["TestIds"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K18 ["Resources"]
       65 GETTABLEKS                       R11 R11 K19 ["Localization"]
       67 GETTABLEKS                       R11 R11 K20 ["Translator"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K14 ["Components"]
       74 GETTABLEKS                       R12 R12 K21 ["AskInput"]
       76 GETTABLEKS                       R12 R12 K22 ["useDebouncedSuggestion"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R13 R0 K23 ["Hooks"]
       83 GETTABLEKS                       R13 R13 K24 ["useLatest"]
       85 CALL                             R12 1 1
       86 GETTABLEKS                       R13 R2 K25 ["Icon"]
       88 GETTABLEKS                       R14 R2 K26 ["IconButton"]
       90 GETTABLEKS                       R15 R2 K27 ["Text"]
       92 GETTABLEKS                       R16 R2 K28 ["View"]
       94 GETTABLEKS                       R17 R4 K29 ["createNextOrder"]
       96 GETTABLEKS                       R18 R3 K30 ["createElement"]
       98 DUPCLOSURE                       R19 K31 [PROTO_0]
       99 DUPCLOSURE                       R20 K32 [PROTO_1]
      100 DUPCLOSURE                       R21 K33 [PROTO_2]
      101 CAPTURE                          VAL R17
      102 CAPTURE                          VAL R18
      103 CAPTURE                          VAL R16
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R8
      109 DUPCLOSURE                       R22 K34 [PROTO_17]
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R21
      118 CAPTURE                          VAL R18
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R17
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R15
      124 RETURN                           R22 1
