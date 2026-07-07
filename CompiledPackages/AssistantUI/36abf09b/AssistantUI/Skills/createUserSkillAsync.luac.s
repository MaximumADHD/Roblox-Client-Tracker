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
       34 GETTABLEKS                       R7 R0 K10 ["userSkillAssets"]
       36 GETTABLEKS                       R7 R7 K12 ["getManifestAsync"]
       38 CALL                             R7 0 1
       39 JUMPIF                           R7 ; [+2]
       40 NEWTABLE                         R7 0 0
       42 GETTABLEKS                       R10 R6 K13 ["assetId"]
       44 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
       46 MOVE                             R9 R7
       47 GETIMPORT                        R8 K16 [table.insert]
       49 CALL                             R8 2 0
       50 GETTABLEKS                       R8 R0 K10 ["userSkillAssets"]
       52 GETTABLEKS                       R8 R8 K17 ["setManifestAsync"]
       54 MOVE                             R9 R7
       55 CALL                             R8 1 0
       56 GETUPVAL                         R8 1
       57 GETTABLEKS                       R8 R8 K18 ["register"]
       59 DUPTABLE                         R9 K22 [{"name", "description", "content", "source", "assetId", "rawContent"}]
       60 SETTABLEKS                       R1 R9 K7 ["name"]
       62 SETTABLEKS                       R2 R9 K8 ["description"]
       64 SETTABLEKS                       R4 R9 K19 ["content"]
       66 GETUPVAL                         R10 2
       67 GETTABLEKS                       R10 R10 K23 ["User"]
       69 SETTABLEKS                       R10 R9 K20 ["source"]
       71 GETTABLEKS                       R10 R6 K13 ["assetId"]
       73 SETTABLEKS                       R10 R9 K13 ["assetId"]
       75 SETTABLEKS                       R5 R9 K21 ["rawContent"]
       77 CALL                             R8 1 0
       78 GETTABLEKS                       R8 R0 K24 ["EventLogger"]
       80 GETTABLEKS                       R8 R8 K25 ["logUserSkillEvent"]
       82 DUPTABLE                         R9 K31 [{["action"] = "create", ["skillName"], ["skillDescription"], ["skillBody"]}]
       83 SETTABLEKS                       R1 R9 K28 ["skillName"]
       85 SETTABLEKS                       R2 R9 K29 ["skillDescription"]
       87 SETTABLEKS                       R4 R9 K30 ["skillBody"]
       89 CALL                             R8 1 0
       90 GETUPVAL                         R8 3
       91 GETTABLEKS                       R8 R8 K32 ["getDisabledSetAsync"]
       93 MOVE                             R9 R0
       94 CALL                             R8 1 1
       95 GETUPVAL                         R9 3
       96 GETTABLEKS                       R9 R9 K33 ["shadowRobloxSkill"]
       98 MOVE                             R10 R1
       99 MOVE                             R11 R8
      100 CALL                             R9 2 1
      101 JUMPIFNOT                        R9 ; [+6]
      102 GETUPVAL                         R9 3
      103 GETTABLEKS                       R9 R9 K34 ["persistDisabledSetAsync"]
      105 MOVE                             R10 R0
      106 MOVE                             R11 R8
      107 CALL                             R9 2 0
      108 RETURN                           R0 0

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
