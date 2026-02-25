PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R1 K1 ["AssetData"]
        4 GETTABLEKS                       R3 R4 K2 ["Asset"]
        6 GETTABLEKS                       R2 R3 K3 ["TypeId"]
        8 GETTABLEKS                       R4 R1 K1 ["AssetData"]
       10 GETTABLEKS                       R3 R4 K4 ["Creator"]
       12 GETTABLEKS                       R4 R1 K5 ["Localization"]
       14 GETTABLEKS                       R5 R1 K6 ["FitMaxWidth"]
       16 GETTABLEKS                       R6 R1 K7 ["LayoutOrder"]
       18 GETIMPORT                        R9 K11 [Enum.AssetType.Plugin]
       20 GETTABLEKS                       R8 R9 K12 ["Value"]
       22 JUMPIFEQ                         R2 R8 ; [+2]
       24 LOADB                            R7 0 +1
       25 LOADB                            R7 1
       26 LOADB                            R8 0
       27 GETTABLEKS                       R9 R3 K13 ["Id"]
       29 JUMPIFNOTEQKN                    R9 K14 [1] ; [+11]
       31 GETTABLEKS                       R9 R3 K15 ["Type"]
       33 GETIMPORT                        R11 K18 [Enum.CreatorType.User]
       35 GETTABLEKS                       R10 R11 K12 ["Value"]
       37 JUMPIFEQ                         R9 R10 ; [+2]
       39 LOADB                            R8 0 +1
       40 LOADB                            R8 1
       41 JUMPIF                           R8 ; [+1]
       42 JUMPIF                           R7 ; [+2]
       43 LOADNIL                          R9
       44 RETURN                           R9 1
       45 JUMPIFNOT                        R5 ; [+6]
       46 GETIMPORT                        R9 K21 [UDim2.fromOffset]
       48 MOVE                             R10 R5
       49 LOADN                            R11 0
       50 CALL                             R9 2 1
       51 JUMP                             ; [+5]
       52 GETIMPORT                        R9 K23 [UDim2.fromScale]
       54 LOADN                            R10 1
       55 LOADN                            R11 0
       56 CALL                             R9 2 1
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R10 R11 K24 ["createElement"]
       60 GETUPVAL                         R11 1
       61 DUPTABLE                         R12 K27 [{"AutomaticSize", "LayoutOrder", "Size"}]
       62 GETIMPORT                        R13 K29 [Enum.AutomaticSize.Y]
       64 SETTABLEKS                       R13 R12 K25 ["AutomaticSize"]
       66 SETTABLEKS                       R6 R12 K7 ["LayoutOrder"]
       68 GETIMPORT                        R13 K23 [UDim2.fromScale]
       70 LOADN                            R14 1
       71 LOADN                            R15 0
       72 CALL                             R13 2 1
       73 SETTABLEKS                       R13 R12 K26 ["Size"]
       75 DUPTABLE                         R13 K31 [{"Text"}]
       76 GETUPVAL                         R15 0
       77 GETTABLEKS                       R14 R15 K24 ["createElement"]
       79 GETUPVAL                         R15 2
       80 DUPTABLE                         R16 K36 [{"AutomaticSize", "TextWrapped", "Size", "Style", "TextTransparency", "TextXAlignment", "Text"}]
       81 GETIMPORT                        R17 K29 [Enum.AutomaticSize.Y]
       83 SETTABLEKS                       R17 R16 K25 ["AutomaticSize"]
       85 LOADB                            R17 1
       86 SETTABLEKS                       R17 R16 K32 ["TextWrapped"]
       88 GETIMPORT                        R17 K23 [UDim2.fromScale]
       90 LOADN                            R18 1
       91 LOADN                            R19 0
       92 CALL                             R17 2 1
       93 SETTABLEKS                       R17 R16 K26 ["Size"]
       95 LOADK                            R17 K37 ["Body"]
       96 SETTABLEKS                       R17 R16 K33 ["Style"]
       98 LOADK                            R17 K38 [0.5]
       99 SETTABLEKS                       R17 R16 K34 ["TextTransparency"]
      101 GETIMPORT                        R17 K40 [Enum.TextXAlignment.Center]
      103 SETTABLEKS                       R17 R16 K35 ["TextXAlignment"]
      105 LOADK                            R19 K41 ["AssetPreview"]
      106 LOADK                            R20 K42 ["PluginNotice"]
      107 NAMECALL                         R17 R4 K43 ["getText"]
      109 CALL                             R17 3 1
      110 SETTABLEKS                       R17 R16 K30 ["Text"]
      112 CALL                             R14 2 1
      113 SETTABLEKS                       R14 R13 K30 ["Text"]
      115 CALL                             R10 3 -1
      116 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R5 K1 [script]
        3 GETTABLEKS                       R4 R5 K2 ["Parent"]
        5 GETTABLEKS                       R3 R4 K2 ["Parent"]
        7 GETTABLEKS                       R2 R3 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETTABLEKS                       R0 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R0 K3 ["Packages"]
       15 GETIMPORT                        R2 K5 [require]
       17 GETTABLEKS                       R3 R1 K6 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R1 K7 ["Framework"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K9 ["withContext"]
       29 GETTABLEKS                       R6 R3 K10 ["UI"]
       31 GETTABLEKS                       R7 R6 K11 ["TextLabel"]
       33 GETTABLEKS                       R8 R6 K12 ["Container"]
       35 GETTABLEKS                       R9 R6 K13 ["Pane"]
       37 GETTABLEKS                       R10 R2 K14 ["PureComponent"]
       39 LOADK                            R12 K15 ["AssetPreviewFooter"]
       40 NAMECALL                         R10 R10 K16 ["extend"]
       42 CALL                             R10 2 1
       43 DUPCLOSURE                       R11 K17 [PROTO_0]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R9
       46 CAPTURE                          VAL R7
       47 SETTABLEKS                       R11 R10 K18 ["render"]
       49 MOVE                             R11 R5
       50 DUPTABLE                         R12 K20 [{"Localization"}]
       51 GETTABLEKS                       R13 R4 K19 ["Localization"]
       53 SETTABLEKS                       R13 R12 K19 ["Localization"]
       55 CALL                             R11 1 1
       56 MOVE                             R12 R10
       57 CALL                             R11 1 1
       58 MOVE                             R10 R11
       59 RETURN                           R10 1
