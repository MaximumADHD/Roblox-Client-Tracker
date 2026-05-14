MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["controlsIdentifierToString"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["deepFreeze"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Types"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R0 K6 ["Src"]
       34 GETTABLEKS                       R4 R4 K11 ["Resources"]
       36 GETTABLEKS                       R4 R4 K12 ["ControlDefinitions"]
       38 GETTABLEKS                       R4 R4 K13 ["TabControls"]
       40 GETIMPORT                        R5 K5 [require]
       42 GETTABLEKS                       R6 R4 K14 ["AvatarTab"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R7 R4 K15 ["HomeTab"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R4 K16 ["ModelTab"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K5 [require]
       57 GETTABLEKS                       R9 R4 K17 ["PluginsTab"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K5 [require]
       62 GETTABLEKS                       R10 R4 K18 ["ScriptTab"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K5 [require]
       67 GETTABLEKS                       R11 R4 K19 ["UITab"]
       69 CALL                             R10 1 1
       70 GETTABLEKS                       R11 R0 K6 ["Src"]
       72 GETTABLEKS                       R11 R11 K11 ["Resources"]
       74 GETTABLEKS                       R11 R11 K12 ["ControlDefinitions"]
       76 GETTABLEKS                       R11 R11 K20 ["MezzanineControls"]
       78 GETIMPORT                        R12 K5 [require]
       80 GETTABLEKS                       R13 R11 K21 ["LeftMezzanineDebugPlugin"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K5 [require]
       85 GETTABLEKS                       R14 R11 K22 ["LeftMezzanineRun"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K5 [require]
       90 GETTABLEKS                       R15 R11 K23 ["LeftMezzanineServerAndClients"]
       92 CALL                             R14 1 1
       93 GETIMPORT                        R15 K5 [require]
       95 GETTABLEKS                       R16 R11 K24 ["LeftMezzanineTeamTest"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K5 [require]
      100 GETTABLEKS                       R17 R11 K25 ["LeftMezzanineTestAndTestHere"]
      102 CALL                             R16 1 1
      103 GETIMPORT                        R17 K5 [require]
      105 GETTABLEKS                       R18 R11 K26 ["RightMezzanine"]
      107 CALL                             R17 1 1
      108 GETIMPORT                        R18 K5 [require]
      110 GETTABLEKS                       R19 R11 K27 ["RightMezzanineStartPage"]
      112 CALL                             R18 1 1
      113 DUPTABLE                         R19 K28 [{"MezzanineControls", "TabControls"}]
      114 NEWTABLE                         R20 0 0
      116 SETTABLEKS                       R20 R19 K20 ["MezzanineControls"]
      118 NEWTABLE                         R20 0 0
      120 SETTABLEKS                       R20 R19 K13 ["TabControls"]
      122 GETTABLEKS                       R20 R19 K20 ["MezzanineControls"]
      124 MOVE                             R21 R1
      125 DUPTABLE                         R22 K31 [{"Filename", "Type"}]
      126 LOADK                            R23 K21 ["LeftMezzanineDebugPlugin"]
      127 SETTABLEKS                       R23 R22 K29 ["Filename"]
      129 LOADK                            R23 K32 ["BuiltIn"]
      130 SETTABLEKS                       R23 R22 K30 ["Type"]
      132 CALL                             R21 1 1
      133 SETTABLE                         R12 R20 R21
      134 GETTABLEKS                       R20 R19 K20 ["MezzanineControls"]
      136 MOVE                             R21 R1
      137 DUPTABLE                         R22 K31 [{"Filename", "Type"}]
      138 LOADK                            R23 K22 ["LeftMezzanineRun"]
      139 SETTABLEKS                       R23 R22 K29 ["Filename"]
      141 LOADK                            R23 K32 ["BuiltIn"]
      142 SETTABLEKS                       R23 R22 K30 ["Type"]
      144 CALL                             R21 1 1
      145 SETTABLE                         R13 R20 R21
      146 GETTABLEKS                       R20 R19 K20 ["MezzanineControls"]
      148 MOVE                             R21 R1
      149 DUPTABLE                         R22 K31 [{"Filename", "Type"}]
      150 LOADK                            R23 K23 ["LeftMezzanineServerAndClients"]
      151 SETTABLEKS                       R23 R22 K29 ["Filename"]
      153 LOADK                            R23 K32 ["BuiltIn"]
      154 SETTABLEKS                       R23 R22 K30 ["Type"]
      156 CALL                             R21 1 1
      157 SETTABLE                         R14 R20 R21
      158 GETTABLEKS                       R20 R19 K20 ["MezzanineControls"]
      160 MOVE                             R21 R1
      161 DUPTABLE                         R22 K31 [{"Filename", "Type"}]
      162 LOADK                            R23 K24 ["LeftMezzanineTeamTest"]
      163 SETTABLEKS                       R23 R22 K29 ["Filename"]
      165 LOADK                            R23 K32 ["BuiltIn"]
      166 SETTABLEKS                       R23 R22 K30 ["Type"]
      168 CALL                             R21 1 1
      169 SETTABLE                         R15 R20 R21
      170 GETTABLEKS                       R20 R19 K20 ["MezzanineControls"]
      172 MOVE                             R21 R1
      173 DUPTABLE                         R22 K31 [{"Filename", "Type"}]
      174 LOADK                            R23 K25 ["LeftMezzanineTestAndTestHere"]
      175 SETTABLEKS                       R23 R22 K29 ["Filename"]
      177 LOADK                            R23 K32 ["BuiltIn"]
      178 SETTABLEKS                       R23 R22 K30 ["Type"]
      180 CALL                             R21 1 1
      181 SETTABLE                         R16 R20 R21
      182 GETTABLEKS                       R20 R19 K20 ["MezzanineControls"]
      184 MOVE                             R21 R1
      185 DUPTABLE                         R22 K31 [{"Filename", "Type"}]
      186 LOADK                            R23 K26 ["RightMezzanine"]
      187 SETTABLEKS                       R23 R22 K29 ["Filename"]
      189 LOADK                            R23 K32 ["BuiltIn"]
      190 SETTABLEKS                       R23 R22 K30 ["Type"]
      192 CALL                             R21 1 1
      193 SETTABLE                         R17 R20 R21
      194 GETTABLEKS                       R20 R19 K20 ["MezzanineControls"]
      196 MOVE                             R21 R1
      197 DUPTABLE                         R22 K31 [{"Filename", "Type"}]
      198 LOADK                            R23 K27 ["RightMezzanineStartPage"]
      199 SETTABLEKS                       R23 R22 K29 ["Filename"]
      201 LOADK                            R23 K32 ["BuiltIn"]
      202 SETTABLEKS                       R23 R22 K30 ["Type"]
      204 CALL                             R21 1 1
      205 SETTABLE                         R18 R20 R21
      206 GETTABLEKS                       R20 R19 K13 ["TabControls"]
      208 MOVE                             R21 R1
      209 DUPTABLE                         R22 K31 [{"Filename", "Type"}]
      210 LOADK                            R23 K15 ["HomeTab"]
      211 SETTABLEKS                       R23 R22 K29 ["Filename"]
      213 LOADK                            R23 K32 ["BuiltIn"]
      214 SETTABLEKS                       R23 R22 K30 ["Type"]
      216 CALL                             R21 1 1
      217 SETTABLE                         R6 R20 R21
      218 GETTABLEKS                       R20 R19 K13 ["TabControls"]
      220 MOVE                             R21 R1
      221 DUPTABLE                         R22 K31 [{"Filename", "Type"}]
      222 LOADK                            R23 K14 ["AvatarTab"]
      223 SETTABLEKS                       R23 R22 K29 ["Filename"]
      225 LOADK                            R23 K32 ["BuiltIn"]
      226 SETTABLEKS                       R23 R22 K30 ["Type"]
      228 CALL                             R21 1 1
      229 SETTABLE                         R5 R20 R21
      230 GETTABLEKS                       R20 R19 K13 ["TabControls"]
      232 MOVE                             R21 R1
      233 DUPTABLE                         R22 K31 [{"Filename", "Type"}]
      234 LOADK                            R23 K19 ["UITab"]
      235 SETTABLEKS                       R23 R22 K29 ["Filename"]
      237 LOADK                            R23 K32 ["BuiltIn"]
      238 SETTABLEKS                       R23 R22 K30 ["Type"]
      240 CALL                             R21 1 1
      241 SETTABLE                         R10 R20 R21
      242 GETTABLEKS                       R20 R19 K13 ["TabControls"]
      244 MOVE                             R21 R1
      245 DUPTABLE                         R22 K31 [{"Filename", "Type"}]
      246 LOADK                            R23 K18 ["ScriptTab"]
      247 SETTABLEKS                       R23 R22 K29 ["Filename"]
      249 LOADK                            R23 K32 ["BuiltIn"]
      250 SETTABLEKS                       R23 R22 K30 ["Type"]
      252 CALL                             R21 1 1
      253 SETTABLE                         R9 R20 R21
      254 GETTABLEKS                       R20 R19 K13 ["TabControls"]
      256 MOVE                             R21 R1
      257 DUPTABLE                         R22 K31 [{"Filename", "Type"}]
      258 LOADK                            R23 K16 ["ModelTab"]
      259 SETTABLEKS                       R23 R22 K29 ["Filename"]
      261 LOADK                            R23 K32 ["BuiltIn"]
      262 SETTABLEKS                       R23 R22 K30 ["Type"]
      264 CALL                             R21 1 1
      265 SETTABLE                         R7 R20 R21
      266 GETTABLEKS                       R20 R19 K13 ["TabControls"]
      268 MOVE                             R21 R1
      269 DUPTABLE                         R22 K31 [{"Filename", "Type"}]
      270 LOADK                            R23 K17 ["PluginsTab"]
      271 SETTABLEKS                       R23 R22 K29 ["Filename"]
      273 LOADK                            R23 K32 ["BuiltIn"]
      274 SETTABLEKS                       R23 R22 K30 ["Type"]
      276 CALL                             R21 1 1
      277 SETTABLE                         R8 R20 R21
      278 MOVE                             R20 R2
      279 MOVE                             R21 R19
      280 CALL                             R20 1 1
      281 MOVE                             R19 R20
      282 RETURN                           R19 1
