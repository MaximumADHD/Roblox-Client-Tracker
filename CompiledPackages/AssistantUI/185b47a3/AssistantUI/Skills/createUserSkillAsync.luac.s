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
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K12 ["FFlagAssistantSkillsCloudSync"]
       37 JUMPIFNOT                        R7 ; [+21]
       38 GETIMPORT                        R7 K14 [pcall]
       40 GETTABLEKS                       R8 R0 K15 ["cloudSkillAssets"]
       42 GETTABLEKS                       R8 R8 K16 ["uploadAssetsAsync"]
       44 NEWTABLE                         R9 0 1
       46 DUPTABLE                         R10 K20 [{["assetId"], ["name"], ["description"], ["isDisabled"] = False}]
       47 GETTABLEKS                       R11 R6 K17 ["assetId"]
       49 SETTABLEKS                       R11 R10 K17 ["assetId"]
       51 SETTABLEKS                       R1 R10 K7 ["name"]
       53 SETTABLEKS                       R2 R10 K8 ["description"]
       55 SETLIST                          R9 R10 1 [1]
       57 CALL                             R7 2 0
       58 JUMP                             ; [+22]
       59 GETTABLEKS                       R7 R0 K10 ["userSkillAssets"]
       61 GETTABLEKS                       R7 R7 K21 ["getManifestAsync"]
       63 CALL                             R7 0 1
       64 JUMPIF                           R7 ; [+2]
       65 NEWTABLE                         R7 0 0
       67 GETTABLEKS                       R10 R6 K17 ["assetId"]
       69 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
       71 MOVE                             R9 R7
       72 GETIMPORT                        R8 K24 [table.insert]
       74 CALL                             R8 2 0
       75 GETTABLEKS                       R8 R0 K10 ["userSkillAssets"]
       77 GETTABLEKS                       R8 R8 K25 ["setManifestAsync"]
       79 MOVE                             R9 R7
       80 CALL                             R8 1 0
       81 GETUPVAL                         R7 2
       82 GETTABLEKS                       R7 R7 K26 ["register"]
       84 DUPTABLE                         R8 K30 [{"name", "description", "content", "source", "assetId", "rawContent"}]
       85 SETTABLEKS                       R1 R8 K7 ["name"]
       87 SETTABLEKS                       R2 R8 K8 ["description"]
       89 SETTABLEKS                       R4 R8 K27 ["content"]
       91 GETUPVAL                         R9 3
       92 GETTABLEKS                       R9 R9 K31 ["User"]
       94 SETTABLEKS                       R9 R8 K28 ["source"]
       96 GETTABLEKS                       R9 R6 K17 ["assetId"]
       98 SETTABLEKS                       R9 R8 K17 ["assetId"]
      100 SETTABLEKS                       R5 R8 K29 ["rawContent"]
      102 CALL                             R7 1 0
      103 GETTABLEKS                       R7 R0 K32 ["EventLogger"]
      105 GETTABLEKS                       R7 R7 K33 ["logUserSkillEvent"]
      107 DUPTABLE                         R8 K39 [{["action"] = "create", ["skillName"], ["skillDescription"], ["skillBody"]}]
      108 SETTABLEKS                       R1 R8 K36 ["skillName"]
      110 SETTABLEKS                       R2 R8 K37 ["skillDescription"]
      112 SETTABLEKS                       R4 R8 K38 ["skillBody"]
      114 CALL                             R7 1 0
      115 GETUPVAL                         R7 4
      116 GETTABLEKS                       R7 R7 K40 ["getDisabledSetAsync"]
      118 MOVE                             R8 R0
      119 CALL                             R7 1 1
      120 GETUPVAL                         R8 4
      121 GETTABLEKS                       R8 R8 K41 ["shadowRobloxSkill"]
      123 MOVE                             R9 R1
      124 MOVE                             R10 R7
      125 CALL                             R8 2 1
      126 JUMPIFNOT                        R8 ; [+6]
      127 GETUPVAL                         R8 4
      128 GETTABLEKS                       R8 R8 K42 ["persistDisabledSetAsync"]
      130 MOVE                             R9 R0
      131 MOVE                             R10 R7
      132 CALL                             R8 2 0
      133 RETURN                           R0 0

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
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETIMPORT                        R4 K1 [script]
       23 GETTABLEKS                       R4 R4 K9 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Frontmatter"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K9 ["Parent"]
       34 GETTABLEKS                       R5 R5 K11 ["SkillDefinition"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R6 R6 K9 ["Parent"]
       43 GETTABLEKS                       R6 R6 K12 ["SkillRegistry"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETIMPORT                        R7 K1 [script]
       50 GETTABLEKS                       R7 R7 K9 ["Parent"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R4 K13 ["Sources"]
       55 NEWTABLE                         R8 1 0
       57 DUPCLOSURE                       R9 K14 [PROTO_0]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R6
       63 SETTABLEKS                       R9 R8 K15 ["createAsync"]
       65 RETURN                           R8 1
