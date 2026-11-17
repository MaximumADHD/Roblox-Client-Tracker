PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 JUMPIFNOT                        R3 ; [+2]
        3 GETUPVAL                         R2 2
        4 JUMP                             ; [+1]
        5 LOADN                            R2 0
        6 SUB                              R0 R1 R2
        7 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R3 R1 K0 ["handle"]
        5 GETTABLEKS                       R3 R3 K1 ["instance"]
        7 LOADNIL                          R4
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R2 R1 K0 ["handle"]
       11 GETTABLEKS                       R2 R2 K2 ["destroy"]
       13 CALL                             R2 0 0
       14 GETUPVAL                         R2 0
       15 LOADNIL                          R3
       16 SETTABLE                         R3 R2 R0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 JUMPIFNOT                        R3 ; [+2]
        6 GETUPVAL                         R2 3
        7 JUMP                             ; [+1]
        8 LOADN                            R2 0
        9 SUB                              R0 R1 R2
       10 GETUPVAL                         R1 4
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 FORGPREP                         R1
       14 GETTABLEKS                       R6 R5 K0 ["props"]
       16 GETTABLEKS                       R6 R6 K1 ["maxWidth"]
       18 JUMPIFEQ                         R6 R0 ; [+13]
       20 GETTABLEKS                       R6 R5 K0 ["props"]
       22 SETTABLEKS                       R0 R6 K1 ["maxWidth"]
       24 GETTABLEKS                       R6 R5 K2 ["handle"]
       26 GETTABLEKS                       R6 R6 K3 ["update"]
       28 GETTABLEKS                       R7 R5 K0 ["props"]
       30 GETUPVAL                         R8 0
       31 CALL                             R6 2 0
       32 FORGLOOP                         R1 2 ; [-19]
       34 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADN                            R3 2
        2 GETUPVAL                         R4 1
        3 MUL                              R2 R3 R4
        4 SUB                              R0 R1 R2
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K0 ["Y"]
        8 FASTCALL2                        MATH_MIN R2 R0 ; [+4]
       10 MOVE                             R3 R0
       11 GETIMPORT                        R1 K3 [math.min]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K0 ["Y"]
       17 JUMPIFLT                         R0 R3 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 GETUPVAL                         R3 3
       22 JUMPIFEQ                         R2 R3 ; [+16]
       24 SETUPVAL                         R2 3
       25 GETUPVAL                         R3 4
       26 GETIMPORT                        R4 K6 [UDim.new]
       28 LOADN                            R5 0
       29 GETUPVAL                         R7 3
       30 JUMPIFNOT                        R7 ; [+2]
       31 GETUPVAL                         R6 5
       32 JUMP                             ; [+1]
       33 LOADN                            R6 0
       34 CALL                             R4 2 1
       35 SETTABLEKS                       R4 R3 K7 ["PaddingRight"]
       37 GETUPVAL                         R3 6
       38 CALL                             R3 0 0
       39 GETUPVAL                         R4 2
       40 GETTABLEKS                       R4 R4 K8 ["X"]
       42 LOADN                            R6 2
       43 GETUPVAL                         R7 1
       44 MUL                              R5 R6 R7
       45 ADD                              R3 R4 R5
       46 LOADN                            R6 2
       47 GETUPVAL                         R7 1
       48 MUL                              R5 R6 R7
       49 ADD                              R4 R1 R5
       50 GETUPVAL                         R5 7
       51 GETIMPORT                        R6 K11 [UDim2.fromOffset]
       53 MOVE                             R7 R3
       54 MOVE                             R8 R4
       55 CALL                             R6 2 1
       56 SETTABLEKS                       R6 R5 K12 ["Size"]
       58 GETUPVAL                         R5 8
       59 GETIMPORT                        R6 K11 [UDim2.fromOffset]
       61 GETUPVAL                         R7 9
       62 MOVE                             R8 R1
       63 CALL                             R6 2 1
       64 SETTABLEKS                       R6 R5 K12 ["Size"]
       66 GETUPVAL                         R5 8
       67 GETUPVAL                         R7 3
       68 JUMPIFNOT                        R7 ; [+2]
       69 GETUPVAL                         R6 10
       70 JUMP                             ; [+1]
       71 LOADN                            R6 0
       72 SETTABLEKS                       R6 R5 K13 ["ScrollBarThickness"]
       74 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AbsoluteSize"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R0 R1 ; [+4]
        6 SETUPVAL                         R0 1
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_5:
        0 SETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R1 K0 ["Color"]
        3 GETTABLEKS                       R2 R2 K1 ["OverMedia"]
        5 GETTABLEKS                       R2 R2 K2 ["OverMedia_300"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R4 R2 K3 ["Color3"]
       10 SETTABLEKS                       R4 R3 K4 ["BackgroundColor3"]
       12 GETUPVAL                         R3 2
       13 GETIMPORT                        R4 K7 [UDim.new]
       15 LOADN                            R5 0
       16 GETTABLEKS                       R6 R1 K8 ["Radius"]
       18 GETTABLEKS                       R6 R6 K9 ["Small"]
       20 CALL                             R4 2 1
       21 SETTABLEKS                       R4 R3 K10 ["CornerRadius"]
       23 NEWTABLE                         R3 0 0
       25 GETTABLEKS                       R4 R0 K11 ["entries"]
       27 LOADNIL                          R5
       28 LOADNIL                          R6
       29 FORGPREP                         R4
       30 GETTABLEKS                       R9 R8 K12 ["key"]
       32 LOADB                            R10 1
       33 SETTABLE                         R10 R3 R9
       34 FORGLOOP                         R4 2 ; [-5]
       36 GETUPVAL                         R4 3
       37 LOADNIL                          R5
       38 LOADNIL                          R6
       39 FORGPREP                         R4
       40 GETTABLE                         R9 R3 R7
       41 JUMPIF                           R9 ; [+17]
       42 GETUPVAL                         R10 3
       43 GETTABLE                         R9 R10 R7
       44 GETUPVAL                         R10 4
       45 GETTABLEKS                       R11 R9 K13 ["handle"]
       47 GETTABLEKS                       R11 R11 K14 ["instance"]
       49 LOADNIL                          R12
       50 CALL                             R10 2 0
       51 GETTABLEKS                       R10 R9 K13 ["handle"]
       53 GETTABLEKS                       R10 R10 K15 ["destroy"]
       55 CALL                             R10 0 0
       56 GETUPVAL                         R10 3
       57 LOADNIL                          R11
       58 SETTABLE                         R11 R10 R7
       59 FORGLOOP                         R4 1 ; [-20]
       61 GETUPVAL                         R5 5
       62 GETUPVAL                         R7 6
       63 JUMPIFNOT                        R7 ; [+2]
       64 GETUPVAL                         R6 7
       65 JUMP                             ; [+1]
       66 LOADN                            R6 0
       67 SUB                              R4 R5 R6
       68 GETTABLEKS                       R5 R0 K11 ["entries"]
       70 LOADNIL                          R6
       71 LOADNIL                          R7
       72 FORGPREP                         R5
       73 DUPTABLE                         R10 K21 [{"name", "order", "variant", "maxWidth", "forceHovered"}]
       74 GETTABLEKS                       R11 R9 K16 ["name"]
       76 SETTABLEKS                       R11 R10 K16 ["name"]
       78 GETTABLEKS                       R11 R9 K17 ["order"]
       80 SETTABLEKS                       R11 R10 K17 ["order"]
       82 GETTABLEKS                       R11 R9 K18 ["variant"]
       84 SETTABLEKS                       R11 R10 K18 ["variant"]
       86 SETTABLEKS                       R4 R10 K19 ["maxWidth"]
       88 GETTABLEKS                       R12 R0 K22 ["forceHoveredInstance"]
       90 GETTABLEKS                       R13 R9 K14 ["instance"]
       92 JUMPIFEQ                         R12 R13 ; [+2]
       94 LOADB                            R11 0 +1
       95 LOADB                            R11 1
       96 SETTABLEKS                       R11 R10 K20 ["forceHovered"]
       98 GETUPVAL                         R12 3
       99 GETTABLEKS                       R13 R9 K12 ["key"]
      101 GETTABLE                         R11 R12 R13
      102 JUMPIF                           R11 ; [+30]
      103 GETUPVAL                         R12 8
      104 GETTABLEKS                       R12 R12 K23 ["create"]
      106 CALL                             R12 0 1
      107 GETTABLEKS                       R13 R12 K14 ["instance"]
      109 GETUPVAL                         R14 9
      110 SETTABLEKS                       R14 R13 K24 ["Parent"]
      112 DUPTABLE                         R13 K26 [{"handle", "instance", "props"}]
      113 SETTABLEKS                       R12 R13 K13 ["handle"]
      115 GETTABLEKS                       R14 R9 K14 ["instance"]
      117 SETTABLEKS                       R14 R13 K14 ["instance"]
      119 SETTABLEKS                       R10 R13 K25 ["props"]
      121 MOVE                             R11 R13
      122 GETUPVAL                         R13 3
      123 GETTABLEKS                       R14 R9 K12 ["key"]
      125 SETTABLE                         R11 R13 R14
      126 GETUPVAL                         R13 4
      127 GETTABLEKS                       R14 R12 K14 ["instance"]
      129 GETTABLEKS                       R15 R9 K14 ["instance"]
      131 CALL                             R13 2 0
      132 JUMP                             ; [+20]
      133 SETTABLEKS                       R10 R11 K25 ["props"]
      135 GETTABLEKS                       R12 R11 K14 ["instance"]
      137 GETTABLEKS                       R13 R9 K14 ["instance"]
      139 JUMPIFEQ                         R12 R13 ; [+13]
      141 GETTABLEKS                       R12 R9 K14 ["instance"]
      143 SETTABLEKS                       R12 R11 K14 ["instance"]
      145 GETUPVAL                         R12 4
      146 GETTABLEKS                       R13 R11 K13 ["handle"]
      148 GETTABLEKS                       R13 R13 K14 ["instance"]
      150 GETTABLEKS                       R14 R9 K14 ["instance"]
      152 CALL                             R12 2 0
      153 GETTABLEKS                       R12 R11 K13 ["handle"]
      155 GETTABLEKS                       R12 R12 K27 ["update"]
      157 MOVE                             R13 R10
      158 MOVE                             R14 R1
      159 CALL                             R12 2 0
      160 FORGLOOP                         R5 2 ; [-88]
      162 GETUPVAL                         R5 10
      163 CALL                             R5 0 0
      164 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADN                            R2 0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K0 ["AbsoluteCanvasSize"]
        7 GETTABLEKS                       R4 R4 K1 ["Y"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K2 ["AbsoluteWindowSize"]
       12 GETTABLEKS                       R5 R5 K1 ["Y"]
       14 SUB                              R3 R4 R5
       15 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       17 GETIMPORT                        R1 K5 [math.max]
       19 CALL                             R1 2 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K6 ["CanvasPosition"]
       23 GETTABLEKS                       R4 R4 K1 ["Y"]
       25 ADD                              R3 R4 R0
       26 LOADN                            R4 0
       27 FASTCALL3                        MATH_CLAMP R3 R4 R1
       29 MOVE                             R5 R1
       30 GETIMPORT                        R2 K8 [math.clamp]
       32 CALL                             R2 3 1
       33 GETUPVAL                         R3 1
       34 GETIMPORT                        R4 K11 [Vector2.new]
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K6 ["CanvasPosition"]
       39 GETTABLEKS                       R5 R5 K12 ["X"]
       41 MOVE                             R6 R2
       42 CALL                             R4 2 1
       43 SETTABLEKS                       R4 R3 K6 ["CanvasPosition"]
       45 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 GETUPVAL                         R6 1
        9 GETTABLE                         R5 R6 R3
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R7 R5 K1 ["handle"]
       13 GETTABLEKS                       R7 R7 K2 ["instance"]
       15 LOADNIL                          R8
       16 CALL                             R6 2 0
       17 GETTABLEKS                       R6 R5 K1 ["handle"]
       19 GETTABLEKS                       R6 R6 K3 ["destroy"]
       21 CALL                             R6 0 0
       22 GETUPVAL                         R6 1
       23 LOADNIL                          R7
       24 SETTABLE                         R7 R6 R3
       25 FORGLOOP                         R0 1 ; [-18]
       27 GETUPVAL                         R0 3
       28 NAMECALL                         R0 R0 K4 ["Destroy"]
       30 CALL                             R0 1 0
       31 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["Frame"]
        3 CALL                             R3 1 1
        4 LOADB                            R4 0
        5 SETTABLEKS                       R4 R3 K4 ["AutoLocalize"]
        7 SETTABLEKS                       R1 R3 K5 ["BackgroundTransparency"]
        9 LOADN                            R4 0
       10 SETTABLEKS                       R4 R3 K6 ["BorderSizePixel"]
       12 LOADB                            R4 1
       13 SETTABLEKS                       R4 R3 K7 ["ClipsDescendants"]
       15 GETIMPORT                        R4 K2 [Instance.new]
       17 LOADK                            R5 K8 ["UICorner"]
       18 CALL                             R4 1 1
       19 SETTABLEKS                       R3 R4 K9 ["Parent"]
       21 GETIMPORT                        R5 K2 [Instance.new]
       23 LOADK                            R6 K10 ["UIPadding"]
       24 CALL                             R5 1 1
       25 GETIMPORT                        R6 K12 [UDim.new]
       27 LOADN                            R7 0
       28 GETUPVAL                         R8 0
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K13 ["PaddingTop"]
       32 GETIMPORT                        R6 K12 [UDim.new]
       34 LOADN                            R7 0
       35 GETUPVAL                         R8 0
       36 CALL                             R6 2 1
       37 SETTABLEKS                       R6 R5 K14 ["PaddingBottom"]
       39 GETIMPORT                        R6 K12 [UDim.new]
       41 LOADN                            R7 0
       42 GETUPVAL                         R8 0
       43 CALL                             R6 2 1
       44 SETTABLEKS                       R6 R5 K15 ["PaddingLeft"]
       46 GETIMPORT                        R6 K12 [UDim.new]
       48 LOADN                            R7 0
       49 GETUPVAL                         R8 0
       50 CALL                             R6 2 1
       51 SETTABLEKS                       R6 R5 K16 ["PaddingRight"]
       53 SETTABLEKS                       R3 R5 K9 ["Parent"]
       55 GETIMPORT                        R6 K2 [Instance.new]
       57 LOADK                            R7 K17 ["ScrollingFrame"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K19 [UDim2.new]
       61 CALL                             R7 0 1
       62 SETTABLEKS                       R7 R6 K20 ["CanvasSize"]
       64 GETIMPORT                        R7 K19 [UDim2.new]
       66 LOADN                            R8 1
       67 LOADN                            R9 0
       68 LOADN                            R10 0
       69 LOADN                            R11 0
       70 CALL                             R7 4 1
       71 SETTABLEKS                       R7 R6 K21 ["Position"]
       73 GETIMPORT                        R7 K23 [Vector2.new]
       75 LOADN                            R8 1
       76 LOADN                            R9 0
       77 CALL                             R7 2 1
       78 SETTABLEKS                       R7 R6 K24 ["AnchorPoint"]
       80 GETIMPORT                        R7 K28 [Enum.AutomaticSize.XY]
       82 SETTABLEKS                       R7 R6 K29 ["AutomaticCanvasSize"]
       84 GETIMPORT                        R7 K32 [Enum.ScrollingDirection.Y]
       86 SETTABLEKS                       R7 R6 K30 ["ScrollingDirection"]
       88 LOADB                            R7 1
       89 SETTABLEKS                       R7 R6 K7 ["ClipsDescendants"]
       91 LOADB                            R7 1
       92 SETTABLEKS                       R7 R6 K33 ["Active"]
       94 LOADN                            R7 1
       95 SETTABLEKS                       R7 R6 K5 ["BackgroundTransparency"]
       97 LOADN                            R7 0
       98 SETTABLEKS                       R7 R6 K6 ["BorderSizePixel"]
      100 SETTABLEKS                       R3 R6 K9 ["Parent"]
      102 GETIMPORT                        R7 K2 [Instance.new]
      104 LOADK                            R8 K3 ["Frame"]
      105 CALL                             R7 1 1
      106 GETIMPORT                        R8 K28 [Enum.AutomaticSize.XY]
      108 SETTABLEKS                       R8 R7 K26 ["AutomaticSize"]
      110 GETIMPORT                        R8 K35 [UDim2.fromOffset]
      112 LOADN                            R9 0
      113 LOADN                            R10 0
      114 CALL                             R8 2 1
      115 SETTABLEKS                       R8 R7 K36 ["Size"]
      117 GETIMPORT                        R8 K19 [UDim2.new]
      119 LOADN                            R9 1
      120 LOADN                            R10 0
      121 LOADN                            R11 0
      122 LOADN                            R12 0
      123 CALL                             R8 4 1
      124 SETTABLEKS                       R8 R7 K21 ["Position"]
      126 GETIMPORT                        R8 K23 [Vector2.new]
      128 LOADN                            R9 1
      129 LOADN                            R10 0
      130 CALL                             R8 2 1
      131 SETTABLEKS                       R8 R7 K24 ["AnchorPoint"]
      133 LOADN                            R8 1
      134 SETTABLEKS                       R8 R7 K5 ["BackgroundTransparency"]
      136 LOADN                            R8 0
      137 SETTABLEKS                       R8 R7 K6 ["BorderSizePixel"]
      139 SETTABLEKS                       R6 R7 K9 ["Parent"]
      141 GETIMPORT                        R8 K2 [Instance.new]
      143 LOADK                            R9 K37 ["UIListLayout"]
      144 CALL                             R8 1 1
      145 GETIMPORT                        R9 K40 [Enum.SortOrder.LayoutOrder]
      147 SETTABLEKS                       R9 R8 K38 ["SortOrder"]
      149 GETIMPORT                        R9 K43 [Enum.HorizontalAlignment.Left]
      151 SETTABLEKS                       R9 R8 K41 ["HorizontalAlignment"]
      153 GETIMPORT                        R9 K46 [Enum.VerticalAlignment.Top]
      155 SETTABLEKS                       R9 R8 K44 ["VerticalAlignment"]
      157 GETIMPORT                        R9 K49 [Enum.ItemLineAlignment.Stretch]
      159 SETTABLEKS                       R9 R8 K47 ["ItemLineAlignment"]
      161 SETTABLEKS                       R7 R8 K9 ["Parent"]
      163 GETIMPORT                        R9 K2 [Instance.new]
      165 LOADK                            R10 K10 ["UIPadding"]
      166 CALL                             R9 1 1
      167 SETTABLEKS                       R7 R9 K9 ["Parent"]
      169 GETIMPORT                        R10 K2 [Instance.new]
      171 LOADK                            R11 K50 ["UISizeConstraint"]
      172 CALL                             R10 1 1
      173 GETIMPORT                        R11 K23 [Vector2.new]
      175 GETUPVAL                         R12 1
      176 LOADK                            R13 K51 [Infinity]
      177 CALL                             R11 2 1
      178 SETTABLEKS                       R11 R10 K52 ["MaxSize"]
      180 SETTABLEKS                       R7 R10 K9 ["Parent"]
      182 NEWTABLE                         R11 0 0
      184 LOADNIL                          R12
      185 GETIMPORT                        R13 K54 [Vector2.zero]
      187 LOADB                            R14 0
      188 NEWCLOSURE                       R15 P0
      189 CAPTURE                          UPVAL U1
      190 CAPTURE                          REF R14
      191 CAPTURE                          UPVAL U2
      192 NEWCLOSURE                       R16 P1
      193 CAPTURE                          VAL R11
      194 CAPTURE                          VAL R2
      195 NEWCLOSURE                       R17 P2
      196 CAPTURE                          REF R12
      197 CAPTURE                          UPVAL U1
      198 CAPTURE                          REF R14
      199 CAPTURE                          UPVAL U2
      200 CAPTURE                          VAL R11
      201 NEWCLOSURE                       R18 P3
      202 CAPTURE                          VAL R0
      203 CAPTURE                          UPVAL U0
      204 CAPTURE                          REF R13
      205 CAPTURE                          REF R14
      206 CAPTURE                          VAL R9
      207 CAPTURE                          UPVAL U2
      208 CAPTURE                          VAL R17
      209 CAPTURE                          VAL R3
      210 CAPTURE                          VAL R6
      211 CAPTURE                          UPVAL U1
      212 CAPTURE                          UPVAL U3
      213 LOADK                            R21 K55 ["AbsoluteSize"]
      214 NAMECALL                         R19 R7 K56 ["GetPropertyChangedSignal"]
      216 CALL                             R19 2 1
      217 NEWCLOSURE                       R21 P4
      218 CAPTURE                          VAL R7
      219 CAPTURE                          REF R13
      220 CAPTURE                          VAL R18
      221 NAMECALL                         R19 R19 K57 ["Connect"]
      223 CALL                             R19 2 1
      224 NEWCLOSURE                       R20 P5
      225 CAPTURE                          REF R12
      226 CAPTURE                          VAL R3
      227 CAPTURE                          VAL R4
      228 CAPTURE                          VAL R11
      229 CAPTURE                          VAL R2
      230 CAPTURE                          UPVAL U1
      231 CAPTURE                          REF R14
      232 CAPTURE                          UPVAL U2
      233 CAPTURE                          UPVAL U4
      234 CAPTURE                          VAL R7
      235 CAPTURE                          VAL R18
      236 NEWCLOSURE                       R21 P6
      237 CAPTURE                          REF R14
      238 CAPTURE                          VAL R6
      239 NEWCLOSURE                       R22 P7
      240 CAPTURE                          VAL R19
      241 CAPTURE                          VAL R11
      242 CAPTURE                          VAL R2
      243 CAPTURE                          VAL R3
      244 DUPTABLE                         R23 K62 [{"instance", "update", "scrollBy", "destroy"}]
      245 SETTABLEKS                       R3 R23 K58 ["instance"]
      247 SETTABLEKS                       R20 R23 K59 ["update"]
      249 SETTABLEKS                       R21 R23 K60 ["scrollBy"]
      251 SETTABLEKS                       R22 R23 K61 ["destroy"]
      253 CLOSEUPVALS                      R12
      254 RETURN                           R23 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioViewportVisualizations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["NameStatusBadge"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["Utility"]
       32 GETTABLEKS                       R4 R4 K13 ["getTokens"]
       34 GETTABLEKS                       R5 R1 K14 ["Enums"]
       36 GETTABLEKS                       R5 R5 K15 ["ColorMode"]
       38 GETTABLEKS                       R5 R5 K16 ["Dark"]
       40 GETTABLEKS                       R6 R1 K14 ["Enums"]
       42 GETTABLEKS                       R6 R6 K17 ["Device"]
       44 GETTABLEKS                       R6 R6 K18 ["Desktop"]
       46 CALL                             R4 2 1
       47 LOADN                            R6 160
       48 GETTABLEKS                       R7 R4 K19 ["Config"]
       50 GETTABLEKS                       R7 R7 K20 ["UI"]
       52 GETTABLEKS                       R7 R7 K21 ["Scale"]
       54 MUL                              R5 R6 R7
       55 GETTABLEKS                       R6 R4 K22 ["Size"]
       57 GETTABLEKS                       R6 R6 K23 ["Size_100"]
       59 GETTABLEKS                       R7 R4 K22 ["Size"]
       61 GETTABLEKS                       R7 R7 K24 ["Size_50"]
       63 GETTABLEKS                       R8 R4 K22 ["Size"]
       65 GETTABLEKS                       R8 R8 K23 ["Size_100"]
       67 LOADN                            R11 2
       68 MUL                              R10 R11 R6
       69 SUB                              R9 R5 R10
       70 DUPCLOSURE                       R10 K25 [PROTO_8]
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R3
       76 DUPTABLE                         R11 K27 [{"create"}]
       77 SETTABLEKS                       R10 R11 K26 ["create"]
       79 RETURN                           R11 1
