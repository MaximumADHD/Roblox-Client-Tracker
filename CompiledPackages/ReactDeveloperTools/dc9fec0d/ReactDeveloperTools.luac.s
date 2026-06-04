PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["forceEnable"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADB                            R1 1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K1 ["pluginName"]
        7 GETUPVAL                         R3 0
        8 JUMPIFEQ                         R3 R1 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["forceEnable"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADB                            R1 1
        4 JUMP                             ; [+7]
        5 GETTABLEKS                       R2 R0 K1 ["pluginName"]
        7 GETUPVAL                         R3 0
        8 JUMPIFEQ                         R3 R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 JUMPIF                           R1 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K2 ["IsLoggedIn"]
       17 JUMPIFNOT                        R2 ; [+5]
       18 GETUPVAL                         R2 2
       19 NAMECALL                         R2 R2 K3 ["HasInternalPermission"]
       21 CALL                             R2 1 1
       22 JUMPIF                           R2 ; [+1]
       23 RETURN                           R0 0
       24 GETIMPORT                        R2 K5 [require]
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R3 R3 K6 ["ReactGlobals"]
       29 CALL                             R2 1 1
       30 LOADB                            R3 1
       31 SETTABLEKS                       R3 R2 K7 ["__PROFILE__"]
       33 LOADB                            R3 1
       34 SETTABLEKS                       R3 R2 K8 ["__DEV__"]
       36 GETIMPORT                        R3 K5 [require]
       38 GETUPVAL                         R4 3
       39 GETTABLEKS                       R4 R4 K9 ["ReactDevtoolsCore"]
       41 CALL                             R3 1 1
       42 GETTABLEKS                       R4 R3 K10 ["backend"]
       44 GETTABLEKS                       R4 R4 K11 ["connectToDevtools"]
       46 DUPTABLE                         R5 K15 [{"host", "port", "profileOnStart"}]
       47 GETUPVAL                         R6 4
       48 SETTABLEKS                       R6 R5 K12 ["host"]
       50 GETUPVAL                         R6 5
       51 SETTABLEKS                       R6 R5 K13 ["port"]
       53 GETTABLEKS                       R6 R0 K14 ["profileOnStart"]
       55 SETTABLEKS                       R6 R5 K14 ["profileOnStart"]
       57 CALL                             R4 1 0
       58 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioUserService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETIMPORT                        R3 K1 [game]
       19 LOADK                            R5 K8 ["DebugReactDevToolsPluginName"]
       20 LOADK                            R6 K9 [""]
       21 NAMECALL                         R3 R3 K10 ["DefineFastString"]
       23 CALL                             R3 3 1
       24 GETIMPORT                        R4 K1 [game]
       26 LOADK                            R6 K11 ["DebugStudioReactDevToolsHost"]
       27 LOADK                            R7 K12 ["localhost"]
       28 NAMECALL                         R4 R4 K10 ["DefineFastString"]
       30 CALL                             R4 3 1
       31 GETIMPORT                        R5 K1 [game]
       33 LOADK                            R7 K13 ["DebugStudioReactDevToolsPort"]
       34 LOADN                            R8 161
       35 NAMECALL                         R5 R5 K14 ["DefineFastInt"]
       37 CALL                             R5 3 1
       38 DUPCLOSURE                       R6 K15 [PROTO_0]
       39 CAPTURE                          VAL R3
       40 DUPCLOSURE                       R7 K16 [PROTO_1]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R5
       47 DUPTABLE                         R8 K18 [{"tryEnableDevtools"}]
       48 SETTABLEKS                       R7 R8 K17 ["tryEnableDevtools"]
       50 RETURN                           R8 1
