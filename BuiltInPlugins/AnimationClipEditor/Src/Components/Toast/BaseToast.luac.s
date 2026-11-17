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
       24 LOADN                            R7 -28
       25 JUMP                             ; [+1]
       26 LOADN                            R7 0
       27 LOADNIL                          R8
       28 GETTABLEKS                       R9 R4 K9 ["Y"]
       30 JUMPIFNOTEQKN                    R9 K5 [0] ; [+3]
       32 LOADN                            R8 28
       33 JUMP                             ; [+7]
       34 GETTABLEKS                       R9 R4 K9 ["Y"]
       36 JUMPIFNOTEQKN                    R9 K8 [1] ; [+3]
       38 LOADN                            R8 -28
       39 JUMP                             ; [+1]
       40 LOADN                            R8 0
       41 GETTABLEKS                       R10 R3 K10 ["shadowTransparency"]
       43 GETTABLEKS                       R13 R3 K10 ["shadowTransparency"]
       45 SUBRK                            R12 K8 [1] R13
       46 MUL                              R11 R12 R6
       47 ADD                              R9 R10 R11
       48 GETUPVAL                         R10 0
       49 GETTABLEKS                       R10 R10 K11 ["createElement"]
       51 GETUPVAL                         R11 1
       52 DUPTABLE                         R12 K14 [{["Priority"] = -1}]
       53 DUPTABLE                         R13 K16 [{"Container"}]
       54 GETUPVAL                         R14 0
       55 GETTABLEKS                       R14 R14 K11 ["createElement"]
       57 LOADK                            R15 K17 ["Frame"]
       58 DUPTABLE                         R16 K20 [{["AnchorPoint"], ["Size"], ["Position"], ["BackgroundTransparency"] = 1}]
       59 SETTABLEKS                       R4 R16 K3 ["AnchorPoint"]
       61 SETTABLEKS                       R5 R16 K4 ["Size"]
       63 GETIMPORT                        R17 K23 [UDim2.new]
       65 GETTABLEKS                       R18 R4 K7 ["X"]
       67 MOVE                             R19 R7
       68 GETTABLEKS                       R20 R4 K9 ["Y"]
       70 MOVE                             R21 R8
       71 CALL                             R17 4 1
       72 SETTABLEKS                       R17 R16 K18 ["Position"]
       74 DUPTABLE                         R17 K25 [{"Background"}]
       75 GETUPVAL                         R18 0
       76 GETTABLEKS                       R18 R18 K11 ["createElement"]
       78 LOADK                            R19 K17 ["Frame"]
       79 DUPTABLE                         R20 K30 [{["Size"], ["BackgroundColor3"], ["BackgroundTransparency"], ["BorderSizePixel"] = 0, ["ZIndex"] = 2}]
       80 GETIMPORT                        R21 K23 [UDim2.new]
       82 LOADN                            R22 1
       83 LOADN                            R23 0
       84 LOADN                            R24 1
       85 LOADN                            R25 0
       86 CALL                             R21 4 1
       87 SETTABLEKS                       R21 R20 K4 ["Size"]
       89 GETTABLEKS                       R21 R2 K31 ["backgroundColor"]
       91 SETTABLEKS                       R21 R20 K26 ["BackgroundColor3"]
       93 SETTABLEKS                       R6 R20 K19 ["BackgroundTransparency"]
       95 DUPTABLE                         R21 K33 [{"Shadow"}]
       96 GETUPVAL                         R22 0
       97 GETTABLEKS                       R22 R22 K11 ["createElement"]
       99 GETUPVAL                         R23 2
      100 DUPTABLE                         R24 K37 [{"Transparency", "Color", "Radius", "Offset"}]
      101 SETTABLEKS                       R9 R24 K6 ["Transparency"]
      103 GETTABLEKS                       R25 R3 K38 ["shadowColor"]
      105 SETTABLEKS                       R25 R24 K34 ["Color"]
      107 GETTABLEKS                       R25 R3 K39 ["shadowSize"]
      109 SETTABLEKS                       R25 R24 K35 ["Radius"]
      111 GETIMPORT                        R25 K41 [Vector2.new]
      113 CALL                             R25 0 1
      114 SETTABLEKS                       R25 R24 K36 ["Offset"]
      116 GETUPVAL                         R26 0
      117 GETTABLEKS                       R26 R26 K42 ["Children"]
      119 GETTABLE                         R25 R1 R26
      120 CALL                             R22 3 1
      121 SETTABLEKS                       R22 R21 K32 ["Shadow"]
      123 CALL                             R18 3 1
      124 SETTABLEKS                       R18 R17 K24 ["Background"]
      126 CALL                             R14 3 1
      127 SETTABLEKS                       R14 R13 K15 ["Container"]
      129 CALL                             R10 3 -1
      130 RETURN                           R10 -1

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
