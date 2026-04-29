PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 DUPTABLE                         R4 K3 [{"tag", "onActivated", "testId"}]
        5 LOADK                            R5 K4 ["size-full-full clip padding-x-small padding-y-small col align-x-center"]
        6 SETTABLEKS                       R5 R4 K0 ["tag"]
        8 GETTABLEKS                       R5 R0 K1 ["onActivated"]
       10 SETTABLEKS                       R5 R4 K1 ["onActivated"]
       12 LOADK                            R5 K5 ["AssetItem"]
       13 SETTABLEKS                       R5 R4 K2 ["testId"]
       15 DUPTABLE                         R5 K9 [{"Thumbnail", "Name", "LastUpdated"}]
       16 GETUPVAL                         R6 1
       17 GETUPVAL                         R8 3
       18 GETTABLEKS                       R7 R8 K10 ["Image"]
       20 DUPTABLE                         R8 K12 [{"tag", "LayoutOrder", "Image"}]
       21 LOADK                            R9 K13 ["size-1200 radius-small"]
       22 SETTABLEKS                       R9 R8 K0 ["tag"]
       24 MOVE                             R9 R1
       25 CALL                             R9 0 1
       26 SETTABLEKS                       R9 R8 K11 ["LayoutOrder"]
       28 GETTABLEKS                       R9 R0 K14 ["thumbnailUri"]
       30 SETTABLEKS                       R9 R8 K10 ["Image"]
       32 CALL                             R6 2 1
       33 SETTABLEKS                       R6 R5 K6 ["Thumbnail"]
       35 GETUPVAL                         R6 1
       36 GETUPVAL                         R7 4
       37 DUPTABLE                         R8 K16 [{"tag", "LayoutOrder", "Text"}]
       38 LOADK                            R9 K17 ["size-full-0 fill text-body-small text-align-x-left text-no-wrap"]
       39 SETTABLEKS                       R9 R8 K0 ["tag"]
       41 MOVE                             R9 R1
       42 CALL                             R9 0 1
       43 SETTABLEKS                       R9 R8 K11 ["LayoutOrder"]
       45 GETTABLEKS                       R9 R0 K18 ["displayName"]
       47 SETTABLEKS                       R9 R8 K15 ["Text"]
       49 CALL                             R6 2 1
       50 SETTABLEKS                       R6 R5 K7 ["Name"]
       52 GETUPVAL                         R6 1
       53 GETUPVAL                         R7 4
       54 DUPTABLE                         R8 K16 [{"tag", "LayoutOrder", "Text"}]
       55 LOADK                            R9 K19 ["size-full-0 fill text-caption-small text-align-x-left text-no-wrap content-inverse-muted"]
       56 SETTABLEKS                       R9 R8 K0 ["tag"]
       58 MOVE                             R9 R1
       59 CALL                             R9 0 1
       60 SETTABLEKS                       R9 R8 K11 ["LayoutOrder"]
       62 GETTABLEKS                       R9 R0 K20 ["lastUpdated"]
       64 SETTABLEKS                       R9 R8 K15 ["Text"]
       66 CALL                             R6 2 1
       67 SETTABLEKS                       R6 R5 K8 ["LastUpdated"]
       69 CALL                             R2 3 -1
       70 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R2 K10 ["Text"]
       26 GETTABLEKS                       R6 R2 K11 ["View"]
       28 GETTABLEKS                       R7 R4 K12 ["createNextOrder"]
       30 GETTABLEKS                       R8 R3 K13 ["createElement"]
       32 DUPCLOSURE                       R9 K14 [PROTO_0]
       33 CAPTURE                          VAL R7
       34 CAPTURE                          VAL R8
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R5
       38 RETURN                           R9 1
