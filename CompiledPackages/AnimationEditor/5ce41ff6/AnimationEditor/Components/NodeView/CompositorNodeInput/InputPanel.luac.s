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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["dragHelper"]
        3 GETTABLEKS                       R1 R2 K1 ["absoluteSizesRef"]
        5 GETTABLEKS                       R0 R1 K2 ["current"]
        7 GETUPVAL                         R1 1
        8 JUMPIFNOTEQ                      R0 R1 ; [+11]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K0 ["dragHelper"]
       13 GETTABLEKS                       R1 R2 K1 ["absoluteSizesRef"]
       15 GETTABLEKS                       R0 R1 K2 ["current"]
       17 GETUPVAL                         R1 2
       18 LOADNIL                          R2
       19 SETTABLE                         R2 R0 R1
       20 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["dragHelper"]
        4 GETTABLEKS                       R2 R3 K1 ["absoluteSizesRef"]
        6 GETTABLEKS                       R1 R2 K2 ["current"]
        8 GETUPVAL                         R2 2
        9 DUPTABLE                         R3 K5 [{"absolutePosition", "absoluteSize"}]
       10 GETTABLEKS                       R4 R0 K3 ["absolutePosition"]
       12 SETTABLEKS                       R4 R3 K3 ["absolutePosition"]
       14 GETTABLEKS                       R4 R0 K4 ["absoluteSize"]
       16 SETTABLEKS                       R4 R3 K4 ["absoluteSize"]
       18 SETTABLE                         R3 R1 R2
       19 NEWCLOSURE                       R1 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U2
       23 RETURN                           R1 1

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
        0 GETTABLEKS                       R1 R0 K0 ["index"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["useEffect"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R5 0 1
       13 MOVE                             R6 R2
       14 SETLIST                          R5 R6 1 [1]
       16 CALL                             R3 2 0
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K2 ["useCallback"]
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 NEWTABLE                         R5 0 2
       25 GETTABLEKS                       R7 R0 K3 ["InputPanelProps"]
       27 GETTABLEKS                       R6 R7 K4 ["OnInputChanged"]
       29 MOVE                             R7 R1
       30 SETLIST                          R5 R6 2 [1]
       32 CALL                             R3 2 1
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       36 NEWCLOSURE                       R5 P2
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R1
       39 NEWTABLE                         R6 0 2
       41 GETTABLEKS                       R7 R0 K5 ["dragHelper"]
       43 MOVE                             R8 R1
       44 SETLIST                          R6 R7 2 [1]
       46 CALL                             R4 2 1
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R5 R6 K2 ["useCallback"]
       50 NEWCLOSURE                       R6 P3
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R1
       53 NEWTABLE                         R7 0 2
       55 GETTABLEKS                       R8 R0 K5 ["dragHelper"]
       57 MOVE                             R9 R1
       58 SETLIST                          R7 R8 2 [1]
       60 CALL                             R5 2 1
       61 GETUPVAL                         R7 1
       62 GETTABLEKS                       R6 R7 K2 ["useCallback"]
       64 NEWCLOSURE                       R7 P4
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R1
       67 NEWTABLE                         R8 0 2
       69 GETTABLEKS                       R9 R0 K5 ["dragHelper"]
       71 MOVE                             R10 R1
       72 SETLIST                          R8 R9 2 [1]
       74 CALL                             R6 2 1
       75 GETUPVAL                         R8 1
       76 GETTABLEKS                       R7 R8 K6 ["createElement"]
       78 GETUPVAL                         R9 1
       79 GETTABLEKS                       R8 R9 K7 ["Fragment"]
       81 NEWTABLE                         R9 0 0
       83 DUPTABLE                         R10 K10 [{"Divider", "Input"}]
       84 GETUPVAL                         R12 1
       85 GETTABLEKS                       R11 R12 K6 ["createElement"]
       87 GETUPVAL                         R12 2
       88 DUPTABLE                         R13 K13 [{"Highlighted", "LayoutOrder"}]
       89 GETTABLEKS                       R14 R0 K14 ["highlighted"]
       91 SETTABLEKS                       R14 R13 K11 ["Highlighted"]
       93 MULK                             R15 R1 K16 [2]
       94 SUBK                             R14 R15 K15 [1]
       95 SETTABLEKS                       R14 R13 K12 ["LayoutOrder"]
       97 CALL                             R11 2 1
       98 SETTABLEKS                       R11 R10 K8 ["Divider"]
      100 GETUPVAL                         R12 1
      101 GETTABLEKS                       R11 R12 K6 ["createElement"]
      103 GETUPVAL                         R13 3
      104 GETTABLEKS                       R12 R13 K17 ["View"]
      106 DUPTABLE                         R13 K20 [{"tag", "LayoutOrder", "ref"}]
      107 LOADK                            R14 K21 ["auto-xy gap-small size-full-700"]
      108 SETTABLEKS                       R14 R13 K18 ["tag"]
      110 MULK                             R14 R1 K16 [2]
      111 SETTABLEKS                       R14 R13 K12 ["LayoutOrder"]
      113 GETTABLEKS                       R14 R2 K22 ["setFrame"]
      115 SETTABLEKS                       R14 R13 K19 ["ref"]
      117 DUPTABLE                         R14 K25 [{"Content", "DragDetector"}]
      118 GETUPVAL                         R16 1
      119 GETTABLEKS                       R15 R16 K6 ["createElement"]
      121 GETTABLEKS                       R17 R0 K3 ["InputPanelProps"]
      123 GETTABLEKS                       R16 R17 K26 ["InputBuilder"]
      125 DUPTABLE                         R17 K36 [{"NodeId", "InputBuilderProps", "Input", "GraphPayload", "Position", "Size", "PropertyLookup", "StateLookup", "text", "OnChanged"}]
      126 GETTABLEKS                       R19 R0 K3 ["InputPanelProps"]
      128 GETTABLEKS                       R18 R19 K27 ["NodeId"]
      130 SETTABLEKS                       R18 R17 K27 ["NodeId"]
      132 GETTABLEKS                       R19 R0 K3 ["InputPanelProps"]
      134 GETTABLEKS                       R18 R19 K28 ["InputBuilderProps"]
      136 SETTABLEKS                       R18 R17 K28 ["InputBuilderProps"]
      138 GETTABLEKS                       R18 R0 K37 ["input"]
      140 SETTABLEKS                       R18 R17 K9 ["Input"]
      142 GETTABLEKS                       R18 R0 K29 ["GraphPayload"]
      144 SETTABLEKS                       R18 R17 K29 ["GraphPayload"]
      146 GETTABLEKS                       R18 R0 K30 ["Position"]
      148 SETTABLEKS                       R18 R17 K30 ["Position"]
      150 GETTABLEKS                       R18 R0 K31 ["Size"]
      152 SETTABLEKS                       R18 R17 K31 ["Size"]
      154 GETTABLEKS                       R18 R0 K32 ["PropertyLookup"]
      156 SETTABLEKS                       R18 R17 K32 ["PropertyLookup"]
      158 GETTABLEKS                       R18 R0 K33 ["StateLookup"]
      160 SETTABLEKS                       R18 R17 K33 ["StateLookup"]
      162 GETTABLEKS                       R18 R0 K34 ["text"]
      164 SETTABLEKS                       R18 R17 K34 ["text"]
      166 SETTABLEKS                       R3 R17 K35 ["OnChanged"]
      168 CALL                             R15 2 1
      169 SETTABLEKS                       R15 R14 K23 ["Content"]
      171 GETUPVAL                         R16 1
      172 GETTABLEKS                       R15 R16 K6 ["createElement"]
      174 LOADK                            R16 K38 ["UIDragDetector"]
      175 NEWTABLE                         R17 4 0
      177 GETIMPORT                        R18 K42 [Enum.UIDragDetectorDragStyle.Scriptable]
      179 SETTABLEKS                       R18 R17 K43 ["DragStyle"]
      181 GETUPVAL                         R20 1
      182 GETTABLEKS                       R19 R20 K44 ["Event"]
      184 GETTABLEKS                       R18 R19 K45 ["DragStart"]
      186 SETTABLE                         R4 R17 R18
      187 GETUPVAL                         R20 1
      188 GETTABLEKS                       R19 R20 K44 ["Event"]
      190 GETTABLEKS                       R18 R19 K46 ["DragContinue"]
      192 SETTABLE                         R5 R17 R18
      193 GETUPVAL                         R20 1
      194 GETTABLEKS                       R19 R20 K44 ["Event"]
      196 GETTABLEKS                       R18 R19 K47 ["DragEnd"]
      198 SETTABLE                         R6 R17 R18
      199 CALL                             R15 2 1
      200 SETTABLEKS                       R15 R14 K24 ["DragDetector"]
      202 CALL                             R11 3 1
      203 SETTABLEKS                       R11 R10 K9 ["Input"]
      205 CALL                             R7 3 -1
      206 RETURN                           R7 -1

PROTO_11:
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

PROTO_12:
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
       20 DUPTABLE                         R11 K15 [{"index", "highlighted", "dragHelper", "input", "InputPanelProps", "GraphPayload", "Position", "Size", "PropertyLookup", "StateLookup", "text"}]
       21 SETTABLEKS                       R6 R11 K4 ["index"]
       23 GETTABLEKS                       R13 R1 K16 ["highlightedIndex"]
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
       61 CALL                             R9 2 1
       62 SETTABLE                         R9 R2 R8
       63 FORGLOOP                         R3 2 ; [-54]
       65 GETTABLEKS                       R4 R1 K16 ["highlightedIndex"]
       67 GETTABLEKS                       R7 R0 K0 ["Inputs"]
       69 LENGTH                           R6 R7
       70 ADDK                             R5 R6 K17 [1]
       71 JUMPIFEQ                         R4 R5 ; [+2]
       73 LOADB                            R3 0 +1
       74 LOADB                            R3 1
       75 GETUPVAL                         R5 1
       76 GETTABLEKS                       R4 R5 K3 ["createElement"]
       78 GETUPVAL                         R5 3
       79 DUPTABLE                         R6 K20 [{"LayoutOrder", "Highlighted"}]
       80 GETTABLEKS                       R11 R0 K0 ["Inputs"]
       82 LENGTH                           R10 R11
       83 ADDK                             R9 R10 K17 [1]
       84 MULK                             R8 R9 K21 [2]
       85 SUBK                             R7 R8 K17 [1]
       86 SETTABLEKS                       R7 R6 K18 ["LayoutOrder"]
       88 SETTABLEKS                       R3 R6 K19 ["Highlighted"]
       90 CALL                             R4 2 1
       91 SETTABLEKS                       R4 R2 K22 ["NextDivider"]
       93 GETUPVAL                         R5 1
       94 GETTABLEKS                       R4 R5 K3 ["createElement"]
       96 GETUPVAL                         R6 4
       97 GETTABLEKS                       R5 R6 K23 ["View"]
       99 DUPTABLE                         R6 K25 [{"tag", "LayoutOrder"}]
      100 LOADK                            R7 K26 ["col auto-y gap-small size-full-700"]
      101 SETTABLEKS                       R7 R6 K24 ["tag"]
      103 GETTABLEKS                       R10 R0 K0 ["Inputs"]
      105 LENGTH                           R9 R10
      106 ADDK                             R8 R9 K17 [1]
      107 MULK                             R7 R8 K21 [2]
      108 SETTABLEKS                       R7 R6 K18 ["LayoutOrder"]
      110 DUPTABLE                         R7 K28 [{"Input"}]
      111 GETTABLEKS                       R9 R0 K29 ["InputBuilderProps"]
      113 JUMPIFNOT                        R9 ; [+83]
      114 GETTABLEKS                       R9 R0 K30 ["NodeId"]
      116 JUMPIFNOT                        R9 ; [+80]
      117 GETUPVAL                         R9 5
      118 JUMPIFNOT                        R9 ; [+78]
      119 GETUPVAL                         R9 1
      120 GETTABLEKS                       R8 R9 K3 ["createElement"]
      122 GETUPVAL                         R9 5
      123 DUPTABLE                         R10 K33 [{"Name", "DisplayName", "InputBuilderProps", "Input", "NodeId", "LayoutOrder", "Position", "PropertyLookup", "Size", "StateLookup", "text", "GraphPayload"}]
      124 LOADK                            R12 K1 ["Input%*"]
      125 GETTABLEKS                       R15 R0 K0 ["Inputs"]
      127 LENGTH                           R14 R15
      128 NAMECALL                         R12 R12 K2 ["format"]
      130 CALL                             R12 2 1
      131 MOVE                             R11 R12
      132 SETTABLEKS                       R11 R10 K31 ["Name"]
      134 LOADK                            R11 K34 ["<New Input>"]
      135 SETTABLEKS                       R11 R10 K32 ["DisplayName"]
      137 GETTABLEKS                       R11 R0 K29 ["InputBuilderProps"]
      139 SETTABLEKS                       R11 R10 K29 ["InputBuilderProps"]
      141 DUPTABLE                         R11 K37 [{"Name", "Weight", "Value"}]
      142 LOADK                            R13 K1 ["Input%*"]
      143 GETTABLEKS                       R16 R0 K0 ["Inputs"]
      145 LENGTH                           R15 R16
      146 NAMECALL                         R13 R13 K2 ["format"]
      148 CALL                             R13 2 1
      149 MOVE                             R12 R13
      150 SETTABLEKS                       R12 R11 K31 ["Name"]
      152 LOADNIL                          R12
      153 SETTABLEKS                       R12 R11 K35 ["Weight"]
      155 GETTABLEKS                       R12 R0 K38 ["NewInputDefaultValue"]
      157 SETTABLEKS                       R12 R11 K36 ["Value"]
      159 SETTABLEKS                       R11 R10 K27 ["Input"]
      161 GETTABLEKS                       R11 R0 K30 ["NodeId"]
      163 SETTABLEKS                       R11 R10 K30 ["NodeId"]
      165 GETTABLEKS                       R13 R0 K0 ["Inputs"]
      167 LENGTH                           R12 R13
      168 ADDK                             R11 R12 K17 [1]
      169 SETTABLEKS                       R11 R10 K18 ["LayoutOrder"]
      171 GETTABLEKS                       R11 R0 K10 ["Position"]
      173 SETTABLEKS                       R11 R10 K10 ["Position"]
      175 GETTABLEKS                       R11 R0 K12 ["PropertyLookup"]
      177 SETTABLEKS                       R11 R10 K12 ["PropertyLookup"]
      179 GETTABLEKS                       R11 R0 K11 ["Size"]
      181 SETTABLEKS                       R11 R10 K11 ["Size"]
      183 GETTABLEKS                       R11 R0 K13 ["StateLookup"]
      185 SETTABLEKS                       R11 R10 K13 ["StateLookup"]
      187 GETTABLEKS                       R11 R0 K14 ["text"]
      189 SETTABLEKS                       R11 R10 K14 ["text"]
      191 GETTABLEKS                       R11 R0 K9 ["GraphPayload"]
      193 SETTABLEKS                       R11 R10 K9 ["GraphPayload"]
      195 CALL                             R8 2 1
      196 JUMP                             ; [+1]
      197 LOADNIL                          R8
      198 SETTABLEKS                       R8 R7 K27 ["Input"]
      200 CALL                             R4 3 1
      201 SETTABLEKS                       R4 R2 K39 ["NextInput"]
      203 GETUPVAL                         R5 1
      204 GETTABLEKS                       R4 R5 K40 ["useMemo"]
      206 NEWCLOSURE                       R5 P0
      207 CAPTURE                          VAL R1
      208 CAPTURE                          UPVAL U1
      209 CAPTURE                          UPVAL U6
      210 CAPTURE                          VAL R0
      211 NEWTABLE                         R6 0 3
      213 GETTABLEKS                       R7 R1 K41 ["draggedIndex"]
      215 GETTABLEKS                       R8 R1 K42 ["virtualRef"]
      217 GETTABLEKS                       R9 R0 K0 ["Inputs"]
      219 SETLIST                          R6 R7 3 [1]
      221 CALL                             R4 2 1
      222 GETUPVAL                         R6 1
      223 GETTABLEKS                       R5 R6 K3 ["createElement"]
      225 GETUPVAL                         R7 4
      226 GETTABLEKS                       R6 R7 K23 ["View"]
      228 DUPTABLE                         R7 K25 [{"tag", "LayoutOrder"}]
      229 LOADK                            R8 K43 ["col gap-none size-full-700 auto-y"]
      230 SETTABLEKS                       R8 R7 K24 ["tag"]
      232 GETTABLEKS                       R8 R0 K18 ["LayoutOrder"]
      234 SETTABLEKS                       R8 R7 K18 ["LayoutOrder"]
      236 DUPTABLE                         R8 K46 [{"Children", "PopOver"}]
      237 GETUPVAL                         R10 1
      238 GETTABLEKS                       R9 R10 K3 ["createElement"]
      240 GETUPVAL                         R11 1
      241 GETTABLEKS                       R10 R11 K47 ["Fragment"]
      243 NEWTABLE                         R11 0 0
      245 MOVE                             R12 R2
      246 CALL                             R9 3 1
      247 SETTABLEKS                       R9 R8 K44 ["Children"]
      249 SETTABLEKS                       R4 R8 K45 ["PopOver"]
      251 CALL                             R5 3 -1
      252 RETURN                           R5 -1

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
       28 GETTABLEKS                       R4 R5 K8 ["CompositorNodeInput"]
       30 GETTABLEKS                       R3 R4 K12 ["Divider"]
       32 CALL                             R2 1 1
       33 GETIMPORT                        R3 K5 [require]
       35 GETTABLEKS                       R5 R0 K9 ["Parent"]
       37 GETTABLEKS                       R4 R5 K13 ["Foundation"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K5 [require]
       42 GETTABLEKS                       R8 R0 K6 ["Components"]
       44 GETTABLEKS                       R7 R8 K7 ["NodeView"]
       46 GETTABLEKS                       R6 R7 K8 ["CompositorNodeInput"]
       48 GETTABLEKS                       R5 R6 K14 ["InputPanelPopover"]
       50 CALL                             R4 1 1
       51 GETIMPORT                        R5 K5 [require]
       53 GETTABLEKS                       R9 R0 K6 ["Components"]
       55 GETTABLEKS                       R8 R9 K7 ["NodeView"]
       57 GETTABLEKS                       R7 R8 K8 ["CompositorNodeInput"]
       59 GETTABLEKS                       R6 R7 K15 ["InputPanelTypes"]
       61 CALL                             R5 1 1
       62 GETIMPORT                        R6 K5 [require]
       64 GETTABLEKS                       R7 R0 K16 ["NodeViewTypes"]
       66 CALL                             R6 1 1
       67 GETIMPORT                        R7 K5 [require]
       69 GETTABLEKS                       R9 R0 K9 ["Parent"]
       71 GETTABLEKS                       R8 R9 K17 ["React"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K5 [require]
       76 GETTABLEKS                       R12 R0 K6 ["Components"]
       78 GETTABLEKS                       R11 R12 K7 ["NodeView"]
       80 GETTABLEKS                       R10 R11 K8 ["CompositorNodeInput"]
       82 GETTABLEKS                       R9 R10 K18 ["SimpleInput"]
       84 CALL                             R8 1 1
       85 GETIMPORT                        R9 K5 [require]
       87 GETTABLEKS                       R11 R0 K19 ["Hooks"]
       89 GETTABLEKS                       R10 R11 K20 ["useAbsoluteSize"]
       91 CALL                             R9 1 1
       92 DUPCLOSURE                       R10 K21 [PROTO_3]
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R3
       95 DUPCLOSURE                       R11 K22 [PROTO_10]
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R3
      100 DUPCLOSURE                       R12 K23 [PROTO_12]
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R4
      108 RETURN                           R12 1
