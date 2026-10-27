PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["GetFlagId"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["GetFlagId"]
        8 MOVE                             R5 R1
        9 CALL                             R4 1 1
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["flags"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K1 ["keyword"]
       11 JUMPIFEQKS                       R6 K2 [""] ; [+16]
       13 GETIMPORT                        R6 K5 [string.find]
       15 GETIMPORT                        R7 K7 [string.lower]
       17 GETTABLEKS                       R8 R5 K8 ["name"]
       19 CALL                             R7 1 1
       20 GETIMPORT                        R8 K7 [string.lower]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R9 R9 K1 ["keyword"]
       25 CALL                             R8 1 -1
       26 CALL                             R6 -1 1
       27 JUMPIFNOT                        R6 ; [+7]
       28 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       30 MOVE                             R7 R0
       31 MOVE                             R8 R5
       32 GETIMPORT                        R6 K11 [table.insert]
       34 CALL                             R6 2 0
       35 FORGLOOP                         R1 2 ; [-28]
       37 GETIMPORT                        R1 K13 [table.sort]
       39 MOVE                             R2 R0
       40 DUPCLOSURE                       R3 K14 [PROTO_0]
       41 CAPTURE                          UPVAL U1
       42 CALL                             R1 2 0
       43 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["item"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K5 [{["tag"] = "auto-y size-full-0 content-default text-body-small text-truncate-end text-align-x-left", ["Text"]}]
        7 GETUPVAL                         R5 2
        8 MOVE                             R7 R1
        9 NAMECALL                         R5 R5 K6 ["JSONEncode"]
       11 CALL                             R5 2 1
       12 SETTABLEKS                       R5 R4 K4 ["Text"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 DUPTABLE                         R8 K4 [{"item", "index", "height", "key"}]
        7 SETTABLEKS                       R5 R8 K0 ["item"]
        9 SETTABLEKS                       R4 R8 K1 ["index"]
       11 GETUPVAL                         R9 1
       12 GETTABLEKS                       R9 R9 K5 ["Size"]
       14 GETTABLEKS                       R9 R9 K6 ["Size_600"]
       16 SETTABLEKS                       R9 R8 K2 ["height"]
       18 GETUPVAL                         R9 2
       19 GETTABLEKS                       R9 R9 K7 ["GetFlagId"]
       21 MOVE                             R10 R5
       22 CALL                             R9 1 1
       23 SETTABLEKS                       R9 R8 K3 ["key"]
       25 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       27 MOVE                             R7 R0
       28 GETIMPORT                        R6 K10 [table.insert]
       30 CALL                             R6 2 0
       31 FORGLOOP                         R1 2 ; [-26]
       33 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useRef"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["useMemo"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 NEWTABLE                         R5 0 2
       15 GETTABLEKS                       R6 R0 K2 ["flags"]
       17 GETTABLEKS                       R7 R0 K3 ["keyword"]
       19 SETLIST                          R5 R6 2 [1]
       21 CALL                             R3 2 1
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       25 DUPCLOSURE                       R5 K5 [PROTO_2]
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U4
       29 NEWTABLE                         R6 0 0
       31 CALL                             R4 2 1
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K1 ["useMemo"]
       35 NEWCLOSURE                       R6 P2
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U2
       39 NEWTABLE                         R7 0 2
       41 MOVE                             R8 R3
       42 MOVE                             R9 R1
       43 SETLIST                          R7 R8 2 [1]
       45 CALL                             R5 2 1
       46 GETUPVAL                         R6 5
       47 DUPTABLE                         R7 K9 [{"virtualizedItems", "renderItem", "scrollingFrameRef"}]
       48 SETTABLEKS                       R5 R7 K6 ["virtualizedItems"]
       50 SETTABLEKS                       R4 R7 K7 ["renderItem"]
       52 SETTABLEKS                       R2 R7 K8 ["scrollingFrameRef"]
       54 CALL                             R6 1 1
       55 GETUPVAL                         R7 1
       56 GETTABLEKS                       R7 R7 K10 ["createElement"]
       58 LOADK                            R8 K11 ["UIPadding"]
       59 DUPTABLE                         R9 K16 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       60 GETIMPORT                        R10 K19 [UDim.new]
       62 LOADN                            R11 0
       63 GETTABLEKS                       R12 R1 K20 ["Padding"]
       65 GETTABLEKS                       R12 R12 K21 ["Small"]
       67 CALL                             R10 2 1
       68 SETTABLEKS                       R10 R9 K12 ["PaddingTop"]
       70 GETIMPORT                        R10 K19 [UDim.new]
       72 LOADN                            R11 0
       73 GETTABLEKS                       R12 R1 K20 ["Padding"]
       75 GETTABLEKS                       R12 R12 K21 ["Small"]
       77 CALL                             R10 2 1
       78 SETTABLEKS                       R10 R9 K13 ["PaddingBottom"]
       80 GETIMPORT                        R10 K19 [UDim.new]
       82 LOADN                            R11 0
       83 GETTABLEKS                       R12 R1 K20 ["Padding"]
       85 GETTABLEKS                       R12 R12 K21 ["Small"]
       87 CALL                             R10 2 1
       88 SETTABLEKS                       R10 R9 K14 ["PaddingLeft"]
       90 GETIMPORT                        R10 K19 [UDim.new]
       92 LOADN                            R11 0
       93 GETTABLEKS                       R12 R1 K20 ["Padding"]
       95 GETTABLEKS                       R12 R12 K21 ["Small"]
       97 CALL                             R10 2 1
       98 SETTABLEKS                       R10 R9 K15 ["PaddingRight"]
      100 CALL                             R7 2 1
      101 SETTABLEKS                       R7 R6 K20 ["Padding"]
      103 GETUPVAL                         R7 1
      104 GETTABLEKS                       R7 R7 K10 ["createElement"]
      106 LOADK                            R8 K22 ["UICorner"]
      107 DUPTABLE                         R9 K24 [{"CornerRadius"}]
      108 GETIMPORT                        R10 K19 [UDim.new]
      110 LOADN                            R11 0
      111 GETTABLEKS                       R12 R1 K25 ["Radius"]
      113 GETTABLEKS                       R12 R12 K26 ["Medium"]
      115 CALL                             R10 2 1
      116 SETTABLEKS                       R10 R9 K23 ["CornerRadius"]
      118 CALL                             R7 2 1
      119 SETTABLEKS                       R7 R6 K27 ["Corner"]
      121 GETUPVAL                         R7 1
      122 GETTABLEKS                       R7 R7 K10 ["createElement"]
      124 GETUPVAL                         R8 6
      125 DUPTABLE                         R9 K31 [{["tag"] = "col bg-surface-100 radius-medium", ["Size"]}]
      126 GETIMPORT                        R10 K33 [UDim2.new]
      128 LOADN                            R11 1
      129 LOADN                            R12 0
      130 LOADN                            R13 0
      131 LOADN                            R14 400
      132 CALL                             R10 4 1
      133 SETTABLEKS                       R10 R9 K30 ["Size"]
      135 DUPTABLE                         R10 K35 [{"VirtualizedList"}]
      136 GETUPVAL                         R11 1
      137 GETTABLEKS                       R11 R11 K10 ["createElement"]
      139 LOADK                            R12 K36 ["ScrollingFrame"]
      140 DUPTABLE                         R13 K46 [{["Size"], ["BackgroundTransparency"], ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["ScrollingDirection"], ["ScrollBarImageTransparency"], ["ScrollBarImageColor3"], ["AutomaticCanvasSize"], ["ref"]}]
      141 GETIMPORT                        R14 K48 [UDim2.fromScale]
      143 LOADN                            R15 1
      144 LOADN                            R16 1
      145 CALL                             R14 2 1
      146 SETTABLEKS                       R14 R13 K30 ["Size"]
      148 GETTABLEKS                       R14 R1 K49 ["Color"]
      150 GETTABLEKS                       R14 R14 K50 ["Surface"]
      152 GETTABLEKS                       R14 R14 K51 ["Surface_100"]
      154 GETTABLEKS                       R14 R14 K52 ["Transparency"]
      156 SETTABLEKS                       R14 R13 K37 ["BackgroundTransparency"]
      158 GETTABLEKS                       R14 R1 K49 ["Color"]
      160 GETTABLEKS                       R14 R14 K50 ["Surface"]
      162 GETTABLEKS                       R14 R14 K51 ["Surface_100"]
      164 GETTABLEKS                       R14 R14 K53 ["Color3"]
      166 SETTABLEKS                       R14 R13 K38 ["BackgroundColor3"]
      168 GETIMPORT                        R14 K56 [Enum.ScrollingDirection.Y]
      170 SETTABLEKS                       R14 R13 K41 ["ScrollingDirection"]
      172 GETTABLEKS                       R14 R1 K49 ["Color"]
      174 GETTABLEKS                       R14 R14 K50 ["Surface"]
      176 GETTABLEKS                       R14 R14 K57 ["Surface_300"]
      178 GETTABLEKS                       R14 R14 K52 ["Transparency"]
      180 SETTABLEKS                       R14 R13 K42 ["ScrollBarImageTransparency"]
      182 GETTABLEKS                       R14 R1 K49 ["Color"]
      184 GETTABLEKS                       R14 R14 K50 ["Surface"]
      186 GETTABLEKS                       R14 R14 K57 ["Surface_300"]
      188 GETTABLEKS                       R14 R14 K53 ["Color3"]
      190 SETTABLEKS                       R14 R13 K43 ["ScrollBarImageColor3"]
      192 GETIMPORT                        R14 K60 [Enum.AutomaticSize.XY]
      194 SETTABLEKS                       R14 R13 K44 ["AutomaticCanvasSize"]
      196 SETTABLEKS                       R2 R13 K45 ["ref"]
      198 MOVE                             R14 R6
      199 CALL                             R11 3 1
      200 SETTABLEKS                       R11 R10 K34 ["VirtualizedList"]
      202 CALL                             R7 3 -1
      203 RETURN                           R7 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GetFFlags"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_5]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+11]
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K3 ["NormalizeFlags"]
       10 MOVE                             R4 R1
       11 JUMPIF                           R4 ; [+2]
       12 NEWTABLE                         R4 0 0
       14 CALL                             R3 1 -1
       15 CALL                             R2 -1 0
       16 RETURN                           R0 0
       17 GETIMPORT                        R2 K5 [warn]
       19 LOADK                            R3 K6 ["Failed to get FFlags:"]
       20 MOVE                             R4 R1
       21 CALL                             R2 2 0
       22 GETUPVAL                         R2 1
       23 NEWTABLE                         R3 0 0
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R1 R1 K1 ["keyword"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["useState"]
        7 NEWTABLE                         R3 0 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R3
       16 CAPTURE                          UPVAL U2
       17 NEWTABLE                         R6 0 0
       19 CALL                             R4 2 0
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K4 ["createElement"]
       23 GETUPVAL                         R5 3
       24 DUPTABLE                         R6 K6 [{"flags", "keyword"}]
       25 SETTABLEKS                       R2 R6 K5 ["flags"]
       27 SETTABLEKS                       R1 R6 K1 ["keyword"]
       29 CALL                             R4 2 -1
       30 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["FlagEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["React"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["VirtualizedList"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K13 ["Hooks"]
       27 GETTABLEKS                       R5 R5 K14 ["useVirtualizedList"]
       29 GETIMPORT                        R6 K10 [require]
       31 GETTABLEKS                       R7 R2 K15 ["Foundation"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R6 K16 ["Text"]
       36 GETTABLEKS                       R8 R6 K17 ["View"]
       38 GETTABLEKS                       R9 R6 K13 ["Hooks"]
       40 GETTABLEKS                       R9 R9 K18 ["useTokens"]
       42 GETIMPORT                        R10 K10 [require]
       44 GETTABLEKS                       R11 R1 K19 ["Settings"]
       46 CALL                             R10 1 1
       47 GETIMPORT                        R11 K10 [require]
       49 GETTABLEKS                       R12 R1 K20 ["FlagUtils"]
       51 CALL                             R11 1 1
       52 DUPCLOSURE                       R12 K21 [PROTO_4]
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R11
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R8
       60 DUPTABLE                         R13 K28 [{["name"] = "Flags", ["summary"] = "View all FFlags from Settings.GetFFlags(). EnableLocalFlagLuaApis must be enabled.", ["story"], ["controls"]}]
       61 DUPCLOSURE                       R14 K29 [PROTO_7]
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R11
       65 CAPTURE                          VAL R12
       66 SETTABLEKS                       R14 R13 K26 ["story"]
       68 DUPTABLE                         R14 K32 [{["keyword"] = ""}]
       69 SETTABLEKS                       R14 R13 K27 ["controls"]
       71 RETURN                           R13 1
