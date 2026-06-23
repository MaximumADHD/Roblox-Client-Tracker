PROTO_0:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 ["Plugin must be provided to non-testing registerPluginStyles"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["Styling"]
       10 GETTABLEKS                       R1 R1 K4 ["registerPluginStyles"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Interfaces"]
       22 GETTABLEKS                       R3 R3 K11 ["InterfaceTypes"]
       24 CALL                             R2 1 1
       25 DUPTABLE                         R3 K13 [{"registerPluginStyles"}]
       26 DUPCLOSURE                       R4 K14 [PROTO_0]
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R4 R3 K12 ["registerPluginStyles"]
       30 RETURN                           R3 1
