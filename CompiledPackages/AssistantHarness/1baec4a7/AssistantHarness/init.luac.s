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
       44 GETTABLEKS                       R6 R6 K11 ["Permissioning"]
       46 GETTABLEKS                       R6 R6 K12 ["PermissionStorageProvider"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K1 [require]
       51 GETIMPORT                        R7 K3 [script]
       53 GETTABLEKS                       R7 R7 K11 ["Permissioning"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K1 [require]
       58 GETIMPORT                        R8 K3 [script]
       60 GETTABLEKS                       R8 R8 K10 ["LocalACPAgentService"]
       62 GETTABLEKS                       R8 R8 K13 ["PersistenceBridge"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K1 [require]
       67 GETIMPORT                        R9 K3 [script]
       69 GETTABLEKS                       R9 R9 K14 ["RemoteACPAgentService"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K1 [require]
       74 GETIMPORT                        R10 K3 [script]
       76 GETTABLEKS                       R10 R10 K7 ["Engine"]
       78 GETTABLEKS                       R10 R10 K15 ["StreamTypes"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K1 [require]
       83 GETIMPORT                        R11 K3 [script]
       85 GETTABLEKS                       R11 R11 K16 ["Util"]
       87 GETTABLEKS                       R11 R11 K17 ["TestableFlags"]
       89 CALL                             R10 1 1
       90 GETIMPORT                        R11 K1 [require]
       92 GETIMPORT                        R12 K3 [script]
       94 GETTABLEKS                       R12 R12 K8 ["Tools"]
       96 GETTABLEKS                       R12 R12 K18 ["ToolNaming"]
       98 CALL                             R11 1 1
       99 GETIMPORT                        R12 K1 [require]
      101 GETIMPORT                        R13 K3 [script]
      103 GETTABLEKS                       R13 R13 K16 ["Util"]
      105 GETTABLEKS                       R13 R13 K19 ["describeError"]
      107 CALL                             R12 1 1
      108 DUPTABLE                         R13 K20 [{"Acp", "Engine", "HarnessRegistry", "LocalACPAgentService", "Permissioning", "RemoteACPAgentService", "StreamTypes", "TestableFlags", "ToolNaming", "describeError"}]
      109 SETTABLEKS                       R0 R13 K4 ["Acp"]
      111 SETTABLEKS                       R2 R13 K7 ["Engine"]
      113 SETTABLEKS                       R3 R13 K9 ["HarnessRegistry"]
      115 SETTABLEKS                       R4 R13 K10 ["LocalACPAgentService"]
      117 SETTABLEKS                       R6 R13 K11 ["Permissioning"]
      119 SETTABLEKS                       R8 R13 K14 ["RemoteACPAgentService"]
      121 SETTABLEKS                       R9 R13 K15 ["StreamTypes"]
      123 SETTABLEKS                       R10 R13 K17 ["TestableFlags"]
      125 SETTABLEKS                       R11 R13 K18 ["ToolNaming"]
      127 SETTABLEKS                       R12 R13 K19 ["describeError"]
      129 RETURN                           R13 1
