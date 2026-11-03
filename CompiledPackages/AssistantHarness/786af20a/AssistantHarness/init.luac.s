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
       28 GETTABLEKS                       R4 R4 K8 ["LocalACPAgentService"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K1 [require]
       33 GETIMPORT                        R5 K3 [script]
       35 GETTABLEKS                       R5 R5 K9 ["Permissioning"]
       37 GETTABLEKS                       R5 R5 K10 ["PermissionStorageProvider"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K1 [require]
       42 GETIMPORT                        R6 K3 [script]
       44 GETTABLEKS                       R6 R6 K9 ["Permissioning"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K1 [require]
       49 GETIMPORT                        R7 K3 [script]
       51 GETTABLEKS                       R7 R7 K8 ["LocalACPAgentService"]
       53 GETTABLEKS                       R7 R7 K11 ["PersistenceBridge"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K1 [require]
       58 GETIMPORT                        R8 K3 [script]
       60 GETTABLEKS                       R8 R8 K12 ["RemoteACPAgentService"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K1 [require]
       65 GETIMPORT                        R9 K3 [script]
       67 GETTABLEKS                       R9 R9 K7 ["Engine"]
       69 GETTABLEKS                       R9 R9 K13 ["StreamTypes"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K1 [require]
       74 GETIMPORT                        R10 K3 [script]
       76 GETTABLEKS                       R10 R10 K14 ["Util"]
       78 GETTABLEKS                       R10 R10 K15 ["TestableFlags"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K1 [require]
       83 GETIMPORT                        R11 K3 [script]
       85 GETTABLEKS                       R11 R11 K16 ["Tools"]
       87 GETTABLEKS                       R11 R11 K17 ["ToolNaming"]
       89 CALL                             R10 1 1
       90 GETIMPORT                        R11 K1 [require]
       92 GETIMPORT                        R12 K3 [script]
       94 GETTABLEKS                       R12 R12 K14 ["Util"]
       96 GETTABLEKS                       R12 R12 K18 ["describeError"]
       98 CALL                             R11 1 1
       99 DUPTABLE                         R12 K19 [{"Acp", "Engine", "LocalACPAgentService", "Permissioning", "RemoteACPAgentService", "StreamTypes", "TestableFlags", "ToolNaming", "describeError"}]
      100 SETTABLEKS                       R0 R12 K4 ["Acp"]
      102 SETTABLEKS                       R2 R12 K7 ["Engine"]
      104 SETTABLEKS                       R3 R12 K8 ["LocalACPAgentService"]
      106 SETTABLEKS                       R5 R12 K9 ["Permissioning"]
      108 SETTABLEKS                       R7 R12 K12 ["RemoteACPAgentService"]
      110 SETTABLEKS                       R8 R12 K13 ["StreamTypes"]
      112 SETTABLEKS                       R9 R12 K15 ["TestableFlags"]
      114 SETTABLEKS                       R10 R12 K17 ["ToolNaming"]
      116 SETTABLEKS                       R11 R12 K18 ["describeError"]
      118 RETURN                           R12 1
