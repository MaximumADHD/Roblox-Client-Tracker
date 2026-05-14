PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL1                        ASSERT R2 ; [+2]
       10 GETIMPORT                        R1 K4 [assert]
       12 CALL                             R1 1 0
       13 DUPTABLE                         R1 K7 [{"statusMessage", "editingMode"}]
       14 SETTABLEKS                       R0 R1 K5 ["statusMessage"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K8 ["None"]
       19 SETTABLEKS                       R2 R1 K6 ["editingMode"]
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETTABLEKS                       R1 R1 K4 ["Framework"]
       13 GETIMPORT                        R2 K6 [require]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R2 R2 K7 ["Util"]
       19 GETTABLEKS                       R2 R2 K8 ["Action"]
       21 GETIMPORT                        R3 K6 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Utility"]
       27 GETTABLEKS                       R4 R4 K11 ["EditingMode"]
       29 CALL                             R3 1 1
       30 MOVE                             R4 R2
       31 GETIMPORT                        R5 K1 [script]
       33 GETTABLEKS                       R5 R5 K12 ["Name"]
       35 DUPCLOSURE                       R6 K13 [PROTO_0]
       36 CAPTURE                          VAL R3
       37 CALL                             R4 2 -1
       38 RETURN                           R4 -1
