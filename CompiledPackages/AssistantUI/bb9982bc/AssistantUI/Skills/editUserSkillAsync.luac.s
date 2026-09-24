PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getBySource"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["User"]
        6 MOVE                             R5 R1
        7 CALL                             R3 2 1
        8 LOADB                            R4 0
        9 JUMPIF                           R3 ; [+7]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K2 ["get"]
       13 MOVE                             R6 R1
       14 CALL                             R5 1 1
       15 MOVE                             R3 R5
       16 LOADB                            R4 1
       17 JUMPIF                           R3 ; [+7]
       18 LOADB                            R5 0
       19 LOADK                            R6 K3 ["Skill \"%*\" not found."]
       20 MOVE                             R8 R1
       21 NAMECALL                         R6 R6 K4 ["format"]
       23 CALL                             R6 2 1
       24 RETURN                           R5 2
       25 GETTABLEKS                       R5 R3 K5 ["source"]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K1 ["User"]
       30 JUMPIFEQ                         R5 R6 ; [+4]
       32 LOADB                            R5 0
       33 LOADK                            R6 K6 ["Cannot edit Roblox skills (read-only)."]
       34 RETURN                           R5 2
       35 GETTABLEKS                       R5 R3 K7 ["assetId"]
       37 JUMPIFNOTEQKNIL                  R5 ; [+8]
       39 LOADB                            R6 0
       40 LOADK                            R7 K8 ["Skill \"%*\" has no assetId."]
       41 MOVE                             R9 R1
       42 NAMECALL                         R7 R7 K4 ["format"]
       44 CALL                             R7 2 1
       45 RETURN                           R6 2
       46 GETTABLEKS                       R6 R2 K9 ["newName"]
       48 JUMPIF                           R6 ; [+2]
       49 GETTABLEKS                       R6 R3 K10 ["name"]
       51 GETTABLEKS                       R7 R2 K11 ["newDescription"]
       53 JUMPIF                           R7 ; [+2]
       54 GETTABLEKS                       R7 R3 K12 ["description"]
       56 GETTABLEKS                       R8 R2 K13 ["newBody"]
       58 JUMPIF                           R8 ; [+2]
       59 GETTABLEKS                       R8 R3 K14 ["content"]
       61 JUMPIFNOTEQKS                    R7 K15 [""] ; [+4]
       63 LOADB                            R9 0
       64 LOADK                            R10 K16 ["Description cannot be empty."]
       65 RETURN                           R9 2
       66 LOADK                            R11 K17 ["^%s*$"]
       67 NAMECALL                         R9 R8 K18 ["match"]
       69 CALL                             R9 2 1
       70 JUMPIFNOT                        R9 ; [+3]
       71 LOADB                            R9 0
       72 LOADK                            R10 K19 ["Body cannot be empty or whitespace-only."]
       73 RETURN                           R9 2
       74 GETTABLEKS                       R9 R3 K10 ["name"]
       76 JUMPIFEQ                         R6 R9 ; [+19]
       78 LOADN                            R11 1
       79 LOADN                            R12 4
       80 NAMECALL                         R9 R6 K20 ["sub"]
       82 CALL                             R9 3 1
       83 JUMPIFNOTEQKS                    R9 K21 ["rbx-"] ; [+4]
       85 LOADB                            R9 0
       86 LOADK                            R10 K22 ["Skill names cannot start with 'rbx-' (reserved for Roblox skills)."]
       87 RETURN                           R9 2
       88 LOADK                            R11 K23 ["^[%w_%-]+$"]
       89 NAMECALL                         R9 R6 K18 ["match"]
       91 CALL                             R9 2 1
       92 JUMPIF                           R9 ; [+3]
       93 LOADB                            R9 0
       94 LOADK                            R10 K24 ["Skill name can only contain letters, numbers, underscores, and dashes."]
       95 RETURN                           R9 2
       96 GETUPVAL                         R9 3
       97 GETTABLEKS                       R9 R9 K25 ["serialize"]
       99 DUPTABLE                         R10 K29 [{"frontmatter", "extras", "body"}]
      100 DUPTABLE                         R11 K30 [{"name", "description"}]
      101 SETTABLEKS                       R6 R11 K10 ["name"]
      103 SETTABLEKS                       R7 R11 K12 ["description"]
      105 SETTABLEKS                       R11 R10 K26 ["frontmatter"]
      107 NEWTABLE                         R11 0 0
      109 SETTABLEKS                       R11 R10 K27 ["extras"]
      111 SETTABLEKS                       R8 R10 K28 ["body"]
      113 CALL                             R9 1 1
      114 DUPTABLE                         R10 K32 [{"name", "description", "content", "source", "assetId", "rawContent"}]
      115 SETTABLEKS                       R6 R10 K10 ["name"]
      117 SETTABLEKS                       R7 R10 K12 ["description"]
      119 SETTABLEKS                       R8 R10 K14 ["content"]
      121 GETUPVAL                         R11 1
      122 GETTABLEKS                       R11 R11 K1 ["User"]
      124 SETTABLEKS                       R11 R10 K5 ["source"]
      126 SETTABLEKS                       R5 R10 K7 ["assetId"]
      128 SETTABLEKS                       R9 R10 K31 ["rawContent"]
      130 JUMPIFEQ                         R6 R1 ; [+38]
      132 GETUPVAL                         R11 2
      133 GETTABLEKS                       R11 R11 K2 ["get"]
      135 MOVE                             R12 R6
      136 CALL                             R11 1 1
      137 JUMPIFNOT                        R11 ; [+11]
      138 GETTABLEKS                       R12 R11 K7 ["assetId"]
      140 JUMPIFEQ                         R12 R5 ; [+8]
      142 LOADB                            R12 0
      143 LOADK                            R13 K33 ["A skill named \"%*\" already exists."]
      144 MOVE                             R15 R6
      145 NAMECALL                         R13 R13 K4 ["format"]
      147 CALL                             R13 2 1
      148 RETURN                           R12 2
      149 GETUPVAL                         R12 0
      150 GETTABLEKS                       R12 R12 K0 ["getBySource"]
      152 GETUPVAL                         R13 1
      153 GETTABLEKS                       R13 R13 K1 ["User"]
      155 MOVE                             R14 R6
      156 CALL                             R12 2 1
      157 JUMPIFNOT                        R12 ; [+11]
      158 GETTABLEKS                       R13 R12 K7 ["assetId"]
      160 JUMPIFEQ                         R13 R5 ; [+8]
      162 LOADB                            R13 0
      163 LOADK                            R14 K33 ["A skill named \"%*\" already exists."]
      164 MOVE                             R16 R6
      165 NAMECALL                         R14 R14 K4 ["format"]
      167 CALL                             R14 2 1
      168 RETURN                           R13 2
      169 JUMPIFNOT                        R4 ; [+28]
      170 GETUPVAL                         R11 2
      171 GETTABLEKS                       R11 R11 K34 ["remove"]
      173 MOVE                             R12 R1
      174 CALL                             R11 1 0
      175 GETUPVAL                         R11 2
      176 GETTABLEKS                       R11 R11 K35 ["store"]
      178 MOVE                             R12 R10
      179 CALL                             R11 1 0
      180 JUMPIFEQ                         R6 R1 ; [+30]
      182 GETUPVAL                         R11 4
      183 GETTABLEKS                       R11 R11 K36 ["getDisabledSetAsync"]
      185 MOVE                             R12 R0
      186 CALL                             R11 1 1
      187 LOADNIL                          R12
      188 SETTABLE                         R12 R11 R1
      189 LOADB                            R12 1
      190 SETTABLE                         R12 R11 R6
      191 GETUPVAL                         R12 4
      192 GETTABLEKS                       R12 R12 K37 ["persistDisabledSetAsync"]
      194 MOVE                             R13 R0
      195 MOVE                             R14 R11
      196 CALL                             R12 2 0
      197 JUMP                             ; [+13]
      198 GETUPVAL                         R11 0
      199 GETTABLEKS                       R11 R11 K38 ["replaceByAssetId"]
      201 MOVE                             R12 R10
      202 CALL                             R11 1 1
      203 JUMPIF                           R11 ; [+7]
      204 LOADB                            R12 0
      205 LOADK                            R13 K33 ["A skill named \"%*\" already exists."]
      206 MOVE                             R15 R6
      207 NAMECALL                         R13 R13 K4 ["format"]
      209 CALL                             R13 2 1
      210 RETURN                           R12 2
      211 JUMPIF                           R4 ; [+28]
      212 JUMPIFEQ                         R6 R1 ; [+27]
      214 GETUPVAL                         R11 4
      215 GETTABLEKS                       R11 R11 K36 ["getDisabledSetAsync"]
      217 MOVE                             R12 R0
      218 CALL                             R11 1 1
      219 GETUPVAL                         R12 4
      220 GETTABLEKS                       R12 R12 K39 ["unshadowRobloxSkill"]
      222 MOVE                             R13 R1
      223 MOVE                             R14 R11
      224 CALL                             R12 2 1
      225 GETUPVAL                         R13 4
      226 GETTABLEKS                       R13 R13 K40 ["shadowRobloxSkill"]
      228 MOVE                             R14 R6
      229 MOVE                             R15 R11
      230 CALL                             R13 2 1
      231 JUMPIFNOT                        R13 ; [+1]
      232 LOADB                            R12 1
      233 JUMPIFNOT                        R12 ; [+6]
      234 GETUPVAL                         R13 4
      235 GETTABLEKS                       R13 R13 K37 ["persistDisabledSetAsync"]
      237 MOVE                             R14 R0
      238 MOVE                             R15 R11
      239 CALL                             R13 2 0
      240 GETTABLEKS                       R11 R0 K41 ["userSkillAssets"]
      242 GETTABLEKS                       R11 R11 K42 ["publishUpdateAsync"]
      244 MOVE                             R12 R5
      245 MOVE                             R13 R9
      246 MOVE                             R14 R6
      247 MOVE                             R15 R7
      248 CALL                             R11 4 0
      249 GETIMPORT                        R11 K44 [pcall]
      251 GETTABLEKS                       R12 R0 K45 ["cloudSkillAssets"]
      253 GETTABLEKS                       R12 R12 K46 ["uploadAssetsAsync"]
      255 NEWTABLE                         R13 0 1
      257 DUPTABLE                         R14 K48 [{"assetId", "name", "description", "isDisabled"}]
      258 SETTABLEKS                       R5 R14 K7 ["assetId"]
      260 SETTABLEKS                       R6 R14 K10 ["name"]
      262 SETTABLEKS                       R7 R14 K12 ["description"]
      264 SETTABLEKS                       R4 R14 K47 ["isDisabled"]
      266 SETLIST                          R13 R14 1 [1]
      268 CALL                             R11 2 0
      269 GETTABLEKS                       R11 R0 K49 ["EventLogger"]
      271 GETTABLEKS                       R11 R11 K50 ["logUserSkillEvent"]
      273 DUPTABLE                         R12 K56 [{["action"] = "update", ["skillName"], ["skillDescription"], ["skillBody"]}]
      274 SETTABLEKS                       R6 R12 K53 ["skillName"]
      276 SETTABLEKS                       R7 R12 K54 ["skillDescription"]
      278 SETTABLEKS                       R8 R12 K55 ["skillBody"]
      280 CALL                             R11 1 0
      281 LOADB                            R11 1
      282 LOADNIL                          R12
      283 RETURN                           R11 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["DisabledSkillsStore"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Guest"]
       20 GETTABLEKS                       R3 R3 K9 ["Environment"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K6 ["Parent"]
       29 GETTABLEKS                       R4 R4 K10 ["Frontmatter"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K6 ["Parent"]
       38 GETTABLEKS                       R5 R5 K11 ["SkillDefinition"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETIMPORT                        R6 K1 [script]
       45 GETTABLEKS                       R6 R6 K6 ["Parent"]
       47 GETTABLEKS                       R6 R6 K12 ["SkillRegistry"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETIMPORT                        R7 K1 [script]
       54 GETTABLEKS                       R7 R7 K6 ["Parent"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R4 K13 ["Sources"]
       59 NEWTABLE                         R8 1 0
       61 DUPCLOSURE                       R9 K14 [PROTO_0]
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R6
       67 SETTABLEKS                       R9 R8 K15 ["editAsync"]
       69 RETURN                           R8 1
