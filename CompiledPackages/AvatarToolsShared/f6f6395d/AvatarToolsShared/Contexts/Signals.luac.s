PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K1 [setmetatable]
        8 CALL                             R2 2 0
        9 MOVE                             R4 R0
       10 NAMECALL                         R2 R1 K2 ["__mapSignalIDs"]
       12 CALL                             R2 2 1
       13 SETTABLEKS                       R2 R1 K3 ["signals"]
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
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R8 R8 K5 ["new"]
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
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Framework"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["ContextServices"]
       16 GETTABLEKS                       R3 R3 K7 ["ContextItem"]
       18 GETTABLEKS                       R4 R2 K8 ["Util"]
       20 GETTABLEKS                       R5 R4 K9 ["Signal"]
       22 LOADK                            R8 K10 ["Signals"]
       23 NAMECALL                         R6 R3 K11 ["extend"]
       25 CALL                             R6 2 1
       26 DUPCLOSURE                       R7 K12 [PROTO_0]
       27 CAPTURE                          VAL R6
       28 SETTABLEKS                       R7 R6 K13 ["new"]
       30 DUPCLOSURE                       R7 K14 [PROTO_1]
       31 CAPTURE                          VAL R5
       32 SETTABLEKS                       R7 R6 K15 ["__mapSignalIDs"]
       34 DUPCLOSURE                       R7 K16 [PROTO_2]
       35 SETTABLEKS                       R7 R6 K17 ["get"]
       37 RETURN                           R6 1
