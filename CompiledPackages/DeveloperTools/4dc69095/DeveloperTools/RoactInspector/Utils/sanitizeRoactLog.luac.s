PROTO_0:
        0 LOADK                            R3 K0 ["Roact.Component"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETUPVAL                         R1 0
        6 MOVE                             R2 R0
        7 LOADK                            R3 K2 ["function __update"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+3]
       10 GETUPVAL                         R1 1
       11 ADDK                             R1 R1 K3 [1]
       12 SETUPVAL                         R1 1
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["match"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+26]
        6 LOADK                            R5 K0 ["Roact%.Component"]
        7 NAMECALL                         R3 R1 K1 ["match"]
        9 CALL                             R3 2 1
       10 JUMPIFNOT                        R3 ; [+7]
       11 GETUPVAL                         R3 2
       12 MOVE                             R4 R1
       13 LOADK                            R5 K2 ["function setState"]
       14 CALL                             R3 2 1
       15 JUMPIFNOT                        R3 ; [+2]
       16 LOADK                            R3 K3 ["Roact.Component setState"]
       17 RETURN                           R3 1
       18 LOADK                            R5 K4 ["RoactRodux%.connect"]
       19 NAMECALL                         R3 R1 K1 ["match"]
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R3 ; [+2]
       23 LOADK                            R3 K5 ["Rodux Store updated"]
       24 RETURN                           R3 1
       25 LOADK                            R5 K6 ["Roact%.SingleEventManager"]
       26 NAMECALL                         R3 R1 K1 ["match"]
       28 CALL                             R3 2 1
       29 JUMPIFNOT                        R3 ; [+2]
       30 LOADK                            R3 K7 ["Roact event"]
       31 RETURN                           R3 1
       32 JUMPIF                           R2 ; [+2]
       33 MOVE                             R3 R1
       34 JUMPIF                           R3 ; [+1]
       35 LOADNIL                          R3
       36 RETURN                           R3 1

PROTO_3:
        0 LOADK                            R3 K0 ["\n"]
        1 NAMECALL                         R1 R0 K1 ["split"]
        3 CALL                             R1 2 1
        4 LOADN                            R2 0
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          REF R2
       10 CALL                             R3 2 0
       11 GETUPVAL                         R3 2
       12 MOVE                             R4 R1
       13 DUPCLOSURE                       R5 K2 [PROTO_2]
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U1
       17 CALL                             R3 2 1
       18 MOVE                             R1 R3
       19 GETUPVAL                         R3 5
       20 MOVE                             R4 R1
       21 LOADK                            R5 K0 ["\n"]
       22 CALL                             R3 2 1
       23 LOADN                            R4 0
       24 JUMPIFNOTLT                      R4 R2 ; [+9]
       26 LOADK                            R4 K3 ["Update chain: %d component(s)\nTrigger:\n%s"]
       27 MOVE                             R6 R2
       28 MOVE                             R7 R3
       29 NAMECALL                         R4 R4 K4 ["format"]
       31 CALL                             R4 3 -1
       32 CLOSEUPVALS                      R2
       33 RETURN                           R4 -1
       34 CLOSEUPVALS                      R2
       35 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Dash"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K6 ["some"]
       18 GETTABLEKS                       R4 R2 K7 ["collectArray"]
       20 GETTABLEKS                       R5 R2 K8 ["forEach"]
       22 GETTABLEKS                       R6 R2 K9 ["endsWith"]
       24 GETIMPORT                        R7 K12 [table.concat]
       26 NEWTABLE                         R8 0 8
       28 LOADK                            R9 K13 ["RoactInspector%.Classes"]
       29 LOADK                            R10 K14 ["Roact%.createReconciler"]
       30 LOADK                            R11 K15 ["Roact%.Component"]
       31 LOADK                            R12 K16 ["Roact%.SingleEventManager"]
       32 LOADK                            R13 K17 ["Roact%.RobloxRenderer"]
       33 LOADK                            R14 K18 ["Libs%.RoactRodux"]
       34 LOADK                            R15 K19 ["Rodux%.Signal"]
       35 LOADK                            R16 K20 ["Rodux%.Store"]
       36 SETLIST                          R8 R9 8 [1]
       38 DUPCLOSURE                       R9 K21 [PROTO_3]
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R8
       44 CAPTURE                          VAL R7
       45 RETURN                           R9 1
