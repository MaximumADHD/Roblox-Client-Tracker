PROTO_0:
        0 LOADK                            R3 K0 [""]
        1 JUMPIFNOT                        R2 ; [+37]
        2 FASTCALL1                        TYPEOF R2 ; [+3]
        3 MOVE                             R7 R2
        4 GETIMPORT                        R6 K2 [typeof]
        6 CALL                             R6 1 1
        7 JUMPIFEQKS                       R6 K3 ["table"] ; [+2]
        9 LOADB                            R5 0 +1
       10 LOADB                            R5 1
       11 FASTCALL2K                       ASSERT R5 K4 ; [+4]
       13 LOADK                            R6 K4 ["Args must be a table"]
       14 GETIMPORT                        R4 K6 [assert]
       16 CALL                             R4 2 0
       17 MOVE                             R4 R2
       18 LOADNIL                          R5
       19 LOADNIL                          R6
       20 FORGPREP                         R4
       21 LOADK                            R9 K7 ["%*,%*:%*"]
       22 MOVE                             R11 R3
       23 MOVE                             R12 R7
       24 MOVE                             R13 R8
       25 NAMECALL                         R9 R9 K8 ["format"]
       27 CALL                             R9 4 1
       28 MOVE                             R3 R9
       29 FORGLOOP                         R4 2 ; [-9]
       31 FASTCALL2K                       STRING_SUB R3 K9 ; [+5]
       33 MOVE                             R5 R3
       34 LOADK                            R6 K9 [2]
       35 GETIMPORT                        R4 K12 [string.sub]
       37 CALL                             R4 2 1
       38 MOVE                             R3 R4
       39 LOADK                            R5 K13 ["%*:[%*]"]
       40 MOVE                             R7 R1
       41 MOVE                             R8 R3
       42 NAMECALL                         R5 R5 K8 ["format"]
       44 CALL                             R5 3 1
       45 MOVE                             R4 R5
       46 RETURN                           R4 1

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"FormatByKey"}]
        1 DUPCLOSURE                       R1 K2 [PROTO_0]
        2 SETTABLEKS                       R1 R0 K0 ["FormatByKey"]
        4 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"GetTranslator"}]
        2 DUPCLOSURE                       R1 K2 [PROTO_1]
        3 SETTABLEKS                       R1 R0 K0 ["GetTranslator"]
        5 RETURN                           R0 1
