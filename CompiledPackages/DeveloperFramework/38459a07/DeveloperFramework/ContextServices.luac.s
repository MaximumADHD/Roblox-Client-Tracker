MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K3 ["UI"]
        7 GETTABLEKS                       R1 R1 K4 ["ContextServices"]
        9 DUPTABLE                         R2 K21 [{"withContext", "provide", "Analytics", "API", "Context", "ContextItem", "Design", "FastFlags", "Focus", "Localization", "Mouse", "Navigation", "Plugin", "PluginActions", "Store", "Stylizer"}]
       10 GETIMPORT                        R3 K23 [require]
       12 GETTABLEKS                       R4 R1 K5 ["withContext"]
       14 CALL                             R3 1 1
       15 SETTABLEKS                       R3 R2 K5 ["withContext"]
       17 GETIMPORT                        R3 K23 [require]
       19 GETTABLEKS                       R4 R1 K6 ["provide"]
       21 CALL                             R3 1 1
       22 SETTABLEKS                       R3 R2 K6 ["provide"]
       24 GETIMPORT                        R3 K23 [require]
       26 GETTABLEKS                       R4 R1 K7 ["Analytics"]
       28 CALL                             R3 1 1
       29 SETTABLEKS                       R3 R2 K7 ["Analytics"]
       31 GETIMPORT                        R3 K23 [require]
       33 GETTABLEKS                       R4 R1 K8 ["API"]
       35 CALL                             R3 1 1
       36 SETTABLEKS                       R3 R2 K8 ["API"]
       38 GETIMPORT                        R3 K23 [require]
       40 GETTABLEKS                       R4 R1 K9 ["Context"]
       42 CALL                             R3 1 1
       43 SETTABLEKS                       R3 R2 K9 ["Context"]
       45 GETIMPORT                        R3 K23 [require]
       47 GETTABLEKS                       R4 R1 K10 ["ContextItem"]
       49 CALL                             R3 1 1
       50 SETTABLEKS                       R3 R2 K10 ["ContextItem"]
       52 GETIMPORT                        R3 K23 [require]
       54 GETTABLEKS                       R4 R1 K11 ["Design"]
       56 CALL                             R3 1 1
       57 SETTABLEKS                       R3 R2 K11 ["Design"]
       59 GETIMPORT                        R3 K23 [require]
       61 GETTABLEKS                       R4 R1 K12 ["FastFlags"]
       63 CALL                             R3 1 1
       64 SETTABLEKS                       R3 R2 K12 ["FastFlags"]
       66 GETIMPORT                        R3 K23 [require]
       68 GETTABLEKS                       R4 R1 K13 ["Focus"]
       70 CALL                             R3 1 1
       71 SETTABLEKS                       R3 R2 K13 ["Focus"]
       73 GETIMPORT                        R3 K23 [require]
       75 GETTABLEKS                       R4 R1 K14 ["Localization"]
       77 CALL                             R3 1 1
       78 SETTABLEKS                       R3 R2 K14 ["Localization"]
       80 GETIMPORT                        R3 K23 [require]
       82 GETTABLEKS                       R4 R1 K15 ["Mouse"]
       84 CALL                             R3 1 1
       85 SETTABLEKS                       R3 R2 K15 ["Mouse"]
       87 GETIMPORT                        R3 K23 [require]
       89 GETTABLEKS                       R4 R1 K16 ["Navigation"]
       91 CALL                             R3 1 1
       92 SETTABLEKS                       R3 R2 K16 ["Navigation"]
       94 GETIMPORT                        R3 K23 [require]
       96 GETTABLEKS                       R4 R1 K17 ["Plugin"]
       98 CALL                             R3 1 1
       99 SETTABLEKS                       R3 R2 K17 ["Plugin"]
      101 GETIMPORT                        R3 K23 [require]
      103 GETTABLEKS                       R4 R1 K18 ["PluginActions"]
      105 CALL                             R3 1 1
      106 SETTABLEKS                       R3 R2 K18 ["PluginActions"]
      108 GETIMPORT                        R3 K23 [require]
      110 GETTABLEKS                       R4 R1 K19 ["Store"]
      112 CALL                             R3 1 1
      113 SETTABLEKS                       R3 R2 K19 ["Store"]
      115 GETIMPORT                        R3 K23 [require]
      117 GETTABLEKS                       R4 R1 K20 ["Stylizer"]
      119 CALL                             R3 1 1
      120 SETTABLEKS                       R3 R2 K20 ["Stylizer"]
      122 RETURN                           R2 1
