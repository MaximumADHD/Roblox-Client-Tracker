PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["TestHelpers"]
        3 GETTABLEKS                       R2 R3 K1 ["Instances"]
        5 GETTABLEKS                       R1 R2 K2 ["MockPlugin"]
        7 GETTABLEKS                       R0 R1 K3 ["new"]
        9 CALL                             R0 0 1
       10 GETIMPORT                        R1 K5 [Instance.new]
       12 LOADK                            R2 K6 ["BindableEvent"]
       13 CALL                             R1 1 1
       14 SETTABLEKS                       R1 R0 K7 ["_mockPropertyEvent"]
       16 NEWTABLE                         R1 0 0
       18 SETTABLEKS                       R1 R0 K8 ["_invocationData"]
       20 NEWTABLE                         R1 0 0
       22 SETTABLEKS                       R1 R0 K9 ["_pluginActionWrappers"]
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R1 R2 K10 ["OnInvoke"]
       27 SETTABLEKS                       R1 R0 K10 ["OnInvoke"]
       29 GETUPVAL                         R2 1
       30 GETTABLEKS                       R1 R2 K11 ["Invoke"]
       32 SETTABLEKS                       R1 R0 K11 ["Invoke"]
       34 GETUPVAL                         R2 1
       35 GETTABLEKS                       R1 R2 K12 ["CreatePluginAction"]
       37 SETTABLEKS                       R1 R0 K12 ["CreatePluginAction"]
       39 GETUPVAL                         R2 1
       40 GETTABLEKS                       R1 R2 K13 ["GetPropertyChangedSignal"]
       42 SETTABLEKS                       R1 R0 K13 ["GetPropertyChangedSignal"]
       44 GETUPVAL                         R2 1
       45 GETTABLEKS                       R1 R2 K14 ["triggerPluginAction"]
       47 SETTABLEKS                       R1 R0 K14 ["triggerPluginAction"]
       49 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_invocationData"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 GETUPVAL                         R1 2
        6 JUMPIFNOTEQ                      R0 R1 ; [+7]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K0 ["_invocationData"]
       11 GETUPVAL                         R1 1
       12 LOADNIL                          R2
       13 SETTABLE                         R2 R0 R1
       14 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["Folder"]
        3 CALL                             R3 1 1
        4 LOADK                            R4 K4 ["MemStorageConnection"]
        5 SETTABLEKS                       R4 R3 K5 ["Name"]
        7 DUPTABLE                         R4 K8 [{"connection", "callback"}]
        8 SETTABLEKS                       R3 R4 K6 ["connection"]
       10 SETTABLEKS                       R2 R4 K7 ["callback"]
       12 GETTABLEKS                       R5 R0 K9 ["_invocationData"]
       14 SETTABLE                         R4 R5 R1
       15 GETTABLEKS                       R5 R3 K10 ["Destroying"]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R4
       21 NAMECALL                         R5 R5 K11 ["Connect"]
       23 CALL                             R5 2 0
       24 RETURN                           R3 1

PROTO_3:
        0 PREPVARARGS                      2
        1 GETTABLEKS                       R3 R0 K0 ["_invocationData"]
        3 GETTABLE                         R2 R3 R1
        4 JUMPIFNOT                        R2 ; [+8]
        5 GETTABLEKS                       R3 R0 K0 ["_invocationData"]
        7 GETTABLE                         R2 R3 R1
        8 GETTABLEKS                       R3 R2 K1 ["callback"]
       10 GETVARARGS                       R4 -1
       11 CALL                             R3 -1 0
       12 RETURN                           R0 0
       13 LOADNIL                          R2
       14 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Fire"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 JUMPIFNOTEQ                      R1 R0 ; [+6]
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R2 2
        6 GETVARARGS                       R3 -1
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 3
       11 GETVARARGS                       R3 -1
       12 CALL                             R1 -1 -1
       13 RETURN                           R1 -1

PROTO_6:
        0 JUMPIFNOTEQKS                    R1 K0 ["Triggered"] ; [+5]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["Event"]
        5 RETURN                           R2 1
        6 GETUPVAL                         R3 1
        7 GETTABLE                         R2 R3 R1
        8 FASTCALL1                        TYPEOF R2 ; [+3]
        9 MOVE                             R4 R2
       10 GETIMPORT                        R3 K3 [typeof]
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKS                    R3 K4 ["function"] ; [+7]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U2
       20 RETURN                           R3 1
       21 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 SETTABLE                         R2 R3 R1
        2 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R6 K2 [Instance.new]
        2 LOADK                            R7 K3 ["PluginAction"]
        3 CALL                             R6 1 1
        4 SETTABLEKS                       R2 R6 K4 ["Text"]
        6 GETIMPORT                        R7 K2 [Instance.new]
        8 LOADK                            R8 K5 ["BindableEvent"]
        9 CALL                             R7 1 1
       10 JUMPIFEQKNIL                     R5 ; [+3]
       12 SETTABLEKS                       R5 R6 K6 ["AllowBinding"]
       14 DUPTABLE                         R9 K8 [{"triggerAction"}]
       15 NEWCLOSURE                       R10 P0
       16 CAPTURE                          VAL R7
       17 SETTABLEKS                       R10 R9 K7 ["triggerAction"]
       19 DUPTABLE                         R10 K11 [{"__index", "__newindex"}]
       20 NEWCLOSURE                       R11 P1
       21 CAPTURE                          VAL R7
       22 CAPTURE                          VAL R6
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R11 R10 K9 ["__index"]
       26 NEWCLOSURE                       R11 P2
       27 CAPTURE                          VAL R6
       28 SETTABLEKS                       R11 R10 K10 ["__newindex"]
       30 FASTCALL2                        SETMETATABLE R9 R10 ; [+3]
       32 GETIMPORT                        R8 K13 [setmetatable]
       34 CALL                             R8 2 1
       35 GETTABLEKS                       R9 R0 K14 ["_pluginActionWrappers"]
       37 SETTABLE                         R8 R9 R1
       38 RETURN                           R8 1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["_pluginActionWrappers"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+4]
        4 NAMECALL                         R3 R2 K1 ["triggerAction"]
        6 CALL                             R3 1 0
        7 RETURN                           R0 0
        8 GETIMPORT                        R3 K3 [error]
       10 LOADK                            R5 K4 ["No plugin action found with ID: "]
       11 FASTCALL1                        TOSTRING R1 ; [+3]
       12 MOVE                             R7 R1
       13 GETIMPORT                        R6 K6 [tostring]
       15 CALL                             R6 1 1
       16 CONCAT                           R4 R5 R6
       17 CALL                             R3 1 0
       18 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["_mockPropertyEvent"]
        2 GETTABLEKS                       R2 R3 K1 ["Event"]
        4 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 8 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 SETTABLEKS                       R3 R2 K9 ["new"]
       21 DUPCLOSURE                       R3 K10 [PROTO_2]
       22 SETTABLEKS                       R3 R2 K11 ["OnInvoke"]
       24 DUPCLOSURE                       R3 K12 [PROTO_3]
       25 SETTABLEKS                       R3 R2 K13 ["Invoke"]
       27 DUPCLOSURE                       R3 K14 [PROTO_8]
       28 SETTABLEKS                       R3 R2 K15 ["CreatePluginAction"]
       30 DUPCLOSURE                       R3 K16 [PROTO_9]
       31 SETTABLEKS                       R3 R2 K17 ["triggerPluginAction"]
       33 DUPCLOSURE                       R3 K18 [PROTO_10]
       34 SETTABLEKS                       R3 R2 K19 ["GetPropertyChangedSignal"]
       36 RETURN                           R2 1
