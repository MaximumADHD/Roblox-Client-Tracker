PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K1 ["SetPosition"]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["inputDown"]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K3 ["NodeId"]
       16 MOVE                             R4 R0
       17 GETUPVAL                         R5 4
       18 GETTABLEKS                       R5 R5 K4 ["isShiftPressed"]
       20 CALL                             R5 0 1
       21 GETUPVAL                         R6 4
       22 GETTABLEKS                       R6 R6 K5 ["isCtrlPressed"]
       24 CALL                             R6 0 -1
       25 CALL                             R2 -1 0
       26 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K1 ["SetPosition"]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 1
        8 LOADB                            R3 1
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K0 ["current"]
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 FORGPREP                         R2
       16 GETTABLEKS                       R7 R1 K2 ["Y"]
       18 GETTABLEKS                       R8 R6 K3 ["absolutePosition"]
       20 GETTABLEKS                       R8 R8 K2 ["Y"]
       22 JUMPIFNOTLT                      R8 R7 ; [+19]
       24 GETTABLEKS                       R7 R1 K2 ["Y"]
       26 GETTABLEKS                       R9 R6 K3 ["absolutePosition"]
       28 GETTABLEKS                       R9 R9 K2 ["Y"]
       30 GETTABLEKS                       R11 R6 K5 ["absoluteSize"]
       32 GETTABLEKS                       R11 R11 K2 ["Y"]
       34 DIVK                             R10 R11 K4 [2]
       35 ADD                              R8 R9 R10
       36 JUMPIFNOTLT                      R7 R8 ; [+5]
       38 GETUPVAL                         R7 3
       39 MOVE                             R8 R5
       40 CALL                             R7 1 0
       41 RETURN                           R0 0
       42 GETTABLEKS                       R7 R1 K2 ["Y"]
       44 GETTABLEKS                       R9 R6 K3 ["absolutePosition"]
       46 GETTABLEKS                       R9 R9 K2 ["Y"]
       48 GETTABLEKS                       R11 R6 K5 ["absoluteSize"]
       50 GETTABLEKS                       R11 R11 K2 ["Y"]
       52 DIVK                             R10 R11 K4 [2]
       53 ADD                              R8 R9 R10
       54 JUMPIFNOTLE                      R8 R7 ; [+18]
       56 GETTABLEKS                       R7 R1 K2 ["Y"]
       58 GETTABLEKS                       R9 R6 K3 ["absolutePosition"]
       60 GETTABLEKS                       R9 R9 K2 ["Y"]
       62 GETTABLEKS                       R10 R6 K5 ["absoluteSize"]
       64 GETTABLEKS                       R10 R10 K2 ["Y"]
       66 ADD                              R8 R9 R10
       67 JUMPIFNOTLT                      R7 R8 ; [+5]
       69 GETUPVAL                         R7 3
       70 ADDK                             R8 R5 K6 [1]
       71 CALL                             R7 1 0
       72 RETURN                           R0 0
       73 FORGLOOP                         R2 2 ; [-58]
       75 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+30]
        2 GETUPVAL                         R2 1
        3 JUMPIFEQKNIL                     R2 ; [+28]
        5 GETUPVAL                         R2 2
        6 JUMPIFEQKNIL                     R2 ; [+25]
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R2 R2 K0 ["getSelectedIndices"]
       11 CALL                             R2 0 1
       12 LENGTH                           R3 R2
       13 JUMPIFNOTEQKN                    R3 K1 [0] ; [+7]
       15 NEWTABLE                         R3 0 1
       17 GETUPVAL                         R4 1
       18 SETLIST                          R3 R4 1 [1]
       20 MOVE                             R2 R3
       21 GETUPVAL                         R3 4
       22 GETTABLEKS                       R3 R3 K2 ["OnInputReordered"]
       24 MOVE                             R4 R2
       25 GETUPVAL                         R5 2
       26 CALL                             R3 2 0
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K3 ["clearSelection"]
       30 CALL                             R3 0 0
       31 JUMP                             ; [+16]
       32 GETUPVAL                         R2 3
       33 GETTABLEKS                       R2 R2 K4 ["inputUp"]
       35 GETUPVAL                         R3 4
       36 GETTABLEKS                       R3 R3 K5 ["NodeId"]
       38 MOVE                             R4 R0
       39 GETUPVAL                         R5 5
       40 GETTABLEKS                       R5 R5 K6 ["isShiftPressed"]
       42 CALL                             R5 0 1
       43 GETUPVAL                         R6 5
       44 GETTABLEKS                       R6 R6 K7 ["isCtrlPressed"]
       46 CALL                             R6 0 -1
       47 CALL                             R2 -1 0
       48 GETUPVAL                         R2 6
       49 LOADNIL                          R3
       50 CALL                             R2 1 0
       51 GETUPVAL                         R2 7
       52 LOADNIL                          R3
       53 CALL                             R2 1 0
       54 GETUPVAL                         R2 8
       55 LOADB                            R3 0
       56 CALL                             R2 1 0
       57 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["ModifierKeysContext"]
       13 GETTABLEKS                       R3 R3 K1 ["Context"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K3 ["useRef"]
       19 NEWTABLE                         R4 0 0
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R4 R4 K4 ["Hooks"]
       25 GETTABLEKS                       R4 R4 K5 ["useMeasurableRef"]
       27 GETIMPORT                        R5 K8 [Vector2.zero]
       29 CALL                             R4 1 1
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K9 ["useState"]
       33 LOADB                            R6 0
       34 CALL                             R5 1 2
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K9 ["useState"]
       38 LOADNIL                          R8
       39 CALL                             R7 1 2
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R9 R9 K9 ["useState"]
       43 LOADNIL                          R10
       44 CALL                             R9 1 2
       45 GETUPVAL                         R11 0
       46 GETTABLEKS                       R11 R11 K10 ["useCallback"]
       48 NEWCLOSURE                       R12 P0
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R2
       54 NEWTABLE                         R13 0 6
       56 MOVE                             R14 R4
       57 MOVE                             R15 R8
       58 GETTABLEKS                       R16 R1 K11 ["inputDown"]
       60 GETTABLEKS                       R17 R0 K12 ["NodeId"]
       62 GETTABLEKS                       R18 R2 K13 ["isShiftPressed"]
       64 CALL                             R18 0 1
       65 GETTABLEKS                       R19 R2 K14 ["isCtrlPressed"]
       67 CALL                             R19 0 -1
       68 SETLIST                          R13 R14 -1 [1]
       70 CALL                             R11 2 1
       71 GETUPVAL                         R12 0
       72 GETTABLEKS                       R12 R12 K10 ["useCallback"]
       74 NEWCLOSURE                       R13 P1
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R10
       79 NEWTABLE                         R14 0 5
       81 MOVE                             R15 R10
       82 MOVE                             R16 R9
       83 MOVE                             R17 R4
       84 GETTABLEKS                       R18 R3 K15 ["current"]
       86 MOVE                             R19 R6
       87 SETLIST                          R14 R15 5 [1]
       89 CALL                             R12 2 1
       90 GETUPVAL                         R13 0
       91 GETTABLEKS                       R13 R13 K10 ["useCallback"]
       93 NEWCLOSURE                       R14 P2
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R0
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R6
      103 NEWTABLE                         R15 0 11
      105 GETTABLEKS                       R16 R0 K16 ["OnInputReordered"]
      107 MOVE                             R17 R7
      108 MOVE                             R18 R9
      109 MOVE                             R19 R8
      110 MOVE                             R20 R10
      111 MOVE                             R21 R6
      112 MOVE                             R22 R5
      113 GETTABLEKS                       R23 R1 K17 ["inputUp"]
      115 GETTABLEKS                       R24 R0 K12 ["NodeId"]
      117 GETTABLEKS                       R25 R2 K13 ["isShiftPressed"]
      119 CALL                             R25 0 1
      120 GETTABLEKS                       R26 R2 K14 ["isCtrlPressed"]
      122 CALL                             R26 0 -1
      123 SETLIST                          R15 R16 -1 [1]
      125 CALL                             R13 2 1
      126 DUPTABLE                         R14 K26 [{"absoluteSizesRef", "onDragStart", "onDragContinue", "onDragEnd", "draggedIndex", "highlightedIndex", "virtualRef", "isDragging"}]
      127 SETTABLEKS                       R3 R14 K18 ["absoluteSizesRef"]
      129 SETTABLEKS                       R11 R14 K19 ["onDragStart"]
      131 SETTABLEKS                       R12 R14 K20 ["onDragContinue"]
      133 SETTABLEKS                       R13 R14 K21 ["onDragEnd"]
      135 SETTABLEKS                       R7 R14 K22 ["draggedIndex"]
      137 SETTABLEKS                       R9 R14 K23 ["highlightedIndex"]
      139 SETTABLEKS                       R4 R14 K24 ["virtualRef"]
      141 SETTABLEKS                       R5 R14 K25 ["isDragging"]
      143 RETURN                           R14 1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeAbsoluteSizeState"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+10]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["dragHelper"]
        9 GETTABLEKS                       R2 R2 K2 ["absoluteSizesRef"]
       11 GETTABLEKS                       R2 R2 K3 ["current"]
       13 GETUPVAL                         R3 2
       14 SETTABLE                         R1 R2 R3
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K1 ["dragHelper"]
       19 GETTABLEKS                       R2 R2 K2 ["absoluteSizesRef"]
       21 GETTABLEKS                       R2 R2 K3 ["current"]
       23 GETUPVAL                         R3 2
       24 LOADNIL                          R4
       25 SETTABLE                         R4 R2 R3
       26 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InputPanelProps"]
        3 GETTABLEKS                       R1 R1 K1 ["OnInputChanged"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["InputPanelProps"]
        9 GETTABLEKS                       R1 R1 K1 ["OnInputChanged"]
       11 GETUPVAL                         R2 1
       12 MOVE                             R3 R0
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["InputPanelProps"]
        3 GETTABLEKS                       R0 R0 K1 ["OnInputDeleted"]
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["InputPanelProps"]
        9 GETTABLEKS                       R0 R0 K1 ["OnInputDeleted"]
       11 GETUPVAL                         R1 1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["dragHelper"]
        3 GETTABLEKS                       R2 R2 K1 ["onDragStart"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["dragHelper"]
        3 GETTABLEKS                       R2 R2 K1 ["onDragContinue"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["dragHelper"]
        3 GETTABLEKS                       R2 R2 K1 ["onDragEnd"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["input"]
        6 DUPTABLE                         R2 K3 [{"Weight"}]
        7 GETUPVAL                         R3 2
        8 SETTABLEKS                       R3 R2 K2 ["Weight"]
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["index"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Hooks"]
        7 GETTABLEKS                       R3 R3 K2 ["useTokens"]
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K3 ["useState"]
       13 LOADB                            R5 0
       14 CALL                             R4 1 2
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K4 ["useRefToState"]
       18 MOVE                             R7 R4
       19 CALL                             R6 1 1
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R7 R7 K5 ["useEffect"]
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          VAL R6
       25 CAPTURE                          VAL R4
       26 NEWTABLE                         R9 0 1
       28 MOVE                             R10 R4
       29 SETLIST                          R9 R10 1 [1]
       31 CALL                             R7 2 0
       32 GETUPVAL                         R7 2
       33 GETTABLEKS                       R7 R7 K6 ["useCallback"]
       35 NEWCLOSURE                       R8 P1
       36 CAPTURE                          VAL R5
       37 NEWTABLE                         R9 0 1
       39 MOVE                             R10 R5
       40 SETLIST                          R9 R10 1 [1]
       42 CALL                             R7 2 1
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R8 R8 K5 ["useEffect"]
       46 NEWCLOSURE                       R9 P2
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R1
       51 NEWTABLE                         R10 0 2
       53 GETTABLEKS                       R11 R2 K7 ["observeAbsoluteSizeState"]
       55 MOVE                             R12 R1
       56 SETLIST                          R10 R11 2 [1]
       58 CALL                             R8 2 0
       59 GETUPVAL                         R8 2
       60 GETTABLEKS                       R8 R8 K6 ["useCallback"]
       62 NEWCLOSURE                       R9 P3
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R1
       65 NEWTABLE                         R10 0 2
       67 GETTABLEKS                       R11 R0 K8 ["InputPanelProps"]
       69 GETTABLEKS                       R11 R11 K9 ["OnInputChanged"]
       71 MOVE                             R12 R1
       72 SETLIST                          R10 R11 2 [1]
       74 CALL                             R8 2 1
       75 GETUPVAL                         R9 2
       76 GETTABLEKS                       R9 R9 K6 ["useCallback"]
       78 NEWCLOSURE                       R10 P4
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R1
       81 NEWTABLE                         R11 0 2
       83 GETTABLEKS                       R12 R0 K8 ["InputPanelProps"]
       85 GETTABLEKS                       R12 R12 K10 ["OnInputDeleted"]
       87 MOVE                             R13 R1
       88 SETLIST                          R11 R12 2 [1]
       90 CALL                             R9 2 1
       91 GETUPVAL                         R10 2
       92 GETTABLEKS                       R10 R10 K6 ["useCallback"]
       94 NEWCLOSURE                       R11 P5
       95 CAPTURE                          VAL R0
       96 CAPTURE                          VAL R1
       97 NEWTABLE                         R12 0 2
       99 GETTABLEKS                       R13 R0 K11 ["dragHelper"]
      101 MOVE                             R14 R1
      102 SETLIST                          R12 R13 2 [1]
      104 CALL                             R10 2 1
      105 GETUPVAL                         R11 2
      106 GETTABLEKS                       R11 R11 K6 ["useCallback"]
      108 NEWCLOSURE                       R12 P6
      109 CAPTURE                          VAL R0
      110 CAPTURE                          VAL R1
      111 NEWTABLE                         R13 0 2
      113 GETTABLEKS                       R14 R0 K11 ["dragHelper"]
      115 MOVE                             R15 R1
      116 SETLIST                          R13 R14 2 [1]
      118 CALL                             R11 2 1
      119 GETUPVAL                         R12 2
      120 GETTABLEKS                       R12 R12 K6 ["useCallback"]
      122 NEWCLOSURE                       R13 P7
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R1
      125 NEWTABLE                         R14 0 2
      127 GETTABLEKS                       R15 R0 K11 ["dragHelper"]
      129 MOVE                             R16 R1
      130 SETLIST                          R14 R15 2 [1]
      132 CALL                             R12 2 1
      133 GETUPVAL                         R13 5
      134 GETTABLEKS                       R13 R13 K12 ["useSignalState"]
      136 GETUPVAL                         R14 6
      137 GETTABLEKS                       R14 R14 K13 ["useObserveNodeWeight"]
      139 GETTABLEKS                       R15 R0 K14 ["input"]
      141 GETTABLEKS                       R15 R15 K15 ["ConnectedNodeId"]
      143 CALL                             R14 1 -1
      144 CALL                             R13 -1 1
      145 GETUPVAL                         R14 2
      146 GETTABLEKS                       R14 R14 K16 ["useMemo"]
      148 NEWCLOSURE                       R15 P8
      149 CAPTURE                          UPVAL U7
      150 CAPTURE                          VAL R0
      151 CAPTURE                          VAL R13
      152 NEWTABLE                         R16 0 2
      154 GETTABLEKS                       R17 R0 K14 ["input"]
      156 MOVE                             R18 R13
      157 SETLIST                          R16 R17 2 [1]
      159 CALL                             R14 2 1
      160 GETUPVAL                         R15 2
      161 GETTABLEKS                       R15 R15 K17 ["createElement"]
      163 GETUPVAL                         R16 2
      164 GETTABLEKS                       R16 R16 K18 ["Fragment"]
      166 NEWTABLE                         R17 0 0
      168 DUPTABLE                         R18 K21 [{"Divider", "Input"}]
      169 GETUPVAL                         R19 2
      170 GETTABLEKS                       R19 R19 K17 ["createElement"]
      172 GETUPVAL                         R20 8
      173 DUPTABLE                         R21 K24 [{"Highlighted", "LayoutOrder"}]
      174 GETTABLEKS                       R22 R0 K25 ["highlighted"]
      176 SETTABLEKS                       R22 R21 K22 ["Highlighted"]
      178 MULK                             R23 R1 K27 [2]
      179 SUBK                             R22 R23 K26 [1]
      180 SETTABLEKS                       R22 R21 K23 ["LayoutOrder"]
      182 CALL                             R19 2 1
      183 SETTABLEKS                       R19 R18 K19 ["Divider"]
      185 GETUPVAL                         R19 2
      186 GETTABLEKS                       R19 R19 K17 ["createElement"]
      188 GETUPVAL                         R20 1
      189 GETTABLEKS                       R20 R20 K28 ["View"]
      191 DUPTABLE                         R21 K33 [{"tag", "LayoutOrder", "ref", "onStateChanged", "backgroundStyle"}]
      192 LOADK                            R23 K34 ["data-testid=--compositor-node-input-%* gap-small size-full-700 auto-xy"]
      193 MOVE                             R25 R1
      194 NAMECALL                         R23 R23 K35 ["format"]
      196 CALL                             R23 2 1
      197 MOVE                             R22 R23
      198 SETTABLEKS                       R22 R21 K29 ["tag"]
      200 MULK                             R22 R1 K27 [2]
      201 SETTABLEKS                       R22 R21 K23 ["LayoutOrder"]
      203 GETTABLEKS                       R22 R2 K36 ["setFrame"]
      205 SETTABLEKS                       R22 R21 K30 ["ref"]
      207 SETTABLEKS                       R7 R21 K31 ["onStateChanged"]
      209 GETTABLEKS                       R23 R0 K37 ["selected"]
      211 JUMPIFNOT                        R23 ; [+12]
      212 DUPTABLE                         R22 K41 [{["Color3"], ["Transparency"] = 0.5}]
      213 GETTABLEKS                       R23 R3 K42 ["Color"]
      215 GETTABLEKS                       R23 R23 K43 ["System"]
      217 GETTABLEKS                       R23 R23 K44 ["Emphasis"]
      219 GETTABLEKS                       R23 R23 K38 ["Color3"]
      221 SETTABLEKS                       R23 R22 K38 ["Color3"]
      223 JUMP                             ; [+1]
      224 LOADNIL                          R22
      225 SETTABLEKS                       R22 R21 K32 ["backgroundStyle"]
      227 DUPTABLE                         R22 K47 [{"Content", "DragDetector"}]
      228 GETUPVAL                         R23 2
      229 GETTABLEKS                       R23 R23 K17 ["createElement"]
      231 GETTABLEKS                       R24 R0 K8 ["InputPanelProps"]
      233 GETTABLEKS                       R24 R24 K48 ["InputBuilder"]
      235 DUPTABLE                         R25 K63 [{"NodeId", "InputBuilderProps", "InputIndex", "Input", "GraphPayload", "Position", "Size", "PropertyLookup", "StateLookup", "text", "editName", "OnChanged", "OnDelete", "IsHovered", "HasDuplicateName"}]
      236 GETTABLEKS                       R26 R0 K8 ["InputPanelProps"]
      238 GETTABLEKS                       R26 R26 K49 ["NodeId"]
      240 SETTABLEKS                       R26 R25 K49 ["NodeId"]
      242 GETTABLEKS                       R26 R0 K8 ["InputPanelProps"]
      244 GETTABLEKS                       R26 R26 K50 ["InputBuilderProps"]
      246 SETTABLEKS                       R26 R25 K50 ["InputBuilderProps"]
      248 GETUPVAL                         R27 9
      249 CALL                             R27 0 1
      250 JUMPIFNOT                        R27 ; [+2]
      251 MOVE                             R26 R1
      252 JUMP                             ; [+1]
      253 LOADNIL                          R26
      254 SETTABLEKS                       R26 R25 K51 ["InputIndex"]
      256 SETTABLEKS                       R14 R25 K20 ["Input"]
      258 GETTABLEKS                       R26 R0 K52 ["GraphPayload"]
      260 SETTABLEKS                       R26 R25 K52 ["GraphPayload"]
      262 GETTABLEKS                       R26 R0 K53 ["Position"]
      264 SETTABLEKS                       R26 R25 K53 ["Position"]
      266 GETTABLEKS                       R26 R0 K54 ["Size"]
      268 SETTABLEKS                       R26 R25 K54 ["Size"]
      270 GETTABLEKS                       R26 R0 K55 ["PropertyLookup"]
      272 SETTABLEKS                       R26 R25 K55 ["PropertyLookup"]
      274 GETTABLEKS                       R26 R0 K56 ["StateLookup"]
      276 SETTABLEKS                       R26 R25 K56 ["StateLookup"]
      278 GETTABLEKS                       R26 R0 K57 ["text"]
      280 SETTABLEKS                       R26 R25 K57 ["text"]
      282 GETTABLEKS                       R26 R0 K58 ["editName"]
      284 SETTABLEKS                       R26 R25 K58 ["editName"]
      286 SETTABLEKS                       R8 R25 K59 ["OnChanged"]
      288 GETUPVAL                         R27 10
      289 CALL                             R27 0 1
      290 JUMPIFNOT                        R27 ; [+2]
      291 MOVE                             R26 R9
      292 JUMP                             ; [+1]
      293 LOADNIL                          R26
      294 SETTABLEKS                       R26 R25 K60 ["OnDelete"]
      296 MOVE                             R26 R4
      297 JUMPIFNOT                        R26 ; [+2]
      298 GETTABLEKS                       R26 R6 K64 ["current"]
      300 SETTABLEKS                       R26 R25 K61 ["IsHovered"]
      302 GETTABLEKS                       R26 R0 K62 ["HasDuplicateName"]
      304 SETTABLEKS                       R26 R25 K62 ["HasDuplicateName"]
      306 CALL                             R23 2 1
      307 SETTABLEKS                       R23 R22 K45 ["Content"]
      309 GETUPVAL                         R23 2
      310 GETTABLEKS                       R23 R23 K17 ["createElement"]
      312 LOADK                            R24 K65 ["UIDragDetector"]
      313 NEWTABLE                         R25 4 0
      315 GETIMPORT                        R26 K69 [Enum.UIDragDetectorDragStyle.Scriptable]
      317 SETTABLEKS                       R26 R25 K70 ["DragStyle"]
      319 GETUPVAL                         R26 2
      320 GETTABLEKS                       R26 R26 K71 ["Event"]
      322 GETTABLEKS                       R26 R26 K72 ["DragStart"]
      324 SETTABLE                         R10 R25 R26
      325 GETUPVAL                         R26 2
      326 GETTABLEKS                       R26 R26 K71 ["Event"]
      328 GETTABLEKS                       R26 R26 K73 ["DragContinue"]
      330 SETTABLE                         R11 R25 R26
      331 GETUPVAL                         R26 2
      332 GETTABLEKS                       R26 R26 K71 ["Event"]
      334 GETTABLEKS                       R26 R26 K74 ["DragEnd"]
      336 SETTABLE                         R12 R25 R26
      337 CALL                             R23 2 1
      338 SETTABLEKS                       R23 R22 K46 ["DragDetector"]
      340 CALL                             R19 3 1
      341 SETTABLEKS                       R19 R18 K20 ["Input"]
      343 CALL                             R15 3 -1
      344 RETURN                           R15 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isDragging"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["draggedIndex"]
        7 JUMPIF                           R0 ; [+2]
        8 LOADNIL                          R0
        9 RETURN                           R0 1
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K2 ["createElement"]
       13 GETUPVAL                         R1 2
       14 DUPTABLE                         R2 K5 [{"virtualRef", "draggedIndex", "inputs"}]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K3 ["virtualRef"]
       18 SETTABLEKS                       R3 R2 K3 ["virtualRef"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K1 ["draggedIndex"]
       23 SETTABLEKS                       R3 R2 K1 ["draggedIndex"]
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R3 R3 K6 ["Inputs"]
       28 SETTABLEKS                       R3 R2 K4 ["inputs"]
       30 CALL                             R0 2 -1
       31 RETURN                           R0 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 NEWTABLE                         R3 0 0
       12 NEWTABLE                         R4 0 0
       14 GETUPVAL                         R5 3
       15 CALL                             R5 0 1
       16 JUMPIFNOT                        R5 ; [+25]
       17 GETTABLEKS                       R5 R0 K2 ["Inputs"]
       19 LOADNIL                          R6
       20 LOADNIL                          R7
       21 FORGPREP                         R5
       22 GETTABLEKS                       R11 R9 K3 ["ConnectedNodeName"]
       24 FASTCALL1                        TYPE R11 ; [+2]
       25 GETIMPORT                        R10 K5 [type]
       27 CALL                             R10 1 1
       28 JUMPIFNOTEQKS                    R10 K6 ["string"] ; [+11]
       30 GETTABLEKS                       R11 R9 K3 ["ConnectedNodeName"]
       32 GETTABLE                         R10 R3 R11
       33 JUMPIFNOT                        R10 ; [+2]
       34 LOADB                            R10 1
       35 SETTABLE                         R10 R4 R8
       36 GETTABLEKS                       R10 R9 K3 ["ConnectedNodeName"]
       38 LOADB                            R11 1
       39 SETTABLE                         R11 R3 R10
       40 FORGLOOP                         R5 2 ; [-19]
       42 NEWTABLE                         R5 0 0
       44 GETTABLEKS                       R6 R0 K2 ["Inputs"]
       46 LOADNIL                          R7
       47 LOADNIL                          R8
       48 FORGPREP                         R6
       49 LOADK                            R12 K7 ["Input%*"]
       50 MOVE                             R14 R9
       51 NAMECALL                         R12 R12 K8 ["format"]
       53 CALL                             R12 2 1
       54 MOVE                             R11 R12
       55 GETUPVAL                         R12 0
       56 GETTABLEKS                       R12 R12 K9 ["createElement"]
       58 GETUPVAL                         R13 4
       59 DUPTABLE                         R14 K24 [{"index", "highlighted", "selected", "dragHelper", "input", "InputPanelProps", "HasDuplicateName", "GraphPayload", "Position", "Size", "PropertyLookup", "StateLookup", "text", "editName"}]
       60 SETTABLEKS                       R9 R14 K10 ["index"]
       62 GETTABLEKS                       R16 R2 K25 ["highlightedIndex"]
       64 JUMPIFEQ                         R16 R9 ; [+2]
       66 LOADB                            R15 0 +1
       67 LOADB                            R15 1
       68 SETTABLEKS                       R15 R14 K11 ["highlighted"]
       70 GETTABLEKS                       R15 R1 K26 ["isInputSelected"]
       72 GETTABLEKS                       R16 R0 K27 ["NodeId"]
       74 MOVE                             R17 R9
       75 CALL                             R15 2 1
       76 SETTABLEKS                       R15 R14 K12 ["selected"]
       78 SETTABLEKS                       R2 R14 K13 ["dragHelper"]
       80 SETTABLEKS                       R10 R14 K14 ["input"]
       82 SETTABLEKS                       R0 R14 K15 ["InputPanelProps"]
       84 GETUPVAL                         R16 3
       85 CALL                             R16 0 1
       86 JUMPIFNOT                        R16 ; [+2]
       87 GETTABLE                         R15 R4 R9
       88 JUMP                             ; [+1]
       89 LOADNIL                          R15
       90 SETTABLEKS                       R15 R14 K16 ["HasDuplicateName"]
       92 GETTABLEKS                       R15 R0 K17 ["GraphPayload"]
       94 SETTABLEKS                       R15 R14 K17 ["GraphPayload"]
       96 GETTABLEKS                       R15 R0 K18 ["Position"]
       98 SETTABLEKS                       R15 R14 K18 ["Position"]
      100 GETTABLEKS                       R15 R0 K19 ["Size"]
      102 SETTABLEKS                       R15 R14 K19 ["Size"]
      104 GETTABLEKS                       R15 R0 K20 ["PropertyLookup"]
      106 SETTABLEKS                       R15 R14 K20 ["PropertyLookup"]
      108 GETTABLEKS                       R15 R0 K21 ["StateLookup"]
      110 SETTABLEKS                       R15 R14 K21 ["StateLookup"]
      112 GETTABLEKS                       R15 R0 K22 ["text"]
      114 SETTABLEKS                       R15 R14 K22 ["text"]
      116 GETTABLEKS                       R15 R0 K23 ["editName"]
      118 SETTABLEKS                       R15 R14 K23 ["editName"]
      120 CALL                             R12 2 1
      121 SETTABLE                         R12 R5 R11
      122 FORGLOOP                         R6 2 ; [-74]
      124 GETTABLEKS                       R7 R2 K25 ["highlightedIndex"]
      126 GETTABLEKS                       R10 R0 K2 ["Inputs"]
      128 LENGTH                           R9 R10
      129 ADDK                             R8 R9 K28 [1]
      130 JUMPIFEQ                         R7 R8 ; [+2]
      132 LOADB                            R6 0 +1
      133 LOADB                            R6 1
      134 GETUPVAL                         R7 0
      135 GETTABLEKS                       R7 R7 K9 ["createElement"]
      137 GETUPVAL                         R8 5
      138 DUPTABLE                         R9 K31 [{"LayoutOrder", "Highlighted"}]
      139 GETTABLEKS                       R14 R0 K2 ["Inputs"]
      141 LENGTH                           R13 R14
      142 ADDK                             R12 R13 K28 [1]
      143 MULK                             R11 R12 K32 [2]
      144 SUBK                             R10 R11 K28 [1]
      145 SETTABLEKS                       R10 R9 K29 ["LayoutOrder"]
      147 SETTABLEKS                       R6 R9 K30 ["Highlighted"]
      149 CALL                             R7 2 1
      150 SETTABLEKS                       R7 R5 K33 ["NextDivider"]
      152 GETUPVAL                         R7 0
      153 GETTABLEKS                       R7 R7 K9 ["createElement"]
      155 GETUPVAL                         R8 6
      156 GETTABLEKS                       R8 R8 K34 ["View"]
      158 DUPTABLE                         R9 K37 [{["tag"] = "col gap-small size-full-700 auto-y", ["LayoutOrder"]}]
      159 GETTABLEKS                       R13 R0 K2 ["Inputs"]
      161 LENGTH                           R12 R13
      162 ADDK                             R11 R12 K28 [1]
      163 MULK                             R10 R11 K32 [2]
      164 SETTABLEKS                       R10 R9 K29 ["LayoutOrder"]
      166 DUPTABLE                         R10 K39 [{"Input"}]
      167 GETTABLEKS                       R12 R0 K40 ["InputBuilderProps"]
      169 JUMPIFNOT                        R12 ; [+94]
      170 GETTABLEKS                       R12 R0 K27 ["NodeId"]
      172 JUMPIFNOT                        R12 ; [+91]
      173 GETUPVAL                         R12 7
      174 JUMPIFNOT                        R12 ; [+89]
      175 GETUPVAL                         R11 0
      176 GETTABLEKS                       R11 R11 K9 ["createElement"]
      178 GETUPVAL                         R12 7
      179 DUPTABLE                         R13 K46 [{["Name"], ["DisplayName"], ["Label"], ["HideWeight"] = True, ["InputBuilderProps"], ["Input"], ["NodeId"], ["LayoutOrder"], ["Position"], ["PropertyLookup"], ["Size"], ["StateLookup"], ["text"], ["editName"], ["GraphPayload"]}]
      180 LOADK                            R15 K7 ["Input%*"]
      181 GETTABLEKS                       R18 R0 K2 ["Inputs"]
      183 LENGTH                           R17 R18
      184 NAMECALL                         R15 R15 K8 ["format"]
      186 CALL                             R15 2 1
      187 MOVE                             R14 R15
      188 SETTABLEKS                       R14 R13 K41 ["Name"]
      190 GETUPVAL                         R15 8
      191 CALL                             R15 0 1
      192 JUMPIF                           R15 ; [+2]
      193 LOADK                            R14 K47 ["<New Input>"]
      194 JUMP                             ; [+1]
      195 LOADNIL                          R14
      196 SETTABLEKS                       R14 R13 K42 ["DisplayName"]
      198 GETUPVAL                         R14 9
      199 GETTABLEKS                       R14 R14 K48 ["NEW_INPUT"]
      201 SETTABLEKS                       R14 R13 K43 ["Label"]
      203 GETTABLEKS                       R14 R0 K40 ["InputBuilderProps"]
      205 SETTABLEKS                       R14 R13 K40 ["InputBuilderProps"]
      207 DUPTABLE                         R14 K52 [{["Name"], ["Weight"] = , ["Value"]}]
      208 LOADK                            R16 K7 ["Input%*"]
      209 GETTABLEKS                       R19 R0 K2 ["Inputs"]
      211 LENGTH                           R18 R19
      212 NAMECALL                         R16 R16 K8 ["format"]
      214 CALL                             R16 2 1
      215 MOVE                             R15 R16
      216 SETTABLEKS                       R15 R14 K41 ["Name"]
      218 GETTABLEKS                       R15 R0 K53 ["NewInputDefaultValue"]
      220 SETTABLEKS                       R15 R14 K51 ["Value"]
      222 SETTABLEKS                       R14 R13 K38 ["Input"]
      224 GETTABLEKS                       R14 R0 K27 ["NodeId"]
      226 SETTABLEKS                       R14 R13 K27 ["NodeId"]
      228 GETTABLEKS                       R16 R0 K2 ["Inputs"]
      230 LENGTH                           R15 R16
      231 ADDK                             R14 R15 K28 [1]
      232 SETTABLEKS                       R14 R13 K29 ["LayoutOrder"]
      234 GETTABLEKS                       R14 R0 K18 ["Position"]
      236 SETTABLEKS                       R14 R13 K18 ["Position"]
      238 GETTABLEKS                       R14 R0 K20 ["PropertyLookup"]
      240 SETTABLEKS                       R14 R13 K20 ["PropertyLookup"]
      242 GETTABLEKS                       R14 R0 K19 ["Size"]
      244 SETTABLEKS                       R14 R13 K19 ["Size"]
      246 GETTABLEKS                       R14 R0 K21 ["StateLookup"]
      248 SETTABLEKS                       R14 R13 K21 ["StateLookup"]
      250 GETTABLEKS                       R14 R0 K22 ["text"]
      252 SETTABLEKS                       R14 R13 K22 ["text"]
      254 GETTABLEKS                       R14 R0 K23 ["editName"]
      256 SETTABLEKS                       R14 R13 K23 ["editName"]
      258 GETTABLEKS                       R14 R0 K17 ["GraphPayload"]
      260 SETTABLEKS                       R14 R13 K17 ["GraphPayload"]
      262 CALL                             R11 2 1
      263 JUMP                             ; [+1]
      264 LOADNIL                          R11
      265 SETTABLEKS                       R11 R10 K38 ["Input"]
      267 CALL                             R7 3 1
      268 SETTABLEKS                       R7 R5 K54 ["NextInput"]
      270 GETUPVAL                         R7 0
      271 GETTABLEKS                       R7 R7 K55 ["useMemo"]
      273 NEWCLOSURE                       R8 P0
      274 CAPTURE                          VAL R2
      275 CAPTURE                          UPVAL U0
      276 CAPTURE                          UPVAL U10
      277 CAPTURE                          VAL R0
      278 NEWTABLE                         R9 0 5
      280 GETTABLEKS                       R10 R2 K56 ["draggedIndex"]
      282 GETTABLEKS                       R11 R2 K57 ["virtualRef"]
      284 GETTABLEKS                       R12 R0 K2 ["Inputs"]
      286 GETTABLEKS                       R13 R2 K58 ["isDragging"]
      288 GETTABLEKS                       R14 R1 K59 ["getSelectedIndices"]
      290 CALL                             R14 0 -1
      291 SETLIST                          R9 R10 -1 [1]
      293 CALL                             R7 2 1
      294 GETUPVAL                         R8 0
      295 GETTABLEKS                       R8 R8 K9 ["createElement"]
      297 GETUPVAL                         R9 6
      298 GETTABLEKS                       R9 R9 K34 ["View"]
      300 DUPTABLE                         R10 K61 [{["tag"] = "col gap-none size-full-700 auto-y", ["LayoutOrder"]}]
      301 GETTABLEKS                       R11 R0 K29 ["LayoutOrder"]
      303 SETTABLEKS                       R11 R10 K29 ["LayoutOrder"]
      305 DUPTABLE                         R11 K64 [{"Children", "PopOver"}]
      306 GETUPVAL                         R12 0
      307 GETTABLEKS                       R12 R12 K9 ["createElement"]
      309 GETUPVAL                         R13 0
      310 GETTABLEKS                       R13 R13 K65 ["Fragment"]
      312 NEWTABLE                         R14 0 0
      314 MOVE                             R15 R5
      315 CALL                             R12 3 1
      316 SETTABLEKS                       R12 R11 K62 ["Children"]
      318 SETTABLEKS                       R7 R11 K63 ["PopOver"]
      320 CALL                             R8 3 -1
      321 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeView"]
       13 GETTABLEKS                       R2 R2 K8 ["CompositorNodes"]
       15 GETTABLEKS                       R2 R2 K9 ["CompositorStateUtils"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Parent"]
       22 GETTABLEKS                       R3 R3 K11 ["Dash"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Components"]
       29 GETTABLEKS                       R4 R4 K7 ["NodeView"]
       31 GETTABLEKS                       R4 R4 K12 ["CompositorNodeInput"]
       33 GETTABLEKS                       R4 R4 K13 ["Divider"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K10 ["Parent"]
       40 GETTABLEKS                       R5 R5 K14 ["Foundation"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Components"]
       47 GETTABLEKS                       R6 R6 K7 ["NodeView"]
       49 GETTABLEKS                       R6 R6 K12 ["CompositorNodeInput"]
       51 GETTABLEKS                       R6 R6 K15 ["InputPanelPopover"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K6 ["Components"]
       58 GETTABLEKS                       R7 R7 K7 ["NodeView"]
       60 GETTABLEKS                       R7 R7 K12 ["CompositorNodeInput"]
       62 GETTABLEKS                       R7 R7 K16 ["InputPanelTypes"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K5 [require]
       67 GETTABLEKS                       R8 R0 K17 ["Contexts"]
       69 GETTABLEKS                       R8 R8 K18 ["InputSelectionContext"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R9 R0 K10 ["Parent"]
       76 GETTABLEKS                       R9 R9 K19 ["NodeGraphing"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K10 ["Parent"]
       83 GETTABLEKS                       R10 R10 K20 ["React"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K10 ["Parent"]
       90 GETTABLEKS                       R11 R11 K21 ["ReactUtils"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K10 ["Parent"]
       97 GETTABLEKS                       R12 R12 K22 ["Signals"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K5 [require]
      102 GETTABLEKS                       R13 R0 K10 ["Parent"]
      104 GETTABLEKS                       R13 R13 K23 ["SignalsReact"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K6 ["Components"]
      111 GETTABLEKS                       R14 R14 K7 ["NodeView"]
      113 GETTABLEKS                       R14 R14 K12 ["CompositorNodeInput"]
      115 GETTABLEKS                       R14 R14 K24 ["SimpleInput"]
      117 CALL                             R13 1 1
      118 GETIMPORT                        R14 K5 [require]
      120 GETTABLEKS                       R15 R0 K25 ["Hooks"]
      122 GETTABLEKS                       R15 R15 K26 ["useAbsoluteSize"]
      124 CALL                             R14 1 1
      125 GETTABLEKS                       R15 R8 K27 ["getFFlagAnimGraphUIDefaultAndDisconnectedInputs"]
      127 GETIMPORT                        R16 K5 [require]
      129 GETTABLEKS                       R17 R0 K28 ["Flags"]
      131 GETTABLEKS                       R17 R17 K29 ["getFFlagAnimGraphUIDuplicateNodeNames"]
      133 CALL                             R16 1 1
      134 GETIMPORT                        R17 K5 [require]
      136 GETTABLEKS                       R18 R0 K28 ["Flags"]
      138 GETTABLEKS                       R18 R18 K30 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      140 CALL                             R17 1 1
      141 DUPCLOSURE                       R18 K31 [PROTO_3]
      142 CAPTURE                          VAL R9
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R4
      146 DUPCLOSURE                       R19 K32 [PROTO_14]
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R17
      157 CAPTURE                          VAL R15
      158 DUPCLOSURE                       R20 K33 [PROTO_16]
      159 CAPTURE                          VAL R9
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R19
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R13
      167 CAPTURE                          VAL R15
      168 CAPTURE                          VAL R6
      169 CAPTURE                          VAL R5
      170 RETURN                           R20 1
