PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K9 [{"LayoutOrder", "AnchorPoint", "AutomaticSize", "Size", "Padding", "OnClick", "Style", "Text"}]
        5 GETTABLEKS                       R4 R0 K1 ["LayoutOrder"]
        7 SETTABLEKS                       R4 R3 K1 ["LayoutOrder"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K10 ["Controls"]
       12 GETTABLEKS                       R4 R4 K11 ["ButtonAnchorPoint"]
       14 SETTABLEKS                       R4 R3 K2 ["AnchorPoint"]
       16 GETIMPORT                        R4 K14 [Enum.AutomaticSize.X]
       18 SETTABLEKS                       R4 R3 K3 ["AutomaticSize"]
       20 GETIMPORT                        R4 K17 [UDim2.fromOffset]
       22 LOADN                            R5 0
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R6 R6 K10 ["Controls"]
       26 GETTABLEKS                       R6 R6 K18 ["ButtonHeight"]
       28 CALL                             R4 2 1
       29 SETTABLEKS                       R4 R3 K4 ["Size"]
       31 GETTABLEKS                       R5 R0 K19 ["enableHorizontalPadding"]
       33 JUMPIFNOT                        R5 ; [+16]
       34 DUPTABLE                         R4 K22 [{"Left", "Right"}]
       35 GETUPVAL                         R5 2
       36 GETTABLEKS                       R5 R5 K10 ["Controls"]
       38 GETTABLEKS                       R5 R5 K23 ["ButtonPaddingHorizontal"]
       40 SETTABLEKS                       R5 R4 K20 ["Left"]
       42 GETUPVAL                         R5 2
       43 GETTABLEKS                       R5 R5 K10 ["Controls"]
       45 GETTABLEKS                       R5 R5 K23 ["ButtonPaddingHorizontal"]
       47 SETTABLEKS                       R5 R4 K21 ["Right"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R4
       51 SETTABLEKS                       R4 R3 K5 ["Padding"]
       53 GETTABLEKS                       R4 R0 K24 ["callback"]
       55 SETTABLEKS                       R4 R3 K6 ["OnClick"]
       57 GETTABLEKS                       R4 R0 K25 ["style"]
       59 SETTABLEKS                       R4 R3 K7 ["Style"]
       61 GETTABLEKS                       R4 R0 K26 ["name"]
       63 SETTABLEKS                       R4 R3 K8 ["Text"]
       65 CALL                             R1 2 -1
       66 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["AutoSetupScreen"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R2
       13 DUPTABLE                         R4 K3 [{"Start"}]
       14 MOVE                             R5 R3
       15 DUPTABLE                         R6 K9 [{"name", "callback", "LayoutOrder", "style", "enableHorizontalPadding"}]
       16 LOADK                            R9 K10 ["AvatarScreen"]
       17 LOADK                            R10 K11 ["StartAutoSetup"]
       18 NAMECALL                         R7 R1 K12 ["getText"]
       20 CALL                             R7 3 1
       21 SETTABLEKS                       R7 R6 K4 ["name"]
       23 GETTABLEKS                       R7 R0 K13 ["startAutoSetup"]
       25 SETTABLEKS                       R7 R6 K5 ["callback"]
       27 LOADN                            R7 3
       28 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       30 LOADK                            R7 K14 ["PrimaryBrand"]
       31 SETTABLEKS                       R7 R6 K7 ["style"]
       33 LOADB                            R7 1
       34 SETTABLEKS                       R7 R6 K8 ["enableHorizontalPadding"]
       36 CALL                             R5 1 1
       37 SETTABLEKS                       R5 R4 K2 ["Start"]
       39 GETUPVAL                         R5 2
       40 GETTABLEKS                       R5 R5 K15 ["createElement"]
       42 GETUPVAL                         R6 4
       43 DUPTABLE                         R7 K17 [{"ZIndex"}]
       44 GETTABLEKS                       R8 R0 K16 ["ZIndex"]
       46 SETTABLEKS                       R8 R7 K16 ["ZIndex"]
       48 DUPTABLE                         R8 K19 [{"Controls"}]
       49 GETUPVAL                         R9 2
       50 GETTABLEKS                       R9 R9 K15 ["createElement"]
       52 GETUPVAL                         R10 4
       53 DUPTABLE                         R11 K28 [{"AnchorPoint", "Size", "HorizontalAlignment", "Layout", "Position", "Padding", "Spacing", "Style"}]
       54 GETTABLEKS                       R12 R2 K18 ["Controls"]
       56 GETTABLEKS                       R12 R12 K20 ["AnchorPoint"]
       58 SETTABLEKS                       R12 R11 K20 ["AnchorPoint"]
       60 GETIMPORT                        R12 K31 [UDim2.new]
       62 LOADN                            R13 1
       63 LOADN                            R14 0
       64 LOADN                            R15 0
       65 GETTABLEKS                       R16 R2 K18 ["Controls"]
       67 GETTABLEKS                       R16 R16 K32 ["PaneHeight"]
       69 CALL                             R12 4 1
       70 SETTABLEKS                       R12 R11 K21 ["Size"]
       72 GETIMPORT                        R12 K35 [Enum.HorizontalAlignment.Right]
       74 SETTABLEKS                       R12 R11 K22 ["HorizontalAlignment"]
       76 GETIMPORT                        R12 K38 [Enum.FillDirection.Horizontal]
       78 SETTABLEKS                       R12 R11 K23 ["Layout"]
       80 GETTABLEKS                       R12 R2 K18 ["Controls"]
       82 GETTABLEKS                       R12 R12 K24 ["Position"]
       84 SETTABLEKS                       R12 R11 K24 ["Position"]
       86 LOADN                            R12 7
       87 SETTABLEKS                       R12 R11 K25 ["Padding"]
       89 LOADN                            R12 8
       90 SETTABLEKS                       R12 R11 K26 ["Spacing"]
       92 LOADK                            R12 K39 ["BorderBox"]
       93 SETTABLEKS                       R12 R11 K27 ["Style"]
       95 GETTABLEKS                       R13 R0 K40 ["stateType"]
       97 JUMPIFEQKS                       R13 K41 ["hasSelection"] ; [+5]
       99 GETTABLEKS                       R13 R0 K40 ["stateType"]
      101 JUMPIFNOTEQKS                    R13 K42 ["error"] ; [+3]
      103 MOVE                             R12 R4
      104 JUMP                             ; [+2]
      105 NEWTABLE                         R12 0 0
      107 CALL                             R9 3 1
      108 SETTABLEKS                       R9 R8 K18 ["Controls"]
      110 CALL                             R5 3 -1
      111 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
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
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Resources"]
       27 GETTABLEKS                       R4 R4 K11 ["Theme"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Types"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["UI"]
       39 GETTABLEKS                       R6 R5 K14 ["IconButton"]
       41 GETTABLEKS                       R7 R5 K15 ["Pane"]
       43 GETTABLEKS                       R8 R1 K16 ["ContextServices"]
       45 GETTABLEKS                       R8 R8 K17 ["Localization"]
       47 GETTABLEKS                       R9 R1 K16 ["ContextServices"]
       49 GETTABLEKS                       R9 R9 K18 ["Stylizer"]
       51 DUPCLOSURE                       R10 K19 [PROTO_1]
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R7
       57 RETURN                           R10 1
