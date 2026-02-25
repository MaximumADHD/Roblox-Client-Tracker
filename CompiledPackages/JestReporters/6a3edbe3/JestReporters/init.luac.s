MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R2 K1 [require]
        5 GETIMPORT                        R4 K3 [script]
        7 GETTABLEKS                       R3 R4 K4 ["getResultHeader"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R1 R2 K5 ["default"]
       12 GETIMPORT                        R3 K1 [require]
       14 GETIMPORT                        R5 K3 [script]
       16 GETTABLEKS                       R4 R5 K6 ["getSnapshotStatus"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R2 R3 K5 ["default"]
       21 GETIMPORT                        R4 K1 [require]
       23 GETIMPORT                        R6 K3 [script]
       25 GETTABLEKS                       R5 R6 K7 ["getSnapshotSummary"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R3 R4 K5 ["default"]
       30 GETIMPORT                        R4 K1 [require]
       32 GETIMPORT                        R6 K3 [script]
       34 GETTABLEKS                       R5 R6 K8 ["utils"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K9 ["formatTestPath"]
       39 GETTABLEKS                       R6 R4 K10 ["getSummary"]
       41 GETTABLEKS                       R7 R4 K11 ["printDisplayName"]
       43 GETTABLEKS                       R8 R4 K12 ["relativePath"]
       45 GETTABLEKS                       R9 R4 K13 ["trimAndFormatPath"]
       47 GETIMPORT                        R10 K1 [require]
       49 GETIMPORT                        R12 K3 [script]
       51 GETTABLEKS                       R11 R12 K14 ["BaseReporter"]
       53 CALL                             R10 1 1
       54 GETTABLEKS                       R11 R10 K5 ["default"]
       56 SETTABLEKS                       R11 R0 K14 ["BaseReporter"]
       58 GETIMPORT                        R11 K1 [require]
       60 GETIMPORT                        R13 K3 [script]
       62 GETTABLEKS                       R12 R13 K15 ["DefaultReporter"]
       64 CALL                             R11 1 1
       65 GETTABLEKS                       R12 R11 K5 ["default"]
       67 SETTABLEKS                       R12 R0 K15 ["DefaultReporter"]
       69 GETIMPORT                        R12 K1 [require]
       71 GETIMPORT                        R14 K3 [script]
       73 GETTABLEKS                       R13 R14 K16 ["SummaryReporter"]
       75 CALL                             R12 1 1
       76 GETTABLEKS                       R13 R12 K5 ["default"]
       78 SETTABLEKS                       R13 R0 K16 ["SummaryReporter"]
       80 GETIMPORT                        R13 K1 [require]
       82 GETIMPORT                        R15 K3 [script]
       84 GETTABLEKS                       R14 R15 K17 ["VerboseReporter"]
       86 CALL                             R13 1 1
       87 GETTABLEKS                       R14 R13 K5 ["default"]
       89 SETTABLEKS                       R14 R0 K17 ["VerboseReporter"]
       91 GETIMPORT                        R14 K1 [require]
       93 GETIMPORT                        R16 K3 [script]
       95 GETTABLEKS                       R15 R16 K18 ["types"]
       97 CALL                             R14 1 1
       98 DUPTABLE                         R15 K19 [{"formatTestPath", "getResultHeader", "getSnapshotStatus", "getSnapshotSummary", "getSummary", "printDisplayName", "relativePath", "trimAndFormatPath"}]
       99 SETTABLEKS                       R5 R15 K9 ["formatTestPath"]
      101 SETTABLEKS                       R1 R15 K4 ["getResultHeader"]
      103 SETTABLEKS                       R2 R15 K6 ["getSnapshotStatus"]
      105 SETTABLEKS                       R3 R15 K7 ["getSnapshotSummary"]
      107 SETTABLEKS                       R6 R15 K10 ["getSummary"]
      109 SETTABLEKS                       R7 R15 K11 ["printDisplayName"]
      111 SETTABLEKS                       R8 R15 K12 ["relativePath"]
      113 SETTABLEKS                       R9 R15 K13 ["trimAndFormatPath"]
      115 SETTABLEKS                       R15 R0 K8 ["utils"]
      117 RETURN                           R0 1
