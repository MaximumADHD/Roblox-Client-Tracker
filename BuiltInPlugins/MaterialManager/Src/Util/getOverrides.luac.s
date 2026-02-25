PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["MaterialVariant"]
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETTABLEKS                       R1 R0 K1 ["Material"]
        5 GETUPVAL                         R2 0
        6 JUMPIFNOTEQ                      R1 R2 ; [+6]
        8 GETTABLEKS                       R2 R0 K0 ["MaterialVariant"]
       10 GETTABLEKS                       R1 R2 K2 ["Name"]
       12 RETURN                           R1 1
       13 LOADK                            R1 K3 [""]
       14 RETURN                           R1 1

PROTO_1:
        0 JUMPIFEQKS                       R0 K0 [""] ; [+4]
        2 GETUPVAL                         R2 0
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R3 1
        9 GETTABLE                         R1 R2 R3
       10 JUMPIF                           R1 ; [+3]
       11 GETUPVAL                         R1 2
       12 ADDK                             R1 R1 K1 [1]
       13 SETUPVAL                         R1 2
       14 GETUPVAL                         R1 0
       15 LOADB                            R2 1
       16 SETTABLE                         R2 R1 R0
       17 LOADB                            R1 1
       18 RETURN                           R1 1

PROTO_2:
        0 LOADN                            R3 0
        1 NEWTABLE                         R4 0 0
        3 NEWTABLE                         R5 0 0
        5 GETUPVAL                         R6 0
        6 MOVE                             R7 R1
        7 MOVE                             R8 R4
        8 NEWCLOSURE                       R9 P0
        9 CAPTURE                          VAL R2
       10 CALL                             R6 3 0
       11 MOVE                             R7 R4
       12 GETUPVAL                         R8 1
       13 MOVE                             R9 R2
       14 CALL                             R8 1 -1
       15 FASTCALL                         TABLE_INSERT ; [+2]
       16 GETIMPORT                        R6 K2 [table.insert]
       18 CALL                             R6 -1 0
       19 GETIMPORT                        R6 K4 [table.sort]
       21 MOVE                             R7 R4
       22 CALL                             R6 1 0
       23 GETUPVAL                         R6 2
       24 MOVE                             R7 R4
       25 NEWCLOSURE                       R8 P1
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          REF R3
       29 CALL                             R6 2 1
       30 MOVE                             R4 R6
       31 LOADN                            R8 1
       32 LOADK                            R9 K5 ["None"]
       33 FASTCALL3                        TABLE_INSERT R4 R8 R9
       35 MOVE                             R7 R4
       36 GETIMPORT                        R6 K2 [table.insert]
       38 CALL                             R6 3 0
       39 JUMPIFEQKS                       R0 K6 [""] ; [+3]
       41 GETTABLE                         R6 R5 R0
       42 JUMPIF                           R6 ; [+4]
       43 MOVE                             R6 R4
       44 LOADN                            R7 1
       45 CLOSEUPVALS                      R3
       46 RETURN                           R6 2
       47 MOVE                             R6 R4
       48 ADDK                             R7 R3 K7 [1]
       49 CLOSEUPVALS                      R3
       50 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R3 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R4 K8 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R2 K9 ["Dash"]
       25 GETTABLEKS                       R3 R4 K10 ["filter"]
       27 GETTABLEKS                       R6 R0 K5 ["Src"]
       29 GETTABLEKS                       R5 R6 K11 ["Resources"]
       31 GETTABLEKS                       R4 R5 K12 ["Constants"]
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R6 R4 K13 ["getMaterialName"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R7 R0 K5 ["Src"]
       40 GETTABLEKS                       R6 R7 K14 ["Util"]
       42 GETIMPORT                        R7 K4 [require]
       44 GETTABLEKS                       R8 R6 K15 ["MapMaterials"]
       46 CALL                             R7 1 1
       47 DUPCLOSURE                       R8 K16 [PROTO_2]
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R3
       51 RETURN                           R8 1
