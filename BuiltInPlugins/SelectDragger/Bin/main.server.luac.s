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
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["Packages"]
       17 GETTABLEKS                       R3 R3 K10 ["DraggerFramework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R4 R1 K9 ["Packages"]
       24 GETTABLEKS                       R4 R4 K11 ["Roact"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R5 R1 K9 ["Packages"]
       31 GETTABLEKS                       R5 R5 K12 ["DraggerSchemaCore"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K13 ["DraggerSchema"]
       36 GETTABLEKS                       R6 R2 K14 ["Implementation"]
       38 GETTABLEKS                       R6 R6 K15 ["DraggerContext_PluginImpl"]
       40 GETTABLEKS                       R7 R2 K16 ["DraggerTools"]
       42 GETTABLEKS                       R7 R7 K17 ["DraggerToolComponent"]
       44 GETTABLEKS                       R8 R2 K18 ["Utility"]
       46 GETTABLEKS                       R8 R8 K19 ["isCli"]
       48 MOVE                             R9 R8
       49 CALL                             R9 0 1
       50 JUMPIFNOT                        R9 ; [+1]
       51 RETURN                           R0 0
       52 LOADNIL                          R9
       53 LOADB                            R10 0
       54 LOADNIL                          R11
       55 LOADNIL                          R12
       56 NEWCLOSURE                       R13 P0
       57 CAPTURE                          REF R11
       58 CAPTURE                          REF R10
       59 CAPTURE                          REF R12
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R7
       62 CAPTURE                          REF R9
       63 CAPTURE                          VAL R5
       64 NEWCLOSURE                       R14 P1
       65 CAPTURE                          REF R10
       66 CAPTURE                          REF R12
       67 CAPTURE                          REF R11
       68 CAPTURE                          VAL R3
       69 NEWCLOSURE                       R15 P2
       70 CAPTURE                          REF R12
       71 CAPTURE                          REF R9
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R5
       74 CAPTURE                          REF R10
       75 CAPTURE                          REF R11
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R13
       78 MOVE                             R16 R15
       79 CALL                             R16 0 0
       80 NAMECALL                         R16 R0 K20 ["IsRunning"]
       82 CALL                             R16 1 1
       83 JUMPIFNOT                        R16 ; [+4]
       84 NAMECALL                         R16 R0 K21 ["IsRunMode"]
       86 CALL                             R16 1 1
       87 JUMPIFNOT                        R16 ; [+3]
       88 MOVE                             R16 R13
       89 LOADB                            R17 1
       90 CALL                             R16 1 0
       91 CLOSEUPVALS                      R9
       92 RETURN                           R0 0
