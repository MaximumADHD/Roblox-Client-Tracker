PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["union"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["strictInterface"]
        6 NEWTABLE                         R4 0 0
        8 CALL                             R3 1 1
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K2 ["interface"]
       12 DUPTABLE                         R5 K6 [{"Id", "Name", "Type"}]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R6 R7 K7 ["number"]
       16 SETTABLEKS                       R6 R5 K3 ["Id"]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R6 R7 K8 ["string"]
       21 SETTABLEKS                       R6 R5 K4 ["Name"]
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R6 R7 K9 ["isValidCreatorType"]
       26 SETTABLEKS                       R6 R5 K5 ["Type"]
       28 CALL                             R4 1 -1
       29 CALL                             R2 -1 1
       30 MOVE                             R3 R0
       31 CALL                             R2 1 1
       32 FASTCALL2K                       ASSERT R2 K10 ; [+4]
       34 LOADK                            R3 K10 ["CreatorInfo must be either an empty table, or have all keys defined"]
       35 GETIMPORT                        R1 K12 [assert]
       37 CALL                             R1 2 0
       38 DUPTABLE                         R1 K14 [{"cachedCreatorInfo"}]
       39 SETTABLEKS                       R0 R1 K13 ["cachedCreatorInfo"]
       41 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R3 K5 [require]
       13 GETTABLEKS                       R4 R1 K6 ["Framework"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R2 R3 K7 ["Util"]
       18 GETTABLEKS                       R3 R2 K8 ["Action"]
       20 GETTABLEKS                       R5 R0 K9 ["Src"]
       22 GETTABLEKS                       R4 R5 K7 ["Util"]
       24 GETIMPORT                        R5 K5 [require]
       26 GETTABLEKS                       R6 R4 K10 ["CreatorInfoHelper"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R9 K5 [require]
       31 GETTABLEKS                       R10 R1 K6 ["Framework"]
       33 CALL                             R9 1 1
       34 GETTABLEKS                       R8 R9 K7 ["Util"]
       36 GETTABLEKS                       R7 R8 K11 ["Typecheck"]
       38 GETTABLEKS                       R6 R7 K12 ["t"]
       40 MOVE                             R7 R3
       41 GETIMPORT                        R9 K1 [script]
       43 GETTABLEKS                       R8 R9 K13 ["Name"]
       45 DUPCLOSURE                       R9 K14 [PROTO_0]
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R5
       48 CALL                             R7 2 -1
       49 RETURN                           R7 -1
