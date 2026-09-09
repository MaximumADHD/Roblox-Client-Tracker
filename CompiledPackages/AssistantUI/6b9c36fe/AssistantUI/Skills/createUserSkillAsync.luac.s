PROTO_0:
        0 MOVE                             R4 R3
        1 JUMPIF                           R4 ; [+6]
        2 LOADK                            R5 K0 ["# %*\n\nWrite what your skill does here. The agent reads this content when it invokes your skill.\n"]
        3 MOVE                             R7 R1
        4 NAMECALL                         R5 R5 K1 ["format"]
        6 CALL                             R5 2 1
        7 MOVE                             R4 R5
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K2 ["serialize"]
       11 DUPTABLE                         R6 K6 [{"frontmatter", "extras", "body"}]
       12 DUPTABLE                         R7 K9 [{"name", "description"}]
       13 SETTABLEKS                       R1 R7 K7 ["name"]
       15 SETTABLEKS                       R2 R7 K8 ["description"]
       17 SETTABLEKS                       R7 R6 K3 ["frontmatter"]
       19 NEWTABLE                         R7 0 0
       21 SETTABLEKS                       R7 R6 K4 ["extras"]
       23 SETTABLEKS                       R4 R6 K5 ["body"]
       25 CALL                             R5 1 1
       26 GETTABLEKS                       R6 R0 K10 ["userSkillAssets"]
       28 GETTABLEKS                       R6 R6 K11 ["publishNewAsync"]
       30 MOVE                             R7 R5
       31 MOVE                             R8 R1
       32 MOVE                             R9 R2
       33 CALL                             R6 3 1
       34 GETIMPORT                        R7 K13 [pcall]
       36 GETTABLEKS                       R8 R0 K14 ["cloudSkillAssets"]
       38 GETTABLEKS                       R8 R8 K15 ["uploadAssetsAsync"]
       40 NEWTABLE                         R9 0 1
       42 DUPTABLE                         R10 K19 [{["assetId"], ["name"], ["description"], ["isDisabled"] = False}]
       43 GETTABLEKS                       R11 R6 K16 ["assetId"]
       45 SETTABLEKS                       R11 R10 K16 ["assetId"]
       47 SETTABLEKS                       R1 R10 K7 ["name"]
       49 SETTABLEKS                       R2 R10 K8 ["description"]
       51 SETLIST                          R9 R10 1 [1]
       53 CALL                             R7 2 2
       54 JUMPIF                           R7 ; [+16]
       55 GETIMPORT                        R9 K21 [warn]
       57 LOADK                            R11 K22 ["Failed to sync new skill \"%*\" (asset:%*) to cloud: %*"]
       58 MOVE                             R13 R1
       59 GETTABLEKS                       R14 R6 K16 ["assetId"]
       61 FASTCALL1                        TOSTRING R8 ; [+3]
       62 MOVE                             R16 R8
       63 GETIMPORT                        R15 K24 [tostring]
       65 CALL                             R15 1 1
       66 NAMECALL                         R11 R11 K1 ["format"]
       68 CALL                             R11 4 1
       69 MOVE                             R10 R11
       70 CALL                             R9 1 0
       71 GETUPVAL                         R9 1
       72 GETTABLEKS                       R9 R9 K25 ["register"]
       74 DUPTABLE                         R10 K29 [{"name", "description", "content", "source", "assetId", "rawContent"}]
       75 SETTABLEKS                       R1 R10 K7 ["name"]
       77 SETTABLEKS                       R2 R10 K8 ["description"]
       79 SETTABLEKS                       R4 R10 K26 ["content"]
       81 GETUPVAL                         R11 2
       82 GETTABLEKS                       R11 R11 K30 ["User"]
       84 SETTABLEKS                       R11 R10 K27 ["source"]
       86 GETTABLEKS                       R11 R6 K16 ["assetId"]
       88 SETTABLEKS                       R11 R10 K16 ["assetId"]
       90 SETTABLEKS                       R5 R10 K28 ["rawContent"]
       92 CALL                             R9 1 0
       93 GETTABLEKS                       R9 R0 K31 ["EventLogger"]
       95 GETTABLEKS                       R9 R9 K32 ["logUserSkillEvent"]
       97 DUPTABLE                         R10 K38 [{["action"] = "create", ["skillName"], ["skillDescription"], ["skillBody"]}]
       98 SETTABLEKS                       R1 R10 K35 ["skillName"]
      100 SETTABLEKS                       R2 R10 K36 ["skillDescription"]
      102 SETTABLEKS                       R4 R10 K37 ["skillBody"]
      104 CALL                             R9 1 0
      105 GETUPVAL                         R9 3
      106 GETTABLEKS                       R9 R9 K39 ["getDisabledSetAsync"]
      108 MOVE                             R10 R0
      109 CALL                             R9 1 1
      110 GETUPVAL                         R10 3
      111 GETTABLEKS                       R10 R10 K40 ["shadowRobloxSkill"]
      113 MOVE                             R11 R1
      114 MOVE                             R12 R9
      115 CALL                             R10 2 1
      116 JUMPIFNOT                        R10 ; [+6]
      117 GETUPVAL                         R10 3
      118 GETTABLEKS                       R10 R10 K41 ["persistDisabledSetAsync"]
      120 MOVE                             R11 R0
      121 MOVE                             R12 R9
      122 CALL                             R10 2 0
      123 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["Frontmatter"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K8 ["Parent"]
       29 GETTABLEKS                       R4 R4 K10 ["SkillDefinition"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K8 ["Parent"]
       38 GETTABLEKS                       R5 R5 K11 ["SkillRegistry"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETIMPORT                        R6 K1 [script]
       45 GETTABLEKS                       R6 R6 K8 ["Parent"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R3 K12 ["Sources"]
       50 NEWTABLE                         R7 1 0
       52 DUPCLOSURE                       R8 K13 [PROTO_0]
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R5
       57 SETTABLEKS                       R8 R7 K14 ["createAsync"]
       59 RETURN                           R7 1
