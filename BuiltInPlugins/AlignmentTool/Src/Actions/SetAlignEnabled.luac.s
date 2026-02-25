PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["boolean"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Expected enabled to be a boolean"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 LOADB                            R3 1
       16 FASTCALL1                        TYPE R1 ; [+3]
       17 MOVE                             R5 R1
       18 GETIMPORT                        R4 K1 [type]
       20 CALL                             R4 1 1
       21 JUMPIFEQKS                       R4 K6 ["table"] ; [+5]
       23 JUMPIFEQKNIL                     R1 ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       29 LOADK                            R4 K7 ["Expected reason to be a table or nil"]
       30 GETIMPORT                        R2 K5 [assert]
       32 CALL                             R2 2 0
       33 MOVE                             R2 R1
       34 JUMPIF                           R2 ; [+2]
       35 NEWTABLE                         R2 0 0
       37 MOVE                             R1 R2
       38 DUPTABLE                         R2 K10 [{"alignEnabled", "disabledReason"}]
       39 SETTABLEKS                       R0 R2 K8 ["alignEnabled"]
       41 SETTABLEKS                       R1 R2 K9 ["disabledReason"]
       43 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K7 ["Util"]
       18 GETTABLEKS                       R2 R3 K8 ["Action"]
       20 MOVE                             R3 R2
       21 GETIMPORT                        R5 K1 [script]
       23 GETTABLEKS                       R4 R5 K9 ["Name"]
       25 DUPCLOSURE                       R5 K10 [PROTO_0]
       26 CALL                             R3 2 -1
       27 RETURN                           R3 -1
