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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["activate"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["close"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+3]
        3 NEWTABLE                         R0 0 0
        5 RETURN                           R0 1
        6 NEWCLOSURE                       R0 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 NEWTABLE                         R1 0 5
       12 MOVE                             R2 R0
       13 LOADK                            R3 K0 ["cut"]
       14 LOADK                            R4 K1 ["Cut"]
       15 GETUPVAL                         R5 4
       16 GETTABLEKS                       R5 R5 K0 ["cut"]
       18 CALL                             R2 3 1
       19 MOVE                             R3 R0
       20 LOADK                            R4 K2 ["copy"]
       21 LOADK                            R5 K3 ["Copy"]
       22 GETUPVAL                         R6 4
       23 GETTABLEKS                       R6 R6 K2 ["copy"]
       25 CALL                             R3 3 1
       26 MOVE                             R4 R0
       27 LOADK                            R5 K4 ["paste"]
       28 LOADK                            R6 K5 ["Paste"]
       29 GETUPVAL                         R7 4
       30 GETTABLEKS                       R7 R7 K4 ["paste"]
       32 CALL                             R4 3 1
       33 MOVE                             R5 R0
       34 LOADK                            R6 K6 ["duplicate"]
       35 LOADK                            R7 K7 ["Duplicate"]
       36 GETUPVAL                         R8 4
       37 GETTABLEKS                       R8 R8 K6 ["duplicate"]
       39 CALL                             R5 3 1
       40 MOVE                             R6 R0
       41 LOADK                            R7 K8 ["delete"]
       42 LOADK                            R8 K9 ["Delete"]
       43 GETUPVAL                         R9 4
       44 GETTABLEKS                       R9 R9 K8 ["delete"]
       46 CALL                             R6 3 1
       47 SETLIST                          R1 R2 5 [1]
       49 RETURN                           R1 1

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["frameSelection"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["close"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R0 0 3
        2 DUPTABLE                         R1 K1 [{"items"}]
        3 NEWTABLE                         R2 0 2
        5 GETUPVAL                         R3 0
        6 DUPTABLE                         R4 K6 [{["id"] = "insertNode", ["text"], [3], ["isDisabled"]}]
        7 GETUPVAL                         R6 1
        8 CALL                             R6 0 1
        9 JUMPIFNOT                        R6 ; [+9]
       10 GETUPVAL                         R5 2
       11 LOADK                            R7 K7 ["Common"]
       12 LOADK                            R8 K8 ["AnimationEditor"]
       13 LOADK                            R9 K9 ["Menu"]
       14 LOADK                            R10 K10 ["InsertNode"]
       15 NAMECALL                         R5 R5 K11 ["getExternalText"]
       17 CALL                             R5 5 1
       18 JUMP                             ; [+1]
       19 LOADK                            R5 K12 ["Insert Node"]
       20 SETTABLEKS                       R5 R4 K4 ["text"]
       22 GETUPVAL                         R5 3
       23 SETTABLEKS                       R5 R4 K0 ["items"]
       25 GETUPVAL                         R6 1
       26 CALL                             R6 0 1
       27 JUMPIFNOT                        R6 ; [+2]
       28 GETUPVAL                         R5 4
       29 JUMP                             ; [+1]
       30 LOADNIL                          R5
       31 SETTABLEKS                       R5 R4 K5 ["isDisabled"]
       33 CALL                             R3 1 1
       34 DUPTABLE                         R4 K14 [{["id"] = "insertParameter", ["text"], [3], ["isDisabled"]}]
       35 GETUPVAL                         R6 1
       36 CALL                             R6 0 1
       37 JUMPIFNOT                        R6 ; [+9]
       38 GETUPVAL                         R5 2
       39 LOADK                            R7 K7 ["Common"]
       40 LOADK                            R8 K8 ["AnimationEditor"]
       41 LOADK                            R9 K9 ["Menu"]
       42 LOADK                            R10 K15 ["InsertParameter"]
       43 NAMECALL                         R5 R5 K11 ["getExternalText"]
       45 CALL                             R5 5 1
       46 JUMP                             ; [+1]
       47 LOADK                            R5 K16 ["Insert Parameter"]
       48 SETTABLEKS                       R5 R4 K4 ["text"]
       50 GETUPVAL                         R5 5
       51 SETTABLEKS                       R5 R4 K0 ["items"]
       53 GETUPVAL                         R6 1
       54 CALL                             R6 0 1
       55 JUMPIFNOT                        R6 ; [+2]
       56 GETUPVAL                         R5 4
       57 JUMP                             ; [+1]
       58 LOADNIL                          R5
       59 SETTABLEKS                       R5 R4 K5 ["isDisabled"]
       61 SETLIST                          R2 R3 2 [1]
       63 SETTABLEKS                       R2 R1 K0 ["items"]
       65 DUPTABLE                         R2 K1 [{"items"}]
       66 GETUPVAL                         R4 6
       67 CALL                             R4 0 1
       68 JUMPIFNOT                        R4 ; [+2]
       69 GETUPVAL                         R3 7
       70 JUMP                             ; [+14]
       71 NEWTABLE                         R3 0 2
       73 GETUPVAL                         R4 8
       74 GETTABLEKS                       R4 R4 K17 ["duplicate"]
       76 GETTABLEKS                       R4 R4 K18 ["menuItem"]
       78 GETUPVAL                         R5 8
       79 GETTABLEKS                       R5 R5 K19 ["delete"]
       81 GETTABLEKS                       R5 R5 K18 ["menuItem"]
       83 SETLIST                          R3 R4 2 [1]
       85 SETTABLEKS                       R3 R2 K0 ["items"]
       87 DUPTABLE                         R3 K1 [{"items"}]
       88 NEWTABLE                         R4 0 1
       90 DUPTABLE                         R5 K22 [{["id"] = "frameSelection", ["text"], ["onActivated"]}]
       91 GETUPVAL                         R7 1
       92 CALL                             R7 0 1
       93 JUMPIFNOT                        R7 ; [+20]
       94 GETUPVAL                         R7 9
       95 JUMPIFNOT                        R7 ; [+9]
       96 GETUPVAL                         R6 2
       97 LOADK                            R8 K7 ["Common"]
       98 LOADK                            R9 K8 ["AnimationEditor"]
       99 LOADK                            R10 K9 ["Menu"]
      100 LOADK                            R11 K23 ["FrameSelection"]
      101 NAMECALL                         R6 R6 K11 ["getExternalText"]
      103 CALL                             R6 5 1
      104 JUMP                             ; [+10]
      105 GETUPVAL                         R6 2
      106 LOADK                            R8 K7 ["Common"]
      107 LOADK                            R9 K8 ["AnimationEditor"]
      108 LOADK                            R10 K9 ["Menu"]
      109 LOADK                            R11 K24 ["FrameAll"]
      110 NAMECALL                         R6 R6 K11 ["getExternalText"]
      112 CALL                             R6 5 1
      113 JUMP                             ; [+1]
      114 LOADK                            R6 K25 ["Frame Selection"]
      115 SETTABLEKS                       R6 R5 K4 ["text"]
      117 GETUPVAL                         R7 1
      118 CALL                             R7 0 1
      119 JUMPIFNOT                        R7 ; [+2]
      120 GETUPVAL                         R6 10
      121 JUMP                             ; [+3]
      122 GETUPVAL                         R6 11
      123 GETTABLEKS                       R6 R6 K20 ["frameSelection"]
      125 SETTABLEKS                       R6 R5 K21 ["onActivated"]
      127 SETLIST                          R4 R5 1 [1]
      129 SETTABLEKS                       R4 R3 K0 ["items"]
      131 SETLIST                          R0 R1 3 [1]
      133 RETURN                           R0 1

PROTO_9:
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
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K7 ["useParameterMenuItems"]
       24 GETTABLEKS                       R5 R0 K8 ["close"]
       26 LOADB                            R6 1
       27 CALL                             R4 2 1
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K9 ["useContextMenuOnActivated"]
       31 GETTABLEKS                       R6 R0 K8 ["close"]
       33 CALL                             R5 1 1
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K10 ["useContextMenuInsertMode"]
       37 CALL                             R6 0 1
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R7 R7 K11 ["useExistingParameterMenuItems"]
       41 GETTABLEKS                       R8 R0 K8 ["close"]
       43 CALL                             R7 1 1
       44 GETUPVAL                         R9 3
       45 CALL                             R9 0 1
       46 JUMPIFNOT                        R9 ; [+8]
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R8 R8 K0 ["useContext"]
       50 GETUPVAL                         R9 4
       51 GETTABLEKS                       R9 R9 K2 ["Context"]
       53 CALL                             R8 1 1
       54 JUMP                             ; [+1]
       55 LOADNIL                          R8
       56 DUPTABLE                         R9 K14 [{"duplicate", "delete"}]
       57 GETUPVAL                         R10 5
       58 GETUPVAL                         R11 6
       59 LOADK                            R12 K15 ["Common"]
       60 LOADK                            R13 K16 ["Duplicate"]
       61 CALL                             R11 2 -1
       62 CALL                             R10 -1 1
       63 SETTABLEKS                       R10 R9 K12 ["duplicate"]
       65 GETUPVAL                         R10 5
       66 GETUPVAL                         R11 6
       67 LOADK                            R12 K15 ["Common"]
       68 LOADK                            R13 K17 ["Delete"]
       69 CALL                             R11 2 -1
       70 CALL                             R10 -1 1
       71 SETTABLEKS                       R10 R9 K13 ["delete"]
       73 GETUPVAL                         R10 7
       74 CALL                             R10 0 1
       75 GETUPVAL                         R11 0
       76 GETTABLEKS                       R11 R11 K18 ["useMemo"]
       78 NEWCLOSURE                       R12 P0
       79 CAPTURE                          UPVAL U8
       80 CAPTURE                          UPVAL U3
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R0
       83 CAPTURE                          VAL R10
       84 NEWTABLE                         R13 0 3
       86 MOVE                             R14 R10
       87 MOVE                             R15 R2
       88 GETTABLEKS                       R16 R0 K8 ["close"]
       90 SETLIST                          R13 R14 3 [1]
       92 CALL                             R11 2 1
       93 GETUPVAL                         R12 9
       94 GETTABLEKS                       R12 R12 K19 ["useEventCallback"]
       96 NEWCLOSURE                       R13 P1
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R0
       99 CAPTURE                          VAL R5
      100 CALL                             R12 1 1
      101 GETUPVAL                         R13 0
      102 GETTABLEKS                       R13 R13 K20 ["useCallback"]
      104 NEWCLOSURE                       R14 P2
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R0
      107 NEWTABLE                         R15 0 2
      109 MOVE                             R16 R1
      110 GETTABLEKS                       R17 R0 K8 ["close"]
      112 SETLIST                          R15 R16 2 [1]
      114 CALL                             R13 2 1
      115 GETUPVAL                         R15 3
      116 CALL                             R15 0 1
      117 JUMPIFNOT                        R15 ; [+7]
      118 GETUPVAL                         R14 10
      119 GETTABLEKS                       R14 R14 K21 ["useSignalState"]
      121 GETTABLEKS                       R15 R1 K22 ["observeSelectionRect"]
      123 CALL                             R14 1 1
      124 JUMP                             ; [+1]
      125 LOADNIL                          R14
      126 GETUPVAL                         R16 3
      127 CALL                             R16 0 1
      128 JUMPIFNOT                        R16 ; [+7]
      129 GETUPVAL                         R15 10
      130 GETTABLEKS                       R15 R15 K21 ["useSignalState"]
      132 GETTABLEKS                       R16 R8 K23 ["observeSelectedGraphIsEphemeral"]
      134 CALL                             R15 1 1
      135 JUMP                             ; [+1]
      136 LOADNIL                          R15
      137 GETUPVAL                         R16 0
      138 GETTABLEKS                       R16 R16 K18 ["useMemo"]
      140 NEWCLOSURE                       R17 P3
      141 CAPTURE                          UPVAL U11
      142 CAPTURE                          UPVAL U3
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R4
      147 CAPTURE                          UPVAL U8
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R1
      153 NEWTABLE                         R18 0 9
      155 MOVE                             R19 R3
      156 MOVE                             R20 R4
      157 GETUPVAL                         R22 3
      158 CALL                             R22 0 1
      159 JUMPIFNOT                        R22 ; [+2]
      160 MOVE                             R21 R13
      161 JUMP                             ; [+2]
      162 GETTABLEKS                       R21 R1 K24 ["frameSelection"]
      164 GETUPVAL                         R23 3
      165 CALL                             R23 0 1
      166 JUMPIFNOT                        R23 ; [+2]
      167 MOVE                             R22 R14
      168 JUMP                             ; [+1]
      169 LOADNIL                          R22
      170 GETUPVAL                         R24 3
      171 CALL                             R24 0 1
      172 JUMPIFNOT                        R24 ; [+2]
      173 MOVE                             R23 R15
      174 JUMP                             ; [+1]
      175 LOADNIL                          R23
      176 MOVE                             R24 R2
      177 MOVE                             R25 R11
      178 GETTABLEKS                       R26 R9 K12 ["duplicate"]
      180 GETTABLEKS                       R26 R26 K25 ["menuItem"]
      182 GETTABLEKS                       R27 R9 K13 ["delete"]
      184 GETTABLEKS                       R27 R27 K25 ["menuItem"]
      186 SETLIST                          R18 R19 9 [1]
      188 CALL                             R16 2 1
      189 GETTABLEKS                       R17 R0 K26 ["isOpen"]
      191 JUMPIF                           R17 ; [+2]
      192 LOADNIL                          R17
      193 RETURN                           R17 1
      194 GETUPVAL                         R17 0
      195 GETTABLEKS                       R17 R17 K27 ["createElement"]
      197 GETUPVAL                         R18 12
      198 GETTABLEKS                       R18 R18 K28 ["Menu"]
      200 DUPTABLE                         R19 K33 [{"isOpen", "items", "onActivated", "onPressedOutside", "size"}]
      201 GETTABLEKS                       R20 R0 K26 ["isOpen"]
      203 SETTABLEKS                       R20 R19 K26 ["isOpen"]
      205 GETTABLEKS                       R21 R6 K34 ["isParameterOnlyInsertMenu"]
      207 JUMPIFNOT                        R21 ; [+2]
      208 MOVE                             R20 R7
      209 JUMP                             ; [+6]
      210 GETTABLEKS                       R21 R6 K35 ["isDataOnlyInsertMenu"]
      212 JUMPIFNOT                        R21 ; [+2]
      213 MOVE                             R20 R3
      214 JUMP                             ; [+1]
      215 MOVE                             R20 R16
      216 SETTABLEKS                       R20 R19 K29 ["items"]
      218 SETTABLEKS                       R12 R19 K30 ["onActivated"]
      220 GETTABLEKS                       R20 R0 K8 ["close"]
      222 SETTABLEKS                       R20 R19 K31 ["onPressedOutside"]
      224 GETUPVAL                         R20 12
      225 GETTABLEKS                       R20 R20 K36 ["Enums"]
      227 GETTABLEKS                       R20 R20 K37 ["InputSize"]
      229 GETTABLEKS                       R20 R20 K38 ["XSmall"]
      231 SETTABLEKS                       R20 R19 K32 ["size"]
      233 CALL                             R17 2 -1
      234 RETURN                           R17 -1

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
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["NodeGraphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K11 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K13 ["SelectedGraphContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Parent"]
       53 GETTABLEKS                       R8 R8 K14 ["SignalsReact"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K15 ["Flags"]
       60 GETTABLEKS                       R9 R9 K16 ["getFFlagAnimGraphUIStudioActionOverrides"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K15 ["Flags"]
       67 GETTABLEKS                       R10 R10 K17 ["getFFlagAnimGraphUI_RunTimeDebug"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K18 ["Hooks"]
       74 GETTABLEKS                       R11 R11 K19 ["useActionMenuItem"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K18 ["Hooks"]
       81 GETTABLEKS                       R12 R12 K20 ["useNodeStudioActions"]
       83 CALL                             R11 1 1
       84 DUPCLOSURE                       R12 K21 [PROTO_0]
       85 DUPCLOSURE                       R13 K22 [PROTO_2]
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R2
       88 DUPCLOSURE                       R14 K23 [PROTO_9]
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R1
      102 RETURN                           R14 1
