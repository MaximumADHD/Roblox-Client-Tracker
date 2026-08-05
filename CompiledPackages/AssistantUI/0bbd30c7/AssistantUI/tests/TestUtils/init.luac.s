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
       22 DUPTABLE                         R2 K26 [{"setup", "createMockConversationContext", "createMockInputStateContext", "createMockLLMPackageContext", "createMockMcpClientContext", "createMockThreadIdContext", "ConversationBuilder", "isVisibleGuiObject", "makeMessage", "ScopedFastSetting", "SerializerTestUtils", "SubagentTestUtils", "TagSearch", "ToolSpy", "ToolTestUtils", "getAncestorGroupTransparency"}]
       23 GETIMPORT                        R3 K28 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K10 ["setup"]
       29 CALL                             R3 1 1
       30 SETTABLEKS                       R3 R2 K10 ["setup"]
       32 GETIMPORT                        R3 K28 [require]
       34 GETIMPORT                        R4 K1 [script]
       36 GETTABLEKS                       R4 R4 K10 ["setup"]
       38 GETTABLEKS                       R4 R4 K11 ["createMockConversationContext"]
       40 CALL                             R3 1 1
       41 SETTABLEKS                       R3 R2 K11 ["createMockConversationContext"]
       43 GETIMPORT                        R3 K28 [require]
       45 GETIMPORT                        R4 K1 [script]
       47 GETTABLEKS                       R4 R4 K10 ["setup"]
       49 GETTABLEKS                       R4 R4 K12 ["createMockInputStateContext"]
       51 CALL                             R3 1 1
       52 SETTABLEKS                       R3 R2 K12 ["createMockInputStateContext"]
       54 GETIMPORT                        R3 K28 [require]
       56 GETIMPORT                        R4 K1 [script]
       58 GETTABLEKS                       R4 R4 K10 ["setup"]
       60 GETTABLEKS                       R4 R4 K13 ["createMockLLMPackageContext"]
       62 CALL                             R3 1 1
       63 SETTABLEKS                       R3 R2 K13 ["createMockLLMPackageContext"]
       65 GETIMPORT                        R3 K28 [require]
       67 GETIMPORT                        R4 K1 [script]
       69 GETTABLEKS                       R4 R4 K10 ["setup"]
       71 GETTABLEKS                       R4 R4 K14 ["createMockMcpClientContext"]
       73 CALL                             R3 1 1
       74 SETTABLEKS                       R3 R2 K14 ["createMockMcpClientContext"]
       76 GETIMPORT                        R3 K28 [require]
       78 GETIMPORT                        R4 K1 [script]
       80 GETTABLEKS                       R4 R4 K10 ["setup"]
       82 GETTABLEKS                       R4 R4 K15 ["createMockThreadIdContext"]
       84 CALL                             R3 1 1
       85 SETTABLEKS                       R3 R2 K15 ["createMockThreadIdContext"]
       87 GETIMPORT                        R3 K28 [require]
       89 GETIMPORT                        R4 K1 [script]
       91 GETTABLEKS                       R4 R4 K16 ["ConversationBuilder"]
       93 CALL                             R3 1 1
       94 SETTABLEKS                       R3 R2 K16 ["ConversationBuilder"]
       96 GETIMPORT                        R3 K28 [require]
       98 GETIMPORT                        R4 K1 [script]
      100 GETTABLEKS                       R4 R4 K17 ["isVisibleGuiObject"]
      102 CALL                             R3 1 1
      103 SETTABLEKS                       R3 R2 K17 ["isVisibleGuiObject"]
      105 GETIMPORT                        R3 K28 [require]
      107 GETIMPORT                        R4 K1 [script]
      109 GETTABLEKS                       R4 R4 K18 ["makeMessage"]
      111 CALL                             R3 1 1
      112 SETTABLEKS                       R3 R2 K18 ["makeMessage"]
      114 GETIMPORT                        R3 K28 [require]
      116 GETIMPORT                        R4 K1 [script]
      118 GETTABLEKS                       R4 R4 K19 ["ScopedFastSetting"]
      120 CALL                             R3 1 1
      121 SETTABLEKS                       R3 R2 K19 ["ScopedFastSetting"]
      123 GETIMPORT                        R3 K28 [require]
      125 GETIMPORT                        R4 K1 [script]
      127 GETTABLEKS                       R4 R4 K20 ["SerializerTestUtils"]
      129 CALL                             R3 1 1
      130 SETTABLEKS                       R3 R2 K20 ["SerializerTestUtils"]
      132 GETIMPORT                        R3 K28 [require]
      134 GETIMPORT                        R4 K1 [script]
      136 GETTABLEKS                       R4 R4 K21 ["SubagentTestUtils"]
      138 CALL                             R3 1 1
      139 SETTABLEKS                       R3 R2 K21 ["SubagentTestUtils"]
      141 GETIMPORT                        R3 K28 [require]
      143 GETIMPORT                        R4 K1 [script]
      145 GETTABLEKS                       R4 R4 K22 ["TagSearch"]
      147 CALL                             R3 1 1
      148 SETTABLEKS                       R3 R2 K22 ["TagSearch"]
      150 GETIMPORT                        R3 K28 [require]
      152 GETIMPORT                        R4 K1 [script]
      154 GETTABLEKS                       R4 R4 K23 ["ToolSpy"]
      156 CALL                             R3 1 1
      157 SETTABLEKS                       R3 R2 K23 ["ToolSpy"]
      159 GETIMPORT                        R3 K28 [require]
      161 GETIMPORT                        R4 K1 [script]
      163 GETTABLEKS                       R4 R4 K24 ["ToolTestUtils"]
      165 CALL                             R3 1 1
      166 SETTABLEKS                       R3 R2 K24 ["ToolTestUtils"]
      168 GETIMPORT                        R3 K28 [require]
      170 GETIMPORT                        R4 K1 [script]
      172 GETTABLEKS                       R4 R4 K25 ["getAncestorGroupTransparency"]
      174 CALL                             R3 1 1
      175 SETTABLEKS                       R3 R2 K25 ["getAncestorGroupTransparency"]
      177 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"get"}]
        3 SETTABLEKS                       R0 R1 K1 ["get"]
        5 RETURN                           R1 1
