PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["properties"]
        3 GETTABLEKS                       R2 R3 K1 ["observeString"]
        5 GETTABLEKS                       R3 R0 K2 ["instance"]
        7 LOADK                            R4 K3 ["Name"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 1
       10 CALL                             R2 1 0
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K0 ["properties"]
       14 GETTABLEKS                       R2 R3 K4 ["observeNumber"]
       16 GETTABLEKS                       R3 R0 K2 ["instance"]
       18 LOADK                            R4 K5 ["Value"]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 1
       21 CALL                             R2 1 0
       22 GETUPVAL                         R3 2
       23 DUPTABLE                         R4 K10 [{"name", "id", "value", "depth"}]
       24 GETTABLEKS                       R6 R0 K2 ["instance"]
       26 GETTABLEKS                       R5 R6 K3 ["Name"]
       28 SETTABLEKS                       R5 R4 K6 ["name"]
       30 GETUPVAL                         R5 3
       31 GETTABLEKS                       R7 R0 K2 ["instance"]
       33 NAMECALL                         R5 R5 K11 ["instanceToId"]
       35 CALL                             R5 2 1
       36 SETTABLEKS                       R5 R4 K7 ["id"]
       38 GETTABLEKS                       R6 R0 K2 ["instance"]
       40 GETTABLEKS                       R5 R6 K5 ["Value"]
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
       11 MOVE                             R4 R2
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 MOVE                             R9 R3
       16 MOVE                             R10 R8
       17 LOADN                            R11 0
       18 CALL                             R9 2 0
       19 FORGLOOP                         R4 2 ; [-5]
       21 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["createComputed"]
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
        9 GETTABLEKS                       R4 R0 K6 ["Util"]
       11 GETTABLEKS                       R3 R4 K7 ["Instances"]
       13 GETTABLEKS                       R2 R3 K8 ["InstanceRegistry"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["Signals"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Util"]
       27 GETTABLEKS                       R5 R6 K10 ["Signals"]
       29 GETTABLEKS                       R4 R5 K11 ["TypedInstanceSignals"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R7 K1 [script]
       36 GETTABLEKS                       R6 R7 K9 ["Parent"]
       38 GETTABLEKS                       R5 R6 K12 ["observeJointTree"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K13 [PROTO_2]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 RETURN                           R5 1
