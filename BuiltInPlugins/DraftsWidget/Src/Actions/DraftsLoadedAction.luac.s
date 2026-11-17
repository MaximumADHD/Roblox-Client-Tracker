PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 LOADK                            R5 K3 ["Expected draft to be table. Got '"]
       10 MOVE                             R6 R1
       11 LOADK                            R7 K4 ["'"]
       12 CONCAT                           R4 R5 R7
       13 FASTCALL2                        ASSERT R3 R4 ; [+3]
       15 GETIMPORT                        R2 K6 [assert]
       17 CALL                             R2 2 0
       18 GETIMPORT                        R2 K8 [ipairs]
       20 MOVE                             R3 R0
       21 CALL                             R2 1 3
       22 FORGPREP_INEXT                   R2
       23 FASTCALL1                        TYPEOF R6 ; [+3]
       24 MOVE                             R8 R6
       25 GETIMPORT                        R7 K1 [typeof]
       27 CALL                             R7 1 1
       28 LOADB                            R9 0
       29 JUMPIFNOTEQKS                    R7 K9 ["Instance"] ; [+5]
       31 LOADK                            R11 K10 ["LuaSourceContainer"]
       32 NAMECALL                         R9 R6 K11 ["IsA"]
       34 CALL                             R9 2 1
       35 LOADK                            R11 K12 ["Expected drafts["]
       36 MOVE                             R12 R5
       37 LOADK                            R13 K13 ["] to be a LuaSourceContainer. Got '"]
       38 JUMPIFNOTEQKS                    R7 K9 ["Instance"] ; [+4]
       40 GETTABLEKS                       R14 R6 K14 ["ClassName"]
       42 JUMPIF                           R14 ; [+1]
       43 MOVE                             R14 R7
       44 LOADK                            R15 K4 ["'"]
       45 CONCAT                           R10 R11 R15
       46 FASTCALL2                        ASSERT R9 R10 ; [+3]
       48 GETIMPORT                        R8 K6 [assert]
       50 CALL                             R8 2 0
       51 FORGLOOP                         R2 2 [inext] ; [-29]
       53 DUPTABLE                         R2 K16 [{"Drafts"}]
       54 SETTABLEKS                       R0 R2 K15 ["Drafts"]
       56 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Action"]
        9 CALL                             R0 1 1
       10 MOVE                             R1 R0
       11 GETIMPORT                        R2 K3 [script]
       13 GETTABLEKS                       R2 R2 K6 ["Name"]
       15 DUPCLOSURE                       R3 K7 [PROTO_0]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1
