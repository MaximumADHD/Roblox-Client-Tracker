PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetSdk"]
        3 CALL                             R0 1 1
        4 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K15 [{"ContextServices", "Dash", "DeveloperTools", "Http", "Resources", "RobloxAPI", "SharedFlags", "Style", "Styling", "TestHelpers", "UI", "Url", "Util", "UIData", "Wrappers"}]
        2 GETIMPORT                        R1 K17 [require]
        4 GETIMPORT                        R2 K19 [script]
        6 GETTABLEKS                       R2 R2 K0 ["ContextServices"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K0 ["ContextServices"]
       11 GETIMPORT                        R1 K17 [require]
       13 GETIMPORT                        R2 K19 [script]
       15 GETTABLEKS                       R2 R2 K20 ["Parent"]
       17 GETTABLEKS                       R2 R2 K1 ["Dash"]
       19 CALL                             R1 1 1
       20 SETTABLEKS                       R1 R0 K1 ["Dash"]
       22 GETIMPORT                        R2 K19 [script]
       24 GETTABLEKS                       R2 R2 K20 ["Parent"]
       26 LOADK                            R4 K2 ["DeveloperTools"]
       27 NAMECALL                         R2 R2 K21 ["FindFirstChild"]
       29 CALL                             R2 2 1
       30 JUMPIFNOT                        R2 ; [+10]
       31 GETIMPORT                        R1 K17 [require]
       33 GETIMPORT                        R3 K19 [script]
       35 GETTABLEKS                       R3 R3 K20 ["Parent"]
       37 GETTABLEKS                       R2 R3 K2 ["DeveloperTools"]
       39 CALL                             R1 1 1
       40 JUMP                             ; [+1]
       41 LOADNIL                          R1
       42 SETTABLEKS                       R1 R0 K2 ["DeveloperTools"]
       44 GETIMPORT                        R1 K17 [require]
       46 GETIMPORT                        R2 K19 [script]
       48 GETTABLEKS                       R2 R2 K3 ["Http"]
       50 CALL                             R1 1 1
       51 SETTABLEKS                       R1 R0 K3 ["Http"]
       53 GETIMPORT                        R1 K17 [require]
       55 GETIMPORT                        R2 K19 [script]
       57 GETTABLEKS                       R2 R2 K4 ["Resources"]
       59 CALL                             R1 1 1
       60 SETTABLEKS                       R1 R0 K4 ["Resources"]
       62 GETIMPORT                        R1 K17 [require]
       64 GETIMPORT                        R2 K19 [script]
       66 GETTABLEKS                       R2 R2 K5 ["RobloxAPI"]
       68 CALL                             R1 1 1
       69 SETTABLEKS                       R1 R0 K5 ["RobloxAPI"]
       71 GETIMPORT                        R1 K17 [require]
       73 GETIMPORT                        R2 K19 [script]
       75 GETTABLEKS                       R2 R2 K6 ["SharedFlags"]
       77 CALL                             R1 1 1
       78 SETTABLEKS                       R1 R0 K6 ["SharedFlags"]
       80 GETIMPORT                        R1 K17 [require]
       82 GETIMPORT                        R2 K19 [script]
       84 GETTABLEKS                       R2 R2 K7 ["Style"]
       86 CALL                             R1 1 1
       87 SETTABLEKS                       R1 R0 K7 ["Style"]
       89 GETIMPORT                        R1 K17 [require]
       91 GETIMPORT                        R2 K19 [script]
       93 GETTABLEKS                       R2 R2 K8 ["Styling"]
       95 CALL                             R1 1 1
       96 SETTABLEKS                       R1 R0 K8 ["Styling"]
       98 GETIMPORT                        R1 K17 [require]
      100 GETIMPORT                        R2 K19 [script]
      102 GETTABLEKS                       R2 R2 K9 ["TestHelpers"]
      104 CALL                             R1 1 1
      105 SETTABLEKS                       R1 R0 K9 ["TestHelpers"]
      107 GETIMPORT                        R1 K17 [require]
      109 GETIMPORT                        R2 K19 [script]
      111 GETTABLEKS                       R2 R2 K10 ["UI"]
      113 CALL                             R1 1 1
      114 SETTABLEKS                       R1 R0 K10 ["UI"]
      116 GETIMPORT                        R1 K17 [require]
      118 GETIMPORT                        R2 K19 [script]
      120 GETTABLEKS                       R2 R2 K5 ["RobloxAPI"]
      122 GETTABLEKS                       R2 R2 K11 ["Url"]
      124 CALL                             R1 1 1
      125 SETTABLEKS                       R1 R0 K11 ["Url"]
      127 GETIMPORT                        R1 K17 [require]
      129 GETIMPORT                        R2 K19 [script]
      131 GETTABLEKS                       R2 R2 K12 ["Util"]
      133 CALL                             R1 1 1
      134 SETTABLEKS                       R1 R0 K12 ["Util"]
      136 GETIMPORT                        R1 K17 [require]
      138 GETIMPORT                        R2 K19 [script]
      140 GETTABLEKS                       R2 R2 K10 ["UI"]
      142 GETTABLEKS                       R2 R2 K22 ["Components"]
      144 GETTABLEKS                       R2 R2 K23 ["UIFolderData"]
      146 CALL                             R1 1 1
      147 SETTABLEKS                       R1 R0 K13 ["UIData"]
      149 GETIMPORT                        R1 K17 [require]
      151 GETIMPORT                        R2 K19 [script]
      153 GETTABLEKS                       R2 R2 K14 ["Wrappers"]
      155 CALL                             R1 1 1
      156 SETTABLEKS                       R1 R0 K14 ["Wrappers"]
      158 GETIMPORT                        R1 K25 [game]
      160 LOADK                            R3 K26 ["DebugDeveloperFrameworkSdk"]
      161 NAMECALL                         R1 R1 K27 ["GetFastFlag"]
      163 CALL                             R1 2 1
      164 JUMPIFNOT                        R1 ; [+74]
      165 GETIMPORT                        R1 K19 [script]
      167 GETTABLEKS                       R1 R1 K20 ["Parent"]
      169 LOADK                            R3 K28 ["DeveloperFramework_Replaced"]
      170 NAMECALL                         R1 R1 K21 ["FindFirstChild"]
      172 CALL                             R1 2 1
      173 JUMPIF                           R1 ; [+65]
      174 GETIMPORT                        R1 K25 [game]
      176 LOADK                            R3 K29 ["StudioService"]
      177 NAMECALL                         R1 R1 K30 ["GetService"]
      179 CALL                             R1 2 1
      180 NAMECALL                         R1 R1 K31 ["HasInternalPermission"]
      182 CALL                             R1 1 1
      183 JUMPIFNOT                        R1 ; [+55]
      184 GETIMPORT                        R1 K25 [game]
      186 LOADK                            R3 K32 ["StudioSdkService"]
      187 NAMECALL                         R1 R1 K30 ["GetService"]
      189 CALL                             R1 2 1
      190 GETIMPORT                        R2 K34 [pcall]
      192 DUPCLOSURE                       R3 K35 [PROTO_0]
      193 CAPTURE                          VAL R1
      194 CALL                             R2 1 2
      195 JUMPIFNOT                        R2 ; [+43]
      196 JUMPIFNOT                        R3 ; [+42]
      197 LOADK                            R6 K36 ["DeveloperFramework"]
      198 NAMECALL                         R4 R3 K21 ["FindFirstChild"]
      200 CALL                             R4 2 1
      201 JUMPIFNOT                        R4 ; [+37]
      202 GETIMPORT                        R5 K19 [script]
      204 LOADK                            R6 K28 ["DeveloperFramework_Replaced"]
      205 SETTABLEKS                       R6 R5 K37 ["Name"]
      207 GETIMPORT                        R5 K19 [script]
      209 GETTABLEKS                       R5 R5 K20 ["Parent"]
      211 SETTABLEKS                       R5 R4 K20 ["Parent"]
      213 GETIMPORT                        R5 K19 [script]
      215 LOADK                            R7 K38 ["Plugin"]
      216 NAMECALL                         R5 R5 K39 ["FindFirstAncestorWhichIsA"]
      218 CALL                             R5 2 1
      219 JUMPIFNOT                        R5 ; [+10]
      220 GETIMPORT                        R6 K41 [print]
      222 LOADK                            R7 K42 ["[DebugDeveloperFrameworkSdk] Hot loading DeveloperFramework for plugin %*"]
      223 GETTABLEKS                       R9 R5 K37 ["Name"]
      225 NAMECALL                         R7 R7 K43 ["format"]
      227 CALL                             R7 2 1
      228 CALL                             R6 1 0
      229 JUMP                             ; [+4]
      230 GETIMPORT                        R6 K41 [print]
      232 LOADK                            R7 K44 ["[DebugDeveloperFrameworkSdk] Hot loading DeveloperFramework"]
      233 CALL                             R6 1 0
      234 GETIMPORT                        R6 K17 [require]
      236 MOVE                             R7 R4
      237 CALL                             R6 1 1
      238 RETURN                           R6 1
      239 GETIMPORT                        R1 K17 [require]
      241 GETIMPORT                        R2 K19 [script]
      243 GETTABLEKS                       R2 R2 K12 ["Util"]
      245 GETTABLEKS                       R2 R2 K45 ["strict"]
      247 CALL                             R1 1 1
      248 MOVE                             R2 R1
      249 MOVE                             R3 R0
      250 CALL                             R2 1 1
      251 RETURN                           R2 1
