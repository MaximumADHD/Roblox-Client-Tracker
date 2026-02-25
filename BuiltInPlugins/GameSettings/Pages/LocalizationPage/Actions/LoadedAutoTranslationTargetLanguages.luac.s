PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["sourceLanguage must be a string"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K1 [type]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K6 ["table"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       26 LOADK                            R4 K7 ["targetLanguages must be a table"]
       27 GETIMPORT                        R2 K5 [assert]
       29 CALL                             R2 2 0
       30 DUPTABLE                         R2 K10 [{"sourceLanguage", "targetLanguages"}]
       31 SETTABLEKS                       R0 R2 K8 ["sourceLanguage"]
       33 SETTABLEKS                       R1 R2 K9 ["targetLanguages"]
       35 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R3 K4 [require]
       13 GETTABLEKS                       R5 R0 K5 ["Packages"]
       15 GETTABLEKS                       R4 R5 K6 ["Framework"]
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R2 R3 K7 ["Util"]
       20 GETTABLEKS                       R1 R2 K8 ["Action"]
       22 MOVE                             R2 R1
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R3 R4 K9 ["Name"]
       27 DUPCLOSURE                       R4 K10 [PROTO_0]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1
