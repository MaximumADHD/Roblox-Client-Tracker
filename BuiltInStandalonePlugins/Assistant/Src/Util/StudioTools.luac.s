MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R4 R1 K8 ["Flags"]
       16 GETTABLEKS                       R3 R4 K9 ["Shared"]
       18 GETTABLEKS                       R2 R3 K10 ["FFlagConvAIMeshGen"]
       20 GETTABLEKS                       R5 R1 K8 ["Flags"]
       22 GETTABLEKS                       R4 R5 K9 ["Shared"]
       24 GETTABLEKS                       R3 R4 K11 ["FFlagEnableAssistantImageUpload"]
       26 GETTABLEKS                       R6 R1 K8 ["Flags"]
       28 GETTABLEKS                       R5 R6 K9 ["Shared"]
       30 GETTABLEKS                       R4 R5 K12 ["FFlagEnableAssistantScreenCapture"]
       32 GETTABLEKS                       R7 R1 K8 ["Flags"]
       34 GETTABLEKS                       R6 R7 K9 ["Shared"]
       36 GETTABLEKS                       R5 R6 K13 ["FFlagEnableGrepTool"]
       38 GETTABLEKS                       R8 R1 K8 ["Flags"]
       40 GETTABLEKS                       R7 R8 K9 ["Shared"]
       42 GETTABLEKS                       R6 R7 K14 ["FFlagEnablePrimitiveGenTool"]
       44 GETTABLEKS                       R9 R1 K8 ["Flags"]
       46 GETTABLEKS                       R8 R9 K9 ["Shared"]
       48 GETTABLEKS                       R7 R8 K15 ["FFlagAssistantDebugMode"]
       50 GETTABLEKS                       R10 R1 K8 ["Flags"]
       52 GETTABLEKS                       R9 R10 K9 ["Shared"]
       54 GETTABLEKS                       R8 R9 K16 ["FFlagAssistantTestAutomation"]
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R12 R0 K17 ["Src"]
       60 GETTABLEKS                       R11 R12 K18 ["Util"]
       62 GETTABLEKS                       R10 R11 K19 ["ExperimentFeature"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K5 [require]
       67 GETTABLEKS                       R13 R0 K17 ["Src"]
       69 GETTABLEKS                       R12 R13 K8 ["Flags"]
       71 GETTABLEKS                       R11 R12 K20 ["FFlagAssistantForceDebugMode"]
       73 CALL                             R10 1 1
       74 GETTABLEKS                       R13 R1 K21 ["Tools"]
       76 GETTABLEKS                       R12 R13 K22 ["ToolTypes"]
       78 GETTABLEKS                       R11 R12 K23 ["ToolNames"]
       80 GETTABLEKS                       R13 R1 K21 ["Tools"]
       82 GETTABLEKS                       R12 R13 K24 ["BuiltinTools"]
       84 NEWTABLE                         R13 16 0
       86 GETTABLEKS                       R14 R11 K25 ["ExecuteLuau"]
       88 GETTABLEKS                       R16 R11 K25 ["ExecuteLuau"]
       90 GETTABLE                         R15 R12 R16
       91 SETTABLE                         R15 R13 R14
       92 GETTABLEKS                       R14 R11 K26 ["FileSearch"]
       94 GETTABLEKS                       R16 R11 K26 ["FileSearch"]
       96 GETTABLE                         R15 R12 R16
       97 SETTABLE                         R15 R13 R14
       98 GETTABLEKS                       R14 R11 K27 ["GameTree"]
      100 GETTABLEKS                       R16 R11 K27 ["GameTree"]
      102 GETTABLE                         R15 R12 R16
      103 SETTABLE                         R15 R13 R14
      104 GETTABLEKS                       R14 R11 K28 ["GrepSearch"]
      106 GETTABLEKS                       R16 R11 K28 ["GrepSearch"]
      108 GETTABLE                         R15 R12 R16
      109 SETTABLE                         R15 R13 R14
      110 GETTABLEKS                       R14 R11 K29 ["Grep"]
      112 MOVE                             R16 R5
      113 CALL                             R16 0 1
      114 JUMPIFNOT                        R16 ; [+4]
      115 GETTABLEKS                       R16 R11 K29 ["Grep"]
      117 GETTABLE                         R15 R12 R16
      118 JUMP                             ; [+1]
      119 LOADNIL                          R15
      120 SETTABLE                         R15 R13 R14
      121 GETTABLEKS                       R14 R11 K30 ["InsertFromMarketplace"]
      123 GETTABLEKS                       R16 R11 K30 ["InsertFromMarketplace"]
      125 GETTABLE                         R15 R12 R16
      126 SETTABLE                         R15 R13 R14
      127 GETTABLEKS                       R14 R11 K31 ["InspectInstance"]
      129 GETTABLEKS                       R16 R11 K31 ["InspectInstance"]
      131 GETTABLE                         R15 R12 R16
      132 SETTABLE                         R15 R13 R14
      133 GETTABLEKS                       R14 R11 K32 ["MaterialGen"]
      135 GETTABLEKS                       R16 R11 K32 ["MaterialGen"]
      137 GETTABLE                         R15 R12 R16
      138 SETTABLE                         R15 R13 R14
      139 GETTABLEKS                       R14 R11 K33 ["MeshGen"]
      141 MOVE                             R16 R2
      142 CALL                             R16 0 1
      143 JUMPIFNOT                        R16 ; [+4]
      144 GETTABLEKS                       R16 R11 K33 ["MeshGen"]
      146 GETTABLE                         R15 R12 R16
      147 JUMP                             ; [+1]
      148 LOADNIL                          R15
      149 SETTABLE                         R15 R13 R14
      150 GETTABLEKS                       R14 R11 K34 ["MultiEdit"]
      152 GETTABLEKS                       R16 R11 K34 ["MultiEdit"]
      154 GETTABLE                         R15 R12 R16
      155 SETTABLE                         R15 R13 R14
      156 GETTABLEKS                       R14 R11 K35 ["ReadFile"]
      158 GETTABLEKS                       R16 R11 K35 ["ReadFile"]
      160 GETTABLE                         R15 R12 R16
      161 SETTABLE                         R15 R13 R14
      162 GETTABLEKS                       R14 R11 K36 ["TestGame"]
      164 MOVE                             R16 R8
      165 CALL                             R16 0 1
      166 JUMPIF                           R16 ; [+10]
      167 MOVE                             R16 R7
      168 CALL                             R16 0 1
      169 JUMPIFNOT                        R16 ; [+7]
      170 MOVE                             R16 R10
      171 CALL                             R16 0 1
      172 JUMPIFNOT                        R16 ; [+4]
      173 GETTABLEKS                       R16 R11 K36 ["TestGame"]
      175 GETTABLE                         R15 R12 R16
      176 JUMP                             ; [+1]
      177 LOADNIL                          R15
      178 SETTABLE                         R15 R13 R14
      179 GETTABLEKS                       R14 R11 K37 ["PrimitiveGen"]
      181 MOVE                             R16 R6
      182 CALL                             R16 0 1
      183 JUMPIFNOT                        R16 ; [+4]
      184 GETTABLEKS                       R16 R11 K37 ["PrimitiveGen"]
      186 GETTABLE                         R15 R12 R16
      187 JUMP                             ; [+1]
      188 LOADNIL                          R15
      189 SETTABLE                         R15 R13 R14
      190 NEWTABLE                         R14 4 0
      192 GETTABLEKS                       R15 R11 K38 ["ScreenCapture"]
      194 MOVE                             R17 R4
      195 CALL                             R17 0 1
      196 JUMPIFNOT                        R17 ; [+4]
      197 GETTABLEKS                       R17 R11 K38 ["ScreenCapture"]
      199 GETTABLE                         R16 R12 R17
      200 JUMP                             ; [+1]
      201 LOADNIL                          R16
      202 SETTABLE                         R16 R14 R15
      203 GETTABLEKS                       R15 R11 K39 ["UploadImage"]
      205 MOVE                             R17 R3
      206 CALL                             R17 0 1
      207 JUMPIFNOT                        R17 ; [+4]
      208 GETTABLEKS                       R17 R11 K39 ["UploadImage"]
      210 GETTABLE                         R16 R12 R17
      211 JUMP                             ; [+1]
      212 LOADNIL                          R16
      213 SETTABLE                         R16 R14 R15
      214 GETTABLEKS                       R15 R11 K36 ["TestGame"]
      216 MOVE                             R17 R8
      217 CALL                             R17 0 1
      218 JUMPIF                           R17 ; [+10]
      219 MOVE                             R17 R7
      220 CALL                             R17 0 1
      221 JUMPIFNOT                        R17 ; [+7]
      222 MOVE                             R17 R10
      223 CALL                             R17 0 1
      224 JUMPIF                           R17 ; [+4]
      225 GETTABLEKS                       R17 R11 K36 ["TestGame"]
      227 GETTABLE                         R16 R12 R17
      228 JUMP                             ; [+1]
      229 LOADNIL                          R16
      230 SETTABLE                         R16 R14 R15
      231 NEWTABLE                         R15 1 0
      233 GETTABLEKS                       R17 R9 K40 ["FeatureNames"]
      235 GETTABLEKS                       R16 R17 K41 ["TestAutomation"]
      237 NEWTABLE                         R17 8 0
      239 GETTABLEKS                       R18 R11 K42 ["StartStopPlay"]
      241 GETTABLEKS                       R20 R11 K42 ["StartStopPlay"]
      243 GETTABLE                         R19 R12 R20
      244 SETTABLE                         R19 R17 R18
      245 GETTABLEKS                       R18 R11 K43 ["GetConsoleOutput"]
      247 GETTABLEKS                       R20 R11 K43 ["GetConsoleOutput"]
      249 GETTABLE                         R19 R12 R20
      250 SETTABLE                         R19 R17 R18
      251 GETTABLEKS                       R18 R11 K44 ["UserKeyboardInput"]
      253 GETTABLEKS                       R20 R11 K44 ["UserKeyboardInput"]
      255 GETTABLE                         R19 R12 R20
      256 SETTABLE                         R19 R17 R18
      257 GETTABLEKS                       R18 R11 K45 ["UserMouseInput"]
      259 GETTABLEKS                       R20 R11 K45 ["UserMouseInput"]
      261 GETTABLE                         R19 R12 R20
      262 SETTABLE                         R19 R17 R18
      263 GETTABLEKS                       R18 R11 K46 ["CharacterNavigation"]
      265 GETTABLEKS                       R20 R11 K46 ["CharacterNavigation"]
      267 GETTABLE                         R19 R12 R20
      268 SETTABLE                         R19 R17 R18
      269 SETTABLE                         R17 R15 R16
      270 DUPTABLE                         R16 K50 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools"}]
      271 SETTABLEKS                       R13 R16 K47 ["DefaultTools"]
      273 SETTABLEKS                       R14 R16 K48 ["ExperimentalTools"]
      275 SETTABLEKS                       R15 R16 K49 ["ExperimentFeatureTools"]
      277 RETURN                           R16 1
