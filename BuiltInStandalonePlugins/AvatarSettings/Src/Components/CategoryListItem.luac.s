PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R3 R0 K0 ["expanded"]
        4 JUMPIFNOT                        R3 ; [+4]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["EXPANDED_CATEGORYLIST_ITEM_SIZE"]
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["COLLAPSED_CATEGORYLIST_ITEM_SIZE"]
       12 GETUPVAL                         R3 2
       13 GETUPVAL                         R4 3
       14 NEWTABLE                         R5 8 0
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R6 R6 K3 ["Tag"]
       19 LOADK                            R7 K4 ["Component-CategoryListItem"]
       20 SETTABLE                         R7 R5 R6
       21 SETTABLEKS                       R2 R5 K5 ["Size"]
       23 GETTABLEKS                       R6 R0 K6 ["position"]
       25 SETTABLEKS                       R6 R5 K7 ["Position"]
       27 GETTABLEKS                       R6 R0 K8 ["anchorPoint"]
       29 SETTABLEKS                       R6 R5 K9 ["AnchorPoint"]
       31 GETTABLEKS                       R6 R0 K10 ["layoutOrder"]
       33 SETTABLEKS                       R6 R5 K11 ["LayoutOrder"]
       35 DUPTABLE                         R6 K14 [{"TextButton", "IconContainer"}]
       36 GETUPVAL                         R7 2
       37 LOADK                            R8 K12 ["TextButton"]
       38 NEWTABLE                         R9 8 0
       40 GETUPVAL                         R10 4
       41 GETTABLEKS                       R10 R10 K3 ["Tag"]
       43 GETUPVAL                         R11 5
       44 GETTABLEKS                       R11 R11 K15 ["Styling"]
       46 GETTABLEKS                       R11 R11 K16 ["joinTags"]
       48 GETTABLEKS                       R13 R0 K17 ["selected"]
       50 JUMPIFNOT                        R13 ; [+2]
       51 LOADK                            R12 K18 ["Selected"]
       52 JUMP                             ; [+1]
       53 LOADK                            R12 K19 ["Unselected"]
       54 CALL                             R11 1 1
       55 SETTABLE                         R11 R9 R10
       56 SETTABLEKS                       R2 R9 K5 ["Size"]
       58 GETTABLEKS                       R11 R0 K0 ["expanded"]
       60 JUMPIFNOT                        R11 ; [+3]
       61 GETTABLEKS                       R10 R0 K20 ["name"]
       63 JUMPIF                           R10 ; [+1]
       64 LOADK                            R10 K21 [""]
       65 SETTABLEKS                       R10 R9 K22 ["Text"]
       67 MOVE                             R10 R1
       68 CALL                             R10 0 1
       69 SETTABLEKS                       R10 R9 K23 ["ZIndex"]
       71 GETUPVAL                         R10 4
       72 GETTABLEKS                       R10 R10 K24 ["Event"]
       74 GETTABLEKS                       R10 R10 K25 ["Activated"]
       76 GETTABLEKS                       R11 R0 K26 ["onClick"]
       78 SETTABLE                         R11 R9 R10
       79 DUPTABLE                         R10 K28 [{"UIPadding"}]
       80 GETTABLEKS                       R12 R0 K0 ["expanded"]
       82 JUMPIFNOT                        R12 ; [+33]
       83 GETUPVAL                         R11 2
       84 LOADK                            R12 K27 ["UIPadding"]
       85 DUPTABLE                         R13 K33 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       86 GETIMPORT                        R14 K36 [UDim.new]
       88 LOADN                            R15 0
       89 LOADN                            R16 40
       90 CALL                             R14 2 1
       91 SETTABLEKS                       R14 R13 K29 ["PaddingLeft"]
       93 GETIMPORT                        R14 K36 [UDim.new]
       95 LOADN                            R15 0
       96 LOADN                            R16 10
       97 CALL                             R14 2 1
       98 SETTABLEKS                       R14 R13 K30 ["PaddingRight"]
      100 GETIMPORT                        R14 K36 [UDim.new]
      102 LOADN                            R15 0
      103 LOADN                            R16 6
      104 CALL                             R14 2 1
      105 SETTABLEKS                       R14 R13 K31 ["PaddingTop"]
      107 GETIMPORT                        R14 K36 [UDim.new]
      109 LOADN                            R15 0
      110 LOADN                            R16 6
      111 CALL                             R14 2 1
      112 SETTABLEKS                       R14 R13 K32 ["PaddingBottom"]
      114 CALL                             R11 2 1
      115 JUMPIF                           R11 ; [+1]
      116 LOADNIL                          R11
      117 SETTABLEKS                       R11 R10 K27 ["UIPadding"]
      119 CALL                             R7 3 1
      120 SETTABLEKS                       R7 R6 K12 ["TextButton"]
      122 GETUPVAL                         R7 2
      123 GETUPVAL                         R8 3
      124 NEWTABLE                         R9 4 0
      126 GETUPVAL                         R10 4
      127 GETTABLEKS                       R10 R10 K3 ["Tag"]
      129 LOADK                            R11 K37 ["X-Column X-Middle X-Center"]
      130 SETTABLE                         R11 R9 R10
      131 GETUPVAL                         R10 1
      132 GETTABLEKS                       R10 R10 K2 ["COLLAPSED_CATEGORYLIST_ITEM_SIZE"]
      134 SETTABLEKS                       R10 R9 K5 ["Size"]
      136 LOADN                            R10 1
      137 SETTABLEKS                       R10 R9 K38 ["BackgroundTransparency"]
      139 MOVE                             R10 R1
      140 CALL                             R10 0 1
      141 SETTABLEKS                       R10 R9 K23 ["ZIndex"]
      143 DUPTABLE                         R10 K40 [{"ButtonIcon"}]
      144 GETUPVAL                         R11 2
      145 LOADK                            R12 K41 ["ImageLabel"]
      146 NEWTABLE                         R13 4 0
      148 GETUPVAL                         R14 4
      149 GETTABLEKS                       R14 R14 K3 ["Tag"]
      151 GETTABLEKS                       R15 R0 K42 ["imageTag"]
      153 SETTABLE                         R15 R13 R14
      154 GETIMPORT                        R14 K45 [UDim2.fromOffset]
      156 GETUPVAL                         R15 1
      157 GETTABLEKS                       R15 R15 K46 ["STANDARD_IMAGE_SIZE"]
      159 GETUPVAL                         R16 1
      160 GETTABLEKS                       R16 R16 K46 ["STANDARD_IMAGE_SIZE"]
      162 CALL                             R14 2 1
      163 SETTABLEKS                       R14 R13 K5 ["Size"]
      165 LOADN                            R14 1
      166 SETTABLEKS                       R14 R13 K38 ["BackgroundTransparency"]
      168 MOVE                             R14 R1
      169 CALL                             R14 0 1
      170 SETTABLEKS                       R14 R13 K23 ["ZIndex"]
      172 CALL                             R11 2 1
      173 SETTABLEKS                       R11 R10 K39 ["ButtonIcon"]
      175 CALL                             R7 3 1
      176 SETTABLEKS                       R7 R6 K13 ["IconContainer"]
      178 CALL                             R3 3 -1
      179 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K13 ["createNextOrder"]
       39 GETTABLEKS                       R6 R2 K14 ["UI"]
       41 GETTABLEKS                       R7 R6 K15 ["Pane"]
       43 GETTABLEKS                       R8 R3 K16 ["createElement"]
       45 DUPCLOSURE                       R9 K17 [PROTO_0]
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R2
       52 RETURN                           R9 1
