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
       31 NEWTABLE                         R4 4 0
       33 GETTABLEKS                       R5 R0 K4 ["warningMessage"]
       35 JUMPIFNOT                        R5 ; [+24]
       36 GETUPVAL                         R5 5
       37 GETUPVAL                         R6 6
       38 DUPTABLE                         R7 K9 [{"tag", "Text", "LayoutOrder", "testId"}]
       39 LOADK                            R8 K10 ["auto-xy text-body-small text-wrap text-align-x-left content-muted"]
       40 SETTABLEKS                       R8 R7 K5 ["tag"]
       42 GETTABLEKS                       R8 R0 K4 ["warningMessage"]
       44 SETTABLEKS                       R8 R7 K6 ["Text"]
       46 MOVE                             R8 R3
       47 CALL                             R8 0 1
       48 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       50 GETUPVAL                         R10 7
       51 GETTABLEKS                       R9 R10 K11 ["ToolConfirmation"]
       53 GETTABLEKS                       R8 R9 K12 ["Warning"]
       55 SETTABLEKS                       R8 R7 K8 ["testId"]
       57 CALL                             R5 2 1
       58 SETTABLEKS                       R5 R4 K12 ["Warning"]
       60 GETUPVAL                         R5 5
       61 GETUPVAL                         R6 8
       62 DUPTABLE                         R7 K18 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
       63 GETTABLEKS                       R8 R2 K19 ["Accept"]
       65 SETTABLEKS                       R8 R7 K13 ["text"]
       67 GETUPVAL                         R11 9
       68 GETTABLEKS                       R10 R11 K20 ["Enums"]
       70 GETTABLEKS                       R9 R10 K21 ["ButtonSize"]
       72 GETTABLEKS                       R8 R9 K22 ["XSmall"]
       74 SETTABLEKS                       R8 R7 K14 ["size"]
       76 GETUPVAL                         R11 9
       77 GETTABLEKS                       R10 R11 K20 ["Enums"]
       79 GETTABLEKS                       R9 R10 K23 ["ButtonVariant"]
       81 GETTABLEKS                       R8 R9 K24 ["Emphasis"]
       83 SETTABLEKS                       R8 R7 K15 ["variant"]
       85 GETUPVAL                         R11 9
       86 GETTABLEKS                       R10 R11 K20 ["Enums"]
       88 GETTABLEKS                       R9 R10 K25 ["FillBehavior"]
       90 GETTABLEKS                       R8 R9 K26 ["Fill"]
       92 SETTABLEKS                       R8 R7 K16 ["fillBehavior"]
       94 GETTABLEKS                       R8 R0 K27 ["onConfirm"]
       96 SETTABLEKS                       R8 R7 K17 ["onActivated"]
       98 MOVE                             R8 R3
       99 CALL                             R8 0 1
      100 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
      102 GETUPVAL                         R10 7
      103 GETTABLEKS                       R9 R10 K11 ["ToolConfirmation"]
      105 GETTABLEKS                       R8 R9 K19 ["Accept"]
      107 SETTABLEKS                       R8 R7 K8 ["testId"]
      109 CALL                             R5 2 1
      110 SETTABLEKS                       R5 R4 K28 ["AcceptButton"]
      112 GETUPVAL                         R5 5
      113 GETUPVAL                         R6 8
      114 DUPTABLE                         R7 K18 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
      115 GETTABLEKS                       R8 R2 K29 ["Reject"]
      117 SETTABLEKS                       R8 R7 K13 ["text"]
      119 GETUPVAL                         R11 9
      120 GETTABLEKS                       R10 R11 K20 ["Enums"]
      122 GETTABLEKS                       R9 R10 K21 ["ButtonSize"]
      124 GETTABLEKS                       R8 R9 K22 ["XSmall"]
      126 SETTABLEKS                       R8 R7 K14 ["size"]
      128 GETUPVAL                         R11 9
      129 GETTABLEKS                       R10 R11 K20 ["Enums"]
      131 GETTABLEKS                       R9 R10 K23 ["ButtonVariant"]
      133 GETTABLEKS                       R8 R9 K30 ["Standard"]
      135 SETTABLEKS                       R8 R7 K15 ["variant"]
      137 GETUPVAL                         R11 9
      138 GETTABLEKS                       R10 R11 K20 ["Enums"]
      140 GETTABLEKS                       R9 R10 K25 ["FillBehavior"]
      142 GETTABLEKS                       R8 R9 K26 ["Fill"]
      144 SETTABLEKS                       R8 R7 K16 ["fillBehavior"]
      146 GETTABLEKS                       R8 R0 K31 ["onReject"]
      148 SETTABLEKS                       R8 R7 K17 ["onActivated"]
      150 MOVE                             R8 R3
      151 CALL                             R8 0 1
      152 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
      154 GETUPVAL                         R10 7
      155 GETTABLEKS                       R9 R10 K11 ["ToolConfirmation"]
      157 GETTABLEKS                       R8 R9 K29 ["Reject"]
      159 SETTABLEKS                       R8 R7 K8 ["testId"]
      161 CALL                             R5 2 1
      162 SETTABLEKS                       R5 R4 K32 ["RejectButton"]
      164 GETUPVAL                         R5 5
      165 GETUPVAL                         R6 8
      166 DUPTABLE                         R7 K18 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
      167 GETTABLEKS                       R8 R2 K33 ["AlwaysAccept"]
      169 SETTABLEKS                       R8 R7 K13 ["text"]
      171 GETUPVAL                         R11 9
      172 GETTABLEKS                       R10 R11 K20 ["Enums"]
      174 GETTABLEKS                       R9 R10 K21 ["ButtonSize"]
      176 GETTABLEKS                       R8 R9 K22 ["XSmall"]
      178 SETTABLEKS                       R8 R7 K14 ["size"]
      180 GETUPVAL                         R11 9
      181 GETTABLEKS                       R10 R11 K20 ["Enums"]
      183 GETTABLEKS                       R9 R10 K23 ["ButtonVariant"]
      185 GETTABLEKS                       R8 R9 K30 ["Standard"]
      187 SETTABLEKS                       R8 R7 K15 ["variant"]
      189 GETUPVAL                         R11 9
      190 GETTABLEKS                       R10 R11 K20 ["Enums"]
      192 GETTABLEKS                       R9 R10 K25 ["FillBehavior"]
      194 GETTABLEKS                       R8 R9 K26 ["Fill"]
      196 SETTABLEKS                       R8 R7 K16 ["fillBehavior"]
      198 GETTABLEKS                       R8 R0 K34 ["onAlwaysAccept"]
      200 SETTABLEKS                       R8 R7 K17 ["onActivated"]
      202 MOVE                             R8 R3
      203 CALL                             R8 0 1
      204 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
      206 GETUPVAL                         R10 7
      207 GETTABLEKS                       R9 R10 K11 ["ToolConfirmation"]
      209 GETTABLEKS                       R8 R9 K33 ["AlwaysAccept"]
      211 SETTABLEKS                       R8 R7 K8 ["testId"]
      213 CALL                             R5 2 1
      214 SETTABLEKS                       R5 R4 K35 ["AlwaysAcceptButton"]
      216 GETUPVAL                         R5 5
      217 GETUPVAL                         R6 10
      218 DUPTABLE                         R7 K36 [{"tag", "LayoutOrder"}]
      219 LOADK                            R8 K37 ["col size-full-0 auto-y gap-small"]
      220 SETTABLEKS                       R8 R7 K5 ["tag"]
      222 GETTABLEKS                       R8 R0 K7 ["LayoutOrder"]
      224 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
      226 MOVE                             R8 R4
      227 CALL                             R5 3 -1
      228 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["ContentWidgetRegistry"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R6 K11 ["Contexts"]
       27 GETTABLEKS                       R4 R5 K12 ["PacketReceivedContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Parent"]
       34 GETTABLEKS                       R5 R6 K13 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K8 ["Parent"]
       41 GETTABLEKS                       R6 R7 K14 ["ReactUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K6 ["Util"]
       48 GETTABLEKS                       R7 R8 K15 ["TestIds"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K16 ["Resources"]
       55 GETTABLEKS                       R9 R10 K17 ["Localization"]
       57 GETTABLEKS                       R8 R9 K18 ["Translator"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K19 ["Types"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K20 ["Hooks"]
       69 GETTABLEKS                       R10 R11 K21 ["useToolDisplayName"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R12 R0 K22 ["Flags"]
       76 GETTABLEKS                       R11 R12 K23 ["FFlagAssistantRegisterWidgetsThroughTools"]
       78 CALL                             R10 1 1
       79 GETTABLEKS                       R11 R2 K24 ["View"]
       81 GETTABLEKS                       R12 R2 K25 ["Text"]
       83 GETTABLEKS                       R13 R2 K26 ["Button"]
       85 GETTABLEKS                       R14 R5 K27 ["createNextOrder"]
       87 GETTABLEKS                       R15 R4 K28 ["createElement"]
       89 GETTABLEKS                       R16 R3 K29 ["useMarkUserInputRequired"]
       91 DUPCLOSURE                       R17 K30 [PROTO_1]
       92 CAPTURE                          VAL R16
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R14
       97 CAPTURE                          VAL R15
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R11
      103 DUPTABLE                         R18 K33 [{"Type", "ContentWidget"}]
      104 LOADK                            R19 K34 ["ToolConfirmation"]
      105 SETTABLEKS                       R19 R18 K31 ["Type"]
      107 GETTABLEKS                       R19 R4 K35 ["memo"]
      109 MOVE                             R20 R17
      110 CALL                             R19 1 1
      111 SETTABLEKS                       R19 R18 K32 ["ContentWidget"]
      113 MOVE                             R19 R10
      114 CALL                             R19 0 1
      115 JUMPIF                           R19 ; [+7]
      116 GETTABLEKS                       R19 R1 K36 ["registerWidget"]
      118 GETTABLEKS                       R20 R18 K31 ["Type"]
      120 GETTABLEKS                       R21 R18 K32 ["ContentWidget"]
      122 CALL                             R19 2 0
      123 RETURN                           R18 1
