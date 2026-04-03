PROTO_0:
        0 ADD                              R2 R0 R1
        1 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["pluginGui"]
        6 JUMPIFNOT                        R1 ; [+7]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K1 ["pluginGui"]
       10 LOADK                            R3 K2 ["PluginGui"]
       11 NAMECALL                         R1 R1 K3 ["IsA"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+10]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K4 ["currentDragIndex"]
       18 JUMPIFNOT                        R2 ; [+6]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K5 ["ref"]
       22 GETTABLEKS                       R2 R3 K6 ["current"]
       24 JUMPIF                           R2 ; [+1]
       25 RETURN                           R0 0
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R2 R3 K1 ["pluginGui"]
       29 NAMECALL                         R2 R2 K7 ["GetRelativeMousePosition"]
       31 CALL                             R2 1 1
       32 GETTABLEKS                       R3 R2 K8 ["X"]
       34 GETTABLEKS                       R4 R2 K9 ["Y"]
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R7 R8 K5 ["ref"]
       39 GETTABLEKS                       R6 R7 K6 ["current"]
       41 GETTABLEKS                       R5 R6 K10 ["AbsolutePosition"]
       43 GETUPVAL                         R9 0
       44 GETTABLEKS                       R8 R9 K5 ["ref"]
       46 GETTABLEKS                       R7 R8 K6 ["current"]
       48 GETTABLEKS                       R6 R7 K11 ["AbsoluteSize"]
       50 GETTABLEKS                       R8 R0 K12 ["Layout"]
       52 GETIMPORT                        R9 K16 [Enum.FillDirection.Vertical]
       54 JUMPIFEQ                         R8 R9 ; [+2]
       56 LOADB                            R7 0 +1
       57 LOADB                            R7 1
       58 JUMPIFNOT                        R7 ; [+4]
       59 GETTABLEKS                       R9 R5 K9 ["Y"]
       61 SUB                              R8 R4 R9
       62 JUMP                             ; [+3]
       63 GETTABLEKS                       R9 R5 K8 ["X"]
       65 SUB                              R8 R3 R9
       66 JUMPIFNOT                        R7 ; [+3]
       67 GETTABLEKS                       R9 R6 K9 ["Y"]
       69 JUMP                             ; [+2]
       70 GETTABLEKS                       R9 R6 K8 ["X"]
       72 GETUPVAL                         R12 0
       73 GETTABLEKS                       R11 R12 K17 ["prevOffset"]
       75 JUMPIFLE                         R11 R8 ; [+2]
       77 LOADB                            R10 0 +1
       78 LOADB                            R10 1
       79 GETUPVAL                         R12 0
       80 GETTABLEKS                       R11 R12 K4 ["currentDragIndex"]
       82 GETUPVAL                         R12 0
       83 SETTABLEKS                       R8 R12 K17 ["prevOffset"]
       85 GETUPVAL                         R12 1
       86 GETTABLEKS                       R13 R0 K18 ["Sizes"]
       88 DUPCLOSURE                       R14 K19 [PROTO_0]
       89 GETIMPORT                        R15 K22 [UDim.new]
       91 CALL                             R15 0 -1
       92 CALL                             R12 -1 1
       93 GETTABLEKS                       R15 R12 K23 ["Scale"]
       95 MUL                              R14 R15 R9
       96 GETTABLEKS                       R15 R12 K24 ["Offset"]
       98 ADD                              R13 R14 R15
       99 JUMPIF                           R10 ; [+2]
      100 SUB                              R8 R13 R8
      101 ADDK                             R11 R11 K25 [1]
      102 GETUPVAL                         R14 2
      103 GETUPVAL                         R16 0
      104 GETTABLEKS                       R15 R16 K0 ["props"]
      106 MOVE                             R16 R8
      107 MOVE                             R17 R13
      108 MOVE                             R18 R10
      109 MOVE                             R19 R11
      110 CALL                             R14 5 1
      111 GETTABLEKS                       R15 R0 K26 ["OnSizesChange"]
      113 MOVE                             R16 R14
      114 CALL                             R15 1 0
      115 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["ClassName"]
        2 JUMPIFEQKS                       R2 K1 ["ScrollingFrame"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_3:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["ScrollingEnabled"]
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onMove"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["OnResizeStart"]
        5 JUMPIFNOT                        R1 ; [+4]
        6 MOVE                             R2 R1
        7 GETTABLEKS                       R3 R0 K2 ["Index"]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R3 R0 K2 ["Index"]
       13 SETTABLEKS                       R3 R2 K3 ["currentDragIndex"]
       15 GETUPVAL                         R2 0
       16 GETUPVAL                         R3 1
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K4 ["ref"]
       20 GETTABLEKS                       R4 R5 K5 ["current"]
       22 NAMECALL                         R4 R4 K6 ["GetDescendants"]
       24 CALL                             R4 1 1
       25 DUPCLOSURE                       R5 K7 [PROTO_2]
       26 CALL                             R3 2 1
       27 SETTABLEKS                       R3 R2 K8 ["scrollingFrames"]
       29 GETUPVAL                         R2 2
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R3 R4 K8 ["scrollingFrames"]
       33 DUPCLOSURE                       R4 K9 [PROTO_3]
       34 CALL                             R2 2 0
       35 GETUPVAL                         R2 0
       36 GETUPVAL                         R4 3
       37 GETTABLEKS                       R3 R4 K10 ["Heartbeat"]
       39 NEWCLOSURE                       R5 P2
       40 CAPTURE                          UPVAL U0
       41 NAMECALL                         R3 R3 K11 ["Connect"]
       43 CALL                             R3 2 1
       44 SETTABLEKS                       R3 R2 K12 ["_heartbeat"]
       46 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["ScrollingEnabled"]
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["OnResizeEnd"]
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K2 ["currentDragIndex"]
        9 JUMPIFNOT                        R1 ; [+5]
       10 MOVE                             R1 R0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K2 ["currentDragIndex"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 0
       16 LOADNIL                          R2
       17 SETTABLEKS                       R2 R1 K2 ["currentDragIndex"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R1 R2 K3 ["scrollingFrames"]
       22 JUMPIFNOT                        R1 ; [+6]
       23 GETUPVAL                         R1 1
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R2 R3 K3 ["scrollingFrames"]
       27 DUPCLOSURE                       R3 K4 [PROTO_6]
       28 CALL                             R1 2 0
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R1 R2 K5 ["_heartbeat"]
       32 JUMPIFNOT                        R1 ; [+6]
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R1 R2 K5 ["_heartbeat"]
       36 NAMECALL                         R1 R1 K6 ["Disconnect"]
       38 CALL                             R1 1 0
       39 RETURN                           R0 0

PROTO_8:
        0 LOADN                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["prevOffset"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["createRef"]
        6 CALL                             R1 0 1
        7 SETTABLEKS                       R1 R0 K2 ["ref"]
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K3 ["scrollingFrames"]
       13 NEWCLOSURE                       R1 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R1 R0 K4 ["onMove"]
       19 NEWCLOSURE                       R1 P1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 SETTABLEKS                       R1 R0 K5 ["onStartDrag"]
       26 NEWCLOSURE                       R1 P2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U4
       29 SETTABLEKS                       R1 R0 K6 ["onEndDrag"]
       31 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_heartbeat"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["_heartbeat"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["ExpandColumnOnDoubleClick"]
        5 GETUPVAL                         R2 1
        6 SUBK                             R1 R2 K2 [1]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K3 ["ref"]
       10 GETTABLEKS                       R4 R5 K4 ["current"]
       12 GETTABLEKS                       R3 R4 K5 ["AbsoluteSize"]
       14 GETTABLEKS                       R2 R3 K6 ["X"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["Children"]
        5 GETTABLE                         R2 R1 R3
        6 GETTABLEKS                       R4 R1 K2 ["Layout"]
        8 GETIMPORT                        R5 K6 [Enum.FillDirection.Vertical]
       10 JUMPIFEQ                         R4 R5 ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 NEWTABLE                         R4 0 0
       16 GETTABLEKS                       R6 R1 K7 ["Sizes"]
       18 LENGTH                           R5 R6
       19 JUMPIFNOT                        R3 ; [+3]
       20 GETIMPORT                        R6 K9 [Enum.FillDirection.Horizontal]
       22 JUMPIF                           R6 ; [+2]
       23 GETIMPORT                        R6 K6 [Enum.FillDirection.Vertical]
       25 GETTABLEKS                       R8 R0 K0 ["props"]
       27 GETTABLEKS                       R7 R8 K10 ["Focus"]
       29 NAMECALL                         R7 R7 K11 ["get"]
       31 CALL                             R7 1 1
       32 SETTABLEKS                       R7 R0 K12 ["pluginGui"]
       34 GETTABLEKS                       R7 R1 K13 ["HideBars"]
       36 GETIMPORT                        R8 K16 [UDim.new]
       38 LOADN                            R9 0
       39 LOADN                            R10 0
       40 CALL                             R8 2 1
       41 LOADN                            R11 1
       42 MOVE                             R9 R5
       43 LOADN                            R10 1
       44 FORNPREP                         R9
       45 GETTABLEKS                       R13 R1 K7 ["Sizes"]
       47 GETTABLE                         R12 R13 R11
       48 GETTABLEKS                       R13 R12 K17 ["Offset"]
       50 LOADN                            R14 1
       51 JUMPIFNOTLT                      R14 R11 ; [+77]
       53 GETTABLEKS                       R14 R8 K17 ["Offset"]
       55 JUMPIFNOT                        R7 ; [+2]
       56 SUBK                             R14 R14 K18 [3]
       57 JUMP                             ; [+7]
       58 SUBK                             R13 R13 K19 [6]
       59 GETIMPORT                        R15 K16 [UDim.new]
       61 LOADN                            R16 0
       62 LOADN                            R17 6
       63 CALL                             R15 2 1
       64 ADD                              R8 R8 R15
       65 LOADK                            R16 K20 ["Drag "]
       66 SUBK                             R17 R11 K21 [1]
       67 CONCAT                           R15 R16 R17
       68 GETUPVAL                         R17 0
       69 GETTABLEKS                       R16 R17 K22 ["createElement"]
       71 GETUPVAL                         R17 1
       72 DUPTABLE                         R18 K31 [{"Index", "Hide", "FillDirection", "BarStyle", "Position", "ZIndex", "OnPress", "OnPressEnd", "OnDoubleClick"}]
       73 SUBK                             R19 R11 K21 [1]
       74 SETTABLEKS                       R19 R18 K23 ["Index"]
       76 SETTABLEKS                       R7 R18 K24 ["Hide"]
       78 SETTABLEKS                       R6 R18 K4 ["FillDirection"]
       80 GETTABLEKS                       R19 R1 K25 ["BarStyle"]
       82 SETTABLEKS                       R19 R18 K25 ["BarStyle"]
       84 JUMPIFNOT                        R3 ; [+9]
       85 GETIMPORT                        R19 K33 [UDim2.new]
       87 LOADN                            R20 0
       88 LOADN                            R21 0
       89 GETTABLEKS                       R22 R8 K34 ["Scale"]
       91 MOVE                             R23 R14
       92 CALL                             R19 4 1
       93 JUMP                             ; [+8]
       94 GETIMPORT                        R19 K33 [UDim2.new]
       96 GETTABLEKS                       R20 R8 K34 ["Scale"]
       98 MOVE                             R21 R14
       99 LOADN                            R22 0
      100 LOADN                            R23 0
      101 CALL                             R19 4 1
      102 SETTABLEKS                       R19 R18 K26 ["Position"]
      104 LOADN                            R19 10
      105 SETTABLEKS                       R19 R18 K27 ["ZIndex"]
      107 GETTABLEKS                       R19 R0 K35 ["onStartDrag"]
      109 SETTABLEKS                       R19 R18 K28 ["OnPress"]
      111 GETTABLEKS                       R19 R0 K36 ["onEndDrag"]
      113 SETTABLEKS                       R19 R18 K29 ["OnPressEnd"]
      115 GETTABLEKS                       R21 R0 K0 ["props"]
      117 GETTABLEKS                       R20 R21 K37 ["ExpandColumnOnDoubleClick"]
      119 JUMPIFNOT                        R20 ; [+4]
      120 NEWCLOSURE                       R19 P0
      121 CAPTURE                          VAL R0
      122 CAPTURE                          VAL R11
      123 JUMP                             ; [+1]
      124 LOADNIL                          R19
      125 SETTABLEKS                       R19 R18 K30 ["OnDoubleClick"]
      127 CALL                             R16 2 1
      128 SETTABLE                         R16 R4 R15
      129 DUPTABLE                         R14 K40 [{"Size", "Position", "LayoutOrder"}]
      130 JUMPIFNOT                        R3 ; [+9]
      131 GETIMPORT                        R15 K33 [UDim2.new]
      133 LOADN                            R16 1
      134 LOADN                            R17 0
      135 GETTABLEKS                       R18 R12 K34 ["Scale"]
      137 MOVE                             R19 R13
      138 CALL                             R15 4 1
      139 JUMPIF                           R15 ; [+8]
      140 GETIMPORT                        R15 K33 [UDim2.new]
      142 GETTABLEKS                       R16 R12 K34 ["Scale"]
      144 MOVE                             R17 R13
      145 LOADN                            R18 1
      146 LOADN                            R19 0
      147 CALL                             R15 4 1
      148 SETTABLEKS                       R15 R14 K38 ["Size"]
      150 JUMPIFNOT                        R3 ; [+10]
      151 GETIMPORT                        R15 K33 [UDim2.new]
      153 LOADN                            R16 0
      154 LOADN                            R17 0
      155 GETTABLEKS                       R18 R8 K34 ["Scale"]
      157 GETTABLEKS                       R19 R8 K17 ["Offset"]
      159 CALL                             R15 4 1
      160 JUMP                             ; [+9]
      161 GETIMPORT                        R15 K33 [UDim2.new]
      163 GETTABLEKS                       R16 R8 K34 ["Scale"]
      165 GETTABLEKS                       R17 R8 K17 ["Offset"]
      167 LOADN                            R18 0
      168 LOADN                            R19 0
      169 CALL                             R15 4 1
      170 SETTABLEKS                       R15 R14 K26 ["Position"]
      172 MULK                             R16 R11 K41 [2]
      173 ADDK                             R15 R16 K21 [1]
      174 SETTABLEKS                       R15 R14 K39 ["LayoutOrder"]
      176 LOADK                            R16 K42 ["Pane "]
      177 MOVE                             R17 R11
      178 CONCAT                           R15 R16 R17
      179 GETUPVAL                         R17 0
      180 GETTABLEKS                       R16 R17 K22 ["createElement"]
      182 GETUPVAL                         R17 2
      183 MOVE                             R18 R14
      184 DUPTABLE                         R19 K44 [{"Child"}]
      185 JUMPIFNOT                        R2 ; [+2]
      186 GETTABLE                         R20 R2 R11
      187 JUMPIF                           R20 ; [+1]
      188 LOADNIL                          R20
      189 SETTABLEKS                       R20 R19 K43 ["Child"]
      191 CALL                             R16 3 1
      192 SETTABLE                         R16 R4 R15
      193 GETTABLEKS                       R15 R1 K45 ["UseScale"]
      195 JUMPIFNOT                        R15 ; [+8]
      196 GETIMPORT                        R15 K16 [UDim.new]
      198 GETTABLEKS                       R16 R12 K34 ["Scale"]
      200 LOADN                            R17 0
      201 CALL                             R15 2 1
      202 ADD                              R8 R8 R15
      203 JUMP                             ; [+6]
      204 GETIMPORT                        R15 K16 [UDim.new]
      206 LOADN                            R16 0
      207 MOVE                             R17 R13
      208 CALL                             R15 2 1
      209 ADD                              R8 R8 R15
      210 FORNLOOP                         R9
      211 GETTABLEKS                       R10 R1 K46 ["PaneStyle"]
      213 JUMPIFNOTEQKS                    R10 K47 ["Default"] ; [+3]
      215 LOADNIL                          R9
      216 JUMP                             ; [+3]
      217 GETTABLEKS                       R10 R1 K46 ["PaneStyle"]
      219 ORK                              R9 R10 K48 ["Box"]
      220 GETUPVAL                         R11 0
      221 GETTABLEKS                       R10 R11 K22 ["createElement"]
      223 GETUPVAL                         R11 2
      224 GETUPVAL                         R13 3
      225 JUMPIFNOT                        R13 ; [+38]
      226 NEWTABLE                         R12 8 0
      228 GETTABLEKS                       R13 R1 K49 ["AutomaticSize"]
      230 SETTABLEKS                       R13 R12 K49 ["AutomaticSize"]
      232 GETTABLEKS                       R13 R1 K39 ["LayoutOrder"]
      234 SETTABLEKS                       R13 R12 K39 ["LayoutOrder"]
      236 GETTABLEKS                       R13 R1 K26 ["Position"]
      238 SETTABLEKS                       R13 R12 K26 ["Position"]
      240 GETTABLEKS                       R13 R1 K38 ["Size"]
      242 SETTABLEKS                       R13 R12 K38 ["Size"]
      244 GETUPVAL                         R14 0
      245 GETTABLEKS                       R13 R14 K50 ["Ref"]
      247 GETTABLEKS                       R14 R0 K51 ["ref"]
      249 SETTABLE                         R14 R12 R13
      250 GETUPVAL                         R14 4
      251 GETTABLEKS                       R13 R14 K52 ["Tag"]
      253 GETUPVAL                         R14 5
      254 LOADK                            R15 K53 ["Component-SplitPane"]
      255 GETTABLEKS                       R16 R1 K46 ["PaneStyle"]
      257 GETUPVAL                         R19 4
      258 GETTABLEKS                       R18 R19 K52 ["Tag"]
      260 GETTABLE                         R17 R1 R18
      261 CALL                             R14 3 1
      262 SETTABLE                         R14 R12 R13
      263 JUMP                             ; [+26]
      264 NEWTABLE                         R12 8 0
      266 GETTABLEKS                       R13 R1 K49 ["AutomaticSize"]
      268 SETTABLEKS                       R13 R12 K49 ["AutomaticSize"]
      270 GETTABLEKS                       R13 R1 K39 ["LayoutOrder"]
      272 SETTABLEKS                       R13 R12 K39 ["LayoutOrder"]
      274 SETTABLEKS                       R9 R12 K54 ["Style"]
      276 GETTABLEKS                       R13 R1 K38 ["Size"]
      278 SETTABLEKS                       R13 R12 K38 ["Size"]
      280 GETTABLEKS                       R13 R1 K26 ["Position"]
      282 SETTABLEKS                       R13 R12 K26 ["Position"]
      284 GETUPVAL                         R14 0
      285 GETTABLEKS                       R13 R14 K50 ["Ref"]
      287 GETTABLEKS                       R14 R0 K51 ["ref"]
      289 SETTABLE                         R14 R12 R13
      290 MOVE                             R13 R4
      291 CALL                             R10 3 -1
      292 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K6 [require]
       16 GETTABLEKS                       R4 R0 K2 ["UI"]
       18 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["withContext"]
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R6 R0 K4 ["Parent"]
       27 GETTABLEKS                       R5 R6 K10 ["Roact"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R6 R0 K4 ["Parent"]
       32 LOADK                            R8 K11 ["React"]
       33 NAMECALL                         R6 R6 K12 ["FindFirstChild"]
       35 CALL                             R6 2 1
       36 JUMPIFNOT                        R6 ; [+8]
       37 GETIMPORT                        R5 K6 [require]
       39 GETTABLEKS                       R7 R0 K4 ["Parent"]
       41 GETTABLEKS                       R6 R7 K11 ["React"]
       43 CALL                             R5 1 1
       44 JUMP                             ; [+1]
       45 LOADNIL                          R5
       46 GETIMPORT                        R6 K6 [require]
       48 GETTABLEKS                       R8 R0 K13 ["Styling"]
       50 GETTABLEKS                       R7 R8 K14 ["supportsStyleSheets"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K6 [require]
       55 GETTABLEKS                       R9 R0 K13 ["Styling"]
       57 GETTABLEKS                       R8 R9 K15 ["joinTags"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K17 [game]
       62 LOADK                            R10 K18 ["RunService"]
       63 NAMECALL                         R8 R8 K19 ["GetService"]
       65 CALL                             R8 2 1
       66 GETIMPORT                        R9 K6 [require]
       68 GETTABLEKS                       R11 R0 K4 ["Parent"]
       70 GETTABLEKS                       R10 R11 K20 ["Dash"]
       72 CALL                             R9 1 1
       73 GETTABLEKS                       R10 R9 K21 ["filter"]
       75 GETTABLEKS                       R11 R9 K22 ["forEach"]
       77 GETTABLEKS                       R12 R9 K23 ["reduce"]
       79 GETIMPORT                        R13 K6 [require]
       81 GETTABLEKS                       R16 R0 K2 ["UI"]
       83 GETTABLEKS                       R15 R16 K24 ["Components"]
       85 GETTABLEKS                       R14 R15 K25 ["DragBar"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K6 [require]
       90 GETTABLEKS                       R17 R0 K2 ["UI"]
       92 GETTABLEKS                       R16 R17 K24 ["Components"]
       94 GETTABLEKS                       R15 R16 K26 ["Pane"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K6 [require]
       99 GETIMPORT                        R17 K1 [script]
      101 GETTABLEKS                       R16 R17 K27 ["getNextSizes"]
      103 CALL                             R15 1 1
      104 GETTABLEKS                       R16 R4 K28 ["PureComponent"]
      106 LOADK                            R18 K29 ["SplitPane"]
      107 NAMECALL                         R16 R16 K30 ["extend"]
      109 CALL                             R16 2 1
      110 DUPCLOSURE                       R17 K31 [PROTO_8]
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R15
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R8
      117 SETTABLEKS                       R17 R16 K32 ["init"]
      119 DUPCLOSURE                       R17 K33 [PROTO_9]
      120 SETTABLEKS                       R17 R16 K34 ["willUnmount"]
      122 DUPCLOSURE                       R17 K35 [PROTO_11]
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R7
      129 SETTABLEKS                       R17 R16 K36 ["render"]
      131 MOVE                             R17 R3
      132 DUPTABLE                         R18 K40 [{"Focus", "Mouse", "Stylizer"}]
      133 GETTABLEKS                       R19 R2 K37 ["Focus"]
      135 SETTABLEKS                       R19 R18 K37 ["Focus"]
      137 GETTABLEKS                       R19 R2 K38 ["Mouse"]
      139 SETTABLEKS                       R19 R18 K38 ["Mouse"]
      141 JUMPIFNOT                        R6 ; [+2]
      142 LOADNIL                          R19
      143 JUMP                             ; [+2]
      144 GETTABLEKS                       R19 R2 K39 ["Stylizer"]
      146 SETTABLEKS                       R19 R18 K39 ["Stylizer"]
      148 CALL                             R17 1 1
      149 MOVE                             R18 R16
      150 CALL                             R17 1 1
      151 MOVE                             R16 R17
      152 RETURN                           R16 1
