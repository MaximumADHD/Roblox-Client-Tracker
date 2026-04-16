PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R1 K2 ["plan"]
        9 JUMPIF                           R2 ; [+2]
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 GETUPVAL                         R3 2
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R4 R5 K3 ["ContentWidget"]
       16 DUPTABLE                         R5 K13 [{"type", "defaultCollapsed", "title", "summary", "completeDescription", "todo", "status", "showActionButtons", "LayoutOrder"}]
       17 GETUPVAL                         R7 3
       18 GETTABLEKS                       R6 R7 K14 ["Type"]
       20 SETTABLEKS                       R6 R5 K4 ["type"]
       22 LOADB                            R6 1
       23 SETTABLEKS                       R6 R5 K5 ["defaultCollapsed"]
       25 GETTABLEKS                       R6 R2 K6 ["title"]
       27 SETTABLEKS                       R6 R5 K6 ["title"]
       29 GETTABLEKS                       R6 R2 K7 ["summary"]
       31 SETTABLEKS                       R6 R5 K7 ["summary"]
       33 GETTABLEKS                       R6 R2 K8 ["completeDescription"]
       35 SETTABLEKS                       R6 R5 K8 ["completeDescription"]
       37 GETTABLEKS                       R6 R2 K9 ["todo"]
       39 SETTABLEKS                       R6 R5 K9 ["todo"]
       41 LOADK                            R6 K15 ["created"]
       42 SETTABLEKS                       R6 R5 K10 ["status"]
       44 LOADB                            R6 0
       45 SETTABLEKS                       R6 R5 K11 ["showActionButtons"]
       47 GETTABLEKS                       R6 R0 K12 ["LayoutOrder"]
       49 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
       51 CALL                             R3 2 -1
       52 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["ContentWidgets"]
       13 GETTABLEKS                       R2 R3 K8 ["FinalizePlanContentWidget"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Components"]
       20 GETTABLEKS                       R4 R5 K9 ["Contexts"]
       22 GETTABLEKS                       R3 R4 K10 ["PersistentPlanContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Parent"]
       29 GETTABLEKS                       R4 R5 K12 ["React"]
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
