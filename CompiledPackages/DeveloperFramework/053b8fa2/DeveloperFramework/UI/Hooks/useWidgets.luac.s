PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Widgets"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["DeregisterAsync"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["pendingDeregisters"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 FASTCALL2                        TABLE_INSERT R1 R6 ; [+4]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R6
       11 GETUPVAL                         R7 0
       12 CALL                             R7 2 0
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K1 ["registeredWidgets"]
       16 LOADNIL                          R8
       17 SETTABLE                         R8 R7 R5
       18 FORGLOOP                         R2 2 ; [-12]
       20 LENGTH                           R2 R1
       21 LOADN                            R3 0
       22 JUMPIFNOTLT                      R3 R2 ; [+7]
       24 GETIMPORT                        R2 K3 [pcall]
       26 NEWCLOSURE                       R3 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 CALL                             R2 1 0
       30 NEWTABLE                         R2 0 0
       32 SETTABLEKS                       R2 R0 K0 ["pendingDeregisters"]
       34 GETUPVAL                         R2 2
       35 GETTABLEKS                       R3 R0 K4 ["pendingRegisters"]
       37 CALL                             R2 1 1
       38 LENGTH                           R3 R2
       39 LOADN                            R4 0
       40 JUMPIFNOTLT                      R4 R3 ; [+11]
       42 GETTABLEKS                       R3 R0 K5 ["Widgets"]
       44 MOVE                             R5 R2
       45 NAMECALL                         R3 R3 K6 ["RegisterAsync"]
       47 CALL                             R3 2 0
       48 NEWTABLE                         R3 0 0
       50 SETTABLEKS                       R3 R0 K4 ["pendingRegisters"]
       52 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["running"]
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["flush"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["running"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R1 K0 ["running"]
        9 GETIMPORT                        R1 K3 [task.defer]
       11 DUPCLOSURE                       R2 K4 [PROTO_2]
       12 CAPTURE                          UPVAL U0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R5 K0 ["PluginGui"]
        1 NAMECALL                         R3 R2 K1 ["FindFirstAncestor"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+4]
        5 LOADK                            R5 K2 ["ScreenGui"]
        6 NAMECALL                         R3 R2 K1 ["FindFirstAncestor"]
        8 CALL                             R3 2 1
        9 JUMPIFNOT                        R3 ; [+26]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K3 ["toString"]
       13 MOVE                             R5 R1
       14 CALL                             R4 1 1
       15 GETTABLEKS                       R5 R0 K4 ["registeredWidgets"]
       17 SETTABLE                         R2 R5 R4
       18 GETTABLEKS                       R5 R0 K5 ["pendingRegisters"]
       20 DUPTABLE                         R6 K9 [{"Uri", "Widget", "DEPRECATED_PluginGui"}]
       21 SETTABLEKS                       R1 R6 K6 ["Uri"]
       23 SETTABLEKS                       R2 R6 K7 ["Widget"]
       25 SETTABLEKS                       R3 R6 K8 ["DEPRECATED_PluginGui"]
       27 SETTABLE                         R6 R5 R4
       28 GETTABLEKS                       R5 R0 K10 ["pendingDeregisters"]
       30 LOADNIL                          R6
       31 SETTABLE                         R6 R5 R4
       32 GETUPVAL                         R5 1
       33 NAMECALL                         R5 R5 K11 ["run"]
       35 CALL                             R5 1 0
       36 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["pendingDeregisters"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["toString"]
        5 MOVE                             R4 R1
        6 CALL                             R3 1 1
        7 SETTABLE                         R1 R2 R3
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R2 R2 K2 ["run"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 NAMECALL                         R1 R0 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 LOADK                            R5 K2 ["Widgets"]
        9 NAMECALL                         R3 R1 K3 ["GetPluginComponent"]
       11 CALL                             R3 2 1
       12 SETTABLEKS                       R3 R2 K2 ["Widgets"]
       14 GETUPVAL                         R2 1
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K6 [require]
       16 GETTABLEKS                       R3 R0 K4 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["values"]
       23 GETIMPORT                        R4 K12 [table.insert]
       25 GETIMPORT                        R5 K6 [require]
       27 GETTABLEKS                       R6 R0 K13 ["ContextServices"]
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R6 R5 K14 ["Plugin"]
       32 GETIMPORT                        R7 K6 [require]
       34 GETTABLEKS                       R8 R0 K15 ["Util"]
       36 GETTABLEKS                       R8 R8 K16 ["StudioUri"]
       38 CALL                             R7 1 1
       39 DUPTABLE                         R8 K22 [{"Widgets", "pendingRegisters", "pendingDeregisters", "registeredWidgets", "running"}]
       40 LOADNIL                          R9
       41 SETTABLEKS                       R9 R8 K17 ["Widgets"]
       43 NEWTABLE                         R9 0 0
       45 SETTABLEKS                       R9 R8 K18 ["pendingRegisters"]
       47 NEWTABLE                         R9 0 0
       49 SETTABLEKS                       R9 R8 K19 ["pendingDeregisters"]
       51 NEWTABLE                         R9 0 0
       53 SETTABLEKS                       R9 R8 K20 ["registeredWidgets"]
       55 LOADB                            R9 0
       56 SETTABLEKS                       R9 R8 K21 ["running"]
       58 DUPCLOSURE                       R9 K23 [PROTO_1]
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R3
       62 SETTABLEKS                       R9 R8 K24 ["flush"]
       64 DUPCLOSURE                       R9 K25 [PROTO_3]
       65 CAPTURE                          VAL R8
       66 SETTABLEKS                       R9 R8 K26 ["run"]
       68 DUPCLOSURE                       R9 K27 [PROTO_4]
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R8
       71 SETTABLEKS                       R9 R8 K28 ["register"]
       73 DUPCLOSURE                       R9 K29 [PROTO_5]
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R8
       76 SETTABLEKS                       R9 R8 K30 ["deregister"]
       78 DUPCLOSURE                       R9 K31 [PROTO_6]
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R8
       81 RETURN                           R9 1
