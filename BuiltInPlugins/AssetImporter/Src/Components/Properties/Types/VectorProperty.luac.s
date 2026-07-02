PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Value"]
        2 LOADK                            R2 K1 ["%.2f, %.2f, %.2f"]
        3 GETTABLEKS                       R4 R1 K2 ["X"]
        5 GETTABLEKS                       R5 R1 K3 ["Y"]
        7 GETTABLEKS                       R6 R1 K4 ["Z"]
        9 NAMECALL                         R2 R2 K5 ["format"]
       11 CALL                             R2 4 1
       12 GETTABLEKS                       R3 R0 K6 ["Editable"]
       14 JUMPIFEQKNIL                     R3 ; [+44]
       16 GETTABLEKS                       R3 R0 K6 ["Editable"]
       18 JUMPIF                           R3 ; [+40]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K7 ["createElement"]
       22 GETUPVAL                         R4 1
       23 DUPTABLE                         R5 K13 [{"LayoutOrder", "Size", "AutomaticSize", "Text", "TextXAlignment"}]
       24 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       26 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       28 GETIMPORT                        R6 K16 [UDim2.new]
       30 LOADN                            R7 0
       31 LOADN                            R8 0
       32 GETTABLEKS                       R9 R0 K9 ["Size"]
       34 GETTABLEKS                       R9 R9 K3 ["Y"]
       36 GETTABLEKS                       R9 R9 K17 ["Scale"]
       38 GETTABLEKS                       R10 R0 K9 ["Size"]
       40 GETTABLEKS                       R10 R10 K3 ["Y"]
       42 GETTABLEKS                       R10 R10 K18 ["Offset"]
       44 CALL                             R6 4 1
       45 SETTABLEKS                       R6 R5 K9 ["Size"]
       47 GETIMPORT                        R6 K20 [Enum.AutomaticSize.X]
       49 SETTABLEKS                       R6 R5 K10 ["AutomaticSize"]
       51 SETTABLEKS                       R2 R5 K11 ["Text"]
       53 GETIMPORT                        R6 K22 [Enum.TextXAlignment.Left]
       55 SETTABLEKS                       R6 R5 K12 ["TextXAlignment"]
       57 CALL                             R3 2 -1
       58 RETURN                           R3 -1
       59 GETUPVAL                         R3 0
       60 GETTABLEKS                       R3 R3 K7 ["createElement"]
       62 GETUPVAL                         R4 2
       63 DUPTABLE                         R5 K25 [{["Disabled"] = True, ["LayoutOrder"], ["Size"], ["Text"]}]
       64 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       66 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       68 GETTABLEKS                       R6 R0 K9 ["Size"]
       70 SETTABLEKS                       R6 R5 K9 ["Size"]
       72 SETTABLEKS                       R2 R5 K11 ["Text"]
       74 CALL                             R3 2 -1
       75 RETURN                           R3 -1

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
       23 GETTABLEKS                       R4 R3 K10 ["TextInput"]
       25 GETTABLEKS                       R5 R3 K11 ["TextLabel"]
       27 DUPCLOSURE                       R6 K12 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R5
       30 CAPTURE                          VAL R4
       31 RETURN                           R6 1
