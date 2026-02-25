MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R0 K6 ["Packages"]
       16 GETTABLEKS                       R2 R3 K8 ["DraggerSchemaTemplate"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R2 K9 ["DraggerSchema"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R1 K10 ["join"]
       25 MOVE                             R5 R3
       26 DUPTABLE                         R6 K22 [{"addUndoWaypoint", "dispatchWorldClick", "endBoxSelect", "getNextSelectables", "isExclusiveSelectable", "ExtrudeHandlesImplementation", "getMouseTarget", "Selection", "SelectionInfo", "TransformHandlesImplementation", "updateBoxSelect"}]
       27 GETIMPORT                        R7 K5 [require]
       29 GETIMPORT                        R9 K1 [script]
       31 GETTABLEKS                       R8 R9 K11 ["addUndoWaypoint"]
       33 CALL                             R7 1 1
       34 SETTABLEKS                       R7 R6 K11 ["addUndoWaypoint"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETIMPORT                        R9 K1 [script]
       40 GETTABLEKS                       R8 R9 K12 ["dispatchWorldClick"]
       42 CALL                             R7 1 1
       43 SETTABLEKS                       R7 R6 K12 ["dispatchWorldClick"]
       45 GETIMPORT                        R7 K5 [require]
       47 GETIMPORT                        R9 K1 [script]
       49 GETTABLEKS                       R8 R9 K13 ["endBoxSelect"]
       51 CALL                             R7 1 1
       52 SETTABLEKS                       R7 R6 K13 ["endBoxSelect"]
       54 GETIMPORT                        R7 K5 [require]
       56 GETIMPORT                        R9 K1 [script]
       58 GETTABLEKS                       R8 R9 K14 ["getNextSelectables"]
       60 CALL                             R7 1 1
       61 SETTABLEKS                       R7 R6 K14 ["getNextSelectables"]
       63 GETIMPORT                        R7 K5 [require]
       65 GETIMPORT                        R9 K1 [script]
       67 GETTABLEKS                       R8 R9 K15 ["isExclusiveSelectable"]
       69 CALL                             R7 1 1
       70 SETTABLEKS                       R7 R6 K15 ["isExclusiveSelectable"]
       72 GETIMPORT                        R7 K5 [require]
       74 GETIMPORT                        R9 K1 [script]
       76 GETTABLEKS                       R8 R9 K16 ["ExtrudeHandlesImplementation"]
       78 CALL                             R7 1 1
       79 SETTABLEKS                       R7 R6 K16 ["ExtrudeHandlesImplementation"]
       81 GETIMPORT                        R7 K5 [require]
       83 GETIMPORT                        R9 K1 [script]
       85 GETTABLEKS                       R8 R9 K17 ["getMouseTarget"]
       87 CALL                             R7 1 1
       88 SETTABLEKS                       R7 R6 K17 ["getMouseTarget"]
       90 GETIMPORT                        R7 K5 [require]
       92 GETIMPORT                        R9 K1 [script]
       94 GETTABLEKS                       R8 R9 K18 ["Selection"]
       96 CALL                             R7 1 1
       97 SETTABLEKS                       R7 R6 K18 ["Selection"]
       99 GETIMPORT                        R7 K5 [require]
      101 GETIMPORT                        R9 K1 [script]
      103 GETTABLEKS                       R8 R9 K19 ["SelectionInfo"]
      105 CALL                             R7 1 1
      106 SETTABLEKS                       R7 R6 K19 ["SelectionInfo"]
      108 GETIMPORT                        R7 K5 [require]
      110 GETIMPORT                        R9 K1 [script]
      112 GETTABLEKS                       R8 R9 K20 ["TransformHandlesImplementation"]
      114 CALL                             R7 1 1
      115 SETTABLEKS                       R7 R6 K20 ["TransformHandlesImplementation"]
      117 GETIMPORT                        R7 K5 [require]
      119 GETIMPORT                        R9 K1 [script]
      121 GETTABLEKS                       R8 R9 K21 ["updateBoxSelect"]
      123 CALL                             R7 1 1
      124 SETTABLEKS                       R7 R6 K21 ["updateBoxSelect"]
      126 CALL                             R4 2 -1
      127 RETURN                           R4 -1
