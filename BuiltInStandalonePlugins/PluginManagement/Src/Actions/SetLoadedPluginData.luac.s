PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected pluginData to be a table."]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETIMPORT                        R1 K7 [next]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 1
       19 JUMPIFEQKNIL                     R1 ; [+19]
       21 GETIMPORT                        R4 K7 [next]
       23 MOVE                             R5 R0
       24 CALL                             R4 1 1
       25 FASTCALL1                        TYPE R4 ; [+2]
       26 GETIMPORT                        R3 K1 [type]
       28 CALL                             R3 1 1
       29 JUMPIFEQKS                       R3 K8 ["number"] ; [+2]
       31 LOADB                            R2 0 +1
       32 LOADB                            R2 1
       33 FASTCALL2K                       ASSERT R2 K9 ; [+4]
       35 LOADK                            R3 K9 ["Expected pluginData to be a map."]
       36 GETIMPORT                        R1 K5 [assert]
       38 CALL                             R1 2 0
       39 DUPTABLE                         R1 K11 [{"pluginData"}]
       40 SETTABLEKS                       R0 R1 K10 ["pluginData"]
       42 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Action"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 GETIMPORT                        R4 K1 [script]
       19 GETTABLEKS                       R3 R4 K7 ["Name"]
       21 DUPCLOSURE                       R4 K8 [PROTO_0]
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1
