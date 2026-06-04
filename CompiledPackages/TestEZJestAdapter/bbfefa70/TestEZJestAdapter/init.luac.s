MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"Reporters"}]
        2 DUPTABLE                         R1 K7 [{"JestReporterAdapter", "JestDefaultReporter", "JestVerboseReporter", "JestSummaryReporter", "pipe"}]
        3 GETIMPORT                        R2 K9 [require]
        5 GETIMPORT                        R3 K11 [script]
        7 GETTABLEKS                       R3 R3 K0 ["Reporters"]
        9 GETTABLEKS                       R3 R3 K2 ["JestReporterAdapter"]
       11 CALL                             R2 1 1
       12 SETTABLEKS                       R2 R1 K2 ["JestReporterAdapter"]
       14 GETIMPORT                        R2 K9 [require]
       16 GETIMPORT                        R3 K11 [script]
       18 GETTABLEKS                       R3 R3 K0 ["Reporters"]
       20 GETTABLEKS                       R3 R3 K3 ["JestDefaultReporter"]
       22 CALL                             R2 1 1
       23 SETTABLEKS                       R2 R1 K3 ["JestDefaultReporter"]
       25 GETIMPORT                        R2 K9 [require]
       27 GETIMPORT                        R3 K11 [script]
       29 GETTABLEKS                       R3 R3 K0 ["Reporters"]
       31 GETTABLEKS                       R3 R3 K4 ["JestVerboseReporter"]
       33 CALL                             R2 1 1
       34 SETTABLEKS                       R2 R1 K4 ["JestVerboseReporter"]
       36 GETIMPORT                        R2 K9 [require]
       38 GETIMPORT                        R3 K11 [script]
       40 GETTABLEKS                       R3 R3 K0 ["Reporters"]
       42 GETTABLEKS                       R3 R3 K5 ["JestSummaryReporter"]
       44 CALL                             R2 1 1
       45 SETTABLEKS                       R2 R1 K5 ["JestSummaryReporter"]
       47 GETIMPORT                        R2 K9 [require]
       49 GETIMPORT                        R3 K11 [script]
       51 GETTABLEKS                       R3 R3 K0 ["Reporters"]
       53 GETTABLEKS                       R3 R3 K12 ["pipeReporters"]
       55 CALL                             R2 1 1
       56 SETTABLEKS                       R2 R1 K6 ["pipe"]
       58 SETTABLEKS                       R1 R0 K0 ["Reporters"]
       60 RETURN                           R0 1
