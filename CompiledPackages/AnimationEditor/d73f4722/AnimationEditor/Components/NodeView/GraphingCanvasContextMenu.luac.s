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
       21 GETUPVAL                         R4 3
       22 CALL                             R4 0 1
       23 JUMPIFNOT                        R4 ; [+39]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K0 ["useContext"]
       27 GETUPVAL                         R5 4
       28 GETTABLEKS                       R5 R5 K2 ["Context"]
       30 CALL                             R4 1 1
       31 MOVE                             R5 R3
       32 GETUPVAL                         R6 5
       33 GETTABLEKS                       R6 R6 K7 ["useSignalState"]
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K8 ["useMemo"]
       38 NEWCLOSURE                       R8 P0
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          VAL R4
       41 NEWTABLE                         R9 0 1
       43 GETTABLEKS                       R10 R4 K9 ["observeGraphNodeMap"]
       45 SETLIST                          R9 R10 1 [1]
       47 CALL                             R7 2 -1
       48 CALL                             R6 -1 1
       49 GETUPVAL                         R7 0
       50 GETTABLEKS                       R7 R7 K8 ["useMemo"]
       52 NEWCLOSURE                       R8 P1
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R5
       55 NEWTABLE                         R9 0 2
       57 MOVE                             R10 R5
       58 MOVE                             R11 R6
       59 SETLIST                          R9 R10 2 [1]
       61 CALL                             R7 2 1
       62 MOVE                             R3 R7
       63 GETUPVAL                         R4 1
       64 GETTABLEKS                       R4 R4 K10 ["useParameterMenuItems"]
       66 GETTABLEKS                       R5 R0 K11 ["close"]
       68 LOADB                            R6 1
       69 CALL                             R4 2 1
       70 GETUPVAL                         R5 1
       71 GETTABLEKS                       R5 R5 K12 ["useContextMenuOnActivated"]
       73 GETTABLEKS                       R6 R0 K11 ["close"]
       75 CALL                             R5 1 1
       76 GETUPVAL                         R6 1
       77 GETTABLEKS                       R6 R6 K13 ["useContextMenuInsertMode"]
       79 CALL                             R6 0 1
       80 GETUPVAL                         R7 1
       81 GETTABLEKS                       R7 R7 K14 ["useExistingParameterMenuItems"]
       83 GETTABLEKS                       R8 R0 K11 ["close"]
       85 CALL                             R7 1 1
       86 GETUPVAL                         R9 7
       87 CALL                             R9 0 1
       88 JUMPIFNOT                        R9 ; [+8]
       89 GETUPVAL                         R8 0
       90 GETTABLEKS                       R8 R8 K0 ["useContext"]
       92 GETUPVAL                         R9 8
       93 GETTABLEKS                       R9 R9 K2 ["Context"]
       95 CALL                             R8 1 1
       96 JUMP                             ; [+1]
       97 LOADNIL                          R8
       98 DUPTABLE                         R9 K17 [{"duplicate", "delete"}]
       99 GETUPVAL                         R10 9
      100 GETUPVAL                         R11 10
      101 LOADK                            R12 K18 ["Common"]
      102 LOADK                            R13 K19 ["Duplicate"]
      103 CALL                             R11 2 -1
      104 CALL                             R10 -1 1
      105 SETTABLEKS                       R10 R9 K15 ["duplicate"]
      107 GETUPVAL                         R10 9
      108 GETUPVAL                         R11 10
      109 LOADK                            R12 K18 ["Common"]
      110 LOADK                            R13 K20 ["Delete"]
      111 CALL                             R11 2 -1
      112 CALL                             R10 -1 1
      113 SETTABLEKS                       R10 R9 K16 ["delete"]
      115 GETUPVAL                         R10 11
      116 CALL                             R10 0 1
      117 GETUPVAL                         R11 0
      118 GETTABLEKS                       R11 R11 K8 ["useMemo"]
      120 NEWCLOSURE                       R12 P2
      121 CAPTURE                          UPVAL U12
      122 CAPTURE                          UPVAL U7
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R0
      125 CAPTURE                          VAL R10
      126 NEWTABLE                         R13 0 3
      128 MOVE                             R14 R10
      129 MOVE                             R15 R2
      130 GETTABLEKS                       R16 R0 K11 ["close"]
      132 SETLIST                          R13 R14 3 [1]
      134 CALL                             R11 2 1
      135 GETUPVAL                         R12 13
      136 GETTABLEKS                       R12 R12 K21 ["useEventCallback"]
      138 NEWCLOSURE                       R13 P3
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R0
      141 CAPTURE                          VAL R5
      142 CALL                             R12 1 1
      143 GETUPVAL                         R13 0
      144 GETTABLEKS                       R13 R13 K22 ["useCallback"]
      146 NEWCLOSURE                       R14 P4
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R0
      149 NEWTABLE                         R15 0 2
      151 MOVE                             R16 R1
      152 GETTABLEKS                       R17 R0 K11 ["close"]
      154 SETLIST                          R15 R16 2 [1]
      156 CALL                             R13 2 1
      157 GETUPVAL                         R15 7
      158 CALL                             R15 0 1
      159 JUMPIFNOT                        R15 ; [+7]
      160 GETUPVAL                         R14 5
      161 GETTABLEKS                       R14 R14 K7 ["useSignalState"]
      163 GETTABLEKS                       R15 R1 K23 ["observeSelectionRect"]
      165 CALL                             R14 1 1
      166 JUMP                             ; [+1]
      167 LOADNIL                          R14
      168 GETUPVAL                         R16 7
      169 CALL                             R16 0 1
      170 JUMPIFNOT                        R16 ; [+7]
      171 GETUPVAL                         R15 5
      172 GETTABLEKS                       R15 R15 K7 ["useSignalState"]
      174 GETTABLEKS                       R16 R8 K24 ["observeSelectedGraphIsEphemeral"]
      176 CALL                             R15 1 1
      177 JUMP                             ; [+1]
      178 LOADNIL                          R15
      179 GETUPVAL                         R16 0
      180 GETTABLEKS                       R16 R16 K8 ["useMemo"]
      182 NEWCLOSURE                       R17 P5
      183 CAPTURE                          UPVAL U14
      184 CAPTURE                          UPVAL U7
      185 CAPTURE                          VAL R2
      186 CAPTURE                          REF R3
      187 CAPTURE                          VAL R15
      188 CAPTURE                          VAL R4
      189 CAPTURE                          UPVAL U12
      190 CAPTURE                          VAL R11
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R13
      194 CAPTURE                          VAL R1
      195 NEWTABLE                         R18 0 9
      197 MOVE                             R19 R3
      198 MOVE                             R20 R4
      199 GETUPVAL                         R22 7
      200 CALL                             R22 0 1
      201 JUMPIFNOT                        R22 ; [+2]
      202 MOVE                             R21 R13
      203 JUMP                             ; [+2]
      204 GETTABLEKS                       R21 R1 K25 ["frameSelection"]
      206 GETUPVAL                         R23 7
      207 CALL                             R23 0 1
      208 JUMPIFNOT                        R23 ; [+2]
      209 MOVE                             R22 R14
      210 JUMP                             ; [+1]
      211 LOADNIL                          R22
      212 GETUPVAL                         R24 7
      213 CALL                             R24 0 1
      214 JUMPIFNOT                        R24 ; [+2]
      215 MOVE                             R23 R15
      216 JUMP                             ; [+1]
      217 LOADNIL                          R23
      218 MOVE                             R24 R2
      219 MOVE                             R25 R11
      220 GETTABLEKS                       R26 R9 K15 ["duplicate"]
      222 GETTABLEKS                       R26 R26 K26 ["menuItem"]
      224 GETTABLEKS                       R27 R9 K16 ["delete"]
      226 GETTABLEKS                       R27 R27 K26 ["menuItem"]
      228 SETLIST                          R18 R19 9 [1]
      230 CALL                             R16 2 1
      231 GETTABLEKS                       R17 R0 K27 ["isOpen"]
      233 JUMPIF                           R17 ; [+3]
      234 LOADNIL                          R17
      235 CLOSEUPVALS                      R3
      236 RETURN                           R17 1
      237 GETUPVAL                         R17 0
      238 GETTABLEKS                       R17 R17 K28 ["createElement"]
      240 GETUPVAL                         R18 15
      241 GETTABLEKS                       R18 R18 K29 ["Menu"]
      243 DUPTABLE                         R19 K34 [{"isOpen", "items", "onActivated", "onPressedOutside", "size"}]
      244 GETTABLEKS                       R20 R0 K27 ["isOpen"]
      246 SETTABLEKS                       R20 R19 K27 ["isOpen"]
      248 GETTABLEKS                       R21 R6 K35 ["isParameterOnlyInsertMenu"]
      250 JUMPIFNOT                        R21 ; [+2]
      251 MOVE                             R20 R7
      252 JUMP                             ; [+6]
      253 GETTABLEKS                       R21 R6 K36 ["isDataOnlyInsertMenu"]
      255 JUMPIFNOT                        R21 ; [+2]
      256 MOVE                             R20 R3
      257 JUMP                             ; [+1]
      258 MOVE                             R20 R16
      259 SETTABLEKS                       R20 R19 K30 ["items"]
      261 SETTABLEKS                       R12 R19 K31 ["onActivated"]
      263 GETTABLEKS                       R20 R0 K11 ["close"]
      265 SETTABLEKS                       R20 R19 K32 ["onPressedOutside"]
      267 GETUPVAL                         R20 15
      268 GETTABLEKS                       R20 R20 K37 ["Enums"]
      270 GETTABLEKS                       R20 R20 K38 ["InputSize"]
      272 GETTABLEKS                       R20 R20 K39 ["XSmall"]
      274 SETTABLEKS                       R20 R19 K33 ["size"]
      276 CALL                             R17 2 -1
      277 CLOSEUPVALS                      R3
      278 RETURN                           R17 -1

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
       74 GETTABLEKS                       R11 R11 K18 ["getFFlagAnimGraphLockOutput"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K17 ["Flags"]
       81 GETTABLEKS                       R12 R12 K19 ["getFFlagAnimGraphUIStudioActionOverrides"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K17 ["Flags"]
       88 GETTABLEKS                       R13 R13 K20 ["getFFlagAnimGraphUI_RunTimeDebug"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K21 ["Hooks"]
       95 GETTABLEKS                       R14 R14 K22 ["useActionMenuItem"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R15 R0 K21 ["Hooks"]
      102 GETTABLEKS                       R15 R15 K23 ["useNodeStudioActions"]
      104 CALL                             R14 1 1
      105 DUPCLOSURE                       R15 K24 [PROTO_0]
      106 DUPCLOSURE                       R16 K25 [PROTO_2]
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R2
      109 DUPCLOSURE                       R17 K26 [PROTO_12]
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R1
      126 RETURN                           R17 1
