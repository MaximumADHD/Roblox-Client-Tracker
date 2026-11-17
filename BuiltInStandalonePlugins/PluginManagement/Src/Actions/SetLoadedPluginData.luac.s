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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["Types"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R1 K10 ["makeActionCreator"]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K11 ["Name"]
       31 DUPCLOSURE                       R5 K12 [PROTO_0]
       32 CALL                             R3 2 -1
       33 RETURN                           R3 -1
