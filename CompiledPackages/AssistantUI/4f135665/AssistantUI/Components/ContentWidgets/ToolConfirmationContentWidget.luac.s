PROTO_0:
        0 DUPTABLE                         R0 K3 [{"Accept", "Reject", "AlwaysAccept"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["ToolConfirmation"]
        3 LOADK                            R4 K0 ["Accept"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Accept"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K4 ["ToolConfirmation"]
       11 LOADK                            R4 K1 ["Reject"]
       12 NAMECALL                         R1 R1 K5 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Reject"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K4 ["ToolConfirmation"]
       19 LOADK                            R4 K2 ["AlwaysAccept"]
       20 DUPTABLE                         R5 K7 [{"toolName"}]
       21 GETUPVAL                         R6 1
       22 SETTABLEKS                       R6 R5 K6 ["toolName"]
       24 NAMECALL                         R1 R1 K5 ["getText"]
       26 CALL                             R1 4 1
       27 SETTABLEKS                       R1 R0 K2 ["AlwaysAccept"]
       29 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["hidden"]
        3 NOT                              R2 R3
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R2 R0 K1 ["toolName"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K2 ["useMemo"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R1
       15 NEWTABLE                         R4 0 2
       17 MOVE                             R5 R1
       18 GETUPVAL                         R7 3
       19 GETTABLEKS                       R6 R7 K3 ["locale"]
       21 SETLIST                          R4 R5 2 [1]
       23 CALL                             R2 2 1
       24 GETTABLEKS                       R3 R0 K0 ["hidden"]
       26 JUMPIFNOT                        R3 ; [+2]
       27 LOADNIL                          R3
       28 RETURN                           R3 1
       29 GETUPVAL                         R3 4
       30 CALL                             R3 0 1
       31 GETUPVAL                         R4 5
       32 GETUPVAL                         R5 6
       33 DUPTABLE                         R6 K6 [{"tag", "LayoutOrder"}]
       34 LOADK                            R7 K7 ["col size-full-0 auto-y gap-small"]
       35 SETTABLEKS                       R7 R6 K4 ["tag"]
       37 GETTABLEKS                       R7 R0 K5 ["LayoutOrder"]
       39 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       41 DUPTABLE                         R7 K12 [{"Warning", "AcceptButton", "RejectButton", "AlwaysAcceptButton"}]
       42 GETTABLEKS                       R8 R0 K13 ["warningMessage"]
       44 JUMPIFNOT                        R8 ; [+22]
       45 GETUPVAL                         R8 5
       46 GETUPVAL                         R9 7
       47 DUPTABLE                         R10 K16 [{"tag", "Text", "LayoutOrder", "testId"}]
       48 LOADK                            R11 K17 ["auto-xy text-body-small text-wrap text-align-x-left content-muted"]
       49 SETTABLEKS                       R11 R10 K4 ["tag"]
       51 GETTABLEKS                       R11 R0 K13 ["warningMessage"]
       53 SETTABLEKS                       R11 R10 K14 ["Text"]
       55 MOVE                             R11 R3
       56 CALL                             R11 0 1
       57 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       59 GETUPVAL                         R13 8
       60 GETTABLEKS                       R12 R13 K18 ["ToolConfirmation"]
       62 GETTABLEKS                       R11 R12 K8 ["Warning"]
       64 SETTABLEKS                       R11 R10 K15 ["testId"]
       66 CALL                             R8 2 1
       67 SETTABLEKS                       R8 R7 K8 ["Warning"]
       69 GETUPVAL                         R8 5
       70 GETUPVAL                         R9 9
       71 DUPTABLE                         R10 K24 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
       72 GETTABLEKS                       R11 R2 K25 ["Accept"]
       74 SETTABLEKS                       R11 R10 K19 ["text"]
       76 GETUPVAL                         R14 10
       77 GETTABLEKS                       R13 R14 K26 ["Enums"]
       79 GETTABLEKS                       R12 R13 K27 ["ButtonSize"]
       81 GETTABLEKS                       R11 R12 K28 ["XSmall"]
       83 SETTABLEKS                       R11 R10 K20 ["size"]
       85 GETUPVAL                         R14 10
       86 GETTABLEKS                       R13 R14 K26 ["Enums"]
       88 GETTABLEKS                       R12 R13 K29 ["ButtonVariant"]
       90 GETTABLEKS                       R11 R12 K30 ["Emphasis"]
       92 SETTABLEKS                       R11 R10 K21 ["variant"]
       94 GETUPVAL                         R14 10
       95 GETTABLEKS                       R13 R14 K26 ["Enums"]
       97 GETTABLEKS                       R12 R13 K31 ["FillBehavior"]
       99 GETTABLEKS                       R11 R12 K32 ["Fill"]
      101 SETTABLEKS                       R11 R10 K22 ["fillBehavior"]
      103 GETTABLEKS                       R11 R0 K33 ["onConfirm"]
      105 SETTABLEKS                       R11 R10 K23 ["onActivated"]
      107 MOVE                             R11 R3
      108 CALL                             R11 0 1
      109 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      111 GETUPVAL                         R13 8
      112 GETTABLEKS                       R12 R13 K18 ["ToolConfirmation"]
      114 GETTABLEKS                       R11 R12 K25 ["Accept"]
      116 SETTABLEKS                       R11 R10 K15 ["testId"]
      118 CALL                             R8 2 1
      119 SETTABLEKS                       R8 R7 K9 ["AcceptButton"]
      121 GETUPVAL                         R8 5
      122 GETUPVAL                         R9 9
      123 DUPTABLE                         R10 K24 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
      124 GETTABLEKS                       R11 R2 K34 ["Reject"]
      126 SETTABLEKS                       R11 R10 K19 ["text"]
      128 GETUPVAL                         R14 10
      129 GETTABLEKS                       R13 R14 K26 ["Enums"]
      131 GETTABLEKS                       R12 R13 K27 ["ButtonSize"]
      133 GETTABLEKS                       R11 R12 K28 ["XSmall"]
      135 SETTABLEKS                       R11 R10 K20 ["size"]
      137 GETUPVAL                         R14 10
      138 GETTABLEKS                       R13 R14 K26 ["Enums"]
      140 GETTABLEKS                       R12 R13 K29 ["ButtonVariant"]
      142 GETTABLEKS                       R11 R12 K35 ["Standard"]
      144 SETTABLEKS                       R11 R10 K21 ["variant"]
      146 GETUPVAL                         R14 10
      147 GETTABLEKS                       R13 R14 K26 ["Enums"]
      149 GETTABLEKS                       R12 R13 K31 ["FillBehavior"]
      151 GETTABLEKS                       R11 R12 K32 ["Fill"]
      153 SETTABLEKS                       R11 R10 K22 ["fillBehavior"]
      155 GETTABLEKS                       R11 R0 K36 ["onReject"]
      157 SETTABLEKS                       R11 R10 K23 ["onActivated"]
      159 MOVE                             R11 R3
      160 CALL                             R11 0 1
      161 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      163 GETUPVAL                         R13 8
      164 GETTABLEKS                       R12 R13 K18 ["ToolConfirmation"]
      166 GETTABLEKS                       R11 R12 K34 ["Reject"]
      168 SETTABLEKS                       R11 R10 K15 ["testId"]
      170 CALL                             R8 2 1
      171 SETTABLEKS                       R8 R7 K10 ["RejectButton"]
      173 GETUPVAL                         R8 5
      174 GETUPVAL                         R9 9
      175 DUPTABLE                         R10 K24 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
      176 GETTABLEKS                       R11 R2 K37 ["AlwaysAccept"]
      178 SETTABLEKS                       R11 R10 K19 ["text"]
      180 GETUPVAL                         R14 10
      181 GETTABLEKS                       R13 R14 K26 ["Enums"]
      183 GETTABLEKS                       R12 R13 K27 ["ButtonSize"]
      185 GETTABLEKS                       R11 R12 K28 ["XSmall"]
      187 SETTABLEKS                       R11 R10 K20 ["size"]
      189 GETUPVAL                         R14 10
      190 GETTABLEKS                       R13 R14 K26 ["Enums"]
      192 GETTABLEKS                       R12 R13 K29 ["ButtonVariant"]
      194 GETTABLEKS                       R11 R12 K35 ["Standard"]
      196 SETTABLEKS                       R11 R10 K21 ["variant"]
      198 GETUPVAL                         R14 10
      199 GETTABLEKS                       R13 R14 K26 ["Enums"]
      201 GETTABLEKS                       R12 R13 K31 ["FillBehavior"]
      203 GETTABLEKS                       R11 R12 K32 ["Fill"]
      205 SETTABLEKS                       R11 R10 K22 ["fillBehavior"]
      207 GETTABLEKS                       R11 R0 K38 ["onAlwaysAccept"]
      209 SETTABLEKS                       R11 R10 K23 ["onActivated"]
      211 MOVE                             R11 R3
      212 CALL                             R11 0 1
      213 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      215 GETUPVAL                         R13 8
      216 GETTABLEKS                       R12 R13 K18 ["ToolConfirmation"]
      218 GETTABLEKS                       R11 R12 K37 ["AlwaysAccept"]
      220 SETTABLEKS                       R11 R10 K15 ["testId"]
      222 CALL                             R8 2 1
      223 SETTABLEKS                       R8 R7 K11 ["AlwaysAcceptButton"]
      225 CALL                             R4 3 -1
      226 RETURN                           R4 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K6 [{"type", "toolName", "warningMessage"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETTABLEKS                       R2 R0 K4 ["toolName"]
       15 SETTABLEKS                       R2 R1 K4 ["toolName"]
       17 GETTABLEKS                       R2 R0 K5 ["warningMessage"]
       19 SETTABLEKS                       R2 R1 K5 ["warningMessage"]
       21 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K10 [{"type", "toolName", "warningMessage", "hidden", "onConfirm", "onReject", "onAlwaysAccept"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETTABLEKS                       R2 R0 K4 ["toolName"]
       15 SETTABLEKS                       R2 R1 K4 ["toolName"]
       17 GETTABLEKS                       R2 R0 K5 ["warningMessage"]
       19 SETTABLEKS                       R2 R1 K5 ["warningMessage"]
       21 LOADB                            R2 1
       22 SETTABLEKS                       R2 R1 K6 ["hidden"]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R2 R3 K11 ["createUnimplemented"]
       27 LOADK                            R3 K7 ["onConfirm"]
       28 CALL                             R2 1 1
       29 SETTABLEKS                       R2 R1 K7 ["onConfirm"]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R2 R3 K11 ["createUnimplemented"]
       34 LOADK                            R3 K8 ["onReject"]
       35 CALL                             R2 1 1
       36 SETTABLEKS                       R2 R1 K8 ["onReject"]
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R2 R3 K11 ["createUnimplemented"]
       41 LOADK                            R3 K9 ["onAlwaysAccept"]
       42 CALL                             R2 1 1
       43 SETTABLEKS                       R2 R1 K9 ["onAlwaysAccept"]
       45 RETURN                           R1 1

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
       60 GETTABLEKS                       R10 R0 K19 ["Hooks"]
       62 GETTABLEKS                       R9 R10 K20 ["useToolDisplayName"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K21 ["Flags"]
       69 GETTABLEKS                       R10 R11 K22 ["FFlagAssistantPersistConversations"]
       71 CALL                             R9 1 1
       72 GETTABLEKS                       R10 R1 K23 ["View"]
       74 GETTABLEKS                       R11 R1 K24 ["Text"]
       76 GETTABLEKS                       R12 R1 K25 ["Button"]
       78 GETTABLEKS                       R13 R4 K26 ["createNextOrder"]
       80 GETTABLEKS                       R14 R3 K27 ["createElement"]
       82 GETTABLEKS                       R15 R2 K28 ["useMarkUserInputRequired"]
       84 DUPCLOSURE                       R16 K29 [PROTO_1]
       85 CAPTURE                          VAL R15
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R14
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R1
       96 DUPCLOSURE                       R17 K30 [PROTO_2]
       97 CAPTURE                          VAL R9
       98 DUPCLOSURE                       R18 K31 [PROTO_3]
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R4
      101 DUPTABLE                         R19 K35 [{"Type", "ContentWidget", "Serialization"}]
      102 LOADK                            R20 K36 ["ToolConfirmation"]
      103 SETTABLEKS                       R20 R19 K32 ["Type"]
      105 GETTABLEKS                       R20 R3 K37 ["memo"]
      107 MOVE                             R21 R16
      108 CALL                             R20 1 1
      109 SETTABLEKS                       R20 R19 K33 ["ContentWidget"]
      111 DUPTABLE                         R20 K40 [{"serialize", "deserialize"}]
      112 SETTABLEKS                       R17 R20 K38 ["serialize"]
      114 SETTABLEKS                       R18 R20 K39 ["deserialize"]
      116 SETTABLEKS                       R20 R19 K34 ["Serialization"]
      118 RETURN                           R19 1
