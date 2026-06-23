PROTO_0:
        0 NEWTABLE                         R3 8 0
        2 GETIMPORT                        R4 K2 [UDim2.fromOffset]
        4 LOADN                            R5 28
        5 LOADN                            R6 28
        6 CALL                             R4 2 1
        7 SETTABLEKS                       R4 R3 K3 ["Size"]
        9 GETUPVAL                         R4 0
       10 SETTABLEKS                       R4 R3 K4 ["Foreground"]
       12 DUPTABLE                         R4 K10 [{"Size", "AnchorPoint", "Position", "Rotation", "BackgroundTransparency", "Image"}]
       13 GETIMPORT                        R5 K12 [UDim2.new]
       15 LOADN                            R6 0
       16 LOADN                            R7 12
       17 LOADN                            R8 0
       18 LOADN                            R9 15
       19 CALL                             R5 4 1
       20 SETTABLEKS                       R5 R4 K3 ["Size"]
       22 GETIMPORT                        R5 K14 [Vector2.new]
       24 LOADK                            R6 K15 [0.5]
       25 LOADK                            R7 K15 [0.5]
       26 CALL                             R5 2 1
       27 SETTABLEKS                       R5 R4 K5 ["AnchorPoint"]
       29 GETIMPORT                        R5 K12 [UDim2.new]
       31 LOADK                            R6 K15 [0.5]
       32 LOADN                            R7 0
       33 LOADK                            R8 K15 [0.5]
       34 LOADN                            R9 0
       35 CALL                             R5 4 1
       36 SETTABLEKS                       R5 R4 K6 ["Position"]
       38 SETTABLEKS                       R2 R4 K7 ["Rotation"]
       40 LOADN                            R5 1
       41 SETTABLEKS                       R5 R4 K8 ["BackgroundTransparency"]
       43 LOADK                            R5 K16 ["rbxasset://textures/DeveloperFramework/Votes/rating_up_white.png"]
       44 SETTABLEKS                       R5 R4 K9 ["Image"]
       46 SETTABLEKS                       R4 R3 K17 ["ThumbStyle"]
       48 GETUPVAL                         R4 1
       49 SETTABLEKS                       R4 R3 K18 ["Background"]
       51 GETUPVAL                         R4 2
       52 GETTABLEKS                       R4 R4 K19 ["Dictionary"]
       54 GETTABLEKS                       R4 R4 K20 ["join"]
       56 GETUPVAL                         R5 3
       57 DUPTABLE                         R6 K22 [{"Color"}]
       58 GETUPVAL                         R7 4
       59 GETTABLEKS                       R7 R7 K23 ["ButtonDisabled"]
       61 SETTABLEKS                       R7 R6 K21 ["Color"]
       63 CALL                             R4 2 1
       64 SETTABLEKS                       R4 R3 K24 ["BackgroundStyle"]
       66 GETUPVAL                         R4 5
       67 GETTABLEKS                       R4 R4 K25 ["Selected"]
       69 DUPTABLE                         R5 K26 [{"BackgroundStyle"}]
       70 GETUPVAL                         R6 2
       71 GETTABLEKS                       R6 R6 K19 ["Dictionary"]
       73 GETTABLEKS                       R6 R6 K20 ["join"]
       75 GETUPVAL                         R7 3
       76 DUPTABLE                         R8 K22 [{"Color"}]
       77 SETTABLEKS                       R1 R8 K21 ["Color"]
       79 CALL                             R6 2 1
       80 SETTABLEKS                       R6 R5 K24 ["BackgroundStyle"]
       82 SETTABLE                         R5 R3 R4
       83 GETUPVAL                         R4 2
       84 GETTABLEKS                       R4 R4 K19 ["Dictionary"]
       86 GETTABLEKS                       R4 R4 K20 ["join"]
       88 MOVE                             R5 R3
       89 DUPTABLE                         R6 K28 [{"CanVote"}]
       90 GETUPVAL                         R7 2
       91 GETTABLEKS                       R7 R7 K19 ["Dictionary"]
       93 GETTABLEKS                       R7 R7 K20 ["join"]
       95 MOVE                             R8 R3
       96 NEWTABLE                         R9 2 0
       98 GETUPVAL                         R10 2
       99 GETTABLEKS                       R10 R10 K19 ["Dictionary"]
      101 GETTABLEKS                       R10 R10 K20 ["join"]
      103 GETUPVAL                         R11 3
      104 DUPTABLE                         R12 K22 [{"Color"}]
      105 GETUPVAL                         R13 4
      106 GETTABLEKS                       R13 R13 K29 ["ImageButtonBackground"]
      108 SETTABLEKS                       R13 R12 K21 ["Color"]
      110 CALL                             R10 2 1
      111 SETTABLEKS                       R10 R9 K24 ["BackgroundStyle"]
      113 GETUPVAL                         R10 5
      114 GETTABLEKS                       R10 R10 K30 ["Hover"]
      116 DUPTABLE                         R11 K26 [{"BackgroundStyle"}]
      117 GETUPVAL                         R12 2
      118 GETTABLEKS                       R12 R12 K19 ["Dictionary"]
      120 GETTABLEKS                       R12 R12 K20 ["join"]
      122 GETUPVAL                         R13 3
      123 DUPTABLE                         R14 K22 [{"Color"}]
      124 GETUPVAL                         R15 4
      125 GETTABLEKS                       R15 R15 K31 ["ImageButtonHover"]
      127 SETTABLEKS                       R15 R14 K21 ["Color"]
      129 CALL                             R12 2 1
      130 SETTABLEKS                       R12 R11 K24 ["BackgroundStyle"]
      132 SETTABLE                         R11 R9 R10
      133 CALL                             R7 2 1
      134 SETTABLEKS                       R7 R6 K27 ["CanVote"]
      136 CALL                             R4 2 -1
      137 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K2 ["UI"]
       13 GETTABLEKS                       R2 R2 K7 ["Components"]
       15 GETTABLEKS                       R2 R2 K8 ["RoundBox"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K6 [require]
       20 GETTABLEKS                       R3 R0 K2 ["UI"]
       22 GETTABLEKS                       R3 R3 K7 ["Components"]
       24 GETTABLEKS                       R3 R3 K9 ["Image"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K6 [require]
       29 GETTABLEKS                       R4 R0 K10 ["Util"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R5 R0 K4 ["Parent"]
       36 GETTABLEKS                       R5 R5 K11 ["Cryo"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R3 K12 ["deepCopy"]
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R7 R0 K10 ["Util"]
       45 GETTABLEKS                       R7 R7 K13 ["StyleModifier"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R8 R0 K14 ["Style"]
       52 GETTABLEKS                       R8 R8 K15 ["StyleKey"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R9 R0 K2 ["UI"]
       59 GETTABLEKS                       R9 R9 K7 ["Components"]
       61 GETTABLEKS                       R9 R9 K16 ["UIFolderData"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETTABLEKS                       R10 R8 K8 ["RoundBox"]
       68 GETTABLEKS                       R10 R10 K17 ["style"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K6 [require]
       73 GETTABLEKS                       R11 R8 K18 ["Votes"]
       75 GETTABLEKS                       R11 R11 K17 ["style"]
       77 CALL                             R10 1 1
       78 MOVE                             R11 R5
       79 MOVE                             R12 R9
       80 CALL                             R11 1 1
       81 MOVE                             R12 R5
       82 MOVE                             R13 R10
       83 CALL                             R12 1 1
       84 DUPCLOSURE                       R13 K19 [PROTO_0]
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R6
       91 DUPTABLE                         R14 K26 [{"Background", "BackgroundStyle", "Padding", "Size", "Buttons", "VoteCount", "Votes"}]
       92 SETTABLEKS                       R1 R14 K20 ["Background"]
       94 GETTABLEKS                       R15 R4 K27 ["Dictionary"]
       96 GETTABLEKS                       R15 R15 K28 ["join"]
       98 MOVE                             R16 R11
       99 DUPTABLE                         R17 K31 [{"Color", "BorderTransparency"}]
      100 GETTABLEKS                       R18 R7 K32 ["SubBackground"]
      102 SETTABLEKS                       R18 R17 K29 ["Color"]
      104 LOADN                            R18 1
      105 SETTABLEKS                       R18 R17 K30 ["BorderTransparency"]
      107 CALL                             R15 2 1
      108 SETTABLEKS                       R15 R14 K21 ["BackgroundStyle"]
      110 DUPTABLE                         R15 K37 [{"Top", "Right", "Left", "Bottom"}]
      111 LOADN                            R16 0
      112 SETTABLEKS                       R16 R15 K33 ["Top"]
      114 LOADN                            R16 10
      115 SETTABLEKS                       R16 R15 K34 ["Right"]
      117 LOADN                            R16 10
      118 SETTABLEKS                       R16 R15 K35 ["Left"]
      120 LOADN                            R16 0
      121 SETTABLEKS                       R16 R15 K36 ["Bottom"]
      123 SETTABLEKS                       R15 R14 K22 ["Padding"]
      125 GETIMPORT                        R15 K40 [UDim2.new]
      127 LOADN                            R16 1
      128 LOADN                            R17 0
      129 LOADN                            R18 0
      130 LOADN                            R19 36
      131 CALL                             R15 4 1
      132 SETTABLEKS                       R15 R14 K23 ["Size"]
      134 DUPTABLE                         R15 K43 [{"VoteUp", "VoteDown"}]
      135 MOVE                             R16 R13
      136 LOADK                            R17 K44 ["rbxasset://textures/DeveloperFramework/Votes/rating_up_white.png"]
      137 GETTABLEKS                       R18 R7 K45 ["SuccessMain"]
      139 LOADN                            R19 0
      140 CALL                             R16 3 1
      141 SETTABLEKS                       R16 R15 K41 ["VoteUp"]
      143 MOVE                             R16 R13
      144 LOADK                            R17 K44 ["rbxasset://textures/DeveloperFramework/Votes/rating_up_white.png"]
      145 GETTABLEKS                       R18 R7 K46 ["ErrorMain"]
      147 LOADN                            R19 180
      148 CALL                             R16 3 1
      149 SETTABLEKS                       R16 R15 K42 ["VoteDown"]
      151 SETTABLEKS                       R15 R14 K24 ["Buttons"]
      153 DUPTABLE                         R15 K50 [{"Font", "TextColor", "TextSize"}]
      154 GETIMPORT                        R16 K53 [Enum.Font.SourceSans]
      156 SETTABLEKS                       R16 R15 K47 ["Font"]
      158 GETTABLEKS                       R16 R7 K54 ["MainText"]
      160 SETTABLEKS                       R16 R15 K48 ["TextColor"]
      162 LOADN                            R16 14
      163 SETTABLEKS                       R16 R15 K49 ["TextSize"]
      165 SETTABLEKS                       R15 R14 K25 ["VoteCount"]
      167 GETTABLEKS                       R15 R4 K27 ["Dictionary"]
      169 GETTABLEKS                       R15 R15 K28 ["join"]
      171 MOVE                             R16 R12
      172 DUPTABLE                         R17 K56 [{"Text"}]
      173 GETTABLEKS                       R18 R4 K27 ["Dictionary"]
      175 GETTABLEKS                       R18 R18 K28 ["join"]
      177 GETTABLEKS                       R19 R12 K55 ["Text"]
      179 DUPTABLE                         R20 K57 [{"TextSize"}]
      180 LOADN                            R21 18
      181 SETTABLEKS                       R21 R20 K49 ["TextSize"]
      183 CALL                             R18 2 1
      184 SETTABLEKS                       R18 R17 K55 ["Text"]
      186 CALL                             R15 2 1
      187 SETTABLEKS                       R15 R14 K18 ["Votes"]
      189 RETURN                           R14 1
