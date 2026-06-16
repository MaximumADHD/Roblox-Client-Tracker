PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADK                            R2 K1 ["List"]
        4 CALL                             R1 1 2
        5 DUPTABLE                         R3 K4 [{"layout", "setLayout"}]
        6 SETTABLEKS                       R1 R3 K2 ["layout"]
        8 SETTABLEKS                       R2 R3 K3 ["setLayout"]
       10 GETUPVAL                         R4 1
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K5 ["Provider"]
       14 DUPTABLE                         R6 K7 [{"value"}]
       15 SETTABLEKS                       R3 R6 K6 ["value"]
       17 GETTABLEKS                       R7 R0 K8 ["children"]
       19 CALL                             R4 3 -1
       20 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AssetPicker"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K5 ["Parent"]
       15 GETIMPORT                        R3 K7 [require]
       17 GETTABLEKS                       R4 R2 K8 ["React"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R2 K9 ["ReactUtils"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R6 R1 K10 ["Types"]
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R6 R4 K11 ["createUnimplemented"]
       32 GETTABLEKS                       R7 R3 K12 ["createElement"]
       34 DUPTABLE                         R8 K15 [{"layout", "setLayout"}]
       35 LOADK                            R9 K16 ["List"]
       36 SETTABLEKS                       R9 R8 K13 ["layout"]
       38 MOVE                             R9 R6
       39 LOADK                            R10 K14 ["setLayout"]
       40 CALL                             R9 1 1
       41 SETTABLEKS                       R9 R8 K14 ["setLayout"]
       43 GETTABLEKS                       R9 R3 K17 ["createContext"]
       45 MOVE                             R10 R8
       46 CALL                             R9 1 1
       47 DUPCLOSURE                       R10 K18 [PROTO_0]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R9
       51 DUPTABLE                         R11 K21 [{"Context", "Provider"}]
       52 SETTABLEKS                       R9 R11 K19 ["Context"]
       54 SETTABLEKS                       R10 R11 K20 ["Provider"]
       56 RETURN                           R11 1
