PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["UpdateGraphNodeDefinition"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+7]
        4 GETIMPORT                        R0 K1 [game]
        6 LOADK                            R2 K2 ["AnimGraphUpdateGraphNodeDefinitionAPI"]
        7 NAMECALL                         R0 R0 K3 ["GetEngineFeature"]
        9 CALL                             R0 2 1
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 GETIMPORT                        R0 K5 [pcall]
       14 NEWCLOSURE                       R1 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CALL                             R0 1 2
       19 JUMPIF                           R0 ; [+1]
       20 RETURN                           R0 0
       21 JUMPIF                           R1 ; [+3]
       22 GETUPVAL                         R2 5
       23 CALL                             R2 0 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R2 6
       26 NAMECALL                         R2 R2 K6 ["IsRunning"]
       28 CALL                             R2 1 1
       29 JUMPIF                           R2 ; [+5]
       30 GETUPVAL                         R2 7
       31 LOADN                            R4 0
       32 NAMECALL                         R2 R2 K7 ["StepAnimations"]
       34 CALL                             R2 2 0
       35 GETUPVAL                         R2 8
       36 CALL                             R2 0 0
       37 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 JUMPIF                           R1 ; [+3]
        5 LOADB                            R1 1
        6 SETUPVAL                         R1 1
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 2
        9 JUMPIFNOT                        R1 ; [+1]
       10 RETURN                           R0 0
       11 GETIMPORT                        R1 K2 [task.defer]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          UPVAL U7
       20 CAPTURE                          UPVAL U8
       21 CAPTURE                          UPVAL U9
       22 CAPTURE                          UPVAL U10
       23 CALL                             R1 1 1
       24 SETUPVAL                         R1 2
       25 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 2
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETIMPORT                        R0 K2 [task.cancel]
        8 GETUPVAL                         R1 2
        9 CALL                             R0 1 0
       10 LOADNIL                          R0
       11 SETUPVAL                         R0 2
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R8 R2 K0 ["NodeType"]
        3 GETTABLE                         R6 R7 R8
        4 JUMPIF                           R6 ; [+2]
        5 LOADNIL                          R7
        6 RETURN                           R7 1
        7 MOVE                             R7 R6
        8 MOVE                             R8 R2
        9 CALL                             R7 1 1
       10 LOADB                            R8 0
       11 LOADB                            R9 0
       12 LOADNIL                          R10
       13 GETUPVAL                         R11 1
       14 GETTABLEKS                       R11 R11 K1 ["createEffect"]
       16 NEWCLOSURE                       R12 P0
       17 CAPTURE                          VAL R7
       18 CAPTURE                          REF R8
       19 CAPTURE                          REF R10
       20 CAPTURE                          REF R9
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R4
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R5
       28 CALL                             R11 1 1
       29 NEWCLOSURE                       R12 P1
       30 CAPTURE                          REF R9
       31 CAPTURE                          VAL R11
       32 CAPTURE                          REF R10
       33 CLOSEUPVALS                      R8
       34 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["RunService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETIMPORT                        R3 K1 [script]
       17 GETTABLEKS                       R3 R3 K10 ["Parent"]
       19 GETTABLEKS                       R3 R3 K11 ["NodeDefinitionObservers"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K10 ["Parent"]
       26 GETTABLEKS                       R4 R4 K12 ["Signals"]
       28 CALL                             R3 1 1
       29 DUPCLOSURE                       R4 K13 [PROTO_4]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R1
       33 RETURN                           R4 1
