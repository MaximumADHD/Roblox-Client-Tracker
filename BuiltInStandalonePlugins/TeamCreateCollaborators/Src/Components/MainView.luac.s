PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+10]
        7 GETIMPORT                        R3 K3 [warn]
        9 LOADK                            R5 K4 ["OpenUrl failed: "]
       10 FASTCALL1                        TOSTRING R2 ; [+3]
       11 MOVE                             R7 R2
       12 GETIMPORT                        R6 K6 [tostring]
       14 CALL                             R6 1 1
       15 CONCAT                           R4 R5 R6
       16 CALL                             R3 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 LOADK                            R2 K1 [""]
        5 GETTABLEKS                       R3 R0 K2 ["showParentalConsent"]
        7 JUMPIFNOT                        R3 ; [+7]
        8 LOADK                            R5 K3 ["MainView"]
        9 LOADK                            R6 K4 ["AskParentTCTitle"]
       10 NAMECALL                         R3 R1 K5 ["getText"]
       12 CALL                             R3 3 1
       13 MOVE                             R2 R3
       14 JUMP                             ; [+19]
       15 GETTABLEKS                       R3 R0 K6 ["canCollabAllPcApproved"]
       17 JUMPIFNOT                        R3 ; [+10]
       18 GETTABLEKS                       R3 R0 K7 ["hasRequiresTrustedConnection"]
       20 JUMPIFNOT                        R3 ; [+7]
       21 LOADK                            R5 K3 ["MainView"]
       22 LOADK                            R6 K8 ["RequiresTrustedConnectionTitle"]
       23 NAMECALL                         R3 R1 K5 ["getText"]
       25 CALL                             R3 3 1
       26 MOVE                             R2 R3
       27 JUMP                             ; [+6]
       28 LOADK                            R5 K3 ["MainView"]
       29 LOADK                            R6 K9 ["Title"]
       30 NAMECALL                         R3 R1 K5 ["getText"]
       32 CALL                             R3 3 1
       33 MOVE                             R2 R3
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K10 ["createElement"]
       37 GETUPVAL                         R4 2
       38 DUPTABLE                         R5 K14 [{"Text", "LayoutOrder", "tag"}]
       39 SETTABLEKS                       R2 R5 K11 ["Text"]
       41 GETTABLEKS                       R6 R0 K12 ["LayoutOrder"]
       43 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
       45 LOADK                            R6 K15 ["auto-xy size-0-0 text-align-y-center text-align-x-left text-title-medium text-wrap"]
       46 SETTABLEKS                       R6 R5 K13 ["tag"]
       48 CALL                             R3 2 -1
       49 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 LOADK                            R2 K1 [""]
        5 GETTABLEKS                       R3 R0 K2 ["showParentalConsent"]
        7 JUMPIFNOT                        R3 ; [+7]
        8 LOADK                            R5 K3 ["MainView"]
        9 LOADK                            R6 K4 ["AskParentTCSubtitle"]
       10 NAMECALL                         R3 R1 K5 ["getText"]
       12 CALL                             R3 3 1
       13 MOVE                             R2 R3
       14 JUMP                             ; [+6]
       15 LOADK                            R5 K3 ["MainView"]
       16 LOADK                            R6 K6 ["Subtitle"]
       17 NAMECALL                         R3 R1 K5 ["getText"]
       19 CALL                             R3 3 1
       20 MOVE                             R2 R3
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K7 ["createElement"]
       24 GETUPVAL                         R4 2
       25 DUPTABLE                         R5 K11 [{"Text", "LayoutOrder", "tag"}]
       26 SETTABLEKS                       R2 R5 K8 ["Text"]
       28 GETTABLEKS                       R6 R0 K9 ["LayoutOrder"]
       30 SETTABLEKS                       R6 R5 K9 ["LayoutOrder"]
       32 LOADK                            R6 K12 ["auto-xy size-0-0 text-align-x-left text-body-small text-wrap flex-y-fill"]
       33 SETTABLEKS                       R6 R5 K10 ["tag"]
       35 CALL                             R3 2 -1
       36 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sendButtonClicked"]
        3 LOADK                            R1 K1 ["remindMeLaterClicked"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K2 ["onSnooze"]
        8 JUMPIFNOT                        R0 ; [+4]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K2 ["onSnooze"]
       12 CALL                             R0 0 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["canUseLinkedParent"]
        3 JUMPIF                           R0 ; [+9]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["onOpenTrustedConnectionDialog"]
        7 JUMPIFNOT                        R0 ; [+21]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K1 ["onOpenTrustedConnectionDialog"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 1
       14 GETTABLEKS                       R0 R0 K2 ["sendButtonClicked"]
       16 LOADK                            R1 K3 ["existingParentSendClicked"]
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 2
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K4 ["userIds"]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K5 ["universeId"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K6 ["onRequestComplete"]
       28 CALL                             R0 3 0
       29 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sendButtonClicked"]
        3 LOADK                            R1 K1 ["learnMoreClicked"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 GETIMPORT                        R1 K3 [pcall]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 CALL                             R1 1 2
       12 JUMPIF                           R1 ; [+10]
       13 GETIMPORT                        R3 K5 [warn]
       15 LOADK                            R5 K6 ["OpenUrl failed: "]
       16 FASTCALL1                        TOSTRING R2 ; [+3]
       17 MOVE                             R7 R2
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 CONCAT                           R4 R5 R6
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sendButtonClicked"]
        3 LOADK                            R1 K1 ["remindMeLaterClicked"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K2 ["onSnooze"]
        8 JUMPIFNOT                        R0 ; [+4]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K2 ["onSnooze"]
       12 CALL                             R0 0 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sendButtonClicked"]
        3 LOADK                            R1 K1 ["copyLinkClicked"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["trustedFriendLink"]
        9 NAMECALL                         R0 R0 K3 ["CopyToClipboard"]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K4 ["setCopied"]
       15 LOADB                            R1 1
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 3
       18 JUMPIFNOT                        R0 ; [+5]
       19 GETUPVAL                         R0 4
       20 LOADK                            R2 K5 ["TrustedConnectionLinkCopied"]
       21 NAMECALL                         R0 R0 K6 ["Fire"]
       23 CALL                             R0 2 0
       24 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sendButtonClicked"]
        3 LOADK                            R1 K1 ["copyLinkClicked"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["trustedFriendLink"]
        9 NAMECALL                         R0 R0 K3 ["CopyToClipboard"]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K4 ["setCopied"]
       15 LOADB                            R1 1
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 3
       18 JUMPIFNOT                        R0 ; [+5]
       19 GETUPVAL                         R0 4
       20 LOADK                            R2 K5 ["TrustedConnectionLinkCopied"]
       21 NAMECALL                         R0 R0 K6 ["Fire"]
       23 CALL                             R0 2 0
       24 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sendButtonClicked"]
        3 LOADK                            R1 K1 ["learnMoreClicked"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 GETIMPORT                        R1 K3 [pcall]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 CALL                             R1 1 2
       12 JUMPIF                           R1 ; [+10]
       13 GETIMPORT                        R3 K5 [warn]
       15 LOADK                            R5 K6 ["OpenUrl failed: "]
       16 FASTCALL1                        TOSTRING R2 ; [+3]
       17 MOVE                             R7 R2
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 CONCAT                           R4 R5 R6
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 CALL                             R3 0 1
        8 GETTABLEKS                       R4 R0 K1 ["showParentalConsent"]
       10 JUMPIFNOT                        R4 ; [+177]
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K2 ["createElement"]
       14 GETUPVAL                         R5 4
       15 GETTABLEKS                       R5 R5 K3 ["View"]
       17 DUPTABLE                         R6 K6 [{"tag", "LayoutOrder"}]
       18 LOADK                            R7 K7 ["size-full-0 auto-y row gap-small"]
       19 SETTABLEKS                       R7 R6 K4 ["tag"]
       21 GETTABLEKS                       R7 R0 K5 ["LayoutOrder"]
       23 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       25 DUPTABLE                         R7 K12 [{"RemindMeLaterButton", "Spacer", "VPCButton", "LearnMoreButton"}]
       26 GETUPVAL                         R9 5
       27 JUMPIFNOT                        R9 ; [+48]
       28 GETUPVAL                         R8 3
       29 GETTABLEKS                       R8 R8 K2 ["createElement"]
       31 GETUPVAL                         R9 4
       32 GETTABLEKS                       R9 R9 K13 ["Button"]
       34 DUPTABLE                         R10 K19 [{"text", "LayoutOrder", "variant", "isDisabled", "onActivated", "size"}]
       35 LOADK                            R13 K20 ["MainView"]
       36 LOADK                            R14 K8 ["RemindMeLaterButton"]
       37 NAMECALL                         R11 R1 K21 ["getText"]
       39 CALL                             R11 3 1
       40 SETTABLEKS                       R11 R10 K14 ["text"]
       42 MOVE                             R11 R2
       43 CALL                             R11 0 1
       44 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       46 GETUPVAL                         R11 4
       47 GETTABLEKS                       R11 R11 K22 ["Enums"]
       49 GETTABLEKS                       R11 R11 K23 ["ButtonVariant"]
       51 GETTABLEKS                       R11 R11 K24 ["Standard"]
       53 SETTABLEKS                       R11 R10 K15 ["variant"]
       55 GETTABLEKS                       R12 R0 K25 ["snoozeAccepted"]
       57 NOT                              R11 R12
       58 SETTABLEKS                       R11 R10 K16 ["isDisabled"]
       60 NEWCLOSURE                       R11 P0
       61 CAPTURE                          UPVAL U6
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R11 R10 K17 ["onActivated"]
       65 GETUPVAL                         R11 4
       66 GETTABLEKS                       R11 R11 K22 ["Enums"]
       68 GETTABLEKS                       R11 R11 K26 ["InputSize"]
       70 GETTABLEKS                       R11 R11 K27 ["Small"]
       72 SETTABLEKS                       R11 R10 K18 ["size"]
       74 CALL                             R8 2 1
       75 JUMP                             ; [+1]
       76 LOADNIL                          R8
       77 SETTABLEKS                       R8 R7 K8 ["RemindMeLaterButton"]
       79 GETUPVAL                         R8 3
       80 GETTABLEKS                       R8 R8 K2 ["createElement"]
       82 GETUPVAL                         R9 4
       83 GETTABLEKS                       R9 R9 K3 ["View"]
       85 DUPTABLE                         R10 K6 [{"tag", "LayoutOrder"}]
       86 LOADK                            R11 K28 ["fill"]
       87 SETTABLEKS                       R11 R10 K4 ["tag"]
       89 MOVE                             R11 R2
       90 CALL                             R11 0 1
       91 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       93 CALL                             R8 2 1
       94 SETTABLEKS                       R8 R7 K9 ["Spacer"]
       96 GETUPVAL                         R8 3
       97 GETTABLEKS                       R8 R8 K2 ["createElement"]
       99 GETUPVAL                         R9 4
      100 GETTABLEKS                       R9 R9 K13 ["Button"]
      102 DUPTABLE                         R10 K29 [{"text", "LayoutOrder", "variant", "onActivated", "size"}]
      103 LOADK                            R13 K20 ["MainView"]
      104 LOADK                            R14 K30 ["AskParentButton"]
      105 NAMECALL                         R11 R1 K21 ["getText"]
      107 CALL                             R11 3 1
      108 SETTABLEKS                       R11 R10 K14 ["text"]
      110 MOVE                             R11 R2
      111 CALL                             R11 0 1
      112 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      114 GETUPVAL                         R11 4
      115 GETTABLEKS                       R11 R11 K22 ["Enums"]
      117 GETTABLEKS                       R11 R11 K23 ["ButtonVariant"]
      119 GETTABLEKS                       R11 R11 K31 ["Emphasis"]
      121 SETTABLEKS                       R11 R10 K15 ["variant"]
      123 NEWCLOSURE                       R11 P1
      124 CAPTURE                          VAL R0
      125 CAPTURE                          UPVAL U6
      126 CAPTURE                          VAL R3
      127 SETTABLEKS                       R11 R10 K17 ["onActivated"]
      129 GETUPVAL                         R11 4
      130 GETTABLEKS                       R11 R11 K22 ["Enums"]
      132 GETTABLEKS                       R11 R11 K26 ["InputSize"]
      134 GETTABLEKS                       R11 R11 K27 ["Small"]
      136 SETTABLEKS                       R11 R10 K18 ["size"]
      138 CALL                             R8 2 1
      139 SETTABLEKS                       R8 R7 K10 ["VPCButton"]
      141 GETUPVAL                         R8 3
      142 GETTABLEKS                       R8 R8 K2 ["createElement"]
      144 GETUPVAL                         R9 4
      145 GETTABLEKS                       R9 R9 K13 ["Button"]
      147 DUPTABLE                         R10 K29 [{"text", "LayoutOrder", "variant", "onActivated", "size"}]
      148 LOADK                            R13 K20 ["MainView"]
      149 LOADK                            R14 K32 ["ViewDetailsButton"]
      150 NAMECALL                         R11 R1 K21 ["getText"]
      152 CALL                             R11 3 1
      153 SETTABLEKS                       R11 R10 K14 ["text"]
      155 MOVE                             R11 R2
      156 CALL                             R11 0 1
      157 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      159 GETUPVAL                         R11 4
      160 GETTABLEKS                       R11 R11 K22 ["Enums"]
      162 GETTABLEKS                       R11 R11 K23 ["ButtonVariant"]
      164 GETTABLEKS                       R11 R11 K24 ["Standard"]
      166 SETTABLEKS                       R11 R10 K15 ["variant"]
      168 DUPCLOSURE                       R11 K33 [PROTO_6]
      169 CAPTURE                          UPVAL U6
      170 CAPTURE                          UPVAL U7
      171 CAPTURE                          UPVAL U8
      172 SETTABLEKS                       R11 R10 K17 ["onActivated"]
      174 GETUPVAL                         R11 4
      175 GETTABLEKS                       R11 R11 K22 ["Enums"]
      177 GETTABLEKS                       R11 R11 K26 ["InputSize"]
      179 GETTABLEKS                       R11 R11 K27 ["Small"]
      181 SETTABLEKS                       R11 R10 K18 ["size"]
      183 CALL                             R8 2 1
      184 SETTABLEKS                       R8 R7 K11 ["LearnMoreButton"]
      186 CALL                             R4 3 -1
      187 RETURN                           R4 -1
      188 GETUPVAL                         R4 3
      189 GETTABLEKS                       R4 R4 K2 ["createElement"]
      191 GETUPVAL                         R5 4
      192 GETTABLEKS                       R5 R5 K3 ["View"]
      194 DUPTABLE                         R6 K6 [{"tag", "LayoutOrder"}]
      195 LOADK                            R7 K7 ["size-full-0 auto-y row gap-small"]
      196 SETTABLEKS                       R7 R6 K4 ["tag"]
      198 GETTABLEKS                       R7 R0 K5 ["LayoutOrder"]
      200 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
      202 DUPTABLE                         R7 K35 [{"RemindMeLaterButton", "Spacer", "CopyShareLinkButton", "LearnMoreButton"}]
      203 GETUPVAL                         R9 5
      204 JUMPIFNOT                        R9 ; [+48]
      205 GETUPVAL                         R8 3
      206 GETTABLEKS                       R8 R8 K2 ["createElement"]
      208 GETUPVAL                         R9 4
      209 GETTABLEKS                       R9 R9 K13 ["Button"]
      211 DUPTABLE                         R10 K19 [{"text", "LayoutOrder", "variant", "isDisabled", "onActivated", "size"}]
      212 LOADK                            R13 K20 ["MainView"]
      213 LOADK                            R14 K8 ["RemindMeLaterButton"]
      214 NAMECALL                         R11 R1 K21 ["getText"]
      216 CALL                             R11 3 1
      217 SETTABLEKS                       R11 R10 K14 ["text"]
      219 MOVE                             R11 R2
      220 CALL                             R11 0 1
      221 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      223 GETUPVAL                         R11 4
      224 GETTABLEKS                       R11 R11 K22 ["Enums"]
      226 GETTABLEKS                       R11 R11 K23 ["ButtonVariant"]
      228 GETTABLEKS                       R11 R11 K24 ["Standard"]
      230 SETTABLEKS                       R11 R10 K15 ["variant"]
      232 GETTABLEKS                       R12 R0 K25 ["snoozeAccepted"]
      234 NOT                              R11 R12
      235 SETTABLEKS                       R11 R10 K16 ["isDisabled"]
      237 NEWCLOSURE                       R11 P3
      238 CAPTURE                          UPVAL U6
      239 CAPTURE                          VAL R0
      240 SETTABLEKS                       R11 R10 K17 ["onActivated"]
      242 GETUPVAL                         R11 4
      243 GETTABLEKS                       R11 R11 K22 ["Enums"]
      245 GETTABLEKS                       R11 R11 K26 ["InputSize"]
      247 GETTABLEKS                       R11 R11 K27 ["Small"]
      249 SETTABLEKS                       R11 R10 K18 ["size"]
      251 CALL                             R8 2 1
      252 JUMP                             ; [+1]
      253 LOADNIL                          R8
      254 SETTABLEKS                       R8 R7 K8 ["RemindMeLaterButton"]
      256 GETUPVAL                         R8 3
      257 GETTABLEKS                       R8 R8 K2 ["createElement"]
      259 GETUPVAL                         R9 4
      260 GETTABLEKS                       R9 R9 K3 ["View"]
      262 DUPTABLE                         R10 K6 [{"tag", "LayoutOrder"}]
      263 LOADK                            R11 K28 ["fill"]
      264 SETTABLEKS                       R11 R10 K4 ["tag"]
      266 MOVE                             R11 R2
      267 CALL                             R11 0 1
      268 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      270 CALL                             R8 2 1
      271 SETTABLEKS                       R8 R7 K9 ["Spacer"]
      273 GETTABLEKS                       R9 R0 K36 ["copied"]
      275 JUMPIF                           R9 ; [+46]
      276 GETUPVAL                         R8 3
      277 GETTABLEKS                       R8 R8 K2 ["createElement"]
      279 GETUPVAL                         R9 4
      280 GETTABLEKS                       R9 R9 K13 ["Button"]
      282 DUPTABLE                         R10 K29 [{"text", "LayoutOrder", "variant", "onActivated", "size"}]
      283 LOADK                            R13 K20 ["MainView"]
      284 LOADK                            R14 K37 ["GetLinkButton"]
      285 NAMECALL                         R11 R1 K21 ["getText"]
      287 CALL                             R11 3 1
      288 SETTABLEKS                       R11 R10 K14 ["text"]
      290 MOVE                             R11 R2
      291 CALL                             R11 0 1
      292 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      294 GETUPVAL                         R11 4
      295 GETTABLEKS                       R11 R11 K22 ["Enums"]
      297 GETTABLEKS                       R11 R11 K23 ["ButtonVariant"]
      299 GETTABLEKS                       R11 R11 K31 ["Emphasis"]
      301 SETTABLEKS                       R11 R10 K15 ["variant"]
      303 NEWCLOSURE                       R11 P4
      304 CAPTURE                          UPVAL U6
      305 CAPTURE                          UPVAL U9
      306 CAPTURE                          VAL R0
      307 CAPTURE                          UPVAL U10
      308 CAPTURE                          UPVAL U11
      309 SETTABLEKS                       R11 R10 K17 ["onActivated"]
      311 GETUPVAL                         R11 4
      312 GETTABLEKS                       R11 R11 K22 ["Enums"]
      314 GETTABLEKS                       R11 R11 K26 ["InputSize"]
      316 GETTABLEKS                       R11 R11 K27 ["Small"]
      318 SETTABLEKS                       R11 R10 K18 ["size"]
      320 CALL                             R8 2 1
      321 JUMP                             ; [+48]
      322 GETUPVAL                         R8 3
      323 GETTABLEKS                       R8 R8 K2 ["createElement"]
      325 GETUPVAL                         R9 4
      326 GETTABLEKS                       R9 R9 K13 ["Button"]
      328 DUPTABLE                         R10 K39 [{"icon", "text", "LayoutOrder", "variant", "onActivated", "size"}]
      329 LOADK                            R11 K40 ["check"]
      330 SETTABLEKS                       R11 R10 K38 ["icon"]
      332 LOADK                            R13 K20 ["MainView"]
      333 LOADK                            R14 K41 ["CopiedToClipboard"]
      334 NAMECALL                         R11 R1 K21 ["getText"]
      336 CALL                             R11 3 1
      337 SETTABLEKS                       R11 R10 K14 ["text"]
      339 MOVE                             R11 R2
      340 CALL                             R11 0 1
      341 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      343 GETUPVAL                         R11 4
      344 GETTABLEKS                       R11 R11 K22 ["Enums"]
      346 GETTABLEKS                       R11 R11 K23 ["ButtonVariant"]
      348 GETTABLEKS                       R11 R11 K31 ["Emphasis"]
      350 SETTABLEKS                       R11 R10 K15 ["variant"]
      352 NEWCLOSURE                       R11 P5
      353 CAPTURE                          UPVAL U6
      354 CAPTURE                          UPVAL U9
      355 CAPTURE                          VAL R0
      356 CAPTURE                          UPVAL U10
      357 CAPTURE                          UPVAL U11
      358 SETTABLEKS                       R11 R10 K17 ["onActivated"]
      360 GETUPVAL                         R11 4
      361 GETTABLEKS                       R11 R11 K22 ["Enums"]
      363 GETTABLEKS                       R11 R11 K26 ["InputSize"]
      365 GETTABLEKS                       R11 R11 K27 ["Small"]
      367 SETTABLEKS                       R11 R10 K18 ["size"]
      369 CALL                             R8 2 1
      370 SETTABLEKS                       R8 R7 K34 ["CopyShareLinkButton"]
      372 GETUPVAL                         R8 3
      373 GETTABLEKS                       R8 R8 K2 ["createElement"]
      375 GETUPVAL                         R9 4
      376 GETTABLEKS                       R9 R9 K13 ["Button"]
      378 DUPTABLE                         R10 K29 [{"text", "LayoutOrder", "variant", "onActivated", "size"}]
      379 LOADK                            R13 K20 ["MainView"]
      380 LOADK                            R14 K32 ["ViewDetailsButton"]
      381 NAMECALL                         R11 R1 K21 ["getText"]
      383 CALL                             R11 3 1
      384 SETTABLEKS                       R11 R10 K14 ["text"]
      386 MOVE                             R11 R2
      387 CALL                             R11 0 1
      388 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      390 GETUPVAL                         R11 4
      391 GETTABLEKS                       R11 R11 K22 ["Enums"]
      393 GETTABLEKS                       R11 R11 K23 ["ButtonVariant"]
      395 GETTABLEKS                       R11 R11 K24 ["Standard"]
      397 SETTABLEKS                       R11 R10 K15 ["variant"]
      399 DUPCLOSURE                       R11 K42 [PROTO_10]
      400 CAPTURE                          UPVAL U6
      401 CAPTURE                          UPVAL U7
      402 CAPTURE                          UPVAL U8
      403 SETTABLEKS                       R11 R10 K17 ["onActivated"]
      405 GETUPVAL                         R11 4
      406 GETTABLEKS                       R11 R11 K22 ["Enums"]
      408 GETTABLEKS                       R11 R11 K26 ["InputSize"]
      410 GETTABLEKS                       R11 R11 K27 ["Small"]
      412 SETTABLEKS                       R11 R10 K18 ["size"]
      414 CALL                             R8 2 1
      415 SETTABLEKS                       R8 R7 K11 ["LearnMoreButton"]
      417 CALL                             R4 3 -1
      418 RETURN                           R4 -1

PROTO_12:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R8 R5 K0 ["userId"]
        8 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       10 MOVE                             R7 R0
       11 GETIMPORT                        R6 K3 [table.insert]
       13 CALL                             R6 2 0
       14 FORGLOOP                         R1 2 ; [-9]
       16 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+14]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["sendFeatureShown"]
        7 LOADK                            R1 K1 ["parentalConsentTrustedFriendsWithSnoozeShown"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K0 ["sendFeatureShown"]
       13 LOADK                            R1 K2 ["parentalConsentTrustedFriendsShown"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 1
       17 JUMPIFNOT                        R0 ; [+6]
       18 GETUPVAL                         R0 2
       19 GETTABLEKS                       R0 R0 K0 ["sendFeatureShown"]
       21 LOADK                            R1 K3 ["trustedFriendsWithSnoozeShown"]
       22 CALL                             R0 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R0 2
       25 GETTABLEKS                       R0 R0 K0 ["sendFeatureShown"]
       27 LOADK                            R1 K4 ["trustedFriendsShown"]
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 3
       11 LOADB                            R4 0
       12 LOADB                            R5 1
       13 NAMECALL                         R0 R0 K1 ["openPlace"]
       15 CALL                             R0 5 0
       16 GETUPVAL                         R0 4
       17 JUMPIFNOT                        R0 ; [+2]
       18 GETUPVAL                         R0 4
       19 CALL                             R0 0 0
       20 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sendButtonClicked"]
        3 LOADK                            R1 K1 ["snoozeCheckboxClicked"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 2
        7 NOT                              R1 R2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K0 ["use"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["useContext"]
        9 GETUPVAL                         R4 3
       10 CALL                             R3 1 1
       11 GETTABLEKS                       R4 R3 K2 ["trustedFriendLinkController"]
       13 GETTABLEKS                       R5 R3 K3 ["collaborators"]
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K4 ["useMemo"]
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          VAL R5
       20 NEWTABLE                         R8 0 1
       22 MOVE                             R9 R5
       23 SETLIST                          R8 R9 1 [1]
       25 CALL                             R6 2 1
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R7 R7 K5 ["useState"]
       29 LOADB                            R8 0
       30 CALL                             R7 1 2
       31 GETUPVAL                         R9 2
       32 GETTABLEKS                       R9 R9 K5 ["useState"]
       34 LOADB                            R10 0
       35 CALL                             R9 1 2
       36 GETTABLEKS                       R12 R0 K6 ["canUseAddTfLinks"]
       38 NOT                              R11 R12
       39 LENGTH                           R13 R5
       40 LOADN                            R14 0
       41 JUMPIFLT                         R14 R13 ; [+2]
       43 LOADB                            R12 0 +1
       44 LOADB                            R12 1
       45 GETTABLEKS                       R13 R0 K7 ["universeId"]
       47 GETTABLEKS                       R14 R0 K8 ["placeId"]
       49 GETTABLEKS                       R15 R0 K9 ["onClose"]
       51 GETUPVAL                         R16 2
       52 GETTABLEKS                       R16 R16 K10 ["useEffect"]
       54 NEWCLOSURE                       R17 P1
       55 CAPTURE                          VAL R11
       56 CAPTURE                          UPVAL U4
       57 CAPTURE                          UPVAL U5
       58 NEWTABLE                         R18 0 1
       60 MOVE                             R19 R11
       61 SETLIST                          R18 R19 1 [1]
       63 CALL                             R16 2 0
       64 GETUPVAL                         R16 2
       65 GETTABLEKS                       R16 R16 K11 ["useCallback"]
       67 NEWCLOSURE                       R17 P2
       68 CAPTURE                          UPVAL U4
       69 CAPTURE                          VAL R14
       70 CAPTURE                          UPVAL U6
       71 CAPTURE                          VAL R13
       72 CAPTURE                          VAL R15
       73 NEWTABLE                         R18 0 3
       75 MOVE                             R19 R14
       76 MOVE                             R20 R13
       77 MOVE                             R21 R15
       78 SETLIST                          R18 R19 3 [1]
       80 CALL                             R16 2 1
       81 MOVE                             R17 R9
       82 JUMPIFNOT                        R17 ; [+7]
       83 LOADB                            R17 0
       84 JUMPIFEQKNIL                     R14 ; [+5]
       86 JUMPIFNOTEQKN                    R14 K12 [0] ; [+2]
       88 LOADB                            R17 0 +1
       89 LOADB                            R17 1
       90 GETUPVAL                         R18 2
       91 GETTABLEKS                       R18 R18 K13 ["createElement"]
       93 GETUPVAL                         R19 7
       94 GETTABLEKS                       R19 R19 K14 ["View"]
       96 DUPTABLE                         R20 K16 [{"tag"}]
       97 LOADK                            R21 K17 ["size-full-full col gap-small padding-large bg-surface-200 radius-none"]
       98 SETTABLEKS                       R21 R20 K15 ["tag"]
      100 DUPTABLE                         R21 K23 [{"Title", "Subtitle", "TrustedConnectionsScrollView", "SnoozeCheckbox", "ButtonBar"}]
      101 GETUPVAL                         R22 2
      102 GETTABLEKS                       R22 R22 K13 ["createElement"]
      104 GETUPVAL                         R23 8
      105 DUPTABLE                         R24 K28 [{"showParentalConsent", "canCollabAllPcApproved", "hasRequiresTrustedConnection", "LayoutOrder"}]
      106 SETTABLEKS                       R11 R24 K24 ["showParentalConsent"]
      108 GETTABLEKS                       R25 R0 K25 ["canCollabAllPcApproved"]
      110 SETTABLEKS                       R25 R24 K25 ["canCollabAllPcApproved"]
      112 SETTABLEKS                       R12 R24 K26 ["hasRequiresTrustedConnection"]
      114 MOVE                             R25 R1
      115 CALL                             R25 0 1
      116 SETTABLEKS                       R25 R24 K27 ["LayoutOrder"]
      118 CALL                             R22 2 1
      119 SETTABLEKS                       R22 R21 K18 ["Title"]
      121 GETUPVAL                         R22 2
      122 GETTABLEKS                       R22 R22 K13 ["createElement"]
      124 GETUPVAL                         R23 9
      125 DUPTABLE                         R24 K29 [{"showParentalConsent", "LayoutOrder"}]
      126 SETTABLEKS                       R11 R24 K24 ["showParentalConsent"]
      128 MOVE                             R25 R1
      129 CALL                             R25 0 1
      130 SETTABLEKS                       R25 R24 K27 ["LayoutOrder"]
      132 CALL                             R22 2 1
      133 SETTABLEKS                       R22 R21 K19 ["Subtitle"]
      135 GETUPVAL                         R22 2
      136 GETTABLEKS                       R22 R22 K13 ["createElement"]
      138 GETUPVAL                         R23 10
      139 DUPTABLE                         R24 K30 [{"LayoutOrder"}]
      140 MOVE                             R25 R1
      141 CALL                             R25 0 1
      142 SETTABLEKS                       R25 R24 K27 ["LayoutOrder"]
      144 CALL                             R22 2 1
      145 SETTABLEKS                       R22 R21 K20 ["TrustedConnectionsScrollView"]
      147 GETUPVAL                         R23 4
      148 JUMPIFNOT                        R23 ; [+37]
      149 GETUPVAL                         R22 2
      150 GETTABLEKS                       R22 R22 K13 ["createElement"]
      152 GETUPVAL                         R23 7
      153 GETTABLEKS                       R23 R23 K31 ["Checkbox"]
      155 DUPTABLE                         R24 K36 [{"LayoutOrder", "label", "isChecked", "onActivated", "size"}]
      156 MOVE                             R25 R1
      157 CALL                             R25 0 1
      158 SETTABLEKS                       R25 R24 K27 ["LayoutOrder"]
      160 LOADK                            R27 K37 ["MainView"]
      161 LOADK                            R28 K38 ["SnoozeAcknowledgement"]
      162 NAMECALL                         R25 R2 K39 ["getText"]
      164 CALL                             R25 3 1
      165 SETTABLEKS                       R25 R24 K32 ["label"]
      167 SETTABLEKS                       R9 R24 K33 ["isChecked"]
      169 NEWCLOSURE                       R25 P3
      170 CAPTURE                          UPVAL U5
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R9
      173 SETTABLEKS                       R25 R24 K34 ["onActivated"]
      175 GETUPVAL                         R25 7
      176 GETTABLEKS                       R25 R25 K40 ["Enums"]
      178 GETTABLEKS                       R25 R25 K41 ["InputSize"]
      180 GETTABLEKS                       R25 R25 K42 ["Small"]
      182 SETTABLEKS                       R25 R24 K35 ["size"]
      184 CALL                             R22 2 1
      185 JUMP                             ; [+1]
      186 LOADNIL                          R22
      187 SETTABLEKS                       R22 R21 K21 ["SnoozeCheckbox"]
      189 GETUPVAL                         R22 2
      190 GETTABLEKS                       R22 R22 K13 ["createElement"]
      192 GETUPVAL                         R23 11
      193 DUPTABLE                         R24 K52 [{"LayoutOrder", "showParentalConsent", "onOpenTrustedConnectionDialog", "canUseLinkedParent", "copied", "setCopied", "trustedFriendLink", "userIds", "universeId", "onRequestComplete", "snoozeAccepted", "onSnooze"}]
      194 MOVE                             R25 R1
      195 CALL                             R25 0 1
      196 SETTABLEKS                       R25 R24 K27 ["LayoutOrder"]
      198 SETTABLEKS                       R11 R24 K24 ["showParentalConsent"]
      200 GETTABLEKS                       R25 R0 K43 ["onOpenTrustedConnectionDialog"]
      202 SETTABLEKS                       R25 R24 K43 ["onOpenTrustedConnectionDialog"]
      204 GETTABLEKS                       R25 R0 K44 ["canUseLinkedParent"]
      206 SETTABLEKS                       R25 R24 K44 ["canUseLinkedParent"]
      208 SETTABLEKS                       R7 R24 K45 ["copied"]
      210 SETTABLEKS                       R8 R24 K46 ["setCopied"]
      212 GETTABLEKS                       R25 R4 K47 ["trustedFriendLink"]
      214 SETTABLEKS                       R25 R24 K47 ["trustedFriendLink"]
      216 SETTABLEKS                       R6 R24 K48 ["userIds"]
      218 GETTABLEKS                       R25 R0 K7 ["universeId"]
      220 SETTABLEKS                       R25 R24 K7 ["universeId"]
      222 GETTABLEKS                       R25 R0 K49 ["onRequestComplete"]
      224 SETTABLEKS                       R25 R24 K49 ["onRequestComplete"]
      226 SETTABLEKS                       R17 R24 K50 ["snoozeAccepted"]
      228 SETTABLEKS                       R16 R24 K51 ["onSnooze"]
      230 CALL                             R22 2 1
      231 SETTABLEKS                       R22 R21 K22 ["ButtonBar"]
      233 CALL                             R18 3 -1
      234 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TeamCreateCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["BrowserService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["ReactUtils"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["Foundation"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K10 ["Packages"]
       38 GETTABLEKS                       R6 R6 K14 ["Framework"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K15 ["ContextServices"]
       43 GETTABLEKS                       R7 R6 K16 ["Localization"]
       45 GETTABLEKS                       R8 R4 K17 ["Text"]
       47 GETTABLEKS                       R9 R3 K18 ["createNextOrder"]
       49 GETIMPORT                        R10 K9 [require]
       51 GETTABLEKS                       R11 R0 K19 ["Src"]
       53 GETTABLEKS                       R11 R11 K20 ["Components"]
       55 GETTABLEKS                       R11 R11 K21 ["TrustedConnectionWidget"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K9 [require]
       60 GETTABLEKS                       R12 R0 K22 ["Bin"]
       62 GETTABLEKS                       R12 R12 K23 ["Common"]
       64 GETTABLEKS                       R12 R12 K24 ["flags"]
       66 CALL                             R11 1 1
       67 GETTABLEKS                       R12 R11 K25 ["FStringTrustedConnectionsHelpdesk"]
       69 GETTABLEKS                       R13 R11 K26 ["FFlagStartPageTrustedConnectionSnackbar"]
       71 GETTABLEKS                       R14 R11 K27 ["FFlagTeamCreateCollaboratorsRemindMeLater"]
       73 GETIMPORT                        R15 K9 [require]
       75 GETTABLEKS                       R16 R0 K19 ["Src"]
       77 GETTABLEKS                       R16 R16 K28 ["Util"]
       79 GETTABLEKS                       R16 R16 K29 ["Services"]
       81 CALL                             R15 1 1
       82 GETTABLEKS                       R16 R15 K30 ["StudioService"]
       84 GETTABLEKS                       R17 R15 K31 ["StartPageService"]
       86 GETTABLEKS                       R18 R0 K19 ["Src"]
       88 GETTABLEKS                       R18 R18 K32 ["Contexts"]
       90 GETIMPORT                        R19 K9 [require]
       92 GETTABLEKS                       R20 R18 K33 ["ControllerContext"]
       94 CALL                             R19 1 1
       95 GETTABLEKS                       R20 R5 K28 ["Util"]
       97 GETTABLEKS                       R20 R20 K34 ["CrossPluginCommunication"]
       99 GETTABLEKS                       R21 R20 K35 ["new"]
      101 LOADK                            R22 K36 ["StartPageTeamCreateCollaborators"]
      102 CALL                             R21 1 1
      103 GETIMPORT                        R22 K9 [require]
      105 GETTABLEKS                       R23 R0 K19 ["Src"]
      107 GETTABLEKS                       R23 R23 K37 ["Hooks"]
      109 GETTABLEKS                       R23 R23 K38 ["useSendRequestToLinkedParent"]
      111 CALL                             R22 1 1
      112 GETIMPORT                        R23 K9 [require]
      114 GETTABLEKS                       R24 R0 K19 ["Src"]
      116 GETTABLEKS                       R24 R24 K28 ["Util"]
      118 GETTABLEKS                       R24 R24 K39 ["Telemetry"]
      120 GETTABLEKS                       R24 R24 K39 ["Telemetry"]
      122 CALL                             R23 1 1
      123 DUPCLOSURE                       R24 K40 [PROTO_1]
      124 CAPTURE                          VAL R1
      125 DUPCLOSURE                       R25 K41 [PROTO_2]
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R8
      129 DUPCLOSURE                       R26 K42 [PROTO_3]
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R8
      133 DUPCLOSURE                       R27 K43 [PROTO_11]
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R22
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R23
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R1
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R21
      146 DUPCLOSURE                       R28 K44 [PROTO_16]
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R19
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R23
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R25
      156 CAPTURE                          VAL R26
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R27
      159 RETURN                           R28 1
