PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Destroy"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K1 [game]
        2 LOADK                            R4 K2 ["IXPService"]
        3 NAMECALL                         R2 R2 K3 ["GetService"]
        5 CALL                             R2 2 1
        6 GETIMPORT                        R3 K5 [require]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K6 ["Packages"]
       11 GETTABLEKS                       R4 R5 K7 ["AssistantUI"]
       13 CALL                             R3 1 1
       14 GETIMPORT                        R4 K5 [require]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R8 R9 K8 ["Src"]
       19 GETTABLEKS                       R7 R8 K9 ["Util"]
       21 GETTABLEKS                       R6 R7 K10 ["Resources"]
       23 GETTABLEKS                       R5 R6 K11 ["StudioEnvironment"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K5 [require]
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R8 R9 K8 ["Src"]
       31 GETTABLEKS                       R7 R8 K12 ["Host"]
       33 GETTABLEKS                       R6 R7 K13 ["startMcpHost"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETUPVAL                         R10 0
       39 GETTABLEKS                       R9 R10 K8 ["Src"]
       41 GETTABLEKS                       R8 R9 K9 ["Util"]
       43 GETTABLEKS                       R7 R8 K14 ["StudioExperimentalToolsListener"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETUPVAL                         R11 0
       49 GETTABLEKS                       R10 R11 K8 ["Src"]
       51 GETTABLEKS                       R9 R10 K9 ["Util"]
       53 GETTABLEKS                       R8 R9 K15 ["StudioConversationLoader"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETUPVAL                         R12 0
       59 GETTABLEKS                       R11 R12 K8 ["Src"]
       61 GETTABLEKS                       R10 R11 K9 ["Util"]
       63 GETTABLEKS                       R9 R10 K16 ["StudioIdentification"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K5 [require]
       68 GETUPVAL                         R13 0
       69 GETTABLEKS                       R12 R13 K8 ["Src"]
       71 GETTABLEKS                       R11 R12 K9 ["Util"]
       73 GETTABLEKS                       R10 R11 K17 ["StudioNetworking"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETUPVAL                         R14 0
       79 GETTABLEKS                       R13 R14 K8 ["Src"]
       81 GETTABLEKS                       R12 R13 K9 ["Util"]
       83 GETTABLEKS                       R11 R12 K18 ["StudioScriptHelper"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K5 [require]
       88 GETUPVAL                         R15 0
       89 GETTABLEKS                       R14 R15 K8 ["Src"]
       91 GETTABLEKS                       R13 R14 K9 ["Util"]
       93 GETTABLEKS                       R12 R13 K19 ["StudioTools"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETUPVAL                         R15 0
       99 GETTABLEKS                       R14 R15 K8 ["Src"]
      101 GETTABLEKS                       R13 R14 K20 ["Types"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K5 [require]
      106 GETUPVAL                         R17 0
      107 GETTABLEKS                       R16 R17 K8 ["Src"]
      109 GETTABLEKS                       R15 R16 K9 ["Util"]
      111 GETTABLEKS                       R14 R15 K21 ["waitForGuestReady"]
      113 CALL                             R13 1 1
      114 GETTABLEKS                       R16 R3 K22 ["Flags"]
      116 GETTABLEKS                       R15 R16 K23 ["Shared"]
      118 GETTABLEKS                       R14 R15 K24 ["FFlagAssistantPersistConversations"]
      120 GETTABLEKS                       R17 R3 K22 ["Flags"]
      122 GETTABLEKS                       R16 R17 K23 ["Shared"]
      124 GETTABLEKS                       R15 R16 K25 ["FFlagCAP2605"]
      126 GETTABLEKS                       R16 R9 K26 ["create"]
      128 DUPTABLE                         R17 K30 [{"plugin", "isGuest", "isHost"}]
      129 SETTABLEKS                       R0 R17 K27 ["plugin"]
      131 GETTABLEKS                       R18 R1 K28 ["isGuest"]
      133 SETTABLEKS                       R18 R17 K28 ["isGuest"]
      135 GETTABLEKS                       R18 R1 K29 ["isHost"]
      137 SETTABLEKS                       R18 R17 K29 ["isHost"]
      139 CALL                             R16 1 1
      140 LOADNIL                          R17
      141 MOVE                             R18 R14
      142 CALL                             R18 0 1
      143 JUMPIFNOT                        R18 ; [+4]
      144 MOVE                             R18 R13
      145 MOVE                             R19 R16
      146 CALL                             R18 1 1
      147 MOVE                             R17 R18
      148 MOVE                             R18 R4
      149 MOVE                             R19 R0
      150 MOVE                             R20 R16
      151 CALL                             R18 2 1
      152 MOVE                             R19 R15
      153 CALL                             R19 0 1
      154 JUMPIFNOT                        R19 ; [+5]
      155 GETTABLEKS                       R19 R8 K31 ["initialize"]
      157 MOVE                             R20 R16
      158 MOVE                             R21 R0
      159 CALL                             R19 2 0
      160 GETTABLEKS                       R19 R10 K31 ["initialize"]
      162 MOVE                             R20 R16
      163 CALL                             R19 1 0
      164 GETTABLEKS                       R20 R3 K32 ["Guest"]
      166 GETTABLEKS                       R19 R20 K33 ["startGuest"]
      168 DUPTABLE                         R20 K37 [{"clientIdentifier", "LLMRequestNetworking", "EnvironmentOverride"}]
      169 GETTABLEKS                       R21 R12 K38 ["MCP_CLIENT_IDENTIFIER"]
      171 SETTABLEKS                       R21 R20 K34 ["clientIdentifier"]
      173 SETTABLEKS                       R16 R20 K35 ["LLMRequestNetworking"]
      175 SETTABLEKS                       R18 R20 K36 ["EnvironmentOverride"]
      177 CALL                             R19 1 0
      178 GETTABLEKS                       R19 R5 K39 ["configureModelContextProtocol"]
      180 CALL                             R19 0 0
      181 GETTABLEKS                       R20 R3 K40 ["Tools"]
      183 GETTABLEKS                       R19 R20 K41 ["createTools"]
      185 MOVE                             R20 R16
      186 GETTABLEKS                       R21 R11 K42 ["DefaultTools"]
      188 CALL                             R19 2 1
      189 NAMECALL                         R20 R16 K43 ["IsGuest"]
      191 CALL                             R20 1 1
      192 JUMPIFNOT                        R20 ; [+6]
      193 GETTABLEKS                       R21 R3 K40 ["Tools"]
      195 GETTABLEKS                       R20 R21 K44 ["registerTools"]
      197 MOVE                             R21 R19
      198 CALL                             R20 1 0
      199 GETTABLEKS                       R20 R6 K45 ["new"]
      201 MOVE                             R21 R2
      202 MOVE                             R22 R16
      203 GETTABLEKS                       R23 R11 K46 ["ExperimentalTools"]
      205 GETTABLEKS                       R24 R11 K47 ["ExperimentFeatureTools"]
      207 CALL                             R20 4 1
      208 GETTABLEKS                       R21 R20 K48 ["trackUserLoggedIn"]
      210 CALL                             R21 0 0
      211 MOVE                             R21 R14
      212 CALL                             R21 0 1
      213 JUMPIFNOT                        R21 ; [+8]
      214 GETTABLEKS                       R21 R7 K49 ["trackSessions"]
      216 GETIMPORT                        R22 K1 [game]
      218 MOVE                             R23 R0
      219 MOVE                             R24 R16
      220 MOVE                             R25 R18
      221 CALL                             R21 4 0
      222 GETTABLEKS                       R21 R0 K50 ["Unloading"]
      224 NEWCLOSURE                       R23 P0
      225 CAPTURE                          VAL R9
      226 NAMECALL                         R21 R21 K51 ["Connect"]
      228 CALL                             R21 2 0
      229 MOVE                             R21 R14
      230 CALL                             R21 0 1
      231 JUMPIFNOT                        R21 ; [+2]
      232 MOVE                             R21 R17
      233 CALL                             R21 0 0
      234 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
