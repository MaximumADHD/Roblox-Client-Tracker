MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R2 K1 [require]
        5 GETIMPORT                        R4 K3 [script]
        7 GETTABLEKS                       R3 R4 K4 ["getResultHeader"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R1 R2 K5 ["default"]
       12 GETIMPORT                        R2 K1 [require]
       14 GETIMPORT                        R4 K3 [script]
       16 GETTABLEKS                       R3 R4 K6 ["utils"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K7 ["formatTestPath"]
       21 GETTABLEKS                       R4 R2 K8 ["getSummary"]
       23 GETTABLEKS                       R5 R2 K9 ["printDisplayName"]
       25 GETTABLEKS                       R6 R2 K10 ["relativePath"]
       27 GETTABLEKS                       R7 R2 K11 ["trimAndFormatPath"]
       29 GETIMPORT                        R8 K1 [require]
       31 GETIMPORT                        R10 K3 [script]
       33 GETTABLEKS                       R9 R10 K12 ["BaseReporter"]
       35 CALL                             R8 1 1
       36 GETTABLEKS                       R9 R8 K5 ["default"]
       38 SETTABLEKS                       R9 R0 K12 ["BaseReporter"]
       40 GETIMPORT                        R9 K1 [require]
       42 GETIMPORT                        R11 K3 [script]
       44 GETTABLEKS                       R10 R11 K13 ["DefaultReporter"]
       46 CALL                             R9 1 1
       47 GETTABLEKS                       R10 R9 K5 ["default"]
       49 SETTABLEKS                       R10 R0 K13 ["DefaultReporter"]
       51 GETIMPORT                        R10 K1 [require]
       53 GETIMPORT                        R12 K3 [script]
       55 GETTABLEKS                       R11 R12 K14 ["SummaryReporter"]
       57 CALL                             R10 1 1
       58 GETTABLEKS                       R11 R10 K5 ["default"]
       60 SETTABLEKS                       R11 R0 K14 ["SummaryReporter"]
       62 GETIMPORT                        R11 K1 [require]
       64 GETIMPORT                        R13 K3 [script]
       66 GETTABLEKS                       R12 R13 K15 ["VerboseReporter"]
       68 CALL                             R11 1 1
       69 GETTABLEKS                       R12 R11 K5 ["default"]
       71 SETTABLEKS                       R12 R0 K15 ["VerboseReporter"]
       73 GETIMPORT                        R12 K1 [require]
       75 GETIMPORT                        R14 K3 [script]
       77 GETTABLEKS                       R13 R14 K16 ["types"]
       79 CALL                             R12 1 1
       80 DUPTABLE                         R13 K17 [{"formatTestPath", "getResultHeader", "getSummary", "printDisplayName", "relativePath", "trimAndFormatPath"}]
       81 SETTABLEKS                       R3 R13 K7 ["formatTestPath"]
       83 SETTABLEKS                       R1 R13 K4 ["getResultHeader"]
       85 SETTABLEKS                       R4 R13 K8 ["getSummary"]
       87 SETTABLEKS                       R5 R13 K9 ["printDisplayName"]
       89 SETTABLEKS                       R6 R13 K10 ["relativePath"]
       91 SETTABLEKS                       R7 R13 K11 ["trimAndFormatPath"]
       93 SETTABLEKS                       R13 R0 K6 ["utils"]
       95 RETURN                           R0 1
