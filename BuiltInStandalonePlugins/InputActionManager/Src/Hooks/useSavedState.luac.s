PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSetting"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+2]
        6 NEWTABLE                         R0 0 0
        8 GETIMPORT                        R1 K3 [table.clone]
       10 GETUPVAL                         R2 2
       11 CALL                             R1 1 1
       12 MOVE                             R2 R0
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 FORGPREP                         R2
       16 SETTABLE                         R6 R1 R5
       17 FORGLOOP                         R2 2 ; [-2]
       19 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setSetting"]
        3 GETUPVAL                         R2 1
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R5 R0
        6 GETIMPORT                        R4 K2 [typeof]
        8 CALL                             R4 1 1
        9 JUMPIFNOTEQKS                    R4 K3 ["function"] ; [+5]
       11 MOVE                             R3 R0
       12 GETUPVAL                         R4 2
       13 CALL                             R3 1 1
       14 JUMP                             ; [+1]
       15 MOVE                             R3 R0
       16 CALL                             R1 2 0
       17 GETUPVAL                         R1 3
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_2:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["defaultValue must be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K6 ["useContext"]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K7 ["Context"]
       21 CALL                             R2 1 1
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K8 ["useState"]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 CALL                             R3 1 2
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R5 R5 K9 ["useEventCallback"]
       33 NEWCLOSURE                       R6 P1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 CALL                             R5 1 1
       39 MOVE                             R6 R3
       40 MOVE                             R7 R5
       41 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["Settings"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_2]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 RETURN                           R4 1
