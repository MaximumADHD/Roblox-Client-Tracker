PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantCreditMeteringLocalBackend"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantCreditMeteringLocalBackendExp"]
        3 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETIMPORT                        R3 K1 [script]
       16 GETTABLEKS                       R3 R3 K7 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["createIxpGate"]
       20 CALL                             R2 1 1
       21 MOVE                             R3 R2
       22 DUPTABLE                         R4 K17 [{["featureName"] = "AssistantCreditMeteringLocalBackend", ["gateInvokeKey"] = "CreditMeteringLocalBackendGate_Get", ["label"] = "credit metering local backend", ["isForcedOn"], ["isExperimentEnabled"]}]
       23 DUPCLOSURE                       R5 K18 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R5 R4 K15 ["isForcedOn"]
       27 DUPCLOSURE                       R5 K19 [PROTO_1]
       28 CAPTURE                          VAL R1
       29 SETTABLEKS                       R5 R4 K16 ["isExperimentEnabled"]
       31 CALL                             R3 1 -1
       32 RETURN                           R3 -1
