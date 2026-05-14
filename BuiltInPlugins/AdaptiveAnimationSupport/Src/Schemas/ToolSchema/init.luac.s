MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K6 ["Packages"]
       16 GETTABLEKS                       R2 R2 K8 ["DraggerSchemaTemplate"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R2 K9 ["DraggerSchema"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["Flags"]
       29 GETTABLEKS                       R5 R5 K12 ["getFFlagAdaptiveAnimatonImprovements"]
       31 CALL                             R4 1 1
       32 MOVE                             R5 R4
       33 CALL                             R5 0 1
       34 JUMPIFNOT                        R5 ; [+69]
       35 GETTABLEKS                       R5 R1 K13 ["join"]
       37 MOVE                             R6 R3
       38 DUPTABLE                         R7 K21 [{"dispatchWorldClick", "getMouseTarget", "getNextSelectables", "isExclusiveSelectable", "SelectionInfo", "JointRotateHandlesImplementation", "JointTranslateHandlesImplementation"}]
       39 GETIMPORT                        R8 K5 [require]
       41 GETIMPORT                        R9 K1 [script]
       43 GETTABLEKS                       R9 R9 K14 ["dispatchWorldClick"]
       45 CALL                             R8 1 1
       46 SETTABLEKS                       R8 R7 K14 ["dispatchWorldClick"]
       48 GETIMPORT                        R8 K5 [require]
       50 GETIMPORT                        R9 K1 [script]
       52 GETTABLEKS                       R9 R9 K15 ["getMouseTarget"]
       54 CALL                             R8 1 1
       55 SETTABLEKS                       R8 R7 K15 ["getMouseTarget"]
       57 GETIMPORT                        R8 K5 [require]
       59 GETIMPORT                        R9 K1 [script]
       61 GETTABLEKS                       R9 R9 K16 ["getNextSelectables"]
       63 CALL                             R8 1 1
       64 SETTABLEKS                       R8 R7 K16 ["getNextSelectables"]
       66 GETIMPORT                        R8 K5 [require]
       68 GETIMPORT                        R9 K1 [script]
       70 GETTABLEKS                       R9 R9 K17 ["isExclusiveSelectable"]
       72 CALL                             R8 1 1
       73 SETTABLEKS                       R8 R7 K17 ["isExclusiveSelectable"]
       75 GETIMPORT                        R8 K5 [require]
       77 GETIMPORT                        R9 K1 [script]
       79 GETTABLEKS                       R9 R9 K18 ["SelectionInfo"]
       81 CALL                             R8 1 1
       82 SETTABLEKS                       R8 R7 K18 ["SelectionInfo"]
       84 GETIMPORT                        R8 K5 [require]
       86 GETIMPORT                        R9 K1 [script]
       88 GETTABLEKS                       R9 R9 K19 ["JointRotateHandlesImplementation"]
       90 CALL                             R8 1 1
       91 SETTABLEKS                       R8 R7 K19 ["JointRotateHandlesImplementation"]
       93 GETIMPORT                        R8 K5 [require]
       95 GETIMPORT                        R9 K1 [script]
       97 GETTABLEKS                       R9 R9 K20 ["JointTranslateHandlesImplementation"]
       99 CALL                             R8 1 1
      100 SETTABLEKS                       R8 R7 K20 ["JointTranslateHandlesImplementation"]
      102 CALL                             R5 2 -1
      103 RETURN                           R5 -1
      104 GETTABLEKS                       R5 R1 K13 ["join"]
      106 MOVE                             R6 R3
      107 DUPTABLE                         R7 K24 [{"dispatchWorldClick", "getMouseTarget", "getNextSelectables", "isExclusiveSelectable", "Selection", "SelectionInfo", "BoneTransformHandlesImplementation"}]
      108 GETIMPORT                        R8 K5 [require]
      110 GETIMPORT                        R9 K1 [script]
      112 GETTABLEKS                       R9 R9 K14 ["dispatchWorldClick"]
      114 CALL                             R8 1 1
      115 SETTABLEKS                       R8 R7 K14 ["dispatchWorldClick"]
      117 GETIMPORT                        R8 K5 [require]
      119 GETIMPORT                        R9 K1 [script]
      121 GETTABLEKS                       R9 R9 K15 ["getMouseTarget"]
      123 CALL                             R8 1 1
      124 SETTABLEKS                       R8 R7 K15 ["getMouseTarget"]
      126 GETIMPORT                        R8 K5 [require]
      128 GETIMPORT                        R9 K1 [script]
      130 GETTABLEKS                       R9 R9 K16 ["getNextSelectables"]
      132 CALL                             R8 1 1
      133 SETTABLEKS                       R8 R7 K16 ["getNextSelectables"]
      135 GETIMPORT                        R8 K5 [require]
      137 GETIMPORT                        R9 K1 [script]
      139 GETTABLEKS                       R9 R9 K17 ["isExclusiveSelectable"]
      141 CALL                             R8 1 1
      142 SETTABLEKS                       R8 R7 K17 ["isExclusiveSelectable"]
      144 GETIMPORT                        R8 K5 [require]
      146 GETIMPORT                        R9 K1 [script]
      148 GETTABLEKS                       R9 R9 K25 ["DEPRECATED_Selection"]
      150 CALL                             R8 1 1
      151 SETTABLEKS                       R8 R7 K22 ["Selection"]
      153 GETIMPORT                        R8 K5 [require]
      155 GETIMPORT                        R9 K1 [script]
      157 GETTABLEKS                       R9 R9 K26 ["DEPRECATED_SelectionInfo"]
      159 CALL                             R8 1 1
      160 SETTABLEKS                       R8 R7 K18 ["SelectionInfo"]
      162 GETIMPORT                        R8 K5 [require]
      164 GETIMPORT                        R9 K1 [script]
      166 GETTABLEKS                       R9 R9 K27 ["DEPRECATED_BoneTransformHandlesImplementation"]
      168 CALL                             R8 1 1
      169 SETTABLEKS                       R8 R7 K23 ["BoneTransformHandlesImplementation"]
      171 CALL                             R5 2 -1
      172 RETURN                           R5 -1
