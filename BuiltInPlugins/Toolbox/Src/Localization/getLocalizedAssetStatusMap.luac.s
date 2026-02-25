PROTO_0:
        0 NEWTABLE                         R1 8 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["ASSET_STATUS"]
        5 GETTABLEKS                       R2 R3 K1 ["ReviewPending"]
        7 LOADK                            R5 K2 ["General"]
        8 LOADK                            R6 K3 ["StatusReviewPending"]
        9 NAMECALL                         R3 R0 K4 ["getText"]
       11 CALL                             R3 3 1
       12 SETTABLE                         R3 R1 R2
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K0 ["ASSET_STATUS"]
       16 GETTABLEKS                       R2 R3 K5 ["Moderated"]
       18 LOADK                            R5 K2 ["General"]
       19 LOADK                            R6 K6 ["StatusModerated"]
       20 NAMECALL                         R3 R0 K4 ["getText"]
       22 CALL                             R3 3 1
       23 SETTABLE                         R3 R1 R2
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K0 ["ASSET_STATUS"]
       27 GETTABLEKS                       R2 R3 K7 ["ReviewApproved"]
       29 LOADK                            R5 K2 ["General"]
       30 LOADK                            R6 K8 ["StatusReviewApproved"]
       31 NAMECALL                         R3 R0 K4 ["getText"]
       33 CALL                             R3 3 1
       34 SETTABLE                         R3 R1 R2
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R3 R4 K0 ["ASSET_STATUS"]
       38 GETTABLEKS                       R2 R3 K9 ["OnSale"]
       40 LOADK                            R5 K2 ["General"]
       41 LOADK                            R6 K10 ["StatusOnSale"]
       42 NAMECALL                         R3 R0 K4 ["getText"]
       44 CALL                             R3 3 1
       45 SETTABLE                         R3 R1 R2
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R3 R4 K0 ["ASSET_STATUS"]
       49 GETTABLEKS                       R2 R3 K11 ["OffSale"]
       51 LOADK                            R5 K2 ["General"]
       52 LOADK                            R6 K12 ["StatusOffSale"]
       53 NAMECALL                         R3 R0 K4 ["getText"]
       55 CALL                             R3 3 1
       56 SETTABLE                         R3 R1 R2
       57 GETUPVAL                         R4 0
       58 GETTABLEKS                       R3 R4 K0 ["ASSET_STATUS"]
       60 GETTABLEKS                       R2 R3 K13 ["DelayedRelease"]
       62 LOADK                            R5 K2 ["General"]
       63 LOADK                            R6 K14 ["StatusDelayedRelease"]
       64 NAMECALL                         R3 R0 K4 ["getText"]
       66 CALL                             R3 3 1
       67 SETTABLE                         R3 R1 R2
       68 GETUPVAL                         R4 0
       69 GETTABLEKS                       R3 R4 K0 ["ASSET_STATUS"]
       71 GETTABLEKS                       R2 R3 K15 ["Free"]
       73 LOADK                            R5 K2 ["General"]
       74 LOADK                            R6 K15 ["Free"]
       75 NAMECALL                         R3 R0 K4 ["getText"]
       77 CALL                             R3 3 1
       78 SETTABLE                         R3 R1 R2
       79 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["AssetConfigConstants"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
