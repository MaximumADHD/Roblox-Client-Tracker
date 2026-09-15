PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["createElement"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K3 ["View"]
       12 DUPTABLE                         R5 K9 [{["tag"] = "row align-x-left align-y-top auto-y", ["LayoutOrder"], ["Size"], ["ref"]}]
       13 GETTABLEKS                       R6 R1 K6 ["LayoutOrder"]
       15 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       17 GETTABLEKS                       R6 R1 K7 ["Size"]
       19 SETTABLEKS                       R6 R5 K7 ["Size"]
       21 GETTABLEKS                       R6 R1 K10 ["ForwardRef"]
       23 SETTABLEKS                       R6 R5 K8 ["ref"]
       25 DUPTABLE                         R6 K13 [{"Title", "Contents"}]
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R7 R7 K2 ["createElement"]
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R8 R8 K14 ["Text"]
       32 DUPTABLE                         R9 K17 [{["tag"] = "auto-y text-title-small text-align-x-left text-align-y-top content-emphasis", ["Text"], ["TextWrapped"], ["LayoutOrder"], ["Size"]}]
       33 GETTABLEKS                       R10 R1 K11 ["Title"]
       35 SETTABLEKS                       R10 R9 K14 ["Text"]
       37 GETUPVAL                         R10 3
       38 CALL                             R10 0 1
       39 SETTABLEKS                       R10 R9 K16 ["TextWrapped"]
       41 NAMECALL                         R10 R2 K18 ["getNextOrder"]
       43 CALL                             R10 1 1
       44 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       46 GETIMPORT                        R10 K20 [UDim2.new]
       48 LOADN                            R11 0
       49 GETUPVAL                         R12 4
       50 GETTABLEKS                       R12 R12 K21 ["TITLE_GUTTER_WIDTH"]
       52 LOADN                            R13 0
       53 LOADN                            R14 0
       54 CALL                             R10 4 1
       55 SETTABLEKS                       R10 R9 K7 ["Size"]
       57 CALL                             R7 2 1
       58 SETTABLEKS                       R7 R6 K11 ["Title"]
       60 GETUPVAL                         R7 1
       61 GETTABLEKS                       R7 R7 K2 ["createElement"]
       63 GETUPVAL                         R8 2
       64 GETTABLEKS                       R8 R8 K3 ["View"]
       66 DUPTABLE                         R9 K23 [{["tag"] = "auto-y", ["LayoutOrder"], ["Size"]}]
       67 NAMECALL                         R10 R2 K18 ["getNextOrder"]
       69 CALL                             R10 1 1
       70 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       72 GETIMPORT                        R10 K20 [UDim2.new]
       74 LOADN                            R11 1
       75 GETUPVAL                         R13 4
       76 GETTABLEKS                       R13 R13 K21 ["TITLE_GUTTER_WIDTH"]
       78 MINUS                            R12 R13
       79 LOADN                            R13 0
       80 LOADN                            R14 0
       81 CALL                             R10 4 1
       82 SETTABLEKS                       R10 R9 K7 ["Size"]
       84 GETUPVAL                         R11 5
       85 GETTABLEKS                       R11 R11 K24 ["Children"]
       87 GETTABLE                         R10 R1 R11
       88 CALL                             R7 3 1
       89 SETTABLEKS                       R7 R6 K12 ["Contents"]
       91 CALL                             R3 3 -1
       92 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["React"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Roact"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["Framework"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R6 R1 K9 ["Foundation"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K5 [require]
       35 GETTABLEKS                       R7 R0 K10 ["Src"]
       37 GETTABLEKS                       R7 R7 K11 ["Flags"]
       39 GETTABLEKS                       R7 R7 K12 ["getFFlagEnableUploadingAvatarAnimations"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R0 K10 ["Src"]
       44 GETTABLEKS                       R7 R7 K13 ["Util"]
       46 GETIMPORT                        R8 K5 [require]
       48 GETTABLEKS                       R9 R7 K14 ["AssetConfigConstants"]
       50 CALL                             R8 1 1
       51 GETTABLEKS                       R9 R4 K13 ["Util"]
       53 GETTABLEKS                       R9 R9 K15 ["LayoutOrderIterator"]
       55 GETTABLEKS                       R10 R4 K16 ["ContextServices"]
       57 GETTABLEKS                       R11 R10 K17 ["withContext"]
       59 GETTABLEKS                       R12 R4 K18 ["Wrappers"]
       61 GETTABLEKS                       R12 R12 K19 ["withForwardRef"]
       63 GETTABLEKS                       R13 R3 K20 ["PureComponent"]
       65 LOADK                            R15 K21 ["ConfigureSectionWrapper"]
       66 NAMECALL                         R13 R13 K22 ["extend"]
       68 CALL                             R13 2 1
       69 DUPTABLE                         R14 K24 [{"Size"}]
       70 GETIMPORT                        R15 K27 [UDim2.new]
       72 LOADN                            R16 1
       73 LOADN                            R17 0
       74 LOADN                            R18 0
       75 LOADN                            R19 0
       76 CALL                             R15 4 1
       77 SETTABLEKS                       R15 R14 K23 ["Size"]
       79 SETTABLEKS                       R14 R13 K28 ["defaultProps"]
       81 DUPCLOSURE                       R14 K29 [PROTO_0]
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R3
       88 SETTABLEKS                       R14 R13 K30 ["render"]
       90 MOVE                             R14 R11
       91 DUPTABLE                         R15 K32 [{"Stylizer"}]
       92 GETTABLEKS                       R16 R10 K31 ["Stylizer"]
       94 SETTABLEKS                       R16 R15 K31 ["Stylizer"]
       96 CALL                             R14 1 1
       97 MOVE                             R15 R13
       98 CALL                             R14 1 1
       99 MOVE                             R13 R14
      100 MOVE                             R14 R12
      101 MOVE                             R15 R13
      102 CALL                             R14 1 1
      103 MOVE                             R13 R14
      104 RETURN                           R13 1
