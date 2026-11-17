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
       47 GETTABLEKS                       R7 R4 K15 ["GenerateTab"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R4 K16 ["HomeTab"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K5 [require]
       57 GETTABLEKS                       R9 R4 K17 ["ModelTab"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K5 [require]
       62 GETTABLEKS                       R10 R4 K18 ["PluginsTab"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K5 [require]
       67 GETTABLEKS                       R11 R4 K19 ["ScriptTab"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K5 [require]
       72 GETTABLEKS                       R12 R4 K20 ["UITab"]
       74 CALL                             R11 1 1
       75 GETTABLEKS                       R12 R0 K6 ["Src"]
       77 GETTABLEKS                       R12 R12 K11 ["Resources"]
       79 GETTABLEKS                       R12 R12 K12 ["ControlDefinitions"]
       81 GETTABLEKS                       R12 R12 K21 ["MezzanineControls"]
       83 GETIMPORT                        R13 K5 [require]
       85 GETTABLEKS                       R14 R12 K22 ["LeftMezzanineDebugPlugin"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K5 [require]
       90 GETTABLEKS                       R15 R12 K23 ["LeftMezzanineRun"]
       92 CALL                             R14 1 1
       93 GETIMPORT                        R15 K5 [require]
       95 GETTABLEKS                       R16 R12 K24 ["LeftMezzanineServerAndClients"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K5 [require]
      100 GETTABLEKS                       R17 R12 K25 ["LeftMezzanineTeamTest"]
      102 CALL                             R16 1 1
      103 GETIMPORT                        R17 K5 [require]
      105 GETTABLEKS                       R18 R12 K26 ["LeftMezzanineTestAndTestHere"]
      107 CALL                             R17 1 1
      108 GETIMPORT                        R18 K5 [require]
      110 GETTABLEKS                       R19 R12 K27 ["RightMezzanine"]
      112 CALL                             R18 1 1
      113 GETIMPORT                        R19 K5 [require]
      115 GETTABLEKS                       R20 R12 K28 ["RightMezzanineStartPage"]
      117 CALL                             R19 1 1
      118 DUPTABLE                         R20 K29 [{"MezzanineControls", "TabControls"}]
      119 NEWTABLE                         R21 0 0
      121 SETTABLEKS                       R21 R20 K21 ["MezzanineControls"]
      123 NEWTABLE                         R21 0 0
      125 SETTABLEKS                       R21 R20 K13 ["TabControls"]
      127 GETTABLEKS                       R21 R20 K21 ["MezzanineControls"]
      129 MOVE                             R22 R1
      130 DUPTABLE                         R23 K33 [{["Filename"] = "LeftMezzanineDebugPlugin", ["Type"] = "BuiltIn"}]
      131 CALL                             R22 1 1
      132 SETTABLE                         R13 R21 R22
      133 GETTABLEKS                       R21 R20 K21 ["MezzanineControls"]
      135 MOVE                             R22 R1
      136 DUPTABLE                         R23 K34 [{["Filename"] = "LeftMezzanineRun", ["Type"] = "BuiltIn"}]
      137 CALL                             R22 1 1
      138 SETTABLE                         R14 R21 R22
      139 GETTABLEKS                       R21 R20 K21 ["MezzanineControls"]
      141 MOVE                             R22 R1
      142 DUPTABLE                         R23 K35 [{["Filename"] = "LeftMezzanineServerAndClients", ["Type"] = "BuiltIn"}]
      143 CALL                             R22 1 1
      144 SETTABLE                         R15 R21 R22
      145 GETTABLEKS                       R21 R20 K21 ["MezzanineControls"]
      147 MOVE                             R22 R1
      148 DUPTABLE                         R23 K36 [{["Filename"] = "LeftMezzanineTeamTest", ["Type"] = "BuiltIn"}]
      149 CALL                             R22 1 1
      150 SETTABLE                         R16 R21 R22
      151 GETTABLEKS                       R21 R20 K21 ["MezzanineControls"]
      153 MOVE                             R22 R1
      154 DUPTABLE                         R23 K37 [{["Filename"] = "LeftMezzanineTestAndTestHere", ["Type"] = "BuiltIn"}]
      155 CALL                             R22 1 1
      156 SETTABLE                         R17 R21 R22
      157 GETTABLEKS                       R21 R20 K21 ["MezzanineControls"]
      159 MOVE                             R22 R1
      160 DUPTABLE                         R23 K38 [{["Filename"] = "RightMezzanine", ["Type"] = "BuiltIn"}]
      161 CALL                             R22 1 1
      162 SETTABLE                         R18 R21 R22
      163 GETTABLEKS                       R21 R20 K21 ["MezzanineControls"]
      165 MOVE                             R22 R1
      166 DUPTABLE                         R23 K39 [{["Filename"] = "RightMezzanineStartPage", ["Type"] = "BuiltIn"}]
      167 CALL                             R22 1 1
      168 SETTABLE                         R19 R21 R22
      169 GETTABLEKS                       R21 R20 K13 ["TabControls"]
      171 MOVE                             R22 R1
      172 DUPTABLE                         R23 K40 [{["Filename"] = "HomeTab", ["Type"] = "BuiltIn"}]
      173 CALL                             R22 1 1
      174 SETTABLE                         R7 R21 R22
      175 GETTABLEKS                       R21 R20 K13 ["TabControls"]
      177 MOVE                             R22 R1
      178 DUPTABLE                         R23 K41 [{["Filename"] = "AvatarTab", ["Type"] = "BuiltIn"}]
      179 CALL                             R22 1 1
      180 SETTABLE                         R5 R21 R22
      181 GETTABLEKS                       R21 R20 K13 ["TabControls"]
      183 MOVE                             R22 R1
      184 DUPTABLE                         R23 K42 [{["Filename"] = "UITab", ["Type"] = "BuiltIn"}]
      185 CALL                             R22 1 1
      186 SETTABLE                         R11 R21 R22
      187 GETTABLEKS                       R21 R20 K13 ["TabControls"]
      189 MOVE                             R22 R1
      190 DUPTABLE                         R23 K43 [{["Filename"] = "ScriptTab", ["Type"] = "BuiltIn"}]
      191 CALL                             R22 1 1
      192 SETTABLE                         R10 R21 R22
      193 GETTABLEKS                       R21 R20 K13 ["TabControls"]
      195 MOVE                             R22 R1
      196 DUPTABLE                         R23 K44 [{["Filename"] = "ModelTab", ["Type"] = "BuiltIn"}]
      197 CALL                             R22 1 1
      198 SETTABLE                         R8 R21 R22
      199 GETTABLEKS                       R21 R20 K13 ["TabControls"]
      201 MOVE                             R22 R1
      202 DUPTABLE                         R23 K45 [{["Filename"] = "GenerateTab", ["Type"] = "BuiltIn"}]
      203 CALL                             R22 1 1
      204 SETTABLE                         R6 R21 R22
      205 GETTABLEKS                       R21 R20 K13 ["TabControls"]
      207 MOVE                             R22 R1
      208 DUPTABLE                         R23 K46 [{["Filename"] = "PluginsTab", ["Type"] = "BuiltIn"}]
      209 CALL                             R22 1 1
      210 SETTABLE                         R9 R21 R22
      211 MOVE                             R21 R2
      212 MOVE                             R22 R20
      213 CALL                             R21 1 1
      214 MOVE                             R20 R21
      215 RETURN                           R20 1
