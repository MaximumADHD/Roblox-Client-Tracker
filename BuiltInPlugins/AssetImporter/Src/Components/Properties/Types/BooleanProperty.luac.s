PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{"OnClick", "LayoutOrder", "Checked"}]
        5 GETTABLEKS                       R4 R0 K5 ["OnToggleItem"]
        7 SETTABLEKS                       R4 R3 K1 ["OnClick"]
        9 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
       11 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       13 GETTABLEKS                       R4 R0 K6 ["Value"]
       15 SETTABLEKS                       R4 R3 K3 ["Checked"]
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1

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
       23 GETTABLEKS                       R4 R3 K10 ["Checkbox"]
       25 DUPCLOSURE                       R5 K11 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R4
       28 RETURN                           R5 1
