PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETIMPORT                        R1 K1 [warn]
        4 LOADK                            R2 K2 ["Plugin handle already exists"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0
        7 LOADB                            R1 1
        8 SETUPVAL                         R1 1
        9 GETIMPORT                        R1 K4 [plugin]
       11 LOADB                            R3 1
       12 NAMECALL                         R1 R1 K5 ["Activate"]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 2
       16 LOADB                            R3 1
       17 NAMECALL                         R1 R1 K6 ["SetActive"]
       19 CALL                             R1 2 0
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R1 R1 K7 ["mount"]
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R2 R2 K8 ["createElement"]
       26 GETUPVAL                         R3 4
       27 DUPTABLE                         R4 K14 [{"Mouse", "DraggerContext", "DraggerSchema", "DraggerSettings", "WasAutoSelected"}]
       28 GETIMPORT                        R5 K4 [plugin]
       30 NAMECALL                         R5 R5 K15 ["GetMouse"]
       32 CALL                             R5 1 1
       33 SETTABLEKS                       R5 R4 K9 ["Mouse"]
       35 GETUPVAL                         R5 5
       36 SETTABLEKS                       R5 R4 K10 ["DraggerContext"]
       38 GETUPVAL                         R5 6
       39 SETTABLEKS                       R5 R4 K11 ["DraggerSchema"]
       41 DUPTABLE                         R5 K21 [{["AnalyticsName"] = "Select", ["AllowDragSelect"] = True, ["AllowFreeformDrag"] = True}]
       42 SETTABLEKS                       R5 R4 K12 ["DraggerSettings"]
       44 SETTABLEKS                       R0 R4 K13 ["WasAutoSelected"]
       46 CALL                             R2 2 -1
       47 CALL                             R1 -1 1
       48 SETUPVAL                         R1 0
       49 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 LOADB                            R2 0
        4 NAMECALL                         R0 R0 K0 ["SetActive"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+7]
        9 GETUPVAL                         R0 3
       10 GETTABLEKS                       R0 R0 K1 ["unmount"]
       12 GETUPVAL                         R1 2
       13 CALL                             R0 1 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 2
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+16]
        2 LOADB                            R0 0
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R2 0
        6 NAMECALL                         R0 R0 K0 ["SetActive"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 JUMPIFNOT                        R0 ; [+7]
       11 GETUPVAL                         R0 3
       12 GETTABLEKS                       R0 R0 K1 ["unmount"]
       14 GETUPVAL                         R1 2
       15 CALL                             R0 1 0
       16 LOADNIL                          R0
       17 SETUPVAL                         R0 2
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+17]
        2 LOADB                            R0 0
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R2 0
        6 NAMECALL                         R0 R0 K0 ["SetActive"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 JUMPIFNOT                        R0 ; [+11]
       11 GETUPVAL                         R0 3
       12 GETTABLEKS                       R0 R0 K1 ["unmount"]
       14 GETUPVAL                         R1 2
       15 CALL                             R0 1 0
       16 LOADNIL                          R0
       17 SETUPVAL                         R0 2
       18 RETURN                           R0 0
       19 GETUPVAL                         R0 4
       20 LOADB                            R1 0
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [plugin]
        2 LOADK                            R1 K2 ["SelectDragger"]
        3 SETTABLEKS                       R1 R0 K3 ["Name"]
        5 GETIMPORT                        R0 K1 [plugin]
        7 LOADK                            R2 K4 ["Home"]
        8 NAMECALL                         R0 R0 K5 ["CreateToolbar"]
       10 CALL                             R0 2 1
       11 LOADK                            R3 K6 ["Select"]
       12 LOADK                            R4 K7 ["Select an Object"]
       13 LOADK                            R5 K8 [""]
       14 LOADK                            R6 K6 ["Select"]
       15 NAMECALL                         R1 R0 K9 ["CreateButton"]
       17 CALL                             R1 5 1
       18 SETUPVAL                         R1 0
       19 GETUPVAL                         R1 2
       20 GETTABLEKS                       R1 R1 K10 ["new"]
       22 GETIMPORT                        R2 K1 [plugin]
       24 GETIMPORT                        R3 K12 [game]
       26 GETIMPORT                        R4 K14 [settings]
       28 CALL                             R4 0 1
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K15 ["Selection"]
       32 GETTABLEKS                       R5 R5 K10 ["new"]
       34 CALL                             R5 0 -1
       35 CALL                             R1 -1 1
       36 SETUPVAL                         R1 1
       37 GETIMPORT                        R1 K1 [plugin]
       39 GETTABLEKS                       R1 R1 K16 ["Deactivation"]
       41 NEWCLOSURE                       R3 P0
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          UPVAL U6
       46 NAMECALL                         R1 R1 K17 ["Connect"]
       48 CALL                             R1 2 0
       49 GETUPVAL                         R1 0
       50 GETTABLEKS                       R1 R1 K18 ["Click"]
       52 NEWCLOSURE                       R3 P1
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          UPVAL U7
       58 NAMECALL                         R1 R1 K17 ["Connect"]
       60 CALL                             R1 2 0
       61 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R2 R1 K7 ["Packages"]
       15 GETTABLEKS                       R2 R2 K8 ["DraggerFramework"]
       17 GETIMPORT                        R3 K10 [require]
       19 GETTABLEKS                       R4 R1 K7 ["Packages"]
       21 GETTABLEKS                       R4 R4 K11 ["Roact"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R1 K7 ["Packages"]
       26 GETTABLEKS                       R4 R4 K12 ["DraggerSchemaCore"]
       28 GETIMPORT                        R5 K10 [require]
       30 GETTABLEKS                       R6 R4 K13 ["DraggerSchema"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K10 [require]
       35 GETTABLEKS                       R7 R2 K14 ["Implementation"]
       37 GETTABLEKS                       R7 R7 K15 ["DraggerContext_PluginImpl"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K10 [require]
       42 GETTABLEKS                       R8 R2 K16 ["DraggerTools"]
       44 GETTABLEKS                       R8 R8 K17 ["DraggerToolComponent"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K10 [require]
       49 GETTABLEKS                       R9 R2 K18 ["Utility"]
       51 GETTABLEKS                       R9 R9 K19 ["isCli"]
       53 CALL                             R8 1 1
       54 MOVE                             R9 R8
       55 CALL                             R9 0 1
       56 JUMPIFNOT                        R9 ; [+1]
       57 RETURN                           R0 0
       58 LOADNIL                          R9
       59 LOADB                            R10 0
       60 LOADNIL                          R11
       61 LOADNIL                          R12
       62 NEWCLOSURE                       R13 P0
       63 CAPTURE                          REF R11
       64 CAPTURE                          REF R10
       65 CAPTURE                          REF R12
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R7
       68 CAPTURE                          REF R9
       69 CAPTURE                          VAL R5
       70 NEWCLOSURE                       R14 P1
       71 CAPTURE                          REF R10
       72 CAPTURE                          REF R12
       73 CAPTURE                          REF R11
       74 CAPTURE                          VAL R3
       75 NEWCLOSURE                       R15 P2
       76 CAPTURE                          REF R12
       77 CAPTURE                          REF R9
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R5
       80 CAPTURE                          REF R10
       81 CAPTURE                          REF R11
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R13
       84 MOVE                             R16 R15
       85 CALL                             R16 0 0
       86 NAMECALL                         R16 R0 K20 ["IsRunning"]
       88 CALL                             R16 1 1
       89 JUMPIFNOT                        R16 ; [+4]
       90 NAMECALL                         R16 R0 K21 ["IsRunMode"]
       92 CALL                             R16 1 1
       93 JUMPIFNOT                        R16 ; [+3]
       94 MOVE                             R16 R13
       95 LOADB                            R17 1
       96 CALL                             R16 1 0
       97 CLOSEUPVALS                      R9
       98 RETURN                           R0 0
