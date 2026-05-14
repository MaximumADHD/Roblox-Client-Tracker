PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 LOADK                            R4 K3 ["Expected paneName to be a string, received %s"]
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R7 R0
       12 GETIMPORT                        R6 K1 [type]
       14 CALL                             R6 1 1
       15 NAMECALL                         R4 R4 K4 ["format"]
       17 CALL                             R4 2 -1
       18 FASTCALL                         ASSERT ; [+2]
       19 GETIMPORT                        R2 K6 [assert]
       21 CALL                             R2 -1 0
       22 FASTCALL1                        TYPE R1 ; [+3]
       23 MOVE                             R5 R1
       24 GETIMPORT                        R4 K1 [type]
       26 CALL                             R4 1 1
       27 JUMPIFEQKS                       R4 K7 ["boolean"] ; [+2]
       29 LOADB                            R3 0 +1
       30 LOADB                            R3 1
       31 LOADK                            R4 K8 ["Expected expandedPaneState to be a boolean, received %s"]
       32 FASTCALL1                        TYPE R1 ; [+3]
       33 MOVE                             R7 R1
       34 GETIMPORT                        R6 K1 [type]
       36 CALL                             R6 1 1
       37 NAMECALL                         R4 R4 K4 ["format"]
       39 CALL                             R4 2 -1
       40 FASTCALL                         ASSERT ; [+2]
       41 GETIMPORT                        R2 K6 [assert]
       43 CALL                             R2 -1 0
       44 DUPTABLE                         R2 K11 [{"PaneName", "ExpandedPaneState"}]
       45 SETTABLEKS                       R0 R2 K9 ["PaneName"]
       47 SETTABLEKS                       R1 R2 K10 ["ExpandedPaneState"]
       49 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["Util"]
       25 GETTABLEKS                       R4 R3 K10 ["Action"]
       27 MOVE                             R5 R4
       28 GETIMPORT                        R6 K1 [script]
       30 GETTABLEKS                       R6 R6 K11 ["Name"]
       32 DUPCLOSURE                       R7 K12 [PROTO_0]
       33 CALL                             R5 2 -1
       34 RETURN                           R5 -1
