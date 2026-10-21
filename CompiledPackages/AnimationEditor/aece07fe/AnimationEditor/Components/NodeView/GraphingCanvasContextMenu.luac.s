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
        3 GETUPVAL                         R5 0
        4 CALL                             R5 0 1
        5 JUMPIFNOT                        R5 ; [+9]
        6 GETUPVAL                         R4 1
        7 LOADK                            R6 K5 ["Common"]
        8 LOADK                            R7 K6 ["AnimationEditor"]
        9 LOADK                            R8 K7 ["Menu"]
       10 MOVE                             R9 R1
       11 NAMECALL                         R4 R4 K8 ["getExternalText"]
       13 CALL                             R4 5 1
       14 JUMP                             ; [+1]
       15 MOVE                             R4 R1
       16 SETTABLEKS                       R4 R3 K1 ["text"]
       18 GETTABLEKS                       R5 R2 K9 ["isEnabled"]
       20 NOT                              R4 R5
       21 SETTABLEKS                       R4 R3 K2 ["isDisabled"]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U2
       26 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       28 RETURN                           R3 1

PROTO_8:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 NEWTABLE                         R1 0 5
        6 MOVE                             R2 R0
        7 LOADK                            R3 K0 ["cut"]
        8 LOADK                            R4 K1 ["Cut"]
        9 GETUPVAL                         R5 3
       10 GETTABLEKS                       R5 R5 K0 ["cut"]
       12 CALL                             R2 3 1
       13 MOVE                             R3 R0
       14 LOADK                            R4 K2 ["copy"]
       15 LOADK                            R5 K3 ["Copy"]
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R6 R6 K2 ["copy"]
       19 CALL                             R3 3 1
       20 MOVE                             R4 R0
       21 LOADK                            R5 K4 ["paste"]
       22 LOADK                            R6 K5 ["Paste"]
       23 GETUPVAL                         R7 3
       24 GETTABLEKS                       R7 R7 K4 ["paste"]
       26 CALL                             R4 3 1
       27 MOVE                             R5 R0
       28 LOADK                            R6 K6 ["duplicate"]
       29 LOADK                            R7 K7 ["Duplicate"]
       30 GETUPVAL                         R8 3
       31 GETTABLEKS                       R8 R8 K6 ["duplicate"]
       33 CALL                             R5 3 1
       34 MOVE                             R6 R0
       35 LOADK                            R7 K8 ["delete"]
       36 LOADK                            R8 K9 ["Delete"]
       37 GETUPVAL                         R9 3
       38 GETTABLEKS                       R9 R9 K8 ["delete"]
       40 CALL                             R6 3 1
       41 SETLIST                          R1 R2 5 [1]
       43 RETURN                           R1 1

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
        6 GETUPVAL                         R6 0
        7 CALL                             R6 0 1
        8 JUMPIFNOT                        R6 ; [+9]
        9 GETUPVAL                         R5 1
       10 LOADK                            R7 K7 ["Common"]
       11 LOADK                            R8 K8 ["AnimationEditor"]
       12 LOADK                            R9 K9 ["Menu"]
       13 LOADK                            R10 K10 ["InsertNode"]
       14 NAMECALL                         R5 R5 K11 ["getExternalText"]
       16 CALL                             R5 5 1
       17 JUMP                             ; [+1]
       18 LOADK                            R5 K12 ["Insert Node"]
       19 SETTABLEKS                       R5 R4 K4 ["text"]
       21 GETUPVAL                         R5 2
       22 SETTABLEKS                       R5 R4 K0 ["items"]
       24 GETUPVAL                         R6 0
       25 CALL                             R6 0 1
       26 JUMPIFNOT                        R6 ; [+2]
       27 GETUPVAL                         R5 3
       28 JUMP                             ; [+1]
       29 LOADNIL                          R5
       30 SETTABLEKS                       R5 R4 K5 ["isDisabled"]
       32 MOVE                             R3 R4
       33 DUPTABLE                         R4 K14 [{["id"] = "insertParameter", ["text"], [3], ["isDisabled"]}]
       34 GETUPVAL                         R6 0
       35 CALL                             R6 0 1
       36 JUMPIFNOT                        R6 ; [+9]
       37 GETUPVAL                         R5 1
       38 LOADK                            R7 K7 ["Common"]
       39 LOADK                            R8 K8 ["AnimationEditor"]
       40 LOADK                            R9 K9 ["Menu"]
       41 LOADK                            R10 K15 ["InsertParameter"]
       42 NAMECALL                         R5 R5 K11 ["getExternalText"]
       44 CALL                             R5 5 1
       45 JUMP                             ; [+1]
       46 LOADK                            R5 K16 ["Insert Parameter"]
       47 SETTABLEKS                       R5 R4 K4 ["text"]
       49 GETUPVAL                         R5 4
       50 SETTABLEKS                       R5 R4 K0 ["items"]
       52 GETUPVAL                         R6 0
       53 CALL                             R6 0 1
       54 JUMPIFNOT                        R6 ; [+2]
       55 GETUPVAL                         R5 3
       56 JUMP                             ; [+1]
       57 LOADNIL                          R5
       58 SETTABLEKS                       R5 R4 K5 ["isDisabled"]
       60 SETLIST                          R2 R3 2 [1]
       62 SETTABLEKS                       R2 R1 K0 ["items"]
       64 DUPTABLE                         R2 K1 [{"items"}]
       65 GETUPVAL                         R3 5
       66 SETTABLEKS                       R3 R2 K0 ["items"]
       68 DUPTABLE                         R3 K1 [{"items"}]
       69 NEWTABLE                         R4 0 1
       71 DUPTABLE                         R5 K19 [{["id"] = "frameSelection", ["text"], ["onActivated"]}]
       72 GETUPVAL                         R7 0
       73 CALL                             R7 0 1
       74 JUMPIFNOT                        R7 ; [+20]
       75 GETUPVAL                         R7 6
       76 JUMPIFNOT                        R7 ; [+9]
       77 GETUPVAL                         R6 1
       78 LOADK                            R8 K7 ["Common"]
       79 LOADK                            R9 K8 ["AnimationEditor"]
       80 LOADK                            R10 K9 ["Menu"]
       81 LOADK                            R11 K20 ["FrameSelection"]
       82 NAMECALL                         R6 R6 K11 ["getExternalText"]
       84 CALL                             R6 5 1
       85 JUMP                             ; [+10]
       86 GETUPVAL                         R6 1
       87 LOADK                            R8 K7 ["Common"]
       88 LOADK                            R9 K8 ["AnimationEditor"]
       89 LOADK                            R10 K9 ["Menu"]
       90 LOADK                            R11 K21 ["FrameAll"]
       91 NAMECALL                         R6 R6 K11 ["getExternalText"]
       93 CALL                             R6 5 1
       94 JUMP                             ; [+1]
       95 LOADK                            R6 K22 ["Frame Selection"]
       96 SETTABLEKS                       R6 R5 K4 ["text"]
       98 GETUPVAL                         R7 0
       99 CALL                             R7 0 1
      100 JUMPIFNOT                        R7 ; [+2]
      101 GETUPVAL                         R6 7
      102 JUMP                             ; [+3]
      103 GETUPVAL                         R6 8
      104 GETTABLEKS                       R6 R6 K17 ["frameSelection"]
      106 SETTABLEKS                       R6 R5 K18 ["onActivated"]
      108 SETLIST                          R4 R5 1 [1]
      110 SETTABLEKS                       R4 R3 K0 ["items"]
      112 SETLIST                          R0 R1 3 [1]
      114 RETURN                           R0 1

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
       81 GETUPVAL                         R12 6
       82 CALL                             R12 0 1
       83 JUMPIFNOT                        R12 ; [+8]
       84 GETUPVAL                         R11 0
       85 GETTABLEKS                       R11 R11 K0 ["useContext"]
       87 GETUPVAL                         R12 7
       88 GETTABLEKS                       R12 R12 K2 ["Context"]
       90 CALL                             R11 1 1
       91 JUMP                             ; [+1]
       92 LOADNIL                          R11
       93 DUPTABLE                         R12 K17 [{"duplicate", "delete"}]
       94 GETUPVAL                         R13 8
       95 GETUPVAL                         R14 9
       96 LOADK                            R15 K18 ["Common"]
       97 LOADK                            R16 K19 ["Duplicate"]
       98 CALL                             R14 2 -1
       99 CALL                             R13 -1 1
      100 SETTABLEKS                       R13 R12 K15 ["duplicate"]
      102 GETUPVAL                         R13 8
      103 GETUPVAL                         R14 9
      104 LOADK                            R15 K18 ["Common"]
      105 LOADK                            R16 K20 ["Delete"]
      106 CALL                             R14 2 -1
      107 CALL                             R13 -1 1
      108 SETTABLEKS                       R13 R12 K16 ["delete"]
      110 GETUPVAL                         R13 10
      111 CALL                             R13 0 1
      112 GETUPVAL                         R14 0
      113 GETTABLEKS                       R14 R14 K8 ["useMemo"]
      115 NEWCLOSURE                       R15 P2
      116 CAPTURE                          UPVAL U6
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R0
      119 CAPTURE                          VAL R13
      120 NEWTABLE                         R16 0 3
      122 MOVE                             R17 R13
      123 MOVE                             R18 R2
      124 GETTABLEKS                       R19 R0 K11 ["close"]
      126 SETLIST                          R16 R17 3 [1]
      128 CALL                             R14 2 1
      129 GETUPVAL                         R15 11
      130 GETTABLEKS                       R15 R15 K21 ["useEventCallback"]
      132 NEWCLOSURE                       R16 P3
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R0
      135 CAPTURE                          VAL R8
      136 CALL                             R15 1 1
      137 GETUPVAL                         R16 0
      138 GETTABLEKS                       R16 R16 K22 ["useCallback"]
      140 NEWCLOSURE                       R17 P4
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R0
      143 NEWTABLE                         R18 0 2
      145 MOVE                             R19 R1
      146 GETTABLEKS                       R20 R0 K11 ["close"]
      148 SETLIST                          R18 R19 2 [1]
      150 CALL                             R16 2 1
      151 GETUPVAL                         R18 6
      152 CALL                             R18 0 1
      153 JUMPIFNOT                        R18 ; [+7]
      154 GETUPVAL                         R17 4
      155 GETTABLEKS                       R17 R17 K7 ["useSignalState"]
      157 GETTABLEKS                       R18 R1 K23 ["observeSelectionRect"]
      159 CALL                             R17 1 1
      160 JUMP                             ; [+1]
      161 LOADNIL                          R17
      162 GETUPVAL                         R19 6
      163 CALL                             R19 0 1
      164 JUMPIFNOT                        R19 ; [+7]
      165 GETUPVAL                         R18 4
      166 GETTABLEKS                       R18 R18 K7 ["useSignalState"]
      168 GETTABLEKS                       R19 R11 K24 ["observeSelectedGraphIsEphemeral"]
      170 CALL                             R18 1 1
      171 JUMP                             ; [+1]
      172 LOADNIL                          R18
      173 GETUPVAL                         R19 0
      174 GETTABLEKS                       R19 R19 K8 ["useMemo"]
      176 NEWCLOSURE                       R20 P5
      177 CAPTURE                          UPVAL U6
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R6
      180 CAPTURE                          VAL R18
      181 CAPTURE                          VAL R7
      182 CAPTURE                          VAL R14
      183 CAPTURE                          VAL R17
      184 CAPTURE                          VAL R16
      185 CAPTURE                          VAL R1
      186 NEWTABLE                         R21 0 9
      188 MOVE                             R22 R6
      189 MOVE                             R23 R7
      190 GETUPVAL                         R25 6
      191 CALL                             R25 0 1
      192 JUMPIFNOT                        R25 ; [+2]
      193 MOVE                             R24 R16
      194 JUMP                             ; [+2]
      195 GETTABLEKS                       R24 R1 K25 ["frameSelection"]
      197 GETUPVAL                         R26 6
      198 CALL                             R26 0 1
      199 JUMPIFNOT                        R26 ; [+2]
      200 MOVE                             R25 R17
      201 JUMP                             ; [+1]
      202 LOADNIL                          R25
      203 GETUPVAL                         R27 6
      204 CALL                             R27 0 1
      205 JUMPIFNOT                        R27 ; [+2]
      206 MOVE                             R26 R18
      207 JUMP                             ; [+1]
      208 LOADNIL                          R26
      209 MOVE                             R27 R2
      210 MOVE                             R28 R14
      211 GETTABLEKS                       R29 R12 K15 ["duplicate"]
      213 GETTABLEKS                       R29 R29 K26 ["menuItem"]
      215 GETTABLEKS                       R30 R12 K16 ["delete"]
      217 GETTABLEKS                       R30 R30 K26 ["menuItem"]
      219 SETLIST                          R21 R22 9 [1]
      221 CALL                             R19 2 1
      222 GETTABLEKS                       R20 R0 K27 ["isOpen"]
      224 JUMPIF                           R20 ; [+2]
      225 LOADNIL                          R20
      226 RETURN                           R20 1
      227 GETUPVAL                         R20 0
      228 GETTABLEKS                       R20 R20 K28 ["createElement"]
      230 GETUPVAL                         R21 12
      231 GETTABLEKS                       R21 R21 K29 ["Menu"]
      233 DUPTABLE                         R22 K34 [{"isOpen", "items", "onActivated", "onPressedOutside", "size"}]
      234 GETTABLEKS                       R23 R0 K27 ["isOpen"]
      236 SETTABLEKS                       R23 R22 K27 ["isOpen"]
      238 GETTABLEKS                       R24 R9 K35 ["isParameterOnlyInsertMenu"]
      240 JUMPIFNOT                        R24 ; [+2]
      241 MOVE                             R23 R10
      242 JUMP                             ; [+6]
      243 GETTABLEKS                       R24 R9 K36 ["isDataOnlyInsertMenu"]
      245 JUMPIFNOT                        R24 ; [+2]
      246 MOVE                             R23 R6
      247 JUMP                             ; [+1]
      248 MOVE                             R23 R19
      249 SETTABLEKS                       R23 R22 K30 ["items"]
      251 SETTABLEKS                       R15 R22 K31 ["onActivated"]
      253 GETTABLEKS                       R23 R0 K11 ["close"]
      255 SETTABLEKS                       R23 R22 K32 ["onPressedOutside"]
      257 GETUPVAL                         R23 12
      258 GETTABLEKS                       R23 R23 K37 ["Enums"]
      260 GETTABLEKS                       R23 R23 K38 ["InputSize"]
      262 GETTABLEKS                       R23 R23 K39 ["XSmall"]
      264 SETTABLEKS                       R23 R22 K33 ["size"]
      266 CALL                             R20 2 -1
      267 RETURN                           R20 -1

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
       72 GETTABLEKS                       R11 R0 K17 ["Flags"]
       74 GETTABLEKS                       R11 R11 K18 ["getFFlagAnimGraphUI_RunTimeDebug"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K19 ["Hooks"]
       81 GETTABLEKS                       R12 R12 K20 ["useActionMenuItem"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K19 ["Hooks"]
       88 GETTABLEKS                       R13 R13 K21 ["useNodeStudioActions"]
       90 CALL                             R12 1 1
       91 DUPCLOSURE                       R13 K22 [PROTO_0]
       92 DUPCLOSURE                       R14 K23 [PROTO_2]
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R2
       95 DUPCLOSURE                       R15 K24 [PROTO_12]
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R1
      109 RETURN                           R15 1
