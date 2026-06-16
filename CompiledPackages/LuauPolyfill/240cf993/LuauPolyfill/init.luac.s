MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Boolean"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["Collections"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["Console"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K8 ["Math"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K4 [require]
       27 GETTABLEKS                       R6 R0 K9 ["Number"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K4 [require]
       32 GETTABLEKS                       R7 R0 K10 ["String"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K4 [require]
       37 GETTABLEKS                       R8 R0 K11 ["Symbol"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K4 [require]
       42 GETTABLEKS                       R9 R0 K12 ["Timers"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K4 [require]
       47 GETTABLEKS                       R10 R0 K13 ["ES7Types"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K4 [require]
       52 GETIMPORT                        R11 K1 [script]
       54 GETTABLEKS                       R11 R11 K14 ["AssertionError"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K4 [require]
       59 GETIMPORT                        R12 K1 [script]
       61 GETTABLEKS                       R12 R12 K15 ["Error"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K4 [require]
       66 GETIMPORT                        R13 K1 [script]
       68 GETTABLEKS                       R13 R13 K16 ["Promise"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K4 [require]
       73 GETIMPORT                        R14 K1 [script]
       75 GETTABLEKS                       R14 R14 K17 ["extends"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K4 [require]
       80 GETTABLEKS                       R15 R0 K18 ["InstanceOf"]
       82 CALL                             R14 1 1
       83 DUPTABLE                         R15 K33 [{"Array", "AssertionError", "Boolean", "console", "Error", "extends", "instanceof", "Math", "Number", "Object", "Map", "coerceToMap", "coerceToTable", "Set", "WeakMap", "String", "Symbol", "setTimeout", "clearTimeout", "setInterval", "clearInterval", "util"}]
       84 GETTABLEKS                       R16 R2 K19 ["Array"]
       86 SETTABLEKS                       R16 R15 K19 ["Array"]
       88 SETTABLEKS                       R10 R15 K14 ["AssertionError"]
       90 SETTABLEKS                       R1 R15 K5 ["Boolean"]
       92 SETTABLEKS                       R3 R15 K20 ["console"]
       94 SETTABLEKS                       R11 R15 K15 ["Error"]
       96 SETTABLEKS                       R13 R15 K17 ["extends"]
       98 SETTABLEKS                       R14 R15 K21 ["instanceof"]
      100 SETTABLEKS                       R4 R15 K8 ["Math"]
      102 SETTABLEKS                       R5 R15 K9 ["Number"]
      104 GETTABLEKS                       R16 R2 K22 ["Object"]
      106 SETTABLEKS                       R16 R15 K22 ["Object"]
      108 GETTABLEKS                       R16 R2 K23 ["Map"]
      110 SETTABLEKS                       R16 R15 K23 ["Map"]
      112 GETTABLEKS                       R16 R2 K24 ["coerceToMap"]
      114 SETTABLEKS                       R16 R15 K24 ["coerceToMap"]
      116 GETTABLEKS                       R16 R2 K25 ["coerceToTable"]
      118 SETTABLEKS                       R16 R15 K25 ["coerceToTable"]
      120 GETTABLEKS                       R16 R2 K26 ["Set"]
      122 SETTABLEKS                       R16 R15 K26 ["Set"]
      124 GETTABLEKS                       R16 R2 K27 ["WeakMap"]
      126 SETTABLEKS                       R16 R15 K27 ["WeakMap"]
      128 SETTABLEKS                       R6 R15 K10 ["String"]
      130 SETTABLEKS                       R7 R15 K11 ["Symbol"]
      132 GETTABLEKS                       R16 R8 K28 ["setTimeout"]
      134 SETTABLEKS                       R16 R15 K28 ["setTimeout"]
      136 GETTABLEKS                       R16 R8 K29 ["clearTimeout"]
      138 SETTABLEKS                       R16 R15 K29 ["clearTimeout"]
      140 GETTABLEKS                       R16 R8 K30 ["setInterval"]
      142 SETTABLEKS                       R16 R15 K30 ["setInterval"]
      144 GETTABLEKS                       R16 R8 K31 ["clearInterval"]
      146 SETTABLEKS                       R16 R15 K31 ["clearInterval"]
      148 DUPTABLE                         R16 K35 [{"inspect"}]
      149 GETTABLEKS                       R17 R2 K34 ["inspect"]
      151 SETTABLEKS                       R17 R16 K34 ["inspect"]
      153 SETTABLEKS                       R16 R15 K32 ["util"]
      155 RETURN                           R15 1
