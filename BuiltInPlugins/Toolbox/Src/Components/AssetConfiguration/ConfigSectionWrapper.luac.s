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
       32 DUPTABLE                         R9 K18 [{["tag"] = "auto-y text-title-small text-align-x-left text-align-y-top content-emphasis", ["Text"], ["TextWrapped"] = True, ["LayoutOrder"], ["Size"]}]
       33 GETTABLEKS                       R10 R1 K11 ["Title"]
       35 SETTABLEKS                       R10 R9 K14 ["Text"]
       37 NAMECALL                         R10 R2 K19 ["getNextOrder"]
       39 CALL                             R10 1 1
       40 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       42 GETIMPORT                        R10 K21 [UDim2.new]
       44 LOADN                            R11 0
       45 GETUPVAL                         R12 3
       46 GETTABLEKS                       R12 R12 K22 ["TITLE_GUTTER_WIDTH"]
       48 LOADN                            R13 0
       49 LOADN                            R14 0
       50 CALL                             R10 4 1
       51 SETTABLEKS                       R10 R9 K7 ["Size"]
       53 CALL                             R7 2 1
       54 SETTABLEKS                       R7 R6 K11 ["Title"]
       56 GETUPVAL                         R7 1
       57 GETTABLEKS                       R7 R7 K2 ["createElement"]
       59 GETUPVAL                         R8 2
       60 GETTABLEKS                       R8 R8 K3 ["View"]
       62 DUPTABLE                         R9 K24 [{["tag"] = "auto-y", ["LayoutOrder"], ["Size"]}]
       63 NAMECALL                         R10 R2 K19 ["getNextOrder"]
       65 CALL                             R10 1 1
       66 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       68 GETIMPORT                        R10 K21 [UDim2.new]
       70 LOADN                            R11 1
       71 GETUPVAL                         R13 3
       72 GETTABLEKS                       R13 R13 K22 ["TITLE_GUTTER_WIDTH"]
       74 MINUS                            R12 R13
       75 LOADN                            R13 0
       76 LOADN                            R14 0
       77 CALL                             R10 4 1
       78 SETTABLEKS                       R10 R9 K7 ["Size"]
       80 GETUPVAL                         R11 4
       81 GETTABLEKS                       R11 R11 K25 ["Children"]
       83 GETTABLE                         R10 R1 R11
       84 CALL                             R7 3 1
       85 SETTABLEKS                       R7 R6 K12 ["Contents"]
       87 CALL                             R3 3 -1
       88 RETURN                           R3 -1

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
       33 GETTABLEKS                       R6 R0 K10 ["Src"]
       35 GETTABLEKS                       R6 R6 K11 ["Util"]
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R6 K12 ["AssetConfigConstants"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R8 R4 K11 ["Util"]
       44 GETTABLEKS                       R8 R8 K13 ["LayoutOrderIterator"]
       46 GETTABLEKS                       R9 R4 K14 ["ContextServices"]
       48 GETTABLEKS                       R10 R9 K15 ["withContext"]
       50 GETTABLEKS                       R11 R4 K16 ["Wrappers"]
       52 GETTABLEKS                       R11 R11 K17 ["withForwardRef"]
       54 GETTABLEKS                       R12 R3 K18 ["PureComponent"]
       56 LOADK                            R14 K19 ["ConfigureSectionWrapper"]
       57 NAMECALL                         R12 R12 K20 ["extend"]
       59 CALL                             R12 2 1
       60 DUPTABLE                         R13 K22 [{"Size"}]
       61 GETIMPORT                        R14 K25 [UDim2.new]
       63 LOADN                            R15 1
       64 LOADN                            R16 0
       65 LOADN                            R17 0
       66 LOADN                            R18 0
       67 CALL                             R14 4 1
       68 SETTABLEKS                       R14 R13 K21 ["Size"]
       70 SETTABLEKS                       R13 R12 K26 ["defaultProps"]
       72 DUPCLOSURE                       R13 K27 [PROTO_0]
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R3
       78 SETTABLEKS                       R13 R12 K28 ["render"]
       80 MOVE                             R13 R10
       81 DUPTABLE                         R14 K30 [{"Stylizer"}]
       82 GETTABLEKS                       R15 R9 K29 ["Stylizer"]
       84 SETTABLEKS                       R15 R14 K29 ["Stylizer"]
       86 CALL                             R13 1 1
       87 MOVE                             R14 R12
       88 CALL                             R13 1 1
       89 MOVE                             R12 R13
       90 MOVE                             R13 R11
       91 MOVE                             R14 R12
       92 CALL                             R13 1 1
       93 MOVE                             R12 R13
       94 RETURN                           R12 1
