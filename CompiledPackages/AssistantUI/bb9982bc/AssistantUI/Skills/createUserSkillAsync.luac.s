PROTO_0:
        0 MOVE                             R4 R3
        1 JUMPIF                           R4 ; [+5]
        2 LOADK                            R4 K0 ["# %*\n\nWrite what your skill does here. The agent reads this content when it invokes your skill.\n"]
        3 MOVE                             R6 R1
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 2 1
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K2 ["serialize"]
       10 DUPTABLE                         R6 K6 [{"frontmatter", "extras", "body"}]
       11 DUPTABLE                         R7 K9 [{"name", "description"}]
       12 SETTABLEKS                       R1 R7 K7 ["name"]
       14 SETTABLEKS                       R2 R7 K8 ["description"]
       16 SETTABLEKS                       R7 R6 K3 ["frontmatter"]
       18 NEWTABLE                         R7 0 0
       20 SETTABLEKS                       R7 R6 K4 ["extras"]
       22 SETTABLEKS                       R4 R6 K5 ["body"]
       24 CALL                             R5 1 1
       25 GETTABLEKS                       R6 R0 K10 ["userSkillAssets"]
       27 GETTABLEKS                       R6 R6 K11 ["publishNewAsync"]
       29 MOVE                             R7 R5
       30 MOVE                             R8 R1
       31 MOVE                             R9 R2
       32 CALL                             R6 3 1
       33 GETIMPORT                        R7 K13 [pcall]
       35 GETTABLEKS                       R8 R0 K14 ["cloudSkillAssets"]
       37 GETTABLEKS                       R8 R8 K15 ["uploadAssetsAsync"]
       39 NEWTABLE                         R9 0 1
       41 DUPTABLE                         R10 K19 [{["assetId"], ["name"], ["description"], ["isDisabled"] = False}]
       42 GETTABLEKS                       R11 R6 K16 ["assetId"]
       44 SETTABLEKS                       R11 R10 K16 ["assetId"]
       46 SETTABLEKS                       R1 R10 K7 ["name"]
       48 SETTABLEKS                       R2 R10 K8 ["description"]
       50 SETLIST                          R9 R10 1 [1]
       52 CALL                             R7 2 2
       53 JUMPIF                           R7 ; [+15]
       54 GETIMPORT                        R9 K21 [warn]
       56 LOADK                            R10 K22 ["Failed to sync new skill \"%*\" (asset:%*) to cloud: %*"]
       57 MOVE                             R12 R1
       58 GETTABLEKS                       R13 R6 K16 ["assetId"]
       60 FASTCALL1                        TOSTRING R8 ; [+3]
       61 MOVE                             R15 R8
       62 GETIMPORT                        R14 K24 [tostring]
       64 CALL                             R14 1 1
       65 NAMECALL                         R10 R10 K1 ["format"]
       67 CALL                             R10 4 1
       68 CALL                             R9 1 0
       69 GETUPVAL                         R9 1
       70 GETTABLEKS                       R9 R9 K25 ["register"]
       72 DUPTABLE                         R10 K29 [{"name", "description", "content", "source", "assetId", "rawContent"}]
       73 SETTABLEKS                       R1 R10 K7 ["name"]
       75 SETTABLEKS                       R2 R10 K8 ["description"]
       77 SETTABLEKS                       R4 R10 K26 ["content"]
       79 GETUPVAL                         R11 2
       80 GETTABLEKS                       R11 R11 K30 ["User"]
       82 SETTABLEKS                       R11 R10 K27 ["source"]
       84 GETTABLEKS                       R11 R6 K16 ["assetId"]
       86 SETTABLEKS                       R11 R10 K16 ["assetId"]
       88 SETTABLEKS                       R5 R10 K28 ["rawContent"]
       90 CALL                             R9 1 0
       91 GETTABLEKS                       R9 R0 K31 ["EventLogger"]
       93 GETTABLEKS                       R9 R9 K32 ["logUserSkillEvent"]
       95 DUPTABLE                         R10 K38 [{["action"] = "create", ["skillName"], ["skillDescription"], ["skillBody"]}]
       96 SETTABLEKS                       R1 R10 K35 ["skillName"]
       98 SETTABLEKS                       R2 R10 K36 ["skillDescription"]
      100 SETTABLEKS                       R4 R10 K37 ["skillBody"]
      102 CALL                             R9 1 0
      103 GETUPVAL                         R9 3
      104 GETTABLEKS                       R9 R9 K39 ["getDisabledSetAsync"]
      106 MOVE                             R10 R0
      107 CALL                             R9 1 1
      108 GETUPVAL                         R10 3
      109 GETTABLEKS                       R10 R10 K40 ["shadowRobloxSkill"]
      111 MOVE                             R11 R1
      112 MOVE                             R12 R9
      113 CALL                             R10 2 1
      114 JUMPIFNOT                        R10 ; [+6]
      115 GETUPVAL                         R10 3
      116 GETTABLEKS                       R10 R10 K41 ["persistDisabledSetAsync"]
      118 MOVE                             R11 R0
      119 MOVE                             R12 R9
      120 CALL                             R10 2 0
      121 RETURN                           R0 0

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
