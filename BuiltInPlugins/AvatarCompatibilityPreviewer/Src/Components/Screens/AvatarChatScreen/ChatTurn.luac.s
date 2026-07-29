PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K7 [{["tag"] = "col gap-xsmall size-full-0 auto-y", ["LayoutOrder"], ["testId"] = "avatar-chat-turn"}]
        9 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       11 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       13 DUPTABLE                         R5 K10 [{"User", "Assistant"}]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K1 ["createElement"]
       17 GETUPVAL                         R7 3
       18 DUPTABLE                         R8 K12 [{"LayoutOrder", "promptText"}]
       19 MOVE                             R9 R1
       20 CALL                             R9 0 1
       21 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       23 GETTABLEKS                       R9 R0 K13 ["turn"]
       25 GETTABLEKS                       R9 R9 K11 ["promptText"]
       27 SETTABLEKS                       R9 R8 K11 ["promptText"]
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K8 ["User"]
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K1 ["createElement"]
       35 GETUPVAL                         R7 4
       36 DUPTABLE                         R8 K18 [{"LayoutOrder", "turn", "isHead", "onRegenerate", "onConfirm", "onCancel"}]
       37 MOVE                             R9 R1
       38 CALL                             R9 0 1
       39 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       41 GETTABLEKS                       R9 R0 K13 ["turn"]
       43 SETTABLEKS                       R9 R8 K13 ["turn"]
       45 GETTABLEKS                       R9 R0 K14 ["isHead"]
       47 SETTABLEKS                       R9 R8 K14 ["isHead"]
       49 GETTABLEKS                       R9 R0 K15 ["onRegenerate"]
       51 SETTABLEKS                       R9 R8 K15 ["onRegenerate"]
       53 GETTABLEKS                       R9 R0 K16 ["onConfirm"]
       55 SETTABLEKS                       R9 R8 K16 ["onConfirm"]
       57 GETTABLEKS                       R9 R0 K17 ["onCancel"]
       59 SETTABLEKS                       R9 R8 K17 ["onCancel"]
       61 CALL                             R6 2 1
       62 SETTABLEKS                       R6 R5 K9 ["Assistant"]
       64 CALL                             R2 3 -1
       65 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["View"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Components"]
       36 GETTABLEKS                       R6 R6 K13 ["Screens"]
       38 GETTABLEKS                       R6 R6 K14 ["AvatarChatScreen"]
       40 GETTABLEKS                       R6 R6 K15 ["AssistantResponse"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R0 K11 ["Src"]
       47 GETTABLEKS                       R7 R7 K16 ["Types"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K11 ["Src"]
       54 GETTABLEKS                       R8 R8 K12 ["Components"]
       56 GETTABLEKS                       R8 R8 K13 ["Screens"]
       58 GETTABLEKS                       R8 R8 K14 ["AvatarChatScreen"]
       60 GETTABLEKS                       R8 R8 K17 ["UserPromptBubble"]
       62 CALL                             R7 1 1
       63 DUPCLOSURE                       R8 K18 [PROTO_0]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R5
       69 RETURN                           R8 1
