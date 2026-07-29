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
       14 GETTABLEKS                       R4 R4 K3 ["ContentWidget"]
       16 DUPTABLE                         R5 K18 [{["type"], ["variant"], ["defaultCollapsed"] = False, ["planId"], ["name"], ["title"], ["summary"], ["completeDescription"], ["todo"], ["status"] = "created", ["showActionButtons"] = False, ["LayoutOrder"]}]
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R6 R6 K19 ["Type"]
       20 SETTABLEKS                       R6 R5 K4 ["type"]
       22 GETUPVAL                         R6 3
       23 GETTABLEKS                       R6 R6 K20 ["Variants"]
       25 GETTABLEKS                       R6 R6 K21 ["Persistent"]
       27 SETTABLEKS                       R6 R5 K5 ["variant"]
       29 GETTABLEKS                       R6 R2 K22 ["id"]
       31 SETTABLEKS                       R6 R5 K8 ["planId"]
       33 GETTABLEKS                       R6 R2 K9 ["name"]
       35 SETTABLEKS                       R6 R5 K9 ["name"]
       37 GETTABLEKS                       R6 R2 K10 ["title"]
       39 SETTABLEKS                       R6 R5 K10 ["title"]
       41 GETTABLEKS                       R6 R2 K11 ["summary"]
       43 SETTABLEKS                       R6 R5 K11 ["summary"]
       45 GETTABLEKS                       R6 R2 K12 ["completeDescription"]
       47 SETTABLEKS                       R6 R5 K12 ["completeDescription"]
       49 GETTABLEKS                       R6 R2 K13 ["todo"]
       51 SETTABLEKS                       R6 R5 K13 ["todo"]
       53 GETTABLEKS                       R6 R0 K17 ["LayoutOrder"]
       55 SETTABLEKS                       R6 R5 K17 ["LayoutOrder"]
       57 CALL                             R3 2 -1
       58 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["ContentWidgets"]
       13 GETTABLEKS                       R2 R2 K8 ["FinalizePlanContentWidget"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Components"]
       20 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       22 GETTABLEKS                       R3 R3 K10 ["PersistentPlanContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K11 ["Parent"]
       29 GETTABLEKS                       R4 R4 K12 ["React"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K13 ["createElement"]
       34 DUPCLOSURE                       R5 K14 [PROTO_0]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R1
       39 GETTABLEKS                       R6 R3 K15 ["memo"]
       41 MOVE                             R7 R5
       42 CALL                             R6 1 -1
       43 RETURN                           R6 -1
