MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Array"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["AssertionError"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K6 ["Error"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R4 K3 [script]
       26 GETTABLEKS                       R4 R4 K7 ["Map"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K1 [require]
       31 GETIMPORT                        R5 K3 [script]
       33 GETTABLEKS                       R5 R5 K8 ["Object"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K1 [require]
       38 GETIMPORT                        R6 K3 [script]
       40 GETTABLEKS                       R6 R6 K9 ["Promise"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K1 [require]
       45 GETIMPORT                        R7 K3 [script]
       47 GETTABLEKS                       R7 R7 K10 ["Set"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K1 [require]
       52 GETIMPORT                        R8 K3 [script]
       54 GETTABLEKS                       R8 R8 K11 ["Symbol"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K1 [require]
       59 GETIMPORT                        R9 K3 [script]
       61 GETTABLEKS                       R9 R9 K12 ["Timers"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K1 [require]
       66 GETIMPORT                        R10 K3 [script]
       68 GETTABLEKS                       R10 R10 K13 ["WeakMap"]
       70 CALL                             R9 1 1
       71 DUPTABLE                         R10 K28 [{"Array", "AssertionError", "Boolean", "console", "Error", "extends", "instanceof", "Math", "Number", "Object", "Map", "coerceToMap", "coerceToTable", "Set", "WeakMap", "String", "Symbol", "setTimeout", "clearTimeout", "setInterval", "clearInterval", "util"}]
       72 SETTABLEKS                       R0 R10 K4 ["Array"]
       74 SETTABLEKS                       R1 R10 K5 ["AssertionError"]
       76 GETIMPORT                        R11 K1 [require]
       78 GETIMPORT                        R12 K3 [script]
       80 GETTABLEKS                       R12 R12 K14 ["Boolean"]
       82 CALL                             R11 1 1
       83 SETTABLEKS                       R11 R10 K14 ["Boolean"]
       85 GETIMPORT                        R11 K1 [require]
       87 GETIMPORT                        R12 K3 [script]
       89 GETTABLEKS                       R12 R12 K15 ["console"]
       91 CALL                             R11 1 1
       92 SETTABLEKS                       R11 R10 K15 ["console"]
       94 SETTABLEKS                       R2 R10 K6 ["Error"]
       96 GETIMPORT                        R11 K1 [require]
       98 GETIMPORT                        R12 K3 [script]
      100 GETTABLEKS                       R12 R12 K16 ["extends"]
      102 CALL                             R11 1 1
      103 SETTABLEKS                       R11 R10 K16 ["extends"]
      105 GETIMPORT                        R11 K1 [require]
      107 GETIMPORT                        R12 K3 [script]
      109 GETTABLEKS                       R12 R12 K17 ["instanceof"]
      111 CALL                             R11 1 1
      112 SETTABLEKS                       R11 R10 K17 ["instanceof"]
      114 GETIMPORT                        R11 K1 [require]
      116 GETIMPORT                        R12 K3 [script]
      118 GETTABLEKS                       R12 R12 K18 ["Math"]
      120 CALL                             R11 1 1
      121 SETTABLEKS                       R11 R10 K18 ["Math"]
      123 GETIMPORT                        R11 K1 [require]
      125 GETIMPORT                        R12 K3 [script]
      127 GETTABLEKS                       R12 R12 K19 ["Number"]
      129 CALL                             R11 1 1
      130 SETTABLEKS                       R11 R10 K19 ["Number"]
      132 SETTABLEKS                       R4 R10 K8 ["Object"]
      134 GETTABLEKS                       R11 R3 K7 ["Map"]
      136 SETTABLEKS                       R11 R10 K7 ["Map"]
      138 GETTABLEKS                       R11 R3 K20 ["coerceToMap"]
      140 SETTABLEKS                       R11 R10 K20 ["coerceToMap"]
      142 GETTABLEKS                       R11 R3 K21 ["coerceToTable"]
      144 SETTABLEKS                       R11 R10 K21 ["coerceToTable"]
      146 SETTABLEKS                       R6 R10 K10 ["Set"]
      148 SETTABLEKS                       R9 R10 K13 ["WeakMap"]
      150 GETIMPORT                        R11 K1 [require]
      152 GETIMPORT                        R12 K3 [script]
      154 GETTABLEKS                       R12 R12 K22 ["String"]
      156 CALL                             R11 1 1
      157 SETTABLEKS                       R11 R10 K22 ["String"]
      159 SETTABLEKS                       R7 R10 K11 ["Symbol"]
      161 GETTABLEKS                       R11 R8 K23 ["setTimeout"]
      163 SETTABLEKS                       R11 R10 K23 ["setTimeout"]
      165 GETTABLEKS                       R11 R8 K24 ["clearTimeout"]
      167 SETTABLEKS                       R11 R10 K24 ["clearTimeout"]
      169 GETTABLEKS                       R11 R8 K25 ["setInterval"]
      171 SETTABLEKS                       R11 R10 K25 ["setInterval"]
      173 GETTABLEKS                       R11 R8 K26 ["clearInterval"]
      175 SETTABLEKS                       R11 R10 K26 ["clearInterval"]
      177 GETIMPORT                        R11 K1 [require]
      179 GETIMPORT                        R12 K3 [script]
      181 GETTABLEKS                       R12 R12 K27 ["util"]
      183 CALL                             R11 1 1
      184 SETTABLEKS                       R11 R10 K27 ["util"]
      186 RETURN                           R10 1
