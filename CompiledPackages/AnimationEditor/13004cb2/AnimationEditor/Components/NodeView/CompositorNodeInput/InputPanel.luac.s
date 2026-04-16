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
        1 JUMPIFEQKNIL                     R2 ; [+11]
        3 GETUPVAL                         R2 1
        4 JUMPIFEQKNIL                     R2 ; [+8]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K0 ["OnInputReordered"]
        9 GETUPVAL                         R3 0
       10 GETUPVAL                         R5 1
       11 SUBK                             R4 R5 K1 [1]
       12 CALL                             R2 2 0
       13 GETUPVAL                         R2 3
       14 LOADNIL                          R3
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 4
       17 LOADNIL                          R3
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["dragHelper"]
        3 GETTABLEKS                       R2 R3 K1 ["absoluteSizesRef"]
        5 GETTABLEKS                       R1 R2 K2 ["current"]
        7 GETUPVAL                         R2 1
        8 GETTABLE                         R0 R1 R2
        9 GETUPVAL                         R1 2
       10 JUMPIFNOTEQ                      R0 R1 ; [+11]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["dragHelper"]
       15 GETTABLEKS                       R1 R2 K1 ["absoluteSizesRef"]
       17 GETTABLEKS                       R0 R1 K2 ["current"]
       19 GETUPVAL                         R1 1
       20 LOADNIL                          R2
       21 SETTABLE                         R2 R0 R1
       22 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 DUPTABLE                         R0 K2 [{"absolutePosition", "absoluteSize"}]
        6 GETUPVAL                         R1 1
        7 SETTABLEKS                       R1 R0 K0 ["absolutePosition"]
        9 GETUPVAL                         R1 0
       10 SETTABLEKS                       R1 R0 K1 ["absoluteSize"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K3 ["dragHelper"]
       15 GETTABLEKS                       R2 R3 K4 ["absoluteSizesRef"]
       17 GETTABLEKS                       R1 R2 K5 ["current"]
       19 GETUPVAL                         R2 3
       20 SETTABLE                         R0 R1 R2
       21 NEWCLOSURE                       R1 P0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R0
       25 RETURN                           R1 1

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["dragHelper"]
        3 GETTABLEKS                       R2 R3 K1 ["onDragStart"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["dragHelper"]
        3 GETTABLEKS                       R2 R3 K1 ["onDragContinue"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["dragHelper"]
        3 GETTABLEKS                       R2 R3 K1 ["onDragEnd"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["join"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["input"]
        6 DUPTABLE                         R2 K3 [{"Weight"}]
        7 GETUPVAL                         R3 2
        8 SETTABLEKS                       R3 R2 K2 ["Weight"]
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["index"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["useSignalState"]
        7 GETTABLEKS                       R4 R2 K2 ["observeAbsoluteSize"]
        9 CALL                             R3 1 1
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K1 ["useSignalState"]
       13 GETTABLEKS                       R5 R2 K3 ["observeAbsolutePosition"]
       15 CALL                             R4 1 1
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R5 R6 K4 ["useEffect"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 NEWTABLE                         R7 0 2
       26 MOVE                             R8 R3
       27 MOVE                             R9 R4
       28 SETLIST                          R7 R8 2 [1]
       30 CALL                             R5 2 0
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R5 R6 K5 ["useCallback"]
       34 NEWCLOSURE                       R6 P1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 NEWTABLE                         R7 0 2
       39 GETTABLEKS                       R9 R0 K6 ["InputPanelProps"]
       41 GETTABLEKS                       R8 R9 K7 ["OnInputChanged"]
       43 MOVE                             R9 R1
       44 SETLIST                          R7 R8 2 [1]
       46 CALL                             R5 2 1
       47 GETUPVAL                         R7 2
       48 GETTABLEKS                       R6 R7 K5 ["useCallback"]
       50 NEWCLOSURE                       R7 P2
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R1
       53 NEWTABLE                         R8 0 2
       55 GETTABLEKS                       R9 R0 K8 ["dragHelper"]
       57 MOVE                             R10 R1
       58 SETLIST                          R8 R9 2 [1]
       60 CALL                             R6 2 1
       61 GETUPVAL                         R8 2
       62 GETTABLEKS                       R7 R8 K5 ["useCallback"]
       64 NEWCLOSURE                       R8 P3
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R1
       67 NEWTABLE                         R9 0 2
       69 GETTABLEKS                       R10 R0 K8 ["dragHelper"]
       71 MOVE                             R11 R1
       72 SETLIST                          R9 R10 2 [1]
       74 CALL                             R7 2 1
       75 GETUPVAL                         R9 2
       76 GETTABLEKS                       R8 R9 K5 ["useCallback"]
       78 NEWCLOSURE                       R9 P4
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R1
       81 NEWTABLE                         R10 0 2
       83 GETTABLEKS                       R11 R0 K8 ["dragHelper"]
       85 MOVE                             R12 R1
       86 SETLIST                          R10 R11 2 [1]
       88 CALL                             R8 2 1
       89 GETUPVAL                         R10 1
       90 GETTABLEKS                       R9 R10 K1 ["useSignalState"]
       92 GETUPVAL                         R11 3
       93 GETTABLEKS                       R10 R11 K9 ["useObserveNodeWeight"]
       95 GETTABLEKS                       R12 R0 K10 ["input"]
       97 GETTABLEKS                       R11 R12 K11 ["ConnectedNodeId"]
       99 CALL                             R10 1 -1
      100 CALL                             R9 -1 1
      101 GETUPVAL                         R11 2
      102 GETTABLEKS                       R10 R11 K12 ["useMemo"]
      104 NEWCLOSURE                       R11 P5
      105 CAPTURE                          UPVAL U4
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R9
      108 NEWTABLE                         R12 0 2
      110 GETTABLEKS                       R13 R0 K10 ["input"]
      112 MOVE                             R14 R9
      113 SETLIST                          R12 R13 2 [1]
      115 CALL                             R10 2 1
      116 GETUPVAL                         R12 2
      117 GETTABLEKS                       R11 R12 K13 ["createElement"]
      119 GETUPVAL                         R13 2
      120 GETTABLEKS                       R12 R13 K14 ["Fragment"]
      122 NEWTABLE                         R13 0 0
      124 DUPTABLE                         R14 K17 [{"Divider", "Input"}]
      125 GETUPVAL                         R16 2
      126 GETTABLEKS                       R15 R16 K13 ["createElement"]
      128 GETUPVAL                         R16 5
      129 DUPTABLE                         R17 K20 [{"Highlighted", "LayoutOrder"}]
      130 GETTABLEKS                       R18 R0 K21 ["highlighted"]
      132 SETTABLEKS                       R18 R17 K18 ["Highlighted"]
      134 MULK                             R19 R1 K23 [2]
      135 SUBK                             R18 R19 K22 [1]
      136 SETTABLEKS                       R18 R17 K19 ["LayoutOrder"]
      138 CALL                             R15 2 1
      139 SETTABLEKS                       R15 R14 K15 ["Divider"]
      141 GETUPVAL                         R16 2
      142 GETTABLEKS                       R15 R16 K13 ["createElement"]
      144 GETUPVAL                         R17 6
      145 GETTABLEKS                       R16 R17 K24 ["View"]
      147 DUPTABLE                         R17 K27 [{"tag", "LayoutOrder", "ref"}]
      148 LOADK                            R19 K28 ["auto-xy gap-small size-full-700 data-testid=--compositor-node-input-%*"]
      149 MOVE                             R21 R1
      150 NAMECALL                         R19 R19 K29 ["format"]
      152 CALL                             R19 2 1
      153 MOVE                             R18 R19
      154 SETTABLEKS                       R18 R17 K25 ["tag"]
      156 MULK                             R18 R1 K23 [2]
      157 SETTABLEKS                       R18 R17 K19 ["LayoutOrder"]
      159 GETTABLEKS                       R18 R2 K30 ["setFrame"]
      161 SETTABLEKS                       R18 R17 K26 ["ref"]
      163 DUPTABLE                         R18 K33 [{"Content", "DragDetector"}]
      164 GETUPVAL                         R20 2
      165 GETTABLEKS                       R19 R20 K13 ["createElement"]
      167 GETTABLEKS                       R21 R0 K6 ["InputPanelProps"]
      169 GETTABLEKS                       R20 R21 K34 ["InputBuilder"]
      171 DUPTABLE                         R21 K45 [{"NodeId", "InputBuilderProps", "Input", "GraphPayload", "Position", "Size", "PropertyLookup", "StateLookup", "text", "editName", "OnChanged"}]
      172 GETTABLEKS                       R23 R0 K6 ["InputPanelProps"]
      174 GETTABLEKS                       R22 R23 K35 ["NodeId"]
      176 SETTABLEKS                       R22 R21 K35 ["NodeId"]
      178 GETTABLEKS                       R23 R0 K6 ["InputPanelProps"]
      180 GETTABLEKS                       R22 R23 K36 ["InputBuilderProps"]
      182 SETTABLEKS                       R22 R21 K36 ["InputBuilderProps"]
      184 SETTABLEKS                       R10 R21 K16 ["Input"]
      186 GETTABLEKS                       R22 R0 K37 ["GraphPayload"]
      188 SETTABLEKS                       R22 R21 K37 ["GraphPayload"]
      190 GETTABLEKS                       R22 R0 K38 ["Position"]
      192 SETTABLEKS                       R22 R21 K38 ["Position"]
      194 GETTABLEKS                       R22 R0 K39 ["Size"]
      196 SETTABLEKS                       R22 R21 K39 ["Size"]
      198 GETTABLEKS                       R22 R0 K40 ["PropertyLookup"]
      200 SETTABLEKS                       R22 R21 K40 ["PropertyLookup"]
      202 GETTABLEKS                       R22 R0 K41 ["StateLookup"]
      204 SETTABLEKS                       R22 R21 K41 ["StateLookup"]
      206 GETTABLEKS                       R22 R0 K42 ["text"]
      208 SETTABLEKS                       R22 R21 K42 ["text"]
      210 GETTABLEKS                       R22 R0 K43 ["editName"]
      212 SETTABLEKS                       R22 R21 K43 ["editName"]
      214 SETTABLEKS                       R5 R21 K44 ["OnChanged"]
      216 CALL                             R19 2 1
      217 SETTABLEKS                       R19 R18 K31 ["Content"]
      219 GETUPVAL                         R20 2
      220 GETTABLEKS                       R19 R20 K13 ["createElement"]
      222 LOADK                            R20 K46 ["UIDragDetector"]
      223 NEWTABLE                         R21 4 0
      225 GETIMPORT                        R22 K50 [Enum.UIDragDetectorDragStyle.Scriptable]
      227 SETTABLEKS                       R22 R21 K51 ["DragStyle"]
      229 GETUPVAL                         R24 2
      230 GETTABLEKS                       R23 R24 K52 ["Event"]
      232 GETTABLEKS                       R22 R23 K53 ["DragStart"]
      234 SETTABLE                         R6 R21 R22
      235 GETUPVAL                         R24 2
      236 GETTABLEKS                       R23 R24 K52 ["Event"]
      238 GETTABLEKS                       R22 R23 K54 ["DragContinue"]
      240 SETTABLE                         R7 R21 R22
      241 GETUPVAL                         R24 2
      242 GETTABLEKS                       R23 R24 K52 ["Event"]
      244 GETTABLEKS                       R22 R23 K55 ["DragEnd"]
      246 SETTABLE                         R8 R21 R22
      247 CALL                             R19 2 1
      248 SETTABLEKS                       R19 R18 K32 ["DragDetector"]
      250 CALL                             R15 3 1
      251 SETTABLEKS                       R15 R14 K16 ["Input"]
      253 CALL                             R11 3 -1
      254 RETURN                           R11 -1

PROTO_12:
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

PROTO_13:
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
       96 GETTABLEKS                       R11 R12 K20 ["SignalsReact"]
       98 CALL                             R10 1 1
       99 GETIMPORT                        R11 K5 [require]
      101 GETTABLEKS                       R15 R0 K6 ["Components"]
      103 GETTABLEKS                       R14 R15 K7 ["NodeView"]
      105 GETTABLEKS                       R13 R14 K8 ["CompositorNodeInput"]
      107 GETTABLEKS                       R12 R13 K21 ["SimpleInput"]
      109 CALL                             R11 1 1
      110 GETIMPORT                        R12 K5 [require]
      112 GETTABLEKS                       R14 R0 K22 ["Hooks"]
      114 GETTABLEKS                       R13 R14 K23 ["useAbsoluteSize"]
      116 CALL                             R12 1 1
      117 DUPCLOSURE                       R13 K24 [PROTO_3]
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R5
      120 DUPCLOSURE                       R14 K25 [PROTO_11]
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R5
      128 DUPCLOSURE                       R15 K26 [PROTO_13]
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R6
      136 RETURN                           R15 1
