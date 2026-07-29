PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["status"]
        2 JUMPIFEQKS                       R2 K1 ["generating"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createNextOrder"]
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R3 R0 K2 ["avatarCreation"]
       10 GETTABLEKS                       R3 R3 K3 ["state"]
       12 GETTABLEKS                       R4 R3 K4 ["type"]
       14 JUMPIFNOTEQKS                    R4 K5 ["inactive"] ; [+3]
       16 LOADNIL                          R4
       17 RETURN                           R4 1
       18 GETTABLEKS                       R4 R3 K4 ["type"]
       20 JUMPIFNOTEQKS                    R4 K6 ["generating3D"] ; [+22]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K7 ["createElement"]
       25 GETUPVAL                         R5 3
       26 DUPTABLE                         R6 K14 [{["phase"] = "generating3D", ["progress"], ["previewModel"], ["onCancel"], ["testId"] = "avatar-chat-generating"}]
       27 GETTABLEKS                       R7 R3 K9 ["progress"]
       29 SETTABLEKS                       R7 R6 K9 ["progress"]
       31 GETTABLEKS                       R7 R3 K10 ["previewModel"]
       33 SETTABLEKS                       R7 R6 K10 ["previewModel"]
       35 GETTABLEKS                       R7 R0 K2 ["avatarCreation"]
       37 GETTABLEKS                       R7 R7 K15 ["cancelGeneration"]
       39 SETTABLEKS                       R7 R6 K11 ["onCancel"]
       41 CALL                             R4 2 -1
       42 RETURN                           R4 -1
       43 GETTABLEKS                       R4 R3 K4 ["type"]
       45 JUMPIFNOTEQKS                    R4 K16 ["failed"] ; [+14]
       47 GETUPVAL                         R4 2
       48 GETTABLEKS                       R4 R4 K7 ["createElement"]
       50 GETUPVAL                         R5 3
       51 DUPTABLE                         R6 K18 [{["phase"] = "failed", ["onCancel"], ["testId"] = "avatar-chat-failed"}]
       52 GETTABLEKS                       R7 R0 K2 ["avatarCreation"]
       54 GETTABLEKS                       R7 R7 K15 ["cancelGeneration"]
       56 SETTABLEKS                       R7 R6 K11 ["onCancel"]
       58 CALL                             R4 2 -1
       59 RETURN                           R4 -1
       60 GETUPVAL                         R4 4
       61 GETTABLEKS                       R4 R4 K19 ["some"]
       63 GETTABLEKS                       R5 R3 K20 ["turns"]
       65 DUPCLOSURE                       R6 K21 [PROTO_0]
       66 CALL                             R4 2 1
       67 GETUPVAL                         R5 2
       68 GETTABLEKS                       R5 R5 K7 ["createElement"]
       70 GETUPVAL                         R6 5
       71 DUPTABLE                         R7 K25 [{["tag"] = "col gap-small size-full padding-small", ["testId"] = "avatar-chat-screen"}]
       72 DUPTABLE                         R8 K29 [{"Header", "History", "Input"}]
       73 GETUPVAL                         R9 2
       74 GETTABLEKS                       R9 R9 K7 ["createElement"]
       76 GETUPVAL                         R10 5
       77 DUPTABLE                         R11 K32 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
       78 MOVE                             R12 R2
       79 CALL                             R12 0 1
       80 SETTABLEKS                       R12 R11 K31 ["LayoutOrder"]
       82 DUPTABLE                         R12 K35 [{"BackButton", "Title"}]
       83 GETUPVAL                         R13 2
       84 GETTABLEKS                       R13 R13 K7 ["createElement"]
       86 GETUPVAL                         R14 6
       87 DUPTABLE                         R15 K41 [{["LayoutOrder"], ["icon"], ["size"], ["variant"], ["onActivated"], ["testId"] = "avatar-chat-back"}]
       88 MOVE                             R16 R2
       89 CALL                             R16 0 1
       90 SETTABLEKS                       R16 R15 K31 ["LayoutOrder"]
       92 GETUPVAL                         R16 7
       93 GETTABLEKS                       R16 R16 K42 ["ChevronLargeLeft"]
       95 SETTABLEKS                       R16 R15 K36 ["icon"]
       97 GETUPVAL                         R16 8
       98 GETTABLEKS                       R16 R16 K43 ["Small"]
      100 SETTABLEKS                       R16 R15 K37 ["size"]
      102 GETUPVAL                         R16 9
      103 GETTABLEKS                       R16 R16 K44 ["Utility"]
      105 SETTABLEKS                       R16 R15 K38 ["variant"]
      107 GETTABLEKS                       R16 R0 K2 ["avatarCreation"]
      109 GETTABLEKS                       R16 R16 K45 ["resetGeneration"]
      111 SETTABLEKS                       R16 R15 K39 ["onActivated"]
      113 CALL                             R13 2 1
      114 SETTABLEKS                       R13 R12 K33 ["BackButton"]
      116 GETUPVAL                         R13 2
      117 GETTABLEKS                       R13 R13 K7 ["createElement"]
      119 GETUPVAL                         R14 10
      120 DUPTABLE                         R15 K48 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-title-small content-default"}]
      121 MOVE                             R16 R2
      122 CALL                             R16 0 1
      123 SETTABLEKS                       R16 R15 K31 ["LayoutOrder"]
      125 LOADK                            R18 K49 ["AvatarChatScreen"]
      126 LOADK                            R19 K34 ["Title"]
      127 NAMECALL                         R16 R1 K50 ["getText"]
      129 CALL                             R16 3 1
      130 SETTABLEKS                       R16 R15 K46 ["Text"]
      132 CALL                             R13 2 1
      133 SETTABLEKS                       R13 R12 K34 ["Title"]
      135 CALL                             R9 3 1
      136 SETTABLEKS                       R9 R8 K26 ["Header"]
      138 GETUPVAL                         R9 2
      139 GETTABLEKS                       R9 R9 K7 ["createElement"]
      141 GETUPVAL                         R10 5
      142 DUPTABLE                         R11 K52 [{["tag"] = "col grow gap-small size-full-0 padding-small", ["LayoutOrder"]}]
      143 MOVE                             R12 R2
      144 CALL                             R12 0 1
      145 SETTABLEKS                       R12 R11 K31 ["LayoutOrder"]
      147 DUPTABLE                         R12 K54 [{"Content"}]
      148 GETTABLEKS                       R15 R3 K20 ["turns"]
      150 LENGTH                           R14 R15
      151 JUMPIFNOTEQKN                    R14 K55 [0] ; [+19]
      153 GETUPVAL                         R13 2
      154 GETTABLEKS                       R13 R13 K7 ["createElement"]
      156 GETUPVAL                         R14 10
      157 DUPTABLE                         R15 K58 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left content-muted", ["testId"] = "avatar-chat-empty"}]
      158 MOVE                             R16 R2
      159 CALL                             R16 0 1
      160 SETTABLEKS                       R16 R15 K31 ["LayoutOrder"]
      162 LOADK                            R18 K49 ["AvatarChatScreen"]
      163 LOADK                            R19 K59 ["EmptyHint"]
      164 NAMECALL                         R16 R1 K50 ["getText"]
      166 CALL                             R16 3 1
      167 SETTABLEKS                       R16 R15 K46 ["Text"]
      169 CALL                             R13 2 1
      170 JUMP                             ; [+28]
      171 GETUPVAL                         R13 2
      172 GETTABLEKS                       R13 R13 K7 ["createElement"]
      174 GETUPVAL                         R14 11
      175 DUPTABLE                         R15 K62 [{"turns", "onRegenerate", "onConfirm", "onCancel"}]
      176 GETTABLEKS                       R16 R3 K20 ["turns"]
      178 SETTABLEKS                       R16 R15 K20 ["turns"]
      180 GETTABLEKS                       R16 R0 K2 ["avatarCreation"]
      182 GETTABLEKS                       R16 R16 K63 ["regenerate"]
      184 SETTABLEKS                       R16 R15 K60 ["onRegenerate"]
      186 GETTABLEKS                       R16 R0 K2 ["avatarCreation"]
      188 GETTABLEKS                       R16 R16 K64 ["generate3D"]
      190 SETTABLEKS                       R16 R15 K61 ["onConfirm"]
      192 GETTABLEKS                       R16 R0 K2 ["avatarCreation"]
      194 GETTABLEKS                       R16 R16 K15 ["cancelGeneration"]
      196 SETTABLEKS                       R16 R15 K11 ["onCancel"]
      198 CALL                             R13 2 1
      199 SETTABLEKS                       R13 R12 K53 ["Content"]
      201 CALL                             R9 3 1
      202 SETTABLEKS                       R9 R8 K27 ["History"]
      204 GETUPVAL                         R9 2
      205 GETTABLEKS                       R9 R9 K7 ["createElement"]
      207 GETUPVAL                         R10 12
      208 DUPTABLE                         R11 K67 [{"LayoutOrder", "isGenerating", "onSubmit", "onCancel"}]
      209 MOVE                             R12 R2
      210 CALL                             R12 0 1
      211 SETTABLEKS                       R12 R11 K31 ["LayoutOrder"]
      213 SETTABLEKS                       R4 R11 K65 ["isGenerating"]
      215 GETTABLEKS                       R12 R0 K2 ["avatarCreation"]
      217 GETTABLEKS                       R12 R12 K68 ["submitPrompt"]
      219 SETTABLEKS                       R12 R11 K66 ["onSubmit"]
      221 GETTABLEKS                       R12 R0 K2 ["avatarCreation"]
      223 GETTABLEKS                       R12 R12 K15 ["cancelGeneration"]
      225 SETTABLEKS                       R12 R11 K11 ["onCancel"]
      227 CALL                             R9 2 1
      228 SETTABLEKS                       R9 R8 K28 ["Input"]
      230 CALL                             R5 3 -1
      231 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["Foundation"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K12 ["Enums"]
       44 GETTABLEKS                       R6 R6 K13 ["ButtonVariant"]
       46 GETTABLEKS                       R7 R5 K12 ["Enums"]
       48 GETTABLEKS                       R7 R7 K14 ["IconName"]
       50 GETTABLEKS                       R8 R5 K12 ["Enums"]
       52 GETTABLEKS                       R8 R8 K15 ["InputSize"]
       54 GETTABLEKS                       R9 R5 K16 ["IconButton"]
       56 GETTABLEKS                       R10 R5 K17 ["Text"]
       58 GETTABLEKS                       R11 R5 K18 ["View"]
       60 GETIMPORT                        R12 K5 [require]
       62 GETTABLEKS                       R13 R0 K19 ["Src"]
       64 GETTABLEKS                       R13 R13 K20 ["Components"]
       66 GETTABLEKS                       R13 R13 K21 ["Screens"]
       68 GETTABLEKS                       R13 R13 K22 ["AvatarChatScreen"]
       70 GETTABLEKS                       R13 R13 K23 ["AvatarChatProgressOverlay"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K5 [require]
       75 GETTABLEKS                       R14 R0 K19 ["Src"]
       77 GETTABLEKS                       R14 R14 K20 ["Components"]
       79 GETTABLEKS                       R14 R14 K21 ["Screens"]
       81 GETTABLEKS                       R14 R14 K22 ["AvatarChatScreen"]
       83 GETTABLEKS                       R14 R14 K24 ["ChatHistory"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K5 [require]
       88 GETTABLEKS                       R15 R0 K19 ["Src"]
       90 GETTABLEKS                       R15 R15 K20 ["Components"]
       92 GETTABLEKS                       R15 R15 K21 ["Screens"]
       94 GETTABLEKS                       R15 R15 K22 ["AvatarChatScreen"]
       96 GETTABLEKS                       R15 R15 K25 ["ChatInput"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K5 [require]
      101 GETTABLEKS                       R16 R0 K19 ["Src"]
      103 GETTABLEKS                       R16 R16 K26 ["Hooks"]
      105 GETTABLEKS                       R16 R16 K27 ["useAvatarCreationState"]
      107 CALL                             R15 1 1
      108 GETTABLEKS                       R16 R2 K28 ["ContextServices"]
      110 GETTABLEKS                       R16 R16 K29 ["Localization"]
      112 DUPCLOSURE                       R17 K30 [PROTO_1]
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R14
      126 RETURN                           R17 1
