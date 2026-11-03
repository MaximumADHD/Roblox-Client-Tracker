PROTO_0:
        0 GETIMPORT                        R0 K1 [script]
        2 LOADK                            R2 K2 ["AssistantUI"]
        3 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        5 CALL                             R0 2 1
        6 LOADK                            R3 K4 ["Packages"]
        7 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
        9 CALL                             R1 2 1
       10 MOVE                             R3 R1
       11 JUMPIFNOT                        R3 ; [+4]
       12 LOADK                            R5 K5 ["Dev"]
       13 NAMECALL                         R3 R1 K6 ["FindFirstChild"]
       15 CALL                             R3 2 1
       16 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       18 LOADK                            R4 K7 ["TestUtils can only be required in test environments"]
       19 GETIMPORT                        R2 K9 [assert]
       21 CALL                             R2 2 0
       22 DUPTABLE                         R2 K32 [{"setup", "createMockConversationContext", "createMockInputStateContext", "createMockLLMPackageContext", "createMockMcpClientContext", "createMockSessionIdContext", "createMockThreadIdContext", "createMockWidgetVisibilityContext", "ConversationBuilder", "createMockRemotes", "createTestActionsProvider", "ImageOrchestratorTestUtils", "isVisibleGuiObject", "makeMessage", "RecordingNetworking", "ScopedFastSetting", "SerializerTestUtils", "SubagentTestUtils", "TagSearch", "ToolSpy", "ToolTestUtils", "getAncestorGroupTransparency"}]
       23 GETIMPORT                        R3 K34 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K10 ["setup"]
       29 CALL                             R3 1 1
       30 SETTABLEKS                       R3 R2 K10 ["setup"]
       32 GETIMPORT                        R3 K34 [require]
       34 GETIMPORT                        R4 K1 [script]
       36 GETTABLEKS                       R4 R4 K10 ["setup"]
       38 GETTABLEKS                       R4 R4 K11 ["createMockConversationContext"]
       40 CALL                             R3 1 1
       41 SETTABLEKS                       R3 R2 K11 ["createMockConversationContext"]
       43 GETIMPORT                        R3 K34 [require]
       45 GETIMPORT                        R4 K1 [script]
       47 GETTABLEKS                       R4 R4 K10 ["setup"]
       49 GETTABLEKS                       R4 R4 K12 ["createMockInputStateContext"]
       51 CALL                             R3 1 1
       52 SETTABLEKS                       R3 R2 K12 ["createMockInputStateContext"]
       54 GETIMPORT                        R3 K34 [require]
       56 GETIMPORT                        R4 K1 [script]
       58 GETTABLEKS                       R4 R4 K10 ["setup"]
       60 GETTABLEKS                       R4 R4 K13 ["createMockLLMPackageContext"]
       62 CALL                             R3 1 1
       63 SETTABLEKS                       R3 R2 K13 ["createMockLLMPackageContext"]
       65 GETIMPORT                        R3 K34 [require]
       67 GETIMPORT                        R4 K1 [script]
       69 GETTABLEKS                       R4 R4 K10 ["setup"]
       71 GETTABLEKS                       R4 R4 K14 ["createMockMcpClientContext"]
       73 CALL                             R3 1 1
       74 SETTABLEKS                       R3 R2 K14 ["createMockMcpClientContext"]
       76 GETIMPORT                        R3 K34 [require]
       78 GETIMPORT                        R4 K1 [script]
       80 GETTABLEKS                       R4 R4 K10 ["setup"]
       82 GETTABLEKS                       R4 R4 K15 ["createMockSessionIdContext"]
       84 CALL                             R3 1 1
       85 SETTABLEKS                       R3 R2 K15 ["createMockSessionIdContext"]
       87 GETIMPORT                        R3 K34 [require]
       89 GETIMPORT                        R4 K1 [script]
       91 GETTABLEKS                       R4 R4 K10 ["setup"]
       93 GETTABLEKS                       R4 R4 K16 ["createMockThreadIdContext"]
       95 CALL                             R3 1 1
       96 SETTABLEKS                       R3 R2 K16 ["createMockThreadIdContext"]
       98 GETIMPORT                        R3 K34 [require]
      100 GETIMPORT                        R4 K1 [script]
      102 GETTABLEKS                       R4 R4 K10 ["setup"]
      104 GETTABLEKS                       R4 R4 K17 ["createMockWidgetVisibilityContext"]
      106 CALL                             R3 1 1
      107 SETTABLEKS                       R3 R2 K17 ["createMockWidgetVisibilityContext"]
      109 GETIMPORT                        R3 K34 [require]
      111 GETIMPORT                        R4 K1 [script]
      113 GETTABLEKS                       R4 R4 K18 ["ConversationBuilder"]
      115 CALL                             R3 1 1
      116 SETTABLEKS                       R3 R2 K18 ["ConversationBuilder"]
      118 GETIMPORT                        R3 K34 [require]
      120 GETIMPORT                        R4 K1 [script]
      122 GETTABLEKS                       R4 R4 K19 ["createMockRemotes"]
      124 CALL                             R3 1 1
      125 SETTABLEKS                       R3 R2 K19 ["createMockRemotes"]
      127 GETIMPORT                        R3 K34 [require]
      129 GETIMPORT                        R4 K1 [script]
      131 GETTABLEKS                       R4 R4 K20 ["createTestActionsProvider"]
      133 CALL                             R3 1 1
      134 SETTABLEKS                       R3 R2 K20 ["createTestActionsProvider"]
      136 GETIMPORT                        R3 K34 [require]
      138 GETIMPORT                        R4 K1 [script]
      140 GETTABLEKS                       R4 R4 K21 ["ImageOrchestratorTestUtils"]
      142 CALL                             R3 1 1
      143 SETTABLEKS                       R3 R2 K21 ["ImageOrchestratorTestUtils"]
      145 GETIMPORT                        R3 K34 [require]
      147 GETIMPORT                        R4 K1 [script]
      149 GETTABLEKS                       R4 R4 K22 ["isVisibleGuiObject"]
      151 CALL                             R3 1 1
      152 SETTABLEKS                       R3 R2 K22 ["isVisibleGuiObject"]
      154 GETIMPORT                        R3 K34 [require]
      156 GETIMPORT                        R4 K1 [script]
      158 GETTABLEKS                       R4 R4 K23 ["makeMessage"]
      160 CALL                             R3 1 1
      161 SETTABLEKS                       R3 R2 K23 ["makeMessage"]
      163 GETIMPORT                        R3 K34 [require]
      165 GETIMPORT                        R4 K1 [script]
      167 GETTABLEKS                       R4 R4 K24 ["RecordingNetworking"]
      169 CALL                             R3 1 1
      170 SETTABLEKS                       R3 R2 K24 ["RecordingNetworking"]
      172 GETIMPORT                        R3 K34 [require]
      174 GETIMPORT                        R4 K1 [script]
      176 GETTABLEKS                       R4 R4 K25 ["ScopedFastSetting"]
      178 CALL                             R3 1 1
      179 SETTABLEKS                       R3 R2 K25 ["ScopedFastSetting"]
      181 GETIMPORT                        R3 K34 [require]
      183 GETIMPORT                        R4 K1 [script]
      185 GETTABLEKS                       R4 R4 K26 ["SerializerTestUtils"]
      187 CALL                             R3 1 1
      188 SETTABLEKS                       R3 R2 K26 ["SerializerTestUtils"]
      190 GETIMPORT                        R3 K34 [require]
      192 GETIMPORT                        R4 K1 [script]
      194 GETTABLEKS                       R4 R4 K27 ["SubagentTestUtils"]
      196 CALL                             R3 1 1
      197 SETTABLEKS                       R3 R2 K27 ["SubagentTestUtils"]
      199 GETIMPORT                        R3 K34 [require]
      201 GETIMPORT                        R4 K1 [script]
      203 GETTABLEKS                       R4 R4 K28 ["TagSearch"]
      205 CALL                             R3 1 1
      206 SETTABLEKS                       R3 R2 K28 ["TagSearch"]
      208 GETIMPORT                        R3 K34 [require]
      210 GETIMPORT                        R4 K1 [script]
      212 GETTABLEKS                       R4 R4 K29 ["ToolSpy"]
      214 CALL                             R3 1 1
      215 SETTABLEKS                       R3 R2 K29 ["ToolSpy"]
      217 GETIMPORT                        R3 K34 [require]
      219 GETIMPORT                        R4 K1 [script]
      221 GETTABLEKS                       R4 R4 K30 ["ToolTestUtils"]
      223 CALL                             R3 1 1
      224 SETTABLEKS                       R3 R2 K30 ["ToolTestUtils"]
      226 GETIMPORT                        R3 K34 [require]
      228 GETIMPORT                        R4 K1 [script]
      230 GETTABLEKS                       R4 R4 K31 ["getAncestorGroupTransparency"]
      232 CALL                             R3 1 1
      233 SETTABLEKS                       R3 R2 K31 ["getAncestorGroupTransparency"]
      235 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"get"}]
        3 SETTABLEKS                       R0 R1 K1 ["get"]
        5 RETURN                           R1 1
