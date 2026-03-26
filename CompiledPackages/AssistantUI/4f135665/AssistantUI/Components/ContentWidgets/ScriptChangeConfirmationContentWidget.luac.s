PROTO_0:
        0 DUPTABLE                         R0 K4 [{"Warning", "ReviewEach", "AcceptAllPrompt", "AcceptAllSession"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K5 ["ScriptChangeConfirmation"]
        3 LOADK                            R4 K0 ["Warning"]
        4 NAMECALL                         R1 R1 K6 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Warning"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K5 ["ScriptChangeConfirmation"]
       11 LOADK                            R4 K1 ["ReviewEach"]
       12 NAMECALL                         R1 R1 K6 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["ReviewEach"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K5 ["ScriptChangeConfirmation"]
       19 LOADK                            R4 K2 ["AcceptAllPrompt"]
       20 NAMECALL                         R1 R1 K6 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["AcceptAllPrompt"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K5 ["ScriptChangeConfirmation"]
       27 LOADK                            R4 K3 ["AcceptAllSession"]
       28 NAMECALL                         R1 R1 K6 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["AcceptAllSession"]
       33 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["hidden"]
        3 NOT                              R2 R3
        4 CALL                             R1 1 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["useMemo"]
        8 DUPCLOSURE                       R2 K2 [PROTO_0]
        9 CAPTURE                          UPVAL U2
       10 NEWTABLE                         R3 0 1
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K3 ["locale"]
       15 SETLIST                          R3 R4 1 [1]
       17 CALL                             R1 2 1
       18 GETTABLEKS                       R2 R0 K0 ["hidden"]
       20 JUMPIFNOT                        R2 ; [+2]
       21 LOADNIL                          R2
       22 RETURN                           R2 1
       23 GETUPVAL                         R2 3
       24 CALL                             R2 0 1
       25 GETUPVAL                         R3 4
       26 GETUPVAL                         R4 5
       27 DUPTABLE                         R5 K6 [{"tag", "LayoutOrder"}]
       28 LOADK                            R6 K7 ["col size-full-0 auto-y gap-small"]
       29 SETTABLEKS                       R6 R5 K4 ["tag"]
       31 GETTABLEKS                       R6 R0 K5 ["LayoutOrder"]
       33 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       35 DUPTABLE                         R6 K12 [{"Warning", "ReviewEachButton", "AcceptAllPromptButton", "AcceptAllSessionButton"}]
       36 GETUPVAL                         R7 4
       37 GETUPVAL                         R8 6
       38 DUPTABLE                         R9 K15 [{"tag", "Text", "LayoutOrder", "testId"}]
       39 LOADK                            R10 K16 ["auto-xy text-body-small text-wrap text-align-x-left content-muted"]
       40 SETTABLEKS                       R10 R9 K4 ["tag"]
       42 GETTABLEKS                       R10 R1 K8 ["Warning"]
       44 SETTABLEKS                       R10 R9 K13 ["Text"]
       46 MOVE                             R10 R2
       47 CALL                             R10 0 1
       48 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       50 GETUPVAL                         R12 7
       51 GETTABLEKS                       R11 R12 K17 ["ScriptChangeConfirmation"]
       53 GETTABLEKS                       R10 R11 K8 ["Warning"]
       55 SETTABLEKS                       R10 R9 K14 ["testId"]
       57 CALL                             R7 2 1
       58 SETTABLEKS                       R7 R6 K8 ["Warning"]
       60 GETUPVAL                         R7 4
       61 GETUPVAL                         R8 8
       62 DUPTABLE                         R9 K23 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
       63 GETTABLEKS                       R10 R1 K24 ["ReviewEach"]
       65 SETTABLEKS                       R10 R9 K18 ["text"]
       67 GETUPVAL                         R13 9
       68 GETTABLEKS                       R12 R13 K25 ["Enums"]
       70 GETTABLEKS                       R11 R12 K26 ["ButtonSize"]
       72 GETTABLEKS                       R10 R11 K27 ["XSmall"]
       74 SETTABLEKS                       R10 R9 K19 ["size"]
       76 GETUPVAL                         R13 9
       77 GETTABLEKS                       R12 R13 K25 ["Enums"]
       79 GETTABLEKS                       R11 R12 K28 ["ButtonVariant"]
       81 GETTABLEKS                       R10 R11 K29 ["Emphasis"]
       83 SETTABLEKS                       R10 R9 K20 ["variant"]
       85 GETUPVAL                         R13 9
       86 GETTABLEKS                       R12 R13 K25 ["Enums"]
       88 GETTABLEKS                       R11 R12 K30 ["FillBehavior"]
       90 GETTABLEKS                       R10 R11 K31 ["Fill"]
       92 SETTABLEKS                       R10 R9 K21 ["fillBehavior"]
       94 GETTABLEKS                       R10 R0 K32 ["onReviewEach"]
       96 SETTABLEKS                       R10 R9 K22 ["onActivated"]
       98 MOVE                             R10 R2
       99 CALL                             R10 0 1
      100 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
      102 GETUPVAL                         R12 7
      103 GETTABLEKS                       R11 R12 K17 ["ScriptChangeConfirmation"]
      105 GETTABLEKS                       R10 R11 K24 ["ReviewEach"]
      107 SETTABLEKS                       R10 R9 K14 ["testId"]
      109 CALL                             R7 2 1
      110 SETTABLEKS                       R7 R6 K9 ["ReviewEachButton"]
      112 GETUPVAL                         R7 4
      113 GETUPVAL                         R8 8
      114 DUPTABLE                         R9 K23 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
      115 GETTABLEKS                       R10 R1 K33 ["AcceptAllPrompt"]
      117 SETTABLEKS                       R10 R9 K18 ["text"]
      119 GETUPVAL                         R13 9
      120 GETTABLEKS                       R12 R13 K25 ["Enums"]
      122 GETTABLEKS                       R11 R12 K26 ["ButtonSize"]
      124 GETTABLEKS                       R10 R11 K27 ["XSmall"]
      126 SETTABLEKS                       R10 R9 K19 ["size"]
      128 GETUPVAL                         R13 9
      129 GETTABLEKS                       R12 R13 K25 ["Enums"]
      131 GETTABLEKS                       R11 R12 K28 ["ButtonVariant"]
      133 GETTABLEKS                       R10 R11 K34 ["Standard"]
      135 SETTABLEKS                       R10 R9 K20 ["variant"]
      137 GETUPVAL                         R13 9
      138 GETTABLEKS                       R12 R13 K25 ["Enums"]
      140 GETTABLEKS                       R11 R12 K30 ["FillBehavior"]
      142 GETTABLEKS                       R10 R11 K31 ["Fill"]
      144 SETTABLEKS                       R10 R9 K21 ["fillBehavior"]
      146 GETTABLEKS                       R10 R0 K35 ["onAcceptAllPrompt"]
      148 SETTABLEKS                       R10 R9 K22 ["onActivated"]
      150 MOVE                             R10 R2
      151 CALL                             R10 0 1
      152 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
      154 GETUPVAL                         R12 7
      155 GETTABLEKS                       R11 R12 K17 ["ScriptChangeConfirmation"]
      157 GETTABLEKS                       R10 R11 K33 ["AcceptAllPrompt"]
      159 SETTABLEKS                       R10 R9 K14 ["testId"]
      161 CALL                             R7 2 1
      162 SETTABLEKS                       R7 R6 K10 ["AcceptAllPromptButton"]
      164 GETUPVAL                         R7 4
      165 GETUPVAL                         R8 8
      166 DUPTABLE                         R9 K23 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
      167 GETTABLEKS                       R10 R1 K36 ["AcceptAllSession"]
      169 SETTABLEKS                       R10 R9 K18 ["text"]
      171 GETUPVAL                         R13 9
      172 GETTABLEKS                       R12 R13 K25 ["Enums"]
      174 GETTABLEKS                       R11 R12 K26 ["ButtonSize"]
      176 GETTABLEKS                       R10 R11 K27 ["XSmall"]
      178 SETTABLEKS                       R10 R9 K19 ["size"]
      180 GETUPVAL                         R13 9
      181 GETTABLEKS                       R12 R13 K25 ["Enums"]
      183 GETTABLEKS                       R11 R12 K28 ["ButtonVariant"]
      185 GETTABLEKS                       R10 R11 K34 ["Standard"]
      187 SETTABLEKS                       R10 R9 K20 ["variant"]
      189 GETUPVAL                         R13 9
      190 GETTABLEKS                       R12 R13 K25 ["Enums"]
      192 GETTABLEKS                       R11 R12 K30 ["FillBehavior"]
      194 GETTABLEKS                       R10 R11 K31 ["Fill"]
      196 SETTABLEKS                       R10 R9 K21 ["fillBehavior"]
      198 GETTABLEKS                       R10 R0 K37 ["onAcceptAllSession"]
      200 SETTABLEKS                       R10 R9 K22 ["onActivated"]
      202 MOVE                             R10 R2
      203 CALL                             R10 0 1
      204 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
      206 GETUPVAL                         R12 7
      207 GETTABLEKS                       R11 R12 K17 ["ScriptChangeConfirmation"]
      209 GETTABLEKS                       R10 R11 K36 ["AcceptAllSession"]
      211 SETTABLEKS                       R10 R9 K14 ["testId"]
      213 CALL                             R7 2 1
      214 SETTABLEKS                       R7 R6 K11 ["AcceptAllSessionButton"]
      216 CALL                             R3 3 -1
      217 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K4 [{"type"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K8 [{"type", "hidden", "onReviewEach", "onAcceptAllPrompt", "onAcceptAllSession"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 LOADB                            R2 1
       14 SETTABLEKS                       R2 R1 K4 ["hidden"]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R2 R3 K9 ["createUnimplemented"]
       19 LOADK                            R3 K5 ["onReviewEach"]
       20 CALL                             R2 1 1
       21 SETTABLEKS                       R2 R1 K5 ["onReviewEach"]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K9 ["createUnimplemented"]
       26 LOADK                            R3 K6 ["onAcceptAllPrompt"]
       27 CALL                             R2 1 1
       28 SETTABLEKS                       R2 R1 K6 ["onAcceptAllPrompt"]
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R2 R3 K9 ["createUnimplemented"]
       33 LOADK                            R3 K7 ["onAcceptAllSession"]
       34 CALL                             R2 1 1
       35 SETTABLEKS                       R2 R1 K7 ["onAcceptAllSession"]
       37 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R4 K10 ["PacketReceivedContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R5 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R6 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K13 ["Util"]
       41 GETTABLEKS                       R6 R7 K14 ["TestIds"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K15 ["Resources"]
       48 GETTABLEKS                       R8 R9 K16 ["Localization"]
       50 GETTABLEKS                       R7 R8 K17 ["Translator"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K18 ["Types"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K19 ["Flags"]
       62 GETTABLEKS                       R9 R10 K20 ["FFlagAssistantPersistConversations"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R9 R1 K21 ["View"]
       67 GETTABLEKS                       R10 R1 K22 ["Text"]
       69 GETTABLEKS                       R11 R1 K23 ["Button"]
       71 GETTABLEKS                       R12 R4 K24 ["createNextOrder"]
       73 GETTABLEKS                       R13 R3 K25 ["createElement"]
       75 GETTABLEKS                       R14 R2 K26 ["useMarkUserInputRequired"]
       77 DUPCLOSURE                       R15 K27 [PROTO_1]
       78 CAPTURE                          VAL R14
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R12
       82 CAPTURE                          VAL R13
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R1
       88 DUPCLOSURE                       R16 K28 [PROTO_2]
       89 CAPTURE                          VAL R8
       90 DUPCLOSURE                       R17 K29 [PROTO_3]
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R4
       93 DUPTABLE                         R18 K33 [{"Type", "ContentWidget", "Serialization"}]
       94 LOADK                            R19 K34 ["ScriptChangeConfirmation"]
       95 SETTABLEKS                       R19 R18 K30 ["Type"]
       97 GETTABLEKS                       R19 R3 K35 ["memo"]
       99 MOVE                             R20 R15
      100 CALL                             R19 1 1
      101 SETTABLEKS                       R19 R18 K31 ["ContentWidget"]
      103 DUPTABLE                         R19 K38 [{"serialize", "deserialize"}]
      104 SETTABLEKS                       R16 R19 K36 ["serialize"]
      106 SETTABLEKS                       R17 R19 K37 ["deserialize"]
      108 SETTABLEKS                       R19 R18 K32 ["Serialization"]
      110 RETURN                           R18 1
