PROTO_0:
        0 NEWTABLE                         R3 8 0
        2 GETIMPORT                        R4 K2 [UDim2.fromOffset]
        4 LOADN                            R5 28
        5 LOADN                            R6 28
        6 CALL                             R4 2 1
        7 SETTABLEKS                       R4 R3 K3 ["Size"]
        9 GETUPVAL                         R4 0
       10 SETTABLEKS                       R4 R3 K4 ["Foreground"]
       12 DUPTABLE                         R4 K12 [{["Size"], ["AnchorPoint"], ["Position"], ["Rotation"], ["BackgroundTransparency"] = 1, ["Image"] = "rbxasset://textures/DeveloperFramework/Votes/rating_up_white.png"}]
       13 GETIMPORT                        R5 K14 [UDim2.new]
       15 LOADN                            R6 0
       16 LOADN                            R7 12
       17 LOADN                            R8 0
       18 LOADN                            R9 15
       19 CALL                             R5 4 1
       20 SETTABLEKS                       R5 R4 K3 ["Size"]
       22 GETIMPORT                        R5 K16 [Vector2.new]
       24 LOADK                            R6 K17 [0.5]
       25 LOADK                            R7 K17 [0.5]
       26 CALL                             R5 2 1
       27 SETTABLEKS                       R5 R4 K5 ["AnchorPoint"]
       29 GETIMPORT                        R5 K14 [UDim2.new]
       31 LOADK                            R6 K17 [0.5]
       32 LOADN                            R7 0
       33 LOADK                            R8 K17 [0.5]
       34 LOADN                            R9 0
       35 CALL                             R5 4 1
       36 SETTABLEKS                       R5 R4 K6 ["Position"]
       38 SETTABLEKS                       R2 R4 K7 ["Rotation"]
       40 SETTABLEKS                       R4 R3 K18 ["ThumbStyle"]
       42 GETUPVAL                         R4 1
       43 SETTABLEKS                       R4 R3 K19 ["Background"]
       45 GETUPVAL                         R4 2
       46 GETTABLEKS                       R4 R4 K20 ["Dictionary"]
       48 GETTABLEKS                       R4 R4 K21 ["join"]
       50 GETUPVAL                         R5 3
       51 DUPTABLE                         R6 K23 [{"Color"}]
       52 GETUPVAL                         R7 4
       53 GETTABLEKS                       R7 R7 K24 ["ButtonDisabled"]
       55 SETTABLEKS                       R7 R6 K22 ["Color"]
       57 CALL                             R4 2 1
       58 SETTABLEKS                       R4 R3 K25 ["BackgroundStyle"]
       60 GETUPVAL                         R4 5
       61 GETTABLEKS                       R4 R4 K26 ["Selected"]
       63 DUPTABLE                         R5 K27 [{"BackgroundStyle"}]
       64 GETUPVAL                         R6 2
       65 GETTABLEKS                       R6 R6 K20 ["Dictionary"]
       67 GETTABLEKS                       R6 R6 K21 ["join"]
       69 GETUPVAL                         R7 3
       70 DUPTABLE                         R8 K23 [{"Color"}]
       71 SETTABLEKS                       R1 R8 K22 ["Color"]
       73 CALL                             R6 2 1
       74 SETTABLEKS                       R6 R5 K25 ["BackgroundStyle"]
       76 SETTABLE                         R5 R3 R4
       77 GETUPVAL                         R4 2
       78 GETTABLEKS                       R4 R4 K20 ["Dictionary"]
       80 GETTABLEKS                       R4 R4 K21 ["join"]
       82 MOVE                             R5 R3
       83 DUPTABLE                         R6 K29 [{"CanVote"}]
       84 GETUPVAL                         R7 2
       85 GETTABLEKS                       R7 R7 K20 ["Dictionary"]
       87 GETTABLEKS                       R7 R7 K21 ["join"]
       89 MOVE                             R8 R3
       90 NEWTABLE                         R9 2 0
       92 GETUPVAL                         R10 2
       93 GETTABLEKS                       R10 R10 K20 ["Dictionary"]
       95 GETTABLEKS                       R10 R10 K21 ["join"]
       97 GETUPVAL                         R11 3
       98 DUPTABLE                         R12 K23 [{"Color"}]
       99 GETUPVAL                         R13 4
      100 GETTABLEKS                       R13 R13 K30 ["ImageButtonBackground"]
      102 SETTABLEKS                       R13 R12 K22 ["Color"]
      104 CALL                             R10 2 1
      105 SETTABLEKS                       R10 R9 K25 ["BackgroundStyle"]
      107 GETUPVAL                         R10 5
      108 GETTABLEKS                       R10 R10 K31 ["Hover"]
      110 DUPTABLE                         R11 K27 [{"BackgroundStyle"}]
      111 GETUPVAL                         R12 2
      112 GETTABLEKS                       R12 R12 K20 ["Dictionary"]
      114 GETTABLEKS                       R12 R12 K21 ["join"]
      116 GETUPVAL                         R13 3
      117 DUPTABLE                         R14 K23 [{"Color"}]
      118 GETUPVAL                         R15 4
      119 GETTABLEKS                       R15 R15 K32 ["ImageButtonHover"]
      121 SETTABLEKS                       R15 R14 K22 ["Color"]
      123 CALL                             R12 2 1
      124 SETTABLEKS                       R12 R11 K25 ["BackgroundStyle"]
      126 SETTABLE                         R11 R9 R10
      127 CALL                             R7 2 1
      128 SETTABLEKS                       R7 R6 K28 ["CanVote"]
      130 CALL                             R4 2 -1
      131 RETURN                           R4 -1

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
       99 DUPTABLE                         R17 K32 [{["Color"], ["BorderTransparency"] = 1}]
      100 GETTABLEKS                       R18 R7 K33 ["SubBackground"]
      102 SETTABLEKS                       R18 R17 K29 ["Color"]
      104 CALL                             R15 2 1
      105 SETTABLEKS                       R15 R14 K21 ["BackgroundStyle"]
      107 DUPTABLE                         R15 K40 [{["Top"] = 0, ["Right"] = 10, ["Left"] = 10, ["Bottom"] = 0}]
      108 SETTABLEKS                       R15 R14 K22 ["Padding"]
      110 GETIMPORT                        R15 K43 [UDim2.new]
      112 LOADN                            R16 1
      113 LOADN                            R17 0
      114 LOADN                            R18 0
      115 LOADN                            R19 36
      116 CALL                             R15 4 1
      117 SETTABLEKS                       R15 R14 K23 ["Size"]
      119 DUPTABLE                         R15 K46 [{"VoteUp", "VoteDown"}]
      120 MOVE                             R16 R13
      121 LOADK                            R17 K47 ["rbxasset://textures/DeveloperFramework/Votes/rating_up_white.png"]
      122 GETTABLEKS                       R18 R7 K48 ["SuccessMain"]
      124 LOADN                            R19 0
      125 CALL                             R16 3 1
      126 SETTABLEKS                       R16 R15 K44 ["VoteUp"]
      128 MOVE                             R16 R13
      129 LOADK                            R17 K47 ["rbxasset://textures/DeveloperFramework/Votes/rating_up_white.png"]
      130 GETTABLEKS                       R18 R7 K49 ["ErrorMain"]
      132 LOADN                            R19 180
      133 CALL                             R16 3 1
      134 SETTABLEKS                       R16 R15 K45 ["VoteDown"]
      136 SETTABLEKS                       R15 R14 K24 ["Buttons"]
      138 DUPTABLE                         R15 K54 [{["Font"], ["TextColor"], ["TextSize"] = 14}]
      139 GETIMPORT                        R16 K57 [Enum.Font.SourceSans]
      141 SETTABLEKS                       R16 R15 K50 ["Font"]
      143 GETTABLEKS                       R16 R7 K58 ["MainText"]
      145 SETTABLEKS                       R16 R15 K51 ["TextColor"]
      147 SETTABLEKS                       R15 R14 K25 ["VoteCount"]
      149 GETTABLEKS                       R15 R4 K27 ["Dictionary"]
      151 GETTABLEKS                       R15 R15 K28 ["join"]
      153 MOVE                             R16 R12
      154 DUPTABLE                         R17 K60 [{"Text"}]
      155 GETTABLEKS                       R18 R4 K27 ["Dictionary"]
      157 GETTABLEKS                       R18 R18 K28 ["join"]
      159 GETTABLEKS                       R19 R12 K59 ["Text"]
      161 DUPTABLE                         R20 K62 [{["TextSize"] = 18}]
      162 CALL                             R18 2 1
      163 SETTABLEKS                       R18 R17 K59 ["Text"]
      165 CALL                             R15 2 1
      166 SETTABLEKS                       R15 R14 K18 ["Votes"]
      168 RETURN                           R14 1
