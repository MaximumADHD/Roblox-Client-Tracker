PROTO_0:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R3 0
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+29]
        4 GETIMPORT                        R3 K2 [table.pack]
        6 GETVARARGS                       R4 -1
        7 CALL                             R3 -1 1
        8 MOVE                             R4 R3
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 FASTCALL1                        TYPEOF R8 ; [+3]
       13 MOVE                             R10 R8
       14 GETIMPORT                        R9 K4 [typeof]
       16 CALL                             R9 1 1
       17 JUMPIFNOTEQKS                    R9 K0 ["table"] ; [+6]
       19 GETIMPORT                        R9 K6 [table.clone]
       21 MOVE                             R10 R8
       22 CALL                             R9 1 1
       23 SETTABLE                         R9 R3 R7
       24 FORGLOOP                         R4 2 ; [-13]
       26 MOVE                             R4 R2
       27 FASTCALL1                        TABLE_UNPACK R3 ; [+3]
       28 MOVE                             R6 R3
       29 GETIMPORT                        R5 K8 [table.unpack]
       31 CALL                             R5 1 -1
       32 CALL                             R4 -1 0
       33 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R0 R1 K0 ["MockOnInvokeDisconnect"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 SETTABLE                         R2 R3 R1
        2 DUPTABLE                         R3 K1 [{"Disconnect"}]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 SETTABLEKS                       R4 R3 K0 ["Disconnect"]
        9 RETURN                           R3 1

PROTO_3:
        0 LOADN                            R2 0
        1 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R0 4 0
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["fn"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R1
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R0 K1 ["Invoke"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["fn"]
       15 CALL                             R2 0 1
       16 SETTABLEKS                       R2 R0 K2 ["MockOnInvokeDisconnect"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K0 ["fn"]
       21 NEWCLOSURE                       R3 P1
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R0
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R0 K3 ["OnInvoke"]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K0 ["fn"]
       30 DUPCLOSURE                       R3 K4 [PROTO_3]
       31 CALL                             R2 1 1
       32 SETTABLEKS                       R2 R0 K5 ["GetSetting"]
       34 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Packages"]
       11 GETTABLEKS                       R3 R4 K7 ["Dev"]
       13 GETTABLEKS                       R2 R3 K8 ["JestGlobals"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["jest"]
       18 DUPCLOSURE                       R3 K10 [PROTO_4]
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1
