PROTO_0:
        0 GETUPVAL                         R3 1
        1 GETTABLEKS                       R3 R3 K0 ["createRoot"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 SETUPVAL                         R3 0
        6 GETUPVAL                         R3 0
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K1 ["createElement"]
       10 GETUPVAL                         R6 3
       11 DUPTABLE                         R7 K4 [{"Plugin", "localizationFunction"}]
       12 SETTABLEKS                       R1 R7 K2 ["Plugin"]
       14 SETTABLEKS                       R2 R7 K3 ["localizationFunction"]
       16 CALL                             R5 2 -1
       17 NAMECALL                         R3 R3 K5 ["render"]
       19 CALL                             R3 -1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 1
        1 GETTABLEKS                       R4 R4 K0 ["createRoot"]
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 SETUPVAL                         R4 0
        6 GETUPVAL                         R4 0
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R6 R6 K1 ["createElement"]
       10 GETUPVAL                         R7 3
       11 DUPTABLE                         R8 K5 [{"Plugin", "RootInstance", "UpdateContextFunction"}]
       12 SETTABLEKS                       R1 R8 K2 ["Plugin"]
       14 SETTABLEKS                       R3 R8 K3 ["RootInstance"]
       16 SETTABLEKS                       R2 R8 K4 ["UpdateContextFunction"]
       18 CALL                             R6 2 -1
       19 NAMECALL                         R4 R4 K6 ["render"]
       21 CALL                             R4 -1 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 5
        5 GETTABLEKS                       R4 R4 K0 ["createRoot"]
        7 MOVE                             R5 R0
        8 CALL                             R4 1 1
        9 SETUPVAL                         R4 4
       10 GETUPVAL                         R4 4
       11 GETUPVAL                         R6 6
       12 GETTABLEKS                       R6 R6 K1 ["createElement"]
       14 GETUPVAL                         R7 7
       15 DUPTABLE                         R8 K5 [{"Plugin", "RootInstance", "UpdateContextFunction"}]
       16 SETTABLEKS                       R1 R8 K2 ["Plugin"]
       18 SETTABLEKS                       R3 R8 K3 ["RootInstance"]
       20 SETTABLEKS                       R2 R8 K4 ["UpdateContextFunction"]
       22 CALL                             R6 2 -1
       23 NAMECALL                         R4 R4 K6 ["render"]
       25 CALL                             R4 -1 0
       26 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 4
        4 GETTABLEKS                       R3 R3 K0 ["createRoot"]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 SETUPVAL                         R3 3
        9 GETUPVAL                         R3 3
       10 GETUPVAL                         R5 5
       11 GETTABLEKS                       R5 R5 K1 ["createElement"]
       13 GETUPVAL                         R6 6
       14 DUPTABLE                         R7 K4 [{"Plugin", "localizationFunction"}]
       15 SETTABLEKS                       R1 R7 K2 ["Plugin"]
       17 SETTABLEKS                       R2 R7 K3 ["localizationFunction"]
       19 CALL                             R5 2 -1
       20 NAMECALL                         R3 R3 K5 ["render"]
       22 CALL                             R3 -1 0
       23 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["unmount"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R0 1
       11 NAMECALL                         R0 R0 K0 ["unmount"]
       13 CALL                             R0 1 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 1
       16 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R5 K2 [task.spawn]
        2 NEWCLOSURE                       R6 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R3
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CALL                             R5 1 0
       12 GETIMPORT                        R5 K2 [task.spawn]
       14 NEWCLOSURE                       R6 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R4
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U5
       22 CALL                             R5 1 0
       23 NEWCLOSURE                       R5 P2
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U0
       26 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactRoblox"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K2 ["FaceControlEditorComponent"]
       23 GETTABLEKS                       R5 R5 K9 ["FaceControlEditorStandaloneCompleteComponent"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R1 K2 ["FaceControlEditorComponent"]
       30 GETTABLEKS                       R6 R6 K10 ["FaceControlEditorAssetCompleteComponent"]
       32 CALL                             R5 1 1
       33 LOADNIL                          R6
       34 LOADNIL                          R7
       35 NEWCLOSURE                       R8 P0
       36 CAPTURE                          REF R6
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R4
       40 NEWCLOSURE                       R9 P1
       41 CAPTURE                          REF R7
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R5
       45 NEWCLOSURE                       R10 P2
       46 CAPTURE                          REF R7
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R5
       50 CAPTURE                          REF R6
       51 CAPTURE                          VAL R4
       52 DUPTABLE                         R11 K12 [{"mount"}]
       53 SETTABLEKS                       R10 R11 K11 ["mount"]
       55 CLOSEUPVALS                      R6
       56 RETURN                           R11 1
