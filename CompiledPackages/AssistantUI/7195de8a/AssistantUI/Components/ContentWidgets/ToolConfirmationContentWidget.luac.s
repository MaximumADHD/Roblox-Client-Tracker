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
       33 DUPTABLE                         R6 K7 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
       34 GETTABLEKS                       R7 R0 K6 ["LayoutOrder"]
       36 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       38 DUPTABLE                         R7 K12 [{"Warning", "AcceptButton", "RejectButton", "AlwaysAcceptButton"}]
       39 GETTABLEKS                       R8 R0 K13 ["warningMessage"]
       41 JUMPIFNOT                        R8 ; [+19]
       42 GETUPVAL                         R8 5
       43 GETUPVAL                         R9 7
       44 DUPTABLE                         R10 K17 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"], ["testId"]}]
       45 GETTABLEKS                       R11 R0 K13 ["warningMessage"]
       47 SETTABLEKS                       R11 R10 K15 ["Text"]
       49 MOVE                             R11 R3
       50 CALL                             R11 0 1
       51 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
       53 GETUPVAL                         R11 8
       54 GETTABLEKS                       R11 R11 K18 ["ToolConfirmation"]
       56 GETTABLEKS                       R11 R11 K8 ["Warning"]
       58 SETTABLEKS                       R11 R10 K16 ["testId"]
       60 CALL                             R8 2 1
       61 SETTABLEKS                       R8 R7 K8 ["Warning"]
       63 GETUPVAL                         R8 5
       64 GETUPVAL                         R9 9
       65 DUPTABLE                         R10 K24 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
       66 GETTABLEKS                       R11 R2 K25 ["Accept"]
       68 SETTABLEKS                       R11 R10 K19 ["text"]
       70 GETUPVAL                         R11 10
       71 GETTABLEKS                       R11 R11 K26 ["Enums"]
       73 GETTABLEKS                       R11 R11 K27 ["ButtonSize"]
       75 GETTABLEKS                       R11 R11 K28 ["XSmall"]
       77 SETTABLEKS                       R11 R10 K20 ["size"]
       79 GETUPVAL                         R11 10
       80 GETTABLEKS                       R11 R11 K26 ["Enums"]
       82 GETTABLEKS                       R11 R11 K29 ["ButtonVariant"]
       84 GETTABLEKS                       R11 R11 K30 ["Emphasis"]
       86 SETTABLEKS                       R11 R10 K21 ["variant"]
       88 GETUPVAL                         R11 10
       89 GETTABLEKS                       R11 R11 K26 ["Enums"]
       91 GETTABLEKS                       R11 R11 K31 ["FillBehavior"]
       93 GETTABLEKS                       R11 R11 K32 ["Fill"]
       95 SETTABLEKS                       R11 R10 K22 ["fillBehavior"]
       97 GETTABLEKS                       R11 R0 K33 ["onConfirm"]
       99 SETTABLEKS                       R11 R10 K23 ["onActivated"]
      101 MOVE                             R11 R3
      102 CALL                             R11 0 1
      103 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      105 GETUPVAL                         R11 8
      106 GETTABLEKS                       R11 R11 K18 ["ToolConfirmation"]
      108 GETTABLEKS                       R11 R11 K25 ["Accept"]
      110 SETTABLEKS                       R11 R10 K16 ["testId"]
      112 CALL                             R8 2 1
      113 SETTABLEKS                       R8 R7 K9 ["AcceptButton"]
      115 GETUPVAL                         R8 5
      116 GETUPVAL                         R9 9
      117 DUPTABLE                         R10 K24 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
      118 GETTABLEKS                       R11 R2 K34 ["Reject"]
      120 SETTABLEKS                       R11 R10 K19 ["text"]
      122 GETUPVAL                         R11 10
      123 GETTABLEKS                       R11 R11 K26 ["Enums"]
      125 GETTABLEKS                       R11 R11 K27 ["ButtonSize"]
      127 GETTABLEKS                       R11 R11 K28 ["XSmall"]
      129 SETTABLEKS                       R11 R10 K20 ["size"]
      131 GETUPVAL                         R11 10
      132 GETTABLEKS                       R11 R11 K26 ["Enums"]
      134 GETTABLEKS                       R11 R11 K29 ["ButtonVariant"]
      136 GETTABLEKS                       R11 R11 K35 ["Standard"]
      138 SETTABLEKS                       R11 R10 K21 ["variant"]
      140 GETUPVAL                         R11 10
      141 GETTABLEKS                       R11 R11 K26 ["Enums"]
      143 GETTABLEKS                       R11 R11 K31 ["FillBehavior"]
      145 GETTABLEKS                       R11 R11 K32 ["Fill"]
      147 SETTABLEKS                       R11 R10 K22 ["fillBehavior"]
      149 GETTABLEKS                       R11 R0 K36 ["onReject"]
      151 SETTABLEKS                       R11 R10 K23 ["onActivated"]
      153 MOVE                             R11 R3
      154 CALL                             R11 0 1
      155 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      157 GETUPVAL                         R11 8
      158 GETTABLEKS                       R11 R11 K18 ["ToolConfirmation"]
      160 GETTABLEKS                       R11 R11 K34 ["Reject"]
      162 SETTABLEKS                       R11 R10 K16 ["testId"]
      164 CALL                             R8 2 1
      165 SETTABLEKS                       R8 R7 K10 ["RejectButton"]
      167 GETUPVAL                         R8 5
      168 GETUPVAL                         R9 9
      169 DUPTABLE                         R10 K24 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
      170 GETTABLEKS                       R11 R2 K37 ["AlwaysAccept"]
      172 SETTABLEKS                       R11 R10 K19 ["text"]
      174 GETUPVAL                         R11 10
      175 GETTABLEKS                       R11 R11 K26 ["Enums"]
      177 GETTABLEKS                       R11 R11 K27 ["ButtonSize"]
      179 GETTABLEKS                       R11 R11 K28 ["XSmall"]
      181 SETTABLEKS                       R11 R10 K20 ["size"]
      183 GETUPVAL                         R11 10
      184 GETTABLEKS                       R11 R11 K26 ["Enums"]
      186 GETTABLEKS                       R11 R11 K29 ["ButtonVariant"]
      188 GETTABLEKS                       R11 R11 K35 ["Standard"]
      190 SETTABLEKS                       R11 R10 K21 ["variant"]
      192 GETUPVAL                         R11 10
      193 GETTABLEKS                       R11 R11 K26 ["Enums"]
      195 GETTABLEKS                       R11 R11 K31 ["FillBehavior"]
      197 GETTABLEKS                       R11 R11 K32 ["Fill"]
      199 SETTABLEKS                       R11 R10 K22 ["fillBehavior"]
      201 GETTABLEKS                       R11 R0 K38 ["onAlwaysAccept"]
      203 SETTABLEKS                       R11 R10 K23 ["onActivated"]
      205 MOVE                             R11 R3
      206 CALL                             R11 0 1
      207 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      209 GETUPVAL                         R11 8
      210 GETTABLEKS                       R11 R11 K18 ["ToolConfirmation"]
      212 GETTABLEKS                       R11 R11 K37 ["AlwaysAccept"]
      214 SETTABLEKS                       R11 R10 K16 ["testId"]
      216 CALL                             R8 2 1
      217 SETTABLEKS                       R8 R7 K11 ["AlwaysAcceptButton"]
      219 CALL                             R4 3 -1
      220 RETURN                           R4 -1

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"toolName", "warningMessage"}]
        1 GETTABLEKS                       R2 R0 K0 ["toolName"]
        3 SETTABLEKS                       R2 R1 K0 ["toolName"]
        5 GETTABLEKS                       R2 R0 K1 ["warningMessage"]
        7 SETTABLEKS                       R2 R1 K1 ["warningMessage"]
        9 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R2 K9 [{[1] = "ToolConfirmation", ["toolName"], ["warningMessage"], ["hidden"] = True, ["onConfirm"], ["onReject"], ["onAlwaysAccept"]}]
        1 GETTABLEKS                       R4 R0 K2 ["toolName"]
        3 ORK                              R3 R4 K10 ["UNKNOWN_TOOL"]
        4 SETTABLEKS                       R3 R2 K2 ["toolName"]
        6 GETTABLEKS                       R3 R0 K3 ["warningMessage"]
        8 SETTABLEKS                       R3 R2 K3 ["warningMessage"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K11 ["createUnimplemented"]
       13 LOADK                            R4 K6 ["onConfirm"]
       14 CALL                             R3 1 1
       15 SETTABLEKS                       R3 R2 K6 ["onConfirm"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K11 ["createUnimplemented"]
       20 LOADK                            R4 K7 ["onReject"]
       21 CALL                             R3 1 1
       22 SETTABLEKS                       R3 R2 K7 ["onReject"]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K11 ["createUnimplemented"]
       27 LOADK                            R4 K8 ["onAlwaysAccept"]
       28 CALL                             R3 1 1
       29 SETTABLEKS                       R3 R2 K8 ["onAlwaysAccept"]
       31 RETURN                           R2 1

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
       74 GETTABLEKS                       R10 R1 K23 ["View"]
       76 GETTABLEKS                       R11 R1 K24 ["Text"]
       78 GETTABLEKS                       R12 R1 K25 ["Button"]
       80 GETTABLEKS                       R13 R4 K26 ["createNextOrder"]
       82 GETTABLEKS                       R14 R3 K27 ["createElement"]
       84 GETTABLEKS                       R15 R2 K28 ["useMarkUserInputRequired"]
       86 DUPCLOSURE                       R16 K29 [PROTO_1]
       87 CAPTURE                          VAL R15
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R14
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R1
       98 DUPTABLE                         R17 K32 [{"toMeta", "fromMeta"}]
       99 DUPCLOSURE                       R18 K33 [PROTO_2]
      100 SETTABLEKS                       R18 R17 K30 ["toMeta"]
      102 DUPCLOSURE                       R18 K34 [PROTO_3]
      103 CAPTURE                          VAL R4
      104 SETTABLEKS                       R18 R17 K31 ["fromMeta"]
      106 DUPTABLE                         R18 K39 [{["Type"] = "ToolConfirmation", ["ContentWidget"], ["Serialization"]}]
      107 GETTABLEKS                       R19 R3 K40 ["memo"]
      109 MOVE                             R20 R16
      110 CALL                             R19 1 1
      111 SETTABLEKS                       R19 R18 K37 ["ContentWidget"]
      113 SETTABLEKS                       R17 R18 K38 ["Serialization"]
      115 RETURN                           R18 1
