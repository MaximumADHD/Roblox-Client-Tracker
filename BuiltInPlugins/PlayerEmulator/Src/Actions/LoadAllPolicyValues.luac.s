PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Expected allPolicies to be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K1 [type]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       26 LOADK                            R4 K6 ["Expected allPolicySortedKeys to be a table"]
       27 GETIMPORT                        R2 K5 [assert]
       29 CALL                             R2 2 0
       30 DUPTABLE                         R2 K9 [{"allPolicies", "allPolicySortedKeys"}]
       31 SETTABLEKS                       R0 R2 K7 ["allPolicies"]
       33 SETTABLEKS                       R1 R2 K8 ["allPolicySortedKeys"]
       35 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Action"]
        9 CALL                             R0 1 1
       10 MOVE                             R1 R0
       11 GETIMPORT                        R2 K3 [script]
       13 GETTABLEKS                       R2 R2 K6 ["Name"]
       15 DUPCLOSURE                       R3 K7 [PROTO_0]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1
