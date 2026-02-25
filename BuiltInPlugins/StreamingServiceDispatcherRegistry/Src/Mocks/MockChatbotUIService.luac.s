PROTO_0:
        0 NEWTABLE                         R0 8 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [setmetatable]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K2 ["new"]
       12 CALL                             R1 0 1
       13 SETTABLEKS                       R1 R0 K3 ["ShiftVariationSignal"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R1 R2 K2 ["new"]
       18 CALL                             R1 0 1
       19 SETTABLEKS                       R1 R0 K4 ["ShiftToAssetIdSignal"]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R1 R2 K2 ["new"]
       24 CALL                             R1 0 1
       25 SETTABLEKS                       R1 R0 K5 ["ActionActivatedSignal"]
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R1 R2 K2 ["new"]
       30 CALL                             R1 0 1
       31 SETTABLEKS                       R1 R0 K6 ["FindVariationsSignal"]
       33 GETUPVAL                         R2 1
       34 GETTABLEKS                       R1 R2 K2 ["new"]
       36 CALL                             R1 0 1
       37 SETTABLEKS                       R1 R0 K7 ["SetMaterialSettingsSignal"]
       39 GETUPVAL                         R2 1
       40 GETTABLEKS                       R1 R2 K2 ["new"]
       42 CALL                             R1 0 1
       43 SETTABLEKS                       R1 R0 K8 ["SettingChangedSignal"]
       45 DUPTABLE                         R1 K10 [{"AutoRunCode"}]
       46 LOADB                            R2 1
       47 SETTABLEKS                       R2 R1 K9 ["AutoRunCode"]
       49 SETTABLEKS                       R1 R0 K11 ["settings"]
       51 NEWTABLE                         R1 0 0
       53 SETTABLEKS                       R1 R0 K12 ["displayContentCalls"]
       55 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["displayContentCalls"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+5]
        4 GETTABLEKS                       R3 R0 K0 ["displayContentCalls"]
        6 NEWTABLE                         R4 0 0
        8 SETTABLE                         R4 R3 R1
        9 GETTABLEKS                       R5 R0 K0 ["displayContentCalls"]
       11 GETTABLE                         R4 R5 R1
       12 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       14 MOVE                             R5 R2
       15 GETIMPORT                        R3 K3 [table.insert]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["settings"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R3 K9 ["Signal"]
       18 NEWTABLE                         R3 4 0
       20 SETTABLEKS                       R3 R3 K10 ["__index"]
       22 DUPCLOSURE                       R4 K11 [PROTO_0]
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R4 R3 K12 ["new"]
       27 DUPCLOSURE                       R4 K13 [PROTO_1]
       28 SETTABLEKS                       R4 R3 K14 ["DisplayContent"]
       30 DUPCLOSURE                       R4 K15 [PROTO_2]
       31 SETTABLEKS                       R4 R3 K16 ["GetSettings"]
       33 RETURN                           R3 1
