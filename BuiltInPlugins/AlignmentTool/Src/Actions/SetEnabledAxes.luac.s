PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected axes to be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R4 R0 K6 ["X"]
       17 FASTCALL1                        TYPE R4 ; [+2]
       18 GETIMPORT                        R3 K1 [type]
       20 CALL                             R3 1 1
       21 JUMPIFEQKS                       R3 K7 ["boolean"] ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 FASTCALL2K                       ASSERT R2 K8 ; [+4]
       27 LOADK                            R3 K8 ["Expected X to be a boolean"]
       28 GETIMPORT                        R1 K5 [assert]
       30 CALL                             R1 2 0
       31 GETTABLEKS                       R4 R0 K9 ["Y"]
       33 FASTCALL1                        TYPE R4 ; [+2]
       34 GETIMPORT                        R3 K1 [type]
       36 CALL                             R3 1 1
       37 JUMPIFEQKS                       R3 K7 ["boolean"] ; [+2]
       39 LOADB                            R2 0 +1
       40 LOADB                            R2 1
       41 FASTCALL2K                       ASSERT R2 K10 ; [+4]
       43 LOADK                            R3 K10 ["Expected Y to be a boolean"]
       44 GETIMPORT                        R1 K5 [assert]
       46 CALL                             R1 2 0
       47 GETTABLEKS                       R4 R0 K11 ["Z"]
       49 FASTCALL1                        TYPE R4 ; [+2]
       50 GETIMPORT                        R3 K1 [type]
       52 CALL                             R3 1 1
       53 JUMPIFEQKS                       R3 K7 ["boolean"] ; [+2]
       55 LOADB                            R2 0 +1
       56 LOADB                            R2 1
       57 FASTCALL2K                       ASSERT R2 K12 ; [+4]
       59 LOADK                            R3 K12 ["Expected Z to be a boolean"]
       60 GETIMPORT                        R1 K5 [assert]
       62 CALL                             R1 2 0
       63 DUPTABLE                         R1 K14 [{"enabledAxes"}]
       64 DUPTABLE                         R2 K15 [{"X", "Y", "Z"}]
       65 GETTABLEKS                       R3 R0 K6 ["X"]
       67 SETTABLEKS                       R3 R2 K6 ["X"]
       69 GETTABLEKS                       R3 R0 K9 ["Y"]
       71 SETTABLEKS                       R3 R2 K9 ["Y"]
       73 GETTABLEKS                       R3 R0 K11 ["Z"]
       75 SETTABLEKS                       R3 R2 K11 ["Z"]
       77 SETTABLEKS                       R2 R1 K13 ["enabledAxes"]
       79 RETURN                           R1 1

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
