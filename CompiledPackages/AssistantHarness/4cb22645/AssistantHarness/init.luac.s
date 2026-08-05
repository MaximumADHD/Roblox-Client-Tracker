MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Acp"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["Parent"]
       14 GETTABLEKS                       R2 R2 K6 ["AgentClientProtocol"]
       16 CALL                             R1 1 1
       17 GETIMPORT                        R2 K1 [require]
       19 GETIMPORT                        R3 K3 [script]
       21 GETTABLEKS                       R3 R3 K7 ["Engine"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K1 [require]
       26 GETIMPORT                        R4 K3 [script]
       28 GETTABLEKS                       R4 R4 K8 ["Tools"]
       30 GETTABLEKS                       R4 R4 K9 ["HarnessRegistry"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K1 [require]
       35 GETIMPORT                        R5 K3 [script]
       37 GETTABLEKS                       R5 R5 K10 ["LocalACPAgentService"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K1 [require]
       42 GETIMPORT                        R6 K3 [script]
       44 GETTABLEKS                       R6 R6 K10 ["LocalACPAgentService"]
       46 GETTABLEKS                       R6 R6 K11 ["PersistenceBridge"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K1 [require]
       51 GETIMPORT                        R7 K3 [script]
       53 GETTABLEKS                       R7 R7 K12 ["Permissioning"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K1 [require]
       58 GETIMPORT                        R8 K3 [script]
       60 GETTABLEKS                       R8 R8 K12 ["Permissioning"]
       62 GETTABLEKS                       R8 R8 K13 ["PermissionStorageProvider"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K1 [require]
       67 GETIMPORT                        R9 K3 [script]
       69 GETTABLEKS                       R9 R9 K7 ["Engine"]
       71 GETTABLEKS                       R9 R9 K14 ["StreamTypes"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K1 [require]
       76 GETIMPORT                        R10 K3 [script]
       78 GETTABLEKS                       R10 R10 K15 ["Util"]
       80 GETTABLEKS                       R10 R10 K16 ["TestableFlags"]
       82 CALL                             R9 1 1
       83 GETIMPORT                        R10 K1 [require]
       85 GETIMPORT                        R11 K3 [script]
       87 GETTABLEKS                       R11 R11 K8 ["Tools"]
       89 GETTABLEKS                       R11 R11 K17 ["ToolNaming"]
       91 CALL                             R10 1 1
       92 DUPTABLE                         R11 K18 [{"Acp", "Engine", "HarnessRegistry", "LocalACPAgentService", "Permissioning", "StreamTypes", "TestableFlags", "ToolNaming"}]
       93 SETTABLEKS                       R0 R11 K4 ["Acp"]
       95 SETTABLEKS                       R2 R11 K7 ["Engine"]
       97 SETTABLEKS                       R3 R11 K9 ["HarnessRegistry"]
       99 SETTABLEKS                       R4 R11 K10 ["LocalACPAgentService"]
      101 SETTABLEKS                       R6 R11 K12 ["Permissioning"]
      103 SETTABLEKS                       R8 R11 K14 ["StreamTypes"]
      105 SETTABLEKS                       R9 R11 K16 ["TestableFlags"]
      107 SETTABLEKS                       R10 R11 K17 ["ToolNaming"]
      109 RETURN                           R11 1
