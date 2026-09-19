PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["properties"]
        3 GETTABLEKS                       R2 R2 K1 ["observeString"]
        5 GETTABLEKS                       R3 R0 K2 ["instance"]
        7 LOADK                            R4 K3 ["Name"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 1
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["properties"]
       14 GETTABLEKS                       R2 R2 K4 ["observeNumber"]
       16 GETTABLEKS                       R3 R0 K2 ["instance"]
       18 LOADK                            R4 K5 ["Value"]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 1
       21 CALL                             R2 1 0
       22 GETUPVAL                         R3 2
       23 DUPTABLE                         R4 K10 [{"name", "id", "value", "depth"}]
       24 GETTABLEKS                       R5 R0 K2 ["instance"]
       26 GETTABLEKS                       R5 R5 K3 ["Name"]
       28 SETTABLEKS                       R5 R4 K6 ["name"]
       30 GETUPVAL                         R5 3
       31 GETTABLEKS                       R7 R0 K2 ["instance"]
       33 NAMECALL                         R5 R5 K11 ["instanceToId"]
       35 CALL                             R5 2 1
       36 SETTABLEKS                       R5 R4 K7 ["id"]
       38 GETTABLEKS                       R5 R0 K2 ["instance"]
       40 GETTABLEKS                       R5 R5 K5 ["Value"]
       42 SETTABLEKS                       R5 R4 K8 ["value"]
       44 SETTABLEKS                       R1 R4 K9 ["depth"]
       46 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       48 GETIMPORT                        R2 K14 [table.insert]
       50 CALL                             R2 2 0
       51 GETTABLEKS                       R2 R0 K15 ["children"]
       53 LOADNIL                          R3
       54 LOADNIL                          R4
       55 FORGPREP                         R2
       56 GETUPVAL                         R7 4
       57 MOVE                             R8 R6
       58 ADDK                             R9 R1 K16 [1]
       59 CALL                             R7 2 0
       60 FORGLOOP                         R2 2 ; [-5]
       62 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["instance"]
        2 GETTABLEKS                       R3 R3 K1 ["Name"]
        4 GETTABLEKS                       R4 R1 K0 ["instance"]
        6 GETTABLEKS                       R4 R4 K1 ["Name"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R3
       11 GETIMPORT                        R4 K2 [table.sort]
       13 MOVE                             R5 R2
       14 DUPCLOSURE                       R6 K3 [PROTO_1]
       15 CALL                             R4 2 0
       16 MOVE                             R4 R2
       17 LOADNIL                          R5
       18 LOADNIL                          R6
       19 FORGPREP                         R4
       20 MOVE                             R9 R3
       21 MOVE                             R10 R8
       22 LOADN                            R11 0
       23 CALL                             R9 2 0
       24 FORGLOOP                         R4 2 ; [-5]
       26 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["createComputed"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R1
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Instances"]
       13 GETTABLEKS                       R2 R2 K8 ["InstanceRegistry"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["Signals"]
       22 GETTABLEKS                       R3 R3 K10 ["Experimental"]
       24 GETTABLEKS                       R3 R3 K11 ["SignalExperimentalUtils"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K12 ["Parent"]
       31 GETTABLEKS                       R4 R4 K9 ["Signals"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Util"]
       38 GETTABLEKS                       R5 R5 K9 ["Signals"]
       40 GETTABLEKS                       R5 R5 K13 ["TypedInstanceSignals"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETIMPORT                        R6 K1 [script]
       47 GETTABLEKS                       R6 R6 K12 ["Parent"]
       49 GETTABLEKS                       R6 R6 K14 ["observeJointTree"]
       51 CALL                             R5 1 1
       52 DUPCLOSURE                       R6 K15 [PROTO_3]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R4
       56 RETURN                           R6 1
