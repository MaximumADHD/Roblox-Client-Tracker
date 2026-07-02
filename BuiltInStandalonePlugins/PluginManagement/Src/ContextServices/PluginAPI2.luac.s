PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["PluginAPI2 is deprecated with FFlagStudioPluginManagementUpgradeHttp"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 DUPTABLE                         R1 K4 [{"api"}]
       10 SETTABLEKS                       R0 R1 K3 ["api"]
       12 GETUPVAL                         R4 1
       13 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       15 MOVE                             R3 R1
       16 GETIMPORT                        R2 K6 [setmetatable]
       18 CALL                             R2 2 0
       19 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["api"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioPluginManagementUpgradeHttp"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K8 ["Packages"]
       22 GETTABLEKS                       R3 R3 K9 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R2 R2 K10 ["ContextServices"]
       27 GETTABLEKS                       R2 R2 K11 ["ContextItem"]
       29 LOADK                            R5 K12 ["RobloxAPI"]
       30 NAMECALL                         R3 R2 K13 ["extend"]
       32 CALL                             R3 2 1
       33 DUPCLOSURE                       R4 K14 [PROTO_0]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R3
       36 SETTABLEKS                       R4 R3 K15 ["new"]
       38 DUPCLOSURE                       R4 K16 [PROTO_1]
       39 SETTABLEKS                       R4 R3 K17 ["get"]
       41 RETURN                           R3 1
