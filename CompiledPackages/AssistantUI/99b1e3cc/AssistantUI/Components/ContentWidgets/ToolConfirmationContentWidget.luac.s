PROTO_0:
        0 DUPTABLE                         R0 K4 [{"Question", "Accept", "Reject", "AlwaysAccept"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K5 ["ToolConfirmation"]
        3 LOADK                            R4 K0 ["Question"]
        4 DUPTABLE                         R5 K7 [{"toolName"}]
        5 GETUPVAL                         R6 1
        6 SETTABLEKS                       R6 R5 K6 ["toolName"]
        8 NAMECALL                         R1 R1 K8 ["getText"]
       10 CALL                             R1 4 1
       11 SETTABLEKS                       R1 R0 K0 ["Question"]
       13 GETUPVAL                         R1 0
       14 LOADK                            R3 K5 ["ToolConfirmation"]
       15 LOADK                            R4 K1 ["Accept"]
       16 NAMECALL                         R1 R1 K8 ["getText"]
       18 CALL                             R1 3 1
       19 SETTABLEKS                       R1 R0 K1 ["Accept"]
       21 GETUPVAL                         R1 0
       22 LOADK                            R3 K5 ["ToolConfirmation"]
       23 LOADK                            R4 K2 ["Reject"]
       24 NAMECALL                         R1 R1 K8 ["getText"]
       26 CALL                             R1 3 1
       27 SETTABLEKS                       R1 R0 K2 ["Reject"]
       29 GETUPVAL                         R1 0
       30 LOADK                            R3 K5 ["ToolConfirmation"]
       31 LOADK                            R4 K3 ["AlwaysAccept"]
       32 DUPTABLE                         R5 K7 [{"toolName"}]
       33 GETUPVAL                         R6 1
       34 SETTABLEKS                       R6 R5 K6 ["toolName"]
       36 NAMECALL                         R1 R1 K8 ["getText"]
       38 CALL                             R1 4 1
       39 SETTABLEKS                       R1 R0 K3 ["AlwaysAccept"]
       41 RETURN                           R0 1

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
       38 DUPTABLE                         R7 K13 [{"Question", "Warning", "AcceptButton", "RejectButton", "AlwaysAcceptButton"}]
       39 GETUPVAL                         R8 7
       40 GETTABLEKS                       R8 R8 K14 ["FFlagAssistantToolPermissionQuestion"]
       42 JUMPIFNOT                        R8 ; [+12]
       43 GETUPVAL                         R8 5
       44 GETUPVAL                         R9 8
       45 DUPTABLE                         R10 K17 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-default", ["Text"], ["LayoutOrder"]}]
       46 GETTABLEKS                       R11 R2 K8 ["Question"]
       48 SETTABLEKS                       R11 R10 K16 ["Text"]
       50 MOVE                             R11 R3
       51 CALL                             R11 0 1
       52 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
       54 CALL                             R8 2 1
       55 SETTABLEKS                       R8 R7 K8 ["Question"]
       57 GETTABLEKS                       R8 R0 K18 ["warningMessage"]
       59 JUMPIFNOT                        R8 ; [+19]
       60 GETUPVAL                         R8 5
       61 GETUPVAL                         R9 8
       62 DUPTABLE                         R10 K21 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"], ["testId"]}]
       63 GETTABLEKS                       R11 R0 K18 ["warningMessage"]
       65 SETTABLEKS                       R11 R10 K16 ["Text"]
       67 MOVE                             R11 R3
       68 CALL                             R11 0 1
       69 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
       71 GETUPVAL                         R11 9
       72 GETTABLEKS                       R11 R11 K22 ["ToolConfirmation"]
       74 GETTABLEKS                       R11 R11 K9 ["Warning"]
       76 SETTABLEKS                       R11 R10 K20 ["testId"]
       78 CALL                             R8 2 1
       79 SETTABLEKS                       R8 R7 K9 ["Warning"]
       81 GETUPVAL                         R8 5
       82 GETUPVAL                         R9 10
       83 DUPTABLE                         R10 K28 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
       84 GETTABLEKS                       R11 R2 K29 ["Accept"]
       86 SETTABLEKS                       R11 R10 K23 ["text"]
       88 GETUPVAL                         R11 11
       89 GETTABLEKS                       R11 R11 K30 ["Enums"]
       91 GETTABLEKS                       R11 R11 K31 ["ButtonSize"]
       93 GETTABLEKS                       R11 R11 K32 ["XSmall"]
       95 SETTABLEKS                       R11 R10 K24 ["size"]
       97 GETUPVAL                         R11 11
       98 GETTABLEKS                       R11 R11 K30 ["Enums"]
      100 GETTABLEKS                       R11 R11 K33 ["ButtonVariant"]
      102 GETTABLEKS                       R11 R11 K34 ["Emphasis"]
      104 SETTABLEKS                       R11 R10 K25 ["variant"]
      106 GETUPVAL                         R11 11
      107 GETTABLEKS                       R11 R11 K30 ["Enums"]
      109 GETTABLEKS                       R11 R11 K35 ["FillBehavior"]
      111 GETTABLEKS                       R11 R11 K36 ["Fill"]
      113 SETTABLEKS                       R11 R10 K26 ["fillBehavior"]
      115 GETTABLEKS                       R11 R0 K37 ["onConfirm"]
      117 SETTABLEKS                       R11 R10 K27 ["onActivated"]
      119 MOVE                             R11 R3
      120 CALL                             R11 0 1
      121 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      123 GETUPVAL                         R11 9
      124 GETTABLEKS                       R11 R11 K22 ["ToolConfirmation"]
      126 GETTABLEKS                       R11 R11 K29 ["Accept"]
      128 SETTABLEKS                       R11 R10 K20 ["testId"]
      130 CALL                             R8 2 1
      131 SETTABLEKS                       R8 R7 K10 ["AcceptButton"]
      133 GETUPVAL                         R8 5
      134 GETUPVAL                         R9 10
      135 DUPTABLE                         R10 K28 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
      136 GETTABLEKS                       R11 R2 K38 ["Reject"]
      138 SETTABLEKS                       R11 R10 K23 ["text"]
      140 GETUPVAL                         R11 11
      141 GETTABLEKS                       R11 R11 K30 ["Enums"]
      143 GETTABLEKS                       R11 R11 K31 ["ButtonSize"]
      145 GETTABLEKS                       R11 R11 K32 ["XSmall"]
      147 SETTABLEKS                       R11 R10 K24 ["size"]
      149 GETUPVAL                         R11 11
      150 GETTABLEKS                       R11 R11 K30 ["Enums"]
      152 GETTABLEKS                       R11 R11 K33 ["ButtonVariant"]
      154 GETTABLEKS                       R11 R11 K39 ["Standard"]
      156 SETTABLEKS                       R11 R10 K25 ["variant"]
      158 GETUPVAL                         R11 11
      159 GETTABLEKS                       R11 R11 K30 ["Enums"]
      161 GETTABLEKS                       R11 R11 K35 ["FillBehavior"]
      163 GETTABLEKS                       R11 R11 K36 ["Fill"]
      165 SETTABLEKS                       R11 R10 K26 ["fillBehavior"]
      167 GETTABLEKS                       R11 R0 K40 ["onReject"]
      169 SETTABLEKS                       R11 R10 K27 ["onActivated"]
      171 MOVE                             R11 R3
      172 CALL                             R11 0 1
      173 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      175 GETUPVAL                         R11 9
      176 GETTABLEKS                       R11 R11 K22 ["ToolConfirmation"]
      178 GETTABLEKS                       R11 R11 K38 ["Reject"]
      180 SETTABLEKS                       R11 R10 K20 ["testId"]
      182 CALL                             R8 2 1
      183 SETTABLEKS                       R8 R7 K11 ["RejectButton"]
      185 GETUPVAL                         R8 5
      186 GETUPVAL                         R9 10
      187 DUPTABLE                         R10 K28 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
      188 GETTABLEKS                       R11 R2 K41 ["AlwaysAccept"]
      190 SETTABLEKS                       R11 R10 K23 ["text"]
      192 GETUPVAL                         R11 11
      193 GETTABLEKS                       R11 R11 K30 ["Enums"]
      195 GETTABLEKS                       R11 R11 K31 ["ButtonSize"]
      197 GETTABLEKS                       R11 R11 K32 ["XSmall"]
      199 SETTABLEKS                       R11 R10 K24 ["size"]
      201 GETUPVAL                         R11 11
      202 GETTABLEKS                       R11 R11 K30 ["Enums"]
      204 GETTABLEKS                       R11 R11 K33 ["ButtonVariant"]
      206 GETTABLEKS                       R11 R11 K39 ["Standard"]
      208 SETTABLEKS                       R11 R10 K25 ["variant"]
      210 GETUPVAL                         R11 11
      211 GETTABLEKS                       R11 R11 K30 ["Enums"]
      213 GETTABLEKS                       R11 R11 K35 ["FillBehavior"]
      215 GETTABLEKS                       R11 R11 K36 ["Fill"]
      217 SETTABLEKS                       R11 R10 K26 ["fillBehavior"]
      219 GETTABLEKS                       R11 R0 K42 ["onAlwaysAccept"]
      221 SETTABLEKS                       R11 R10 K27 ["onActivated"]
      223 MOVE                             R11 R3
      224 CALL                             R11 0 1
      225 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      227 GETUPVAL                         R11 9
      228 GETTABLEKS                       R11 R11 K22 ["ToolConfirmation"]
      230 GETTABLEKS                       R11 R11 K41 ["AlwaysAccept"]
      232 SETTABLEKS                       R11 R10 K20 ["testId"]
      234 CALL                             R8 2 1
      235 SETTABLEKS                       R8 R7 K12 ["AlwaysAcceptButton"]
      237 CALL                             R4 3 -1
      238 RETURN                           R4 -1

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
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Components"]
       23 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K11 ["PacketReceivedContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K7 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K7 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Util"]
       46 GETTABLEKS                       R7 R7 K15 ["Serializer"]
       48 GETTABLEKS                       R7 R7 K16 ["SerializerTypes"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K14 ["Util"]
       55 GETTABLEKS                       R8 R8 K17 ["TestIds"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K18 ["Resources"]
       62 GETTABLEKS                       R9 R9 K19 ["Localization"]
       64 GETTABLEKS                       R9 R9 K20 ["Translator"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K21 ["Types"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K22 ["Hooks"]
       76 GETTABLEKS                       R11 R11 K23 ["useToolDisplayName"]
       78 CALL                             R10 1 1
       79 GETTABLEKS                       R11 R2 K24 ["View"]
       81 GETTABLEKS                       R12 R2 K25 ["Text"]
       83 GETTABLEKS                       R13 R2 K26 ["Button"]
       85 GETTABLEKS                       R14 R5 K27 ["createNextOrder"]
       87 GETTABLEKS                       R15 R4 K28 ["createElement"]
       89 GETTABLEKS                       R16 R3 K29 ["useMarkUserInputRequired"]
       91 DUPCLOSURE                       R17 K30 [PROTO_1]
       92 CAPTURE                          VAL R16
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R14
       97 CAPTURE                          VAL R15
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R2
      104 DUPTABLE                         R18 K33 [{"toMeta", "fromMeta"}]
      105 DUPCLOSURE                       R19 K34 [PROTO_2]
      106 SETTABLEKS                       R19 R18 K31 ["toMeta"]
      108 DUPCLOSURE                       R19 K35 [PROTO_3]
      109 CAPTURE                          VAL R5
      110 SETTABLEKS                       R19 R18 K32 ["fromMeta"]
      112 DUPTABLE                         R19 K40 [{["Type"] = "ToolConfirmation", ["ContentWidget"], ["Serialization"]}]
      113 GETTABLEKS                       R20 R4 K41 ["memo"]
      115 MOVE                             R21 R17
      116 CALL                             R20 1 1
      117 SETTABLEKS                       R20 R19 K38 ["ContentWidget"]
      119 SETTABLEKS                       R18 R19 K39 ["Serialization"]
      121 RETURN                           R19 1
