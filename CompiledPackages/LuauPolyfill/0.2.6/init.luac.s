MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Array"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["Error"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K6 ["Map"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R4 K3 [script]
       26 GETTABLEKS                       R4 R4 K7 ["Object"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K1 [require]
       31 GETIMPORT                        R5 K3 [script]
       33 GETTABLEKS                       R5 R5 K8 ["Promise"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K1 [require]
       38 GETIMPORT                        R6 K3 [script]
       40 GETTABLEKS                       R6 R6 K9 ["Set"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K1 [require]
       45 GETIMPORT                        R7 K3 [script]
       47 GETTABLEKS                       R7 R7 K10 ["Timers"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K1 [require]
       52 GETIMPORT                        R8 K3 [script]
       54 GETTABLEKS                       R8 R8 K11 ["WeakMap"]
       56 CALL                             R7 1 1
       57 DUPTABLE                         R8 K25 [{"Array", "Boolean", "console", "Error", "extends", "instanceof", "Math", "Number", "Object", "Map", "coerceToMap", "coerceToTable", "Set", "WeakMap", "String", "Symbol", "setTimeout", "clearTimeout", "util"}]
       58 SETTABLEKS                       R0 R8 K4 ["Array"]
       60 GETIMPORT                        R9 K1 [require]
       62 GETIMPORT                        R10 K3 [script]
       64 GETTABLEKS                       R10 R10 K12 ["Boolean"]
       66 CALL                             R9 1 1
       67 SETTABLEKS                       R9 R8 K12 ["Boolean"]
       69 GETIMPORT                        R9 K1 [require]
       71 GETIMPORT                        R10 K3 [script]
       73 GETTABLEKS                       R10 R10 K13 ["console"]
       75 CALL                             R9 1 1
       76 SETTABLEKS                       R9 R8 K13 ["console"]
       78 SETTABLEKS                       R1 R8 K5 ["Error"]
       80 GETIMPORT                        R9 K1 [require]
       82 GETIMPORT                        R10 K3 [script]
       84 GETTABLEKS                       R10 R10 K14 ["extends"]
       86 CALL                             R9 1 1
       87 SETTABLEKS                       R9 R8 K14 ["extends"]
       89 GETIMPORT                        R9 K1 [require]
       91 GETIMPORT                        R10 K3 [script]
       93 GETTABLEKS                       R10 R10 K15 ["instanceof"]
       95 CALL                             R9 1 1
       96 SETTABLEKS                       R9 R8 K15 ["instanceof"]
       98 GETIMPORT                        R9 K1 [require]
      100 GETIMPORT                        R10 K3 [script]
      102 GETTABLEKS                       R10 R10 K16 ["Math"]
      104 CALL                             R9 1 1
      105 SETTABLEKS                       R9 R8 K16 ["Math"]
      107 GETIMPORT                        R9 K1 [require]
      109 GETIMPORT                        R10 K3 [script]
      111 GETTABLEKS                       R10 R10 K17 ["Number"]
      113 CALL                             R9 1 1
      114 SETTABLEKS                       R9 R8 K17 ["Number"]
      116 SETTABLEKS                       R3 R8 K7 ["Object"]
      118 GETTABLEKS                       R9 R2 K6 ["Map"]
      120 SETTABLEKS                       R9 R8 K6 ["Map"]
      122 GETTABLEKS                       R9 R2 K18 ["coerceToMap"]
      124 SETTABLEKS                       R9 R8 K18 ["coerceToMap"]
      126 GETTABLEKS                       R9 R2 K19 ["coerceToTable"]
      128 SETTABLEKS                       R9 R8 K19 ["coerceToTable"]
      130 SETTABLEKS                       R5 R8 K9 ["Set"]
      132 SETTABLEKS                       R7 R8 K11 ["WeakMap"]
      134 GETIMPORT                        R9 K1 [require]
      136 GETIMPORT                        R10 K3 [script]
      138 GETTABLEKS                       R10 R10 K20 ["String"]
      140 CALL                             R9 1 1
      141 SETTABLEKS                       R9 R8 K20 ["String"]
      143 GETIMPORT                        R9 K1 [require]
      145 GETIMPORT                        R10 K3 [script]
      147 GETTABLEKS                       R10 R10 K21 ["Symbol"]
      149 CALL                             R9 1 1
      150 SETTABLEKS                       R9 R8 K21 ["Symbol"]
      152 GETTABLEKS                       R9 R6 K22 ["setTimeout"]
      154 SETTABLEKS                       R9 R8 K22 ["setTimeout"]
      156 GETTABLEKS                       R9 R6 K23 ["clearTimeout"]
      158 SETTABLEKS                       R9 R8 K23 ["clearTimeout"]
      160 GETIMPORT                        R9 K1 [require]
      162 GETIMPORT                        R10 K3 [script]
      164 GETTABLEKS                       R10 R10 K24 ["util"]
      166 CALL                             R9 1 1
      167 SETTABLEKS                       R9 R8 K24 ["util"]
      169 RETURN                           R8 1
