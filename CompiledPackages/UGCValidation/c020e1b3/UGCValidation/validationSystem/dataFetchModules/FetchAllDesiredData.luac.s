PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getDatas"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETUPVAL                         R4 4
        7 GETUPVAL                         R5 5
        8 CALL                             R0 5 1
        9 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["rootInstance"]
        2 GETTABLEKS                       R3 R0 K1 ["consumerConfig"]
        4 GETTABLEKS                       R3 R3 K2 ["source"]
        6 GETTABLEKS                       R4 R0 K1 ["consumerConfig"]
        8 GETTABLEKS                       R4 R4 K3 ["preloadedEditableMeshes"]
       10 JUMPIF                           R4 ; [+2]
       11 NEWTABLE                         R4 0 0
       13 GETTABLEKS                       R5 R0 K1 ["consumerConfig"]
       15 GETTABLEKS                       R5 R5 K4 ["preloadedEditableImages"]
       17 JUMPIF                           R5 ; [+2]
       18 NEWTABLE                         R5 0 0
       20 GETUPVAL                         R7 0
       21 GETTABLE                         R6 R7 R3
       22 GETUPVAL                         R7 1
       23 LOADNIL                          R8
       24 LOADNIL                          R9
       25 FORGPREP                         R7
       26 GETTABLE                         R12 R1 R11
       27 JUMPIFNOT                        R12 ; [+18]
       28 GETIMPORT                        R12 K6 [pcall]
       30 NEWCLOSURE                       R13 P0
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R11
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R5
       37 CALL                             R12 1 2
       38 JUMPIFNOT                        R12 ; [+3]
       39 JUMPIFNOT                        R13 ; [+2]
       40 SETTABLE                         R13 R0 R11
       41 JUMP                             ; [+4]
       42 GETUPVAL                         R14 3
       43 GETTABLEKS                       R14 R14 K7 ["DATA_FETCH_FAILURE"]
       45 SETTABLE                         R14 R0 R11
       46 FORGLOOP                         R7 2 ; [-21]
       48 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["validationSystem"]
       13 GETTABLEKS                       R2 R2 K6 ["ValidationEnums"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["validationSystem"]
       20 GETTABLEKS                       R3 R3 K7 ["dataFetchModules"]
       22 GETTABLEKS                       R3 R3 K8 ["FetchEditables"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K9 ["util"]
       29 GETTABLEKS                       R4 R4 K10 ["Types"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R1 K11 ["SharedDataMember"]
       34 DUPTABLE                         R5 K14 [{"InExpClient", "InExpServer"}]
       35 LOADB                            R6 1
       36 SETTABLEKS                       R6 R5 K12 ["InExpClient"]
       38 LOADB                            R6 1
       39 SETTABLEKS                       R6 R5 K13 ["InExpServer"]
       41 NEWTABLE                         R6 0 4
       43 GETTABLEKS                       R7 R4 K15 ["renderMeshesData"]
       45 GETTABLEKS                       R8 R4 K16 ["innerCagesData"]
       47 GETTABLEKS                       R9 R4 K17 ["outerCagesData"]
       49 GETTABLEKS                       R10 R4 K18 ["meshTextures"]
       51 SETLIST                          R6 R7 4 [1]
       53 NEWTABLE                         R7 2 0
       55 NEWTABLE                         R8 0 0
       57 SETTABLEKS                       R8 R7 K19 ["DATA_FETCH_FAILURE"]
       59 DUPCLOSURE                       R8 K20 [PROTO_1]
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R7
       64 SETTABLEKS                       R8 R7 K21 ["storeDesiredData"]
       66 RETURN                           R7 1
