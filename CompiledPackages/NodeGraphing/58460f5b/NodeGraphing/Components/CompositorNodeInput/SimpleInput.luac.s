PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K4 [{"tag", "LayoutOrder"}]
        7 LOADK                            R4 K5 ["auto-y gap-small size-full-700 align-y-center flex-x-between padding-x-small"]
        8 SETTABLEKS                       R4 R3 K2 ["tag"]
       10 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
       12 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       14 DUPTABLE                         R4 K8 [{"InputLabel", "PinChildren"}]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K0 ["createElement"]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K9 ["Text"]
       21 DUPTABLE                         R7 K11 [{"tag", "Text", "TextTruncate"}]
       22 LOADK                            R8 K12 ["content-emphasis text-body-small text-align-x-left auto-y size-full-0 fill"]
       23 SETTABLEKS                       R8 R7 K2 ["tag"]
       25 GETTABLEKS                       R8 R0 K13 ["DisplayName"]
       27 JUMPIF                           R8 ; [+4]
       28 GETTABLEKS                       R8 R0 K14 ["Input"]
       30 GETTABLEKS                       R8 R8 K15 ["Name"]
       32 SETTABLEKS                       R8 R7 K9 ["Text"]
       34 GETIMPORT                        R8 K18 [Enum.TextTruncate.SplitWord]
       36 SETTABLEKS                       R8 R7 K10 ["TextTruncate"]
       38 CALL                             R5 2 1
       39 SETTABLEKS                       R5 R4 K6 ["InputLabel"]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K0 ["createElement"]
       44 LOADK                            R6 K19 ["Folder"]
       45 NEWTABLE                         R7 0 0
       47 DUPTABLE                         R8 K21 [{"RenderedPinInput"}]
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R9 R9 K0 ["createElement"]
       51 GETUPVAL                         R10 2
       52 DUPTABLE                         R11 K29 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName", "pinValue", "debugDisplayName"}]
       53 GETIMPORT                        R12 K32 [UDim2.fromOffset]
       55 LOADN                            R13 247
       56 LOADN                            R14 14
       57 CALL                             R12 2 1
       58 SETTABLEKS                       R12 R11 K22 ["Position"]
       60 LOADK                            R12 K14 ["Input"]
       61 SETTABLEKS                       R12 R11 K23 ["pinSide"]
       63 GETUPVAL                         R12 3
       64 GETTABLEKS                       R12 R12 K33 ["DEFAULT_PIN_DATA_TYPE"]
       66 SETTABLEKS                       R12 R11 K24 ["pinDataType"]
       68 GETTABLEKS                       R12 R0 K34 ["NodeId"]
       70 SETTABLEKS                       R12 R11 K25 ["pinNodeId"]
       72 GETTABLEKS                       R12 R0 K14 ["Input"]
       74 GETTABLEKS                       R12 R12 K15 ["Name"]
       76 SETTABLEKS                       R12 R11 K26 ["pinName"]
       78 GETTABLEKS                       R12 R0 K14 ["Input"]
       80 GETTABLEKS                       R12 R12 K35 ["Value"]
       82 SETTABLEKS                       R12 R11 K27 ["pinValue"]
       84 GETTABLEKS                       R12 R0 K13 ["DisplayName"]
       86 SETTABLEKS                       R12 R11 K28 ["debugDisplayName"]
       88 CALL                             R9 2 1
       89 SETTABLEKS                       R9 R8 K20 ["RenderedPinInput"]
       91 CALL                             R5 3 1
       92 SETTABLEKS                       R5 R4 K7 ["PinChildren"]
       94 CALL                             R1 3 -1
       95 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Components"]
       23 GETTABLEKS                       R4 R4 K10 ["CompositorNodeInput"]
       25 GETTABLEKS                       R4 R4 K11 ["InputTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K7 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K9 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["CompositorNodes"]
       41 GETTABLEKS                       R6 R6 K14 ["RenderedCompositorPin"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K15 [PROTO_0]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R1
       49 RETURN                           R6 1
