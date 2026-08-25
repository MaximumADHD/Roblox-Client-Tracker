PROTO_0:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["SIDE_TOP"]
        4 JUMPIFEQ                         R0 R2 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["SIDE_BOTTOM"]
        9 JUMPIFEQ                         R0 R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Length"]
        2 GETTABLEKS                       R2 R0 K1 ["Thickness"]
        4 JUMPIF                           R2 ; [+3]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["SCALE_TICK_THICKNESS"]
        8 GETTABLEKS                       R3 R0 K3 ["TextPadding"]
       10 JUMPIF                           R3 ; [+3]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K4 ["SCALE_TICK_LABEL_PADDING"]
       14 LOADB                            R4 1
       15 GETTABLEKS                       R5 R0 K5 ["HasLabel"]
       17 JUMPIFEQKNIL                     R5 ; [+3]
       19 GETTABLEKS                       R4 R0 K5 ["HasLabel"]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K6 ["getAnchorPointForSide"]
       24 GETTABLEKS                       R6 R0 K7 ["Side"]
       26 CALL                             R5 1 1
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K8 ["getTextAlignmentsFromAnchorPoint"]
       30 MOVE                             R7 R5
       31 CALL                             R6 1 2
       32 GETTABLEKS                       R10 R0 K7 ["Side"]
       34 LOADB                            R9 1
       35 GETUPVAL                         R11 2
       36 GETTABLEKS                       R11 R11 K9 ["SIDE_TOP"]
       38 JUMPIFEQ                         R10 R11 ; [+8]
       40 GETUPVAL                         R11 2
       41 GETTABLEKS                       R11 R11 K10 ["SIDE_BOTTOM"]
       43 JUMPIFEQ                         R10 R11 ; [+2]
       45 LOADB                            R9 0 +1
       46 LOADB                            R9 1
       47 JUMPIFNOT                        R9 ; [+6]
       48 GETIMPORT                        R8 K13 [UDim2.fromOffset]
       50 MOVE                             R9 R2
       51 MOVE                             R10 R1
       52 CALL                             R8 2 1
       53 JUMP                             ; [+5]
       54 GETIMPORT                        R8 K13 [UDim2.fromOffset]
       56 MOVE                             R9 R1
       57 MOVE                             R10 R2
       58 CALL                             R8 2 1
       59 ADD                              R9 R1 R3
       60 GETIMPORT                        R10 K13 [UDim2.fromOffset]
       62 LOADN                            R14 -2
       63 MUL                              R13 R14 R9
       64 GETTABLEKS                       R14 R5 K14 ["X"]
       66 MUL                              R12 R13 R14
       67 ADD                              R11 R12 R9
       68 LOADN                            R15 -2
       69 MUL                              R14 R15 R9
       70 GETTABLEKS                       R15 R5 K15 ["Y"]
       72 MUL                              R13 R14 R15
       73 ADD                              R12 R13 R9
       74 CALL                             R10 2 1
       75 GETUPVAL                         R11 3
       76 GETTABLEKS                       R11 R11 K16 ["createElement"]
       78 GETUPVAL                         R12 4
       79 DUPTABLE                         R13 K19 [{"Side", "Position", "ZIndex"}]
       80 GETTABLEKS                       R14 R0 K7 ["Side"]
       82 SETTABLEKS                       R14 R13 K7 ["Side"]
       84 GETTABLEKS                       R14 R0 K17 ["Position"]
       86 SETTABLEKS                       R14 R13 K17 ["Position"]
       88 GETTABLEKS                       R14 R0 K18 ["ZIndex"]
       90 SETTABLEKS                       R14 R13 K18 ["ZIndex"]
       92 DUPTABLE                         R14 K22 [{"Tick", "Label"}]
       93 GETUPVAL                         R15 3
       94 GETTABLEKS                       R15 R15 K16 ["createElement"]
       96 LOADK                            R16 K23 ["Frame"]
       97 DUPTABLE                         R17 K29 [{["AnchorPoint"], ["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
       98 SETTABLEKS                       R5 R17 K24 ["AnchorPoint"]
      100 SETTABLEKS                       R8 R17 K25 ["Size"]
      102 GETTABLEKS                       R18 R0 K30 ["Color3"]
      104 JUMPIF                           R18 ; [+3]
      105 GETUPVAL                         R18 0
      106 GETTABLEKS                       R18 R18 K31 ["SCALE_TICK_COLOR3"]
      108 SETTABLEKS                       R18 R17 K26 ["BackgroundColor3"]
      110 GETTABLEKS                       R18 R0 K32 ["children"]
      112 CALL                             R15 3 1
      113 SETTABLEKS                       R15 R14 K20 ["Tick"]
      115 MOVE                             R15 R4
      116 JUMPIFNOT                        R15 ; [+47]
      117 GETUPVAL                         R15 3
      118 GETTABLEKS                       R15 R15 K16 ["createElement"]
      120 LOADK                            R16 K33 ["TextLabel"]
      121 DUPTABLE                         R17 K41 [{["AnchorPoint"], ["Position"], ["Text"], ["TextXAlignment"], ["TextYAlignment"], ["BackgroundTransparency"] = 1, ["TextColor3"], ["TextSize"]}]
      122 SETTABLEKS                       R5 R17 K24 ["AnchorPoint"]
      124 SETTABLEKS                       R10 R17 K17 ["Position"]
      126 GETTABLEKS                       R19 R0 K42 ["Formatter"]
      128 JUMPIFNOT                        R19 ; [+6]
      129 GETTABLEKS                       R18 R0 K42 ["Formatter"]
      131 GETTABLEKS                       R19 R0 K17 ["Position"]
      133 CALL                             R18 1 1
      134 JUMP                             ; [+6]
      135 GETTABLEKS                       R19 R0 K17 ["Position"]
      137 FASTCALL1                        TOSTRING R19 ; [+2]
      138 GETIMPORT                        R18 K44 [tostring]
      140 CALL                             R18 1 1
      141 SETTABLEKS                       R18 R17 K34 ["Text"]
      143 SETTABLEKS                       R6 R17 K35 ["TextXAlignment"]
      145 SETTABLEKS                       R7 R17 K36 ["TextYAlignment"]
      147 GETTABLEKS                       R18 R0 K30 ["Color3"]
      149 JUMPIF                           R18 ; [+3]
      150 GETUPVAL                         R18 0
      151 GETTABLEKS                       R18 R18 K45 ["SCALE_TICK_LABEL_COLOR3"]
      153 SETTABLEKS                       R18 R17 K39 ["TextColor3"]
      155 GETTABLEKS                       R18 R0 K40 ["TextSize"]
      157 JUMPIF                           R18 ; [+3]
      158 GETUPVAL                         R18 0
      159 GETTABLEKS                       R18 R18 K46 ["SCALE_TICK_LABEL_SIZE"]
      161 SETTABLEKS                       R18 R17 K40 ["TextSize"]
      163 CALL                             R15 2 1
      164 SETTABLEKS                       R15 R14 K21 ["Label"]
      166 CALL                             R11 3 -1
      167 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Types"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["SidePositioner"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Util"]
       30 GETTABLEKS                       R6 R6 K12 ["GridUtil"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Util"]
       37 GETTABLEKS                       R7 R7 K13 ["StyleUtil"]
       39 CALL                             R6 1 1
       40 DUPCLOSURE                       R7 K14 [PROTO_0]
       41 CAPTURE                          VAL R3
       42 DUPCLOSURE                       R8 K15 [PROTO_1]
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R4
       48 SETGLOBAL                        R8 K16 ["ScaleTick"]
       50 GETGLOBAL                        R8 K16 ["ScaleTick"]
       52 RETURN                           R8 1
