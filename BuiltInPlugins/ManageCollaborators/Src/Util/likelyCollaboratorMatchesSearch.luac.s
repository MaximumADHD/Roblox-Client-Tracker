PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["string"] ; [+3]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 NAMECALL                         R4 R0 K3 ["lower"]
       11 CALL                             R4 1 1
       12 LOADN                            R5 1
       13 LENGTH                           R6 R1
       14 FASTCALL                         STRING_SUB ; [+2]
       15 GETIMPORT                        R3 K5 [string.sub]
       17 CALL                             R3 3 1
       18 JUMPIFEQ                         R3 R1 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1

PROTO_1:
        0 ORK                              R2 R1 K0 [""]
        1 NAMECALL                         R2 R2 K1 ["lower"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K2 ["SubjectNameKey"]
        7 GETTABLE                         R4 R0 R5
        8 FASTCALL1                        TYPEOF R4 ; [+3]
        9 MOVE                             R6 R4
       10 GETIMPORT                        R5 K4 [typeof]
       12 CALL                             R5 1 1
       13 JUMPIFEQKS                       R5 K5 ["string"] ; [+3]
       15 LOADB                            R3 0
       16 JUMP                             ; [+13]
       17 NAMECALL                         R6 R4 K1 ["lower"]
       19 CALL                             R6 1 1
       20 LOADN                            R7 1
       21 LENGTH                           R8 R2
       22 FASTCALL                         STRING_SUB ; [+2]
       23 GETIMPORT                        R5 K7 [string.sub]
       25 CALL                             R5 3 1
       26 JUMPIFEQ                         R5 R2 ; [+2]
       28 LOADB                            R3 0 +1
       29 LOADB                            R3 1
       30 JUMPIF                           R3 ; [+26]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K8 ["SubjectDisplayNameKey"]
       34 GETTABLE                         R4 R0 R5
       35 FASTCALL1                        TYPEOF R4 ; [+3]
       36 MOVE                             R6 R4
       37 GETIMPORT                        R5 K4 [typeof]
       39 CALL                             R5 1 1
       40 JUMPIFEQKS                       R5 K5 ["string"] ; [+3]
       42 LOADB                            R3 0
       43 RETURN                           R3 1
       44 NAMECALL                         R6 R4 K1 ["lower"]
       46 CALL                             R6 1 1
       47 LOADN                            R7 1
       48 LENGTH                           R8 R2
       49 FASTCALL                         STRING_SUB ; [+2]
       50 GETIMPORT                        R5 K7 [string.sub]
       52 CALL                             R5 3 1
       53 JUMPIFEQ                         R5 R2 ; [+2]
       55 LOADB                            R3 0 +1
       56 LOADB                            R3 1
       57 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["PermissionsConstants"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_0]
       19 DUPCLOSURE                       R3 K9 [PROTO_1]
       20 CAPTURE                          VAL R1
       21 RETURN                           R3 1
