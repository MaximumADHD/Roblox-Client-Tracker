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
      125 DUPTABLE                         R22 K32 [{["Filename"] = "LeftMezzanineDebugPlugin", ["Type"] = "BuiltIn"}]
      126 CALL                             R21 1 1
      127 SETTABLE                         R12 R20 R21
      128 GETTABLEKS                       R20 R19 K20 ["MezzanineControls"]
      130 MOVE                             R21 R1
      131 DUPTABLE                         R22 K33 [{["Filename"] = "LeftMezzanineRun", ["Type"] = "BuiltIn"}]
      132 CALL                             R21 1 1
      133 SETTABLE                         R13 R20 R21
      134 GETTABLEKS                       R20 R19 K20 ["MezzanineControls"]
      136 MOVE                             R21 R1
      137 DUPTABLE                         R22 K34 [{["Filename"] = "LeftMezzanineServerAndClients", ["Type"] = "BuiltIn"}]
      138 CALL                             R21 1 1
      139 SETTABLE                         R14 R20 R21
      140 GETTABLEKS                       R20 R19 K20 ["MezzanineControls"]
      142 MOVE                             R21 R1
      143 DUPTABLE                         R22 K35 [{["Filename"] = "LeftMezzanineTeamTest", ["Type"] = "BuiltIn"}]
      144 CALL                             R21 1 1
      145 SETTABLE                         R15 R20 R21
      146 GETTABLEKS                       R20 R19 K20 ["MezzanineControls"]
      148 MOVE                             R21 R1
      149 DUPTABLE                         R22 K36 [{["Filename"] = "LeftMezzanineTestAndTestHere", ["Type"] = "BuiltIn"}]
      150 CALL                             R21 1 1
      151 SETTABLE                         R16 R20 R21
      152 GETTABLEKS                       R20 R19 K20 ["MezzanineControls"]
      154 MOVE                             R21 R1
      155 DUPTABLE                         R22 K37 [{["Filename"] = "RightMezzanine", ["Type"] = "BuiltIn"}]
      156 CALL                             R21 1 1
      157 SETTABLE                         R17 R20 R21
      158 GETTABLEKS                       R20 R19 K20 ["MezzanineControls"]
      160 MOVE                             R21 R1
      161 DUPTABLE                         R22 K38 [{["Filename"] = "RightMezzanineStartPage", ["Type"] = "BuiltIn"}]
      162 CALL                             R21 1 1
      163 SETTABLE                         R18 R20 R21
      164 GETTABLEKS                       R20 R19 K13 ["TabControls"]
      166 MOVE                             R21 R1
      167 DUPTABLE                         R22 K39 [{["Filename"] = "HomeTab", ["Type"] = "BuiltIn"}]
      168 CALL                             R21 1 1
      169 SETTABLE                         R6 R20 R21
      170 GETTABLEKS                       R20 R19 K13 ["TabControls"]
      172 MOVE                             R21 R1
      173 DUPTABLE                         R22 K40 [{["Filename"] = "AvatarTab", ["Type"] = "BuiltIn"}]
      174 CALL                             R21 1 1
      175 SETTABLE                         R5 R20 R21
      176 GETTABLEKS                       R20 R19 K13 ["TabControls"]
      178 MOVE                             R21 R1
      179 DUPTABLE                         R22 K41 [{["Filename"] = "UITab", ["Type"] = "BuiltIn"}]
      180 CALL                             R21 1 1
      181 SETTABLE                         R10 R20 R21
      182 GETTABLEKS                       R20 R19 K13 ["TabControls"]
      184 MOVE                             R21 R1
      185 DUPTABLE                         R22 K42 [{["Filename"] = "ScriptTab", ["Type"] = "BuiltIn"}]
      186 CALL                             R21 1 1
      187 SETTABLE                         R9 R20 R21
      188 GETTABLEKS                       R20 R19 K13 ["TabControls"]
      190 MOVE                             R21 R1
      191 DUPTABLE                         R22 K43 [{["Filename"] = "ModelTab", ["Type"] = "BuiltIn"}]
      192 CALL                             R21 1 1
      193 SETTABLE                         R7 R20 R21
      194 GETTABLEKS                       R20 R19 K13 ["TabControls"]
      196 MOVE                             R21 R1
      197 DUPTABLE                         R22 K44 [{["Filename"] = "PluginsTab", ["Type"] = "BuiltIn"}]
      198 CALL                             R21 1 1
      199 SETTABLE                         R8 R20 R21
      200 MOVE                             R20 R2
      201 MOVE                             R21 R19
      202 CALL                             R20 1 1
      203 MOVE                             R19 R20
      204 RETURN                           R19 1
