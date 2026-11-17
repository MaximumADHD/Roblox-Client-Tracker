PROTO_0:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["Frame"]
        2 NEWTABLE                         R6 2 0
        4 GETUPVAL                         R7 1
        5 GETTABLEKS                       R7 R7 K1 ["Tag"]
        7 LOADK                            R8 K2 ["DropdownItem"]
        8 SETTABLE                         R8 R6 R7
        9 GETUPVAL                         R7 2
       10 CALL                             R7 0 1
       11 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
       13 DUPTABLE                         R7 K6 [{"ItemContent", "Tooltip"}]
       14 GETUPVAL                         R8 0
       15 GETUPVAL                         R9 3
       16 NEWTABLE                         R10 4 0
       18 GETUPVAL                         R11 1
       19 GETTABLEKS                       R11 R11 K1 ["Tag"]
       21 LOADK                            R12 K7 ["DropdownItem X-Column X-Middle X-Left"]
       22 SETTABLE                         R12 R10 R11
       23 LOADN                            R11 1
       24 SETTABLEKS                       R11 R10 K8 ["BackgroundTransparency"]
       26 SETTABLEKS                       R2 R10 K9 ["OnClick"]
       28 DUPTABLE                         R11 K13 [{"UIPadding", "Label", "Description"}]
       29 GETUPVAL                         R12 0
       30 LOADK                            R13 K10 ["UIPadding"]
       31 DUPTABLE                         R14 K16 [{"PaddingLeft", "PaddingRight"}]
       32 GETIMPORT                        R15 K19 [UDim.new]
       34 LOADN                            R16 0
       35 LOADN                            R17 8
       36 CALL                             R15 2 1
       37 SETTABLEKS                       R15 R14 K14 ["PaddingLeft"]
       39 GETIMPORT                        R15 K19 [UDim.new]
       41 LOADN                            R16 0
       42 LOADN                            R17 8
       43 CALL                             R15 2 1
       44 SETTABLEKS                       R15 R14 K15 ["PaddingRight"]
       46 CALL                             R12 2 1
       47 SETTABLEKS                       R12 R11 K10 ["UIPadding"]
       49 GETUPVAL                         R12 0
       50 LOADK                            R13 K20 ["TextLabel"]
       51 NEWTABLE                         R14 8 0
       53 GETUPVAL                         R15 1
       54 GETTABLEKS                       R15 R15 K1 ["Tag"]
       56 GETUPVAL                         R16 4
       57 LOADK                            R17 K21 ["Component-TextLabel"]
       58 GETUPVAL                         R19 5
       59 CALL                             R19 0 1
       60 JUMPIFNOT                        R19 ; [+2]
       61 LOADK                            R18 K22 ["X-Fit"]
       62 JUMP                             ; [+1]
       63 LOADNIL                          R18
       64 GETUPVAL                         R20 5
       65 CALL                             R20 0 1
       66 JUMPIFNOT                        R20 ; [+2]
       67 LOADK                            R19 K23 ["X-DefaultSize"]
       68 JUMP                             ; [+1]
       69 LOADNIL                          R19
       70 CALL                             R16 3 1
       71 SETTABLE                         R16 R14 R15
       72 GETIMPORT                        R15 K25 [UDim2.new]
       74 CALL                             R15 0 1
       75 SETTABLEKS                       R15 R14 K26 ["Size"]
       77 GETIMPORT                        R15 K30 [Enum.AutomaticSize.XY]
       79 SETTABLEKS                       R15 R14 K28 ["AutomaticSize"]
       81 GETTABLEKS                       R15 R0 K11 ["Label"]
       83 SETTABLEKS                       R15 R14 K31 ["Text"]
       85 LOADN                            R15 18
       86 SETTABLEKS                       R15 R14 K32 ["TextSize"]
       88 GETIMPORT                        R15 K35 [Enum.TextXAlignment.Left]
       90 SETTABLEKS                       R15 R14 K33 ["TextXAlignment"]
       92 LOADN                            R15 0
       93 SETTABLEKS                       R15 R14 K3 ["LayoutOrder"]
       95 CALL                             R12 2 1
       96 SETTABLEKS                       R12 R11 K11 ["Label"]
       98 GETTABLEKS                       R12 R0 K12 ["Description"]
      100 JUMPIFNOT                        R12 ; [+48]
      101 GETUPVAL                         R12 0
      102 LOADK                            R13 K20 ["TextLabel"]
      103 NEWTABLE                         R14 8 0
      105 GETUPVAL                         R15 1
      106 GETTABLEKS                       R15 R15 K1 ["Tag"]
      108 GETUPVAL                         R16 4
      109 LOADK                            R17 K21 ["Component-TextLabel"]
      110 LOADK                            R18 K36 ["SubText"]
      111 GETUPVAL                         R20 5
      112 CALL                             R20 0 1
      113 JUMPIFNOT                        R20 ; [+2]
      114 LOADK                            R19 K22 ["X-Fit"]
      115 JUMP                             ; [+1]
      116 LOADNIL                          R19
      117 GETUPVAL                         R21 5
      118 CALL                             R21 0 1
      119 JUMPIFNOT                        R21 ; [+2]
      120 LOADK                            R20 K23 ["X-DefaultSize"]
      121 JUMP                             ; [+1]
      122 LOADNIL                          R20
      123 CALL                             R16 4 1
      124 SETTABLE                         R16 R14 R15
      125 GETIMPORT                        R15 K25 [UDim2.new]
      127 CALL                             R15 0 1
      128 SETTABLEKS                       R15 R14 K26 ["Size"]
      130 GETIMPORT                        R15 K30 [Enum.AutomaticSize.XY]
      132 SETTABLEKS                       R15 R14 K28 ["AutomaticSize"]
      134 GETTABLEKS                       R15 R0 K12 ["Description"]
      136 SETTABLEKS                       R15 R14 K31 ["Text"]
      138 GETIMPORT                        R15 K35 [Enum.TextXAlignment.Left]
      140 SETTABLEKS                       R15 R14 K33 ["TextXAlignment"]
      142 LOADB                            R15 1
      143 SETTABLEKS                       R15 R14 K37 ["TextWrapped"]
      145 LOADN                            R15 1
      146 SETTABLEKS                       R15 R14 K3 ["LayoutOrder"]
      148 CALL                             R12 2 1
      149 SETTABLEKS                       R12 R11 K12 ["Description"]
      151 CALL                             R8 3 1
      152 SETTABLEKS                       R8 R7 K4 ["ItemContent"]
      154 GETTABLEKS                       R8 R0 K38 ["TooltipProps"]
      156 JUMPIFNOT                        R8 ; [+5]
      157 GETUPVAL                         R8 0
      158 GETUPVAL                         R9 6
      159 GETTABLEKS                       R10 R0 K38 ["TooltipProps"]
      161 CALL                             R8 2 1
      162 SETTABLEKS                       R8 R7 K5 ["Tooltip"]
      164 CALL                             R4 3 -1
      165 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Flags"]
       34 GETTABLEKS                       R5 R5 K12 ["getFFlagFeatureMigrateStylingV2"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["UI"]
       39 GETTABLEKS                       R6 R5 K14 ["Pane"]
       41 GETTABLEKS                       R7 R5 K15 ["Tooltip"]
       43 GETTABLEKS                       R8 R3 K16 ["createNextOrder"]
       45 GETTABLEKS                       R9 R2 K17 ["createElement"]
       47 GETTABLEKS                       R10 R1 K18 ["Styling"]
       49 GETTABLEKS                       R10 R10 K19 ["joinTags"]
       51 MOVE                             R11 R8
       52 CALL                             R11 0 1
       53 DUPCLOSURE                       R12 K20 [PROTO_0]
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R11
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R10
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R7
       61 RETURN                           R12 1
