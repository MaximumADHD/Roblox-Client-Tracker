PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 SUB                              R2 R1 R0
        7 GETUPVAL                         R3 0
        8 SETTABLEKS                       R0 R3 K0 ["current"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K1 ["setHintIsDragging"]
       13 LOADB                            R4 1
       14 CALL                             R3 1 0
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K2 ["panViewport"]
       18 MOVE                             R4 R2
       19 CALL                             R3 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
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
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R3 R4 K2 ["zoomViewport"]
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
       14 GETTABLEKS                       R3 R0 K11 ["Position"]
       16 GETTABLEKS                       R2 R3 K12 ["X"]
       18 GETTABLEKS                       R4 R0 K11 ["Position"]
       20 GETTABLEKS                       R3 R4 K13 ["Y"]
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
       39 GETTABLEKS                       R3 R0 K11 ["Position"]
       41 GETTABLEKS                       R2 R3 K12 ["X"]
       43 GETTABLEKS                       R4 R0 K11 ["Position"]
       45 GETTABLEKS                       R3 R4 K13 ["Y"]
       47 CALL                             R1 2 1
       48 GETUPVAL                         R2 2
       49 SETTABLEKS                       R1 R2 K14 ["current"]
       51 GETUPVAL                         R3 3
       52 GETTABLEKS                       R2 R3 K17 ["setHintIsDragging"]
       54 LOADB                            R3 1
       55 CALL                             R2 1 0
       56 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R3 R0 K3 ["Position"]
        4 GETTABLEKS                       R2 R3 K4 ["X"]
        6 GETTABLEKS                       R4 R0 K3 ["Position"]
        8 GETTABLEKS                       R3 R4 K5 ["Y"]
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
       37 GETUPVAL                         R3 2
       38 GETTABLEKS                       R2 R3 K14 ["current"]
       40 JUMPIFNOT                        R2 ; [+3]
       41 GETUPVAL                         R2 1
       42 MOVE                             R3 R1
       43 CALL                             R2 1 0
       44 GETUPVAL                         R3 3
       45 GETTABLEKS                       R2 R3 K14 ["current"]
       47 JUMPIFNOT                        R2 ; [+3]
       48 GETUPVAL                         R2 0
       49 MOVE                             R3 R1
       50 CALL                             R2 1 0
       51 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R3 R0 K3 ["Position"]
        4 GETTABLEKS                       R2 R3 K4 ["X"]
        6 GETTABLEKS                       R4 R0 K3 ["Position"]
        8 GETTABLEKS                       R3 R4 K5 ["Y"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
       13 GETIMPORT                        R3 K9 [Enum.UserInputType.MouseButton2]
       15 JUMPIFNOTEQ                      R2 R3 ; [+32]
       17 GETUPVAL                         R2 0
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K10 ["current"]
       23 JUMPIF                           R2 ; [+15]
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R2 R3 K11 ["onRightClick"]
       27 JUMPIFNOT                        R2 ; [+11]
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R2 R3 K11 ["onRightClick"]
       31 GETUPVAL                         R5 3
       32 GETTABLEKS                       R4 R5 K10 ["current"]
       34 GETTABLEKS                       R3 R4 K12 ["absToPlot"]
       36 MOVE                             R4 R1
       37 CALL                             R3 1 -1
       38 CALL                             R2 -1 0
       39 GETUPVAL                         R2 1
       40 LOADB                            R3 0
       41 SETTABLEKS                       R3 R2 K10 ["current"]
       43 GETUPVAL                         R2 4
       44 LOADNIL                          R3
       45 SETTABLEKS                       R3 R2 K10 ["current"]
       47 RETURN                           R0 0
       48 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
       50 GETIMPORT                        R3 K14 [Enum.UserInputType.MouseButton3]
       52 JUMPIFNOTEQ                      R2 R3 ; [+13]
       54 GETUPVAL                         R2 5
       55 MOVE                             R3 R1
       56 CALL                             R2 1 0
       57 GETUPVAL                         R2 6
       58 LOADNIL                          R3
       59 SETTABLEKS                       R3 R2 K10 ["current"]
       61 GETUPVAL                         R3 7
       62 GETTABLEKS                       R2 R3 K15 ["setHintIsDragging"]
       64 LOADB                            R3 0
       65 CALL                             R2 1 0
       66 RETURN                           R0 0

PROTO_5:
        0 MULK                             R4 R0 K0 [0.1]
        1 ADD                              R3 R2 R4
        2 JUMPIFEQKN                       R3 K1 [0] ; [+32]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K2 ["getMousePosition"]
        7 CALL                             R4 0 1
        8 GETUPVAL                         R6 1
        9 JUMPIFNOT                        R6 ; [+17]
       10 GETIMPORT                        R6 K5 [Vector2.new]
       12 GETTABLEKS                       R7 R4 K6 ["X"]
       14 GETTABLEKS                       R8 R4 K7 ["Y"]
       16 CALL                             R6 2 1
       17 GETUPVAL                         R9 1
       18 GETTABLEKS                       R8 R9 K8 ["AbsolutePosition"]
       20 GETUPVAL                         R11 1
       21 GETTABLEKS                       R10 R11 K10 ["AbsoluteSize"]
       23 MULK                             R9 R10 K9 [0.5]
       24 ADD                              R7 R8 R9
       25 SUB                              R5 R6 R7
       26 JUMP                             ; [+2]
       27 GETIMPORT                        R5 K12 [Vector2.zero]
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R6 R7 K13 ["current"]
       32 MOVE                             R7 R3
       33 MOVE                             R8 R5
       34 CALL                             R6 2 0
       35 GETIMPORT                        R4 K12 [Vector2.zero]
       37 JUMPIFEQ                         R1 R4 ; [+7]
       39 GETUPVAL                         R5 3
       40 GETTABLEKS                       R4 R5 K13 ["current"]
       42 LOADN                            R6 206
       43 MUL                              R5 R6 R1
       44 CALL                             R4 1 0
       45 RETURN                           R0 0

PROTO_6:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["current"]
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
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K1 ["InputEnded"]
       11 GETUPVAL                         R7 1
       12 NEWCLOSURE                       R6 P1
       13 CAPTURE                          VAL R7
       14 NAMECALL                         R4 R4 K2 ["Connect"]
       16 CALL                             R4 2 -1
       17 FASTCALL                         TABLE_INSERT ; [+2]
       18 GETIMPORT                        R2 K5 [table.insert]
       20 CALL                             R2 -1 0
       21 MOVE                             R3 R0
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K6 ["InputBegan"]
       25 GETUPVAL                         R7 2
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          VAL R7
       28 NAMECALL                         R4 R4 K2 ["Connect"]
       30 CALL                             R4 2 -1
       31 FASTCALL                         TABLE_INSERT ; [+2]
       32 GETIMPORT                        R2 K5 [table.insert]
       34 CALL                             R2 -1 0
       35 MOVE                             R3 R0
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R4 R5 K7 ["InputChanged"]
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
       57 GETUPVAL                         R4 4
       58 GETTABLEKS                       R3 R4 K12 ["bindOnPointerAction"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["MouseContext"]
        6 GETTABLEKS                       R2 R3 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["useContext"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K2 ["Context"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K0 ["useContext"]
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R4 R5 K3 ["CanvasContext"]
       22 CALL                             R3 1 1
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R4 R5 K4 ["useState"]
       26 LOADNIL                          R5
       27 CALL                             R4 1 2
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R6 R7 K5 ["useRef"]
       31 LOADNIL                          R7
       32 CALL                             R6 1 1
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R7 R8 K5 ["useRef"]
       36 LOADNIL                          R8
       37 CALL                             R7 1 1
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R8 R9 K5 ["useRef"]
       41 LOADB                            R9 0
       42 CALL                             R8 1 1
       43 GETUPVAL                         R10 0
       44 GETTABLEKS                       R9 R10 K5 ["useRef"]
       46 MOVE                             R10 R3
       47 CALL                             R9 1 1
       48 SETTABLEKS                       R3 R9 K6 ["current"]
       50 GETUPVAL                         R11 0
       51 GETTABLEKS                       R10 R11 K7 ["useCallback"]
       53 NEWCLOSURE                       R11 P0
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R2
       56 NEWTABLE                         R12 0 3
       58 MOVE                             R13 R6
       59 GETTABLEKS                       R14 R2 K8 ["panViewport"]
       61 GETTABLEKS                       R15 R2 K9 ["setHintIsDragging"]
       63 SETLIST                          R12 R13 3 [1]
       65 CALL                             R10 2 1
       66 GETUPVAL                         R12 0
       67 GETTABLEKS                       R11 R12 K7 ["useCallback"]
       69 NEWCLOSURE                       R12 P1
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R2
       73 NEWTABLE                         R13 0 2
       75 MOVE                             R14 R7
       76 GETTABLEKS                       R15 R2 K10 ["zoomViewport"]
       78 SETLIST                          R13 R14 2 [1]
       80 CALL                             R11 2 1
       81 GETUPVAL                         R13 0
       82 GETTABLEKS                       R12 R13 K7 ["useCallback"]
       84 NEWCLOSURE                       R13 P2
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R2
       89 NEWTABLE                         R14 0 1
       91 MOVE                             R15 R9
       92 SETLIST                          R14 R15 1 [1]
       94 CALL                             R12 2 1
       95 GETUPVAL                         R14 4
       96 GETTABLEKS                       R13 R14 K11 ["useRefToState"]
       98 MOVE                             R14 R12
       99 CALL                             R13 1 1
      100 GETUPVAL                         R15 0
      101 GETTABLEKS                       R14 R15 K7 ["useCallback"]
      103 NEWCLOSURE                       R15 P3
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R7
      108 NEWTABLE                         R16 0 5
      110 MOVE                             R17 R11
      111 MOVE                             R18 R10
      112 MOVE                             R19 R9
      113 MOVE                             R20 R6
      114 MOVE                             R21 R4
      115 SETLIST                          R16 R17 5 [1]
      117 CALL                             R14 2 1
      118 GETUPVAL                         R16 4
      119 GETTABLEKS                       R15 R16 K11 ["useRefToState"]
      121 MOVE                             R16 R14
      122 CALL                             R15 1 1
      123 GETUPVAL                         R17 0
      124 GETTABLEKS                       R16 R17 K7 ["useCallback"]
      126 NEWCLOSURE                       R17 P4
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R0
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R2
      135 NEWTABLE                         R18 0 7
      137 MOVE                             R19 R8
      138 MOVE                             R20 R4
      139 GETTABLEKS                       R21 R0 K12 ["onRightClick"]
      141 MOVE                             R22 R11
      142 MOVE                             R23 R10
      143 MOVE                             R24 R9
      144 GETTABLEKS                       R25 R2 K9 ["setHintIsDragging"]
      146 SETLIST                          R18 R19 7 [1]
      148 CALL                             R16 2 1
      149 GETUPVAL                         R18 4
      150 GETTABLEKS                       R17 R18 K11 ["useRefToState"]
      152 MOVE                             R18 R16
      153 CALL                             R17 1 1
      154 GETUPVAL                         R19 4
      155 GETTABLEKS                       R18 R19 K11 ["useRefToState"]
      157 GETTABLEKS                       R19 R2 K8 ["panViewport"]
      159 CALL                             R18 1 1
      160 GETUPVAL                         R20 4
      161 GETTABLEKS                       R19 R20 K11 ["useRefToState"]
      163 GETTABLEKS                       R20 R2 K10 ["zoomViewport"]
      165 CALL                             R19 1 1
      166 GETUPVAL                         R21 0
      167 GETTABLEKS                       R20 R21 K7 ["useCallback"]
      169 NEWCLOSURE                       R21 P5
      170 CAPTURE                          VAL R1
      171 CAPTURE                          VAL R4
      172 CAPTURE                          VAL R19
      173 CAPTURE                          VAL R18
      174 NEWTABLE                         R22 0 2
      176 MOVE                             R23 R4
      177 GETTABLEKS                       R24 R1 K13 ["getMousePosition"]
      179 SETLIST                          R22 R23 2 [1]
      181 CALL                             R20 2 1
      182 GETUPVAL                         R22 4
      183 GETTABLEKS                       R21 R22 K11 ["useRefToState"]
      185 MOVE                             R22 R20
      186 CALL                             R21 1 1
      187 GETUPVAL                         R23 0
      188 GETTABLEKS                       R22 R23 K14 ["useEffect"]
      190 NEWCLOSURE                       R23 P6
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R17
      193 CAPTURE                          VAL R13
      194 CAPTURE                          VAL R15
      195 CAPTURE                          VAL R1
      196 CAPTURE                          VAL R21
      197 NEWTABLE                         R24 0 2
      199 MOVE                             R25 R4
      200 GETTABLEKS                       R26 R1 K15 ["bindOnPointerAction"]
      202 SETLIST                          R24 R25 2 [1]
      204 CALL                             R22 2 0
      205 GETUPVAL                         R23 0
      206 GETTABLEKS                       R22 R23 K16 ["createElement"]
      208 GETUPVAL                         R24 5
      209 GETTABLEKS                       R23 R24 K17 ["View"]
      211 DUPTABLE                         R24 K22 [{"tag", "ZIndex", "ref", "testId"}]
      212 LOADK                            R25 K23 ["size-full-full"]
      213 SETTABLEKS                       R25 R24 K18 ["tag"]
      215 GETTABLEKS                       R25 R0 K19 ["ZIndex"]
      217 SETTABLEKS                       R25 R24 K19 ["ZIndex"]
      219 SETTABLEKS                       R5 R24 K20 ["ref"]
      221 LOADK                            R25 K24 ["NodeViewScroller"]
      222 SETTABLEKS                       R25 R24 K21 ["testId"]
      224 CALL                             R22 2 -1
      225 RETURN                           R22 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["CrossEnvironment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["Graphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R6 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R7 K11 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K12 ["Contexts"]
       46 GETTABLEKS                       R7 R8 K13 ["ViewportRectContext"]
       48 CALL                             R6 1 1
       49 DUPCLOSURE                       R7 K14 [PROTO_10]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R2
       56 RETURN                           R7 1
