PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Provider"]
        6 DUPTABLE                         R4 K3 [{"localization"}]
        7 MOVE                             R5 R1
        8 JUMPIF                           R5 ; [+1]
        9 GETUPVAL                         R5 2
       10 SETTABLEKS                       R5 R4 K2 ["localization"]
       12 MOVE                             R5 R0
       13 CALL                             R2 3 -1
       14 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Localization"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K10 ["new"]
       23 DUPTABLE                         R4 K13 [{["overrideLocaleId"] = "en-us"}]
       24 CALL                             R3 1 1
       25 NEWTABLE                         R4 2 0
       27 DUPCLOSURE                       R5 K14 [PROTO_0]
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R5 R4 K15 ["get"]
       31 DUPCLOSURE                       R5 K16 [PROTO_1]
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 SETTABLEKS                       R5 R4 K17 ["wrap"]
       37 RETURN                           R4 1
