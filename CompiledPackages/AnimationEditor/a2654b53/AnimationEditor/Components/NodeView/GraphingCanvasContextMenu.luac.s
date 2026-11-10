PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Util"]
        3 GETTABLEKS                       R0 R0 K1 ["StudioUri"]
        5 GETTABLEKS                       R0 R0 K2 ["fromAction"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 NEWTABLE                         R4 0 2
        9 MOVE                             R5 R0
       10 MOVE                             R6 R1
       11 SETLIST                          R4 R5 2 [1]
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeGraphNodeMap"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R6 R5 K1 ["nodeType"]
        8 GETIMPORT                        R8 K5 [Enum.AnimationNodeType.GraphOutput]
       10 FASTCALL1                        TOSTRING R8 ; [+2]
       11 GETIMPORT                        R7 K7 [tostring]
       13 CALL                             R7 1 1
       14 JUMPIFNOTEQ                      R6 R7 ; [+3]
       16 LOADB                            R6 1
       17 RETURN                           R6 1
       18 FORGLOOP                         R1 2 ; [-13]
       20 LOADB                            R1 0
       21 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 RETURN                           R0 1
        4 GETIMPORT                        R1 K3 [Enum.AnimationNodeType.GraphOutput]
        6 FASTCALL1                        TOSTRING R1 ; [+2]
        7 GETIMPORT                        R0 K5 [tostring]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 0 0
       12 GETUPVAL                         R2 1
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 FORGPREP                         R2
       16 NEWTABLE                         R7 0 0
       18 GETTABLEKS                       R8 R6 K6 ["items"]
       20 LOADNIL                          R9
       21 LOADNIL                          R10
       22 FORGPREP                         R8
       23 GETTABLEKS                       R13 R12 K7 ["id"]
       25 JUMPIFEQ                         R13 R0 ; [+8]
       27 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
       29 MOVE                             R14 R7
       30 MOVE                             R15 R12
       31 GETIMPORT                        R13 K10 [table.insert]
       33 CALL                             R13 2 0
       34 FORGLOOP                         R8 2 ; [-12]
       36 LENGTH                           R8 R7
       37 LOADN                            R9 0
       38 JUMPIFNOTLT                      R9 R8 ; [+10]
       40 DUPTABLE                         R10 K11 [{"items"}]
       41 SETTABLEKS                       R7 R10 K6 ["items"]
       43 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       45 MOVE                             R9 R1
       46 GETIMPORT                        R8 K10 [table.insert]
       48 CALL                             R8 2 0
       49 FORGLOOP                         R2 2 ; [-34]
       51 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["activate"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["close"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R3 K4 [{"id", "text", "isDisabled", "onActivated"}]
        1 SETTABLEKS                       R0 R3 K0 ["id"]
        3 GETUPVAL                         R4 0
        4 LOADK                            R6 K5 ["Common"]
        5 LOADK                            R7 K6 ["AnimationEditor"]
        6 LOADK                            R8 K7 ["Menu"]
        7 MOVE                             R9 R1
        8 NAMECALL                         R4 R4 K8 ["getExternalText"]
       10 CALL                             R4 5 1
       11 SETTABLEKS                       R4 R3 K1 ["text"]
       13 GETTABLEKS                       R5 R2 K9 ["isEnabled"]
       15 NOT                              R4 R5
       16 SETTABLEKS                       R4 R3 K2 ["isDisabled"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U1
       21 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       23 RETURN                           R3 1

PROTO_8:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 NEWTABLE                         R1 0 5
        5 MOVE                             R2 R0
        6 LOADK                            R3 K0 ["cut"]
        7 LOADK                            R4 K1 ["Cut"]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K0 ["cut"]
       11 CALL                             R2 3 1
       12 MOVE                             R3 R0
       13 LOADK                            R4 K2 ["copy"]
       14 LOADK                            R5 K3 ["Copy"]
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K2 ["copy"]
       18 CALL                             R3 3 1
       19 MOVE                             R4 R0
       20 LOADK                            R5 K4 ["paste"]
       21 LOADK                            R6 K5 ["Paste"]
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R7 R7 K4 ["paste"]
       25 CALL                             R4 3 1
       26 MOVE                             R5 R0
       27 LOADK                            R6 K6 ["duplicate"]
       28 LOADK                            R7 K7 ["Duplicate"]
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R8 R8 K6 ["duplicate"]
       32 CALL                             R5 3 1
       33 MOVE                             R6 R0
       34 LOADK                            R7 K8 ["delete"]
       35 LOADK                            R8 K9 ["Delete"]
       36 GETUPVAL                         R9 2
       37 GETTABLEKS                       R9 R9 K8 ["delete"]
       39 CALL                             R6 3 1
       40 SETLIST                          R1 R2 5 [1]
       42 RETURN                           R1 1

PROTO_9:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 GETTABLEKS                       R6 R5 K3 ["tryActivate"]
       13 MOVE                             R7 R0
       14 CALL                             R6 1 1
       15 JUMPIFNOT                        R6 ; [+5]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K4 ["close"]
       19 CALL                             R6 0 0
       20 RETURN                           R0 0
       21 FORGLOOP                         R1 2 ; [-11]
       23 GETUPVAL                         R1 2
       24 MOVE                             R2 R0
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["frameSelection"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["close"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R0 0 3
        2 DUPTABLE                         R1 K1 [{"items"}]
        3 NEWTABLE                         R2 0 2
        5 DUPTABLE                         R4 K6 [{["id"] = "insertNode", ["text"], [3], ["isDisabled"]}]
        6 GETUPVAL                         R5 0
        7 LOADK                            R7 K7 ["Common"]
        8 LOADK                            R8 K8 ["AnimationEditor"]
        9 LOADK                            R9 K9 ["Menu"]
       10 LOADK                            R10 K10 ["InsertNode"]
       11 NAMECALL                         R5 R5 K11 ["getExternalText"]
       13 CALL                             R5 5 1
       14 SETTABLEKS                       R5 R4 K4 ["text"]
       16 GETUPVAL                         R5 1
       17 SETTABLEKS                       R5 R4 K0 ["items"]
       19 GETUPVAL                         R5 2
       20 SETTABLEKS                       R5 R4 K5 ["isDisabled"]
       22 MOVE                             R3 R4
       23 DUPTABLE                         R4 K13 [{["id"] = "insertParameter", ["text"], [3], ["isDisabled"]}]
       24 GETUPVAL                         R5 0
       25 LOADK                            R7 K7 ["Common"]
       26 LOADK                            R8 K8 ["AnimationEditor"]
       27 LOADK                            R9 K9 ["Menu"]
       28 LOADK                            R10 K14 ["InsertParameter"]
       29 NAMECALL                         R5 R5 K11 ["getExternalText"]
       31 CALL                             R5 5 1
       32 SETTABLEKS                       R5 R4 K4 ["text"]
       34 GETUPVAL                         R5 3
       35 SETTABLEKS                       R5 R4 K0 ["items"]
       37 GETUPVAL                         R5 2
       38 SETTABLEKS                       R5 R4 K5 ["isDisabled"]
       40 SETLIST                          R2 R3 2 [1]
       42 SETTABLEKS                       R2 R1 K0 ["items"]
       44 DUPTABLE                         R2 K1 [{"items"}]
       45 GETUPVAL                         R3 4
       46 SETTABLEKS                       R3 R2 K0 ["items"]
       48 DUPTABLE                         R3 K1 [{"items"}]
       49 NEWTABLE                         R4 0 1
       51 DUPTABLE                         R5 K17 [{["id"] = "frameSelection", ["text"], ["onActivated"]}]
       52 GETUPVAL                         R7 5
       53 JUMPIFNOT                        R7 ; [+9]
       54 GETUPVAL                         R6 0
       55 LOADK                            R8 K7 ["Common"]
       56 LOADK                            R9 K8 ["AnimationEditor"]
       57 LOADK                            R10 K9 ["Menu"]
       58 LOADK                            R11 K18 ["FrameSelection"]
       59 NAMECALL                         R6 R6 K11 ["getExternalText"]
       61 CALL                             R6 5 1
       62 JUMP                             ; [+8]
       63 GETUPVAL                         R6 0
       64 LOADK                            R8 K7 ["Common"]
       65 LOADK                            R9 K8 ["AnimationEditor"]
       66 LOADK                            R10 K9 ["Menu"]
       67 LOADK                            R11 K19 ["FrameAll"]
       68 NAMECALL                         R6 R6 K11 ["getExternalText"]
       70 CALL                             R6 5 1
       71 SETTABLEKS                       R6 R5 K4 ["text"]
       73 GETUPVAL                         R6 6
       74 SETTABLEKS                       R6 R5 K16 ["onActivated"]
       76 SETLIST                          R4 R5 1 [1]
       78 SETTABLEKS                       R4 R3 K0 ["items"]
       80 SETLIST                          R0 R1 3 [1]
       82 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ViewportRectContext"]
        6 GETTABLEKS                       R2 R2 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K3 ["ContextServices"]
       12 GETTABLEKS                       R2 R2 K4 ["Localization"]
       14 NAMECALL                         R2 R2 K5 ["use"]
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K6 ["useInsertNodeMenuItems"]
       20 CALL                             R3 0 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K0 ["useContext"]
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R5 R5 K2 ["Context"]
       27 CALL                             R4 1 1
       28 GETUPVAL                         R5 4
       29 GETTABLEKS                       R5 R5 K7 ["useSignalState"]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K8 ["useMemo"]
       34 NEWCLOSURE                       R7 P0
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          VAL R4
       37 NEWTABLE                         R8 0 1
       39 GETTABLEKS                       R9 R4 K9 ["observeGraphNodeMap"]
       41 SETLIST                          R8 R9 1 [1]
       43 CALL                             R6 2 -1
       44 CALL                             R5 -1 1
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K8 ["useMemo"]
       48 NEWCLOSURE                       R7 P1
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R3
       51 NEWTABLE                         R8 0 2
       53 MOVE                             R9 R3
       54 MOVE                             R10 R5
       55 SETLIST                          R8 R9 2 [1]
       57 CALL                             R6 2 1
       58 GETUPVAL                         R7 1
       59 GETTABLEKS                       R7 R7 K10 ["useParameterMenuItems"]
       61 GETTABLEKS                       R8 R0 K11 ["close"]
       63 LOADB                            R9 1
       64 CALL                             R7 2 1
       65 GETUPVAL                         R8 1
       66 GETTABLEKS                       R8 R8 K12 ["useContextMenuOnActivated"]
       68 GETTABLEKS                       R9 R0 K11 ["close"]
       70 CALL                             R8 1 1
       71 GETUPVAL                         R9 1
       72 GETTABLEKS                       R9 R9 K13 ["useContextMenuInsertMode"]
       74 CALL                             R9 0 1
       75 GETUPVAL                         R10 1
       76 GETTABLEKS                       R10 R10 K14 ["useExistingParameterMenuItems"]
       78 GETTABLEKS                       R11 R0 K11 ["close"]
       80 CALL                             R10 1 1
       81 GETUPVAL                         R11 0
       82 GETTABLEKS                       R11 R11 K0 ["useContext"]
       84 GETUPVAL                         R12 6
       85 GETTABLEKS                       R12 R12 K2 ["Context"]
       87 CALL                             R11 1 1
       88 DUPTABLE                         R12 K17 [{"duplicate", "delete"}]
       89 GETUPVAL                         R13 7
       90 GETUPVAL                         R14 8
       91 LOADK                            R15 K18 ["Common"]
       92 LOADK                            R16 K19 ["Duplicate"]
       93 CALL                             R14 2 -1
       94 CALL                             R13 -1 1
       95 SETTABLEKS                       R13 R12 K15 ["duplicate"]
       97 GETUPVAL                         R13 7
       98 GETUPVAL                         R14 8
       99 LOADK                            R15 K18 ["Common"]
      100 LOADK                            R16 K20 ["Delete"]
      101 CALL                             R14 2 -1
      102 CALL                             R13 -1 1
      103 SETTABLEKS                       R13 R12 K16 ["delete"]
      105 GETUPVAL                         R13 9
      106 CALL                             R13 0 1
      107 GETUPVAL                         R14 0
      108 GETTABLEKS                       R14 R14 K8 ["useMemo"]
      110 NEWCLOSURE                       R15 P2
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R0
      113 CAPTURE                          VAL R13
      114 NEWTABLE                         R16 0 3
      116 MOVE                             R17 R13
      117 MOVE                             R18 R2
      118 GETTABLEKS                       R19 R0 K11 ["close"]
      120 SETLIST                          R16 R17 3 [1]
      122 CALL                             R14 2 1
      123 GETUPVAL                         R15 10
      124 GETTABLEKS                       R15 R15 K21 ["useEventCallback"]
      126 NEWCLOSURE                       R16 P3
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R0
      129 CAPTURE                          VAL R8
      130 CALL                             R15 1 1
      131 GETUPVAL                         R16 0
      132 GETTABLEKS                       R16 R16 K22 ["useCallback"]
      134 NEWCLOSURE                       R17 P4
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R0
      137 NEWTABLE                         R18 0 2
      139 MOVE                             R19 R1
      140 GETTABLEKS                       R20 R0 K11 ["close"]
      142 SETLIST                          R18 R19 2 [1]
      144 CALL                             R16 2 1
      145 GETUPVAL                         R17 4
      146 GETTABLEKS                       R17 R17 K7 ["useSignalState"]
      148 GETTABLEKS                       R18 R1 K23 ["observeSelectionRect"]
      150 CALL                             R17 1 1
      151 GETUPVAL                         R18 4
      152 GETTABLEKS                       R18 R18 K7 ["useSignalState"]
      154 GETTABLEKS                       R19 R11 K24 ["observeSelectedGraphIsEphemeral"]
      156 CALL                             R18 1 1
      157 GETUPVAL                         R19 0
      158 GETTABLEKS                       R19 R19 K8 ["useMemo"]
      160 NEWCLOSURE                       R20 P5
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R6
      163 CAPTURE                          VAL R18
      164 CAPTURE                          VAL R7
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R17
      167 CAPTURE                          VAL R16
      168 NEWTABLE                         R21 0 9
      170 MOVE                             R22 R6
      171 MOVE                             R23 R7
      172 MOVE                             R24 R16
      173 MOVE                             R25 R17
      174 MOVE                             R26 R18
      175 MOVE                             R27 R2
      176 MOVE                             R28 R14
      177 GETTABLEKS                       R29 R12 K15 ["duplicate"]
      179 GETTABLEKS                       R29 R29 K25 ["menuItem"]
      181 GETTABLEKS                       R30 R12 K16 ["delete"]
      183 GETTABLEKS                       R30 R30 K25 ["menuItem"]
      185 SETLIST                          R21 R22 9 [1]
      187 CALL                             R19 2 1
      188 GETTABLEKS                       R20 R0 K26 ["isOpen"]
      190 JUMPIF                           R20 ; [+2]
      191 LOADNIL                          R20
      192 RETURN                           R20 1
      193 GETUPVAL                         R20 0
      194 GETTABLEKS                       R20 R20 K27 ["createElement"]
      196 GETUPVAL                         R21 11
      197 GETTABLEKS                       R21 R21 K28 ["Menu"]
      199 DUPTABLE                         R22 K33 [{"isOpen", "items", "onActivated", "onPressedOutside", "size"}]
      200 GETTABLEKS                       R23 R0 K26 ["isOpen"]
      202 SETTABLEKS                       R23 R22 K26 ["isOpen"]
      204 GETTABLEKS                       R24 R9 K34 ["isParameterOnlyInsertMenu"]
      206 JUMPIFNOT                        R24 ; [+2]
      207 MOVE                             R23 R10
      208 JUMP                             ; [+6]
      209 GETTABLEKS                       R24 R9 K35 ["isDataOnlyInsertMenu"]
      211 JUMPIFNOT                        R24 ; [+2]
      212 MOVE                             R23 R6
      213 JUMP                             ; [+1]
      214 MOVE                             R23 R19
      215 SETTABLEKS                       R23 R22 K29 ["items"]
      217 SETTABLEKS                       R15 R22 K30 ["onActivated"]
      219 GETTABLEKS                       R23 R0 K11 ["close"]
      221 SETTABLEKS                       R23 R22 K31 ["onPressedOutside"]
      223 GETUPVAL                         R23 11
      224 GETTABLEKS                       R23 R23 K36 ["Enums"]
      226 GETTABLEKS                       R23 R23 K37 ["InputSize"]
      228 GETTABLEKS                       R23 R23 K38 ["XSmall"]
      230 SETTABLEKS                       R23 R22 K32 ["size"]
      232 CALL                             R20 2 -1
      233 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K10 ["NativeGraphContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["NodeGraphing"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Parent"]
       46 GETTABLEKS                       R7 R7 K13 ["ReactUtils"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K9 ["Contexts"]
       53 GETTABLEKS                       R8 R8 K14 ["SelectedGraphContext"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K6 ["Parent"]
       60 GETTABLEKS                       R9 R9 K15 ["Signals"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K6 ["Parent"]
       67 GETTABLEKS                       R10 R10 K16 ["SignalsReact"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K17 ["Hooks"]
       74 GETTABLEKS                       R11 R11 K18 ["useActionMenuItem"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K17 ["Hooks"]
       81 GETTABLEKS                       R12 R12 K19 ["useNodeStudioActions"]
       83 CALL                             R11 1 1
       84 DUPCLOSURE                       R12 K20 [PROTO_0]
       85 DUPCLOSURE                       R13 K21 [PROTO_2]
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R2
       88 DUPCLOSURE                       R14 K22 [PROTO_12]
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R1
      101 RETURN                           R14 1
