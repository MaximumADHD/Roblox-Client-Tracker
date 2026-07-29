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
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["useMemo"]
        8 DUPCLOSURE                       R2 K2 [PROTO_0]
        9 CAPTURE                          UPVAL U2
       10 NEWTABLE                         R3 0 1
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K3 ["locale"]
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
       27 DUPTABLE                         R5 K7 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
       28 GETTABLEKS                       R6 R0 K6 ["LayoutOrder"]
       30 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       32 DUPTABLE                         R6 K12 [{"Warning", "ReviewEachButton", "AcceptAllPromptButton", "AcceptAllSessionButton"}]
       33 GETUPVAL                         R7 4
       34 GETUPVAL                         R8 6
       35 DUPTABLE                         R9 K16 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"], ["testId"]}]
       36 GETTABLEKS                       R10 R1 K8 ["Warning"]
       38 SETTABLEKS                       R10 R9 K14 ["Text"]
       40 MOVE                             R10 R2
       41 CALL                             R10 0 1
       42 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       44 GETUPVAL                         R10 7
       45 GETTABLEKS                       R10 R10 K17 ["ScriptChangeConfirmation"]
       47 GETTABLEKS                       R10 R10 K8 ["Warning"]
       49 SETTABLEKS                       R10 R9 K15 ["testId"]
       51 CALL                             R7 2 1
       52 SETTABLEKS                       R7 R6 K8 ["Warning"]
       54 GETUPVAL                         R7 4
       55 GETUPVAL                         R8 8
       56 DUPTABLE                         R9 K23 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
       57 GETTABLEKS                       R10 R1 K24 ["ReviewEach"]
       59 SETTABLEKS                       R10 R9 K18 ["text"]
       61 GETUPVAL                         R10 9
       62 GETTABLEKS                       R10 R10 K25 ["Enums"]
       64 GETTABLEKS                       R10 R10 K26 ["ButtonSize"]
       66 GETTABLEKS                       R10 R10 K27 ["XSmall"]
       68 SETTABLEKS                       R10 R9 K19 ["size"]
       70 GETUPVAL                         R10 9
       71 GETTABLEKS                       R10 R10 K25 ["Enums"]
       73 GETTABLEKS                       R10 R10 K28 ["ButtonVariant"]
       75 GETTABLEKS                       R10 R10 K29 ["Emphasis"]
       77 SETTABLEKS                       R10 R9 K20 ["variant"]
       79 GETUPVAL                         R10 9
       80 GETTABLEKS                       R10 R10 K25 ["Enums"]
       82 GETTABLEKS                       R10 R10 K30 ["FillBehavior"]
       84 GETTABLEKS                       R10 R10 K31 ["Fill"]
       86 SETTABLEKS                       R10 R9 K21 ["fillBehavior"]
       88 GETTABLEKS                       R10 R0 K32 ["onReviewEach"]
       90 SETTABLEKS                       R10 R9 K22 ["onActivated"]
       92 MOVE                             R10 R2
       93 CALL                             R10 0 1
       94 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       96 GETUPVAL                         R10 7
       97 GETTABLEKS                       R10 R10 K17 ["ScriptChangeConfirmation"]
       99 GETTABLEKS                       R10 R10 K24 ["ReviewEach"]
      101 SETTABLEKS                       R10 R9 K15 ["testId"]
      103 CALL                             R7 2 1
      104 SETTABLEKS                       R7 R6 K9 ["ReviewEachButton"]
      106 GETUPVAL                         R7 4
      107 GETUPVAL                         R8 8
      108 DUPTABLE                         R9 K23 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
      109 GETTABLEKS                       R10 R1 K33 ["AcceptAllPrompt"]
      111 SETTABLEKS                       R10 R9 K18 ["text"]
      113 GETUPVAL                         R10 9
      114 GETTABLEKS                       R10 R10 K25 ["Enums"]
      116 GETTABLEKS                       R10 R10 K26 ["ButtonSize"]
      118 GETTABLEKS                       R10 R10 K27 ["XSmall"]
      120 SETTABLEKS                       R10 R9 K19 ["size"]
      122 GETUPVAL                         R10 9
      123 GETTABLEKS                       R10 R10 K25 ["Enums"]
      125 GETTABLEKS                       R10 R10 K28 ["ButtonVariant"]
      127 GETTABLEKS                       R10 R10 K34 ["Standard"]
      129 SETTABLEKS                       R10 R9 K20 ["variant"]
      131 GETUPVAL                         R10 9
      132 GETTABLEKS                       R10 R10 K25 ["Enums"]
      134 GETTABLEKS                       R10 R10 K30 ["FillBehavior"]
      136 GETTABLEKS                       R10 R10 K31 ["Fill"]
      138 SETTABLEKS                       R10 R9 K21 ["fillBehavior"]
      140 GETTABLEKS                       R10 R0 K35 ["onAcceptAllPrompt"]
      142 SETTABLEKS                       R10 R9 K22 ["onActivated"]
      144 MOVE                             R10 R2
      145 CALL                             R10 0 1
      146 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
      148 GETUPVAL                         R10 7
      149 GETTABLEKS                       R10 R10 K17 ["ScriptChangeConfirmation"]
      151 GETTABLEKS                       R10 R10 K33 ["AcceptAllPrompt"]
      153 SETTABLEKS                       R10 R9 K15 ["testId"]
      155 CALL                             R7 2 1
      156 SETTABLEKS                       R7 R6 K10 ["AcceptAllPromptButton"]
      158 GETUPVAL                         R7 4
      159 GETUPVAL                         R8 8
      160 DUPTABLE                         R9 K23 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
      161 GETTABLEKS                       R10 R1 K36 ["AcceptAllSession"]
      163 SETTABLEKS                       R10 R9 K18 ["text"]
      165 GETUPVAL                         R10 9
      166 GETTABLEKS                       R10 R10 K25 ["Enums"]
      168 GETTABLEKS                       R10 R10 K26 ["ButtonSize"]
      170 GETTABLEKS                       R10 R10 K27 ["XSmall"]
      172 SETTABLEKS                       R10 R9 K19 ["size"]
      174 GETUPVAL                         R10 9
      175 GETTABLEKS                       R10 R10 K25 ["Enums"]
      177 GETTABLEKS                       R10 R10 K28 ["ButtonVariant"]
      179 GETTABLEKS                       R10 R10 K34 ["Standard"]
      181 SETTABLEKS                       R10 R9 K20 ["variant"]
      183 GETUPVAL                         R10 9
      184 GETTABLEKS                       R10 R10 K25 ["Enums"]
      186 GETTABLEKS                       R10 R10 K30 ["FillBehavior"]
      188 GETTABLEKS                       R10 R10 K31 ["Fill"]
      190 SETTABLEKS                       R10 R9 K21 ["fillBehavior"]
      192 GETTABLEKS                       R10 R0 K37 ["onAcceptAllSession"]
      194 SETTABLEKS                       R10 R9 K22 ["onActivated"]
      196 MOVE                             R10 R2
      197 CALL                             R10 0 1
      198 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
      200 GETUPVAL                         R10 7
      201 GETTABLEKS                       R10 R10 K17 ["ScriptChangeConfirmation"]
      203 GETTABLEKS                       R10 R10 K36 ["AcceptAllSession"]
      205 SETTABLEKS                       R10 R9 K15 ["testId"]
      207 CALL                             R7 2 1
      208 SETTABLEKS                       R7 R6 K11 ["AcceptAllSessionButton"]
      210 CALL                             R3 3 -1
      211 RETURN                           R3 -1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R2 K7 [{[1] = "ScriptChangeConfirmation", ["hidden"] = True, ["onReviewEach"], ["onAcceptAllPrompt"], ["onAcceptAllSession"]}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K8 ["createUnimplemented"]
        4 LOADK                            R4 K4 ["onReviewEach"]
        5 CALL                             R3 1 1
        6 SETTABLEKS                       R3 R2 K4 ["onReviewEach"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K8 ["createUnimplemented"]
       11 LOADK                            R4 K5 ["onAcceptAllPrompt"]
       12 CALL                             R3 1 1
       13 SETTABLEKS                       R3 R2 K5 ["onAcceptAllPrompt"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K8 ["createUnimplemented"]
       18 LOADK                            R4 K6 ["onAcceptAllSession"]
       19 CALL                             R3 1 1
       20 SETTABLEKS                       R3 R2 K6 ["onAcceptAllSession"]
       22 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["PacketReceivedContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Util"]
       41 GETTABLEKS                       R6 R6 K14 ["Serializer"]
       43 GETTABLEKS                       R6 R6 K15 ["SerializerTypes"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K13 ["Util"]
       50 GETTABLEKS                       R7 R7 K16 ["TestIds"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K17 ["Resources"]
       57 GETTABLEKS                       R8 R8 K18 ["Localization"]
       59 GETTABLEKS                       R8 R8 K19 ["Translator"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K20 ["Types"]
       66 CALL                             R8 1 1
       67 GETTABLEKS                       R9 R1 K21 ["View"]
       69 GETTABLEKS                       R10 R1 K22 ["Text"]
       71 GETTABLEKS                       R11 R1 K23 ["Button"]
       73 GETTABLEKS                       R12 R4 K24 ["createNextOrder"]
       75 GETTABLEKS                       R13 R3 K25 ["createElement"]
       77 GETTABLEKS                       R14 R2 K26 ["useMarkUserInputRequired"]
       79 DUPCLOSURE                       R15 K27 [PROTO_1]
       80 CAPTURE                          VAL R14
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R13
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R1
       90 DUPTABLE                         R16 K30 [{"toMeta", "fromMeta"}]
       91 DUPCLOSURE                       R17 K31 [PROTO_2]
       92 SETTABLEKS                       R17 R16 K28 ["toMeta"]
       94 DUPCLOSURE                       R17 K32 [PROTO_3]
       95 CAPTURE                          VAL R4
       96 SETTABLEKS                       R17 R16 K29 ["fromMeta"]
       98 DUPTABLE                         R17 K37 [{["Type"] = "ScriptChangeConfirmation", ["ContentWidget"], ["Serialization"]}]
       99 GETTABLEKS                       R18 R3 K38 ["memo"]
      101 MOVE                             R19 R15
      102 CALL                             R18 1 1
      103 SETTABLEKS                       R18 R17 K35 ["ContentWidget"]
      105 SETTABLEKS                       R16 R17 K36 ["Serialization"]
      107 RETURN                           R17 1
