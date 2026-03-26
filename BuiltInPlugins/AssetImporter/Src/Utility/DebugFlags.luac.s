PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["GetService"]
        3 LOADK                            R1 K1 ["ProcessService"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetImporterFlags"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R3 1
        7 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        9 CALL                             R1 2 1
       10 JUMPIF                           R1 ; [+2]
       11 GETUPVAL                         R1 2
       12 RETURN                           R1 1
       13 GETUPVAL                         R3 1
       14 GETTABLE                         R2 R0 R3
       15 GETTABLEKS                       R1 R2 K2 ["Value"]
       17 RETURN                           R1 1

PROTO_2:
        0 ORK                              R1 R1 K0 [False]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          REF R1
        5 CLOSEUPVALS                      R1
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Utility"]
       13 GETTABLEKS                       R2 R3 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["Workspace"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETIMPORT                        R6 K1 [script]
       24 GETTABLEKS                       R5 R6 K11 ["Parent"]
       26 GETTABLEKS                       R4 R5 K12 ["hasInternalPermission"]
       28 CALL                             R3 1 1
       29 CALL                             R3 0 1
       30 GETIMPORT                        R4 K14 [pcall]
       32 DUPCLOSURE                       R5 K15 [PROTO_0]
       33 CAPTURE                          VAL R1
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K16 [PROTO_2]
       36 CAPTURE                          VAL R2
       37 NEWTABLE                         R6 8 0
       39 MOVE                             R8 R4
       40 ORK                              R8 R8 K17 [False]
       41 LOADK                            R9 K18 ["RunningUnderCLI"]
       42 NEWCLOSURE                       R7 P2
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R9
       45 CAPTURE                          REF R8
       46 CLOSEUPVALS                      R8
       47 SETTABLEKS                       R7 R6 K18 ["RunningUnderCLI"]
       49 LOADNIL                          R8
       50 ORK                              R8 R8 K17 [False]
       51 LOADK                            R9 K19 ["RunTests"]
       52 NEWCLOSURE                       R7 P2
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R9
       55 CAPTURE                          REF R8
       56 CLOSEUPVALS                      R8
       57 SETTABLEKS                       R7 R6 K19 ["RunTests"]
       59 LOADNIL                          R8
       60 ORK                              R8 R8 K17 [False]
       61 LOADK                            R9 K20 ["LogTestsQuiet"]
       62 NEWCLOSURE                       R7 P2
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R9
       65 CAPTURE                          REF R8
       66 CLOSEUPVALS                      R8
       67 SETTABLEKS                       R7 R6 K20 ["LogTestsQuiet"]
       69 LOADNIL                          R8
       70 ORK                              R8 R8 K17 [False]
       71 LOADK                            R9 K21 ["RunDeveloperFrameworkTests"]
       72 NEWCLOSURE                       R7 P2
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R9
       75 CAPTURE                          REF R8
       76 CLOSEUPVALS                      R8
       77 SETTABLEKS                       R7 R6 K21 ["RunDeveloperFrameworkTests"]
       79 GETTABLEKS                       R9 R6 K19 ["RunTests"]
       81 CALL                             R9 0 1
       82 OR                               R8 R9 R3
       83 ORK                              R8 R8 K17 [False]
       84 LOADK                            R9 K22 ["EnableRoactConfigs"]
       85 NEWCLOSURE                       R7 P2
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R9
       88 CAPTURE                          REF R8
       89 CLOSEUPVALS                      R8
       90 SETTABLEKS                       R7 R6 K22 ["EnableRoactConfigs"]
       92 RETURN                           R6 1
