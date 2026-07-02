PROTO_0:
        0 LOADK                            R2 K0 [""]
        1 GETIMPORT                        R3 K2 [ipairs]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 3
        5 FORGPREP_INEXT                   R3
        6 MOVE                             R8 R2
        7 MOVE                             R9 R7
        8 CONCAT                           R2 R8 R9
        9 LENGTH                           R8 R1
       10 JUMPIFEQ                         R6 R8 ; [+4]
       12 MOVE                             R8 R2
       13 LOADK                            R9 K3 [", "]
       14 CONCAT                           R2 R8 R9
       15 FORGLOOP                         R3 2 [inext] ; [-10]
       17 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Selected"]
        6 GETTABLEKS                       R4 R1 K3 ["Names"]
        8 GETTABLEKS                       R5 R2 K4 ["eventMarker"]
       10 GETTABLEKS                       R6 R1 K5 ["Position"]
       12 GETTABLEKS                       R7 R1 K6 ["ZIndex"]
       14 GETTABLEKS                       R8 R1 K7 ["OnRightClick"]
       16 GETTABLEKS                       R9 R1 K8 ["OnInputBegan"]
       18 GETTABLEKS                       R10 R1 K9 ["OnInputEnded"]
       20 GETUPVAL                         R11 0
       21 GETTABLEKS                       R11 R11 K10 ["createElement"]
       23 LOADK                            R12 K11 ["ImageButton"]
       24 NEWTABLE                         R13 16 0
       26 GETUPVAL                         R14 1
       27 GETTABLEKS                       R14 R14 K12 ["EVENT_MARKER_SIZE"]
       29 SETTABLEKS                       R14 R13 K13 ["Size"]
       31 GETIMPORT                        R14 K16 [Vector2.new]
       33 LOADK                            R15 K17 [0.5]
       34 LOADK                            R16 K17 [0.5]
       35 CALL                             R14 2 1
       36 SETTABLEKS                       R14 R13 K18 ["AnchorPoint"]
       38 SETTABLEKS                       R6 R13 K5 ["Position"]
       40 SETTABLEKS                       R7 R13 K6 ["ZIndex"]
       42 LOADN                            R14 1
       43 SETTABLEKS                       R14 R13 K19 ["BackgroundTransparency"]
       45 LOADB                            R14 0
       46 SETTABLEKS                       R14 R13 K20 ["AutoButtonColor"]
       48 GETTABLEKS                       R14 R5 K21 ["imageColor"]
       50 SETTABLEKS                       R14 R13 K22 ["ImageColor3"]
       52 GETTABLEKS                       R14 R5 K23 ["mainImage"]
       54 SETTABLEKS                       R14 R13 K24 ["Image"]
       56 GETUPVAL                         R14 0
       57 GETTABLEKS                       R14 R14 K25 ["Event"]
       59 GETTABLEKS                       R14 R14 K26 ["MouseButton2Click"]
       61 SETTABLE                         R8 R13 R14
       62 GETUPVAL                         R14 0
       63 GETTABLEKS                       R14 R14 K25 ["Event"]
       65 GETTABLEKS                       R14 R14 K27 ["InputBegan"]
       67 SETTABLE                         R9 R13 R14
       68 GETUPVAL                         R14 0
       69 GETTABLEKS                       R14 R14 K25 ["Event"]
       71 GETTABLEKS                       R14 R14 K28 ["InputEnded"]
       73 SETTABLE                         R10 R13 R14
       74 DUPTABLE                         R14 K32 [{"Tooltip", "Border", "SelectionBorder"}]
       75 MOVE                             R15 R4
       76 JUMPIFNOT                        R15 ; [+12]
       77 GETUPVAL                         R15 0
       78 GETTABLEKS                       R15 R15 K10 ["createElement"]
       80 GETUPVAL                         R16 2
       81 DUPTABLE                         R17 K36 [{["Text"], ["ShowDelay"] = 0}]
       82 MOVE                             R20 R4
       83 NAMECALL                         R18 R0 K37 ["getTooltip"]
       85 CALL                             R18 2 1
       86 SETTABLEKS                       R18 R17 K33 ["Text"]
       88 CALL                             R15 2 1
       89 SETTABLEKS                       R15 R14 K29 ["Tooltip"]
       91 GETUPVAL                         R15 0
       92 GETTABLEKS                       R15 R15 K10 ["createElement"]
       94 LOADK                            R16 K38 ["ImageLabel"]
       95 DUPTABLE                         R17 K40 [{["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1, ["ImageColor3"], ["Image"]}]
       96 GETUPVAL                         R18 1
       97 GETTABLEKS                       R18 R18 K12 ["EVENT_MARKER_SIZE"]
       99 SETTABLEKS                       R18 R17 K13 ["Size"]
      101 GETIMPORT                        R18 K16 [Vector2.new]
      103 LOADK                            R19 K17 [0.5]
      104 LOADN                            R20 0
      105 CALL                             R18 2 1
      106 SETTABLEKS                       R18 R17 K18 ["AnchorPoint"]
      108 GETIMPORT                        R18 K42 [UDim2.new]
      110 LOADK                            R19 K17 [0.5]
      111 LOADN                            R20 0
      112 LOADN                            R21 0
      113 LOADN                            R22 0
      114 CALL                             R18 4 1
      115 SETTABLEKS                       R18 R17 K5 ["Position"]
      117 JUMPIFNOT                        R3 ; [+3]
      118 GETTABLEKS                       R18 R5 K43 ["selectionBorderColor"]
      120 JUMPIF                           R18 ; [+2]
      121 GETTABLEKS                       R18 R5 K44 ["borderColor"]
      123 SETTABLEKS                       R18 R17 K22 ["ImageColor3"]
      125 GETTABLEKS                       R18 R5 K45 ["borderImage"]
      127 SETTABLEKS                       R18 R17 K24 ["Image"]
      129 CALL                             R15 2 1
      130 SETTABLEKS                       R15 R14 K30 ["Border"]
      132 MOVE                             R15 R3
      133 JUMPIFNOT                        R15 ; [+35]
      134 GETUPVAL                         R15 0
      135 GETTABLEKS                       R15 R15 K10 ["createElement"]
      137 LOADK                            R16 K38 ["ImageLabel"]
      138 DUPTABLE                         R17 K40 [{["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1, ["ImageColor3"], ["Image"]}]
      139 GETUPVAL                         R18 1
      140 GETTABLEKS                       R18 R18 K46 ["EVENT_MARKER_BORDER_SIZE"]
      142 SETTABLEKS                       R18 R17 K13 ["Size"]
      144 GETIMPORT                        R18 K16 [Vector2.new]
      146 LOADK                            R19 K17 [0.5]
      147 LOADN                            R20 0
      148 CALL                             R18 2 1
      149 SETTABLEKS                       R18 R17 K18 ["AnchorPoint"]
      151 GETIMPORT                        R18 K42 [UDim2.new]
      153 LOADK                            R19 K17 [0.5]
      154 LOADN                            R20 0
      155 LOADN                            R21 0
      156 LOADN                            R22 0
      157 CALL                             R18 4 1
      158 SETTABLEKS                       R18 R17 K5 ["Position"]
      160 GETTABLEKS                       R18 R5 K43 ["selectionBorderColor"]
      162 SETTABLEKS                       R18 R17 K22 ["ImageColor3"]
      164 GETTABLEKS                       R18 R5 K47 ["selectionBorderImage"]
      166 SETTABLEKS                       R18 R17 K24 ["Image"]
      168 CALL                             R15 2 1
      169 SETTABLEKS                       R15 R14 K31 ["SelectionBorder"]
      171 CALL                             R11 3 -1
      172 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["withContext"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K8 ["Src"]
       38 GETTABLEKS                       R7 R7 K14 ["Components"]
       40 GETTABLEKS                       R7 R7 K15 ["Tooltip"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R7 R1 K16 ["PureComponent"]
       45 LOADK                            R9 K17 ["EventMarker"]
       46 NAMECALL                         R7 R7 K18 ["extend"]
       48 CALL                             R7 2 1
       49 DUPCLOSURE                       R8 K19 [PROTO_0]
       50 SETTABLEKS                       R8 R7 K20 ["getTooltip"]
       52 DUPCLOSURE                       R8 K21 [PROTO_1]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R6
       56 SETTABLEKS                       R8 R7 K22 ["render"]
       58 MOVE                             R8 R5
       59 DUPTABLE                         R9 K24 [{"Stylizer"}]
       60 GETTABLEKS                       R10 R4 K23 ["Stylizer"]
       62 SETTABLEKS                       R10 R9 K23 ["Stylizer"]
       64 CALL                             R8 1 1
       65 MOVE                             R9 R7
       66 CALL                             R8 1 1
       67 MOVE                             R7 R8
       68 RETURN                           R7 1
