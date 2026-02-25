PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["should be using DEPRECATED_registerPluginStyles when FFlagPreviewToolbar is disabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 FASTCALL2K                       ASSERT R0 K3 ; [+5]
       10 MOVE                             R2 R0
       11 LOADK                            R3 K3 ["Plugin must be provided to non-testing registerPluginStyles"]
       12 GETIMPORT                        R1 K2 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K4 ["Styling"]
       18 GETTABLEKS                       R1 R2 K5 ["registerPluginStyles"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 -1
       22 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Src"]
       18 GETTABLEKS                       R5 R6 K9 ["Util"]
       20 GETTABLEKS                       R4 R5 K10 ["Interfaces"]
       22 GETTABLEKS                       R3 R4 K11 ["InterfaceTypes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K8 ["Src"]
       29 GETTABLEKS                       R5 R6 K12 ["Flags"]
       31 GETTABLEKS                       R4 R5 K13 ["getFFlagPreviewToolbar"]
       33 CALL                             R3 1 1
       34 DUPTABLE                         R4 K16 [{"DEPRECATED_registerPluginStyles", "registerPluginStyles"}]
       35 GETTABLEKS                       R6 R1 K17 ["Styling"]
       37 GETTABLEKS                       R5 R6 K15 ["registerPluginStyles"]
       39 SETTABLEKS                       R5 R4 K14 ["DEPRECATED_registerPluginStyles"]
       41 DUPCLOSURE                       R5 K18 [PROTO_0]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R1
       44 SETTABLEKS                       R5 R4 K15 ["registerPluginStyles"]
       46 RETURN                           R4 1
