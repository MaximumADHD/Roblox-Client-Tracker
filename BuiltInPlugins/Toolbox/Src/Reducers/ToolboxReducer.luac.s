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
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K9 ["Flags"]
       26 GETTABLEKS                       R3 R4 K10 ["getFFlagRemoveItemTags"]
       28 CALL                             R2 1 1
       29 GETTABLEKS                       R3 R0 K11 ["Packages"]
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R5 R3 K12 ["Rodux"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K4 [require]
       38 GETTABLEKS                       R8 R0 K5 ["Src"]
       40 GETTABLEKS                       R7 R8 K6 ["Util"]
       42 GETTABLEKS                       R6 R7 K13 ["DebugFlags"]
       44 CALL                             R5 1 1
       45 GETTABLEKS                       R7 R0 K5 ["Src"]
       47 GETTABLEKS                       R6 R7 K14 ["Reducers"]
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R8 R6 K15 ["Assets"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K4 [require]
       56 GETTABLEKS                       R9 R6 K16 ["Dialog"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K4 [require]
       61 GETTABLEKS                       R10 R6 K17 ["Groups"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K4 [require]
       66 GETTABLEKS                       R11 R6 K18 ["Autocomplete"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K4 [require]
       71 GETTABLEKS                       R12 R6 K19 ["NetworkErrors"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K4 [require]
       76 GETTABLEKS                       R13 R6 K20 ["PageInfo"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K4 [require]
       81 GETTABLEKS                       R14 R6 K21 ["ReducerLogger"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R14 K4 [require]
       86 GETTABLEKS                       R15 R6 K22 ["Sound"]
       88 CALL                             R14 1 1
       89 GETIMPORT                        R15 K4 [require]
       91 GETTABLEKS                       R16 R6 K23 ["VotingReducer"]
       93 CALL                             R15 1 1
       94 GETIMPORT                        R16 K4 [require]
       96 GETTABLEKS                       R17 R6 K24 ["TutorialLimitsReducer"]
       98 CALL                             R16 1 1
       99 GETIMPORT                        R17 K4 [require]
      101 GETTABLEKS                       R18 R6 K25 ["LiveSearch"]
      103 CALL                             R17 1 1
      104 GETIMPORT                        R18 K4 [require]
      106 GETTABLEKS                       R19 R6 K26 ["Favorite"]
      108 CALL                             R18 1 1
      109 GETIMPORT                        R19 K4 [require]
      111 GETTABLEKS                       R20 R6 K27 ["RolesReducer"]
      113 CALL                             R19 1 1
      114 MOVE                             R21 R2
      115 CALL                             R21 0 1
      116 JUMPIFNOT                        R21 ; [+2]
      117 LOADNIL                          R20
      118 JUMP                             ; [+5]
      119 GETIMPORT                        R20 K4 [require]
      121 GETTABLEKS                       R21 R6 K28 ["ItemTagsReducer"]
      123 CALL                             R20 1 1
      124 GETIMPORT                        R21 K4 [require]
      126 GETTABLEKS                       R22 R6 K29 ["Purchase"]
      128 CALL                             R21 1 1
      129 GETIMPORT                        R22 K4 [require]
      131 GETTABLEKS                       R23 R6 K11 ["Packages"]
      133 CALL                             R22 1 1
      134 GETIMPORT                        R23 K4 [require]
      136 GETTABLEKS                       R24 R6 K30 ["TryInStudio"]
      138 CALL                             R23 1 1
      139 GETIMPORT                        R24 K4 [require]
      141 GETTABLEKS                       R25 R6 K31 ["HomeConfiguration"]
      143 CALL                             R24 1 1
      144 GETTABLEKS                       R25 R4 K32 ["combineReducers"]
      146 DUPTABLE                         R26 K50 [{"assets", "autocompleteResults", "dialog", "groups", "homeConfiguration", "networkErrors", "pageInfo", "sound", "voting", "liveSearch", "favorite", "roles", "itemTags", "purchase", "packages", "tryInStudio", "tutorialLimits"}]
      147 SETTABLEKS                       R7 R26 K33 ["assets"]
      149 SETTABLEKS                       R10 R26 K34 ["autocompleteResults"]
      151 SETTABLEKS                       R8 R26 K35 ["dialog"]
      153 MOVE                             R28 R1
      154 CALL                             R28 0 1
      155 JUMPIFNOT                        R28 ; [+2]
      156 MOVE                             R27 R9
      157 JUMP                             ; [+1]
      158 LOADNIL                          R27
      159 SETTABLEKS                       R27 R26 K36 ["groups"]
      161 SETTABLEKS                       R24 R26 K37 ["homeConfiguration"]
      163 SETTABLEKS                       R11 R26 K38 ["networkErrors"]
      165 SETTABLEKS                       R12 R26 K39 ["pageInfo"]
      167 SETTABLEKS                       R14 R26 K40 ["sound"]
      169 SETTABLEKS                       R15 R26 K41 ["voting"]
      171 SETTABLEKS                       R17 R26 K42 ["liveSearch"]
      173 SETTABLEKS                       R18 R26 K43 ["favorite"]
      175 SETTABLEKS                       R19 R26 K44 ["roles"]
      177 MOVE                             R28 R2
      178 CALL                             R28 0 1
      179 JUMPIFNOT                        R28 ; [+2]
      180 LOADNIL                          R27
      181 JUMP                             ; [+1]
      182 MOVE                             R27 R20
      183 SETTABLEKS                       R27 R26 K45 ["itemTags"]
      185 SETTABLEKS                       R21 R26 K46 ["purchase"]
      187 SETTABLEKS                       R22 R26 K47 ["packages"]
      189 SETTABLEKS                       R23 R26 K48 ["tryInStudio"]
      191 SETTABLEKS                       R16 R26 K49 ["tutorialLimits"]
      193 CALL                             R25 1 1
      194 DUPCLOSURE                       R26 K51 [PROTO_0]
      195 CAPTURE                          VAL R5
      196 CAPTURE                          VAL R13
      197 CAPTURE                          VAL R25
      198 RETURN                           R26 1
