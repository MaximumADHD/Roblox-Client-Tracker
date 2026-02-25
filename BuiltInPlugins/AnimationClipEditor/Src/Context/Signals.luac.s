PROTO_0:
        0 DUPTABLE                         R1 K1 [{"signals"}]
        1 GETUPVAL                         R2 0
        2 MOVE                             R4 R0
        3 NAMECALL                         R2 R2 K2 ["__mapSignalIDs"]
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R1 K0 ["signals"]
        8 GETUPVAL                         R4 0
        9 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       11 MOVE                             R3 R1
       12 GETIMPORT                        R2 K4 [setmetatable]
       14 CALL                             R2 2 0
       15 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 GETTABLE                         R10 R2 R7
        8 JUMPIFEQKNIL                     R10 ; [+2]
       10 LOADB                            R9 0 +1
       11 LOADB                            R9 1
       12 LOADK                            R11 K2 ["Duplicate action, ID: "]
       13 MOVE                             R12 R7
       14 CONCAT                           R10 R11 R12
       15 FASTCALL2                        ASSERT R9 R10 ; [+3]
       17 GETIMPORT                        R8 K4 [assert]
       19 CALL                             R8 2 0
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R8 R9 K5 ["new"]
       23 CALL                             R8 0 1
       24 SETTABLE                         R8 R2 R7
       25 FORGLOOP                         R3 2 ; [-19]
       27 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["signals"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Packages"]
        9 GETTABLEKS                       R1 R2 K5 ["DraggerFramework"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R4 R1 K8 ["Utility"]
       15 GETTABLEKS                       R3 R4 K9 ["Signal"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K7 [require]
       20 GETTABLEKS                       R5 R0 K4 ["Packages"]
       22 GETTABLEKS                       R4 R5 K10 ["Framework"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       27 GETTABLEKS                       R4 R5 K12 ["ContextItem"]
       29 LOADK                            R7 K13 ["Signals"]
       30 NAMECALL                         R5 R4 K14 ["extend"]
       32 CALL                             R5 2 1
       33 DUPCLOSURE                       R6 K15 [PROTO_0]
       34 CAPTURE                          VAL R5
       35 SETTABLEKS                       R6 R5 K16 ["new"]
       37 DUPCLOSURE                       R6 K17 [PROTO_1]
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R6 R5 K18 ["__mapSignalIDs"]
       41 DUPCLOSURE                       R6 K19 [PROTO_2]
       42 SETTABLEKS                       R6 R5 K20 ["get"]
       44 RETURN                           R5 1
