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
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+6]
        7 GETIMPORT                        R1 K4 [table.clone]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 RETURN                           R1 1
       12 MOVE                             R1 R0
       13 RETURN                           R1 1

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R1
        2 FASTCALL1                        TYPEOF R3 ; [+3]
        3 MOVE                             R5 R3
        4 GETIMPORT                        R4 K1 [typeof]
        6 CALL                             R4 1 1
        7 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+7]
        9 GETIMPORT                        R4 K4 [table.clone]
       11 MOVE                             R5 R3
       12 CALL                             R4 1 1
       13 MOVE                             R2 R4
       14 RETURN                           R2 1
       15 MOVE                             R2 R3
       16 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        TYPEOF R2 ; [+3]
        2 MOVE                             R6 R2
        3 GETIMPORT                        R5 K1 [typeof]
        5 CALL                             R5 1 1
        6 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+6]
        8 GETIMPORT                        R4 K4 [table.clone]
       10 MOVE                             R5 R2
       11 CALL                             R4 1 1
       12 JUMP                             ; [+1]
       13 MOVE                             R4 R2
       14 SETTABLE                         R4 R3 R1
       15 RETURN                           R0 0

PROTO_11:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 DUPTABLE                         R5 K2 [{"HostDataModelType", "MultipleDocumentInterfaceInstance"}]
        4 SETTABLEKS                       R2 R5 K0 ["HostDataModelType"]
        6 DUPTABLE                         R6 K4 [{"FocusedDataModelSession"}]
        7 SETTABLEKS                       R3 R6 K3 ["FocusedDataModelSession"]
        9 SETTABLEKS                       R6 R5 K1 ["MultipleDocumentInterfaceInstance"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["fn"]
       14 NEWCLOSURE                       R7 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U0
       17 CALL                             R6 1 1
       18 SETTABLEKS                       R6 R5 K6 ["OnInvoke"]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K5 ["fn"]
       23 NEWCLOSURE                       R7 P2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U0
       26 CALL                             R6 1 1
       27 SETTABLEKS                       R6 R5 K7 ["Invoke"]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K5 ["fn"]
       32 NEWCLOSURE                       R7 P3
       33 CAPTURE                          VAL R1
       34 CALL                             R6 1 1
       35 SETTABLEKS                       R6 R5 K8 ["GetSetting"]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K5 ["fn"]
       40 NEWCLOSURE                       R7 P4
       41 CAPTURE                          VAL R1
       42 CALL                             R6 1 1
       43 SETTABLEKS                       R6 R5 K9 ["SetSetting"]
       45 RETURN                           R5 1

PROTO_12:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K0 ["_createMockSession"]
        7 MOVE                             R5 R1
        8 CALL                             R4 1 1
        9 NEWTABLE                         R5 0 0
       11 MOVE                             R6 R0
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 GETUPVAL                         R11 0
       16 GETTABLEKS                       R11 R11 K1 ["_createMockPlugin"]
       18 MOVE                             R12 R2
       19 MOVE                             R13 R3
       20 MOVE                             R14 R10
       21 MOVE                             R15 R4
       22 CALL                             R11 4 1
       23 SETTABLE                         R11 R5 R10
       24 FORGLOOP                         R6 2 ; [-10]
       26 MOVE                             R6 R5
       27 MOVE                             R7 R4
       28 RETURN                           R6 2

PROTO_13:
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
       27 DUPCLOSURE                       R4 K14 [PROTO_5]
       28 DUPCLOSURE                       R5 K15 [PROTO_11]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R5 R3 K16 ["_createMockPlugin"]
       33 DUPCLOSURE                       R5 K17 [PROTO_12]
       34 CAPTURE                          VAL R3
       35 SETTABLEKS                       R5 R3 K18 ["createMockPlugins"]
       37 DUPCLOSURE                       R5 K19 [PROTO_13]
       38 CAPTURE                          VAL R3
       39 SETTABLEKS                       R5 R3 K20 ["createMockWidget"]
       41 RETURN                           R3 1
