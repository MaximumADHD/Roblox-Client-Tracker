PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Editable"]
        2 JUMPIFEQKNIL                     R1 ; [+43]
        4 GETTABLEKS                       R1 R0 K0 ["Editable"]
        6 JUMPIF                           R1 ; [+39]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K1 ["createElement"]
       10 GETUPVAL                         R2 1
       11 DUPTABLE                         R3 K7 [{"LayoutOrder", "Size", "SuffixLength", "Text", "TextXAlignment"}]
       12 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
       14 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       16 GETTABLEKS                       R4 R0 K3 ["Size"]
       18 SETTABLEKS                       R4 R3 K3 ["Size"]
       20 LOADN                            R4 20
       21 SETTABLEKS                       R4 R3 K4 ["SuffixLength"]
       23 GETTABLEKS                       R4 R0 K8 ["Value"]
       25 SETTABLEKS                       R4 R3 K5 ["Text"]
       27 GETIMPORT                        R4 K11 [Enum.TextXAlignment.Left]
       29 SETTABLEKS                       R4 R3 K6 ["TextXAlignment"]
       31 DUPTABLE                         R4 K13 [{"Tooltip"}]
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R5 R6 K1 ["createElement"]
       35 GETUPVAL                         R6 2
       36 DUPTABLE                         R7 K14 [{"Text"}]
       37 GETTABLEKS                       R8 R0 K8 ["Value"]
       39 SETTABLEKS                       R8 R7 K5 ["Text"]
       41 CALL                             R5 2 1
       42 SETTABLEKS                       R5 R4 K12 ["Tooltip"]
       44 CALL                             R1 3 -1
       45 RETURN                           R1 -1
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R1 R2 K1 ["createElement"]
       49 GETUPVAL                         R2 3
       50 DUPTABLE                         R3 K16 [{"Size", "AutomaticSize", "LayoutOrder"}]
       51 GETTABLEKS                       R4 R0 K3 ["Size"]
       53 SETTABLEKS                       R4 R3 K3 ["Size"]
       55 GETIMPORT                        R4 K18 [Enum.AutomaticSize.Y]
       57 SETTABLEKS                       R4 R3 K15 ["AutomaticSize"]
       59 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
       61 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       63 NEWTABLE                         R4 0 1
       65 GETUPVAL                         R6 0
       66 GETTABLEKS                       R5 R6 K1 ["createElement"]
       68 GETUPVAL                         R6 4
       69 DUPTABLE                         R7 K20 [{"AutomaticSize", "OnTextChanged", "Text"}]
       70 GETIMPORT                        R8 K22 [Enum.AutomaticSize.None]
       72 SETTABLEKS                       R8 R7 K15 ["AutomaticSize"]
       74 GETTABLEKS                       R8 R0 K23 ["OnSetItem"]
       76 SETTABLEKS                       R8 R7 K19 ["OnTextChanged"]
       78 GETTABLEKS                       R8 R0 K8 ["Value"]
       80 SETTABLEKS                       R8 R7 K5 ["Text"]
       82 CALL                             R5 2 -1
       83 SETLIST                          R4 R5 -1 [1]
       85 CALL                             R1 3 -1
       86 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["RoactCompat"]
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
