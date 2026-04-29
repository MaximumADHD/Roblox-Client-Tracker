PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["getModules"]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["createPlan"]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K2 ["runPlan"]
       13 MOVE                             R5 R3
       14 CALL                             R4 1 1
       15 MOVE                             R5 R1
       16 MOVE                             R6 R4
       17 CALL                             R5 1 0
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K3 [script]
        5 GETTABLEKS                       R1 R2 K4 ["Expectation"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R3 K3 [script]
       12 GETTABLEKS                       R2 R3 K5 ["TestBootstrap"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R4 K3 [script]
       19 GETTABLEKS                       R3 R4 K6 ["TestEnum"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R5 K3 [script]
       26 GETTABLEKS                       R4 R5 K7 ["TestPlan"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K1 [require]
       31 GETIMPORT                        R6 K3 [script]
       33 GETTABLEKS                       R5 R6 K8 ["TestPlanner"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K1 [require]
       38 GETIMPORT                        R7 K3 [script]
       40 GETTABLEKS                       R6 R7 K9 ["TestResults"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K1 [require]
       45 GETIMPORT                        R8 K3 [script]
       47 GETTABLEKS                       R7 R8 K10 ["TestRunner"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K1 [require]
       52 GETIMPORT                        R9 K3 [script]
       54 GETTABLEKS                       R8 R9 K11 ["TestSession"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K1 [require]
       59 GETIMPORT                        R11 K3 [script]
       61 GETTABLEKS                       R10 R11 K12 ["Reporters"]
       63 GETTABLEKS                       R9 R10 K13 ["TextReporter"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K1 [require]
       68 GETIMPORT                        R12 K3 [script]
       70 GETTABLEKS                       R11 R12 K12 ["Reporters"]
       72 GETTABLEKS                       R10 R11 K14 ["TextReporterQuiet"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K1 [require]
       77 GETIMPORT                        R13 K3 [script]
       79 GETTABLEKS                       R12 R13 K12 ["Reporters"]
       81 GETTABLEKS                       R11 R12 K15 ["TeamCityReporter"]
       83 CALL                             R10 1 1
       84 DUPCLOSURE                       R11 K16 [PROTO_0]
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R6
       88 DUPTABLE                         R12 K18 [{"run", "Expectation", "TestBootstrap", "TestEnum", "TestPlan", "TestPlanner", "TestResults", "TestRunner", "TestSession", "Reporters"}]
       89 SETTABLEKS                       R11 R12 K17 ["run"]
       91 SETTABLEKS                       R0 R12 K4 ["Expectation"]
       93 SETTABLEKS                       R1 R12 K5 ["TestBootstrap"]
       95 SETTABLEKS                       R2 R12 K6 ["TestEnum"]
       97 SETTABLEKS                       R3 R12 K7 ["TestPlan"]
       99 SETTABLEKS                       R4 R12 K8 ["TestPlanner"]
      101 SETTABLEKS                       R5 R12 K9 ["TestResults"]
      103 SETTABLEKS                       R6 R12 K10 ["TestRunner"]
      105 SETTABLEKS                       R7 R12 K11 ["TestSession"]
      107 DUPTABLE                         R13 K19 [{"TextReporter", "TextReporterQuiet", "TeamCityReporter"}]
      108 SETTABLEKS                       R8 R13 K13 ["TextReporter"]
      110 SETTABLEKS                       R9 R13 K14 ["TextReporterQuiet"]
      112 SETTABLEKS                       R10 R13 K15 ["TeamCityReporter"]
      114 SETTABLEKS                       R13 R12 K12 ["Reporters"]
      116 RETURN                           R12 1
