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
        1 GETTABLEKS                       R0 R0 K0 ["createStateMachineAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeViewportRect"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R3 R0 K2 ["Min"]
        7 GETTABLEKS                       R3 R3 K3 ["X"]
        9 GETTABLEKS                       R4 R0 K4 ["Max"]
       11 GETTABLEKS                       R4 R4 K3 ["X"]
       13 ADD                              R2 R3 R4
       14 DIVK                             R1 R2 K1 [2]
       15 GETTABLEKS                       R4 R0 K2 ["Min"]
       17 GETTABLEKS                       R4 R4 K5 ["Y"]
       19 GETTABLEKS                       R5 R0 K4 ["Max"]
       21 GETTABLEKS                       R5 R5 K5 ["Y"]
       23 ADD                              R3 R4 R5
       24 DIVK                             R2 R3 K1 [2]
       25 GETIMPORT                        R3 K8 [task.spawn]
       27 NEWCLOSURE                       R4 P0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 CALL                             R3 1 0
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R3 R3 K9 ["close"]
       35 CALL                             R3 0 0
       36 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["activate"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["close"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["frameSelection"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["close"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_13:
        0 NEWTABLE                         R0 0 3
        2 DUPTABLE                         R1 K1 [{"items"}]
        3 NEWTABLE                         R2 0 3
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
       61 GETUPVAL                         R6 6
       62 CALL                             R6 0 1
       63 JUMPIFNOT                        R6 ; [+23]
       64 DUPTABLE                         R5 K19 [{["id"] = "insertStateMachine", ["text"], ["onActivated"], ["isDisabled"]}]
       65 GETUPVAL                         R6 2
       66 LOADK                            R8 K7 ["Common"]
       67 LOADK                            R9 K8 ["AnimationEditor"]
       68 LOADK                            R10 K9 ["Menu"]
       69 LOADK                            R11 K20 ["InsertStateMachine"]
       70 NAMECALL                         R6 R6 K11 ["getExternalText"]
       72 CALL                             R6 5 1
       73 SETTABLEKS                       R6 R5 K4 ["text"]
       75 GETUPVAL                         R6 7
       76 SETTABLEKS                       R6 R5 K18 ["onActivated"]
       78 GETUPVAL                         R7 1
       79 CALL                             R7 0 1
       80 JUMPIFNOT                        R7 ; [+2]
       81 GETUPVAL                         R6 4
       82 JUMP                             ; [+1]
       83 LOADNIL                          R6
       84 SETTABLEKS                       R6 R5 K5 ["isDisabled"]
       86 JUMP                             ; [+1]
       87 LOADNIL                          R5
       88 SETLIST                          R2 R3 3 [1]
       90 SETTABLEKS                       R2 R1 K0 ["items"]
       92 DUPTABLE                         R2 K1 [{"items"}]
       93 GETUPVAL                         R3 8
       94 SETTABLEKS                       R3 R2 K0 ["items"]
       96 DUPTABLE                         R3 K1 [{"items"}]
       97 NEWTABLE                         R4 0 1
       99 DUPTABLE                         R5 K22 [{["id"] = "frameSelection", ["text"], ["onActivated"]}]
      100 GETUPVAL                         R7 1
      101 CALL                             R7 0 1
      102 JUMPIFNOT                        R7 ; [+20]
      103 GETUPVAL                         R7 9
      104 JUMPIFNOT                        R7 ; [+9]
      105 GETUPVAL                         R6 2
      106 LOADK                            R8 K7 ["Common"]
      107 LOADK                            R9 K8 ["AnimationEditor"]
      108 LOADK                            R10 K9 ["Menu"]
      109 LOADK                            R11 K23 ["FrameSelection"]
      110 NAMECALL                         R6 R6 K11 ["getExternalText"]
      112 CALL                             R6 5 1
      113 JUMP                             ; [+10]
      114 GETUPVAL                         R6 2
      115 LOADK                            R8 K7 ["Common"]
      116 LOADK                            R9 K8 ["AnimationEditor"]
      117 LOADK                            R10 K9 ["Menu"]
      118 LOADK                            R11 K24 ["FrameAll"]
      119 NAMECALL                         R6 R6 K11 ["getExternalText"]
      121 CALL                             R6 5 1
      122 JUMP                             ; [+1]
      123 LOADK                            R6 K25 ["Frame Selection"]
      124 SETTABLEKS                       R6 R5 K4 ["text"]
      126 GETUPVAL                         R7 1
      127 CALL                             R7 0 1
      128 JUMPIFNOT                        R7 ; [+2]
      129 GETUPVAL                         R6 10
      130 JUMP                             ; [+3]
      131 GETUPVAL                         R6 11
      132 GETTABLEKS                       R6 R6 K21 ["frameSelection"]
      134 SETTABLEKS                       R6 R5 K18 ["onActivated"]
      136 SETLIST                          R4 R5 1 [1]
      138 SETTABLEKS                       R4 R3 K0 ["items"]
      140 SETLIST                          R0 R1 3 [1]
      142 RETURN                           R0 1

PROTO_14:
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
       93 GETUPVAL                         R12 0
       94 GETTABLEKS                       R12 R12 K0 ["useContext"]
       96 GETUPVAL                         R13 8
       97 GETTABLEKS                       R13 R13 K2 ["Context"]
       99 CALL                             R12 1 1
      100 GETUPVAL                         R13 0
      101 GETTABLEKS                       R13 R13 K15 ["useCallback"]
      103 NEWCLOSURE                       R14 P2
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R0
      107 NEWTABLE                         R15 0 3
      109 GETTABLEKS                       R16 R12 K16 ["createStateMachineAsync"]
      111 MOVE                             R17 R1
      112 GETTABLEKS                       R18 R0 K11 ["close"]
      114 SETLIST                          R15 R16 3 [1]
      116 CALL                             R13 2 1
      117 DUPTABLE                         R14 K19 [{"duplicate", "delete"}]
      118 GETUPVAL                         R15 9
      119 GETUPVAL                         R16 10
      120 LOADK                            R17 K20 ["Common"]
      121 LOADK                            R18 K21 ["Duplicate"]
      122 CALL                             R16 2 -1
      123 CALL                             R15 -1 1
      124 SETTABLEKS                       R15 R14 K17 ["duplicate"]
      126 GETUPVAL                         R15 9
      127 GETUPVAL                         R16 10
      128 LOADK                            R17 K20 ["Common"]
      129 LOADK                            R18 K22 ["Delete"]
      130 CALL                             R16 2 -1
      131 CALL                             R15 -1 1
      132 SETTABLEKS                       R15 R14 K18 ["delete"]
      134 GETUPVAL                         R15 11
      135 CALL                             R15 0 1
      136 GETUPVAL                         R16 0
      137 GETTABLEKS                       R16 R16 K8 ["useMemo"]
      139 NEWCLOSURE                       R17 P3
      140 CAPTURE                          UPVAL U6
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R0
      143 CAPTURE                          VAL R15
      144 NEWTABLE                         R18 0 3
      146 MOVE                             R19 R15
      147 MOVE                             R20 R2
      148 GETTABLEKS                       R21 R0 K11 ["close"]
      150 SETLIST                          R18 R19 3 [1]
      152 CALL                             R16 2 1
      153 GETUPVAL                         R17 12
      154 GETTABLEKS                       R17 R17 K23 ["useEventCallback"]
      156 NEWCLOSURE                       R18 P4
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R0
      159 CAPTURE                          VAL R8
      160 CALL                             R17 1 1
      161 GETUPVAL                         R18 0
      162 GETTABLEKS                       R18 R18 K15 ["useCallback"]
      164 NEWCLOSURE                       R19 P5
      165 CAPTURE                          VAL R1
      166 CAPTURE                          VAL R0
      167 NEWTABLE                         R20 0 2
      169 MOVE                             R21 R1
      170 GETTABLEKS                       R22 R0 K11 ["close"]
      172 SETLIST                          R20 R21 2 [1]
      174 CALL                             R18 2 1
      175 GETUPVAL                         R20 6
      176 CALL                             R20 0 1
      177 JUMPIFNOT                        R20 ; [+7]
      178 GETUPVAL                         R19 4
      179 GETTABLEKS                       R19 R19 K7 ["useSignalState"]
      181 GETTABLEKS                       R20 R1 K24 ["observeSelectionRect"]
      183 CALL                             R19 1 1
      184 JUMP                             ; [+1]
      185 LOADNIL                          R19
      186 GETUPVAL                         R21 6
      187 CALL                             R21 0 1
      188 JUMPIFNOT                        R21 ; [+7]
      189 GETUPVAL                         R20 4
      190 GETTABLEKS                       R20 R20 K7 ["useSignalState"]
      192 GETTABLEKS                       R21 R11 K25 ["observeSelectedGraphIsEphemeral"]
      194 CALL                             R20 1 1
      195 JUMP                             ; [+1]
      196 LOADNIL                          R20
      197 GETUPVAL                         R21 0
      198 GETTABLEKS                       R21 R21 K8 ["useMemo"]
      200 NEWCLOSURE                       R22 P6
      201 CAPTURE                          UPVAL U13
      202 CAPTURE                          UPVAL U6
      203 CAPTURE                          VAL R2
      204 CAPTURE                          VAL R6
      205 CAPTURE                          VAL R20
      206 CAPTURE                          VAL R7
      207 CAPTURE                          UPVAL U14
      208 CAPTURE                          VAL R13
      209 CAPTURE                          VAL R16
      210 CAPTURE                          VAL R19
      211 CAPTURE                          VAL R18
      212 CAPTURE                          VAL R1
      213 NEWTABLE                         R23 0 10
      215 MOVE                             R24 R6
      216 MOVE                             R25 R7
      217 GETUPVAL                         R27 6
      218 CALL                             R27 0 1
      219 JUMPIFNOT                        R27 ; [+2]
      220 MOVE                             R26 R18
      221 JUMP                             ; [+2]
      222 GETTABLEKS                       R26 R1 K26 ["frameSelection"]
      224 GETUPVAL                         R28 6
      225 CALL                             R28 0 1
      226 JUMPIFNOT                        R28 ; [+2]
      227 MOVE                             R27 R19
      228 JUMP                             ; [+1]
      229 LOADNIL                          R27
      230 GETUPVAL                         R29 6
      231 CALL                             R29 0 1
      232 JUMPIFNOT                        R29 ; [+2]
      233 MOVE                             R28 R20
      234 JUMP                             ; [+1]
      235 LOADNIL                          R28
      236 MOVE                             R29 R2
      237 MOVE                             R30 R16
      238 GETTABLEKS                       R31 R14 K17 ["duplicate"]
      240 GETTABLEKS                       R31 R31 K27 ["menuItem"]
      242 GETTABLEKS                       R32 R14 K18 ["delete"]
      244 GETTABLEKS                       R32 R32 K27 ["menuItem"]
      246 MOVE                             R33 R13
      247 SETLIST                          R23 R24 10 [1]
      249 CALL                             R21 2 1
      250 GETTABLEKS                       R22 R0 K28 ["isOpen"]
      252 JUMPIF                           R22 ; [+2]
      253 LOADNIL                          R22
      254 RETURN                           R22 1
      255 GETUPVAL                         R22 0
      256 GETTABLEKS                       R22 R22 K29 ["createElement"]
      258 GETUPVAL                         R23 15
      259 GETTABLEKS                       R23 R23 K30 ["Menu"]
      261 DUPTABLE                         R24 K35 [{"isOpen", "items", "onActivated", "onPressedOutside", "size"}]
      262 GETTABLEKS                       R25 R0 K28 ["isOpen"]
      264 SETTABLEKS                       R25 R24 K28 ["isOpen"]
      266 GETTABLEKS                       R26 R9 K36 ["isParameterOnlyInsertMenu"]
      268 JUMPIFNOT                        R26 ; [+2]
      269 MOVE                             R25 R10
      270 JUMP                             ; [+6]
      271 GETTABLEKS                       R26 R9 K37 ["isDataOnlyInsertMenu"]
      273 JUMPIFNOT                        R26 ; [+2]
      274 MOVE                             R25 R6
      275 JUMP                             ; [+1]
      276 MOVE                             R25 R21
      277 SETTABLEKS                       R25 R24 K31 ["items"]
      279 SETTABLEKS                       R17 R24 K32 ["onActivated"]
      281 GETTABLEKS                       R25 R0 K11 ["close"]
      283 SETTABLEKS                       R25 R24 K33 ["onPressedOutside"]
      285 GETUPVAL                         R25 15
      286 GETTABLEKS                       R25 R25 K38 ["Enums"]
      288 GETTABLEKS                       R25 R25 K39 ["InputSize"]
      290 GETTABLEKS                       R25 R25 K40 ["XSmall"]
      292 SETTABLEKS                       R25 R24 K34 ["size"]
      294 CALL                             R22 2 -1
      295 RETURN                           R22 -1

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
       72 GETTABLEKS                       R11 R0 K9 ["Contexts"]
       74 GETTABLEKS                       R11 R11 K17 ["StateMachineEditorContext"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K18 ["Flags"]
       81 GETTABLEKS                       R12 R12 K19 ["getFFlagAnimGraphUI_RunTimeDebug"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K18 ["Flags"]
       88 GETTABLEKS                       R13 R13 K20 ["getFFlagAnimGraphUI_StateMachineNode"]
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
      109 DUPCLOSURE                       R17 K26 [PROTO_14]
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R1
      126 RETURN                           R17 1
