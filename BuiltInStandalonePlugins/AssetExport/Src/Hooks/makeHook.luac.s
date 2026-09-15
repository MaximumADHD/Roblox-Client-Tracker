PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 GETUPVAL                         R2 2
        4 NAMECALL                         R0 R0 K0 ["Connect"]
        6 CALL                             R0 2 1
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R0 R3
        2 FASTCALL1                        TYPEOF R2 ; [+2]
        3 GETIMPORT                        R1 K1 [typeof]
        5 CALL                             R1 1 1
        6 JUMPIFEQKS                       R1 K2 ["function"] ; [+9]
        8 GETIMPORT                        R1 K4 [error]
       10 LOADK                            R2 K5 ["Export controller doesn't contain getter function named: %* "]
       11 GETUPVAL                         R4 0
       12 NAMECALL                         R2 R2 K6 ["format"]
       14 CALL                             R2 2 1
       15 CALL                             R1 1 0
       16 GETUPVAL                         R3 1
       17 GETTABLE                         R2 R0 R3
       18 FASTCALL1                        TYPEOF R2 ; [+2]
       19 GETIMPORT                        R1 K1 [typeof]
       21 CALL                             R1 1 1
       22 JUMPIFEQKS                       R1 K7 ["table"] ; [+9]
       24 GETIMPORT                        R1 K4 [error]
       26 LOADK                            R2 K8 ["Export controller doesn't contain event named: %* "]
       27 GETUPVAL                         R4 0
       28 NAMECALL                         R2 R2 K6 ["format"]
       30 CALL                             R2 2 1
       31 CALL                             R1 1 0
       32 GETUPVAL                         R1 2
       33 GETUPVAL                         R3 0
       34 GETTABLE                         R2 R0 R3
       35 MOVE                             R3 R0
       36 CALL                             R2 1 -1
       37 CALL                             R1 -1 2
       38 GETUPVAL                         R3 3
       39 NEWCLOSURE                       R4 P0
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          VAL R2
       43 NEWTABLE                         R5 0 0
       45 CALL                             R3 2 0
       46 RETURN                           R1 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETTABLEKS                       R3 R1 K9 ["useEffect"]
       18 DUPCLOSURE                       R4 K10 [PROTO_3]
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R3
       21 RETURN                           R4 1
