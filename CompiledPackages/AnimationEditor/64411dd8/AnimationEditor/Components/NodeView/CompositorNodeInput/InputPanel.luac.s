PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K1 ["SetPosition"]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K1 ["SetPosition"]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R2 R5 K0 ["current"]
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETTABLEKS                       R7 R1 K2 ["Y"]
       15 GETTABLEKS                       R9 R6 K3 ["absolutePosition"]
       17 GETTABLEKS                       R8 R9 K2 ["Y"]
       19 JUMPIFNOTLT                      R8 R7 ; [+19]
       21 GETTABLEKS                       R7 R1 K2 ["Y"]
       23 GETTABLEKS                       R10 R6 K3 ["absolutePosition"]
       25 GETTABLEKS                       R9 R10 K2 ["Y"]
       27 GETTABLEKS                       R12 R6 K5 ["absoluteSize"]
       29 GETTABLEKS                       R11 R12 K2 ["Y"]
       31 DIVK                             R10 R11 K4 [2]
       32 ADD                              R8 R9 R10
       33 JUMPIFNOTLT                      R7 R8 ; [+5]
       35 GETUPVAL                         R7 2
       36 MOVE                             R8 R5
       37 CALL                             R7 1 0
       38 RETURN                           R0 0
       39 GETTABLEKS                       R7 R1 K2 ["Y"]
       41 GETTABLEKS                       R10 R6 K3 ["absolutePosition"]
       43 GETTABLEKS                       R9 R10 K2 ["Y"]
       45 GETTABLEKS                       R12 R6 K5 ["absoluteSize"]
       47 GETTABLEKS                       R11 R12 K2 ["Y"]
       49 DIVK                             R10 R11 K4 [2]
       50 ADD                              R8 R9 R10
       51 JUMPIFNOTLE                      R8 R7 ; [+18]
       53 GETTABLEKS                       R7 R1 K2 ["Y"]
       55 GETTABLEKS                       R10 R6 K3 ["absolutePosition"]
       57 GETTABLEKS                       R9 R10 K2 ["Y"]
       59 GETTABLEKS                       R11 R6 K5 ["absoluteSize"]
       61 GETTABLEKS                       R10 R11 K2 ["Y"]
       63 ADD                              R8 R9 R10
       64 JUMPIFNOTLT                      R7 R8 ; [+5]
       66 GETUPVAL                         R7 2
       67 ADDK                             R8 R5 K6 [1]
       68 CALL                             R7 1 0
       69 RETURN                           R0 0
       70 FORGLOOP                         R2 2 ; [-58]
       72 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+14]
        3 GETUPVAL                         R2 1
        4 JUMPIFEQKNIL                     R2 ; [+11]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K0 ["OnInputReordered"]
        9 NEWTABLE                         R3 0 1
       11 GETUPVAL                         R4 0
       12 SETLIST                          R3 R4 1 [1]
       14 GETUPVAL                         R4 1
       15 CALL                             R2 2 0
       16 GETUPVAL                         R2 3
       17 LOADNIL                          R3
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 4
       20 LOADNIL                          R3
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K1 ["Hooks"]
        9 GETTABLEKS                       R2 R3 K2 ["useMeasurableRef"]
       11 GETIMPORT                        R3 K5 [Vector2.zero]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K6 ["useState"]
       17 LOADNIL                          R4
       18 CALL                             R3 1 2
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K6 ["useState"]
       22 LOADNIL                          R6
       23 CALL                             R5 1 2
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R7 R8 K7 ["useCallback"]
       27 NEWCLOSURE                       R8 P0
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R4
       30 NEWTABLE                         R9 0 1
       32 MOVE                             R10 R2
       33 SETLIST                          R9 R10 1 [1]
       35 CALL                             R7 2 1
       36 GETUPVAL                         R9 0
       37 GETTABLEKS                       R8 R9 K7 ["useCallback"]
       39 NEWCLOSURE                       R9 P1
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R6
       43 NEWTABLE                         R10 0 4
       45 MOVE                             R11 R6
       46 MOVE                             R12 R5
       47 MOVE                             R13 R2
       48 GETTABLEKS                       R14 R1 K8 ["current"]
       50 SETLIST                          R10 R11 4 [1]
       52 CALL                             R8 2 1
       53 GETUPVAL                         R10 0
       54 GETTABLEKS                       R9 R10 K7 ["useCallback"]
       56 NEWCLOSURE                       R10 P2
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R6
       62 NEWTABLE                         R11 0 4
       64 GETTABLEKS                       R12 R0 K9 ["OnInputReordered"]
       66 MOVE                             R13 R2
       67 MOVE                             R14 R3
       68 MOVE                             R15 R5
       69 SETLIST                          R11 R12 4 [1]
       71 CALL                             R9 2 1
       72 DUPTABLE                         R10 K17 [{"absoluteSizesRef", "onDragStart", "onDragContinue", "onDragEnd", "draggedIndex", "highlightedIndex", "virtualRef"}]
       73 SETTABLEKS                       R1 R10 K10 ["absoluteSizesRef"]
       75 SETTABLEKS                       R7 R10 K11 ["onDragStart"]
       77 SETTABLEKS                       R8 R10 K12 ["onDragContinue"]
       79 SETTABLEKS                       R9 R10 K13 ["onDragEnd"]
       81 SETTABLEKS                       R3 R10 K14 ["draggedIndex"]
       83 SETTABLEKS                       R5 R10 K15 ["highlightedIndex"]
       85 SETTABLEKS                       R2 R10 K16 ["virtualRef"]
       87 RETURN                           R10 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOTEQKS                    R0 K0 ["Hover"] ; [+5]
        2 GETUPVAL                         R1 0
        3 LOADB                            R2 1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 JUMPIFNOTEQKS                    R0 K1 ["Default"] ; [+4]
        8 GETUPVAL                         R1 0
        9 LOADB                            R2 0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["observeAbsoluteSizeState"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+10]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K1 ["dragHelper"]
        9 GETTABLEKS                       R3 R4 K2 ["absoluteSizesRef"]
       11 GETTABLEKS                       R2 R3 K3 ["current"]
       13 GETUPVAL                         R3 2
       14 SETTABLE                         R1 R2 R3
       15 RETURN                           R0 0
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K1 ["dragHelper"]
       19 GETTABLEKS                       R3 R4 K2 ["absoluteSizesRef"]
       21 GETTABLEKS                       R2 R3 K3 ["current"]
       23 GETUPVAL                         R3 2
       24 LOADNIL                          R4
       25 SETTABLE                         R4 R2 R3
       26 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["InputPanelProps"]
        3 GETTABLEKS                       R1 R2 K1 ["OnInputChanged"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["InputPanelProps"]
        9 GETTABLEKS                       R1 R2 K1 ["OnInputChanged"]
       11 GETUPVAL                         R2 1
       12 MOVE                             R3 R0
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["dragHelper"]
        3 GETTABLEKS                       R2 R3 K1 ["onDragStart"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["dragHelper"]
        3 GETTABLEKS                       R2 R3 K1 ["onDragContinue"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["dragHelper"]
        3 GETTABLEKS                       R2 R3 K1 ["onDragEnd"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["join"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["input"]
        6 DUPTABLE                         R2 K3 [{"Weight"}]
        7 GETUPVAL                         R3 2
        8 SETTABLEKS                       R3 R2 K2 ["Weight"]
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["index"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["useState"]
        7 LOADB                            R4 0
        8 CALL                             R3 1 2
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R5 R6 K2 ["useRefToState"]
       12 MOVE                             R6 R3
       13 CALL                             R5 1 1
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R6 R7 K3 ["useEffect"]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          VAL R5
       19 CAPTURE                          VAL R3
       20 NEWTABLE                         R8 0 1
       22 MOVE                             R9 R3
       23 SETLIST                          R8 R9 1 [1]
       25 CALL                             R6 2 0
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R6 R7 K4 ["useCallback"]
       29 NEWCLOSURE                       R7 P1
       30 CAPTURE                          VAL R4
       31 NEWTABLE                         R8 0 1
       33 MOVE                             R9 R4
       34 SETLIST                          R8 R9 1 [1]
       36 CALL                             R6 2 1
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R7 R8 K3 ["useEffect"]
       40 NEWCLOSURE                       R8 P2
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R1
       45 NEWTABLE                         R9 0 2
       47 GETTABLEKS                       R10 R2 K5 ["observeAbsoluteSizeState"]
       49 MOVE                             R11 R1
       50 SETLIST                          R9 R10 2 [1]
       52 CALL                             R7 2 0
       53 GETUPVAL                         R8 1
       54 GETTABLEKS                       R7 R8 K4 ["useCallback"]
       56 NEWCLOSURE                       R8 P3
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R1
       59 NEWTABLE                         R9 0 2
       61 GETTABLEKS                       R11 R0 K6 ["InputPanelProps"]
       63 GETTABLEKS                       R10 R11 K7 ["OnInputChanged"]
       65 MOVE                             R11 R1
       66 SETLIST                          R9 R10 2 [1]
       68 CALL                             R7 2 1
       69 GETUPVAL                         R9 1
       70 GETTABLEKS                       R8 R9 K4 ["useCallback"]
       72 NEWCLOSURE                       R9 P4
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R1
       75 NEWTABLE                         R10 0 2
       77 GETTABLEKS                       R11 R0 K8 ["dragHelper"]
       79 MOVE                             R12 R1
       80 SETLIST                          R10 R11 2 [1]
       82 CALL                             R8 2 1
       83 GETUPVAL                         R10 1
       84 GETTABLEKS                       R9 R10 K4 ["useCallback"]
       86 NEWCLOSURE                       R10 P5
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R1
       89 NEWTABLE                         R11 0 2
       91 GETTABLEKS                       R12 R0 K8 ["dragHelper"]
       93 MOVE                             R13 R1
       94 SETLIST                          R11 R12 2 [1]
       96 CALL                             R9 2 1
       97 GETUPVAL                         R11 1
       98 GETTABLEKS                       R10 R11 K4 ["useCallback"]
      100 NEWCLOSURE                       R11 P6
      101 CAPTURE                          VAL R0
      102 CAPTURE                          VAL R1
      103 NEWTABLE                         R12 0 2
      105 GETTABLEKS                       R13 R0 K8 ["dragHelper"]
      107 MOVE                             R14 R1
      108 SETLIST                          R12 R13 2 [1]
      110 CALL                             R10 2 1
      111 GETUPVAL                         R12 4
      112 GETTABLEKS                       R11 R12 K9 ["useSignalState"]
      114 GETUPVAL                         R13 5
      115 GETTABLEKS                       R12 R13 K10 ["useObserveNodeWeight"]
      117 GETTABLEKS                       R14 R0 K11 ["input"]
      119 GETTABLEKS                       R13 R14 K12 ["ConnectedNodeId"]
      121 CALL                             R12 1 -1
      122 CALL                             R11 -1 1
      123 GETUPVAL                         R13 1
      124 GETTABLEKS                       R12 R13 K13 ["useMemo"]
      126 NEWCLOSURE                       R13 P7
      127 CAPTURE                          UPVAL U6
      128 CAPTURE                          VAL R0
      129 CAPTURE                          VAL R11
      130 NEWTABLE                         R14 0 2
      132 GETTABLEKS                       R15 R0 K11 ["input"]
      134 MOVE                             R16 R11
      135 SETLIST                          R14 R15 2 [1]
      137 CALL                             R12 2 1
      138 GETUPVAL                         R14 1
      139 GETTABLEKS                       R13 R14 K14 ["createElement"]
      141 GETUPVAL                         R15 1
      142 GETTABLEKS                       R14 R15 K15 ["Fragment"]
      144 NEWTABLE                         R15 0 0
      146 DUPTABLE                         R16 K18 [{"Divider", "Input"}]
      147 GETUPVAL                         R18 1
      148 GETTABLEKS                       R17 R18 K14 ["createElement"]
      150 GETUPVAL                         R18 7
      151 DUPTABLE                         R19 K21 [{"Highlighted", "LayoutOrder"}]
      152 GETTABLEKS                       R20 R0 K22 ["highlighted"]
      154 SETTABLEKS                       R20 R19 K19 ["Highlighted"]
      156 MULK                             R21 R1 K24 [2]
      157 SUBK                             R20 R21 K23 [1]
      158 SETTABLEKS                       R20 R19 K20 ["LayoutOrder"]
      160 CALL                             R17 2 1
      161 SETTABLEKS                       R17 R16 K16 ["Divider"]
      163 GETUPVAL                         R18 1
      164 GETTABLEKS                       R17 R18 K14 ["createElement"]
      166 GETUPVAL                         R19 8
      167 GETTABLEKS                       R18 R19 K25 ["View"]
      169 DUPTABLE                         R19 K29 [{"tag", "LayoutOrder", "ref", "onStateChanged"}]
      170 LOADK                            R21 K30 ["auto-xy gap-small size-full-700 data-testid=--compositor-node-input-%*"]
      171 MOVE                             R23 R1
      172 NAMECALL                         R21 R21 K31 ["format"]
      174 CALL                             R21 2 1
      175 MOVE                             R20 R21
      176 SETTABLEKS                       R20 R19 K26 ["tag"]
      178 MULK                             R20 R1 K24 [2]
      179 SETTABLEKS                       R20 R19 K20 ["LayoutOrder"]
      181 GETTABLEKS                       R20 R2 K32 ["setFrame"]
      183 SETTABLEKS                       R20 R19 K27 ["ref"]
      185 SETTABLEKS                       R6 R19 K28 ["onStateChanged"]
      187 DUPTABLE                         R20 K35 [{"Content", "DragDetector"}]
      188 GETUPVAL                         R22 1
      189 GETTABLEKS                       R21 R22 K14 ["createElement"]
      191 GETTABLEKS                       R23 R0 K6 ["InputPanelProps"]
      193 GETTABLEKS                       R22 R23 K36 ["InputBuilder"]
      195 DUPTABLE                         R23 K48 [{"NodeId", "InputBuilderProps", "Input", "GraphPayload", "Position", "Size", "PropertyLookup", "StateLookup", "text", "editName", "OnChanged", "IsHoveredRef"}]
      196 GETTABLEKS                       R25 R0 K6 ["InputPanelProps"]
      198 GETTABLEKS                       R24 R25 K37 ["NodeId"]
      200 SETTABLEKS                       R24 R23 K37 ["NodeId"]
      202 GETTABLEKS                       R25 R0 K6 ["InputPanelProps"]
      204 GETTABLEKS                       R24 R25 K38 ["InputBuilderProps"]
      206 SETTABLEKS                       R24 R23 K38 ["InputBuilderProps"]
      208 SETTABLEKS                       R12 R23 K17 ["Input"]
      210 GETTABLEKS                       R24 R0 K39 ["GraphPayload"]
      212 SETTABLEKS                       R24 R23 K39 ["GraphPayload"]
      214 GETTABLEKS                       R24 R0 K40 ["Position"]
      216 SETTABLEKS                       R24 R23 K40 ["Position"]
      218 GETTABLEKS                       R24 R0 K41 ["Size"]
      220 SETTABLEKS                       R24 R23 K41 ["Size"]
      222 GETTABLEKS                       R24 R0 K42 ["PropertyLookup"]
      224 SETTABLEKS                       R24 R23 K42 ["PropertyLookup"]
      226 GETTABLEKS                       R24 R0 K43 ["StateLookup"]
      228 SETTABLEKS                       R24 R23 K43 ["StateLookup"]
      230 GETTABLEKS                       R24 R0 K44 ["text"]
      232 SETTABLEKS                       R24 R23 K44 ["text"]
      234 GETTABLEKS                       R24 R0 K45 ["editName"]
      236 SETTABLEKS                       R24 R23 K45 ["editName"]
      238 SETTABLEKS                       R7 R23 K46 ["OnChanged"]
      240 SETTABLEKS                       R5 R23 K47 ["IsHoveredRef"]
      242 CALL                             R21 2 1
      243 SETTABLEKS                       R21 R20 K33 ["Content"]
      245 GETUPVAL                         R22 1
      246 GETTABLEKS                       R21 R22 K14 ["createElement"]
      248 LOADK                            R22 K49 ["UIDragDetector"]
      249 NEWTABLE                         R23 4 0
      251 GETIMPORT                        R24 K53 [Enum.UIDragDetectorDragStyle.Scriptable]
      253 SETTABLEKS                       R24 R23 K54 ["DragStyle"]
      255 GETUPVAL                         R26 1
      256 GETTABLEKS                       R25 R26 K55 ["Event"]
      258 GETTABLEKS                       R24 R25 K56 ["DragStart"]
      260 SETTABLE                         R8 R23 R24
      261 GETUPVAL                         R26 1
      262 GETTABLEKS                       R25 R26 K55 ["Event"]
      264 GETTABLEKS                       R24 R25 K57 ["DragContinue"]
      266 SETTABLE                         R9 R23 R24
      267 GETUPVAL                         R26 1
      268 GETTABLEKS                       R25 R26 K55 ["Event"]
      270 GETTABLEKS                       R24 R25 K58 ["DragEnd"]
      272 SETTABLE                         R10 R23 R24
      273 CALL                             R21 2 1
      274 SETTABLEKS                       R21 R20 K34 ["DragDetector"]
      276 CALL                             R17 3 1
      277 SETTABLEKS                       R17 R16 K17 ["Input"]
      279 CALL                             R13 3 -1
      280 RETURN                           R13 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["draggedIndex"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K1 ["createElement"]
       10 GETUPVAL                         R1 2
       11 DUPTABLE                         R2 K4 [{"virtualRef", "Text"}]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K2 ["virtualRef"]
       15 SETTABLEKS                       R3 R2 K2 ["virtualRef"]
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R5 R6 K5 ["Inputs"]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K0 ["draggedIndex"]
       23 GETTABLE                         R4 R5 R6
       24 GETTABLEKS                       R3 R4 K6 ["Name"]
       26 SETTABLEKS                       R3 R2 K3 ["Text"]
       28 CALL                             R0 2 -1
       29 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 GETTABLEKS                       R3 R0 K0 ["Inputs"]
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 LOADK                            R9 K1 ["Input%*"]
       11 MOVE                             R11 R6
       12 NAMECALL                         R9 R9 K2 ["format"]
       14 CALL                             R9 2 1
       15 MOVE                             R8 R9
       16 GETUPVAL                         R10 1
       17 GETTABLEKS                       R9 R10 K3 ["createElement"]
       19 GETUPVAL                         R10 2
       20 DUPTABLE                         R11 K16 [{"index", "highlighted", "dragHelper", "input", "InputPanelProps", "GraphPayload", "Position", "Size", "PropertyLookup", "StateLookup", "text", "editName"}]
       21 SETTABLEKS                       R6 R11 K4 ["index"]
       23 GETTABLEKS                       R13 R1 K17 ["highlightedIndex"]
       25 JUMPIFEQ                         R13 R6 ; [+2]
       27 LOADB                            R12 0 +1
       28 LOADB                            R12 1
       29 SETTABLEKS                       R12 R11 K5 ["highlighted"]
       31 SETTABLEKS                       R1 R11 K6 ["dragHelper"]
       33 SETTABLEKS                       R7 R11 K7 ["input"]
       35 SETTABLEKS                       R0 R11 K8 ["InputPanelProps"]
       37 GETTABLEKS                       R12 R0 K9 ["GraphPayload"]
       39 SETTABLEKS                       R12 R11 K9 ["GraphPayload"]
       41 GETTABLEKS                       R12 R0 K10 ["Position"]
       43 SETTABLEKS                       R12 R11 K10 ["Position"]
       45 GETTABLEKS                       R12 R0 K11 ["Size"]
       47 SETTABLEKS                       R12 R11 K11 ["Size"]
       49 GETTABLEKS                       R12 R0 K12 ["PropertyLookup"]
       51 SETTABLEKS                       R12 R11 K12 ["PropertyLookup"]
       53 GETTABLEKS                       R12 R0 K13 ["StateLookup"]
       55 SETTABLEKS                       R12 R11 K13 ["StateLookup"]
       57 GETTABLEKS                       R12 R0 K14 ["text"]
       59 SETTABLEKS                       R12 R11 K14 ["text"]
       61 GETTABLEKS                       R12 R0 K15 ["editName"]
       63 SETTABLEKS                       R12 R11 K15 ["editName"]
       65 CALL                             R9 2 1
       66 SETTABLE                         R9 R2 R8
       67 FORGLOOP                         R3 2 ; [-58]
       69 GETTABLEKS                       R4 R1 K17 ["highlightedIndex"]
       71 GETTABLEKS                       R7 R0 K0 ["Inputs"]
       73 LENGTH                           R6 R7
       74 ADDK                             R5 R6 K18 [1]
       75 JUMPIFEQ                         R4 R5 ; [+2]
       77 LOADB                            R3 0 +1
       78 LOADB                            R3 1
       79 GETUPVAL                         R5 1
       80 GETTABLEKS                       R4 R5 K3 ["createElement"]
       82 GETUPVAL                         R5 3
       83 DUPTABLE                         R6 K21 [{"LayoutOrder", "Highlighted"}]
       84 GETTABLEKS                       R11 R0 K0 ["Inputs"]
       86 LENGTH                           R10 R11
       87 ADDK                             R9 R10 K18 [1]
       88 MULK                             R8 R9 K22 [2]
       89 SUBK                             R7 R8 K18 [1]
       90 SETTABLEKS                       R7 R6 K19 ["LayoutOrder"]
       92 SETTABLEKS                       R3 R6 K20 ["Highlighted"]
       94 CALL                             R4 2 1
       95 SETTABLEKS                       R4 R2 K23 ["NextDivider"]
       97 GETUPVAL                         R5 1
       98 GETTABLEKS                       R4 R5 K3 ["createElement"]
      100 GETUPVAL                         R6 4
      101 GETTABLEKS                       R5 R6 K24 ["View"]
      103 DUPTABLE                         R6 K26 [{"tag", "LayoutOrder"}]
      104 LOADK                            R7 K27 ["col auto-y gap-small size-full-700"]
      105 SETTABLEKS                       R7 R6 K25 ["tag"]
      107 GETTABLEKS                       R10 R0 K0 ["Inputs"]
      109 LENGTH                           R9 R10
      110 ADDK                             R8 R9 K18 [1]
      111 MULK                             R7 R8 K22 [2]
      112 SETTABLEKS                       R7 R6 K19 ["LayoutOrder"]
      114 DUPTABLE                         R7 K29 [{"Input"}]
      115 GETTABLEKS                       R9 R0 K30 ["InputBuilderProps"]
      117 JUMPIFNOT                        R9 ; [+90]
      118 GETTABLEKS                       R9 R0 K31 ["NodeId"]
      120 JUMPIFNOT                        R9 ; [+87]
      121 GETUPVAL                         R9 5
      122 JUMPIFNOT                        R9 ; [+85]
      123 GETUPVAL                         R9 1
      124 GETTABLEKS                       R8 R9 K3 ["createElement"]
      126 GETUPVAL                         R9 5
      127 DUPTABLE                         R10 K35 [{"Name", "DisplayName", "HideWeight", "InputBuilderProps", "Input", "NodeId", "LayoutOrder", "Position", "PropertyLookup", "Size", "StateLookup", "text", "editName", "GraphPayload"}]
      128 LOADK                            R12 K1 ["Input%*"]
      129 GETTABLEKS                       R15 R0 K0 ["Inputs"]
      131 LENGTH                           R14 R15
      132 NAMECALL                         R12 R12 K2 ["format"]
      134 CALL                             R12 2 1
      135 MOVE                             R11 R12
      136 SETTABLEKS                       R11 R10 K32 ["Name"]
      138 LOADK                            R11 K36 ["<New Input>"]
      139 SETTABLEKS                       R11 R10 K33 ["DisplayName"]
      141 LOADB                            R11 1
      142 SETTABLEKS                       R11 R10 K34 ["HideWeight"]
      144 GETTABLEKS                       R11 R0 K30 ["InputBuilderProps"]
      146 SETTABLEKS                       R11 R10 K30 ["InputBuilderProps"]
      148 DUPTABLE                         R11 K39 [{"Name", "Weight", "Value"}]
      149 LOADK                            R13 K1 ["Input%*"]
      150 GETTABLEKS                       R16 R0 K0 ["Inputs"]
      152 LENGTH                           R15 R16
      153 NAMECALL                         R13 R13 K2 ["format"]
      155 CALL                             R13 2 1
      156 MOVE                             R12 R13
      157 SETTABLEKS                       R12 R11 K32 ["Name"]
      159 LOADNIL                          R12
      160 SETTABLEKS                       R12 R11 K37 ["Weight"]
      162 GETTABLEKS                       R12 R0 K40 ["NewInputDefaultValue"]
      164 SETTABLEKS                       R12 R11 K38 ["Value"]
      166 SETTABLEKS                       R11 R10 K28 ["Input"]
      168 GETTABLEKS                       R11 R0 K31 ["NodeId"]
      170 SETTABLEKS                       R11 R10 K31 ["NodeId"]
      172 GETTABLEKS                       R13 R0 K0 ["Inputs"]
      174 LENGTH                           R12 R13
      175 ADDK                             R11 R12 K18 [1]
      176 SETTABLEKS                       R11 R10 K19 ["LayoutOrder"]
      178 GETTABLEKS                       R11 R0 K10 ["Position"]
      180 SETTABLEKS                       R11 R10 K10 ["Position"]
      182 GETTABLEKS                       R11 R0 K12 ["PropertyLookup"]
      184 SETTABLEKS                       R11 R10 K12 ["PropertyLookup"]
      186 GETTABLEKS                       R11 R0 K11 ["Size"]
      188 SETTABLEKS                       R11 R10 K11 ["Size"]
      190 GETTABLEKS                       R11 R0 K13 ["StateLookup"]
      192 SETTABLEKS                       R11 R10 K13 ["StateLookup"]
      194 GETTABLEKS                       R11 R0 K14 ["text"]
      196 SETTABLEKS                       R11 R10 K14 ["text"]
      198 GETTABLEKS                       R11 R0 K15 ["editName"]
      200 SETTABLEKS                       R11 R10 K15 ["editName"]
      202 GETTABLEKS                       R11 R0 K9 ["GraphPayload"]
      204 SETTABLEKS                       R11 R10 K9 ["GraphPayload"]
      206 CALL                             R8 2 1
      207 JUMP                             ; [+1]
      208 LOADNIL                          R8
      209 SETTABLEKS                       R8 R7 K28 ["Input"]
      211 CALL                             R4 3 1
      212 SETTABLEKS                       R4 R2 K41 ["NextInput"]
      214 GETUPVAL                         R5 1
      215 GETTABLEKS                       R4 R5 K42 ["useMemo"]
      217 NEWCLOSURE                       R5 P0
      218 CAPTURE                          VAL R1
      219 CAPTURE                          UPVAL U1
      220 CAPTURE                          UPVAL U6
      221 CAPTURE                          VAL R0
      222 NEWTABLE                         R6 0 3
      224 GETTABLEKS                       R7 R1 K43 ["draggedIndex"]
      226 GETTABLEKS                       R8 R1 K44 ["virtualRef"]
      228 GETTABLEKS                       R9 R0 K0 ["Inputs"]
      230 SETLIST                          R6 R7 3 [1]
      232 CALL                             R4 2 1
      233 GETUPVAL                         R6 1
      234 GETTABLEKS                       R5 R6 K3 ["createElement"]
      236 GETUPVAL                         R7 4
      237 GETTABLEKS                       R6 R7 K24 ["View"]
      239 DUPTABLE                         R7 K26 [{"tag", "LayoutOrder"}]
      240 LOADK                            R8 K45 ["col gap-none size-full-700 auto-y"]
      241 SETTABLEKS                       R8 R7 K25 ["tag"]
      243 GETTABLEKS                       R8 R0 K19 ["LayoutOrder"]
      245 SETTABLEKS                       R8 R7 K19 ["LayoutOrder"]
      247 DUPTABLE                         R8 K48 [{"Children", "PopOver"}]
      248 GETUPVAL                         R10 1
      249 GETTABLEKS                       R9 R10 K3 ["createElement"]
      251 GETUPVAL                         R11 1
      252 GETTABLEKS                       R10 R11 K49 ["Fragment"]
      254 NEWTABLE                         R11 0 0
      256 MOVE                             R12 R2
      257 CALL                             R9 3 1
      258 SETTABLEKS                       R9 R8 K46 ["Children"]
      260 SETTABLEKS                       R4 R8 K47 ["PopOver"]
      262 CALL                             R5 3 -1
      263 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R7 R0 K6 ["Components"]
       11 GETTABLEKS                       R6 R7 K7 ["NodeView"]
       13 GETTABLEKS                       R5 R6 K8 ["CompositorNodeInput"]
       15 GETTABLEKS                       R4 R5 K9 ["Parent"]
       17 GETTABLEKS                       R3 R4 K10 ["CompositorNodes"]
       19 GETTABLEKS                       R2 R3 K11 ["CompositorNode"]
       21 CALL                             R1 1 1
       22 GETIMPORT                        R2 K5 [require]
       24 GETTABLEKS                       R6 R0 K6 ["Components"]
       26 GETTABLEKS                       R5 R6 K7 ["NodeView"]
       28 GETTABLEKS                       R4 R5 K10 ["CompositorNodes"]
       30 GETTABLEKS                       R3 R4 K12 ["CompositorStateUtils"]
       32 CALL                             R2 1 1
       33 GETIMPORT                        R3 K5 [require]
       35 GETTABLEKS                       R5 R0 K9 ["Parent"]
       37 GETTABLEKS                       R4 R5 K13 ["Dash"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K5 [require]
       42 GETTABLEKS                       R8 R0 K6 ["Components"]
       44 GETTABLEKS                       R7 R8 K7 ["NodeView"]
       46 GETTABLEKS                       R6 R7 K8 ["CompositorNodeInput"]
       48 GETTABLEKS                       R5 R6 K14 ["Divider"]
       50 CALL                             R4 1 1
       51 GETIMPORT                        R5 K5 [require]
       53 GETTABLEKS                       R7 R0 K9 ["Parent"]
       55 GETTABLEKS                       R6 R7 K15 ["Foundation"]
       57 CALL                             R5 1 1
       58 GETIMPORT                        R6 K5 [require]
       60 GETTABLEKS                       R10 R0 K6 ["Components"]
       62 GETTABLEKS                       R9 R10 K7 ["NodeView"]
       64 GETTABLEKS                       R8 R9 K8 ["CompositorNodeInput"]
       66 GETTABLEKS                       R7 R8 K16 ["InputPanelPopover"]
       68 CALL                             R6 1 1
       69 GETIMPORT                        R7 K5 [require]
       71 GETTABLEKS                       R11 R0 K6 ["Components"]
       73 GETTABLEKS                       R10 R11 K7 ["NodeView"]
       75 GETTABLEKS                       R9 R10 K8 ["CompositorNodeInput"]
       77 GETTABLEKS                       R8 R9 K17 ["InputPanelTypes"]
       79 CALL                             R7 1 1
       80 GETIMPORT                        R8 K5 [require]
       82 GETTABLEKS                       R9 R0 K18 ["NodeViewTypes"]
       84 CALL                             R8 1 1
       85 GETIMPORT                        R9 K5 [require]
       87 GETTABLEKS                       R11 R0 K9 ["Parent"]
       89 GETTABLEKS                       R10 R11 K19 ["React"]
       91 CALL                             R9 1 1
       92 GETIMPORT                        R10 K5 [require]
       94 GETTABLEKS                       R12 R0 K9 ["Parent"]
       96 GETTABLEKS                       R11 R12 K20 ["ReactUtils"]
       98 CALL                             R10 1 1
       99 GETIMPORT                        R11 K5 [require]
      101 GETTABLEKS                       R13 R0 K9 ["Parent"]
      103 GETTABLEKS                       R12 R13 K21 ["Signals"]
      105 CALL                             R11 1 1
      106 GETIMPORT                        R12 K5 [require]
      108 GETTABLEKS                       R14 R0 K9 ["Parent"]
      110 GETTABLEKS                       R13 R14 K22 ["SignalsReact"]
      112 CALL                             R12 1 1
      113 GETIMPORT                        R13 K5 [require]
      115 GETTABLEKS                       R17 R0 K6 ["Components"]
      117 GETTABLEKS                       R16 R17 K7 ["NodeView"]
      119 GETTABLEKS                       R15 R16 K8 ["CompositorNodeInput"]
      121 GETTABLEKS                       R14 R15 K23 ["SimpleInput"]
      123 CALL                             R13 1 1
      124 GETIMPORT                        R14 K5 [require]
      126 GETTABLEKS                       R16 R0 K24 ["Hooks"]
      128 GETTABLEKS                       R15 R16 K25 ["useAbsoluteSize"]
      130 CALL                             R14 1 1
      131 DUPCLOSURE                       R15 K26 [PROTO_3]
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R5
      134 DUPCLOSURE                       R16 K27 [PROTO_13]
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R5
      144 DUPCLOSURE                       R17 K28 [PROTO_15]
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R5
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R6
      152 RETURN                           R17 1
