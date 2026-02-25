PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 GETIMPORT                        R5 K1 [ipairs]
        6 MOVE                             R6 R2
        7 CALL                             R5 1 3
        8 FORGPREP_INEXT                   R5
        9 GETTABLEKS                       R12 R9 K2 ["pathColumn"]
       11 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       13 MOVE                             R11 R3
       14 GETIMPORT                        R10 K5 [table.insert]
       16 CALL                             R10 2 0
       17 GETTABLEKS                       R10 R9 K2 ["pathColumn"]
       19 SETTABLE                         R9 R4 R10
       20 FORGLOOP                         R5 2 [inext] ; [-12]
       22 DUPTABLE                         R5 K10 [{"stepStateBundle", "parentPath", "childKeys", "newVarsMapping"}]
       23 SETTABLEKS                       R0 R5 K6 ["stepStateBundle"]
       25 SETTABLEKS                       R1 R5 K7 ["parentPath"]
       27 SETTABLEKS                       R3 R5 K8 ["childKeys"]
       29 SETTABLEKS                       R4 R5 K9 ["newVarsMapping"]
       31 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["Util"]
       20 GETTABLEKS                       R3 R2 K8 ["Action"]
       22 GETTABLEKS                       R5 R0 K9 ["Src"]
       24 GETTABLEKS                       R4 R5 K10 ["Models"]
       26 GETIMPORT                        R5 K4 [require]
       28 GETTABLEKS                       R7 R4 K11 ["Watch"]
       30 GETTABLEKS                       R6 R7 K12 ["VariableRow"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K4 [require]
       35 GETTABLEKS                       R9 R0 K9 ["Src"]
       37 GETTABLEKS                       R8 R9 K10 ["Models"]
       39 GETTABLEKS                       R7 R8 K13 ["StepStateBundle"]
       41 CALL                             R6 1 1
       42 MOVE                             R7 R3
       43 GETIMPORT                        R9 K1 [script]
       45 GETTABLEKS                       R8 R9 K14 ["Name"]
       47 DUPCLOSURE                       R9 K15 [PROTO_0]
       48 CALL                             R7 2 -1
       49 RETURN                           R7 -1
