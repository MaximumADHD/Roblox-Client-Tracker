PROTO_0:
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
       15 GETUPVAL                         R4 1
       16 GETTABLE                         R3 R4 R1
       17 JUMPIFNOT                        R3 ; [+15]
       18 MOVE                             R4 R3
       19 FASTCALL1                        TYPEOF R2 ; [+3]
       20 MOVE                             R7 R2
       21 GETIMPORT                        R6 K1 [typeof]
       23 CALL                             R6 1 1
       24 JUMPIFNOTEQKS                    R6 K2 ["table"] ; [+6]
       26 GETIMPORT                        R5 K4 [table.clone]
       28 MOVE                             R6 R2
       29 CALL                             R5 1 1
       30 JUMP                             ; [+1]
       31 MOVE                             R5 R2
       32 CALL                             R4 1 0
       33 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 FASTCALL1                        TYPEOF R2 ; [+3]
        3 MOVE                             R5 R2
        4 GETIMPORT                        R4 K1 [typeof]
        6 CALL                             R4 1 1
        7 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+6]
        9 GETIMPORT                        R3 K4 [table.clone]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 RETURN                           R3 1
       14 MOVE                             R3 R2
       15 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 SETTABLE                         R2 R3 R1
        2 DUPTABLE                         R3 K1 [{"Disconnect"}]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R1
        6 SETTABLEKS                       R4 R3 K0 ["Disconnect"]
        8 RETURN                           R3 1

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 SETTABLE                         R2 R3 R1
        2 DUPTABLE                         R3 K1 [{"Disconnect"}]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R1
        6 SETTABLEKS                       R4 R3 K0 ["Disconnect"]
        8 RETURN                           R3 1

PROTO_7:
        0 NEWTABLE                         R0 8 0
        2 NEWTABLE                         R1 0 0
        4 NEWTABLE                         R2 0 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["fn"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R2
       12 CALL                             R3 1 1
       13 SETTABLEKS                       R3 R0 K1 ["SetItem"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["fn"]
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          VAL R1
       20 CALL                             R3 1 1
       21 SETTABLEKS                       R3 R0 K2 ["GetItem"]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K0 ["fn"]
       26 NEWCLOSURE                       R4 P2
       27 CAPTURE                          VAL R2
       28 CALL                             R3 1 1
       29 SETTABLEKS                       R3 R0 K3 ["OnSetItem"]
       31 NEWTABLE                         R3 0 0
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K0 ["fn"]
       36 NEWCLOSURE                       R5 P3
       37 CAPTURE                          VAL R3
       38 CALL                             R4 1 1
       39 SETTABLEKS                       R4 R0 K4 ["Invoke"]
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R4 R4 K0 ["fn"]
       44 NEWCLOSURE                       R5 P4
       45 CAPTURE                          VAL R3
       46 CALL                             R4 1 1
       47 SETTABLEKS                       R4 R0 K5 ["OnInvoke"]
       49 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dev"]
       13 GETTABLEKS                       R2 R2 K8 ["JestGlobals"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["jest"]
       18 DUPCLOSURE                       R3 K10 [PROTO_7]
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1
