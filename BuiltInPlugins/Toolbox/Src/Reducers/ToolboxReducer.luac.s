PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["shouldDebugState"]
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+6]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 CALL                             R2 3 -1
       10 RETURN                           R2 -1
       11 GETUPVAL                         R2 2
       12 MOVE                             R3 R0
       13 MOVE                             R4 R1
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R5 R0 K5 ["Src"]
       13 GETTABLEKS                       R4 R5 K6 ["Util"]
       15 GETTABLEKS                       R3 R4 K7 ["SharedFlags"]
       17 GETTABLEKS                       R2 R3 K8 ["getFFlagToolboxEnableSearchOptionsRefactor"]
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R2 R0 K9 ["Packages"]
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R4 R2 K10 ["Rodux"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R7 R0 K5 ["Src"]
       31 GETTABLEKS                       R6 R7 K6 ["Util"]
       33 GETTABLEKS                       R5 R6 K11 ["DebugFlags"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R6 R0 K5 ["Src"]
       38 GETTABLEKS                       R5 R6 K12 ["Reducers"]
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R7 R5 K13 ["Assets"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K4 [require]
       47 GETTABLEKS                       R8 R5 K14 ["Dialog"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K4 [require]
       52 GETTABLEKS                       R9 R5 K15 ["Groups"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K4 [require]
       57 GETTABLEKS                       R10 R5 K16 ["Autocomplete"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K4 [require]
       62 GETTABLEKS                       R11 R5 K17 ["NetworkErrors"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K4 [require]
       67 GETTABLEKS                       R12 R5 K18 ["PageInfo"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K4 [require]
       72 GETTABLEKS                       R13 R5 K19 ["ReducerLogger"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K4 [require]
       77 GETTABLEKS                       R14 R5 K20 ["Sound"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K4 [require]
       82 GETTABLEKS                       R15 R5 K21 ["VotingReducer"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K4 [require]
       87 GETTABLEKS                       R16 R5 K22 ["TutorialLimitsReducer"]
       89 CALL                             R15 1 1
       90 GETIMPORT                        R16 K4 [require]
       92 GETTABLEKS                       R17 R5 K23 ["LiveSearch"]
       94 CALL                             R16 1 1
       95 GETIMPORT                        R17 K4 [require]
       97 GETTABLEKS                       R18 R5 K24 ["Favorite"]
       99 CALL                             R17 1 1
      100 GETIMPORT                        R18 K4 [require]
      102 GETTABLEKS                       R19 R5 K25 ["RolesReducer"]
      104 CALL                             R18 1 1
      105 GETIMPORT                        R19 K4 [require]
      107 GETTABLEKS                       R20 R5 K26 ["Purchase"]
      109 CALL                             R19 1 1
      110 GETIMPORT                        R20 K4 [require]
      112 GETTABLEKS                       R21 R5 K9 ["Packages"]
      114 CALL                             R20 1 1
      115 GETIMPORT                        R21 K4 [require]
      117 GETTABLEKS                       R22 R5 K27 ["TryInStudio"]
      119 CALL                             R21 1 1
      120 GETIMPORT                        R22 K4 [require]
      122 GETTABLEKS                       R23 R5 K28 ["HomeConfiguration"]
      124 CALL                             R22 1 1
      125 GETTABLEKS                       R23 R3 K29 ["combineReducers"]
      127 DUPTABLE                         R24 K46 [{"assets", "autocompleteResults", "dialog", "groups", "homeConfiguration", "networkErrors", "pageInfo", "sound", "voting", "liveSearch", "favorite", "roles", "purchase", "packages", "tryInStudio", "tutorialLimits"}]
      128 SETTABLEKS                       R6 R24 K30 ["assets"]
      130 SETTABLEKS                       R9 R24 K31 ["autocompleteResults"]
      132 SETTABLEKS                       R7 R24 K32 ["dialog"]
      134 MOVE                             R26 R1
      135 CALL                             R26 0 1
      136 JUMPIFNOT                        R26 ; [+2]
      137 MOVE                             R25 R8
      138 JUMP                             ; [+1]
      139 LOADNIL                          R25
      140 SETTABLEKS                       R25 R24 K33 ["groups"]
      142 SETTABLEKS                       R22 R24 K34 ["homeConfiguration"]
      144 SETTABLEKS                       R10 R24 K35 ["networkErrors"]
      146 SETTABLEKS                       R11 R24 K36 ["pageInfo"]
      148 SETTABLEKS                       R13 R24 K37 ["sound"]
      150 SETTABLEKS                       R14 R24 K38 ["voting"]
      152 SETTABLEKS                       R16 R24 K39 ["liveSearch"]
      154 SETTABLEKS                       R17 R24 K40 ["favorite"]
      156 SETTABLEKS                       R18 R24 K41 ["roles"]
      158 SETTABLEKS                       R19 R24 K42 ["purchase"]
      160 SETTABLEKS                       R20 R24 K43 ["packages"]
      162 SETTABLEKS                       R21 R24 K44 ["tryInStudio"]
      164 SETTABLEKS                       R15 R24 K45 ["tutorialLimits"]
      166 CALL                             R23 1 1
      167 DUPCLOSURE                       R24 K47 [PROTO_0]
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R23
      171 RETURN                           R24 1
