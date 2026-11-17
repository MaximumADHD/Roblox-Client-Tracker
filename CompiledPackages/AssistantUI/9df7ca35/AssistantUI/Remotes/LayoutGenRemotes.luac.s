PROTO_0:
        0 DUPTABLE                         R1 K7 [{"generateScene", "executeAndStoreScript", "cancelGeneration", "createSceneBox", "updateSceneBoxField", "destroySceneBox", "finishSceneBox"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K8 ["invoke"]
        4 MOVE                             R3 R0
        5 LOADK                            R4 K9 ["LayoutGen.generateScene"]
        6 CALL                             R2 2 1
        7 SETTABLEKS                       R2 R1 K0 ["generateScene"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K8 ["invoke"]
       12 MOVE                             R3 R0
       13 LOADK                            R4 K10 ["LayoutGen.executeAndStoreScript"]
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K1 ["executeAndStoreScript"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K8 ["invoke"]
       20 MOVE                             R3 R0
       21 LOADK                            R4 K11 ["LayoutGen.cancelGeneration"]
       22 CALL                             R2 2 1
       23 SETTABLEKS                       R2 R1 K2 ["cancelGeneration"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K8 ["invoke"]
       28 MOVE                             R3 R0
       29 LOADK                            R4 K12 ["LayoutGen.createSceneBox"]
       30 CALL                             R2 2 1
       31 SETTABLEKS                       R2 R1 K3 ["createSceneBox"]
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R2 R2 K8 ["invoke"]
       36 MOVE                             R3 R0
       37 LOADK                            R4 K13 ["LayoutGen.updateSceneBoxField"]
       38 CALL                             R2 2 1
       39 SETTABLEKS                       R2 R1 K4 ["updateSceneBoxField"]
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R2 R2 K8 ["invoke"]
       44 MOVE                             R3 R0
       45 LOADK                            R4 K14 ["LayoutGen.destroySceneBox"]
       46 CALL                             R2 2 1
       47 SETTABLEKS                       R2 R1 K5 ["destroySceneBox"]
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R2 R2 K8 ["invoke"]
       52 MOVE                             R3 R0
       53 LOADK                            R4 K15 ["LayoutGen.finishSceneBox"]
       54 CALL                             R2 2 1
       55 SETTABLEKS                       R2 R1 K6 ["finishSceneBox"]
       57 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["DMNetworking"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Gen3dCore"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Types"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R2 K10 ["Remote"]
       26 NEWTABLE                         R6 1 0
       28 DUPCLOSURE                       R7 K11 [PROTO_0]
       29 CAPTURE                          VAL R5
       30 SETTABLEKS                       R7 R6 K12 ["new"]
       32 RETURN                           R6 1
