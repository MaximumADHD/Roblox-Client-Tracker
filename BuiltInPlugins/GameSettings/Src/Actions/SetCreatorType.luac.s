PROTO_0:
        0 LOADB                            R2 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["EnumItem"] ; [+9]
        8 GETTABLEKS                       R3 R0 K3 ["EnumType"]
       10 GETIMPORT                        R4 K6 [Enum.CreatorType]
       12 JUMPIFEQ                         R3 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 GETIMPORT                        R4 K8 [script]
       18 GETTABLEKS                       R4 R4 K9 ["Name"]
       20 LOADK                            R5 K10 [" requires creatorType to be an Enum.CreatorType, not "]
       21 FASTCALL1                        TYPEOF R0 ; [+3]
       22 MOVE                             R7 R0
       23 GETIMPORT                        R6 K1 [typeof]
       25 CALL                             R6 1 1
       26 CONCAT                           R3 R4 R6
       27 FASTCALL2                        ASSERT R2 R3 ; [+3]
       29 GETIMPORT                        R1 K12 [assert]
       31 CALL                             R1 2 0
       32 DUPTABLE                         R1 K14 [{"creatorType"}]
       33 SETTABLEKS                       R0 R1 K13 ["creatorType"]
       35 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R1 R1 K7 ["Util"]
       18 GETTABLEKS                       R1 R1 K8 ["Action"]
       20 MOVE                             R2 R1
       21 GETIMPORT                        R3 K1 [script]
       23 GETTABLEKS                       R3 R3 K9 ["Name"]
       25 DUPCLOSURE                       R4 K10 [PROTO_0]
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1
