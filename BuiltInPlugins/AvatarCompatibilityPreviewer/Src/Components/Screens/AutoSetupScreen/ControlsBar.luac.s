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
       15 DUPTABLE                         R6 K12 [{["name"], ["callback"], ["LayoutOrder"] = 3, ["style"] = "PrimaryBrand", ["enableHorizontalPadding"] = True}]
       16 LOADK                            R9 K13 ["AvatarScreen"]
       17 LOADK                            R10 K14 ["StartAutoSetup"]
       18 NAMECALL                         R7 R1 K15 ["getText"]
       20 CALL                             R7 3 1
       21 SETTABLEKS                       R7 R6 K4 ["name"]
       23 GETTABLEKS                       R7 R0 K16 ["startAutoSetup"]
       25 SETTABLEKS                       R7 R6 K5 ["callback"]
       27 CALL                             R5 1 1
       28 SETTABLEKS                       R5 R4 K2 ["Start"]
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R5 R5 K17 ["createElement"]
       33 GETUPVAL                         R6 4
       34 DUPTABLE                         R7 K19 [{"ZIndex"}]
       35 GETTABLEKS                       R8 R0 K18 ["ZIndex"]
       37 SETTABLEKS                       R8 R7 K18 ["ZIndex"]
       39 DUPTABLE                         R8 K21 [{"Controls"}]
       40 GETUPVAL                         R9 2
       41 GETTABLEKS                       R9 R9 K17 ["createElement"]
       43 GETUPVAL                         R10 4
       44 DUPTABLE                         R11 K33 [{["AnchorPoint"], ["Size"], ["HorizontalAlignment"], ["Layout"], ["Position"], ["Padding"] = 7, ["Spacing"] = 8, ["Style"] = "BorderBox"}]
       45 GETTABLEKS                       R12 R2 K20 ["Controls"]
       47 GETTABLEKS                       R12 R12 K22 ["AnchorPoint"]
       49 SETTABLEKS                       R12 R11 K22 ["AnchorPoint"]
       51 GETIMPORT                        R12 K36 [UDim2.new]
       53 LOADN                            R13 1
       54 LOADN                            R14 0
       55 LOADN                            R15 0
       56 GETTABLEKS                       R16 R2 K20 ["Controls"]
       58 GETTABLEKS                       R16 R16 K37 ["PaneHeight"]
       60 CALL                             R12 4 1
       61 SETTABLEKS                       R12 R11 K23 ["Size"]
       63 GETIMPORT                        R12 K40 [Enum.HorizontalAlignment.Right]
       65 SETTABLEKS                       R12 R11 K24 ["HorizontalAlignment"]
       67 GETIMPORT                        R12 K43 [Enum.FillDirection.Horizontal]
       69 SETTABLEKS                       R12 R11 K25 ["Layout"]
       71 GETTABLEKS                       R12 R2 K20 ["Controls"]
       73 GETTABLEKS                       R12 R12 K26 ["Position"]
       75 SETTABLEKS                       R12 R11 K26 ["Position"]
       77 GETTABLEKS                       R13 R0 K44 ["stateType"]
       79 JUMPIFEQKS                       R13 K45 ["hasSelection"] ; [+5]
       81 GETTABLEKS                       R13 R0 K44 ["stateType"]
       83 JUMPIFNOTEQKS                    R13 K46 ["error"] ; [+3]
       85 MOVE                             R12 R4
       86 JUMP                             ; [+2]
       87 NEWTABLE                         R12 0 0
       89 CALL                             R9 3 1
       90 SETTABLEKS                       R9 R8 K20 ["Controls"]
       92 CALL                             R5 3 -1
       93 RETURN                           R5 -1

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
