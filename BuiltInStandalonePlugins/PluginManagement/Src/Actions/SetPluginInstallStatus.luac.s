PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K1 [type]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["string"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       11 LOADK                            R5 K3 ["Expected pluginId to be a string"]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R6 R1
       17 GETIMPORT                        R5 K1 [type]
       19 CALL                             R5 1 1
       20 JUMPIFEQKS                       R5 K6 ["number"] ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       26 LOADK                            R5 K7 ["Expected statusCode to be a number"]
       27 GETIMPORT                        R3 K5 [assert]
       29 CALL                             R3 2 0
       30 FASTCALL1                        TYPE R2 ; [+3]
       31 MOVE                             R6 R2
       32 GETIMPORT                        R5 K1 [type]
       34 CALL                             R5 1 1
       35 JUMPIFEQKS                       R5 K2 ["string"] ; [+2]
       37 LOADB                            R4 0 +1
       38 LOADB                            R4 1
       39 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       41 LOADK                            R5 K8 ["Expected message to be a string"]
       42 GETIMPORT                        R3 K5 [assert]
       44 CALL                             R3 2 0
       45 DUPTABLE                         R3 K12 [{"pluginId", "statusCode", "message"}]
       46 SETTABLEKS                       R0 R3 K9 ["pluginId"]
       48 SETTABLEKS                       R1 R3 K10 ["statusCode"]
       50 SETTABLEKS                       R2 R3 K11 ["message"]
       52 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Action"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 GETIMPORT                        R3 K1 [script]
       19 GETTABLEKS                       R3 R3 K7 ["Name"]
       21 DUPCLOSURE                       R4 K8 [PROTO_0]
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1
