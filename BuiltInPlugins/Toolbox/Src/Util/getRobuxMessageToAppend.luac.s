PROTO_0:
        0 LOADN                            R3 0
        1 JUMPIFNOTLT                      R3 R0 ; [+28]
        3 GETUPVAL                         R3 0
        4 CALL                             R3 0 1
        5 JUMPIFNOT                        R3 ; [+16]
        6 JUMPIFNOT                        R2 ; [+15]
        7 LOADK                            R5 K0 ["AssetConfig"]
        8 LOADK                            R6 K1 ["SomethingWentWrongMsgWithDashboardLink"]
        9 DUPTABLE                         R7 K3 [{"creatorDashboardLink"}]
       10 GETUPVAL                         R9 1
       11 GETTABLEKS                       R8 R9 K4 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
       13 SETTABLEKS                       R8 R7 K2 ["creatorDashboardLink"]
       15 NAMECALL                         R3 R1 K5 ["getText"]
       17 CALL                             R3 4 1
       18 LOADK                            R5 K6 ["\n"]
       19 MOVE                             R6 R3
       20 CONCAT                           R4 R5 R6
       21 RETURN                           R4 1
       22 LOADK                            R4 K6 ["\n"]
       23 LOADK                            R7 K0 ["AssetConfig"]
       24 LOADK                            R8 K7 ["CreateBundleNoRobuxDeducted"]
       25 NAMECALL                         R5 R1 K5 ["getText"]
       27 CALL                             R5 3 1
       28 CONCAT                           R3 R4 R5
       29 RETURN                           R3 1
       30 LOADK                            R3 K8 [""]
       31 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R2 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["Constants"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R5 R1 K9 ["SharedFlags"]
       20 GETTABLEKS                       R4 R5 K10 ["getFFlagEnableUnknownErrorCreatorDashboardMessage"]
       22 CALL                             R3 1 1
       23 DUPCLOSURE                       R4 K11 [PROTO_0]
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R2
       26 RETURN                           R4 1
