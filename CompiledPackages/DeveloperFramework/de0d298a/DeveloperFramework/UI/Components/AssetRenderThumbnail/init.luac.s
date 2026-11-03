PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        2 GETTABLEKS                       R2 R0 K1 ["IsA"]
        4 JUMPIFNOT                        R2 ; [+15]
        5 LOADK                            R4 K2 ["JointInstance"]
        6 NAMECALL                         R2 R0 K1 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+2]
       10 JUMPIFEQKS                       R1 K3 ["ManualWeld"] ; [+3]
       12 JUMPIFNOTEQKS                    R1 K4 ["ManualGlue"] ; [+7]
       14 GETUPVAL                         R2 0
       15 LOADK                            R4 K2 ["JointInstance"]
       16 NAMECALL                         R2 R2 K5 ["GetClassIcon"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1
       20 GETUPVAL                         R2 0
       21 MOVE                             R4 R1
       22 NAMECALL                         R2 R2 K5 ["GetClassIcon"]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Instance"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["getClassIcon"]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R4 R1 K3 ["Position"]
       11 GETTABLEKS                       R5 R1 K4 ["Size"]
       13 GETTABLEKS                       R6 R1 K5 ["AnchorPoint"]
       15 GETTABLEKS                       R7 R1 K6 ["IconSize"]
       17 JUMPIF                           R7 ; [+7]
       18 GETIMPORT                        R7 K9 [UDim2.new]
       20 LOADK                            R8 K10 [0.25]
       21 LOADN                            R9 0
       22 LOADK                            R10 K10 [0.25]
       23 LOADN                            R11 0
       24 CALL                             R7 4 1
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R8 R8 K11 ["createElement"]
       28 GETUPVAL                         R9 2
       29 DUPTABLE                         R10 K12 [{"AnchorPoint", "Position", "Size"}]
       30 SETTABLEKS                       R6 R10 K5 ["AnchorPoint"]
       32 SETTABLEKS                       R4 R10 K3 ["Position"]
       34 SETTABLEKS                       R5 R10 K4 ["Size"]
       36 DUPTABLE                         R11 K16 [{"Layout", "InstanceIcon", "InstanceName"}]
       37 GETUPVAL                         R12 1
       38 GETTABLEKS                       R12 R12 K11 ["createElement"]
       40 LOADK                            R13 K17 ["UIListLayout"]
       41 DUPTABLE                         R14 K22 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
       42 GETIMPORT                        R15 K25 [Enum.SortOrder.LayoutOrder]
       44 SETTABLEKS                       R15 R14 K18 ["SortOrder"]
       46 GETIMPORT                        R15 K27 [Enum.FillDirection.Vertical]
       48 SETTABLEKS                       R15 R14 K19 ["FillDirection"]
       50 GETIMPORT                        R15 K29 [Enum.HorizontalAlignment.Center]
       52 SETTABLEKS                       R15 R14 K20 ["HorizontalAlignment"]
       54 GETIMPORT                        R15 K30 [Enum.VerticalAlignment.Center]
       56 SETTABLEKS                       R15 R14 K21 ["VerticalAlignment"]
       58 CALL                             R12 2 1
       59 SETTABLEKS                       R12 R11 K13 ["Layout"]
       61 GETUPVAL                         R12 1
       62 GETTABLEKS                       R12 R12 K11 ["createElement"]
       64 GETUPVAL                         R13 3
       65 DUPTABLE                         R14 K34 [{["LayoutOrder"] = 1, ["SizeConstraint"], ["Style"]}]
       66 GETIMPORT                        R15 K36 [Enum.SizeConstraint.RelativeYY]
       68 SETTABLEKS                       R15 R14 K32 ["SizeConstraint"]
       70 DUPTABLE                         R15 K40 [{"Size", "Image", "ImageRectSize", "ImageRectOffset"}]
       71 SETTABLEKS                       R7 R15 K4 ["Size"]
       73 GETTABLEKS                       R16 R3 K37 ["Image"]
       75 SETTABLEKS                       R16 R15 K37 ["Image"]
       77 GETTABLEKS                       R16 R3 K38 ["ImageRectSize"]
       79 SETTABLEKS                       R16 R15 K38 ["ImageRectSize"]
       81 GETTABLEKS                       R16 R3 K39 ["ImageRectOffset"]
       83 SETTABLEKS                       R16 R15 K39 ["ImageRectOffset"]
       85 SETTABLEKS                       R15 R14 K33 ["Style"]
       87 CALL                             R12 2 1
       88 SETTABLEKS                       R12 R11 K14 ["InstanceIcon"]
       90 GETUPVAL                         R12 1
       91 GETTABLEKS                       R12 R12 K11 ["createElement"]
       93 GETUPVAL                         R13 4
       94 DUPTABLE                         R14 K45 [{["LayoutOrder"] = 2, ["Size"], ["TextXAlignment"], ["Text"], ["TextTruncate"]}]
       95 GETIMPORT                        R15 K9 [UDim2.new]
       97 LOADN                            R16 1
       98 LOADN                            R17 0
       99 GETTABLEKS                       R19 R7 K46 ["Y"]
      101 GETTABLEKS                       R19 R19 K47 ["Scale"]
      103 SUBRK                            R18 K31 [1] R19
      104 LOADN                            R19 0
      105 CALL                             R15 4 1
      106 SETTABLEKS                       R15 R14 K4 ["Size"]
      108 GETIMPORT                        R15 K48 [Enum.TextXAlignment.Center]
      110 SETTABLEKS                       R15 R14 K42 ["TextXAlignment"]
      112 GETTABLEKS                       R16 R2 K50 ["Name"]
      114 ORK                              R15 R16 K49 [""]
      115 SETTABLEKS                       R15 R14 K43 ["Text"]
      117 GETIMPORT                        R15 K52 [Enum.TextTruncate.AtEnd]
      119 SETTABLEKS                       R15 R14 K44 ["TextTruncate"]
      121 CALL                             R12 2 1
      122 SETTABLEKS                       R12 R11 K15 ["InstanceName"]
      124 CALL                             R8 3 -1
      125 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["UI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R1 R1 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R3 R1 K8 ["Parent"]
       19 GETTABLEKS                       R3 R3 K11 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K10 [require]
       24 GETTABLEKS                       R4 R1 K6 ["UI"]
       26 GETTABLEKS                       R4 R4 K12 ["ContextServices"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K13 ["withContext"]
       31 GETIMPORT                        R5 K10 [require]
       33 GETTABLEKS                       R6 R1 K6 ["UI"]
       35 GETTABLEKS                       R6 R6 K14 ["Components"]
       37 GETTABLEKS                       R6 R6 K15 ["Container"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R7 R1 K6 ["UI"]
       44 GETTABLEKS                       R7 R7 K14 ["Components"]
       46 GETTABLEKS                       R7 R7 K16 ["Image"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R8 R1 K6 ["UI"]
       53 GETTABLEKS                       R8 R8 K14 ["Components"]
       55 GETTABLEKS                       R8 R8 K17 ["TextLabel"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R9 R1 K18 ["Util"]
       62 GETTABLEKS                       R9 R9 K19 ["Typecheck"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R9 R2 K20 ["PureComponent"]
       67 LOADK                            R11 K21 ["AssetRenderThumbnail"]
       68 NAMECALL                         R9 R9 K22 ["extend"]
       70 CALL                             R9 2 1
       71 GETTABLEKS                       R10 R8 K23 ["wrap"]
       73 MOVE                             R11 R9
       74 GETIMPORT                        R12 K5 [script]
       76 CALL                             R10 2 0
       77 DUPCLOSURE                       R10 K24 [PROTO_0]
       78 CAPTURE                          VAL R0
       79 SETTABLEKS                       R10 R9 K25 ["getClassIcon"]
       81 NEWCLOSURE                       R10 P1
       82 CAPTURE                          REF R9
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R7
       87 SETTABLEKS                       R10 R9 K26 ["render"]
       89 MOVE                             R10 R4
       90 DUPTABLE                         R11 K28 [{"Stylizer"}]
       91 GETTABLEKS                       R12 R3 K27 ["Stylizer"]
       93 SETTABLEKS                       R12 R11 K27 ["Stylizer"]
       95 CALL                             R10 1 1
       96 MOVE                             R11 R9
       97 CALL                             R10 1 1
       98 MOVE                             R9 R10
       99 CLOSEUPVALS                      R9
      100 RETURN                           R9 1
