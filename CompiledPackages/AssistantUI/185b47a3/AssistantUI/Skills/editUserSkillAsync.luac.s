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
       17 JUMPIF                           R3 ; [+8]
       18 LOADB                            R5 0
       19 LOADK                            R7 K3 ["Skill \"%*\" not found."]
       20 MOVE                             R9 R1
       21 NAMECALL                         R7 R7 K4 ["format"]
       23 CALL                             R7 2 1
       24 MOVE                             R6 R7
       25 RETURN                           R5 2
       26 GETTABLEKS                       R5 R3 K5 ["source"]
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K1 ["User"]
       31 JUMPIFEQ                         R5 R6 ; [+4]
       33 LOADB                            R5 0
       34 LOADK                            R6 K6 ["Cannot edit Roblox skills (read-only)."]
       35 RETURN                           R5 2
       36 GETTABLEKS                       R5 R3 K7 ["assetId"]
       38 JUMPIFNOTEQKNIL                  R5 ; [+9]
       40 LOADB                            R6 0
       41 LOADK                            R8 K8 ["Skill \"%*\" has no assetId."]
       42 MOVE                             R10 R1
       43 NAMECALL                         R8 R8 K4 ["format"]
       45 CALL                             R8 2 1
       46 MOVE                             R7 R8
       47 RETURN                           R6 2
       48 GETTABLEKS                       R6 R2 K9 ["newName"]
       50 JUMPIF                           R6 ; [+2]
       51 GETTABLEKS                       R6 R3 K10 ["name"]
       53 GETTABLEKS                       R7 R2 K11 ["newDescription"]
       55 JUMPIF                           R7 ; [+2]
       56 GETTABLEKS                       R7 R3 K12 ["description"]
       58 GETTABLEKS                       R8 R2 K13 ["newBody"]
       60 JUMPIF                           R8 ; [+2]
       61 GETTABLEKS                       R8 R3 K14 ["content"]
       63 JUMPIFNOTEQKS                    R7 K15 [""] ; [+4]
       65 LOADB                            R9 0
       66 LOADK                            R10 K16 ["Description cannot be empty."]
       67 RETURN                           R9 2
       68 LOADK                            R11 K17 ["^%s*$"]
       69 NAMECALL                         R9 R8 K18 ["match"]
       71 CALL                             R9 2 1
       72 JUMPIFNOT                        R9 ; [+3]
       73 LOADB                            R9 0
       74 LOADK                            R10 K19 ["Body cannot be empty or whitespace-only."]
       75 RETURN                           R9 2
       76 GETTABLEKS                       R9 R3 K10 ["name"]
       78 JUMPIFEQ                         R6 R9 ; [+19]
       80 LOADN                            R11 1
       81 LOADN                            R12 4
       82 NAMECALL                         R9 R6 K20 ["sub"]
       84 CALL                             R9 3 1
       85 JUMPIFNOTEQKS                    R9 K21 ["rbx-"] ; [+4]
       87 LOADB                            R9 0
       88 LOADK                            R10 K22 ["Skill names cannot start with 'rbx-' (reserved for Roblox skills)."]
       89 RETURN                           R9 2
       90 LOADK                            R11 K23 ["^[%w_%-]+$"]
       91 NAMECALL                         R9 R6 K18 ["match"]
       93 CALL                             R9 2 1
       94 JUMPIF                           R9 ; [+3]
       95 LOADB                            R9 0
       96 LOADK                            R10 K24 ["Skill name can only contain letters, numbers, underscores, and dashes."]
       97 RETURN                           R9 2
       98 GETUPVAL                         R9 3
       99 GETTABLEKS                       R9 R9 K25 ["serialize"]
      101 DUPTABLE                         R10 K29 [{"frontmatter", "extras", "body"}]
      102 DUPTABLE                         R11 K30 [{"name", "description"}]
      103 SETTABLEKS                       R6 R11 K10 ["name"]
      105 SETTABLEKS                       R7 R11 K12 ["description"]
      107 SETTABLEKS                       R11 R10 K26 ["frontmatter"]
      109 NEWTABLE                         R11 0 0
      111 SETTABLEKS                       R11 R10 K27 ["extras"]
      113 SETTABLEKS                       R8 R10 K28 ["body"]
      115 CALL                             R9 1 1
      116 DUPTABLE                         R10 K32 [{"name", "description", "content", "source", "assetId", "rawContent"}]
      117 SETTABLEKS                       R6 R10 K10 ["name"]
      119 SETTABLEKS                       R7 R10 K12 ["description"]
      121 SETTABLEKS                       R8 R10 K14 ["content"]
      123 GETUPVAL                         R11 1
      124 GETTABLEKS                       R11 R11 K1 ["User"]
      126 SETTABLEKS                       R11 R10 K5 ["source"]
      128 SETTABLEKS                       R5 R10 K7 ["assetId"]
      130 SETTABLEKS                       R9 R10 K31 ["rawContent"]
      132 JUMPIFEQ                         R6 R1 ; [+40]
      134 GETUPVAL                         R11 2
      135 GETTABLEKS                       R11 R11 K2 ["get"]
      137 MOVE                             R12 R6
      138 CALL                             R11 1 1
      139 JUMPIFNOT                        R11 ; [+12]
      140 GETTABLEKS                       R12 R11 K7 ["assetId"]
      142 JUMPIFEQ                         R12 R5 ; [+9]
      144 LOADB                            R12 0
      145 LOADK                            R14 K33 ["A skill named \"%*\" already exists."]
      146 MOVE                             R16 R6
      147 NAMECALL                         R14 R14 K4 ["format"]
      149 CALL                             R14 2 1
      150 MOVE                             R13 R14
      151 RETURN                           R12 2
      152 GETUPVAL                         R12 0
      153 GETTABLEKS                       R12 R12 K0 ["getBySource"]
      155 GETUPVAL                         R13 1
      156 GETTABLEKS                       R13 R13 K1 ["User"]
      158 MOVE                             R14 R6
      159 CALL                             R12 2 1
      160 JUMPIFNOT                        R12 ; [+12]
      161 GETTABLEKS                       R13 R12 K7 ["assetId"]
      163 JUMPIFEQ                         R13 R5 ; [+9]
      165 LOADB                            R13 0
      166 LOADK                            R15 K33 ["A skill named \"%*\" already exists."]
      167 MOVE                             R17 R6
      168 NAMECALL                         R15 R15 K4 ["format"]
      170 CALL                             R15 2 1
      171 MOVE                             R14 R15
      172 RETURN                           R13 2
      173 JUMPIFNOT                        R4 ; [+28]
      174 GETUPVAL                         R11 2
      175 GETTABLEKS                       R11 R11 K34 ["remove"]
      177 MOVE                             R12 R1
      178 CALL                             R11 1 0
      179 GETUPVAL                         R11 2
      180 GETTABLEKS                       R11 R11 K35 ["store"]
      182 MOVE                             R12 R10
      183 CALL                             R11 1 0
      184 JUMPIFEQ                         R6 R1 ; [+31]
      186 GETUPVAL                         R11 4
      187 GETTABLEKS                       R11 R11 K36 ["getDisabledSetAsync"]
      189 MOVE                             R12 R0
      190 CALL                             R11 1 1
      191 LOADNIL                          R12
      192 SETTABLE                         R12 R11 R1
      193 LOADB                            R12 1
      194 SETTABLE                         R12 R11 R6
      195 GETUPVAL                         R12 4
      196 GETTABLEKS                       R12 R12 K37 ["persistDisabledSetAsync"]
      198 MOVE                             R13 R0
      199 MOVE                             R14 R11
      200 CALL                             R12 2 0
      201 JUMP                             ; [+14]
      202 GETUPVAL                         R11 0
      203 GETTABLEKS                       R11 R11 K38 ["replaceByAssetId"]
      205 MOVE                             R12 R10
      206 CALL                             R11 1 1
      207 JUMPIF                           R11 ; [+8]
      208 LOADB                            R12 0
      209 LOADK                            R14 K33 ["A skill named \"%*\" already exists."]
      210 MOVE                             R16 R6
      211 NAMECALL                         R14 R14 K4 ["format"]
      213 CALL                             R14 2 1
      214 MOVE                             R13 R14
      215 RETURN                           R12 2
      216 JUMPIF                           R4 ; [+28]
      217 JUMPIFEQ                         R6 R1 ; [+27]
      219 GETUPVAL                         R11 4
      220 GETTABLEKS                       R11 R11 K36 ["getDisabledSetAsync"]
      222 MOVE                             R12 R0
      223 CALL                             R11 1 1
      224 GETUPVAL                         R12 4
      225 GETTABLEKS                       R12 R12 K39 ["unshadowRobloxSkill"]
      227 MOVE                             R13 R1
      228 MOVE                             R14 R11
      229 CALL                             R12 2 1
      230 GETUPVAL                         R13 4
      231 GETTABLEKS                       R13 R13 K40 ["shadowRobloxSkill"]
      233 MOVE                             R14 R6
      234 MOVE                             R15 R11
      235 CALL                             R13 2 1
      236 JUMPIFNOT                        R13 ; [+1]
      237 LOADB                            R12 1
      238 JUMPIFNOT                        R12 ; [+6]
      239 GETUPVAL                         R13 4
      240 GETTABLEKS                       R13 R13 K37 ["persistDisabledSetAsync"]
      242 MOVE                             R14 R0
      243 MOVE                             R15 R11
      244 CALL                             R13 2 0
      245 GETTABLEKS                       R11 R0 K41 ["userSkillAssets"]
      247 GETTABLEKS                       R11 R11 K42 ["publishUpdateAsync"]
      249 MOVE                             R12 R5
      250 MOVE                             R13 R9
      251 MOVE                             R14 R6
      252 MOVE                             R15 R7
      253 CALL                             R11 4 0
      254 GETUPVAL                         R11 5
      255 GETTABLEKS                       R11 R11 K43 ["FFlagAssistantSkillsCloudSync"]
      257 JUMPIFNOT                        R11 ; [+20]
      258 GETIMPORT                        R11 K45 [pcall]
      260 GETTABLEKS                       R12 R0 K46 ["cloudSkillAssets"]
      262 GETTABLEKS                       R12 R12 K47 ["uploadAssetsAsync"]
      264 NEWTABLE                         R13 0 1
      266 DUPTABLE                         R14 K49 [{"assetId", "name", "description", "isDisabled"}]
      267 SETTABLEKS                       R5 R14 K7 ["assetId"]
      269 SETTABLEKS                       R6 R14 K10 ["name"]
      271 SETTABLEKS                       R7 R14 K12 ["description"]
      273 SETTABLEKS                       R4 R14 K48 ["isDisabled"]
      275 SETLIST                          R13 R14 1 [1]
      277 CALL                             R11 2 0
      278 GETTABLEKS                       R11 R0 K50 ["EventLogger"]
      280 GETTABLEKS                       R11 R11 K51 ["logUserSkillEvent"]
      282 DUPTABLE                         R12 K57 [{["action"] = "update", ["skillName"], ["skillDescription"], ["skillBody"]}]
      283 SETTABLEKS                       R6 R12 K54 ["skillName"]
      285 SETTABLEKS                       R7 R12 K55 ["skillDescription"]
      287 SETTABLEKS                       R8 R12 K56 ["skillBody"]
      289 CALL                             R11 1 0
      290 LOADB                            R11 1
      291 LOADNIL                          R12
      292 RETURN                           R11 2

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
       25 GETTABLEKS                       R4 R0 K10 ["Flags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K11 ["Frontmatter"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R6 R6 K6 ["Parent"]
       43 GETTABLEKS                       R6 R6 K12 ["SkillDefinition"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETIMPORT                        R7 K1 [script]
       50 GETTABLEKS                       R7 R7 K6 ["Parent"]
       52 GETTABLEKS                       R7 R7 K13 ["SkillRegistry"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETIMPORT                        R8 K1 [script]
       59 GETTABLEKS                       R8 R8 K6 ["Parent"]
       61 CALL                             R7 1 1
       62 GETTABLEKS                       R8 R5 K14 ["Sources"]
       64 NEWTABLE                         R9 1 0
       66 DUPCLOSURE                       R10 K15 [PROTO_0]
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R3
       73 SETTABLEKS                       R10 R9 K16 ["editAsync"]
       75 RETURN                           R9 1
