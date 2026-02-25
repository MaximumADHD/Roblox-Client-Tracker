PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnClick"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["Value"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 NEWTABLE                         R3 2 0
        6 GETTABLEKS                       R4 R0 K1 ["Size"]
        8 SETTABLEKS                       R4 R3 K1 ["Size"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K2 ["Tag"]
       13 LOADK                            R5 K3 ["DeriveRenderer"]
       14 SETTABLE                         R5 R3 R4
       15 DUPTABLE                         R4 K6 [{"Name", "XButton"}]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K0 ["createElement"]
       19 GETUPVAL                         R6 2
       20 DUPTABLE                         R7 K9 [{"Text", "TextXAlignment"}]
       21 GETTABLEKS                       R9 R0 K10 ["Value"]
       23 GETTABLEKS                       R8 R9 K4 ["Name"]
       25 SETTABLEKS                       R8 R7 K7 ["Text"]
       27 GETIMPORT                        R8 K13 [Enum.TextXAlignment.Left]
       29 SETTABLEKS                       R8 R7 K8 ["TextXAlignment"]
       31 CALL                             R5 2 1
       32 SETTABLEKS                       R5 R4 K4 ["Name"]
       34 GETTABLEKS                       R6 R0 K10 ["Value"]
       36 GETUPVAL                         R8 3
       37 GETTABLEKS                       R7 R8 K14 ["getStudioDefaultStyleSheet"]
       39 CALL                             R7 0 1
       40 JUMPIFNOTEQ                      R6 R7 ; [+3]
       42 LOADNIL                          R5
       43 JUMP                             ; [+46]
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R5 R6 K0 ["createElement"]
       47 GETUPVAL                         R6 4
       48 NEWTABLE                         R7 8 0
       50 GETIMPORT                        R8 K17 [Vector2.new]
       52 LOADN                            R9 0
       53 LOADK                            R10 K18 [0.5]
       54 CALL                             R8 2 1
       55 SETTABLEKS                       R8 R7 K19 ["AnchorPoint"]
       57 GETUPVAL                         R9 5
       58 GETTABLEKS                       R8 R9 K20 ["close"]
       60 CALL                             R8 0 1
       61 SETTABLEKS                       R8 R7 K21 ["LeftIcon"]
       63 LOADK                            R8 K22 ["PointingHand"]
       64 SETTABLEKS                       R8 R7 K23 ["Cursor"]
       66 NEWCLOSURE                       R8 P0
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R8 R7 K24 ["OnClick"]
       70 GETUPVAL                         R9 0
       71 GETTABLEKS                       R8 R9 K2 ["Tag"]
       73 LOADK                            R9 K25 ["IconOnly"]
       74 SETTABLE                         R9 R7 R8
       75 GETIMPORT                        R8 K27 [UDim2.new]
       77 LOADN                            R9 1
       78 GETUPVAL                         R13 6
       79 GETTABLEKS                       R12 R13 K28 ["X"]
       81 GETTABLEKS                       R11 R12 K29 ["Offset"]
       83 MINUS                            R10 R11
       84 LOADK                            R11 K18 [0.5]
       85 LOADN                            R12 0
       86 CALL                             R8 4 1
       87 SETTABLEKS                       R8 R7 K30 ["Position"]
       89 CALL                             R5 2 1
       90 SETTABLEKS                       R5 R4 K5 ["XButton"]
       92 CALL                             R1 3 -1
       93 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["UI"]
       25 GETTABLEKS                       R4 R3 K9 ["IconButton"]
       27 GETTABLEKS                       R5 R3 K10 ["Pane"]
       29 GETTABLEKS                       R6 R3 K11 ["TextLabel"]
       31 GETIMPORT                        R7 K4 [require]
       33 GETTABLEKS                       R10 R0 K12 ["Src"]
       35 GETTABLEKS                       R9 R10 K13 ["Resources"]
       37 GETTABLEKS                       R8 R9 K14 ["ModernIcons"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K4 [require]
       42 GETTABLEKS                       R11 R0 K12 ["Src"]
       44 GETTABLEKS                       R10 R11 K13 ["Resources"]
       46 GETTABLEKS                       R9 R10 K15 ["PluginStyles"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K4 [require]
       51 GETTABLEKS                       R12 R0 K12 ["Src"]
       53 GETTABLEKS                       R11 R12 K16 ["Util"]
       55 GETTABLEKS                       R10 R11 K17 ["DesignHelpers"]
       57 CALL                             R9 1 1
       58 LOADK                            R12 K18 ["Icon16"]
       59 NAMECALL                         R10 R8 K19 ["GetAttribute"]
       61 CALL                             R10 2 1
       62 GETIMPORT                        R11 K4 [require]
       64 GETTABLEKS                       R14 R0 K12 ["Src"]
       66 GETTABLEKS                       R13 R14 K20 ["Renderers"]
       68 GETTABLEKS                       R12 R13 K21 ["RendererTypes"]
       70 CALL                             R11 1 1
       71 DUPCLOSURE                       R12 K22 [PROTO_1]
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R10
       79 RETURN                           R12 1
