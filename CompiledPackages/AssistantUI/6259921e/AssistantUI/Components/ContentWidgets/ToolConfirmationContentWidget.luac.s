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
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R1
       15 NEWTABLE                         R4 0 2
       17 MOVE                             R5 R1
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R6 R6 K3 ["locale"]
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
       59 GETUPVAL                         R11 8
       60 GETTABLEKS                       R11 R11 K18 ["ToolConfirmation"]
       62 GETTABLEKS                       R11 R11 K8 ["Warning"]
       64 SETTABLEKS                       R11 R10 K15 ["testId"]
       66 CALL                             R8 2 1
       67 SETTABLEKS                       R8 R7 K8 ["Warning"]
       69 GETUPVAL                         R8 5
       70 GETUPVAL                         R9 9
       71 DUPTABLE                         R10 K24 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
       72 GETTABLEKS                       R11 R2 K25 ["Accept"]
       74 SETTABLEKS                       R11 R10 K19 ["text"]
       76 GETUPVAL                         R11 10
       77 GETTABLEKS                       R11 R11 K26 ["Enums"]
       79 GETTABLEKS                       R11 R11 K27 ["ButtonSize"]
       81 GETTABLEKS                       R11 R11 K28 ["XSmall"]
       83 SETTABLEKS                       R11 R10 K20 ["size"]
       85 GETUPVAL                         R11 10
       86 GETTABLEKS                       R11 R11 K26 ["Enums"]
       88 GETTABLEKS                       R11 R11 K29 ["ButtonVariant"]
       90 GETTABLEKS                       R11 R11 K30 ["Emphasis"]
       92 SETTABLEKS                       R11 R10 K21 ["variant"]
       94 GETUPVAL                         R11 10
       95 GETTABLEKS                       R11 R11 K26 ["Enums"]
       97 GETTABLEKS                       R11 R11 K31 ["FillBehavior"]
       99 GETTABLEKS                       R11 R11 K32 ["Fill"]
      101 SETTABLEKS                       R11 R10 K22 ["fillBehavior"]
      103 GETTABLEKS                       R11 R0 K33 ["onConfirm"]
      105 SETTABLEKS                       R11 R10 K23 ["onActivated"]
      107 MOVE                             R11 R3
      108 CALL                             R11 0 1
      109 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      111 GETUPVAL                         R11 8
      112 GETTABLEKS                       R11 R11 K18 ["ToolConfirmation"]
      114 GETTABLEKS                       R11 R11 K25 ["Accept"]
      116 SETTABLEKS                       R11 R10 K15 ["testId"]
      118 CALL                             R8 2 1
      119 SETTABLEKS                       R8 R7 K9 ["AcceptButton"]
      121 GETUPVAL                         R8 5
      122 GETUPVAL                         R9 9
      123 DUPTABLE                         R10 K24 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
      124 GETTABLEKS                       R11 R2 K34 ["Reject"]
      126 SETTABLEKS                       R11 R10 K19 ["text"]
      128 GETUPVAL                         R11 10
      129 GETTABLEKS                       R11 R11 K26 ["Enums"]
      131 GETTABLEKS                       R11 R11 K27 ["ButtonSize"]
      133 GETTABLEKS                       R11 R11 K28 ["XSmall"]
      135 SETTABLEKS                       R11 R10 K20 ["size"]
      137 GETUPVAL                         R11 10
      138 GETTABLEKS                       R11 R11 K26 ["Enums"]
      140 GETTABLEKS                       R11 R11 K29 ["ButtonVariant"]
      142 GETTABLEKS                       R11 R11 K35 ["Standard"]
      144 SETTABLEKS                       R11 R10 K21 ["variant"]
      146 GETUPVAL                         R11 10
      147 GETTABLEKS                       R11 R11 K26 ["Enums"]
      149 GETTABLEKS                       R11 R11 K31 ["FillBehavior"]
      151 GETTABLEKS                       R11 R11 K32 ["Fill"]
      153 SETTABLEKS                       R11 R10 K22 ["fillBehavior"]
      155 GETTABLEKS                       R11 R0 K36 ["onReject"]
      157 SETTABLEKS                       R11 R10 K23 ["onActivated"]
      159 MOVE                             R11 R3
      160 CALL                             R11 0 1
      161 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      163 GETUPVAL                         R11 8
      164 GETTABLEKS                       R11 R11 K18 ["ToolConfirmation"]
      166 GETTABLEKS                       R11 R11 K34 ["Reject"]
      168 SETTABLEKS                       R11 R10 K15 ["testId"]
      170 CALL                             R8 2 1
      171 SETTABLEKS                       R8 R7 K10 ["RejectButton"]
      173 GETUPVAL                         R8 5
      174 GETUPVAL                         R9 9
      175 DUPTABLE                         R10 K24 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
      176 GETTABLEKS                       R11 R2 K37 ["AlwaysAccept"]
      178 SETTABLEKS                       R11 R10 K19 ["text"]
      180 GETUPVAL                         R11 10
      181 GETTABLEKS                       R11 R11 K26 ["Enums"]
      183 GETTABLEKS                       R11 R11 K27 ["ButtonSize"]
      185 GETTABLEKS                       R11 R11 K28 ["XSmall"]
      187 SETTABLEKS                       R11 R10 K20 ["size"]
      189 GETUPVAL                         R11 10
      190 GETTABLEKS                       R11 R11 K26 ["Enums"]
      192 GETTABLEKS                       R11 R11 K29 ["ButtonVariant"]
      194 GETTABLEKS                       R11 R11 K35 ["Standard"]
      196 SETTABLEKS                       R11 R10 K21 ["variant"]
      198 GETUPVAL                         R11 10
      199 GETTABLEKS                       R11 R11 K26 ["Enums"]
      201 GETTABLEKS                       R11 R11 K31 ["FillBehavior"]
      203 GETTABLEKS                       R11 R11 K32 ["Fill"]
      205 SETTABLEKS                       R11 R10 K22 ["fillBehavior"]
      207 GETTABLEKS                       R11 R0 K38 ["onAlwaysAccept"]
      209 SETTABLEKS                       R11 R10 K23 ["onActivated"]
      211 MOVE                             R11 R3
      212 CALL                             R11 0 1
      213 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      215 GETUPVAL                         R11 8
      216 GETTABLEKS                       R11 R11 K18 ["ToolConfirmation"]
      218 GETTABLEKS                       R11 R11 K37 ["AlwaysAccept"]
      220 SETTABLEKS                       R11 R10 K15 ["testId"]
      222 CALL                             R8 2 1
      223 SETTABLEKS                       R8 R7 K11 ["AlwaysAcceptButton"]
      225 CALL                             R4 3 -1
      226 RETURN                           R4 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K5 [{"toolName", "warningMessage"}]
        9 GETTABLEKS                       R2 R0 K3 ["toolName"]
       11 SETTABLEKS                       R2 R1 K3 ["toolName"]
       13 GETTABLEKS                       R2 R0 K4 ["warningMessage"]
       15 SETTABLEKS                       R2 R1 K4 ["warningMessage"]
       17 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 DUPTABLE                         R2 K10 [{"type", "toolName", "warningMessage", "hidden", "onConfirm", "onReject", "onAlwaysAccept"}]
        9 LOADK                            R3 K11 ["ToolConfirmation"]
       10 SETTABLEKS                       R3 R2 K3 ["type"]
       12 GETTABLEKS                       R4 R0 K4 ["toolName"]
       14 ORK                              R3 R4 K12 ["UNKNOWN_TOOL"]
       15 SETTABLEKS                       R3 R2 K4 ["toolName"]
       17 GETTABLEKS                       R3 R0 K5 ["warningMessage"]
       19 SETTABLEKS                       R3 R2 K5 ["warningMessage"]
       21 LOADB                            R3 1
       22 SETTABLEKS                       R3 R2 K6 ["hidden"]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K13 ["createUnimplemented"]
       27 LOADK                            R4 K7 ["onConfirm"]
       28 CALL                             R3 1 1
       29 SETTABLEKS                       R3 R2 K7 ["onConfirm"]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K13 ["createUnimplemented"]
       34 LOADK                            R4 K8 ["onReject"]
       35 CALL                             R3 1 1
       36 SETTABLEKS                       R3 R2 K8 ["onReject"]
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R3 R3 K13 ["createUnimplemented"]
       41 LOADK                            R4 K9 ["onAlwaysAccept"]
       42 CALL                             R3 1 1
       43 SETTABLEKS                       R3 R2 K9 ["onAlwaysAccept"]
       45 RETURN                           R2 1

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
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K21 ["Hooks"]
       71 GETTABLEKS                       R10 R10 K22 ["useToolDisplayName"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K23 ["Flags"]
       78 GETTABLEKS                       R11 R11 K24 ["FFlagAssistantMultipleChatPersistence"]
       80 CALL                             R10 1 1
       81 GETTABLEKS                       R11 R1 K25 ["View"]
       83 GETTABLEKS                       R12 R1 K26 ["Text"]
       85 GETTABLEKS                       R13 R1 K27 ["Button"]
       87 GETTABLEKS                       R14 R4 K28 ["createNextOrder"]
       89 GETTABLEKS                       R15 R3 K29 ["createElement"]
       91 GETTABLEKS                       R16 R2 K30 ["useMarkUserInputRequired"]
       93 DUPCLOSURE                       R17 K31 [PROTO_1]
       94 CAPTURE                          VAL R16
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R15
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R1
      105 DUPTABLE                         R18 K34 [{"toMeta", "fromMeta"}]
      106 DUPCLOSURE                       R19 K35 [PROTO_2]
      107 CAPTURE                          VAL R10
      108 SETTABLEKS                       R19 R18 K32 ["toMeta"]
      110 DUPCLOSURE                       R19 K36 [PROTO_3]
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R4
      113 SETTABLEKS                       R19 R18 K33 ["fromMeta"]
      115 DUPTABLE                         R19 K40 [{"Type", "ContentWidget", "Serialization"}]
      116 LOADK                            R20 K41 ["ToolConfirmation"]
      117 SETTABLEKS                       R20 R19 K37 ["Type"]
      119 GETTABLEKS                       R20 R3 K42 ["memo"]
      121 MOVE                             R21 R17
      122 CALL                             R20 1 1
      123 SETTABLEKS                       R20 R19 K38 ["ContentWidget"]
      125 SETTABLEKS                       R18 R19 K39 ["Serialization"]
      127 RETURN                           R19 1
