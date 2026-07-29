PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"eventLogger", "isCompactionExperimentEnabled"}]
        1 GETTABLEKS                       R2 R0 K0 ["eventLogger"]
        3 JUMPIF                           R2 ; [+3]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["eventLogger"]
        7 SETTABLEKS                       R2 R1 K0 ["eventLogger"]
        9 GETTABLEKS                       R2 R0 K1 ["isCompactionExperimentEnabled"]
       11 JUMPIF                           R2 ; [+3]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K1 ["isCompactionExperimentEnabled"]
       15 SETTABLEKS                       R2 R1 K1 ["isCompactionExperimentEnabled"]
       17 SETUPVAL                         R1 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["StreamTypes"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 DUPTABLE                         R2 K9 [{"eventLogger", "isCompactionExperimentEnabled"}]
       12 DUPTABLE                         R3 K15 [{"logErrorEvent", "logToolStarted", "logThinkingBlock", "logCompactionFallback", "logCompactionSuccess"}]
       13 SETTABLEKS                       R1 R3 K10 ["logErrorEvent"]
       15 SETTABLEKS                       R1 R3 K11 ["logToolStarted"]
       17 SETTABLEKS                       R1 R3 K12 ["logThinkingBlock"]
       19 SETTABLEKS                       R1 R3 K13 ["logCompactionFallback"]
       21 SETTABLEKS                       R1 R3 K14 ["logCompactionSuccess"]
       23 SETTABLEKS                       R3 R2 K7 ["eventLogger"]
       25 DUPCLOSURE                       R3 K16 [PROTO_1]
       26 SETTABLEKS                       R3 R2 K8 ["isCompactionExperimentEnabled"]
       28 MOVE                             R3 R2
       29 NEWTABLE                         R4 4 0
       31 NEWCLOSURE                       R5 P2
       32 CAPTURE                          REF R3
       33 CAPTURE                          VAL R2
       34 SETTABLEKS                       R5 R4 K17 ["configure"]
       36 NEWCLOSURE                       R5 P3
       37 CAPTURE                          REF R3
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R5 R4 K18 ["reset"]
       41 NEWCLOSURE                       R5 P4
       42 CAPTURE                          REF R3
       43 SETTABLEKS                       R5 R4 K19 ["get"]
       45 CLOSEUPVALS                      R3
       46 RETURN                           R4 1
