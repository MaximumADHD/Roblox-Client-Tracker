PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["stopPlaySolo"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 LOADK                            R3 K1 ["TestingScreen"]
        6 NAMECALL                         R1 R1 K0 ["use"]
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K2 ["new"]
       12 CALL                             R2 0 1
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K3 ["useContext"]
       16 GETUPVAL                         R4 4
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K4 ["createElement"]
       21 GETUPVAL                         R5 5
       22 DUPTABLE                         R6 K9 [{"Layout", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
       23 GETIMPORT                        R7 K13 [Enum.FillDirection.Vertical]
       25 SETTABLEKS                       R7 R6 K5 ["Layout"]
       27 GETTABLEKS                       R7 R1 K6 ["Spacing"]
       29 SETTABLEKS                       R7 R6 K6 ["Spacing"]
       31 GETIMPORT                        R7 K15 [Enum.HorizontalAlignment.Center]
       33 SETTABLEKS                       R7 R6 K7 ["HorizontalAlignment"]
       35 GETIMPORT                        R7 K16 [Enum.VerticalAlignment.Center]
       37 SETTABLEKS                       R7 R6 K8 ["VerticalAlignment"]
       39 DUPTABLE                         R7 K19 [{"Description", "StopButton"}]
       40 GETUPVAL                         R8 3
       41 GETTABLEKS                       R8 R8 K4 ["createElement"]
       43 GETUPVAL                         R9 6
       44 DUPTABLE                         R10 K23 [{"AutomaticSize", "LayoutOrder", "Text"}]
       45 GETIMPORT                        R11 K25 [Enum.AutomaticSize.XY]
       47 SETTABLEKS                       R11 R10 K20 ["AutomaticSize"]
       49 NAMECALL                         R11 R2 K26 ["getNextOrder"]
       51 CALL                             R11 1 1
       52 SETTABLEKS                       R11 R10 K21 ["LayoutOrder"]
       54 LOADK                            R13 K1 ["TestingScreen"]
       55 LOADK                            R14 K17 ["Description"]
       56 NAMECALL                         R11 R0 K27 ["getText"]
       58 CALL                             R11 3 1
       59 SETTABLEKS                       R11 R10 K22 ["Text"]
       61 CALL                             R8 2 1
       62 SETTABLEKS                       R8 R7 K17 ["Description"]
       64 GETUPVAL                         R8 3
       65 GETTABLEKS                       R8 R8 K4 ["createElement"]
       67 GETUPVAL                         R9 7
       68 DUPTABLE                         R10 K30 [{"AutomaticSize", "LayoutOrder", "OnClick", "Size", "Text"}]
       69 GETIMPORT                        R11 K32 [Enum.AutomaticSize.X]
       71 SETTABLEKS                       R11 R10 K20 ["AutomaticSize"]
       73 NAMECALL                         R11 R2 K26 ["getNextOrder"]
       75 CALL                             R11 1 1
       76 SETTABLEKS                       R11 R10 K21 ["LayoutOrder"]
       78 NEWCLOSURE                       R11 P0
       79 CAPTURE                          VAL R3
       80 SETTABLEKS                       R11 R10 K28 ["OnClick"]
       82 GETIMPORT                        R11 K35 [UDim2.fromOffset]
       84 LOADN                            R12 0
       85 GETTABLEKS                       R13 R1 K36 ["ButtonHeight"]
       87 CALL                             R11 2 1
       88 SETTABLEKS                       R11 R10 K29 ["Size"]
       90 LOADK                            R13 K1 ["TestingScreen"]
       91 LOADK                            R14 K37 ["Stop"]
       92 NAMECALL                         R11 R0 K27 ["getText"]
       94 CALL                             R11 3 1
       95 SETTABLEKS                       R11 R10 K22 ["Text"]
       97 CALL                             R8 2 1
       98 SETTABLEKS                       R8 R7 K18 ["StopButton"]
      100 CALL                             R4 3 -1
      101 RETURN                           R4 -1

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
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["PlacesServiceContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Resources"]
       36 GETTABLEKS                       R5 R5 K13 ["Theme"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R1 K14 ["UI"]
       41 GETTABLEKS                       R6 R5 K15 ["IconButton"]
       43 GETTABLEKS                       R7 R5 K16 ["Pane"]
       45 GETTABLEKS                       R8 R5 K17 ["TextLabel"]
       47 GETTABLEKS                       R9 R1 K18 ["ContextServices"]
       49 GETTABLEKS                       R9 R9 K19 ["Localization"]
       51 GETTABLEKS                       R10 R1 K18 ["ContextServices"]
       53 GETTABLEKS                       R10 R10 K20 ["Stylizer"]
       55 GETTABLEKS                       R11 R1 K21 ["Util"]
       57 GETTABLEKS                       R11 R11 K22 ["LayoutOrderIterator"]
       59 DUPCLOSURE                       R12 K23 [PROTO_1]
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R11
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R6
       68 RETURN                           R12 1
