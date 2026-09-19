PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R1 K2 ["plan"]
        9 JUMPIF                           R2 ; [+2]
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 GETUPVAL                         R3 2
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K3 ["Card"]
       16 DUPTABLE                         R5 K15 [{["defaultCollapsed"] = False, ["planId"], ["name"], ["title"], ["summary"], ["completeDescription"], ["todo"], ["status"], ["showActionButtons"] = False, ["LayoutOrder"]}]
       17 GETTABLEKS                       R6 R2 K16 ["id"]
       19 SETTABLEKS                       R6 R5 K6 ["planId"]
       21 GETTABLEKS                       R6 R2 K7 ["name"]
       23 SETTABLEKS                       R6 R5 K7 ["name"]
       25 GETTABLEKS                       R6 R2 K8 ["title"]
       27 SETTABLEKS                       R6 R5 K8 ["title"]
       29 GETTABLEKS                       R6 R2 K9 ["summary"]
       31 SETTABLEKS                       R6 R5 K9 ["summary"]
       33 GETTABLEKS                       R6 R2 K10 ["completeDescription"]
       35 SETTABLEKS                       R6 R5 K10 ["completeDescription"]
       37 GETTABLEKS                       R6 R2 K11 ["todo"]
       39 SETTABLEKS                       R6 R5 K11 ["todo"]
       41 GETUPVAL                         R6 3
       42 GETTABLEKS                       R6 R6 K17 ["Status"]
       44 GETTABLEKS                       R6 R6 K18 ["Created"]
       46 SETTABLEKS                       R6 R5 K12 ["status"]
       48 GETTABLEKS                       R6 R0 K14 ["LayoutOrder"]
       50 SETTABLEKS                       R6 R5 K14 ["LayoutOrder"]
       52 CALL                             R3 2 -1
       53 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["FinalizePlanCard"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K9 ["PersistentPlanContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["createElement"]
       32 DUPCLOSURE                       R5 K13 [PROTO_0]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R1
       37 GETTABLEKS                       R6 R3 K14 ["memo"]
       39 MOVE                             R7 R5
       40 CALL                             R6 1 -1
       41 RETURN                           R6 -1
