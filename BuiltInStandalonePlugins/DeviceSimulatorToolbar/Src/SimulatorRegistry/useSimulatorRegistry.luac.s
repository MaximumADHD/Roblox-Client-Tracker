PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["RefreshRegistry"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K0 ["SetRegistry"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 GETTABLEKS                       R2 R1 K0 ["Values"]
        7 JUMPIFEQKNIL                     R2 ; [+8]
        9 GETUPVAL                         R2 1
       10 MOVE                             R4 R0
       11 GETTABLEKS                       R5 R1 K0 ["Values"]
       13 NAMECALL                         R2 R2 K1 ["ReconcileValues"]
       15 CALL                             R2 3 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Destroy"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K1 ["current"]
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 LOADNIL                          R0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K0 ["new"]
        9 GETUPVAL                         R2 0
       10 DUPTABLE                         R3 K3 [{"onValuesChanged", "onStaleGeneration"}]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          UPVAL U2
       13 SETTABLEKS                       R4 R3 K1 ["onValuesChanged"]
       15 NEWCLOSURE                       R4 P1
       16 CAPTURE                          REF R0
       17 SETTABLEKS                       R4 R3 K2 ["onStaleGeneration"]
       19 CALL                             R1 2 1
       20 GETUPVAL                         R2 3
       21 SETTABLEKS                       R1 R2 K4 ["current"]
       23 GETUPVAL                         R2 4
       24 GETTABLEKS                       R2 R2 K0 ["new"]
       26 GETUPVAL                         R3 0
       27 DUPTABLE                         R4 K7 [{"onRegistryChanged", "onDynamicStateChanged"}]
       28 NEWCLOSURE                       R5 P2
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R5 R4 K5 ["onRegistryChanged"]
       33 NEWCLOSURE                       R5 P3
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          VAL R1
       36 SETTABLEKS                       R5 R4 K6 ["onDynamicStateChanged"]
       38 CALL                             R2 2 1
       39 MOVE                             R0 R2
       40 NEWCLOSURE                       R2 P4
       41 CAPTURE                          REF R0
       42 CAPTURE                          VAL R1
       43 CAPTURE                          UPVAL U3
       44 CLOSEUPVALS                      R0
       45 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 JUMPIFEQKNIL                     R3 ; [+7]
        5 MOVE                             R6 R0
        6 MOVE                             R7 R1
        7 MOVE                             R8 R2
        8 NAMECALL                         R4 R3 K1 ["ChangeControl"]
       10 CALL                             R4 4 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["useState"]
        9 NEWTABLE                         R4 0 0
       11 CALL                             R3 1 2
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["useState"]
       15 NEWTABLE                         R6 0 0
       17 CALL                             R5 1 2
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K1 ["useRef"]
       21 LOADNIL                          R8
       22 CALL                             R7 1 1
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R8 R8 K2 ["useEffect"]
       26 NEWCLOSURE                       R9 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R7
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R6
       34 NEWTABLE                         R10 0 1
       36 MOVE                             R11 R0
       37 SETLIST                          R10 R11 1 [1]
       39 CALL                             R8 2 0
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R8 R8 K3 ["useCallback"]
       43 NEWCLOSURE                       R9 P1
       44 CAPTURE                          VAL R7
       45 NEWTABLE                         R10 0 0
       47 CALL                             R8 2 1
       48 DUPTABLE                         R9 K8 [{"simulators", "valuesByName", "dynamicStateByName", "changeControl"}]
       49 SETTABLEKS                       R1 R9 K4 ["simulators"]
       51 SETTABLEKS                       R3 R9 K5 ["valuesByName"]
       53 SETTABLEKS                       R5 R9 K6 ["dynamicStateByName"]
       55 SETTABLEKS                       R8 R9 K7 ["changeControl"]
       57 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["DynamicStateTicker"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K8 ["Parent"]
       29 GETTABLEKS                       R4 R4 K10 ["SimulatorRuntime"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K8 ["Parent"]
       38 GETTABLEKS                       R5 R5 K11 ["Types"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K12 [PROTO_1]
       42 DUPCLOSURE                       R6 K13 [PROTO_9]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R2
       46 RETURN                           R6 1
