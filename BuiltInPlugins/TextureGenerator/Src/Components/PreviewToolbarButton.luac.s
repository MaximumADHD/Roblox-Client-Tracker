PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["PromptSelectorWithPreview"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R3 R1 K3 ["ToolbarHeight"]
        7 SUBK                             R2 R3 K2 [4]
        8 SUBK                             R3 R2 K4 [10]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K5 ["useState"]
       12 LOADB                            R5 0
       13 CALL                             R4 1 2
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K6 ["join"]
       17 MOVE                             R7 R0
       18 NEWTABLE                         R8 8 0
       20 GETIMPORT                        R9 K9 [UDim2.new]
       22 LOADN                            R10 1
       23 LOADN                            R11 0
       24 LOADN                            R12 1
       25 LOADN                            R13 0
       26 CALL                             R9 4 1
       27 SETTABLEKS                       R9 R8 K10 ["Size"]
       29 LOADN                            R9 1
       30 SETTABLEKS                       R9 R8 K11 ["BackgroundTransparency"]
       32 LOADN                            R9 0
       33 SETTABLEKS                       R9 R8 K12 ["BorderSizePixel"]
       35 GETUPVAL                         R9 1
       36 GETTABLEKS                       R9 R9 K13 ["Event"]
       38 GETTABLEKS                       R9 R9 K14 ["MouseEnter"]
       40 NEWCLOSURE                       R10 P0
       41 CAPTURE                          VAL R5
       42 SETTABLE                         R10 R8 R9
       43 GETUPVAL                         R9 1
       44 GETTABLEKS                       R9 R9 K13 ["Event"]
       46 GETTABLEKS                       R9 R9 K15 ["MouseLeave"]
       48 NEWCLOSURE                       R10 P1
       49 CAPTURE                          VAL R5
       50 SETTABLE                         R10 R8 R9
       51 LOADK                            R9 K16 [""]
       52 SETTABLEKS                       R9 R8 K17 ["Image"]
       54 GETUPVAL                         R9 2
       55 GETTABLEKS                       R9 R9 K18 ["None"]
       57 SETTABLEKS                       R9 R8 K19 ["Icon"]
       59 GETUPVAL                         R9 2
       60 GETTABLEKS                       R9 R9 K18 ["None"]
       62 SETTABLEKS                       R9 R8 K20 ["Stylizer"]
       64 CALL                             R6 2 1
       65 GETUPVAL                         R7 1
       66 GETTABLEKS                       R7 R7 K21 ["createElement"]
       68 LOADK                            R8 K22 ["ImageButton"]
       69 MOVE                             R9 R6
       70 DUPTABLE                         R10 K24 [{"Background"}]
       71 GETUPVAL                         R11 1
       72 GETTABLEKS                       R11 R11 K21 ["createElement"]
       74 LOADK                            R12 K25 ["Frame"]
       75 DUPTABLE                         R13 K30 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundTransparency"], ["BorderSizePixel"] = 1, ["BackgroundColor3"]}]
       76 GETIMPORT                        R14 K32 [Vector2.new]
       78 LOADK                            R15 K33 [0.5]
       79 LOADK                            R16 K33 [0.5]
       80 CALL                             R14 2 1
       81 SETTABLEKS                       R14 R13 K26 ["AnchorPoint"]
       83 GETIMPORT                        R14 K9 [UDim2.new]
       85 LOADK                            R15 K33 [0.5]
       86 LOADN                            R16 0
       87 LOADK                            R17 K33 [0.5]
       88 LOADN                            R18 0
       89 CALL                             R14 4 1
       90 SETTABLEKS                       R14 R13 K27 ["Position"]
       92 GETIMPORT                        R14 K9 [UDim2.new]
       94 LOADN                            R15 1
       95 LOADN                            R16 0
       96 LOADN                            R17 1
       97 LOADN                            R18 0
       98 CALL                             R14 4 1
       99 SETTABLEKS                       R14 R13 K10 ["Size"]
      101 JUMPIFNOT                        R4 ; [+2]
      102 LOADN                            R14 0
      103 JUMP                             ; [+1]
      104 LOADN                            R14 1
      105 SETTABLEKS                       R14 R13 K11 ["BackgroundTransparency"]
      107 GETTABLEKS                       R14 R1 K34 ["ToolbarButtonBackgroundColor"]
      109 SETTABLEKS                       R14 R13 K29 ["BackgroundColor3"]
      111 DUPTABLE                         R14 K35 [{"Icon"}]
      112 GETUPVAL                         R15 1
      113 GETTABLEKS                       R15 R15 K21 ["createElement"]
      115 LOADK                            R16 K36 ["ImageLabel"]
      116 DUPTABLE                         R17 K38 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 1, ["Image"], ["ImageColor3"]}]
      117 GETIMPORT                        R18 K32 [Vector2.new]
      119 LOADK                            R19 K33 [0.5]
      120 LOADK                            R20 K33 [0.5]
      121 CALL                             R18 2 1
      122 SETTABLEKS                       R18 R17 K26 ["AnchorPoint"]
      124 GETIMPORT                        R18 K9 [UDim2.new]
      126 LOADK                            R19 K33 [0.5]
      127 LOADN                            R20 0
      128 LOADK                            R21 K33 [0.5]
      129 LOADN                            R22 0
      130 CALL                             R18 4 1
      131 SETTABLEKS                       R18 R17 K27 ["Position"]
      133 GETIMPORT                        R18 K9 [UDim2.new]
      135 LOADN                            R19 0
      136 MOVE                             R20 R3
      137 LOADN                            R21 0
      138 MOVE                             R22 R3
      139 CALL                             R18 4 1
      140 SETTABLEKS                       R18 R17 K10 ["Size"]
      142 GETTABLEKS                       R18 R0 K19 ["Icon"]
      144 SETTABLEKS                       R18 R17 K17 ["Image"]
      146 JUMPIFNOT                        R4 ; [+3]
      147 GETTABLEKS                       R18 R1 K39 ["ButtonIconHoveredColor"]
      149 JUMPIF                           R18 ; [+2]
      150 GETTABLEKS                       R18 R1 K40 ["ButtonIconColor"]
      152 SETTABLEKS                       R18 R17 K37 ["ImageColor3"]
      154 CALL                             R15 2 1
      155 SETTABLEKS                       R15 R14 K19 ["Icon"]
      157 CALL                             R11 3 1
      158 SETTABLEKS                       R11 R10 K23 ["Background"]
      160 CALL                             R7 3 -1
      161 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Style"]
       23 GETTABLEKS                       R3 R3 K10 ["Stylizer"]
       25 GETTABLEKS                       R4 R2 K11 ["Dash"]
       27 DUPCLOSURE                       R5 K12 [PROTO_2]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R4
       31 SETGLOBAL                        R5 K13 ["PreviewToolbarButton"]
       33 GETGLOBAL                        R5 K13 ["PreviewToolbarButton"]
       35 RETURN                           R5 1
