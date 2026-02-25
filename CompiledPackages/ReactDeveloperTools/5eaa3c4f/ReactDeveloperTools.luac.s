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
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["HasInternalPermission"]
        3 CALL                             R1 1 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R0 K1 ["forceEnable"]
        8 JUMPIFNOT                        R2 ; [+2]
        9 LOADB                            R1 1
       10 JUMP                             ; [+7]
       11 GETTABLEKS                       R2 R0 K2 ["pluginName"]
       13 GETUPVAL                         R3 1
       14 JUMPIFEQ                         R3 R2 ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 JUMPIF                           R1 ; [+1]
       19 RETURN                           R0 0
       20 GETIMPORT                        R2 K4 [require]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R3 R4 K5 ["ReactGlobals"]
       25 CALL                             R2 1 1
       26 LOADB                            R3 1
       27 SETTABLEKS                       R3 R2 K6 ["__PROFILE__"]
       29 LOADB                            R3 1
       30 SETTABLEKS                       R3 R2 K7 ["__DEV__"]
       32 GETIMPORT                        R3 K4 [require]
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R4 R5 K8 ["ReactDevtoolsCore"]
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R5 R3 K9 ["backend"]
       40 GETTABLEKS                       R4 R5 K10 ["connectToDevtools"]
       42 DUPTABLE                         R5 K14 [{"host", "port", "profileOnStart"}]
       43 GETUPVAL                         R6 3
       44 SETTABLEKS                       R6 R5 K11 ["host"]
       46 GETUPVAL                         R6 4
       47 SETTABLEKS                       R6 R5 K12 ["port"]
       49 GETTABLEKS                       R6 R0 K13 ["profileOnStart"]
       51 SETTABLEKS                       R6 R5 K13 ["profileOnStart"]
       53 CALL                             R4 1 0
       54 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R2 K5 [script]
        9 GETTABLEKS                       R1 R2 K6 ["Parent"]
       11 GETIMPORT                        R2 K1 [game]
       13 LOADK                            R4 K7 ["DebugReactDevToolsPluginName"]
       14 LOADK                            R5 K8 [""]
       15 NAMECALL                         R2 R2 K9 ["DefineFastString"]
       17 CALL                             R2 3 1
       18 GETIMPORT                        R3 K1 [game]
       20 LOADK                            R5 K10 ["DebugStudioReactDevToolsHost"]
       21 LOADK                            R6 K11 ["localhost"]
       22 NAMECALL                         R3 R3 K9 ["DefineFastString"]
       24 CALL                             R3 3 1
       25 GETIMPORT                        R4 K1 [game]
       27 LOADK                            R6 K12 ["DebugStudioReactDevToolsPort"]
       28 LOADN                            R7 161
       29 NAMECALL                         R4 R4 K13 ["DefineFastInt"]
       31 CALL                             R4 3 1
       32 DUPCLOSURE                       R5 K14 [PROTO_0]
       33 CAPTURE                          VAL R2
       34 DUPCLOSURE                       R6 K15 [PROTO_1]
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R4
       40 DUPTABLE                         R7 K17 [{"tryEnableDevtools"}]
       41 SETTABLEKS                       R6 R7 K16 ["tryEnableDevtools"]
       43 RETURN                           R7 1
