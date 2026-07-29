PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["DarkMode"]
        2 GETTABLEKS                       R3 R3 K1 ["Content"]
        4 GETTABLEKS                       R3 R3 K2 ["Emphasis"]
        6 GETTABLEKS                       R4 R0 K3 ["Typography"]
        8 GETTABLEKS                       R4 R4 K4 ["LabelSmall"]
       10 GETUPVAL                         R5 0
       11 CALL                             R5 0 1
       12 GETUPVAL                         R6 0
       13 CALL                             R6 0 1
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K5 ["createElement"]
       17 GETUPVAL                         R8 2
       18 DUPTABLE                         R9 K8 [{["tag"] = "row align-x-center align-y-center gap-xxlarge size-full-0 auto-y"}]
       19 DUPTABLE                         R10 K11 [{"Terms", "Privacy"}]
       20 GETUPVAL                         R11 1
       21 GETTABLEKS                       R11 R11 K5 ["createElement"]
       23 GETUPVAL                         R12 3
       24 DUPTABLE                         R13 K25 [{["tag"] = "auto-xy", ["Text"], ["RichText"] = True, ["textStyle"], ["fontStyle"], ["onActivated"], ["onStateChanged"], ["stateLayer"], ["testId"] = "--loginpage-terms-link", ["LayoutOrder"] = 1}]
       25 LOADK                            R15 K26 ["<u>"]
       26 LOADK                            R20 K27 ["Button"]
       27 LOADK                            R21 K9 ["Terms"]
       28 NAMECALL                         R18 R1 K28 ["getText"]
       30 CALL                             R18 3 1
       31 MOVE                             R16 R18
       32 LOADK                            R17 K29 ["</u>"]
       33 CONCAT                           R14 R15 R17
       34 SETTABLEKS                       R14 R13 K13 ["Text"]
       36 SETTABLEKS                       R3 R13 K16 ["textStyle"]
       38 SETTABLEKS                       R4 R13 K17 ["fontStyle"]
       40 NEWCLOSURE                       R14 P0
       41 CAPTURE                          VAL R2
       42 CAPTURE                          UPVAL U4
       43 SETTABLEKS                       R14 R13 K18 ["onActivated"]
       45 GETTABLEKS                       R14 R5 K19 ["onStateChanged"]
       47 SETTABLEKS                       R14 R13 K19 ["onStateChanged"]
       49 GETTABLEKS                       R14 R5 K20 ["stateLayer"]
       51 SETTABLEKS                       R14 R13 K20 ["stateLayer"]
       53 CALL                             R11 2 1
       54 SETTABLEKS                       R11 R10 K9 ["Terms"]
       56 GETUPVAL                         R11 1
       57 GETTABLEKS                       R11 R11 K5 ["createElement"]
       59 GETUPVAL                         R12 3
       60 DUPTABLE                         R13 K32 [{["tag"] = "auto-xy", ["Text"], ["RichText"] = True, ["textStyle"], ["fontStyle"], ["onActivated"], ["onStateChanged"], ["stateLayer"], ["testId"] = "--loginpage-privacy-link", ["LayoutOrder"] = 2}]
       61 LOADK                            R15 K26 ["<u>"]
       62 LOADK                            R20 K27 ["Button"]
       63 LOADK                            R21 K10 ["Privacy"]
       64 NAMECALL                         R18 R1 K28 ["getText"]
       66 CALL                             R18 3 1
       67 MOVE                             R16 R18
       68 LOADK                            R17 K29 ["</u>"]
       69 CONCAT                           R14 R15 R17
       70 SETTABLEKS                       R14 R13 K13 ["Text"]
       72 SETTABLEKS                       R3 R13 K16 ["textStyle"]
       74 SETTABLEKS                       R4 R13 K17 ["fontStyle"]
       76 NEWCLOSURE                       R14 P1
       77 CAPTURE                          VAL R2
       78 CAPTURE                          UPVAL U5
       79 SETTABLEKS                       R14 R13 K18 ["onActivated"]
       81 GETTABLEKS                       R14 R6 K19 ["onStateChanged"]
       83 SETTABLEKS                       R14 R13 K19 ["onStateChanged"]
       85 GETTABLEKS                       R14 R6 K20 ["stateLayer"]
       87 SETTABLEKS                       R14 R13 K20 ["stateLayer"]
       89 CALL                             R11 2 1
       90 SETTABLEKS                       R11 R10 K10 ["Privacy"]
       92 CALL                             R7 3 -1
       93 RETURN                           R7 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["Context"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R1 K2 ["Margin"]
       11 GETTABLEKS                       R3 R3 K3 ["Large"]
       13 GETTABLEKS                       R4 R0 K4 ["BrowserService"]
       15 JUMPIF                           R4 ; [+1]
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R5 R0 K5 ["layout"]
       19 JUMPIFNOTEQKS                    R5 K6 ["webPanelBottom"] ; [+45]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K7 ["createElement"]
       24 GETUPVAL                         R6 4
       25 DUPTABLE                         R7 K12 [{"Size", "AutomaticSize", "AnchorPoint", "Position"}]
       26 GETIMPORT                        R8 K15 [UDim2.new]
       28 LOADN                            R9 1
       29 LOADN                            R10 0
       30 LOADN                            R11 0
       31 LOADN                            R12 0
       32 CALL                             R8 4 1
       33 SETTABLEKS                       R8 R7 K8 ["Size"]
       35 GETIMPORT                        R8 K18 [Enum.AutomaticSize.Y]
       37 SETTABLEKS                       R8 R7 K9 ["AutomaticSize"]
       39 GETIMPORT                        R8 K20 [Vector2.new]
       41 LOADN                            R9 0
       42 LOADN                            R10 1
       43 CALL                             R8 2 1
       44 SETTABLEKS                       R8 R7 K10 ["AnchorPoint"]
       46 GETIMPORT                        R8 K15 [UDim2.new]
       48 LOADN                            R9 0
       49 LOADN                            R10 0
       50 LOADN                            R11 1
       51 MINUS                            R12 R3
       52 CALL                             R8 4 1
       53 SETTABLEKS                       R8 R7 K11 ["Position"]
       55 DUPTABLE                         R8 K22 [{"Row"}]
       56 GETUPVAL                         R9 5
       57 MOVE                             R10 R1
       58 MOVE                             R11 R2
       59 MOVE                             R12 R4
       60 CALL                             R9 3 1
       61 SETTABLEKS                       R9 R8 K21 ["Row"]
       63 CALL                             R5 3 -1
       64 RETURN                           R5 -1
       65 GETUPVAL                         R5 1
       66 GETTABLEKS                       R5 R5 K7 ["createElement"]
       68 GETUPVAL                         R6 4
       69 DUPTABLE                         R7 K25 [{["tag"] = "size-full-0 auto-y"}]
       70 DUPTABLE                         R8 K22 [{"Row"}]
       71 GETUPVAL                         R9 5
       72 MOVE                             R10 R1
       73 MOVE                             R11 R2
       74 MOVE                             R12 R4
       75 CALL                             R9 3 1
       76 SETTABLEKS                       R9 R8 K21 ["Row"]
       78 CALL                             R5 3 -1
       79 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LoginPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Hooks"]
       23 GETTABLEKS                       R3 R3 K10 ["useTokens"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Packages"]
       29 GETTABLEKS                       R5 R5 K11 ["StudioFoundation"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K12 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K13 ["Localization"]
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K14 ["Src"]
       40 GETTABLEKS                       R7 R7 K9 ["Hooks"]
       42 GETTABLEKS                       R7 R7 K15 ["useLinkInteractions"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K14 ["Src"]
       49 GETTABLEKS                       R8 R8 K16 ["SharedFlags"]
       51 GETTABLEKS                       R8 R8 K17 ["getFStringLoginPageTermsOfUseLink"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K14 ["Src"]
       58 GETTABLEKS                       R9 R9 K16 ["SharedFlags"]
       60 GETTABLEKS                       R9 R9 K18 ["getFStringLoginPagePrivacyPolicyLink"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K20 [game]
       65 LOADK                            R11 K21 ["BrowserService"]
       66 NAMECALL                         R9 R9 K22 ["GetService"]
       68 CALL                             R9 2 1
       69 GETTABLEKS                       R10 R2 K23 ["View"]
       71 GETTABLEKS                       R11 R2 K24 ["Text"]
       73 DUPCLOSURE                       R12 K25 [PROTO_2]
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R8
       80 DUPCLOSURE                       R13 K26 [PROTO_3]
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R12
       87 RETURN                           R13 1
