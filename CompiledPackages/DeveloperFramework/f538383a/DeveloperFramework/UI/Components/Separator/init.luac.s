PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+5]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Tag"]
        7 GETTABLE                         R2 R1 R3
        8 JUMP                             ; [+1]
        9 LOADNIL                          R2
       10 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
       12 GETTABLEKS                       R4 R1 K3 ["Position"]
       14 GETTABLEKS                       R5 R1 K4 ["ZIndex"]
       16 GETTABLEKS                       R6 R1 K5 ["DominantAxis"]
       18 JUMPIF                           R6 ; [+2]
       19 GETIMPORT                        R6 K8 [Enum.DominantAxis.Width]
       21 GETTABLEKS                       R7 R1 K9 ["Stylizer"]
       23 GETTABLEKS                       R8 R7 K10 ["Color"]
       25 GETTABLEKS                       R9 R7 K11 ["StretchMargin"]
       27 GETTABLEKS                       R10 R7 K12 ["Weight"]
       29 GETUPVAL                         R12 2
       30 GETTABLEKS                       R12 R12 K13 ["numberMin"]
       32 LOADN                            R13 0
       33 CALL                             R12 1 1
       34 MOVE                             R13 R10
       35 CALL                             R12 1 1
       36 FASTCALL2K                       ASSERT R12 K14 ; [+4]
       38 LOADK                            R13 K14 ["Weight style must be a number >= 0"]
       39 GETIMPORT                        R11 K16 [assert]
       41 CALL                             R11 2 0
       42 GETUPVAL                         R12 2
       43 GETTABLEKS                       R12 R12 K13 ["numberMin"]
       45 LOADN                            R13 0
       46 CALL                             R12 1 1
       47 MOVE                             R13 R9
       48 CALL                             R12 1 1
       49 FASTCALL2K                       ASSERT R12 K17 ; [+4]
       51 LOADK                            R13 K17 ["StretchMargin style must be a number >= 0"]
       52 GETIMPORT                        R11 K16 [assert]
       54 CALL                             R11 2 0
       55 LOADNIL                          R11
       56 LOADNIL                          R12
       57 GETIMPORT                        R13 K8 [Enum.DominantAxis.Width]
       59 JUMPIFNOTEQ                      R6 R13 ; [+12]
       61 GETIMPORT                        R13 K20 [UDim2.new]
       63 LOADN                            R14 1
       64 MINUS                            R16 R9
       65 MULK                             R15 R16 K21 [2]
       66 LOADN                            R16 0
       67 MOVE                             R17 R10
       68 CALL                             R13 4 1
       69 MOVE                             R12 R13
       70 LOADK                            R11 K22 ["X-FitY"]
       71 JUMP                             ; [+10]
       72 GETIMPORT                        R13 K20 [UDim2.new]
       74 LOADN                            R14 0
       75 MOVE                             R15 R10
       76 LOADN                            R16 1
       77 MINUS                            R18 R9
       78 MULK                             R17 R18 K21 [2]
       79 CALL                             R13 4 1
       80 MOVE                             R12 R13
       81 LOADK                            R11 K23 ["X-FitX"]
       82 GETUPVAL                         R13 3
       83 GETTABLEKS                       R13 R13 K24 ["createElement"]
       85 GETUPVAL                         R14 4
       86 GETUPVAL                         R15 5
       87 GETTABLEKS                       R15 R15 K25 ["join"]
       89 DUPTABLE                         R16 K28 [{"Size", "Position", "AnchorPoint", "LayoutOrder", "ZIndex"}]
       90 SETTABLEKS                       R12 R16 K26 ["Size"]
       92 SETTABLEKS                       R4 R16 K3 ["Position"]
       94 GETIMPORT                        R17 K30 [Vector2.new]
       96 LOADK                            R18 K31 [0.5]
       97 LOADK                            R19 K31 [0.5]
       98 CALL                             R17 2 1
       99 SETTABLEKS                       R17 R16 K27 ["AnchorPoint"]
      101 SETTABLEKS                       R3 R16 K2 ["LayoutOrder"]
      103 SETTABLEKS                       R5 R16 K4 ["ZIndex"]
      105 GETUPVAL                         R18 0
      106 JUMPIFNOT                        R18 ; [+11]
      107 NEWTABLE                         R17 1 0
      109 GETUPVAL                         R18 1
      110 GETTABLEKS                       R18 R18 K1 ["Tag"]
      112 GETUPVAL                         R19 6
      113 MOVE                             R20 R11
      114 MOVE                             R21 R2
      115 CALL                             R19 2 1
      116 SETTABLE                         R19 R17 R18
      117 JUMP                             ; [+2]
      118 NEWTABLE                         R17 0 0
      120 CALL                             R15 2 1
      121 DUPTABLE                         R16 K33 [{"Separator"}]
      122 GETUPVAL                         R17 3
      123 GETTABLEKS                       R17 R17 K24 ["createElement"]
      125 LOADK                            R18 K34 ["Frame"]
      126 DUPTABLE                         R19 K37 [{"Size", "Position", "AnchorPoint", "BackgroundColor3", "BorderSizePixel", "ZIndex"}]
      127 GETIMPORT                        R20 K39 [UDim2.fromScale]
      129 LOADN                            R21 1
      130 LOADN                            R22 1
      131 CALL                             R20 2 1
      132 SETTABLEKS                       R20 R19 K26 ["Size"]
      134 GETIMPORT                        R20 K39 [UDim2.fromScale]
      136 LOADK                            R21 K31 [0.5]
      137 LOADK                            R22 K31 [0.5]
      138 CALL                             R20 2 1
      139 SETTABLEKS                       R20 R19 K3 ["Position"]
      141 GETIMPORT                        R20 K30 [Vector2.new]
      143 LOADK                            R21 K31 [0.5]
      144 LOADK                            R22 K31 [0.5]
      145 CALL                             R20 2 1
      146 SETTABLEKS                       R20 R19 K27 ["AnchorPoint"]
      148 SETTABLEKS                       R8 R19 K35 ["BackgroundColor3"]
      150 LOADN                            R20 0
      151 SETTABLEKS                       R20 R19 K36 ["BorderSizePixel"]
      153 SETTABLEKS                       R5 R19 K4 ["ZIndex"]
      155 CALL                             R17 2 1
      156 SETTABLEKS                       R17 R16 K32 ["Separator"]
      158 CALL                             R13 3 -1
      159 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Dash"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K2 ["UI"]
       27 GETTABLEKS                       R4 R4 K9 ["ContextServices"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K10 ["withContext"]
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K11 ["Util"]
       36 GETTABLEKS                       R6 R6 K12 ["Typecheck"]
       38 GETTABLEKS                       R6 R6 K13 ["t"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R7 R0 K14 ["Styling"]
       45 GETTABLEKS                       R7 R7 K15 ["joinTags"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R8 R0 K11 ["Util"]
       52 GETTABLEKS                       R8 R8 K16 ["React"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R9 R0 K14 ["Styling"]
       59 GETTABLEKS                       R9 R9 K17 ["supportsStyleSheets"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K6 [require]
       64 GETTABLEKS                       R10 R0 K11 ["Util"]
       66 GETTABLEKS                       R10 R10 K12 ["Typecheck"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K6 [require]
       71 GETTABLEKS                       R11 R0 K2 ["UI"]
       73 GETTABLEKS                       R11 R11 K18 ["Components"]
       75 GETTABLEKS                       R11 R11 K19 ["Pane"]
       77 CALL                             R10 1 1
       78 GETTABLEKS                       R11 R2 K20 ["PureComponent"]
       80 LOADK                            R13 K21 ["Separator"]
       81 NAMECALL                         R11 R11 K22 ["extend"]
       83 CALL                             R11 2 1
       84 GETTABLEKS                       R12 R9 K23 ["wrap"]
       86 MOVE                             R13 R11
       87 GETIMPORT                        R14 K1 [script]
       89 CALL                             R12 2 0
       90 DUPCLOSURE                       R12 K24 [PROTO_0]
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R6
       98 SETTABLEKS                       R12 R11 K25 ["render"]
      100 MOVE                             R12 R4
      101 DUPTABLE                         R13 K27 [{"Stylizer"}]
      102 GETTABLEKS                       R14 R3 K26 ["Stylizer"]
      104 SETTABLEKS                       R14 R13 K26 ["Stylizer"]
      106 CALL                             R12 1 1
      107 MOVE                             R13 R11
      108 CALL                             R12 1 1
      109 MOVE                             R11 R12
      110 RETURN                           R11 1
