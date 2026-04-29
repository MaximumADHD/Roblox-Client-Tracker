PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["View"]
        6 DUPTABLE                         R3 K4 [{"tag", "LayoutOrder"}]
        7 LOADK                            R4 K5 ["row auto-y gap-small size-full-700 align-y-center flex-x-between padding-x-small"]
        8 SETTABLEKS                       R4 R3 K2 ["tag"]
       10 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
       12 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       14 DUPTABLE                         R4 K8 [{"InputLabelWeight", "PinChildren"}]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K0 ["createElement"]
       18 GETUPVAL                         R6 2
       19 DUPTABLE                         R7 K12 [{"Name", "Weight", "HideWeight", "LayoutOrder"}]
       20 GETTABLEKS                       R8 R0 K13 ["DisplayName"]
       22 JUMPIF                           R8 ; [+4]
       23 GETTABLEKS                       R9 R0 K14 ["Input"]
       25 GETTABLEKS                       R8 R9 K9 ["Name"]
       27 SETTABLEKS                       R8 R7 K9 ["Name"]
       29 GETTABLEKS                       R9 R0 K14 ["Input"]
       31 GETTABLEKS                       R8 R9 K10 ["Weight"]
       33 SETTABLEKS                       R8 R7 K10 ["Weight"]
       35 GETTABLEKS                       R8 R0 K11 ["HideWeight"]
       37 SETTABLEKS                       R8 R7 K11 ["HideWeight"]
       39 LOADN                            R8 1
       40 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       42 CALL                             R5 2 1
       43 SETTABLEKS                       R5 R4 K6 ["InputLabelWeight"]
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R5 R6 K0 ["createElement"]
       48 LOADK                            R6 K15 ["Folder"]
       49 NEWTABLE                         R7 0 0
       51 DUPTABLE                         R8 K17 [{"RenderedPinInput"}]
       52 GETUPVAL                         R10 0
       53 GETTABLEKS                       R9 R10 K0 ["createElement"]
       55 GETUPVAL                         R10 3
       56 DUPTABLE                         R11 K25 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName", "pinValue", "debugDisplayName"}]
       57 GETIMPORT                        R12 K28 [UDim2.fromOffset]
       59 LOADN                            R13 247
       60 LOADN                            R14 14
       61 CALL                             R12 2 1
       62 SETTABLEKS                       R12 R11 K18 ["Position"]
       64 LOADK                            R12 K14 ["Input"]
       65 SETTABLEKS                       R12 R11 K19 ["pinSide"]
       67 LOADK                            R12 K29 ["Animation"]
       68 SETTABLEKS                       R12 R11 K20 ["pinDataType"]
       70 GETTABLEKS                       R12 R0 K30 ["NodeId"]
       72 SETTABLEKS                       R12 R11 K21 ["pinNodeId"]
       74 GETTABLEKS                       R13 R0 K14 ["Input"]
       76 GETTABLEKS                       R12 R13 K9 ["Name"]
       78 SETTABLEKS                       R12 R11 K22 ["pinName"]
       80 GETTABLEKS                       R13 R0 K14 ["Input"]
       82 GETTABLEKS                       R12 R13 K31 ["Value"]
       84 SETTABLEKS                       R12 R11 K23 ["pinValue"]
       86 GETTABLEKS                       R12 R0 K13 ["DisplayName"]
       88 SETTABLEKS                       R12 R11 K24 ["debugDisplayName"]
       90 CALL                             R9 2 1
       91 SETTABLEKS                       R9 R8 K16 ["RenderedPinInput"]
       93 CALL                             R5 3 1
       94 SETTABLEKS                       R5 R4 K7 ["PinChildren"]
       96 CALL                             R1 3 -1
       97 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["NodeView"]
       20 GETTABLEKS                       R4 R5 K10 ["CompositorNodeInput"]
       22 GETTABLEKS                       R3 R4 K11 ["InputLabelWeight"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R7 R0 K8 ["Components"]
       29 GETTABLEKS                       R6 R7 K9 ["NodeView"]
       31 GETTABLEKS                       R5 R6 K10 ["CompositorNodeInput"]
       33 GETTABLEKS                       R4 R5 K12 ["InputPanelTypes"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R6 R0 K6 ["Parent"]
       40 GETTABLEKS                       R5 R6 K13 ["React"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R9 R0 K8 ["Components"]
       47 GETTABLEKS                       R8 R9 K9 ["NodeView"]
       49 GETTABLEKS                       R7 R8 K14 ["CompositorNodes"]
       51 GETTABLEKS                       R6 R7 K15 ["RenderedCompositorPin"]
       53 CALL                             R5 1 1
       54 DUPCLOSURE                       R6 K16 [PROTO_0]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R5
       59 RETURN                           R6 1
