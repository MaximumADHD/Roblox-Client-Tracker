PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["draggingTargetObservable"]
        9 GETTABLEKS                       R3 R3 K0 ["get"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 CALL                             R1 3 0
       14 GETUPVAL                         R1 1
       15 MOVE                             R2 R0
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K1 ["draggingTargetObservable"]
       19 GETTABLEKS                       R3 R3 K0 ["get"]
       21 CALL                             R3 0 1
       22 GETUPVAL                         R4 4
       23 CALL                             R1 3 0
       24 GETUPVAL                         R1 1
       25 MOVE                             R2 R0
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K1 ["draggingTargetObservable"]
       29 GETTABLEKS                       R3 R3 K0 ["get"]
       31 CALL                             R3 0 1
       32 GETUPVAL                         R4 5
       33 CALL                             R1 3 0
       34 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["datum"]
        6 GETTABLEKS                       R0 R0 K2 ["id"]
        8 GETUPVAL                         R2 1
        9 GETTABLE                         R1 R2 R0
       10 JUMPIF                           R1 ; [+14]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K3 ["session"]
       14 GETTABLEKS                       R1 R1 K4 ["selectIds"]
       16 GETIMPORT                        R2 K7 [table.freeze]
       18 NEWTABLE                         R3 0 1
       20 MOVE                             R4 R0
       21 SETLIST                          R3 R4 1 [1]
       23 CALL                             R2 1 -1
       24 CALL                             R1 -1 0
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R1 R1 K3 ["session"]
       28 GETTABLEKS                       R1 R1 K8 ["openContextMenuAsync"]
       30 CALL                             R1 0 1
       31 GETUPVAL                         R2 3
       32 GETTABLEKS                       R2 R2 K9 ["showContextMenu"]
       34 MOVE                             R3 R1
       35 CALL                             R2 1 0
       36 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputState"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputState.Begin]
        4 JUMPIFNOTEQ                      R2 R3 ; [+7]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["inputBegan"]
        9 MOVE                             R3 R0
       10 MOVE                             R4 R1
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["visibleNodeObservable"]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R1
        4 GETTABLEKS                       R4 R0 K1 ["session"]
        6 GETTABLEKS                       R5 R0 K2 ["scrollingFrameRef"]
        8 GETTABLEKS                       R6 R0 K3 ["textLabelRef"]
       10 GETTABLEKS                       R7 R0 K4 ["startEdgeScrolling"]
       12 GETTABLEKS                       R8 R0 K5 ["startBoxSelect"]
       14 CALL                             R2 6 1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K6 ["useRef"]
       18 LOADNIL                          R4
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K6 ["useRef"]
       23 LOADNIL                          R5
       24 CALL                             R4 1 1
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K6 ["useRef"]
       28 LOADNIL                          R6
       29 CALL                             R5 1 1
       30 GETUPVAL                         R6 2
       31 MOVE                             R7 R3
       32 CALL                             R6 1 1
       33 GETUPVAL                         R7 2
       34 MOVE                             R8 R4
       35 CALL                             R7 1 1
       36 GETUPVAL                         R8 2
       37 MOVE                             R9 R5
       38 CALL                             R8 1 1
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R9 R9 K7 ["useCallback"]
       42 NEWCLOSURE                       R10 P0
       43 CAPTURE                          VAL R1
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R8
       49 NEWTABLE                         R11 0 4
       51 MOVE                             R12 R1
       52 GETTABLEKS                       R13 R0 K8 ["draggingTargetObservable"]
       54 MOVE                             R14 R6
       55 MOVE                             R15 R8
       56 SETLIST                          R11 R12 4 [1]
       58 CALL                             R9 2 1
       59 GETUPVAL                         R10 4
       60 GETTABLEKS                       R10 R10 K9 ["useEffect"]
       62 MOVE                             R11 R1
       63 MOVE                             R12 R9
       64 NEWTABLE                         R13 0 1
       66 MOVE                             R14 R9
       67 SETLIST                          R13 R14 1 [1]
       69 CALL                             R10 3 0
       70 GETUPVAL                         R10 4
       71 GETTABLEKS                       R10 R10 K9 ["useEffect"]
       73 GETTABLEKS                       R11 R0 K8 ["draggingTargetObservable"]
       75 MOVE                             R12 R9
       76 NEWTABLE                         R13 0 1
       78 MOVE                             R14 R9
       79 SETLIST                          R13 R14 1 [1]
       81 CALL                             R10 3 0
       82 GETUPVAL                         R10 4
       83 GETTABLEKS                       R10 R10 K10 ["use"]
       85 GETTABLEKS                       R11 R0 K1 ["session"]
       87 GETTABLEKS                       R11 R11 K11 ["selectedIdsObservable"]
       89 CALL                             R10 1 1
       90 GETUPVAL                         R11 1
       91 GETTABLEKS                       R11 R11 K12 ["useContext"]
       93 GETUPVAL                         R12 5
       94 GETTABLEKS                       R12 R12 K13 ["Context"]
       96 CALL                             R11 1 1
       97 GETUPVAL                         R12 1
       98 GETTABLEKS                       R12 R12 K7 ["useCallback"]
      100 NEWCLOSURE                       R13 P1
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R11
      105 NEWTABLE                         R14 0 6
      107 MOVE                             R15 R1
      108 MOVE                             R16 R10
      109 GETTABLEKS                       R17 R0 K1 ["session"]
      111 GETTABLEKS                       R17 R17 K14 ["selectIds"]
      113 GETTABLEKS                       R18 R0 K1 ["session"]
      115 GETTABLEKS                       R18 R18 K15 ["openContextMenuAsync"]
      117 GETTABLEKS                       R19 R0 K1 ["session"]
      119 GETTABLEKS                       R19 R19 K16 ["performContextMenuAction"]
      121 GETTABLEKS                       R20 R11 K17 ["showContextMenu"]
      123 SETLIST                          R14 R15 6 [1]
      125 CALL                             R12 2 1
      126 GETUPVAL                         R13 1
      127 GETTABLEKS                       R13 R13 K7 ["useCallback"]
      129 NEWCLOSURE                       R14 P2
      130 CAPTURE                          VAL R2
      131 NEWTABLE                         R15 0 1
      133 GETTABLEKS                       R16 R2 K18 ["inputBegan"]
      135 SETLIST                          R15 R16 1 [1]
      137 CALL                             R13 2 1
      138 GETUPVAL                         R14 6
      139 CALL                             R14 0 1
      140 GETUPVAL                         R15 7
      141 LOADK                            R16 K19 ["TextButton"]
      142 NEWTABLE                         R17 8 0
      144 LOADN                            R18 1
      145 SETTABLEKS                       R18 R17 K20 ["BackgroundTransparency"]
      147 LOADB                            R18 1
      148 SETTABLEKS                       R18 R17 K21 ["ClipsDescendants"]
      150 GETIMPORT                        R18 K24 [UDim2.new]
      152 LOADN                            R19 1
      153 LOADN                            R20 0
      154 LOADN                            R21 0
      155 GETUPVAL                         R22 8
      156 GETTABLEKS                       R22 R22 K25 ["explorerRowHeight"]
      158 CALL                             R18 4 1
      159 SETTABLEKS                       R18 R17 K26 ["Size"]
      161 LOADK                            R18 K27 [""]
      162 SETTABLEKS                       R18 R17 K28 ["Text"]
      164 GETUPVAL                         R18 1
      165 GETTABLEKS                       R18 R18 K29 ["Event"]
      167 GETTABLEKS                       R18 R18 K30 ["InputBegan"]
      169 GETTABLEKS                       R19 R2 K18 ["inputBegan"]
      171 SETTABLE                         R19 R17 R18
      172 GETUPVAL                         R18 1
      173 GETTABLEKS                       R18 R18 K29 ["Event"]
      175 GETTABLEKS                       R18 R18 K31 ["InputChanged"]
      177 SETTABLE                         R13 R17 R18
      178 GETUPVAL                         R18 1
      179 GETTABLEKS                       R18 R18 K29 ["Event"]
      181 GETTABLEKS                       R18 R18 K32 ["MouseButton2Down"]
      183 GETUPVAL                         R20 9
      184 CALL                             R20 0 1
      185 JUMPIFNOT                        R20 ; [+2]
      186 LOADNIL                          R19
      187 JUMP                             ; [+1]
      188 MOVE                             R19 R12
      189 SETTABLE                         R19 R17 R18
      190 GETUPVAL                         R18 1
      191 GETTABLEKS                       R18 R18 K33 ["Tag"]
      193 LOADK                            R19 K34 ["Explorer-UnderlaysRow"]
      194 SETTABLE                         R19 R17 R18
      195 DUPTABLE                         R18 K38 [{"Background", "BackgroundOverlay", "Border"}]
      196 GETUPVAL                         R19 7
      197 LOADK                            R20 K39 ["Frame"]
      198 NEWTABLE                         R21 4 0
      200 MOVE                             R22 R14
      201 CALL                             R22 0 1
      202 SETTABLEKS                       R22 R21 K40 ["ZIndex"]
      204 SETTABLEKS                       R3 R21 K41 ["ref"]
      206 GETUPVAL                         R22 1
      207 GETTABLEKS                       R22 R22 K33 ["Tag"]
      209 LOADK                            R23 K42 ["Explorer-UnderlaysRow-Background Explorer-UnderlaysRow-Corners"]
      210 SETTABLE                         R23 R21 R22
      211 CALL                             R19 2 1
      212 SETTABLEKS                       R19 R18 K35 ["Background"]
      214 GETUPVAL                         R19 7
      215 LOADK                            R20 K39 ["Frame"]
      216 NEWTABLE                         R21 4 0
      218 MOVE                             R22 R14
      219 CALL                             R22 0 1
      220 SETTABLEKS                       R22 R21 K40 ["ZIndex"]
      222 SETTABLEKS                       R4 R21 K41 ["ref"]
      224 GETUPVAL                         R22 1
      225 GETTABLEKS                       R22 R22 K33 ["Tag"]
      227 LOADK                            R23 K43 ["Explorer-UnderlaysRow-BackgroundOverlay Explorer-UnderlaysRow-Corners"]
      228 SETTABLE                         R23 R21 R22
      229 CALL                             R19 2 1
      230 SETTABLEKS                       R19 R18 K36 ["BackgroundOverlay"]
      232 GETUPVAL                         R19 7
      233 LOADK                            R20 K39 ["Frame"]
      234 NEWTABLE                         R21 4 0
      236 MOVE                             R22 R14
      237 CALL                             R22 0 1
      238 SETTABLEKS                       R22 R21 K40 ["ZIndex"]
      240 SETTABLEKS                       R5 R21 K41 ["ref"]
      242 GETUPVAL                         R22 1
      243 GETTABLEKS                       R22 R22 K33 ["Tag"]
      245 LOADK                            R23 K44 ["Explorer-UnderlaysRow-Border"]
      246 SETTABLE                         R23 R21 R22
      247 CALL                             R19 2 1
      248 SETTABLEKS                       R19 R18 K37 ["Border"]
      250 CALL                             R15 3 -1
      251 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["ContextMenuContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Observable"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Parent"]
       34 GETTABLEKS                       R5 R5 K13 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K14 ["RpcTypes"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Util"]
       46 GETTABLEKS                       R7 R7 K15 ["createNextOrder"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K16 ["Flags"]
       53 GETTABLEKS                       R8 R8 K17 ["getFFlagExplorerStreaming"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K6 ["Util"]
       60 GETTABLEKS                       R9 R9 K18 ["setVisibleExplorerNodeTags"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K19 ["Hooks"]
       67 GETTABLEKS                       R10 R10 K20 ["useBoxSelect"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K19 ["Hooks"]
       74 GETTABLEKS                       R11 R11 K21 ["useDragAndDrop"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K8 ["Components"]
       81 GETTABLEKS                       R12 R12 K22 ["Underlays"]
       83 GETTABLEKS                       R12 R12 K23 ["useExplorerNodeClicking"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K19 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K24 ["useImperativeTagger"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K19 ["Hooks"]
       97 GETTABLEKS                       R14 R14 K25 ["useVisibleExplorerNodeRange"]
       99 CALL                             R13 1 1
      100 GETTABLEKS                       R14 R4 K26 ["createElement"]
      102 DUPCLOSURE                       R15 K27 [PROTO_3]
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R7
      113 RETURN                           R15 1
