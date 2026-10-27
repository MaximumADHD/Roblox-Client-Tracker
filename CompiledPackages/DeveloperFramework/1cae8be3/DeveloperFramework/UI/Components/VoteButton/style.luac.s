PROTO_0:
        0 NEWTABLE                         R2 8 0
        2 GETUPVAL                         R3 0
        3 SETTABLEKS                       R3 R2 K0 ["Background"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        8 GETTABLEKS                       R3 R3 K2 ["join"]
       10 GETUPVAL                         R4 2
       11 DUPTABLE                         R5 K4 [{"Color"}]
       12 GETUPVAL                         R6 3
       13 GETTABLEKS                       R6 R6 K5 ["ImageButtonBackground"]
       15 SETTABLEKS                       R6 R5 K3 ["Color"]
       17 CALL                             R3 2 1
       18 SETTABLEKS                       R3 R2 K6 ["BackgroundStyle"]
       20 GETUPVAL                         R3 4
       21 SETTABLEKS                       R3 R2 K7 ["Foreground"]
       23 GETIMPORT                        R3 K10 [UDim2.fromOffset]
       25 LOADN                            R4 28
       26 LOADN                            R5 28
       27 CALL                             R3 2 1
       28 SETTABLEKS                       R3 R2 K11 ["Size"]
       30 DUPTABLE                         R3 K19 [{["Size"], ["AnchorPoint"], ["Position"], ["Rotation"], ["BackgroundTransparency"] = 1, ["Image"] = "rbxasset://textures/DeveloperFramework/Votes/rating_up_white.png"}]
       31 GETIMPORT                        R4 K21 [UDim2.new]
       33 LOADN                            R5 0
       34 LOADN                            R6 12
       35 LOADN                            R7 0
       36 LOADN                            R8 15
       37 CALL                             R4 4 1
       38 SETTABLEKS                       R4 R3 K11 ["Size"]
       40 GETIMPORT                        R4 K23 [Vector2.new]
       42 LOADK                            R5 K24 [0.5]
       43 LOADK                            R6 K24 [0.5]
       44 CALL                             R4 2 1
       45 SETTABLEKS                       R4 R3 K12 ["AnchorPoint"]
       47 GETIMPORT                        R4 K21 [UDim2.new]
       49 LOADK                            R5 K24 [0.5]
       50 LOADN                            R6 0
       51 LOADK                            R7 K24 [0.5]
       52 LOADN                            R8 0
       53 CALL                             R4 4 1
       54 SETTABLEKS                       R4 R3 K13 ["Position"]
       56 SETTABLEKS                       R1 R3 K14 ["Rotation"]
       58 SETTABLEKS                       R3 R2 K25 ["ThumbStyle"]
       60 GETUPVAL                         R3 5
       61 GETTABLEKS                       R3 R3 K26 ["Disabled"]
       63 DUPTABLE                         R4 K27 [{"BackgroundStyle"}]
       64 GETUPVAL                         R5 1
       65 GETTABLEKS                       R5 R5 K1 ["Dictionary"]
       67 GETTABLEKS                       R5 R5 K2 ["join"]
       69 GETUPVAL                         R6 2
       70 DUPTABLE                         R7 K4 [{"Color"}]
       71 GETUPVAL                         R8 3
       72 GETTABLEKS                       R8 R8 K28 ["ButtonDisabled"]
       74 SETTABLEKS                       R8 R7 K3 ["Color"]
       76 CALL                             R5 2 1
       77 SETTABLEKS                       R5 R4 K6 ["BackgroundStyle"]
       79 SETTABLE                         R4 R2 R3
       80 GETUPVAL                         R3 5
       81 GETTABLEKS                       R3 R3 K29 ["Selected"]
       83 DUPTABLE                         R4 K27 [{"BackgroundStyle"}]
       84 GETUPVAL                         R5 1
       85 GETTABLEKS                       R5 R5 K1 ["Dictionary"]
       87 GETTABLEKS                       R5 R5 K2 ["join"]
       89 GETUPVAL                         R6 2
       90 DUPTABLE                         R7 K4 [{"Color"}]
       91 SETTABLEKS                       R0 R7 K3 ["Color"]
       93 CALL                             R5 2 1
       94 SETTABLEKS                       R5 R4 K6 ["BackgroundStyle"]
       96 SETTABLE                         R4 R2 R3
       97 GETUPVAL                         R3 1
       98 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
      100 GETTABLEKS                       R3 R3 K2 ["join"]
      102 MOVE                             R4 R2
      103 DUPTABLE                         R5 K31 [{"CanVote"}]
      104 GETUPVAL                         R6 1
      105 GETTABLEKS                       R6 R6 K1 ["Dictionary"]
      107 GETTABLEKS                       R6 R6 K2 ["join"]
      109 MOVE                             R7 R2
      110 NEWTABLE                         R8 1 0
      112 GETUPVAL                         R9 5
      113 GETTABLEKS                       R9 R9 K32 ["Hover"]
      115 DUPTABLE                         R10 K27 [{"BackgroundStyle"}]
      116 GETUPVAL                         R11 1
      117 GETTABLEKS                       R11 R11 K1 ["Dictionary"]
      119 GETTABLEKS                       R11 R11 K2 ["join"]
      121 GETUPVAL                         R12 2
      122 DUPTABLE                         R13 K4 [{"Color"}]
      123 GETUPVAL                         R14 3
      124 GETTABLEKS                       R14 R14 K33 ["ImageButtonHover"]
      126 SETTABLEKS                       R14 R13 K3 ["Color"]
      128 CALL                             R11 2 1
      129 SETTABLEKS                       R11 R10 K6 ["BackgroundStyle"]
      131 SETTABLE                         R10 R8 R9
      132 CALL                             R6 2 1
      133 SETTABLEKS                       R6 R5 K30 ["CanVote"]
      135 CALL                             R3 2 -1
      136 RETURN                           R3 -1

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
       71 MOVE                             R10 R5
       72 MOVE                             R11 R9
       73 CALL                             R10 1 1
       74 DUPCLOSURE                       R11 K18 [PROTO_0]
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R6
       81 NEWTABLE                         R12 2 0
       83 MOVE                             R13 R11
       84 GETTABLEKS                       R14 R7 K19 ["SuccessMain"]
       86 LOADN                            R15 0
       87 CALL                             R13 2 1
       88 SETTABLEKS                       R13 R12 K20 ["&UpVote"]
       90 MOVE                             R13 R11
       91 GETTABLEKS                       R14 R7 K21 ["ErrorMain"]
       93 LOADN                            R15 180
       94 CALL                             R13 2 1
       95 SETTABLEKS                       R13 R12 K22 ["&DownVote"]
       97 RETURN                           R12 1
