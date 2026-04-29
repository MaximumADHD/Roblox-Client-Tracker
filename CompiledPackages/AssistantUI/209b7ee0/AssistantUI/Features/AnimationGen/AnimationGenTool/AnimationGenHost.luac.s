PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["toolArgs"]
        2 GETTABLEKS                       R1 R2 K1 ["environment"]
        4 GETTABLEKS                       R3 R1 K2 ["selection"]
        6 GETTABLEKS                       R2 R3 K3 ["get"]
        8 CALL                             R2 0 1
        9 LENGTH                           R3 R2
       10 JUMPIFEQKN                       R3 K4 [1] ; [+3]
       12 LOADNIL                          R3
       13 RETURN                           R3 1
       14 GETTABLEN                        R3 R2 1
       15 LOADK                            R6 K5 ["Model"]
       16 NAMECALL                         R4 R3 K6 ["IsA"]
       18 CALL                             R4 2 1
       19 JUMPIF                           R4 ; [+2]
       20 LOADNIL                          R4
       21 RETURN                           R4 1
       22 LOADB                            R4 1
       23 LOADK                            R7 K7 ["Humanoid"]
       24 NAMECALL                         R5 R3 K8 ["FindFirstChildOfClass"]
       26 CALL                             R5 2 1
       27 JUMPIFNOTEQKNIL                  R5 ; [+9]
       29 LOADK                            R7 K9 ["AnimationController"]
       30 NAMECALL                         R5 R3 K8 ["FindFirstChildOfClass"]
       32 CALL                             R5 2 1
       33 JUMPIFNOTEQKNIL                  R5 ; [+2]
       35 LOADB                            R4 0 +1
       36 LOADB                            R4 1
       37 JUMPIF                           R4 ; [+2]
       38 LOADNIL                          R5
       39 RETURN                           R5 1
       40 GETTABLEKS                       R6 R1 K10 ["instances"]
       42 GETTABLEKS                       R5 R6 K11 ["getUniqueId"]
       44 MOVE                             R6 R3
       45 CALL                             R5 1 1
       46 DUPTABLE                         R6 K15 [{"uniqueId", "name", "className"}]
       47 SETTABLEKS                       R5 R6 K12 ["uniqueId"]
       49 GETTABLEKS                       R7 R3 K16 ["Name"]
       51 SETTABLEKS                       R7 R6 K13 ["name"]
       53 GETTABLEKS                       R7 R3 K17 ["ClassName"]
       55 SETTABLEKS                       R7 R6 K14 ["className"]
       57 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AnimationGen"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R4 R1 K7 ["AnimationGenTool"]
       17 GETTABLEKS                       R3 R4 K8 ["AnimationGenBridgeTypes"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R0 K9 ["Types"]
       24 CALL                             R3 1 1
       25 DUPCLOSURE                       R4 K10 [PROTO_0]
       26 DUPTABLE                         R5 K12 [{"getSelectedRigRef"}]
       27 SETTABLEKS                       R4 R5 K11 ["getSelectedRigRef"]
       29 DUPTABLE                         R6 K14 [{"bridge"}]
       30 SETTABLEKS                       R5 R6 K13 ["bridge"]
       32 RETURN                           R6 1
