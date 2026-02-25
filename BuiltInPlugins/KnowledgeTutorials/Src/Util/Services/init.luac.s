PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R2 K3 [script]
        4 GETTABLEKS                       R1 R2 K4 ["ServerStorage"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K5 ["isCli"]
       11 CALL                             R3 0 1
       12 JUMPIFNOT                        R3 ; [+4]
       13 GETTABLEKS                       R2 R0 K6 ["mock"]
       15 CALL                             R2 0 1
       16 JUMP                             ; [+3]
       17 GETTABLEKS                       R2 R0 K7 ["real"]
       19 CALL                             R2 0 1
       20 SETTABLEKS                       R2 R1 K4 ["ServerStorage"]
       22 GETIMPORT                        R1 K1 [require]
       24 GETIMPORT                        R3 K3 [script]
       26 GETTABLEKS                       R2 R3 K8 ["StartPageService"]
       28 CALL                             R1 1 1
       29 GETUPVAL                         R2 0
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R4 R5 K5 ["isCli"]
       33 CALL                             R4 0 1
       34 JUMPIFNOT                        R4 ; [+4]
       35 GETTABLEKS                       R3 R1 K6 ["mock"]
       37 CALL                             R3 0 1
       38 JUMP                             ; [+3]
       39 GETTABLEKS                       R3 R1 K7 ["real"]
       41 CALL                             R3 0 1
       42 SETTABLEKS                       R3 R2 K8 ["StartPageService"]
       44 GETIMPORT                        R2 K1 [require]
       46 GETIMPORT                        R4 K3 [script]
       48 GETTABLEKS                       R3 R4 K9 ["Selection"]
       50 CALL                             R2 1 1
       51 GETUPVAL                         R3 0
       52 GETUPVAL                         R6 1
       53 GETTABLEKS                       R5 R6 K5 ["isCli"]
       55 CALL                             R5 0 1
       56 JUMPIFNOT                        R5 ; [+4]
       57 GETTABLEKS                       R4 R2 K6 ["mock"]
       59 CALL                             R4 0 1
       60 JUMP                             ; [+3]
       61 GETTABLEKS                       R4 R2 K7 ["real"]
       63 CALL                             R4 0 1
       64 SETTABLEKS                       R4 R3 K9 ["Selection"]
       66 GETIMPORT                        R3 K1 [require]
       68 GETIMPORT                        R5 K3 [script]
       70 GETTABLEKS                       R4 R5 K10 ["StudioService"]
       72 CALL                             R3 1 1
       73 GETUPVAL                         R4 0
       74 GETUPVAL                         R7 1
       75 GETTABLEKS                       R6 R7 K5 ["isCli"]
       77 CALL                             R6 0 1
       78 JUMPIFNOT                        R6 ; [+4]
       79 GETTABLEKS                       R5 R3 K6 ["mock"]
       81 CALL                             R5 0 1
       82 JUMP                             ; [+3]
       83 GETTABLEKS                       R5 R3 K7 ["real"]
       85 CALL                             R5 0 1
       86 SETTABLEKS                       R5 R4 K10 ["StudioService"]
       88 GETIMPORT                        R4 K1 [require]
       90 GETIMPORT                        R6 K3 [script]
       92 GETTABLEKS                       R5 R6 K11 ["RbxAnalyticsService"]
       94 CALL                             R4 1 1
       95 GETUPVAL                         R5 0
       96 GETUPVAL                         R8 1
       97 GETTABLEKS                       R7 R8 K5 ["isCli"]
       99 CALL                             R7 0 1
      100 JUMPIFNOT                        R7 ; [+4]
      101 GETTABLEKS                       R6 R4 K6 ["mock"]
      103 CALL                             R6 0 1
      104 JUMP                             ; [+3]
      105 GETTABLEKS                       R6 R4 K7 ["real"]
      107 CALL                             R6 0 1
      108 SETTABLEKS                       R6 R5 K11 ["RbxAnalyticsService"]
      110 GETIMPORT                        R5 K1 [require]
      112 GETIMPORT                        R7 K3 [script]
      114 GETTABLEKS                       R6 R7 K12 ["TutorialService"]
      116 CALL                             R5 1 1
      117 GETUPVAL                         R6 0
      118 GETUPVAL                         R9 1
      119 GETTABLEKS                       R8 R9 K5 ["isCli"]
      121 CALL                             R8 0 1
      122 JUMPIFNOT                        R8 ; [+4]
      123 GETTABLEKS                       R7 R5 K6 ["mock"]
      125 CALL                             R7 0 1
      126 JUMP                             ; [+3]
      127 GETTABLEKS                       R7 R5 K7 ["real"]
      129 CALL                             R7 0 1
      130 SETTABLEKS                       R7 R6 K12 ["TutorialService"]
      132 GETIMPORT                        R6 K1 [require]
      134 GETIMPORT                        R8 K3 [script]
      136 GETTABLEKS                       R7 R8 K13 ["DataModel"]
      138 CALL                             R6 1 1
      139 GETUPVAL                         R7 0
      140 GETUPVAL                         R10 1
      141 GETTABLEKS                       R9 R10 K5 ["isCli"]
      143 CALL                             R9 0 1
      144 JUMPIFNOT                        R9 ; [+4]
      145 GETTABLEKS                       R8 R6 K6 ["mock"]
      147 CALL                             R8 0 1
      148 JUMP                             ; [+3]
      149 GETTABLEKS                       R8 R6 K7 ["real"]
      151 CALL                             R8 0 1
      152 SETTABLEKS                       R8 R7 K13 ["DataModel"]
      154 GETIMPORT                        R7 K1 [require]
      156 GETIMPORT                        R9 K3 [script]
      158 GETTABLEKS                       R8 R9 K14 ["MarketplaceService"]
      160 CALL                             R7 1 1
      161 GETUPVAL                         R8 0
      162 GETUPVAL                         R11 1
      163 GETTABLEKS                       R10 R11 K5 ["isCli"]
      165 CALL                             R10 0 1
      166 JUMPIFNOT                        R10 ; [+4]
      167 GETTABLEKS                       R9 R7 K6 ["mock"]
      169 CALL                             R9 0 1
      170 JUMP                             ; [+3]
      171 GETTABLEKS                       R9 R7 K7 ["real"]
      173 CALL                             R9 0 1
      174 SETTABLEKS                       R9 R8 K14 ["MarketplaceService"]
      176 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 16 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R1
       19 MOVE                             R4 R3
       20 CALL                             R4 0 0
       21 SETTABLEKS                       R3 R2 K9 ["_load"]
       23 RETURN                           R2 1
