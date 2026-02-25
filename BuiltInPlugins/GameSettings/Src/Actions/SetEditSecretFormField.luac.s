PROTO_0:
        0 LOADB                            R3 1
        1 JUMPIFEQKS                       R0 K0 ["editSecretFormName"] ; [+8]
        3 LOADB                            R3 1
        4 JUMPIFEQKS                       R0 K1 ["editSecretFormValue"] ; [+5]
        6 JUMPIFEQKS                       R0 K2 ["editSecretFormDomain"] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 GETIMPORT                        R4 K5 [string.format]
       12 LOADK                            R5 K6 ["SetEditSecretFormField: unexpected field name '%s'"]
       13 FASTCALL1                        TOSTRING R0 ; [+3]
       14 MOVE                             R7 R0
       15 GETIMPORT                        R6 K8 [tostring]
       17 CALL                             R6 1 1
       18 CALL                             R4 2 -1
       19 FASTCALL                         ASSERT ; [+2]
       20 GETIMPORT                        R2 K10 [assert]
       22 CALL                             R2 -1 0
       23 DUPTABLE                         R2 K13 [{"field", "value"}]
       24 SETTABLEKS                       R0 R2 K11 ["field"]
       26 SETTABLEKS                       R1 R2 K12 ["value"]
       28 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R5 R0 K5 ["Packages"]
       13 GETTABLEKS                       R4 R5 K6 ["Framework"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R2 R3 K7 ["Util"]
       18 GETTABLEKS                       R1 R2 K8 ["Action"]
       20 MOVE                             R2 R1
       21 GETIMPORT                        R4 K1 [script]
       23 GETTABLEKS                       R3 R4 K9 ["Name"]
       25 DUPCLOSURE                       R4 K10 [PROTO_0]
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1
