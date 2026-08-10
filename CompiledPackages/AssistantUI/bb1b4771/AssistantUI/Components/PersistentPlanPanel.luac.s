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
       13 GETTABLEKS                       R3 R3 K3 ["FFlagAssistantSplitToolsAndWidgets"]
       15 JUMPIFNOT                        R3 ; [+42]
       16 GETUPVAL                         R3 3
       17 GETUPVAL                         R4 4
       18 GETTABLEKS                       R4 R4 K4 ["Card"]
       20 DUPTABLE                         R5 K16 [{["defaultCollapsed"] = False, ["planId"], ["name"], ["title"], ["summary"], ["completeDescription"], ["todo"], ["status"], ["showActionButtons"] = False, ["LayoutOrder"]}]
       21 GETTABLEKS                       R6 R2 K17 ["id"]
       23 SETTABLEKS                       R6 R5 K7 ["planId"]
       25 GETTABLEKS                       R6 R2 K8 ["name"]
       27 SETTABLEKS                       R6 R5 K8 ["name"]
       29 GETTABLEKS                       R6 R2 K9 ["title"]
       31 SETTABLEKS                       R6 R5 K9 ["title"]
       33 GETTABLEKS                       R6 R2 K10 ["summary"]
       35 SETTABLEKS                       R6 R5 K10 ["summary"]
       37 GETTABLEKS                       R6 R2 K11 ["completeDescription"]
       39 SETTABLEKS                       R6 R5 K11 ["completeDescription"]
       41 GETTABLEKS                       R6 R2 K12 ["todo"]
       43 SETTABLEKS                       R6 R5 K12 ["todo"]
       45 GETUPVAL                         R6 4
       46 GETTABLEKS                       R6 R6 K18 ["Status"]
       48 GETTABLEKS                       R6 R6 K19 ["Created"]
       50 SETTABLEKS                       R6 R5 K13 ["status"]
       52 GETTABLEKS                       R6 R0 K15 ["LayoutOrder"]
       54 SETTABLEKS                       R6 R5 K15 ["LayoutOrder"]
       56 CALL                             R3 2 -1
       57 RETURN                           R3 -1
       58 GETUPVAL                         R3 3
       59 GETUPVAL                         R4 5
       60 GETTABLEKS                       R4 R4 K20 ["ContentWidget"]
       62 DUPTABLE                         R5 K24 [{["type"], ["variant"], ["defaultCollapsed"] = False, ["planId"], ["name"], ["title"], ["summary"], ["completeDescription"], ["todo"], ["status"] = "created", ["showActionButtons"] = False, ["LayoutOrder"]}]
       63 GETUPVAL                         R6 5
       64 GETTABLEKS                       R6 R6 K25 ["Type"]
       66 SETTABLEKS                       R6 R5 K21 ["type"]
       68 GETUPVAL                         R6 5
       69 GETTABLEKS                       R6 R6 K26 ["Variants"]
       71 GETTABLEKS                       R6 R6 K27 ["Persistent"]
       73 SETTABLEKS                       R6 R5 K22 ["variant"]
       75 GETTABLEKS                       R6 R2 K17 ["id"]
       77 SETTABLEKS                       R6 R5 K7 ["planId"]
       79 GETTABLEKS                       R6 R2 K8 ["name"]
       81 SETTABLEKS                       R6 R5 K8 ["name"]
       83 GETTABLEKS                       R6 R2 K9 ["title"]
       85 SETTABLEKS                       R6 R5 K9 ["title"]
       87 GETTABLEKS                       R6 R2 K10 ["summary"]
       89 SETTABLEKS                       R6 R5 K10 ["summary"]
       91 GETTABLEKS                       R6 R2 K11 ["completeDescription"]
       93 SETTABLEKS                       R6 R5 K11 ["completeDescription"]
       95 GETTABLEKS                       R6 R2 K12 ["todo"]
       97 SETTABLEKS                       R6 R5 K12 ["todo"]
       99 GETTABLEKS                       R6 R0 K15 ["LayoutOrder"]
      101 SETTABLEKS                       R6 R5 K15 ["LayoutOrder"]
      103 CALL                             R3 2 -1
      104 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["ContentWidgets"]
       13 GETTABLEKS                       R2 R2 K8 ["DEPRECATED_FinalizePlanContentWidget"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Components"]
       20 GETTABLEKS                       R3 R3 K9 ["FinalizePlanCard"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Flags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Components"]
       32 GETTABLEKS                       R5 R5 K11 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K12 ["PersistentPlanContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Parent"]
       41 GETTABLEKS                       R6 R6 K14 ["React"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R5 K15 ["createElement"]
       46 DUPCLOSURE                       R7 K16 [PROTO_0]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R1
       53 GETTABLEKS                       R8 R5 K17 ["memo"]
       55 MOVE                             R9 R7
       56 CALL                             R8 1 -1
       57 RETURN                           R8 -1
