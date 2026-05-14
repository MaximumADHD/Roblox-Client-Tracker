PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected story to be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["provideMockContext"]
       18 NEWTABLE                         R2 0 1
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K7 ["new"]
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K7 ["new"]
       26 LOADK                            R5 K8 ["Ribbon"]
       27 LOADNIL                          R6
       28 GETUPVAL                         R7 3
       29 GETUPVAL                         R8 4
       30 CALL                             R4 4 -1
       31 CALL                             R3 -1 -1
       32 SETLIST                          R2 R3 -1 [1]
       34 MOVE                             R3 R0
       35 CALL                             R1 2 -1
       36 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["TestHelpers"]
       16 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       18 GETTABLEKS                       R3 R3 K10 ["Plugin"]
       20 GETTABLEKS                       R4 R1 K8 ["TestHelpers"]
       22 GETTABLEKS                       R4 R4 K11 ["Instances"]
       24 GETTABLEKS                       R4 R4 K12 ["MockPlugin"]
       26 LOADK                            R7 K10 ["Plugin"]
       27 NAMECALL                         R5 R0 K13 ["FindFirstAncestorWhichIsA"]
       29 CALL                             R5 2 1
       30 DUPTABLE                         R6 K17 [{"DataModel", "PluginType", "PluginId"}]
       31 LOADK                            R7 K18 ["Standalone"]
       32 SETTABLEKS                       R7 R6 K14 ["DataModel"]
       34 LOADK                            R7 K18 ["Standalone"]
       35 SETTABLEKS                       R7 R6 K15 ["PluginType"]
       37 LOADK                            R7 K2 ["Ribbon"]
       38 SETTABLEKS                       R7 R6 K16 ["PluginId"]
       40 DUPCLOSURE                       R7 K19 [PROTO_0]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R6
       46 RETURN                           R7 1
