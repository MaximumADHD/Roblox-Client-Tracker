PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 DUPTABLE                         R1 K3 [{"eventLogger", "isCompactionExperimentEnabled", "isAssistantHarnessSplitEnabled"}]
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
       17 GETTABLEKS                       R2 R0 K2 ["isAssistantHarnessSplitEnabled"]
       19 JUMPIF                           R2 ; [+3]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K2 ["isAssistantHarnessSplitEnabled"]
       23 SETTABLEKS                       R2 R1 K2 ["isAssistantHarnessSplitEnabled"]
       25 SETUPVAL                         R1 0
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_5:
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
       11 DUPTABLE                         R2 K10 [{"eventLogger", "isCompactionExperimentEnabled", "isAssistantHarnessSplitEnabled"}]
       12 DUPTABLE                         R3 K16 [{"logErrorEvent", "logToolStarted", "logThinkingBlock", "logCompactionFallback", "logCompactionSuccess"}]
       13 SETTABLEKS                       R1 R3 K11 ["logErrorEvent"]
       15 SETTABLEKS                       R1 R3 K12 ["logToolStarted"]
       17 SETTABLEKS                       R1 R3 K13 ["logThinkingBlock"]
       19 SETTABLEKS                       R1 R3 K14 ["logCompactionFallback"]
       21 SETTABLEKS                       R1 R3 K15 ["logCompactionSuccess"]
       23 SETTABLEKS                       R3 R2 K7 ["eventLogger"]
       25 DUPCLOSURE                       R3 K17 [PROTO_1]
       26 SETTABLEKS                       R3 R2 K8 ["isCompactionExperimentEnabled"]
       28 DUPCLOSURE                       R3 K18 [PROTO_2]
       29 SETTABLEKS                       R3 R2 K9 ["isAssistantHarnessSplitEnabled"]
       31 MOVE                             R3 R2
       32 NEWTABLE                         R4 4 0
       34 NEWCLOSURE                       R5 P3
       35 CAPTURE                          REF R3
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R5 R4 K19 ["configure"]
       39 NEWCLOSURE                       R5 P4
       40 CAPTURE                          REF R3
       41 CAPTURE                          VAL R2
       42 SETTABLEKS                       R5 R4 K20 ["reset"]
       44 NEWCLOSURE                       R5 P5
       45 CAPTURE                          REF R3
       46 SETTABLEKS                       R5 R4 K21 ["get"]
       48 CLOSEUPVALS                      R3
       49 RETURN                           R4 1
