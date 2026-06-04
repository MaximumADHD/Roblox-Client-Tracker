MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K1 [script]
        5 GETTABLEKS                       R2 R1 K2 ["Parent"]
        7 GETIMPORT                        R3 K4 [require]
        9 GETTABLEKS                       R4 R2 K5 ["JestTestResult"]
       11 CALL                             R3 1 1
       12 GETIMPORT                        R4 K4 [require]
       14 GETIMPORT                        R5 K1 [script]
       16 GETTABLEKS                       R5 R5 K6 ["getResultHeader"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R4 R4 K7 ["default"]
       21 GETIMPORT                        R5 K4 [require]
       23 GETIMPORT                        R6 K1 [script]
       25 GETTABLEKS                       R6 R6 K8 ["getSnapshotStatus"]
       27 CALL                             R5 1 1
       28 GETTABLEKS                       R5 R5 K7 ["default"]
       30 GETIMPORT                        R6 K4 [require]
       32 GETIMPORT                        R7 K1 [script]
       34 GETTABLEKS                       R7 R7 K9 ["getSnapshotSummary"]
       36 CALL                             R6 1 1
       37 GETTABLEKS                       R6 R6 K7 ["default"]
       39 GETIMPORT                        R7 K4 [require]
       41 GETIMPORT                        R8 K1 [script]
       43 GETTABLEKS                       R8 R8 K10 ["utils"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R8 R7 K11 ["formatTestPath"]
       48 GETTABLEKS                       R9 R7 K12 ["getSummary"]
       50 GETTABLEKS                       R10 R7 K13 ["printDisplayName"]
       52 GETTABLEKS                       R11 R7 K14 ["relativePath"]
       54 GETTABLEKS                       R12 R7 K15 ["trimAndFormatPath"]
       56 GETIMPORT                        R13 K4 [require]
       58 GETIMPORT                        R14 K1 [script]
       60 GETTABLEKS                       R14 R14 K16 ["BaseReporter"]
       62 CALL                             R13 1 1
       63 GETTABLEKS                       R14 R13 K7 ["default"]
       65 SETTABLEKS                       R14 R0 K16 ["BaseReporter"]
       67 GETIMPORT                        R14 K4 [require]
       69 GETIMPORT                        R15 K1 [script]
       71 GETTABLEKS                       R15 R15 K17 ["DefaultReporter"]
       73 CALL                             R14 1 1
       74 GETTABLEKS                       R15 R14 K7 ["default"]
       76 SETTABLEKS                       R15 R0 K17 ["DefaultReporter"]
       78 GETIMPORT                        R15 K4 [require]
       80 GETIMPORT                        R16 K1 [script]
       82 GETTABLEKS                       R16 R16 K18 ["GitHubActionsReporter"]
       84 CALL                             R15 1 1
       85 GETTABLEKS                       R16 R15 K7 ["default"]
       87 SETTABLEKS                       R16 R0 K18 ["GitHubActionsReporter"]
       89 GETIMPORT                        R16 K4 [require]
       91 GETIMPORT                        R17 K1 [script]
       93 GETTABLEKS                       R17 R17 K19 ["SummaryReporter"]
       95 CALL                             R16 1 1
       96 GETTABLEKS                       R17 R16 K7 ["default"]
       98 SETTABLEKS                       R17 R0 K19 ["SummaryReporter"]
      100 GETIMPORT                        R17 K4 [require]
      102 GETIMPORT                        R18 K1 [script]
      104 GETTABLEKS                       R18 R18 K20 ["VerboseReporter"]
      106 CALL                             R17 1 1
      107 GETTABLEKS                       R18 R17 K7 ["default"]
      109 SETTABLEKS                       R18 R0 K20 ["VerboseReporter"]
      111 GETIMPORT                        R18 K4 [require]
      113 GETIMPORT                        R19 K1 [script]
      115 GETTABLEKS                       R19 R19 K21 ["types"]
      117 CALL                             R18 1 1
      118 DUPTABLE                         R19 K22 [{"formatTestPath", "getResultHeader", "getSnapshotStatus", "getSnapshotSummary", "getSummary", "printDisplayName", "relativePath", "trimAndFormatPath"}]
      119 SETTABLEKS                       R8 R19 K11 ["formatTestPath"]
      121 SETTABLEKS                       R4 R19 K6 ["getResultHeader"]
      123 SETTABLEKS                       R5 R19 K8 ["getSnapshotStatus"]
      125 SETTABLEKS                       R6 R19 K9 ["getSnapshotSummary"]
      127 SETTABLEKS                       R9 R19 K12 ["getSummary"]
      129 SETTABLEKS                       R10 R19 K13 ["printDisplayName"]
      131 SETTABLEKS                       R11 R19 K14 ["relativePath"]
      133 SETTABLEKS                       R12 R19 K15 ["trimAndFormatPath"]
      135 SETTABLEKS                       R19 R0 K10 ["utils"]
      137 RETURN                           R0 1
