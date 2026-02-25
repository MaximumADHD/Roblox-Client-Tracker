PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Expected story to be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 GETIMPORT                        R2 K7 [table.clone]
       17 GETUPVAL                         R3 0
       18 CALL                             R2 1 1
       19 MOVE                             R3 R1
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 FORGPREP                         R3
       23 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       25 MOVE                             R9 R2
       26 MOVE                             R10 R7
       27 GETIMPORT                        R8 K9 [table.insert]
       29 CALL                             R8 2 0
       30 FORGLOOP                         R3 2 ; [-8]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R3 R4 K10 ["provideMockContext"]
       35 MOVE                             R4 R2
       36 MOVE                             R5 R0
       37 CALL                             R3 2 -1
       38 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["TestHelpers"]
       18 GETTABLEKS                       R3 R1 K8 ["ContextServices"]
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R7 R0 K9 ["Src"]
       24 GETTABLEKS                       R6 R7 K10 ["Resources"]
       26 GETTABLEKS                       R5 R6 K11 ["MakeTheme"]
       28 CALL                             R4 1 1
       29 NEWTABLE                         R5 0 3
       31 GETTABLEKS                       R7 R3 K12 ["Analytics"]
       33 GETTABLEKS                       R6 R7 K13 ["mock"]
       35 CALL                             R6 0 1
       36 GETTABLEKS                       R8 R3 K14 ["Localization"]
       38 GETTABLEKS                       R7 R8 K13 ["mock"]
       40 CALL                             R7 0 1
       41 MOVE                             R8 R4
       42 LOADB                            R9 1
       43 CALL                             R8 1 -1
       44 SETLIST                          R5 R6 -1 [1]
       46 DUPCLOSURE                       R6 K15 [PROTO_0]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R2
       49 RETURN                           R6 1
