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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLE                         R2 R0 R3
        6 FASTCALL1                        TYPEOF R2 ; [+2]
        7 GETIMPORT                        R1 K2 [typeof]
        9 CALL                             R1 1 1
       10 JUMPIFEQKS                       R1 K3 ["function"] ; [+10]
       12 GETIMPORT                        R1 K5 [error]
       14 LOADK                            R3 K6 ["Controller doesn't contain getter function named: %* "]
       15 GETUPVAL                         R5 1
       16 NAMECALL                         R3 R3 K7 ["format"]
       18 CALL                             R3 2 1
       19 MOVE                             R2 R3
       20 CALL                             R1 1 0
       21 GETUPVAL                         R3 2
       22 GETTABLE                         R2 R0 R3
       23 FASTCALL1                        TYPEOF R2 ; [+2]
       24 GETIMPORT                        R1 K2 [typeof]
       26 CALL                             R1 1 1
       27 JUMPIFEQKS                       R1 K8 ["table"] ; [+10]
       29 GETIMPORT                        R1 K5 [error]
       31 LOADK                            R3 K9 ["Controller doesn't contain event named: %* "]
       32 GETUPVAL                         R5 1
       33 NAMECALL                         R3 R3 K7 ["format"]
       35 CALL                             R3 2 1
       36 MOVE                             R2 R3
       37 CALL                             R1 1 0
       38 GETUPVAL                         R1 3
       39 GETUPVAL                         R3 1
       40 GETTABLE                         R2 R0 R3
       41 MOVE                             R3 R0
       42 CALL                             R2 1 -1
       43 CALL                             R1 -1 2
       44 GETUPVAL                         R3 4
       45 NEWCLOSURE                       R4 P0
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          VAL R2
       49 NEWTABLE                         R5 0 0
       51 CALL                             R3 2 0
       52 RETURN                           R1 1

PROTO_3:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
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
