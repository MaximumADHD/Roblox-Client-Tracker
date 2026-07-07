PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 SUB                              R2 R1 R0
        7 GETUPVAL                         R3 0
        8 SETTABLEKS                       R0 R3 K0 ["current"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K1 ["setHintIsDragging"]
       13 LOADB                            R4 1
       14 CALL                             R3 1 0
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K2 ["panViewport"]
       18 MOVE                             R4 R2
       19 CALL                             R3 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 SUB                              R2 R1 R0
        7 GETUPVAL                         R3 0
        8 SETTABLEKS                       R0 R3 K0 ["current"]
       10 GETTABLEKS                       R3 R2 K1 ["Magnitude"]
       12 LOADN                            R4 2
       13 JUMPIFNOTLT                      R4 R3 ; [+19]
       15 GETUPVAL                         R3 1
       16 LOADB                            R4 1
       17 SETTABLEKS                       R4 R3 K0 ["current"]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K2 ["zoomViewport"]
       22 GETTABLEKS                       R7 R2 K4 ["Y"]
       24 FASTCALL1                        MATH_SIGN R7 ; [+2]
       25 GETIMPORT                        R6 K7 [math.sign]
       27 CALL                             R6 1 1
       28 GETTABLEKS                       R7 R2 K1 ["Magnitude"]
       30 MUL                              R5 R6 R7
       31 DIVK                             R4 R5 K3 [100]
       32 CALL                             R3 1 0
       33 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton2]
        4 JUMPIFNOTEQ                      R1 R2 ; [+26]
        6 GETIMPORT                        R3 K6 [Enum.ModifierKey.Alt]
        8 NAMECALL                         R1 R0 K7 ["IsModifierKeyDown"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+14]
       12 GETIMPORT                        R1 K10 [Vector2.new]
       14 GETTABLEKS                       R2 R0 K11 ["Position"]
       16 GETTABLEKS                       R2 R2 K12 ["X"]
       18 GETTABLEKS                       R3 R0 K11 ["Position"]
       20 GETTABLEKS                       R3 R3 K13 ["Y"]
       22 CALL                             R1 2 1
       23 GETUPVAL                         R2 0
       24 SETTABLEKS                       R1 R2 K14 ["current"]
       26 GETUPVAL                         R1 1
       27 LOADB                            R2 0
       28 SETTABLEKS                       R2 R1 K14 ["current"]
       30 RETURN                           R0 0
       31 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
       33 GETIMPORT                        R2 K16 [Enum.UserInputType.MouseButton3]
       35 JUMPIFNOTEQ                      R1 R2 ; [+20]
       37 GETIMPORT                        R1 K10 [Vector2.new]
       39 GETTABLEKS                       R2 R0 K11 ["Position"]
       41 GETTABLEKS                       R2 R2 K12 ["X"]
       43 GETTABLEKS                       R3 R0 K11 ["Position"]
       45 GETTABLEKS                       R3 R3 K13 ["Y"]
       47 CALL                             R1 2 1
       48 GETUPVAL                         R2 2
       49 SETTABLEKS                       R1 R2 K14 ["current"]
       51 GETUPVAL                         R2 3
       52 GETTABLEKS                       R2 R2 K17 ["setHintIsDragging"]
       54 LOADB                            R3 1
       55 CALL                             R2 1 0
       56 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R2 R0 K3 ["Position"]
        4 GETTABLEKS                       R2 R2 K4 ["X"]
        6 GETTABLEKS                       R3 R0 K3 ["Position"]
        8 GETTABLEKS                       R3 R3 K5 ["Y"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
       13 GETIMPORT                        R3 K9 [Enum.UserInputType.MouseButton2]
       15 JUMPIFNOTEQ                      R2 R3 ; [+5]
       17 GETUPVAL                         R2 0
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0
       21 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
       23 GETIMPORT                        R3 K11 [Enum.UserInputType.MouseButton3]
       25 JUMPIFNOTEQ                      R2 R3 ; [+5]
       27 GETUPVAL                         R2 1
       28 MOVE                             R3 R1
       29 CALL                             R2 1 0
       30 RETURN                           R0 0
       31 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
       33 GETIMPORT                        R3 K13 [Enum.UserInputType.MouseMovement]
       35 JUMPIFNOTEQ                      R2 R3 ; [+15]
       37 GETUPVAL                         R2 2
       38 GETTABLEKS                       R2 R2 K14 ["current"]
       40 JUMPIFNOT                        R2 ; [+3]
       41 GETUPVAL                         R2 1
       42 MOVE                             R3 R1
       43 CALL                             R2 1 0
       44 GETUPVAL                         R2 3
       45 GETTABLEKS                       R2 R2 K14 ["current"]
       47 JUMPIFNOT                        R2 ; [+3]
       48 GETUPVAL                         R2 0
       49 MOVE                             R3 R1
       50 CALL                             R2 1 0
       51 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R2 R0 K3 ["Position"]
        4 GETTABLEKS                       R2 R2 K4 ["X"]
        6 GETTABLEKS                       R3 R0 K3 ["Position"]
        8 GETTABLEKS                       R3 R3 K5 ["Y"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
       13 GETIMPORT                        R3 K9 [Enum.UserInputType.MouseButton2]
       15 JUMPIFNOTEQ                      R2 R3 ; [+28]
       17 GETUPVAL                         R2 0
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K10 ["current"]
       23 JUMPIF                           R2 ; [+11]
       24 GETUPVAL                         R2 2
       25 GETTABLEKS                       R2 R2 K11 ["showMenu"]
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K10 ["current"]
       30 GETTABLEKS                       R3 R3 K12 ["absToPlot"]
       32 MOVE                             R4 R1
       33 CALL                             R3 1 -1
       34 CALL                             R2 -1 0
       35 GETUPVAL                         R2 1
       36 LOADB                            R3 0
       37 SETTABLEKS                       R3 R2 K10 ["current"]
       39 GETUPVAL                         R2 4
       40 LOADNIL                          R3
       41 SETTABLEKS                       R3 R2 K10 ["current"]
       43 RETURN                           R0 0
       44 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
       46 GETIMPORT                        R3 K14 [Enum.UserInputType.MouseButton3]
       48 JUMPIFNOTEQ                      R2 R3 ; [+13]
       50 GETUPVAL                         R2 5
       51 MOVE                             R3 R1
       52 CALL                             R2 1 0
       53 GETUPVAL                         R2 6
       54 LOADNIL                          R3
       55 SETTABLEKS                       R3 R2 K10 ["current"]
       57 GETUPVAL                         R2 7
       58 GETTABLEKS                       R2 R2 K15 ["setHintIsDragging"]
       60 LOADB                            R3 0
       61 CALL                             R2 1 0
       62 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQKNIL                  R3 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R3 0
        5 LOADK                            R5 K0 ["LayerCollector"]
        6 NAMECALL                         R3 R3 K1 ["FindFirstAncestorWhichIsA"]
        8 CALL                             R3 2 1
        9 JUMPIFNOTEQKNIL                  R3 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K2 ["getMousePosition"]
       15 CALL                             R4 0 1
       16 GETTABLEKS                       R7 R4 K3 ["X"]
       18 GETTABLEKS                       R8 R4 K4 ["Y"]
       20 NAMECALL                         R5 R3 K5 ["GetGuiObjectsAtPosition"]
       22 CALL                             R5 3 3
       23 FORGPREP                         R5
       24 GETUPVAL                         R10 0
       25 JUMPIFEQ                         R9 R10 ; [+9]
       27 LOADK                            R12 K6 ["ScrollingFrame"]
       28 NAMECALL                         R10 R9 K7 ["IsA"]
       30 CALL                             R10 2 1
       31 JUMPIFNOT                        R10 ; [+1]
       32 RETURN                           R0 0
       33 FORGLOOP                         R5 2 ; [-10]
       35 MULK                             R6 R0 K8 [0.1]
       36 ADD                              R5 R2 R6
       37 JUMPIFEQKN                       R5 K9 [0] ; [+23]
       39 GETIMPORT                        R7 K12 [Vector2.new]
       41 GETTABLEKS                       R8 R4 K3 ["X"]
       43 GETTABLEKS                       R9 R4 K4 ["Y"]
       45 CALL                             R7 2 1
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R9 R9 K13 ["AbsolutePosition"]
       49 GETUPVAL                         R11 0
       50 GETTABLEKS                       R11 R11 K15 ["AbsoluteSize"]
       52 MULK                             R10 R11 K14 [0.5]
       53 ADD                              R8 R9 R10
       54 SUB                              R6 R7 R8
       55 GETUPVAL                         R7 2
       56 GETTABLEKS                       R7 R7 K16 ["current"]
       58 MOVE                             R8 R5
       59 MOVE                             R9 R6
       60 CALL                             R7 2 0
       61 GETIMPORT                        R6 K18 [Vector2.zero]
       63 JUMPIFEQ                         R1 R6 ; [+7]
       65 GETUPVAL                         R6 3
       66 GETTABLEKS                       R6 R6 K16 ["current"]
       68 LOADN                            R8 -50
       69 MUL                              R7 R8 R1
       70 CALL                             R6 1 0
       71 RETURN                           R0 0

PROTO_6:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["current"]
        4 GETVARARGS                       R1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETIMPORT                        R0 K2 [game]
       11 LOADK                            R2 K3 ["PluginGuiProcessPointerAction"]
       12 NAMECALL                         R0 R0 K4 ["GetEngineFeature"]
       14 CALL                             R0 2 1
       15 JUMPIFNOT                        R0 ; [+2]
       16 GETUPVAL                         R0 1
       17 CALL                             R0 0 0
       18 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 NEWTABLE                         R0 0 0
        6 DUPCLOSURE                       R1 K0 [PROTO_7]
        7 MOVE                             R3 R0
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K1 ["InputEnded"]
       11 GETUPVAL                         R7 1
       12 NEWCLOSURE                       R6 P1
       13 CAPTURE                          VAL R7
       14 NAMECALL                         R4 R4 K2 ["Connect"]
       16 CALL                             R4 2 -1
       17 FASTCALL                         TABLE_INSERT ; [+2]
       18 GETIMPORT                        R2 K5 [table.insert]
       20 CALL                             R2 -1 0
       21 MOVE                             R3 R0
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K6 ["InputBegan"]
       25 GETUPVAL                         R7 2
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          VAL R7
       28 NAMECALL                         R4 R4 K2 ["Connect"]
       30 CALL                             R4 2 -1
       31 FASTCALL                         TABLE_INSERT ; [+2]
       32 GETIMPORT                        R2 K5 [table.insert]
       34 CALL                             R2 -1 0
       35 MOVE                             R3 R0
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K7 ["InputChanged"]
       39 GETUPVAL                         R7 3
       40 NEWCLOSURE                       R6 P1
       41 CAPTURE                          VAL R7
       42 NAMECALL                         R4 R4 K2 ["Connect"]
       44 CALL                             R4 2 -1
       45 FASTCALL                         TABLE_INSERT ; [+2]
       46 GETIMPORT                        R2 K5 [table.insert]
       48 CALL                             R2 -1 0
       49 LOADNIL                          R2
       50 GETIMPORT                        R3 K9 [game]
       52 LOADK                            R5 K10 ["PluginGuiProcessPointerAction"]
       53 NAMECALL                         R3 R3 K11 ["GetEngineFeature"]
       55 CALL                             R3 2 1
       56 JUMPIFNOT                        R3 ; [+8]
       57 GETUPVAL                         R3 4
       58 GETTABLEKS                       R3 R3 K12 ["bindOnPointerAction"]
       60 GETUPVAL                         R5 5
       61 NEWCLOSURE                       R4 P1
       62 CAPTURE                          VAL R5
       63 CALL                             R3 1 1
       64 MOVE                             R2 R3
       65 NEWCLOSURE                       R3 P2
       66 CAPTURE                          VAL R0
       67 CAPTURE                          REF R2
       68 CLOSEUPVALS                      R2
       69 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["MouseContext"]
        6 GETTABLEKS                       R2 R2 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useContext"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K2 ["Context"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["useContext"]
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K2 ["Context"]
       22 CALL                             R3 1 1
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K0 ["useContext"]
       26 GETUPVAL                         R5 4
       27 GETTABLEKS                       R5 R5 K3 ["CanvasContext"]
       29 CALL                             R4 1 1
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K4 ["useState"]
       33 LOADNIL                          R6
       34 CALL                             R5 1 2
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K5 ["useRef"]
       38 LOADNIL                          R8
       39 CALL                             R7 1 1
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R8 R8 K5 ["useRef"]
       43 LOADNIL                          R9
       44 CALL                             R8 1 1
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K5 ["useRef"]
       48 LOADB                            R10 0
       49 CALL                             R9 1 1
       50 GETUPVAL                         R10 0
       51 GETTABLEKS                       R10 R10 K5 ["useRef"]
       53 MOVE                             R11 R4
       54 CALL                             R10 1 1
       55 SETTABLEKS                       R4 R10 K6 ["current"]
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R11 R11 K7 ["useCallback"]
       60 NEWCLOSURE                       R12 P0
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R3
       63 NEWTABLE                         R13 0 3
       65 MOVE                             R14 R7
       66 GETTABLEKS                       R15 R3 K8 ["panViewport"]
       68 GETTABLEKS                       R16 R3 K9 ["setHintIsDragging"]
       70 SETLIST                          R13 R14 3 [1]
       72 CALL                             R11 2 1
       73 GETUPVAL                         R12 0
       74 GETTABLEKS                       R12 R12 K7 ["useCallback"]
       76 NEWCLOSURE                       R13 P1
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R3
       80 NEWTABLE                         R14 0 2
       82 MOVE                             R15 R8
       83 GETTABLEKS                       R16 R3 K10 ["zoomViewport"]
       85 SETLIST                          R14 R15 2 [1]
       87 CALL                             R12 2 1
       88 GETUPVAL                         R13 0
       89 GETTABLEKS                       R13 R13 K7 ["useCallback"]
       91 NEWCLOSURE                       R14 P2
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R3
       96 NEWTABLE                         R15 0 1
       98 MOVE                             R16 R10
       99 SETLIST                          R15 R16 1 [1]
      101 CALL                             R13 2 1
      102 GETUPVAL                         R14 5
      103 GETTABLEKS                       R14 R14 K11 ["useRefToState"]
      105 MOVE                             R15 R13
      106 CALL                             R14 1 1
      107 GETUPVAL                         R15 0
      108 GETTABLEKS                       R15 R15 K7 ["useCallback"]
      110 NEWCLOSURE                       R16 P3
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R8
      115 NEWTABLE                         R17 0 5
      117 MOVE                             R18 R12
      118 MOVE                             R19 R11
      119 MOVE                             R20 R10
      120 MOVE                             R21 R7
      121 MOVE                             R22 R5
      122 SETLIST                          R17 R18 5 [1]
      124 CALL                             R15 2 1
      125 GETUPVAL                         R16 5
      126 GETTABLEKS                       R16 R16 K11 ["useRefToState"]
      128 MOVE                             R17 R15
      129 CALL                             R16 1 1
      130 GETUPVAL                         R17 0
      131 GETTABLEKS                       R17 R17 K7 ["useCallback"]
      133 NEWCLOSURE                       R18 P4
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R8
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R3
      142 NEWTABLE                         R19 0 7
      144 MOVE                             R20 R9
      145 MOVE                             R21 R5
      146 GETTABLEKS                       R22 R2 K12 ["showMenu"]
      148 MOVE                             R23 R12
      149 MOVE                             R24 R11
      150 MOVE                             R25 R10
      151 GETTABLEKS                       R26 R3 K9 ["setHintIsDragging"]
      153 SETLIST                          R19 R20 7 [1]
      155 CALL                             R17 2 1
      156 GETUPVAL                         R18 5
      157 GETTABLEKS                       R18 R18 K11 ["useRefToState"]
      159 MOVE                             R19 R17
      160 CALL                             R18 1 1
      161 GETUPVAL                         R19 5
      162 GETTABLEKS                       R19 R19 K11 ["useRefToState"]
      164 GETTABLEKS                       R20 R3 K8 ["panViewport"]
      166 CALL                             R19 1 1
      167 GETUPVAL                         R20 5
      168 GETTABLEKS                       R20 R20 K11 ["useRefToState"]
      170 GETTABLEKS                       R21 R3 K10 ["zoomViewport"]
      172 CALL                             R20 1 1
      173 GETUPVAL                         R21 5
      174 GETTABLEKS                       R21 R21 K13 ["useEventCallback"]
      176 NEWCLOSURE                       R22 P5
      177 CAPTURE                          VAL R5
      178 CAPTURE                          VAL R1
      179 CAPTURE                          VAL R20
      180 CAPTURE                          VAL R19
      181 CALL                             R21 1 1
      182 GETUPVAL                         R22 5
      183 GETTABLEKS                       R22 R22 K11 ["useRefToState"]
      185 MOVE                             R23 R21
      186 CALL                             R22 1 1
      187 GETUPVAL                         R23 0
      188 GETTABLEKS                       R23 R23 K14 ["useEffect"]
      190 NEWCLOSURE                       R24 P6
      191 CAPTURE                          VAL R5
      192 CAPTURE                          VAL R18
      193 CAPTURE                          VAL R14
      194 CAPTURE                          VAL R16
      195 CAPTURE                          VAL R1
      196 CAPTURE                          VAL R22
      197 NEWTABLE                         R25 0 2
      199 MOVE                             R26 R5
      200 GETTABLEKS                       R27 R1 K15 ["bindOnPointerAction"]
      202 SETLIST                          R25 R26 2 [1]
      204 CALL                             R23 2 0
      205 GETUPVAL                         R23 0
      206 GETTABLEKS                       R23 R23 K16 ["createElement"]
      208 GETUPVAL                         R24 6
      209 GETTABLEKS                       R24 R24 K17 ["View"]
      211 DUPTABLE                         R25 K24 [{["tag"] = "size-full-full", ["ZIndex"], ["ref"], ["testId"] = "NodeViewScroller"}]
      212 GETTABLEKS                       R26 R0 K20 ["ZIndex"]
      214 SETTABLEKS                       R26 R25 K20 ["ZIndex"]
      216 SETTABLEKS                       R6 R25 K21 ["ref"]
      218 CALL                             R23 2 -1
      219 RETURN                           R23 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["CrossEnvironment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["Graphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Components"]
       32 GETTABLEKS                       R5 R5 K11 ["InsertNodeContext"]
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
       51 GETTABLEKS                       R8 R0 K10 ["Components"]
       53 GETTABLEKS                       R8 R8 K14 ["ViewportRectContext"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K15 [PROTO_10]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R2
       64 RETURN                           R8 1
