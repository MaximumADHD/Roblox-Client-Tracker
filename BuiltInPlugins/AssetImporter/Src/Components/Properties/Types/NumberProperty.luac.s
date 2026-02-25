PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Value"]
        2 FASTCALL1                        TOSTRING R2 ; [+2]
        3 GETIMPORT                        R1 K2 [tostring]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R2 R0 K3 ["Editable"]
        8 JUMPIFEQKNIL                     R2 ; [+44]
       10 GETTABLEKS                       R2 R0 K3 ["Editable"]
       12 JUMPIF                           R2 ; [+40]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K4 ["createElement"]
       16 GETUPVAL                         R3 1
       17 DUPTABLE                         R4 K10 [{"LayoutOrder", "Size", "AutomaticSize", "Text", "TextXAlignment"}]
       18 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       20 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       22 GETIMPORT                        R5 K13 [UDim2.new]
       24 LOADN                            R6 0
       25 LOADN                            R7 0
       26 GETTABLEKS                       R10 R0 K6 ["Size"]
       28 GETTABLEKS                       R9 R10 K14 ["Y"]
       30 GETTABLEKS                       R8 R9 K15 ["Scale"]
       32 GETTABLEKS                       R11 R0 K6 ["Size"]
       34 GETTABLEKS                       R10 R11 K14 ["Y"]
       36 GETTABLEKS                       R9 R10 K16 ["Offset"]
       38 CALL                             R5 4 1
       39 SETTABLEKS                       R5 R4 K6 ["Size"]
       41 GETIMPORT                        R5 K19 [Enum.AutomaticSize.X]
       43 SETTABLEKS                       R5 R4 K7 ["AutomaticSize"]
       45 SETTABLEKS                       R1 R4 K8 ["Text"]
       47 GETIMPORT                        R5 K21 [Enum.TextXAlignment.Left]
       49 SETTABLEKS                       R5 R4 K9 ["TextXAlignment"]
       51 CALL                             R2 2 -1
       52 RETURN                           R2 -1
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R2 R3 K4 ["createElement"]
       56 GETUPVAL                         R3 2
       57 DUPTABLE                         R4 K23 [{"Disabled", "LayoutOrder", "Size", "Text"}]
       58 LOADB                            R5 1
       59 SETTABLEKS                       R5 R4 K22 ["Disabled"]
       61 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       63 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       65 GETTABLEKS                       R5 R0 K6 ["Size"]
       67 SETTABLEKS                       R5 R4 K6 ["Size"]
       69 SETTABLEKS                       R1 R4 K8 ["Text"]
       71 CALL                             R2 2 -1
       72 RETURN                           R2 -1

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
       23 GETTABLEKS                       R4 R3 K10 ["TextInput"]
       25 GETTABLEKS                       R5 R3 K11 ["TextLabel"]
       27 DUPCLOSURE                       R6 K12 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R5
       30 CAPTURE                          VAL R4
       31 RETURN                           R6 1
