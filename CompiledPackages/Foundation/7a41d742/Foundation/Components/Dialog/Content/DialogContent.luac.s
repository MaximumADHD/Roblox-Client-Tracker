PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 2
        2 GETUPVAL                         R3 1
        3 CALL                             R3 0 1
        4 GETUPVAL                         R4 2
        5 CALL                             R4 0 1
        6 LOADK                            R6 K0 ["%*--content"]
        7 GETTABLEKS                       R8 R4 K1 ["testId"]
        9 NAMECALL                         R6 R6 K2 ["format"]
       11 CALL                             R6 2 1
       12 MOVE                             R5 R6
       13 SETTABLEKS                       R5 R0 K1 ["testId"]
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K3 ["createElement"]
       18 GETUPVAL                         R6 4
       19 GETUPVAL                         R7 5
       20 MOVE                             R8 R0
       21 DUPTABLE                         R9 K8 [{"scroll", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged", "tag"}]
       22 DUPTABLE                         R10 K11 [{"AutomaticCanvasSize", "CanvasSize"}]
       23 GETIMPORT                        R11 K15 [Enum.AutomaticSize.Y]
       25 SETTABLEKS                       R11 R10 K9 ["AutomaticCanvasSize"]
       27 GETIMPORT                        R11 K18 [UDim2.new]
       29 LOADN                            R12 0
       30 LOADN                            R13 0
       31 LOADN                            R14 0
       32 LOADN                            R15 0
       33 CALL                             R11 4 1
       34 SETTABLEKS                       R11 R10 K10 ["CanvasSize"]
       36 SETTABLEKS                       R10 R9 K4 ["scroll"]
       38 SETTABLEKS                       R2 R9 K5 ["onAbsoluteCanvasSizeChanged"]
       40 SETTABLEKS                       R2 R9 K6 ["onAbsoluteWindowSizeChanged"]
       42 GETTABLEKS                       R10 R3 K19 ["content"]
       44 GETTABLEKS                       R10 R10 K7 ["tag"]
       46 SETTABLEKS                       R10 R9 K7 ["tag"]
       48 CALL                             R7 2 1
       49 DUPTABLE                         R8 K22 [{"ScrollPadding", "ScrollContent"}]
       50 GETUPVAL                         R9 3
       51 GETTABLEKS                       R9 R9 K3 ["createElement"]
       53 LOADK                            R10 K23 ["UIPadding"]
       54 DUPTABLE                         R11 K25 [{"PaddingRight"}]
       55 GETIMPORT                        R12 K27 [UDim.new]
       57 LOADN                            R13 0
       58 MOVE                             R14 R1
       59 CALL                             R12 2 1
       60 SETTABLEKS                       R12 R11 K24 ["PaddingRight"]
       62 CALL                             R9 2 1
       63 SETTABLEKS                       R9 R8 K20 ["ScrollPadding"]
       65 GETUPVAL                         R9 3
       66 GETTABLEKS                       R9 R9 K3 ["createElement"]
       68 GETUPVAL                         R10 3
       69 GETTABLEKS                       R10 R10 K28 ["Fragment"]
       71 LOADNIL                          R11
       72 GETTABLEKS                       R12 R0 K29 ["children"]
       74 CALL                             R9 3 1
       75 SETTABLEKS                       R9 R8 K21 ["ScrollContent"]
       77 CALL                             R5 3 -1
       78 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["ScrollView"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Types"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Utility"]
       32 GETTABLEKS                       R6 R6 K12 ["withCommonProps"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETIMPORT                        R7 K1 [script]
       39 GETTABLEKS                       R7 R7 K4 ["Parent"]
       41 GETTABLEKS                       R7 R7 K13 ["useScrollBarPadding"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETIMPORT                        R8 K1 [script]
       48 GETTABLEKS                       R8 R8 K4 ["Parent"]
       50 GETTABLEKS                       R8 R8 K4 ["Parent"]
       52 GETTABLEKS                       R8 R8 K14 ["useDialogVariants"]
       54 CALL                             R7 1 1
       55 GETTABLEKS                       R7 R7 K14 ["useDialogVariants"]
       57 GETIMPORT                        R8 K6 [require]
       59 GETIMPORT                        R9 K1 [script]
       61 GETTABLEKS                       R9 R9 K4 ["Parent"]
       63 GETTABLEKS                       R9 R9 K4 ["Parent"]
       65 GETTABLEKS                       R9 R9 K15 ["useDialog"]
       67 CALL                             R8 1 1
       68 DUPCLOSURE                       R9 K16 [PROTO_0]
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R5
       75 RETURN                           R9 1
