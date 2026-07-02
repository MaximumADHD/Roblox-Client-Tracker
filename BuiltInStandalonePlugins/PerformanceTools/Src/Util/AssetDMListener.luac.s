PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K2 [{"currentData", "providerFunction"}]
        1 DUPTABLE                         R1 K24 [{["maxTriangles"] = 1000000, ["maxDrawCalls"] = 1000, ["defaultMaxTriangles"] = 1000000, ["defaultMaxDrawCalls"] = 1000, ["maxTotalRenderMs"] = 14, ["maxTotalTaskMs"] = 14, ["defaultMaxRenderMs"] = 14, ["defaultMaxTaskMs"] = 14, ["triangleCount"] = 0, ["drawCallCount"] = 0, ["renderThreadAverageMs"] = 0, ["taskThreadAverageMs"] = 0, ["isEditDM"] = True, ["microprofilerVisible"] = False, ["automaticGraphicsQuality"] = 0}]
        2 SETTABLEKS                       R1 R0 K0 ["currentData"]
        4 DUPCLOSURE                       R1 K25 [PROTO_0]
        5 SETTABLEKS                       R1 R0 K1 ["providerFunction"]
        7 GETUPVAL                         R3 0
        8 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K27 [setmetatable]
       13 CALL                             R1 2 0
       14 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["currentData"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["Theme"]
        7 GETTABLEKS                       R0 R0 K4 ["Name"]
        9 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_3]
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R0 ; [+2]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R1 1
        7 LOADK                            R2 K3 ["Dark"]
        8 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 GETTABLEKS                       R3 R0 K2 ["currentData"]
        7 MOVE                             R4 R1
        8 CALL                             R2 2 1
        9 SETTABLEKS                       R2 R0 K2 ["currentData"]
       11 GETTABLEKS                       R2 R0 K2 ["currentData"]
       13 GETGLOBAL                        R3 K3 ["getStudioTheme"]
       15 CALL                             R3 0 1
       16 JUMPIFNOTEQKS                    R3 K4 ["Light"] ; [+7]
       18 GETTABLEKS                       R4 R0 K5 ["mainButton"]
       20 LOADK                            R5 K6 ["rbxasset://studio_svg_textures/Lua/FileSync/Light/Standard/Info.png"]
       21 SETTABLEKS                       R5 R4 K7 ["Icon"]
       23 JUMP                             ; [+5]
       24 GETTABLEKS                       R4 R0 K5 ["mainButton"]
       26 LOADK                            R5 K8 ["rbxasset://studio_svg_textures/Lua/FileSync/Dark/Standard/Info.png"]
       27 SETTABLEKS                       R5 R4 K7 ["Icon"]
       29 GETTABLEKS                       R4 R0 K9 ["providerFunction"]
       31 JUMPIFNOT                        R4 ; [+4]
       32 GETTABLEKS                       R4 R0 K9 ["providerFunction"]
       34 MOVE                             R5 R2
       35 CALL                             R4 1 0
       36 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["refreshState"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 SETTABLEKS                       R2 R0 K0 ["mainButton"]
        2 GETTABLEKS                       R3 R0 K1 ["currentData"]
        4 GETUPVAL                         R8 0
        5 GETTABLEKS                       R8 R8 K3 ["SettingsPrefix"]
        7 LOADK                            R9 K4 ["maxTriangles"]
        8 CONCAT                           R7 R8 R9
        9 NAMECALL                         R5 R1 K5 ["GetSetting"]
       11 CALL                             R5 2 1
       12 ORK                              R4 R5 K2 [1000000]
       13 SETTABLEKS                       R4 R3 K4 ["maxTriangles"]
       15 GETTABLEKS                       R3 R0 K1 ["currentData"]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R8 R8 K3 ["SettingsPrefix"]
       20 LOADK                            R9 K7 ["maxDrawCalls"]
       21 CONCAT                           R7 R8 R9
       22 NAMECALL                         R5 R1 K5 ["GetSetting"]
       24 CALL                             R5 2 1
       25 ORK                              R4 R5 K6 [1000]
       26 SETTABLEKS                       R4 R3 K7 ["maxDrawCalls"]
       28 GETTABLEKS                       R3 R0 K1 ["currentData"]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K3 ["SettingsPrefix"]
       33 LOADK                            R9 K9 ["maxTotalRenderMs"]
       34 CONCAT                           R7 R8 R9
       35 NAMECALL                         R5 R1 K5 ["GetSetting"]
       37 CALL                             R5 2 1
       38 ORK                              R4 R5 K8 [14]
       39 SETTABLEKS                       R4 R3 K9 ["maxTotalRenderMs"]
       41 GETTABLEKS                       R3 R0 K1 ["currentData"]
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R8 R8 K3 ["SettingsPrefix"]
       46 LOADK                            R9 K10 ["maxTotalTaskMs"]
       47 CONCAT                           R7 R8 R9
       48 NAMECALL                         R5 R1 K5 ["GetSetting"]
       50 CALL                             R5 2 1
       51 ORK                              R4 R5 K8 [14]
       52 SETTABLEKS                       R4 R3 K10 ["maxTotalTaskMs"]
       54 LOADK                            R5 K11 ["SetStateAndRefresh"]
       55 NEWCLOSURE                       R6 P0
       56 CAPTURE                          VAL R0
       57 NAMECALL                         R3 R1 K12 ["OnInvoke"]
       59 CALL                             R3 3 1
       60 SETTABLEKS                       R3 R0 K13 ["setStateAndRefreshConnection"]
       62 GETTABLEKS                       R3 R0 K13 ["setStateAndRefreshConnection"]
       64 LOADK                            R4 K14 ["setStateAndRefresh"]
       65 SETTABLEKS                       R4 R3 K15 ["Name"]
       67 RETURN                           R0 0

PROTO_8:
        0 SETTABLEKS                       R1 R0 K0 ["providerFunction"]
        2 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["setStateAndRefreshConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["ThermometerConstants"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 8 0
       25 SETTABLEKS                       R3 R3 K11 ["__index"]
       27 DUPCLOSURE                       R4 K12 [PROTO_1]
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R4 R3 K13 ["new"]
       31 DUPCLOSURE                       R4 K14 [PROTO_2]
       32 SETTABLEKS                       R4 R3 K15 ["getCurrentState"]
       34 DUPCLOSURE                       R4 K16 [PROTO_4]
       35 SETGLOBAL                        R4 K17 ["getStudioTheme"]
       37 DUPCLOSURE                       R4 K18 [PROTO_5]
       38 CAPTURE                          VAL R1
       39 SETTABLEKS                       R4 R3 K19 ["refreshState"]
       41 DUPCLOSURE                       R4 K20 [PROTO_7]
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R4 R3 K21 ["connect"]
       45 DUPCLOSURE                       R4 K22 [PROTO_8]
       46 SETTABLEKS                       R4 R3 K23 ["setContextProviderFunction"]
       48 DUPCLOSURE                       R4 K24 [PROTO_9]
       49 SETTABLEKS                       R4 R3 K25 ["disconnect"]
       51 RETURN                           R3 1
