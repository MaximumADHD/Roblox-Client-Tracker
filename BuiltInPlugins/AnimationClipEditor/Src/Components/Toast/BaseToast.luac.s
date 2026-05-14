PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["toastTheme"]
        6 GETTABLEKS                       R4 R1 K3 ["AnchorPoint"]
        8 GETTABLEKS                       R5 R1 K4 ["Size"]
       10 GETTABLEKS                       R7 R1 K6 ["Transparency"]
       12 ORK                              R6 R7 K5 [0]
       13 LOADNIL                          R7
       14 GETTABLEKS                       R8 R4 K7 ["X"]
       16 JUMPIFNOTEQKN                    R8 K5 [0] ; [+3]
       18 LOADN                            R7 28
       19 JUMP                             ; [+7]
       20 GETTABLEKS                       R8 R4 K7 ["X"]
       22 JUMPIFNOTEQKN                    R8 K8 [1] ; [+3]
       24 LOADN                            R7 228
       25 JUMP                             ; [+1]
       26 LOADN                            R7 0
       27 LOADNIL                          R8
       28 GETTABLEKS                       R9 R4 K9 ["Y"]
       30 JUMPIFNOTEQKN                    R9 K5 [0] ; [+3]
       32 LOADN                            R8 28
       33 JUMP                             ; [+7]
       34 GETTABLEKS                       R9 R4 K9 ["Y"]
       36 JUMPIFNOTEQKN                    R9 K8 [1] ; [+3]
       38 LOADN                            R8 228
       39 JUMP                             ; [+1]
       40 LOADN                            R8 0
       41 GETTABLEKS                       R10 R3 K10 ["shadowTransparency"]
       43 GETTABLEKS                       R13 R3 K10 ["shadowTransparency"]
       45 SUBRK                            R12 R8 K13 [{"Priority"}]
       46 MUL                              R11 R12 R6
       47 ADD                              R9 R10 R11
       48 GETUPVAL                         R10 0
       49 GETTABLEKS                       R10 R10 K11 ["createElement"]
       51 GETUPVAL                         R11 1
       52 DUPTABLE                         R12 K13 [{"Priority"}]
       53 LOADN                            R13 255
       54 SETTABLEKS                       R13 R12 K12 ["Priority"]
       56 DUPTABLE                         R13 K15 [{"Container"}]
       57 GETUPVAL                         R14 0
       58 GETTABLEKS                       R14 R14 K11 ["createElement"]
       60 LOADK                            R15 K16 ["Frame"]
       61 DUPTABLE                         R16 K19 [{"AnchorPoint", "Size", "Position", "BackgroundTransparency"}]
       62 SETTABLEKS                       R4 R16 K3 ["AnchorPoint"]
       64 SETTABLEKS                       R5 R16 K4 ["Size"]
       66 GETIMPORT                        R17 K22 [UDim2.new]
       68 GETTABLEKS                       R18 R4 K7 ["X"]
       70 MOVE                             R19 R7
       71 GETTABLEKS                       R20 R4 K9 ["Y"]
       73 MOVE                             R21 R8
       74 CALL                             R17 4 1
       75 SETTABLEKS                       R17 R16 K17 ["Position"]
       77 LOADN                            R17 1
       78 SETTABLEKS                       R17 R16 K18 ["BackgroundTransparency"]
       80 DUPTABLE                         R17 K24 [{"Background"}]
       81 GETUPVAL                         R18 0
       82 GETTABLEKS                       R18 R18 K11 ["createElement"]
       84 LOADK                            R19 K16 ["Frame"]
       85 DUPTABLE                         R20 K28 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "ZIndex"}]
       86 GETIMPORT                        R21 K22 [UDim2.new]
       88 LOADN                            R22 1
       89 LOADN                            R23 0
       90 LOADN                            R24 1
       91 LOADN                            R25 0
       92 CALL                             R21 4 1
       93 SETTABLEKS                       R21 R20 K4 ["Size"]
       95 GETTABLEKS                       R21 R2 K29 ["backgroundColor"]
       97 SETTABLEKS                       R21 R20 K25 ["BackgroundColor3"]
       99 SETTABLEKS                       R6 R20 K18 ["BackgroundTransparency"]
      101 LOADN                            R21 0
      102 SETTABLEKS                       R21 R20 K26 ["BorderSizePixel"]
      104 LOADN                            R21 2
      105 SETTABLEKS                       R21 R20 K27 ["ZIndex"]
      107 DUPTABLE                         R21 K31 [{"Shadow"}]
      108 GETUPVAL                         R22 0
      109 GETTABLEKS                       R22 R22 K11 ["createElement"]
      111 GETUPVAL                         R23 2
      112 DUPTABLE                         R24 K35 [{"Transparency", "Color", "Radius", "Offset"}]
      113 SETTABLEKS                       R9 R24 K6 ["Transparency"]
      115 GETTABLEKS                       R25 R3 K36 ["shadowColor"]
      117 SETTABLEKS                       R25 R24 K32 ["Color"]
      119 GETTABLEKS                       R25 R3 K37 ["shadowSize"]
      121 SETTABLEKS                       R25 R24 K33 ["Radius"]
      123 GETIMPORT                        R25 K39 [Vector2.new]
      125 CALL                             R25 0 1
      126 SETTABLEKS                       R25 R24 K34 ["Offset"]
      128 GETUPVAL                         R26 0
      129 GETTABLEKS                       R26 R26 K40 ["Children"]
      131 GETTABLE                         R25 R1 R26
      132 CALL                             R22 3 1
      133 SETTABLEKS                       R22 R21 K30 ["Shadow"]
      135 CALL                             R18 3 1
      136 SETTABLEKS                       R18 R17 K23 ["Background"]
      138 CALL                             R14 3 1
      139 SETTABLEKS                       R14 R13 K14 ["Container"]
      141 CALL                             R10 3 -1
      142 RETURN                           R10 -1

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
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["UI"]
       23 GETTABLEKS                       R3 R3 K10 ["ShowOnTop"]
       25 GETTABLEKS                       R4 R2 K9 ["UI"]
       27 GETTABLEKS                       R4 R4 K11 ["DropShadow"]
       29 GETTABLEKS                       R5 R2 K12 ["ContextServices"]
       31 GETTABLEKS                       R6 R5 K13 ["withContext"]
       33 GETTABLEKS                       R7 R1 K14 ["PureComponent"]
       35 LOADK                            R9 K15 ["BaseToast"]
       36 NAMECALL                         R7 R7 K16 ["extend"]
       38 CALL                             R7 2 1
       39 DUPCLOSURE                       R8 K17 [PROTO_0]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 SETTABLEKS                       R8 R7 K18 ["render"]
       45 MOVE                             R8 R6
       46 DUPTABLE                         R9 K20 [{"Stylizer"}]
       47 GETTABLEKS                       R10 R5 K19 ["Stylizer"]
       49 SETTABLEKS                       R10 R9 K19 ["Stylizer"]
       51 CALL                             R8 1 1
       52 MOVE                             R9 R7
       53 CALL                             R8 1 1
       54 MOVE                             R7 R8
       55 RETURN                           R7 1
