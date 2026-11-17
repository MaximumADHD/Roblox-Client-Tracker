PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["TitleText"]
        4 GETTABLEKS                       R3 R1 K2 ["AnchorPoint"]
        6 GETTABLEKS                       R4 R1 K3 ["Image"]
        8 GETTABLEKS                       R5 R1 K4 ["Position"]
       10 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K6 ["createElement"]
       15 GETUPVAL                         R8 1
       16 DUPTABLE                         R9 K19 [{["AutomaticSize"], ["Position"], ["AnchorPoint"], ["Padding"], ["Layout"], ["Spacing"] = 8, ["VerticalAlignment"], ["ZIndex"] = 1, ["Style"] = "RoundBox", ["ImageTransparency"] = 0.1, ["LayoutOrder"]}]
       17 GETIMPORT                        R10 K22 [Enum.AutomaticSize.XY]
       19 SETTABLEKS                       R10 R9 K7 ["AutomaticSize"]
       21 SETTABLEKS                       R5 R9 K4 ["Position"]
       23 SETTABLEKS                       R3 R9 K2 ["AnchorPoint"]
       25 DUPTABLE                         R10 K29 [{["Left"] = 10, ["Right"] = 10, ["Top"] = 5, ["Bottom"] = 5}]
       26 SETTABLEKS                       R10 R9 K8 ["Padding"]
       28 GETIMPORT                        R10 K32 [Enum.FillDirection.Horizontal]
       30 SETTABLEKS                       R10 R9 K9 ["Layout"]
       32 GETIMPORT                        R10 K34 [Enum.VerticalAlignment.Center]
       34 SETTABLEKS                       R10 R9 K12 ["VerticalAlignment"]
       36 SETTABLEKS                       R6 R9 K5 ["LayoutOrder"]
       38 DUPTABLE                         R10 K36 [{"Image", "Message"}]
       39 LOADB                            R11 0
       40 JUMPIFEQKNIL                     R4 ; [+30]
       42 LOADB                            R11 0
       43 JUMPIFEQKS                       R4 K37 [""] ; [+27]
       45 GETUPVAL                         R11 0
       46 GETTABLEKS                       R11 R11 K6 ["createElement"]
       48 LOADK                            R12 K38 ["ImageLabel"]
       49 DUPTABLE                         R13 K41 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["Image"]}]
       50 GETIMPORT                        R14 K44 [UDim2.new]
       52 LOADN                            R15 0
       53 LOADN                            R16 15
       54 LOADN                            R17 0
       55 LOADN                            R18 15
       56 CALL                             R14 4 1
       57 SETTABLEKS                       R14 R13 K40 ["Size"]
       59 GETIMPORT                        R14 K44 [UDim2.new]
       61 LOADN                            R15 0
       62 LOADN                            R16 19
       63 LOADN                            R17 0
       64 LOADN                            R18 5
       65 CALL                             R14 4 1
       66 SETTABLEKS                       R14 R13 K4 ["Position"]
       68 SETTABLEKS                       R4 R13 K3 ["Image"]
       70 CALL                             R11 2 1
       71 SETTABLEKS                       R11 R10 K3 ["Image"]
       73 GETUPVAL                         R11 0
       74 GETTABLEKS                       R11 R11 K6 ["createElement"]
       76 GETUPVAL                         R12 2
       77 DUPTABLE                         R13 K49 [{["AutomaticSize"], ["TextXAlignment"], ["Text"], ["BackgroundTransparency"] = 1, ["TextWrapped"] = True, ["LayoutOrder"] = 1}]
       78 GETIMPORT                        R14 K22 [Enum.AutomaticSize.XY]
       80 SETTABLEKS                       R14 R13 K7 ["AutomaticSize"]
       82 GETIMPORT                        R14 K50 [Enum.TextXAlignment.Left]
       84 SETTABLEKS                       R14 R13 K45 ["TextXAlignment"]
       86 SETTABLEKS                       R2 R13 K46 ["Text"]
       88 CALL                             R11 2 1
       89 SETTABLEKS                       R11 R10 K35 ["Message"]
       91 CALL                             R7 3 -1
       92 RETURN                           R7 -1

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
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R6 R5 K12 ["Pane"]
       29 GETTABLEKS                       R7 R5 K13 ["TextLabel"]
       31 GETTABLEKS                       R8 R1 K14 ["PureComponent"]
       33 LOADK                            R10 K15 ["WarningOverlay"]
       34 NAMECALL                         R8 R8 K16 ["extend"]
       36 CALL                             R8 2 1
       37 DUPCLOSURE                       R9 K17 [PROTO_0]
       38 SETTABLEKS                       R9 R8 K18 ["init"]
       40 DUPCLOSURE                       R9 K19 [PROTO_1]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R7
       44 SETTABLEKS                       R9 R8 K20 ["render"]
       46 MOVE                             R9 R4
       47 DUPTABLE                         R10 K23 [{"Stylizer", "Localization"}]
       48 GETTABLEKS                       R11 R3 K21 ["Stylizer"]
       50 SETTABLEKS                       R11 R10 K21 ["Stylizer"]
       52 GETTABLEKS                       R11 R3 K22 ["Localization"]
       54 SETTABLEKS                       R11 R10 K22 ["Localization"]
       56 CALL                             R9 1 1
       57 MOVE                             R10 R8
       58 CALL                             R9 1 1
       59 MOVE                             R8 R9
       60 RETURN                           R8 1
