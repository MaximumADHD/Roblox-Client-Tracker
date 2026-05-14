PROTO_0:
        0 LOADN                            R3 0
        1 JUMPIFNOTLT                      R3 R0 ; [+25]
        3 JUMPIFNOT                        R2 ; [+15]
        4 LOADK                            R5 K0 ["AssetConfig"]
        5 LOADK                            R6 K1 ["SomethingWentWrongMsgWithDashboardLink"]
        6 DUPTABLE                         R7 K3 [{"creatorDashboardLink"}]
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R8 R8 K4 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
       10 SETTABLEKS                       R8 R7 K2 ["creatorDashboardLink"]
       12 NAMECALL                         R3 R1 K5 ["getText"]
       14 CALL                             R3 4 1
       15 LOADK                            R5 K6 ["\n"]
       16 MOVE                             R6 R3
       17 CONCAT                           R4 R5 R6
       18 RETURN                           R4 1
       19 LOADK                            R4 K6 ["\n"]
       20 LOADK                            R7 K0 ["AssetConfig"]
       21 LOADK                            R8 K7 ["CreateBundleNoRobuxDeducted"]
       22 NAMECALL                         R5 R1 K5 ["getText"]
       24 CALL                             R5 3 1
       25 CONCAT                           R3 R4 R5
       26 RETURN                           R3 1
       27 LOADK                            R3 K8 [""]
       28 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["Constants"]
       15 CALL                             R2 1 1
       16 DUPCLOSURE                       R3 K9 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
