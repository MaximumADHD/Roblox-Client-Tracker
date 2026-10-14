PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 SETTABLE                         R1 R3 R2
        4 DUPTABLE                         R3 K1 [{"Disconnect"}]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R2
        8 SETTABLEKS                       R4 R3 K0 ["Disconnect"]
       10 RETURN                           R3 1

PROTO_2:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R1 K2 [table.clone]
        3 GETUPVAL                         R2 0
        4 CALL                             R1 1 3
        5 FORGPREP                         R1
        6 MOVE                             R6 R5
        7 GETVARARGS                       R7 -1
        8 CALL                             R6 -1 0
        9 FORGLOOP                         R1 2 ; [-4]
       11 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 2 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R2 R1 K0 ["Connect"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R2 R1 K1 ["Fire"]
       12 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R1 K3 [{"CurrentDataModelType", "CurrentDataModelTypeAboutToChange", "CurrentDataModelTypeChanged"}]
        1 SETTABLEKS                       R0 R1 K0 ["CurrentDataModelType"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K4 ["_createSignal"]
        6 CALL                             R2 0 1
        7 SETTABLEKS                       R2 R1 K1 ["CurrentDataModelTypeAboutToChange"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K4 ["_createSignal"]
       12 CALL                             R2 0 1
       13 SETTABLEKS                       R2 R1 K2 ["CurrentDataModelTypeChanged"]
       15 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 0
        2 GETTABLE                         R2 R3 R0
        3 JUMPIF                           R2 ; [+4]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["_createSignal"]
        7 CALL                             R2 0 1
        8 SETTABLE                         R2 R1 R0
        9 GETUPVAL                         R2 0
       10 GETTABLE                         R1 R2 R0
       11 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R6 0
        2 GETTABLE                         R5 R6 R1
        3 JUMPIF                           R5 ; [+4]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K0 ["_createSignal"]
        7 CALL                             R5 0 1
        8 SETTABLE                         R5 R4 R1
        9 GETUPVAL                         R4 0
       10 GETTABLE                         R3 R4 R1
       11 MOVE                             R5 R2
       12 NAMECALL                         R3 R3 K1 ["Connect"]
       14 CALL                             R3 2 -1
       15 RETURN                           R3 -1

PROTO_7:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R4 R5 R1
        4 JUMPIF                           R4 ; [+4]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K0 ["_createSignal"]
        8 CALL                             R4 0 1
        9 SETTABLE                         R4 R3 R1
       10 GETUPVAL                         R3 0
       11 GETTABLE                         R2 R3 R1
       12 GETVARARGS                       R4 -1
       13 NAMECALL                         R2 R2 K1 ["Fire"]
       15 CALL                             R2 -1 0
       16 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 DUPTABLE                         R4 K2 [{"HostDataModelType", "MultipleDocumentInterfaceInstance"}]
        4 SETTABLEKS                       R1 R4 K0 ["HostDataModelType"]
        6 DUPTABLE                         R5 K4 [{"FocusedDataModelSession"}]
        7 SETTABLEKS                       R2 R5 K3 ["FocusedDataModelSession"]
        9 SETTABLEKS                       R5 R4 K1 ["MultipleDocumentInterfaceInstance"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K5 ["fn"]
       14 NEWCLOSURE                       R6 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U0
       17 CALL                             R5 1 1
       18 SETTABLEKS                       R5 R4 K6 ["OnInvoke"]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K5 ["fn"]
       23 NEWCLOSURE                       R6 P2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U0
       26 CALL                             R5 1 1
       27 SETTABLEKS                       R5 R4 K7 ["Invoke"]
       29 RETURN                           R4 1

PROTO_9:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["_createMockSession"]
        5 MOVE                             R4 R1
        6 CALL                             R3 1 1
        7 NEWTABLE                         R4 0 0
        9 MOVE                             R5 R0
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 FORGPREP                         R5
       13 GETUPVAL                         R10 0
       14 GETTABLEKS                       R10 R10 K1 ["_createMockPlugin"]
       16 MOVE                             R11 R2
       17 MOVE                             R12 R9
       18 MOVE                             R13 R3
       19 CALL                             R10 3 1
       20 SETTABLE                         R10 R4 R9
       21 FORGLOOP                         R5 2 ; [-9]
       23 MOVE                             R5 R4
       24 MOVE                             R6 R3
       25 RETURN                           R5 2

PROTO_10:
        0 DUPTABLE                         R0 K2 [{"WindowFocused", "WindowFocusReleased"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["_createSignal"]
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K0 ["WindowFocused"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["_createSignal"]
       10 CALL                             R1 0 1
       11 SETTABLEKS                       R1 R0 K1 ["WindowFocusReleased"]
       13 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dev"]
       13 GETTABLEKS                       R2 R2 K8 ["JestGlobals"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["jest"]
       18 NEWTABLE                         R3 8 0
       20 DUPCLOSURE                       R4 K10 [PROTO_3]
       21 SETTABLEKS                       R4 R3 K11 ["_createSignal"]
       23 DUPCLOSURE                       R4 K12 [PROTO_4]
       24 CAPTURE                          VAL R3
       25 SETTABLEKS                       R4 R3 K13 ["_createMockSession"]
       27 DUPCLOSURE                       R4 K14 [PROTO_8]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R4 R3 K15 ["_createMockPlugin"]
       32 DUPCLOSURE                       R4 K16 [PROTO_9]
       33 CAPTURE                          VAL R3
       34 SETTABLEKS                       R4 R3 K17 ["createMockPlugins"]
       36 DUPCLOSURE                       R4 K18 [PROTO_10]
       37 CAPTURE                          VAL R3
       38 SETTABLEKS                       R4 R3 K19 ["createMockWidget"]
       40 RETURN                           R3 1
