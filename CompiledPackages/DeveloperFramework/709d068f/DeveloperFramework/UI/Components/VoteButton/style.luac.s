PROTO_0:
        0 NEWTABLE                         R2 8 0
        2 GETUPVAL                         R3 0
        3 SETTABLEKS                       R3 R2 K0 ["Background"]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K1 ["Dictionary"]
        8 GETTABLEKS                       R3 R4 K2 ["join"]
       10 GETUPVAL                         R4 2
       11 DUPTABLE                         R5 K4 [{"Color"}]
       12 GETUPVAL                         R7 3
       13 GETTABLEKS                       R6 R7 K5 ["ImageButtonBackground"]
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
       30 DUPTABLE                         R3 K17 [{"Size", "AnchorPoint", "Position", "Rotation", "BackgroundTransparency", "Image"}]
       31 GETIMPORT                        R4 K19 [UDim2.new]
       33 LOADN                            R5 0
       34 LOADN                            R6 12
       35 LOADN                            R7 0
       36 LOADN                            R8 15
       37 CALL                             R4 4 1
       38 SETTABLEKS                       R4 R3 K11 ["Size"]
       40 GETIMPORT                        R4 K21 [Vector2.new]
       42 LOADK                            R5 K22 [0.5]
       43 LOADK                            R6 K22 [0.5]
       44 CALL                             R4 2 1
       45 SETTABLEKS                       R4 R3 K12 ["AnchorPoint"]
       47 GETIMPORT                        R4 K19 [UDim2.new]
       49 LOADK                            R5 K22 [0.5]
       50 LOADN                            R6 0
       51 LOADK                            R7 K22 [0.5]
       52 LOADN                            R8 0
       53 CALL                             R4 4 1
       54 SETTABLEKS                       R4 R3 K13 ["Position"]
       56 SETTABLEKS                       R1 R3 K14 ["Rotation"]
       58 LOADN                            R4 1
       59 SETTABLEKS                       R4 R3 K15 ["BackgroundTransparency"]
       61 LOADK                            R4 K23 ["rbxasset://textures/DeveloperFramework/Votes/rating_up_white.png"]
       62 SETTABLEKS                       R4 R3 K16 ["Image"]
       64 SETTABLEKS                       R3 R2 K24 ["ThumbStyle"]
       66 GETUPVAL                         R4 5
       67 GETTABLEKS                       R3 R4 K25 ["Disabled"]
       69 DUPTABLE                         R4 K26 [{"BackgroundStyle"}]
       70 GETUPVAL                         R7 1
       71 GETTABLEKS                       R6 R7 K1 ["Dictionary"]
       73 GETTABLEKS                       R5 R6 K2 ["join"]
       75 GETUPVAL                         R6 2
       76 DUPTABLE                         R7 K4 [{"Color"}]
       77 GETUPVAL                         R9 3
       78 GETTABLEKS                       R8 R9 K27 ["ButtonDisabled"]
       80 SETTABLEKS                       R8 R7 K3 ["Color"]
       82 CALL                             R5 2 1
       83 SETTABLEKS                       R5 R4 K6 ["BackgroundStyle"]
       85 SETTABLE                         R4 R2 R3
       86 GETUPVAL                         R4 5
       87 GETTABLEKS                       R3 R4 K28 ["Selected"]
       89 DUPTABLE                         R4 K26 [{"BackgroundStyle"}]
       90 GETUPVAL                         R7 1
       91 GETTABLEKS                       R6 R7 K1 ["Dictionary"]
       93 GETTABLEKS                       R5 R6 K2 ["join"]
       95 GETUPVAL                         R6 2
       96 DUPTABLE                         R7 K4 [{"Color"}]
       97 SETTABLEKS                       R0 R7 K3 ["Color"]
       99 CALL                             R5 2 1
      100 SETTABLEKS                       R5 R4 K6 ["BackgroundStyle"]
      102 SETTABLE                         R4 R2 R3
      103 GETUPVAL                         R5 1
      104 GETTABLEKS                       R4 R5 K1 ["Dictionary"]
      106 GETTABLEKS                       R3 R4 K2 ["join"]
      108 MOVE                             R4 R2
      109 DUPTABLE                         R5 K30 [{"CanVote"}]
      110 GETUPVAL                         R8 1
      111 GETTABLEKS                       R7 R8 K1 ["Dictionary"]
      113 GETTABLEKS                       R6 R7 K2 ["join"]
      115 MOVE                             R7 R2
      116 NEWTABLE                         R8 1 0
      118 GETUPVAL                         R10 5
      119 GETTABLEKS                       R9 R10 K31 ["Hover"]
      121 DUPTABLE                         R10 K26 [{"BackgroundStyle"}]
      122 GETUPVAL                         R13 1
      123 GETTABLEKS                       R12 R13 K1 ["Dictionary"]
      125 GETTABLEKS                       R11 R12 K2 ["join"]
      127 GETUPVAL                         R12 2
      128 DUPTABLE                         R13 K4 [{"Color"}]
      129 GETUPVAL                         R15 3
      130 GETTABLEKS                       R14 R15 K32 ["ImageButtonHover"]
      132 SETTABLEKS                       R14 R13 K3 ["Color"]
      134 CALL                             R11 2 1
      135 SETTABLEKS                       R11 R10 K6 ["BackgroundStyle"]
      137 SETTABLE                         R10 R8 R9
      138 CALL                             R6 2 1
      139 SETTABLEKS                       R6 R5 K29 ["CanVote"]
      141 CALL                             R3 2 -1
      142 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R4 R0 K2 ["UI"]
       13 GETTABLEKS                       R3 R4 K7 ["Components"]
       15 GETTABLEKS                       R2 R3 K8 ["RoundBox"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K6 [require]
       20 GETTABLEKS                       R5 R0 K2 ["UI"]
       22 GETTABLEKS                       R4 R5 K7 ["Components"]
       24 GETTABLEKS                       R3 R4 K9 ["Image"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K6 [require]
       29 GETTABLEKS                       R4 R0 K10 ["Util"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R6 R0 K4 ["Parent"]
       36 GETTABLEKS                       R5 R6 K11 ["Cryo"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R3 K12 ["deepCopy"]
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R8 R0 K10 ["Util"]
       45 GETTABLEKS                       R7 R8 K13 ["StyleModifier"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R9 R0 K14 ["Style"]
       52 GETTABLEKS                       R8 R9 K15 ["StyleKey"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R11 R0 K2 ["UI"]
       59 GETTABLEKS                       R10 R11 K7 ["Components"]
       61 GETTABLEKS                       R9 R10 K16 ["UIFolderData"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETTABLEKS                       R11 R8 K8 ["RoundBox"]
       68 GETTABLEKS                       R10 R11 K17 ["style"]
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
