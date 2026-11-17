PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 GETIMPORT                        R4 K1 [ipairs]
        6 MOVE                             R5 R1
        7 CALL                             R4 1 3
        8 FORGPREP_INEXT                   R4
        9 GETTABLEKS                       R11 R8 K2 ["pathColumn"]
       11 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       13 MOVE                             R10 R2
       14 GETIMPORT                        R9 K5 [table.insert]
       16 CALL                             R9 2 0
       17 GETTABLEKS                       R9 R8 K2 ["pathColumn"]
       19 SETTABLE                         R8 R3 R9
       20 FORGLOOP                         R4 2 [inext] ; [-12]
       22 DUPTABLE                         R4 K9 [{"stepStateBundle", "tokenizedList", "newVarsMapping"}]
       23 SETTABLEKS                       R0 R4 K6 ["stepStateBundle"]
       25 SETTABLEKS                       R2 R4 K7 ["tokenizedList"]
       27 SETTABLEKS                       R3 R4 K8 ["newVarsMapping"]
       29 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["Util"]
       20 GETTABLEKS                       R3 R2 K8 ["Action"]
       22 GETTABLEKS                       R4 R0 K9 ["Src"]
       24 GETTABLEKS                       R4 R4 K10 ["Models"]
       26 GETIMPORT                        R5 K4 [require]
       28 GETTABLEKS                       R6 R4 K11 ["Watch"]
       30 GETTABLEKS                       R6 R6 K12 ["VariableRow"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K4 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Src"]
       37 GETTABLEKS                       R7 R7 K10 ["Models"]
       39 GETTABLEKS                       R7 R7 K13 ["StepStateBundle"]
       41 CALL                             R6 1 1
       42 MOVE                             R7 R3
       43 GETIMPORT                        R8 K1 [script]
       45 GETTABLEKS                       R8 R8 K14 ["Name"]
       47 DUPCLOSURE                       R9 K15 [PROTO_0]
       48 CALL                             R7 2 -1
       49 RETURN                           R7 -1
