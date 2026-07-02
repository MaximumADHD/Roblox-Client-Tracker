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
       38 DUPTABLE                         R5 K15 [{["Text"], ["LayoutOrder"], ["tag"] = "size-0-0 auto-xy text-title-medium text-wrap text-align-x-left text-align-y-center"}]
       39 SETTABLEKS                       R2 R5 K11 ["Text"]
       41 GETTABLEKS                       R6 R0 K12 ["LayoutOrder"]
       43 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
       45 CALL                             R3 2 -1
       46 RETURN                           R3 -1

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
       25 DUPTABLE                         R5 K12 [{["Text"], ["LayoutOrder"], ["tag"] = "flex-y-fill size-0-0 auto-xy text-body-small text-wrap text-align-x-left"}]
       26 SETTABLEKS                       R2 R5 K8 ["Text"]
       28 GETTABLEKS                       R6 R0 K9 ["LayoutOrder"]
       30 SETTABLEKS                       R6 R5 K9 ["LayoutOrder"]
       32 CALL                             R3 2 -1
       33 RETURN                           R3 -1

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
       10 JUMPIFNOT                        R4 ; [+171]
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K2 ["createElement"]
       14 GETUPVAL                         R5 4
       15 GETTABLEKS                       R5 R5 K3 ["View"]
       17 DUPTABLE                         R6 K7 [{["tag"] = "row gap-small size-full-0 auto-y", ["LayoutOrder"]}]
       18 GETTABLEKS                       R7 R0 K6 ["LayoutOrder"]
       20 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       22 DUPTABLE                         R7 K12 [{"RemindMeLaterButton", "Spacer", "VPCButton", "LearnMoreButton"}]
       23 GETUPVAL                         R9 5
       24 JUMPIFNOT                        R9 ; [+48]
       25 GETUPVAL                         R8 3
       26 GETTABLEKS                       R8 R8 K2 ["createElement"]
       28 GETUPVAL                         R9 4
       29 GETTABLEKS                       R9 R9 K13 ["Button"]
       31 DUPTABLE                         R10 K19 [{"text", "LayoutOrder", "variant", "isDisabled", "onActivated", "size"}]
       32 LOADK                            R13 K20 ["MainView"]
       33 LOADK                            R14 K8 ["RemindMeLaterButton"]
       34 NAMECALL                         R11 R1 K21 ["getText"]
       36 CALL                             R11 3 1
       37 SETTABLEKS                       R11 R10 K14 ["text"]
       39 MOVE                             R11 R2
       40 CALL                             R11 0 1
       41 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
       43 GETUPVAL                         R11 4
       44 GETTABLEKS                       R11 R11 K22 ["Enums"]
       46 GETTABLEKS                       R11 R11 K23 ["ButtonVariant"]
       48 GETTABLEKS                       R11 R11 K24 ["Standard"]
       50 SETTABLEKS                       R11 R10 K15 ["variant"]
       52 GETTABLEKS                       R12 R0 K25 ["snoozeAccepted"]
       54 NOT                              R11 R12
       55 SETTABLEKS                       R11 R10 K16 ["isDisabled"]
       57 NEWCLOSURE                       R11 P0
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R11 R10 K17 ["onActivated"]
       62 GETUPVAL                         R11 4
       63 GETTABLEKS                       R11 R11 K22 ["Enums"]
       65 GETTABLEKS                       R11 R11 K26 ["InputSize"]
       67 GETTABLEKS                       R11 R11 K27 ["Small"]
       69 SETTABLEKS                       R11 R10 K18 ["size"]
       71 CALL                             R8 2 1
       72 JUMP                             ; [+1]
       73 LOADNIL                          R8
       74 SETTABLEKS                       R8 R7 K8 ["RemindMeLaterButton"]
       76 GETUPVAL                         R8 3
       77 GETTABLEKS                       R8 R8 K2 ["createElement"]
       79 GETUPVAL                         R9 4
       80 GETTABLEKS                       R9 R9 K3 ["View"]
       82 DUPTABLE                         R10 K29 [{["tag"] = "fill", ["LayoutOrder"]}]
       83 MOVE                             R11 R2
       84 CALL                             R11 0 1
       85 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
       87 CALL                             R8 2 1
       88 SETTABLEKS                       R8 R7 K9 ["Spacer"]
       90 GETUPVAL                         R8 3
       91 GETTABLEKS                       R8 R8 K2 ["createElement"]
       93 GETUPVAL                         R9 4
       94 GETTABLEKS                       R9 R9 K13 ["Button"]
       96 DUPTABLE                         R10 K30 [{"text", "LayoutOrder", "variant", "onActivated", "size"}]
       97 LOADK                            R13 K20 ["MainView"]
       98 LOADK                            R14 K31 ["AskParentButton"]
       99 NAMECALL                         R11 R1 K21 ["getText"]
      101 CALL                             R11 3 1
      102 SETTABLEKS                       R11 R10 K14 ["text"]
      104 MOVE                             R11 R2
      105 CALL                             R11 0 1
      106 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      108 GETUPVAL                         R11 4
      109 GETTABLEKS                       R11 R11 K22 ["Enums"]
      111 GETTABLEKS                       R11 R11 K23 ["ButtonVariant"]
      113 GETTABLEKS                       R11 R11 K32 ["Emphasis"]
      115 SETTABLEKS                       R11 R10 K15 ["variant"]
      117 NEWCLOSURE                       R11 P1
      118 CAPTURE                          VAL R0
      119 CAPTURE                          UPVAL U6
      120 CAPTURE                          VAL R3
      121 SETTABLEKS                       R11 R10 K17 ["onActivated"]
      123 GETUPVAL                         R11 4
      124 GETTABLEKS                       R11 R11 K22 ["Enums"]
      126 GETTABLEKS                       R11 R11 K26 ["InputSize"]
      128 GETTABLEKS                       R11 R11 K27 ["Small"]
      130 SETTABLEKS                       R11 R10 K18 ["size"]
      132 CALL                             R8 2 1
      133 SETTABLEKS                       R8 R7 K10 ["VPCButton"]
      135 GETUPVAL                         R8 3
      136 GETTABLEKS                       R8 R8 K2 ["createElement"]
      138 GETUPVAL                         R9 4
      139 GETTABLEKS                       R9 R9 K13 ["Button"]
      141 DUPTABLE                         R10 K30 [{"text", "LayoutOrder", "variant", "onActivated", "size"}]
      142 LOADK                            R13 K20 ["MainView"]
      143 LOADK                            R14 K33 ["ViewDetailsButton"]
      144 NAMECALL                         R11 R1 K21 ["getText"]
      146 CALL                             R11 3 1
      147 SETTABLEKS                       R11 R10 K14 ["text"]
      149 MOVE                             R11 R2
      150 CALL                             R11 0 1
      151 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      153 GETUPVAL                         R11 4
      154 GETTABLEKS                       R11 R11 K22 ["Enums"]
      156 GETTABLEKS                       R11 R11 K23 ["ButtonVariant"]
      158 GETTABLEKS                       R11 R11 K24 ["Standard"]
      160 SETTABLEKS                       R11 R10 K15 ["variant"]
      162 DUPCLOSURE                       R11 K34 [PROTO_6]
      163 CAPTURE                          UPVAL U6
      164 CAPTURE                          UPVAL U7
      165 CAPTURE                          UPVAL U8
      166 SETTABLEKS                       R11 R10 K17 ["onActivated"]
      168 GETUPVAL                         R11 4
      169 GETTABLEKS                       R11 R11 K22 ["Enums"]
      171 GETTABLEKS                       R11 R11 K26 ["InputSize"]
      173 GETTABLEKS                       R11 R11 K27 ["Small"]
      175 SETTABLEKS                       R11 R10 K18 ["size"]
      177 CALL                             R8 2 1
      178 SETTABLEKS                       R8 R7 K11 ["LearnMoreButton"]
      180 CALL                             R4 3 -1
      181 RETURN                           R4 -1
      182 GETUPVAL                         R4 3
      183 GETTABLEKS                       R4 R4 K2 ["createElement"]
      185 GETUPVAL                         R5 4
      186 GETTABLEKS                       R5 R5 K3 ["View"]
      188 DUPTABLE                         R6 K7 [{["tag"] = "row gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      189 GETTABLEKS                       R7 R0 K6 ["LayoutOrder"]
      191 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      193 DUPTABLE                         R7 K36 [{"RemindMeLaterButton", "Spacer", "CopyShareLinkButton", "LearnMoreButton"}]
      194 GETUPVAL                         R9 5
      195 JUMPIFNOT                        R9 ; [+48]
      196 GETUPVAL                         R8 3
      197 GETTABLEKS                       R8 R8 K2 ["createElement"]
      199 GETUPVAL                         R9 4
      200 GETTABLEKS                       R9 R9 K13 ["Button"]
      202 DUPTABLE                         R10 K19 [{"text", "LayoutOrder", "variant", "isDisabled", "onActivated", "size"}]
      203 LOADK                            R13 K20 ["MainView"]
      204 LOADK                            R14 K8 ["RemindMeLaterButton"]
      205 NAMECALL                         R11 R1 K21 ["getText"]
      207 CALL                             R11 3 1
      208 SETTABLEKS                       R11 R10 K14 ["text"]
      210 MOVE                             R11 R2
      211 CALL                             R11 0 1
      212 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      214 GETUPVAL                         R11 4
      215 GETTABLEKS                       R11 R11 K22 ["Enums"]
      217 GETTABLEKS                       R11 R11 K23 ["ButtonVariant"]
      219 GETTABLEKS                       R11 R11 K24 ["Standard"]
      221 SETTABLEKS                       R11 R10 K15 ["variant"]
      223 GETTABLEKS                       R12 R0 K25 ["snoozeAccepted"]
      225 NOT                              R11 R12
      226 SETTABLEKS                       R11 R10 K16 ["isDisabled"]
      228 NEWCLOSURE                       R11 P3
      229 CAPTURE                          UPVAL U6
      230 CAPTURE                          VAL R0
      231 SETTABLEKS                       R11 R10 K17 ["onActivated"]
      233 GETUPVAL                         R11 4
      234 GETTABLEKS                       R11 R11 K22 ["Enums"]
      236 GETTABLEKS                       R11 R11 K26 ["InputSize"]
      238 GETTABLEKS                       R11 R11 K27 ["Small"]
      240 SETTABLEKS                       R11 R10 K18 ["size"]
      242 CALL                             R8 2 1
      243 JUMP                             ; [+1]
      244 LOADNIL                          R8
      245 SETTABLEKS                       R8 R7 K8 ["RemindMeLaterButton"]
      247 GETUPVAL                         R8 3
      248 GETTABLEKS                       R8 R8 K2 ["createElement"]
      250 GETUPVAL                         R9 4
      251 GETTABLEKS                       R9 R9 K3 ["View"]
      253 DUPTABLE                         R10 K29 [{["tag"] = "fill", ["LayoutOrder"]}]
      254 MOVE                             R11 R2
      255 CALL                             R11 0 1
      256 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      258 CALL                             R8 2 1
      259 SETTABLEKS                       R8 R7 K9 ["Spacer"]
      261 GETTABLEKS                       R9 R0 K37 ["copied"]
      263 JUMPIF                           R9 ; [+46]
      264 GETUPVAL                         R8 3
      265 GETTABLEKS                       R8 R8 K2 ["createElement"]
      267 GETUPVAL                         R9 4
      268 GETTABLEKS                       R9 R9 K13 ["Button"]
      270 DUPTABLE                         R10 K30 [{"text", "LayoutOrder", "variant", "onActivated", "size"}]
      271 LOADK                            R13 K20 ["MainView"]
      272 LOADK                            R14 K38 ["GetLinkButton"]
      273 NAMECALL                         R11 R1 K21 ["getText"]
      275 CALL                             R11 3 1
      276 SETTABLEKS                       R11 R10 K14 ["text"]
      278 MOVE                             R11 R2
      279 CALL                             R11 0 1
      280 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      282 GETUPVAL                         R11 4
      283 GETTABLEKS                       R11 R11 K22 ["Enums"]
      285 GETTABLEKS                       R11 R11 K23 ["ButtonVariant"]
      287 GETTABLEKS                       R11 R11 K32 ["Emphasis"]
      289 SETTABLEKS                       R11 R10 K15 ["variant"]
      291 NEWCLOSURE                       R11 P4
      292 CAPTURE                          UPVAL U6
      293 CAPTURE                          UPVAL U9
      294 CAPTURE                          VAL R0
      295 CAPTURE                          UPVAL U10
      296 CAPTURE                          UPVAL U11
      297 SETTABLEKS                       R11 R10 K17 ["onActivated"]
      299 GETUPVAL                         R11 4
      300 GETTABLEKS                       R11 R11 K22 ["Enums"]
      302 GETTABLEKS                       R11 R11 K26 ["InputSize"]
      304 GETTABLEKS                       R11 R11 K27 ["Small"]
      306 SETTABLEKS                       R11 R10 K18 ["size"]
      308 CALL                             R8 2 1
      309 JUMP                             ; [+45]
      310 GETUPVAL                         R8 3
      311 GETTABLEKS                       R8 R8 K2 ["createElement"]
      313 GETUPVAL                         R9 4
      314 GETTABLEKS                       R9 R9 K13 ["Button"]
      316 DUPTABLE                         R10 K41 [{["icon"] = "check", ["text"], ["LayoutOrder"], ["variant"], ["onActivated"], ["size"]}]
      317 LOADK                            R13 K20 ["MainView"]
      318 LOADK                            R14 K42 ["CopiedToClipboard"]
      319 NAMECALL                         R11 R1 K21 ["getText"]
      321 CALL                             R11 3 1
      322 SETTABLEKS                       R11 R10 K14 ["text"]
      324 MOVE                             R11 R2
      325 CALL                             R11 0 1
      326 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      328 GETUPVAL                         R11 4
      329 GETTABLEKS                       R11 R11 K22 ["Enums"]
      331 GETTABLEKS                       R11 R11 K23 ["ButtonVariant"]
      333 GETTABLEKS                       R11 R11 K32 ["Emphasis"]
      335 SETTABLEKS                       R11 R10 K15 ["variant"]
      337 NEWCLOSURE                       R11 P5
      338 CAPTURE                          UPVAL U6
      339 CAPTURE                          UPVAL U9
      340 CAPTURE                          VAL R0
      341 CAPTURE                          UPVAL U10
      342 CAPTURE                          UPVAL U11
      343 SETTABLEKS                       R11 R10 K17 ["onActivated"]
      345 GETUPVAL                         R11 4
      346 GETTABLEKS                       R11 R11 K22 ["Enums"]
      348 GETTABLEKS                       R11 R11 K26 ["InputSize"]
      350 GETTABLEKS                       R11 R11 K27 ["Small"]
      352 SETTABLEKS                       R11 R10 K18 ["size"]
      354 CALL                             R8 2 1
      355 SETTABLEKS                       R8 R7 K35 ["CopyShareLinkButton"]
      357 GETUPVAL                         R8 3
      358 GETTABLEKS                       R8 R8 K2 ["createElement"]
      360 GETUPVAL                         R9 4
      361 GETTABLEKS                       R9 R9 K13 ["Button"]
      363 DUPTABLE                         R10 K30 [{"text", "LayoutOrder", "variant", "onActivated", "size"}]
      364 LOADK                            R13 K20 ["MainView"]
      365 LOADK                            R14 K33 ["ViewDetailsButton"]
      366 NAMECALL                         R11 R1 K21 ["getText"]
      368 CALL                             R11 3 1
      369 SETTABLEKS                       R11 R10 K14 ["text"]
      371 MOVE                             R11 R2
      372 CALL                             R11 0 1
      373 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      375 GETUPVAL                         R11 4
      376 GETTABLEKS                       R11 R11 K22 ["Enums"]
      378 GETTABLEKS                       R11 R11 K23 ["ButtonVariant"]
      380 GETTABLEKS                       R11 R11 K24 ["Standard"]
      382 SETTABLEKS                       R11 R10 K15 ["variant"]
      384 DUPCLOSURE                       R11 K43 [PROTO_10]
      385 CAPTURE                          UPVAL U6
      386 CAPTURE                          UPVAL U7
      387 CAPTURE                          UPVAL U8
      388 SETTABLEKS                       R11 R10 K17 ["onActivated"]
      390 GETUPVAL                         R11 4
      391 GETTABLEKS                       R11 R11 K22 ["Enums"]
      393 GETTABLEKS                       R11 R11 K26 ["InputSize"]
      395 GETTABLEKS                       R11 R11 K27 ["Small"]
      397 SETTABLEKS                       R11 R10 K18 ["size"]
      399 CALL                             R8 2 1
      400 SETTABLEKS                       R8 R7 K11 ["LearnMoreButton"]
      402 CALL                             R4 3 -1
      403 RETURN                           R4 -1

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
       96 DUPTABLE                         R20 K17 [{["tag"] = "col gap-small size-full-full padding-large radius-none bg-surface-200"}]
       97 DUPTABLE                         R21 K23 [{"Title", "Subtitle", "TrustedConnectionsScrollView", "SnoozeCheckbox", "ButtonBar"}]
       98 GETUPVAL                         R22 2
       99 GETTABLEKS                       R22 R22 K13 ["createElement"]
      101 GETUPVAL                         R23 8
      102 DUPTABLE                         R24 K28 [{"showParentalConsent", "canCollabAllPcApproved", "hasRequiresTrustedConnection", "LayoutOrder"}]
      103 SETTABLEKS                       R11 R24 K24 ["showParentalConsent"]
      105 GETTABLEKS                       R25 R0 K25 ["canCollabAllPcApproved"]
      107 SETTABLEKS                       R25 R24 K25 ["canCollabAllPcApproved"]
      109 SETTABLEKS                       R12 R24 K26 ["hasRequiresTrustedConnection"]
      111 MOVE                             R25 R1
      112 CALL                             R25 0 1
      113 SETTABLEKS                       R25 R24 K27 ["LayoutOrder"]
      115 CALL                             R22 2 1
      116 SETTABLEKS                       R22 R21 K18 ["Title"]
      118 GETUPVAL                         R22 2
      119 GETTABLEKS                       R22 R22 K13 ["createElement"]
      121 GETUPVAL                         R23 9
      122 DUPTABLE                         R24 K29 [{"showParentalConsent", "LayoutOrder"}]
      123 SETTABLEKS                       R11 R24 K24 ["showParentalConsent"]
      125 MOVE                             R25 R1
      126 CALL                             R25 0 1
      127 SETTABLEKS                       R25 R24 K27 ["LayoutOrder"]
      129 CALL                             R22 2 1
      130 SETTABLEKS                       R22 R21 K19 ["Subtitle"]
      132 GETUPVAL                         R22 2
      133 GETTABLEKS                       R22 R22 K13 ["createElement"]
      135 GETUPVAL                         R23 10
      136 DUPTABLE                         R24 K30 [{"LayoutOrder"}]
      137 MOVE                             R25 R1
      138 CALL                             R25 0 1
      139 SETTABLEKS                       R25 R24 K27 ["LayoutOrder"]
      141 CALL                             R22 2 1
      142 SETTABLEKS                       R22 R21 K20 ["TrustedConnectionsScrollView"]
      144 GETUPVAL                         R23 4
      145 JUMPIFNOT                        R23 ; [+37]
      146 GETUPVAL                         R22 2
      147 GETTABLEKS                       R22 R22 K13 ["createElement"]
      149 GETUPVAL                         R23 7
      150 GETTABLEKS                       R23 R23 K31 ["Checkbox"]
      152 DUPTABLE                         R24 K36 [{"LayoutOrder", "label", "isChecked", "onActivated", "size"}]
      153 MOVE                             R25 R1
      154 CALL                             R25 0 1
      155 SETTABLEKS                       R25 R24 K27 ["LayoutOrder"]
      157 LOADK                            R27 K37 ["MainView"]
      158 LOADK                            R28 K38 ["SnoozeAcknowledgement"]
      159 NAMECALL                         R25 R2 K39 ["getText"]
      161 CALL                             R25 3 1
      162 SETTABLEKS                       R25 R24 K32 ["label"]
      164 SETTABLEKS                       R9 R24 K33 ["isChecked"]
      166 NEWCLOSURE                       R25 P3
      167 CAPTURE                          UPVAL U5
      168 CAPTURE                          VAL R10
      169 CAPTURE                          VAL R9
      170 SETTABLEKS                       R25 R24 K34 ["onActivated"]
      172 GETUPVAL                         R25 7
      173 GETTABLEKS                       R25 R25 K40 ["Enums"]
      175 GETTABLEKS                       R25 R25 K41 ["InputSize"]
      177 GETTABLEKS                       R25 R25 K42 ["Small"]
      179 SETTABLEKS                       R25 R24 K35 ["size"]
      181 CALL                             R22 2 1
      182 JUMP                             ; [+1]
      183 LOADNIL                          R22
      184 SETTABLEKS                       R22 R21 K21 ["SnoozeCheckbox"]
      186 GETUPVAL                         R22 2
      187 GETTABLEKS                       R22 R22 K13 ["createElement"]
      189 GETUPVAL                         R23 11
      190 DUPTABLE                         R24 K52 [{"LayoutOrder", "showParentalConsent", "onOpenTrustedConnectionDialog", "canUseLinkedParent", "copied", "setCopied", "trustedFriendLink", "userIds", "universeId", "onRequestComplete", "snoozeAccepted", "onSnooze"}]
      191 MOVE                             R25 R1
      192 CALL                             R25 0 1
      193 SETTABLEKS                       R25 R24 K27 ["LayoutOrder"]
      195 SETTABLEKS                       R11 R24 K24 ["showParentalConsent"]
      197 GETTABLEKS                       R25 R0 K43 ["onOpenTrustedConnectionDialog"]
      199 SETTABLEKS                       R25 R24 K43 ["onOpenTrustedConnectionDialog"]
      201 GETTABLEKS                       R25 R0 K44 ["canUseLinkedParent"]
      203 SETTABLEKS                       R25 R24 K44 ["canUseLinkedParent"]
      205 SETTABLEKS                       R7 R24 K45 ["copied"]
      207 SETTABLEKS                       R8 R24 K46 ["setCopied"]
      209 GETTABLEKS                       R25 R4 K47 ["trustedFriendLink"]
      211 SETTABLEKS                       R25 R24 K47 ["trustedFriendLink"]
      213 SETTABLEKS                       R6 R24 K48 ["userIds"]
      215 GETTABLEKS                       R25 R0 K7 ["universeId"]
      217 SETTABLEKS                       R25 R24 K7 ["universeId"]
      219 GETTABLEKS                       R25 R0 K49 ["onRequestComplete"]
      221 SETTABLEKS                       R25 R24 K49 ["onRequestComplete"]
      223 SETTABLEKS                       R17 R24 K50 ["snoozeAccepted"]
      225 SETTABLEKS                       R16 R24 K51 ["onSnooze"]
      227 CALL                             R22 2 1
      228 SETTABLEKS                       R22 R21 K22 ["ButtonBar"]
      230 CALL                             R18 3 -1
      231 RETURN                           R18 -1

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
