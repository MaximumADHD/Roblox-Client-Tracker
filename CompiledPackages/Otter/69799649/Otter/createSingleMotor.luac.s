PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 2
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 2
        4 DUPTABLE                         R5 K7 [{"__goal", "__state", "__onComplete", "__fireOnComplete", "__onStep", "__fireOnStep", "__running"}]
        5 LOADNIL                          R6
        6 SETTABLEKS                       R6 R5 K0 ["__goal"]
        8 DUPTABLE                         R6 K10 [{"value", "complete"}]
        9 SETTABLEKS                       R0 R6 K8 ["value"]
       11 LOADB                            R7 1
       12 SETTABLEKS                       R7 R6 K9 ["complete"]
       14 SETTABLEKS                       R6 R5 K1 ["__state"]
       16 SETTABLEKS                       R1 R5 K2 ["__onComplete"]
       18 SETTABLEKS                       R2 R5 K3 ["__fireOnComplete"]
       20 SETTABLEKS                       R3 R5 K4 ["__onStep"]
       22 SETTABLEKS                       R4 R5 K5 ["__fireOnStep"]
       24 LOADB                            R6 0
       25 SETTABLEKS                       R6 R5 K6 ["__running"]
       27 GETUPVAL                         R8 1
       28 FASTCALL2                        SETMETATABLE R5 R8 ; [+4]
       30 MOVE                             R7 R5
       31 GETIMPORT                        R6 K12 [setmetatable]
       33 CALL                             R6 2 0
       34 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["step"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["__running"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 NAMECALL                         R1 R1 K1 ["Connect"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K2 ["__connection"]
       12 LOADB                            R1 1
       13 SETTABLEKS                       R1 R0 K0 ["__running"]
       15 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["__connection"]
        2 JUMPIFEQKNIL                     R1 ; [+6]
        4 GETTABLEKS                       R1 R0 K0 ["__connection"]
        6 NAMECALL                         R1 R1 K1 ["Disconnect"]
        8 CALL                             R1 1 0
        9 LOADB                            R1 0
       10 SETTABLEKS                       R1 R0 K2 ["__running"]
       12 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["__state"]
        2 GETTABLEKS                       R2 R2 K1 ["complete"]
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R0 K2 ["__goal"]
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R2 R0 K2 ["__goal"]
       13 GETTABLEKS                       R2 R2 K3 ["step"]
       15 GETTABLEKS                       R3 R0 K0 ["__state"]
       17 MOVE                             R4 R1
       18 CALL                             R2 2 1
       19 JUMPIFEQKNIL                     R2 ; [+3]
       21 SETTABLEKS                       R2 R0 K0 ["__state"]
       23 GETTABLEKS                       R3 R0 K4 ["__fireOnStep"]
       25 GETTABLEKS                       R4 R0 K0 ["__state"]
       27 GETTABLEKS                       R4 R4 K5 ["value"]
       29 CALL                             R3 1 0
       30 GETTABLEKS                       R3 R0 K0 ["__state"]
       32 GETTABLEKS                       R3 R3 K1 ["complete"]
       34 JUMPIFNOT                        R3 ; [+13]
       35 GETTABLEKS                       R3 R0 K6 ["__running"]
       37 JUMPIFNOT                        R3 ; [+10]
       38 NAMECALL                         R3 R0 K7 ["stop"]
       40 CALL                             R3 1 0
       41 GETTABLEKS                       R3 R0 K8 ["__fireOnComplete"]
       43 GETTABLEKS                       R4 R0 K0 ["__state"]
       45 GETTABLEKS                       R4 R4 K5 ["value"]
       47 CALL                             R3 1 0
       48 RETURN                           R0 0

PROTO_5:
        0 SETTABLEKS                       R1 R0 K0 ["__goal"]
        2 GETTABLEKS                       R2 R0 K1 ["__state"]
        4 LOADB                            R3 0
        5 SETTABLEKS                       R3 R2 K2 ["complete"]
        7 NAMECALL                         R2 R0 K3 ["start"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unsubscribe"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["__onStep"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["subscribe"]
        5 CALL                             R2 2 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R2
        8 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unsubscribe"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["__onComplete"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["subscribe"]
        5 CALL                             R2 2 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R2
        8 RETURN                           R3 1

PROTO_10:
        0 NAMECALL                         R1 R0 K0 ["stop"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Signal"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["createSignal"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K2 ["Parent"]
       20 GETTABLEKS                       R4 R4 K7 ["AnimationStepSignal"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETIMPORT                        R5 K1 [script]
       27 GETTABLEKS                       R5 R5 K2 ["Parent"]
       29 GETTABLEKS                       R5 R5 K8 ["types"]
       31 CALL                             R4 1 1
       32 NEWTABLE                         R5 0 0
       34 SETTABLEKS                       R5 R5 K9 ["__index"]
       36 DUPCLOSURE                       R6 K10 [PROTO_0]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R5
       39 DUPCLOSURE                       R7 K11 [PROTO_2]
       40 CAPTURE                          VAL R3
       41 SETTABLEKS                       R7 R5 K12 ["start"]
       43 DUPCLOSURE                       R7 K13 [PROTO_3]
       44 SETTABLEKS                       R7 R5 K14 ["stop"]
       46 DUPCLOSURE                       R7 K15 [PROTO_4]
       47 SETTABLEKS                       R7 R5 K16 ["step"]
       49 DUPCLOSURE                       R7 K17 [PROTO_5]
       50 SETTABLEKS                       R7 R5 K18 ["setGoal"]
       52 DUPCLOSURE                       R7 K19 [PROTO_7]
       53 SETTABLEKS                       R7 R5 K20 ["onStep"]
       55 DUPCLOSURE                       R7 K21 [PROTO_9]
       56 SETTABLEKS                       R7 R5 K22 ["onComplete"]
       58 DUPCLOSURE                       R7 K23 [PROTO_10]
       59 SETTABLEKS                       R7 R5 K24 ["destroy"]
       61 RETURN                           R6 1
