PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 DUPTABLE                         R4 K5 [{[1] = "col align-x-center size-full-full padding-x-small padding-y-small clip", ["onActivated"], ["testId"] = "AssetItem"}]
        5 GETTABLEKS                       R5 R0 K2 ["onActivated"]
        7 SETTABLEKS                       R5 R4 K2 ["onActivated"]
        9 DUPTABLE                         R5 K9 [{"Thumbnail", "Name", "LastUpdated"}]
       10 GETUPVAL                         R6 1
       11 GETUPVAL                         R7 3
       12 GETTABLEKS                       R7 R7 K10 ["Image"]
       14 DUPTABLE                         R8 K13 [{[1] = "size-1200 radius-small", ["LayoutOrder"], ["Image"]}]
       15 MOVE                             R9 R1
       16 CALL                             R9 0 1
       17 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       19 GETTABLEKS                       R9 R0 K14 ["thumbnailUri"]
       21 SETTABLEKS                       R9 R8 K10 ["Image"]
       23 CALL                             R6 2 1
       24 SETTABLEKS                       R6 R5 K6 ["Thumbnail"]
       26 GETUPVAL                         R6 1
       27 GETUPVAL                         R7 4
       28 DUPTABLE                         R8 K17 [{[1] = "fill size-full-0 text-body-small text-no-wrap text-align-x-left", ["LayoutOrder"], ["Text"]}]
       29 MOVE                             R9 R1
       30 CALL                             R9 0 1
       31 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       33 GETTABLEKS                       R9 R0 K18 ["displayName"]
       35 SETTABLEKS                       R9 R8 K16 ["Text"]
       37 CALL                             R6 2 1
       38 SETTABLEKS                       R6 R5 K7 ["Name"]
       40 GETUPVAL                         R6 1
       41 GETUPVAL                         R7 4
       42 DUPTABLE                         R8 K20 [{[1] = "fill size-full-0 text-caption-small text-no-wrap text-align-x-left content-inverse-muted", ["LayoutOrder"], ["Text"]}]
       43 MOVE                             R9 R1
       44 CALL                             R9 0 1
       45 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       47 GETTABLEKS                       R9 R0 K21 ["lastUpdated"]
       49 SETTABLEKS                       R9 R8 K16 ["Text"]
       51 CALL                             R6 2 1
       52 SETTABLEKS                       R6 R5 K8 ["LastUpdated"]
       54 CALL                             R2 3 -1
       55 RETURN                           R2 -1

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
