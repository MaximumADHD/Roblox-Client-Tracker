MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Enums"]
        7 GETTABLEKS                       R1 R1 K5 ["InlineEngineTag"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K6 ["Types"]
       16 CALL                             R1 1 1
       17 DUPTABLE                         R2 K10 [{"Components", "Enums", "StoryMiddleware", "Utils"}]
       18 GETIMPORT                        R3 K1 [require]
       20 GETIMPORT                        R4 K3 [script]
       22 GETTABLEKS                       R4 R4 K7 ["Components"]
       24 CALL                             R3 1 1
       25 SETTABLEKS                       R3 R2 K7 ["Components"]
       27 GETIMPORT                        R3 K1 [require]
       29 GETIMPORT                        R4 K3 [script]
       31 GETTABLEKS                       R4 R4 K4 ["Enums"]
       33 CALL                             R3 1 1
       34 SETTABLEKS                       R3 R2 K4 ["Enums"]
       36 GETIMPORT                        R3 K1 [require]
       38 GETIMPORT                        R4 K3 [script]
       40 GETTABLEKS                       R4 R4 K8 ["StoryMiddleware"]
       42 CALL                             R3 1 1
       43 SETTABLEKS                       R3 R2 K8 ["StoryMiddleware"]
       45 GETIMPORT                        R3 K1 [require]
       47 GETIMPORT                        R4 K3 [script]
       49 GETTABLEKS                       R4 R4 K9 ["Utils"]
       51 CALL                             R3 1 1
       52 SETTABLEKS                       R3 R2 K9 ["Utils"]
       54 RETURN                           R2 1
