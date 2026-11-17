PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ListRowIconPadding"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Enums"]
        6 GETTABLEKS                       R2 R2 K2 ["IconSize"]
        8 GETTABLEKS                       R2 R2 K3 ["XSmall"]
       10 GETTABLEKS                       R3 R0 K4 ["IsGrid"]
       12 JUMPIFNOT                        R3 ; [+10]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R1 R3 K5 ["GridCellIconPadding"]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K1 ["Enums"]
       19 GETTABLEKS                       R3 R3 K2 ["IconSize"]
       21 GETTABLEKS                       R2 R3 K6 ["Small"]
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R3 R3 K7 ["createElement"]
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K8 ["View"]
       29 DUPTABLE                         R5 K16 [{["ZIndex"] = 2, ["Position"], ["tag"] = "auto-xy anchor-bottom-right", ["testId"] = "package-link-icon"}]
       30 GETIMPORT                        R6 K19 [UDim2.new]
       32 LOADN                            R7 1
       33 MINUS                            R8 R1
       34 LOADN                            R9 1
       35 MINUS                            R10 R1
       36 CALL                             R6 4 1
       37 SETTABLEKS                       R6 R5 K11 ["Position"]
       39 GETUPVAL                         R6 2
       40 GETTABLEKS                       R6 R6 K7 ["createElement"]
       42 GETUPVAL                         R7 1
       43 GETTABLEKS                       R7 R7 K20 ["Icon"]
       45 DUPTABLE                         R8 K23 [{"name", "size"}]
       46 GETUPVAL                         R9 1
       47 GETTABLEKS                       R9 R9 K1 ["Enums"]
       49 GETTABLEKS                       R9 R9 K24 ["IconName"]
       51 GETTABLEKS                       R9 R9 K25 ["ChainLink"]
       53 SETTABLEKS                       R9 R8 K21 ["name"]
       55 SETTABLEKS                       R2 R8 K22 ["size"]
       57 CALL                             R6 2 -1
       58 CALL                             R3 -1 -1
       59 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Resources"]
       27 GETTABLEKS                       R4 R4 K11 ["StyleConstants"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R1
       34 RETURN                           R4 1
