PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Editable"]
        2 JUMPIFEQKNIL                     R1 ; [+40]
        4 GETTABLEKS                       R1 R0 K0 ["Editable"]
        6 JUMPIF                           R1 ; [+36]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["createElement"]
       10 GETUPVAL                         R2 1
       11 DUPTABLE                         R3 K8 [{["LayoutOrder"], ["Size"], ["SuffixLength"] = 20, ["Text"], ["TextXAlignment"]}]
       12 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
       14 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       16 GETTABLEKS                       R4 R0 K3 ["Size"]
       18 SETTABLEKS                       R4 R3 K3 ["Size"]
       20 GETTABLEKS                       R4 R0 K9 ["Value"]
       22 SETTABLEKS                       R4 R3 K6 ["Text"]
       24 GETIMPORT                        R4 K12 [Enum.TextXAlignment.Left]
       26 SETTABLEKS                       R4 R3 K7 ["TextXAlignment"]
       28 DUPTABLE                         R4 K14 [{"Tooltip"}]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K1 ["createElement"]
       32 GETUPVAL                         R6 2
       33 DUPTABLE                         R7 K15 [{"Text"}]
       34 GETTABLEKS                       R8 R0 K9 ["Value"]
       36 SETTABLEKS                       R8 R7 K6 ["Text"]
       38 CALL                             R5 2 1
       39 SETTABLEKS                       R5 R4 K13 ["Tooltip"]
       41 CALL                             R1 3 -1
       42 RETURN                           R1 -1
       43 GETUPVAL                         R1 0
       44 GETTABLEKS                       R1 R1 K1 ["createElement"]
       46 GETUPVAL                         R2 3
       47 DUPTABLE                         R3 K17 [{"Size", "AutomaticSize", "LayoutOrder"}]
       48 GETTABLEKS                       R4 R0 K3 ["Size"]
       50 SETTABLEKS                       R4 R3 K3 ["Size"]
       52 GETIMPORT                        R4 K19 [Enum.AutomaticSize.Y]
       54 SETTABLEKS                       R4 R3 K16 ["AutomaticSize"]
       56 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
       58 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       60 NEWTABLE                         R4 0 1
       62 GETUPVAL                         R5 0
       63 GETTABLEKS                       R5 R5 K1 ["createElement"]
       65 GETUPVAL                         R6 4
       66 DUPTABLE                         R7 K21 [{"AutomaticSize", "OnTextChanged", "Text"}]
       67 GETIMPORT                        R8 K23 [Enum.AutomaticSize.None]
       69 SETTABLEKS                       R8 R7 K16 ["AutomaticSize"]
       71 GETTABLEKS                       R8 R0 K24 ["OnSetItem"]
       73 SETTABLEKS                       R8 R7 K20 ["OnTextChanged"]
       75 GETTABLEKS                       R8 R0 K9 ["Value"]
       77 SETTABLEKS                       R8 R7 K6 ["Text"]
       79 CALL                             R5 2 -1
       80 SETLIST                          R4 R5 -1 [1]
       82 CALL                             R1 3 -1
       83 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactCompat"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["Pane"]
       25 GETTABLEKS                       R5 R3 K11 ["TextInput"]
       27 GETTABLEKS                       R6 R3 K12 ["Tooltip"]
       29 GETTABLEKS                       R7 R3 K13 ["TruncatedTextLabel"]
       31 DUPCLOSURE                       R8 K14 [PROTO_0]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R7
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R5
       37 RETURN                           R8 1
