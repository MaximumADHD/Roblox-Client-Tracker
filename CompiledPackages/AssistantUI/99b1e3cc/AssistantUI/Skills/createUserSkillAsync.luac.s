PROTO_0:
        0 MOVE                             R5 R3
        1 JUMPIF                           R5 ; [+5]
        2 LOADK                            R5 K0 ["# %*\n\nWrite what your skill does here. The agent reads this content when it invokes your skill.\n"]
        3 MOVE                             R7 R1
        4 NAMECALL                         R5 R5 K1 ["format"]
        6 CALL                             R5 2 1
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R6 R6 K2 ["serialize"]
       10 DUPTABLE                         R7 K6 [{"frontmatter", "extras", "body"}]
       11 DUPTABLE                         R8 K9 [{"name", "description"}]
       12 SETTABLEKS                       R1 R8 K7 ["name"]
       14 SETTABLEKS                       R2 R8 K8 ["description"]
       16 SETTABLEKS                       R8 R7 K3 ["frontmatter"]
       18 NEWTABLE                         R8 0 0
       20 SETTABLEKS                       R8 R7 K4 ["extras"]
       22 SETTABLEKS                       R5 R7 K5 ["body"]
       24 CALL                             R6 1 1
       25 GETTABLEKS                       R7 R0 K10 ["userSkillAssets"]
       27 GETTABLEKS                       R7 R7 K11 ["publishNewAsync"]
       29 MOVE                             R8 R6
       30 MOVE                             R9 R1
       31 MOVE                             R10 R2
       32 CALL                             R7 3 1
       33 GETIMPORT                        R8 K13 [pcall]
       35 GETTABLEKS                       R9 R0 K14 ["cloudSkillAssets"]
       37 GETTABLEKS                       R9 R9 K15 ["uploadAssetsAsync"]
       39 NEWTABLE                         R10 0 1
       41 DUPTABLE                         R11 K19 [{["assetId"], ["name"], ["description"], ["isDisabled"] = False}]
       42 GETTABLEKS                       R12 R7 K16 ["assetId"]
       44 SETTABLEKS                       R12 R11 K16 ["assetId"]
       46 SETTABLEKS                       R1 R11 K7 ["name"]
       48 SETTABLEKS                       R2 R11 K8 ["description"]
       50 SETLIST                          R10 R11 1 [1]
       52 CALL                             R8 2 2
       53 JUMPIF                           R8 ; [+15]
       54 GETIMPORT                        R10 K21 [warn]
       56 LOADK                            R11 K22 ["Failed to sync new skill \"%*\" (asset:%*) to cloud: %*"]
       57 MOVE                             R13 R1
       58 GETTABLEKS                       R14 R7 K16 ["assetId"]
       60 FASTCALL1                        TOSTRING R9 ; [+3]
       61 MOVE                             R16 R9
       62 GETIMPORT                        R15 K24 [tostring]
       64 CALL                             R15 1 1
       65 NAMECALL                         R11 R11 K1 ["format"]
       67 CALL                             R11 4 1
       68 CALL                             R10 1 0
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R10 R10 K25 ["register"]
       72 DUPTABLE                         R11 K29 [{"name", "description", "content", "source", "assetId", "rawContent"}]
       73 SETTABLEKS                       R1 R11 K7 ["name"]
       75 SETTABLEKS                       R2 R11 K8 ["description"]
       77 SETTABLEKS                       R5 R11 K26 ["content"]
       79 GETUPVAL                         R12 2
       80 GETTABLEKS                       R12 R12 K30 ["User"]
       82 SETTABLEKS                       R12 R11 K27 ["source"]
       84 GETTABLEKS                       R12 R7 K16 ["assetId"]
       86 SETTABLEKS                       R12 R11 K16 ["assetId"]
       88 SETTABLEKS                       R6 R11 K28 ["rawContent"]
       90 CALL                             R10 1 0
       91 GETTABLEKS                       R10 R0 K31 ["EventLogger"]
       93 GETTABLEKS                       R10 R10 K32 ["logUserSkillEvent"]
       95 DUPTABLE                         R11 K39 [{["action"] = "create", ["skillName"], ["skillDescription"], ["skillBody"], ["isThirdPartyRequest"]}]
       96 SETTABLEKS                       R1 R11 K35 ["skillName"]
       98 SETTABLEKS                       R2 R11 K36 ["skillDescription"]
      100 SETTABLEKS                       R5 R11 K37 ["skillBody"]
      102 SETTABLEKS                       R4 R11 K38 ["isThirdPartyRequest"]
      104 CALL                             R10 1 0
      105 GETUPVAL                         R10 3
      106 GETTABLEKS                       R10 R10 K40 ["getDisabledSetAsync"]
      108 MOVE                             R11 R0
      109 CALL                             R10 1 1
      110 GETUPVAL                         R11 3
      111 GETTABLEKS                       R11 R11 K41 ["shadowRobloxSkill"]
      113 MOVE                             R12 R1
      114 MOVE                             R13 R10
      115 CALL                             R11 2 1
      116 JUMPIFNOT                        R11 ; [+6]
      117 GETUPVAL                         R11 3
      118 GETTABLEKS                       R11 R11 K42 ["persistDisabledSetAsync"]
      120 MOVE                             R12 R0
      121 MOVE                             R13 R10
      122 CALL                             R11 2 0
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
