PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CreatorConfigWVUrl"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 1
        6 JUMPIFEQKS                       R0 K4 [""] ; [+3]
        8 MOVE                             R1 R0
        9 JUMP                             ; [+8]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K5 ["BaseUrl"]
       13 LOADK                            R3 K6 ["https?://www%."]
       14 LOADK                            R4 K7 ["https://create."]
       15 NAMECALL                         R1 R1 K8 ["gsub"]
       17 CALL                             R1 3 1
       18 LENGTH                           R4 R1
       19 NAMECALL                         R2 R1 K9 ["sub"]
       21 CALL                             R2 2 1
       22 JUMPIFEQKS                       R2 K10 ["/"] ; [+4]
       24 MOVE                             R2 R1
       25 LOADK                            R3 K10 ["/"]
       26 CONCAT                           R1 R2 R3
       27 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        4 JUMPIF                           R1 ; [+34]
        5 LOADK                            R2 K2 ["%*dashboard/analytics/studio-configs"]
        6 GETIMPORT                        R5 K4 [game]
        8 LOADK                            R7 K5 ["CreatorConfigWVUrl"]
        9 NAMECALL                         R5 R5 K6 ["GetFastString"]
       11 CALL                             R5 2 1
       12 JUMPIFEQKS                       R5 K7 [""] ; [+3]
       14 MOVE                             R6 R5
       15 JUMP                             ; [+8]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K8 ["BaseUrl"]
       19 LOADK                            R8 K9 ["https?://www%."]
       20 LOADK                            R9 K10 ["https://create."]
       21 NAMECALL                         R6 R6 K11 ["gsub"]
       23 CALL                             R6 3 1
       24 LENGTH                           R9 R6
       25 NAMECALL                         R7 R6 K12 ["sub"]
       27 CALL                             R7 2 1
       28 JUMPIFEQKS                       R7 K13 ["/"] ; [+4]
       30 MOVE                             R7 R6
       31 LOADK                            R8 K13 ["/"]
       32 CONCAT                           R6 R7 R8
       33 MOVE                             R4 R6
       34 NAMECALL                         R2 R2 K14 ["format"]
       36 CALL                             R2 2 1
       37 MOVE                             R1 R2
       38 RETURN                           R1 1
       39 GETTABLEKS                       R1 R0 K0 ["props"]
       41 GETTABLEKS                       R1 R1 K1 ["Plugin"]
       43 LOADK                            R3 K15 ["universeid"]
       44 NAMECALL                         R1 R1 K16 ["GetItem"]
       46 CALL                             R1 2 1
       47 JUMPIFNOT                        R1 ; [+3]
       48 LOADN                            R2 0
       49 JUMPIFNOTLE                      R1 R2 ; [+38]
       51 JUMPIFNOT                        R1 ; [+34]
       52 LOADK                            R3 K2 ["%*dashboard/analytics/studio-configs"]
       53 GETIMPORT                        R6 K4 [game]
       55 LOADK                            R8 K5 ["CreatorConfigWVUrl"]
       56 NAMECALL                         R6 R6 K6 ["GetFastString"]
       58 CALL                             R6 2 1
       59 JUMPIFEQKS                       R6 K7 [""] ; [+3]
       61 MOVE                             R7 R6
       62 JUMP                             ; [+8]
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R7 R7 K8 ["BaseUrl"]
       66 LOADK                            R9 K9 ["https?://www%."]
       67 LOADK                            R10 K10 ["https://create."]
       68 NAMECALL                         R7 R7 K11 ["gsub"]
       70 CALL                             R7 3 1
       71 LENGTH                           R10 R7
       72 NAMECALL                         R8 R7 K12 ["sub"]
       74 CALL                             R8 2 1
       75 JUMPIFEQKS                       R8 K13 ["/"] ; [+4]
       77 MOVE                             R8 R7
       78 LOADK                            R9 K13 ["/"]
       79 CONCAT                           R7 R8 R9
       80 MOVE                             R5 R7
       81 NAMECALL                         R3 R3 K14 ["format"]
       83 CALL                             R3 2 1
       84 MOVE                             R2 R3
       85 RETURN                           R2 1
       86 LOADK                            R2 K7 [""]
       87 RETURN                           R2 1
       88 LOADK                            R3 K17 ["%*dashboard/creations/experiences/%*/configs/studio"]
       89 GETIMPORT                        R6 K4 [game]
       91 LOADK                            R8 K5 ["CreatorConfigWVUrl"]
       92 NAMECALL                         R6 R6 K6 ["GetFastString"]
       94 CALL                             R6 2 1
       95 JUMPIFEQKS                       R6 K7 [""] ; [+3]
       97 MOVE                             R7 R6
       98 JUMP                             ; [+8]
       99 GETUPVAL                         R7 0
      100 GETTABLEKS                       R7 R7 K8 ["BaseUrl"]
      102 LOADK                            R9 K9 ["https?://www%."]
      103 LOADK                            R10 K10 ["https://create."]
      104 NAMECALL                         R7 R7 K11 ["gsub"]
      106 CALL                             R7 3 1
      107 LENGTH                           R10 R7
      108 NAMECALL                         R8 R7 K12 ["sub"]
      110 CALL                             R8 2 1
      111 JUMPIFEQKS                       R8 K13 ["/"] ; [+4]
      113 MOVE                             R8 R7
      114 LOADK                            R9 K13 ["/"]
      115 CONCAT                           R7 R8 R9
      116 MOVE                             R5 R7
      117 MOVE                             R6 R1
      118 NAMECALL                         R3 R3 K14 ["format"]
      120 CALL                             R3 3 1
      121 MOVE                             R2 R3
      122 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 DUPTABLE                         R3 K6 [{"Common", "PublishDialog", "PublishAsDialog", "CancelPublishDialog"}]
        5 DUPTABLE                         R4 K10 [{"ConfigNounSingular", "ConfigNounPlural", "Retry"}]
        6 LOADK                            R7 K2 ["Common"]
        7 LOADK                            R8 K7 ["ConfigNounSingular"]
        8 NAMECALL                         R5 R2 K11 ["getText"]
       10 CALL                             R5 3 1
       11 SETTABLEKS                       R5 R4 K7 ["ConfigNounSingular"]
       13 LOADK                            R7 K2 ["Common"]
       14 LOADK                            R8 K8 ["ConfigNounPlural"]
       15 NAMECALL                         R5 R2 K11 ["getText"]
       17 CALL                             R5 3 1
       18 SETTABLEKS                       R5 R4 K8 ["ConfigNounPlural"]
       20 LOADK                            R7 K2 ["Common"]
       21 LOADK                            R8 K9 ["Retry"]
       22 NAMECALL                         R5 R2 K11 ["getText"]
       24 CALL                             R5 3 1
       25 SETTABLEKS                       R5 R4 K9 ["Retry"]
       27 SETTABLEKS                       R4 R3 K2 ["Common"]
       29 DUPTABLE                         R4 K17 [{"MessageFieldLabel", "MessageFieldHint", "MessageFieldPlaceholder", "PublishButton", "CancelButton"}]
       30 LOADK                            R7 K3 ["PublishDialog"]
       31 LOADK                            R8 K12 ["MessageFieldLabel"]
       32 NAMECALL                         R5 R2 K11 ["getText"]
       34 CALL                             R5 3 1
       35 SETTABLEKS                       R5 R4 K12 ["MessageFieldLabel"]
       37 LOADK                            R7 K3 ["PublishDialog"]
       38 LOADK                            R8 K13 ["MessageFieldHint"]
       39 NAMECALL                         R5 R2 K11 ["getText"]
       41 CALL                             R5 3 1
       42 SETTABLEKS                       R5 R4 K13 ["MessageFieldHint"]
       44 LOADK                            R7 K3 ["PublishDialog"]
       45 LOADK                            R8 K14 ["MessageFieldPlaceholder"]
       46 NAMECALL                         R5 R2 K11 ["getText"]
       48 CALL                             R5 3 1
       49 SETTABLEKS                       R5 R4 K14 ["MessageFieldPlaceholder"]
       51 DUPTABLE                         R5 K20 [{"GradualRollout", "ImmediateRollout"}]
       52 LOADK                            R8 K3 ["PublishDialog"]
       53 LOADK                            R9 K21 ["PublishSlowlyButton"]
       54 NAMECALL                         R6 R2 K11 ["getText"]
       56 CALL                             R6 3 1
       57 SETTABLEKS                       R6 R5 K18 ["GradualRollout"]
       59 LOADK                            R8 K3 ["PublishDialog"]
       60 LOADK                            R9 K15 ["PublishButton"]
       61 NAMECALL                         R6 R2 K11 ["getText"]
       63 CALL                             R6 3 1
       64 SETTABLEKS                       R6 R5 K19 ["ImmediateRollout"]
       66 SETTABLEKS                       R5 R4 K15 ["PublishButton"]
       68 LOADK                            R7 K3 ["PublishDialog"]
       69 LOADK                            R8 K16 ["CancelButton"]
       70 NAMECALL                         R5 R2 K11 ["getText"]
       72 CALL                             R5 3 1
       73 SETTABLEKS                       R5 R4 K16 ["CancelButton"]
       75 SETTABLEKS                       R4 R3 K3 ["PublishDialog"]
       77 DUPTABLE                         R4 K32 [{"SearchPlaceholder", "MyExperiences", "Description", "FailedToLoadUniverses", "FailedToLoadGroups", "NoExperiencesMatchFilter", "DoneButton", "PublishSuccess", "PublishFailure", "PublishInProgress"}]
       78 LOADK                            R7 K4 ["PublishAsDialog"]
       79 LOADK                            R8 K22 ["SearchPlaceholder"]
       80 NAMECALL                         R5 R2 K11 ["getText"]
       82 CALL                             R5 3 1
       83 SETTABLEKS                       R5 R4 K22 ["SearchPlaceholder"]
       85 LOADK                            R7 K4 ["PublishAsDialog"]
       86 LOADK                            R8 K23 ["MyExperiences"]
       87 NAMECALL                         R5 R2 K11 ["getText"]
       89 CALL                             R5 3 1
       90 SETTABLEKS                       R5 R4 K23 ["MyExperiences"]
       92 LOADK                            R7 K4 ["PublishAsDialog"]
       93 LOADK                            R8 K24 ["Description"]
       94 NAMECALL                         R5 R2 K11 ["getText"]
       96 CALL                             R5 3 1
       97 SETTABLEKS                       R5 R4 K24 ["Description"]
       99 LOADK                            R7 K4 ["PublishAsDialog"]
      100 LOADK                            R8 K25 ["FailedToLoadUniverses"]
      101 NAMECALL                         R5 R2 K11 ["getText"]
      103 CALL                             R5 3 1
      104 SETTABLEKS                       R5 R4 K25 ["FailedToLoadUniverses"]
      106 LOADK                            R7 K4 ["PublishAsDialog"]
      107 LOADK                            R8 K26 ["FailedToLoadGroups"]
      108 NAMECALL                         R5 R2 K11 ["getText"]
      110 CALL                             R5 3 1
      111 SETTABLEKS                       R5 R4 K26 ["FailedToLoadGroups"]
      113 LOADK                            R7 K4 ["PublishAsDialog"]
      114 LOADK                            R8 K27 ["NoExperiencesMatchFilter"]
      115 NAMECALL                         R5 R2 K11 ["getText"]
      117 CALL                             R5 3 1
      118 SETTABLEKS                       R5 R4 K27 ["NoExperiencesMatchFilter"]
      120 LOADK                            R7 K4 ["PublishAsDialog"]
      121 LOADK                            R8 K28 ["DoneButton"]
      122 NAMECALL                         R5 R2 K11 ["getText"]
      124 CALL                             R5 3 1
      125 SETTABLEKS                       R5 R4 K28 ["DoneButton"]
      127 LOADK                            R7 K4 ["PublishAsDialog"]
      128 LOADK                            R8 K29 ["PublishSuccess"]
      129 NAMECALL                         R5 R2 K11 ["getText"]
      131 CALL                             R5 3 1
      132 SETTABLEKS                       R5 R4 K29 ["PublishSuccess"]
      134 LOADK                            R7 K4 ["PublishAsDialog"]
      135 LOADK                            R8 K30 ["PublishFailure"]
      136 NAMECALL                         R5 R2 K11 ["getText"]
      138 CALL                             R5 3 1
      139 SETTABLEKS                       R5 R4 K30 ["PublishFailure"]
      141 LOADK                            R7 K4 ["PublishAsDialog"]
      142 LOADK                            R8 K31 ["PublishInProgress"]
      143 NAMECALL                         R5 R2 K11 ["getText"]
      145 CALL                             R5 3 1
      146 SETTABLEKS                       R5 R4 K31 ["PublishInProgress"]
      148 SETTABLEKS                       R4 R3 K4 ["PublishAsDialog"]
      150 DUPTABLE                         R4 K35 [{"Title", "Description", "ConfirmButton", "CancelButton"}]
      151 LOADK                            R7 K5 ["CancelPublishDialog"]
      152 LOADK                            R8 K33 ["Title"]
      153 NAMECALL                         R5 R2 K11 ["getText"]
      155 CALL                             R5 3 1
      156 SETTABLEKS                       R5 R4 K33 ["Title"]
      158 LOADK                            R7 K5 ["CancelPublishDialog"]
      159 LOADK                            R8 K24 ["Description"]
      160 NAMECALL                         R5 R2 K11 ["getText"]
      162 CALL                             R5 3 1
      163 SETTABLEKS                       R5 R4 K24 ["Description"]
      165 LOADK                            R7 K5 ["CancelPublishDialog"]
      166 LOADK                            R8 K34 ["ConfirmButton"]
      167 NAMECALL                         R5 R2 K11 ["getText"]
      169 CALL                             R5 3 1
      170 SETTABLEKS                       R5 R4 K34 ["ConfirmButton"]
      172 LOADK                            R7 K5 ["CancelPublishDialog"]
      173 LOADK                            R8 K16 ["CancelButton"]
      174 NAMECALL                         R5 R2 K11 ["getText"]
      176 CALL                             R5 3 1
      177 SETTABLEKS                       R5 R4 K16 ["CancelButton"]
      179 SETTABLEKS                       R4 R3 K5 ["CancelPublishDialog"]
      181 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["strategy"]
        2 JUMPIFEQKS                       R2 K1 ["DEPLOYMENT_STRATEGY_GRADUAL_ROLLOUT"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 GETTABLEKS                       R3 R0 K3 ["changeCount"]
        8 ORK                              R2 R3 K2 [1]
        9 JUMPIFNOTEQKN                    R2 K2 [1] ; [+7]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K4 ["Common"]
       14 GETTABLEKS                       R3 R3 K5 ["ConfigNounSingular"]
       16 JUMPIF                           R3 ; [+5]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K4 ["Common"]
       20 GETTABLEKS                       R3 R3 K6 ["ConfigNounPlural"]
       22 GETUPVAL                         R4 1
       23 GETUPVAL                         R6 2
       24 DUPTABLE                         R7 K9 [{"deploymentStrategy", "translationStrings"}]
       25 GETTABLEKS                       R8 R0 K0 ["strategy"]
       27 SETTABLEKS                       R8 R7 K7 ["deploymentStrategy"]
       29 DUPTABLE                         R8 K16 [{"Title", "MessageFieldLabel", "MessageFieldHint", "MessageFieldPlaceholder", "PublishButton", "CancelButton"}]
       30 GETUPVAL                         R9 3
       31 LOADK                            R11 K17 ["PublishDialog"]
       32 JUMPIFNOT                        R1 ; [+2]
       33 LOADK                            R12 K18 ["PublishSlowlyTitle"]
       34 JUMP                             ; [+1]
       35 LOADK                            R12 K19 ["PublishNowTitle"]
       36 DUPTABLE                         R13 K21 [{"changeCount", "noun"}]
       37 FASTCALL1                        TOSTRING R2 ; [+3]
       38 MOVE                             R15 R2
       39 GETIMPORT                        R14 K23 [tostring]
       41 CALL                             R14 1 1
       42 SETTABLEKS                       R14 R13 K3 ["changeCount"]
       44 SETTABLEKS                       R3 R13 K20 ["noun"]
       46 NAMECALL                         R9 R9 K24 ["getText"]
       48 CALL                             R9 4 1
       49 SETTABLEKS                       R9 R8 K10 ["Title"]
       51 GETUPVAL                         R9 0
       52 GETTABLEKS                       R9 R9 K17 ["PublishDialog"]
       54 GETTABLEKS                       R9 R9 K11 ["MessageFieldLabel"]
       56 SETTABLEKS                       R9 R8 K11 ["MessageFieldLabel"]
       58 GETUPVAL                         R9 0
       59 GETTABLEKS                       R9 R9 K17 ["PublishDialog"]
       61 GETTABLEKS                       R9 R9 K12 ["MessageFieldHint"]
       63 SETTABLEKS                       R9 R8 K12 ["MessageFieldHint"]
       65 GETUPVAL                         R9 0
       66 GETTABLEKS                       R9 R9 K17 ["PublishDialog"]
       68 GETTABLEKS                       R9 R9 K13 ["MessageFieldPlaceholder"]
       70 SETTABLEKS                       R9 R8 K13 ["MessageFieldPlaceholder"]
       72 JUMPIFNOT                        R1 ; [+8]
       73 GETUPVAL                         R9 0
       74 GETTABLEKS                       R9 R9 K17 ["PublishDialog"]
       76 GETTABLEKS                       R9 R9 K14 ["PublishButton"]
       78 GETTABLEKS                       R9 R9 K25 ["GradualRollout"]
       80 JUMPIF                           R9 ; [+7]
       81 GETUPVAL                         R9 0
       82 GETTABLEKS                       R9 R9 K17 ["PublishDialog"]
       84 GETTABLEKS                       R9 R9 K14 ["PublishButton"]
       86 GETTABLEKS                       R9 R9 K26 ["ImmediateRollout"]
       88 SETTABLEKS                       R9 R8 K14 ["PublishButton"]
       90 GETUPVAL                         R9 0
       91 GETTABLEKS                       R9 R9 K17 ["PublishDialog"]
       93 GETTABLEKS                       R9 R9 K15 ["CancelButton"]
       95 SETTABLEKS                       R9 R8 K15 ["CancelButton"]
       97 SETTABLEKS                       R8 R7 K8 ["translationStrings"]
       99 NAMECALL                         R4 R4 K27 ["ShowCustomDialogAsync"]
      101 CALL                             R4 3 1
      102 JUMPIFEQKNIL                     R4 ; [+19]
      104 GETUPVAL                         R5 4
      105 GETUPVAL                         R7 5
      106 GETTABLEKS                       R7 R7 K28 ["WebEvents"]
      108 GETTABLEKS                       R7 R7 K29 ["StartPublishWorkflow"]
      110 DUPTABLE                         R8 K31 [{"strategy", "message"}]
      111 GETTABLEKS                       R9 R0 K0 ["strategy"]
      113 SETTABLEKS                       R9 R8 K0 ["strategy"]
      115 GETTABLEKS                       R9 R4 K30 ["message"]
      117 SETTABLEKS                       R9 R8 K30 ["message"]
      119 NAMECALL                         R5 R5 K32 ["fire"]
      121 CALL                             R5 3 0
      122 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K1 [{"translationStrings"}]
        3 DUPTABLE                         R5 K6 [{"Title", "Description", "ConfirmButton", "CancelButton"}]
        4 GETUPVAL                         R6 2
        5 GETTABLEKS                       R6 R6 K7 ["CancelPublishDialog"]
        7 GETTABLEKS                       R6 R6 K2 ["Title"]
        9 SETTABLEKS                       R6 R5 K2 ["Title"]
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K7 ["CancelPublishDialog"]
       14 GETTABLEKS                       R6 R6 K3 ["Description"]
       16 SETTABLEKS                       R6 R5 K3 ["Description"]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K7 ["CancelPublishDialog"]
       21 GETTABLEKS                       R6 R6 K4 ["ConfirmButton"]
       23 SETTABLEKS                       R6 R5 K4 ["ConfirmButton"]
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K7 ["CancelPublishDialog"]
       28 GETTABLEKS                       R6 R6 K5 ["CancelButton"]
       30 SETTABLEKS                       R6 R5 K5 ["CancelButton"]
       32 SETTABLEKS                       R5 R4 K0 ["translationStrings"]
       34 NAMECALL                         R1 R1 K8 ["ShowCustomDialogAsync"]
       36 CALL                             R1 3 1
       37 JUMPIFNOT                        R1 ; [+9]
       38 GETUPVAL                         R2 3
       39 GETUPVAL                         R4 4
       40 GETTABLEKS                       R4 R4 K9 ["WebEvents"]
       42 GETTABLEKS                       R4 R4 K10 ["CancelPublishWorkflow"]
       44 NAMECALL                         R2 R2 K11 ["fire"]
       46 CALL                             R2 2 0
       47 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 GETTABLEKS                       R6 R5 K2 ["GameId"]
        7 GETUPVAL                         R7 0
        8 JUMPIFNOTEQ                      R6 R7 ; [+7]
       10 GETIMPORT                        R6 K5 [table.remove]
       12 MOVE                             R7 R0
       13 MOVE                             R8 R4
       14 CALL                             R6 2 0
       15 JUMP                             ; [+2]
       16 FORGLOOP                         R1 2 [inext] ; [-12]
       18 SETUPVAL                         R0 1
       19 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R1
        1 SETUPVAL                         R1 0
        2 RETURN                           R0 0

PROTO_7:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 1
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          REF R2
        8 NAMECALL                         R3 R3 K0 ["andThen"]
       10 CALL                             R3 2 1
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          REF R2
       13 NAMECALL                         R3 R3 K1 ["catch"]
       15 CALL                             R3 2 1
       16 NAMECALL                         R3 R3 K2 ["await"]
       18 CALL                             R3 1 0
       19 CLOSEUPVALS                      R2
       20 RETURN                           R2 1

PROTO_8:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_9:
        0 LOADNIL                          R1
        1 SETUPVAL                         R1 0
        2 RETURN                           R0 0

PROTO_10:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          REF R0
        5 NAMECALL                         R1 R1 K0 ["andThen"]
        7 CALL                             R1 2 1
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          REF R0
       10 NAMECALL                         R1 R1 K1 ["catch"]
       12 CALL                             R1 2 1
       13 NAMECALL                         R1 R1 K2 ["await"]
       15 CALL                             R1 1 0
       16 CLOSEUPVALS                      R0
       17 RETURN                           R0 1

PROTO_11:
        0 DUPTABLE                         R1 K2 [{[1] = True}]
        1 SETUPVAL                         R1 0
        2 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+3]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K0 ["unknown"]
        6 GETUPVAL                         R2 1
        7 LOADK                            R4 K1 ["PublishFailureReason"]
        8 MOVE                             R5 R1
        9 DUPTABLE                         R6 K3 [{"universeName"}]
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R7 R7 K4 ["universe"]
       13 GETTABLEKS                       R7 R7 K5 ["Name"]
       15 SETTABLEKS                       R7 R6 K2 ["universeName"]
       17 NAMECALL                         R2 R2 K6 ["getText"]
       19 CALL                             R2 4 1
       20 LOADB                            R3 1
       21 JUMPIFEQKS                       R0 K7 ["emptyDraft"] ; [+2]
       23 LOADB                            R3 0
       24 DUPTABLE                         R4 K10 [{"success", "message"}]
       25 SETTABLEKS                       R3 R4 K8 ["success"]
       27 SETTABLEKS                       R2 R4 K9 ["message"]
       29 SETUPVAL                         R4 3
       30 RETURN                           R0 0

PROTO_13:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["WebEvents"]
        5 GETTABLEKS                       R4 R4 K1 ["StartPublishAsWorkflow"]
        7 DUPTABLE                         R5 K5 [{"strategy", "message", "universeId"}]
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K2 ["strategy"]
       11 SETTABLEKS                       R6 R5 K2 ["strategy"]
       13 GETTABLEKS                       R6 R0 K3 ["message"]
       15 SETTABLEKS                       R6 R5 K3 ["message"]
       17 GETTABLEKS                       R6 R0 K6 ["universe"]
       19 GETTABLEKS                       R6 R6 K7 ["GameId"]
       21 SETTABLEKS                       R6 R5 K4 ["universeId"]
       23 NAMECALL                         R2 R2 K8 ["requestPublish"]
       25 CALL                             R2 3 1
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          REF R1
       28 NAMECALL                         R2 R2 K9 ["andThen"]
       30 CALL                             R2 2 1
       31 NEWCLOSURE                       R4 P1
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          VAL R0
       35 CAPTURE                          REF R1
       36 NAMECALL                         R2 R2 K10 ["catch"]
       38 CALL                             R2 2 1
       39 NAMECALL                         R2 R2 K11 ["await"]
       41 CALL                             R2 1 0
       42 CLOSEUPVALS                      R1
       43 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["PublishAsDialog"]
        2 LOADK                            R4 K1 ["PublishToExperienceSuccess"]
        3 DUPTABLE                         R5 K3 [{"universeName"}]
        4 GETTABLEKS                       R6 R0 K4 ["Name"]
        6 SETTABLEKS                       R6 R5 K2 ["universeName"]
        8 NAMECALL                         R1 R1 K5 ["getText"]
       10 CALL                             R1 4 -1
       11 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        5 LOADK                            R3 K2 ["universeid"]
        6 NAMECALL                         R1 R1 K3 ["GetItem"]
        8 CALL                             R1 2 1
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R1
       12 DUPCLOSURE                       R3 K4 [PROTO_10]
       13 CAPTURE                          UPVAL U2
       14 NEWCLOSURE                       R4 P2
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 GETTABLEKS                       R6 R0 K5 ["strategy"]
       22 JUMPIFEQKS                       R6 K6 ["DEPLOYMENT_STRATEGY_GRADUAL_ROLLOUT"] ; [+2]
       24 LOADB                            R5 0 +1
       25 LOADB                            R5 1
       26 GETTABLEKS                       R7 R0 K8 ["configsCount"]
       28 ORK                              R6 R7 K7 [1]
       29 GETUPVAL                         R7 5
       30 LOADK                            R9 K9 ["Common"]
       31 JUMPIFNOTEQKN                    R6 K7 [1] ; [+3]
       33 LOADK                            R10 K10 ["ConfigNounSingular"]
       34 JUMP                             ; [+1]
       35 LOADK                            R10 K11 ["ConfigNounPlural"]
       36 NAMECALL                         R7 R7 K12 ["getText"]
       38 CALL                             R7 3 1
       39 GETUPVAL                         R8 6
       40 GETUPVAL                         R10 7
       41 DUPTABLE                         R11 K18 [{"deploymentStrategy", "getUniverses", "getGroups", "requestPublish", "translationStrings"}]
       42 GETTABLEKS                       R12 R0 K5 ["strategy"]
       44 SETTABLEKS                       R12 R11 K13 ["deploymentStrategy"]
       46 SETTABLEKS                       R2 R11 K14 ["getUniverses"]
       48 SETTABLEKS                       R3 R11 K15 ["getGroups"]
       50 SETTABLEKS                       R4 R11 K16 ["requestPublish"]
       52 DUPTABLE                         R12 K37 [{"Title", "MessageFieldLabel", "MessageFieldHint", "MessageFieldPlaceholder", "PublishButton", "CancelButton", "SearchPlaceholder", "MyExperiences", "Description", "FailedToLoadUniverses", "FailedToLoadGroups", "NoExperiencesMatchFilter", "RetryButton", "DoneButton", "PublishSuccess", "PublishToExperienceSuccess", "PublishFailure", "PublishInProgress"}]
       53 GETUPVAL                         R13 5
       54 LOADK                            R15 K38 ["PublishAsDialog"]
       55 JUMPIFNOT                        R5 ; [+2]
       56 LOADK                            R16 K39 ["PublishSlowlyTitle"]
       57 JUMP                             ; [+1]
       58 LOADK                            R16 K40 ["PublishNowTitle"]
       59 DUPTABLE                         R17 K43 [{"changeCount", "noun"}]
       60 FASTCALL1                        TOSTRING R6 ; [+3]
       61 MOVE                             R19 R6
       62 GETIMPORT                        R18 K45 [tostring]
       64 CALL                             R18 1 1
       65 SETTABLEKS                       R18 R17 K41 ["changeCount"]
       67 SETTABLEKS                       R7 R17 K42 ["noun"]
       69 NAMECALL                         R13 R13 K12 ["getText"]
       71 CALL                             R13 4 1
       72 SETTABLEKS                       R13 R12 K19 ["Title"]
       74 GETUPVAL                         R13 8
       75 GETTABLEKS                       R13 R13 K46 ["PublishDialog"]
       77 GETTABLEKS                       R13 R13 K20 ["MessageFieldLabel"]
       79 SETTABLEKS                       R13 R12 K20 ["MessageFieldLabel"]
       81 GETUPVAL                         R13 8
       82 GETTABLEKS                       R13 R13 K46 ["PublishDialog"]
       84 GETTABLEKS                       R13 R13 K21 ["MessageFieldHint"]
       86 SETTABLEKS                       R13 R12 K21 ["MessageFieldHint"]
       88 GETUPVAL                         R13 8
       89 GETTABLEKS                       R13 R13 K46 ["PublishDialog"]
       91 GETTABLEKS                       R13 R13 K22 ["MessageFieldPlaceholder"]
       93 SETTABLEKS                       R13 R12 K22 ["MessageFieldPlaceholder"]
       95 JUMPIFNOT                        R5 ; [+8]
       96 GETUPVAL                         R13 8
       97 GETTABLEKS                       R13 R13 K46 ["PublishDialog"]
       99 GETTABLEKS                       R13 R13 K23 ["PublishButton"]
      101 GETTABLEKS                       R13 R13 K47 ["GradualRollout"]
      103 JUMPIF                           R13 ; [+7]
      104 GETUPVAL                         R13 8
      105 GETTABLEKS                       R13 R13 K46 ["PublishDialog"]
      107 GETTABLEKS                       R13 R13 K23 ["PublishButton"]
      109 GETTABLEKS                       R13 R13 K48 ["ImmediateRollout"]
      111 SETTABLEKS                       R13 R12 K23 ["PublishButton"]
      113 GETUPVAL                         R13 8
      114 GETTABLEKS                       R13 R13 K46 ["PublishDialog"]
      116 GETTABLEKS                       R13 R13 K24 ["CancelButton"]
      118 SETTABLEKS                       R13 R12 K24 ["CancelButton"]
      120 GETUPVAL                         R13 8
      121 GETTABLEKS                       R13 R13 K38 ["PublishAsDialog"]
      123 GETTABLEKS                       R13 R13 K25 ["SearchPlaceholder"]
      125 SETTABLEKS                       R13 R12 K25 ["SearchPlaceholder"]
      127 GETUPVAL                         R13 8
      128 GETTABLEKS                       R13 R13 K38 ["PublishAsDialog"]
      130 GETTABLEKS                       R13 R13 K26 ["MyExperiences"]
      132 SETTABLEKS                       R13 R12 K26 ["MyExperiences"]
      134 GETUPVAL                         R13 8
      135 GETTABLEKS                       R13 R13 K38 ["PublishAsDialog"]
      137 GETTABLEKS                       R13 R13 K27 ["Description"]
      139 SETTABLEKS                       R13 R12 K27 ["Description"]
      141 GETUPVAL                         R13 8
      142 GETTABLEKS                       R13 R13 K38 ["PublishAsDialog"]
      144 GETTABLEKS                       R13 R13 K28 ["FailedToLoadUniverses"]
      146 SETTABLEKS                       R13 R12 K28 ["FailedToLoadUniverses"]
      148 GETUPVAL                         R13 8
      149 GETTABLEKS                       R13 R13 K38 ["PublishAsDialog"]
      151 GETTABLEKS                       R13 R13 K29 ["FailedToLoadGroups"]
      153 SETTABLEKS                       R13 R12 K29 ["FailedToLoadGroups"]
      155 GETUPVAL                         R13 8
      156 GETTABLEKS                       R13 R13 K38 ["PublishAsDialog"]
      158 GETTABLEKS                       R13 R13 K30 ["NoExperiencesMatchFilter"]
      160 SETTABLEKS                       R13 R12 K30 ["NoExperiencesMatchFilter"]
      162 GETUPVAL                         R13 8
      163 GETTABLEKS                       R13 R13 K9 ["Common"]
      165 GETTABLEKS                       R13 R13 K49 ["Retry"]
      167 SETTABLEKS                       R13 R12 K31 ["RetryButton"]
      169 GETUPVAL                         R13 8
      170 GETTABLEKS                       R13 R13 K38 ["PublishAsDialog"]
      172 GETTABLEKS                       R13 R13 K32 ["DoneButton"]
      174 SETTABLEKS                       R13 R12 K32 ["DoneButton"]
      176 GETUPVAL                         R13 8
      177 GETTABLEKS                       R13 R13 K38 ["PublishAsDialog"]
      179 GETTABLEKS                       R13 R13 K33 ["PublishSuccess"]
      181 SETTABLEKS                       R13 R12 K33 ["PublishSuccess"]
      183 NEWCLOSURE                       R13 P3
      184 CAPTURE                          UPVAL U5
      185 SETTABLEKS                       R13 R12 K34 ["PublishToExperienceSuccess"]
      187 GETUPVAL                         R13 8
      188 GETTABLEKS                       R13 R13 K38 ["PublishAsDialog"]
      190 GETTABLEKS                       R13 R13 K35 ["PublishFailure"]
      192 SETTABLEKS                       R13 R12 K35 ["PublishFailure"]
      194 GETUPVAL                         R13 8
      195 GETTABLEKS                       R13 R13 K38 ["PublishAsDialog"]
      197 GETTABLEKS                       R13 R13 K36 ["PublishInProgress"]
      199 SETTABLEKS                       R13 R12 K36 ["PublishInProgress"]
      201 SETTABLEKS                       R12 R11 K17 ["translationStrings"]
      203 NAMECALL                         R8 R8 K50 ["ShowCustomDialogAsync"]
      205 CALL                             R8 3 0
      206 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["publishSessionUuid"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["pendingPublishes"]
        5 GETTABLE                         R2 R3 R1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 GETIMPORT                        R3 K4 [task.cancel]
       10 GETTABLEKS                       R4 R2 K5 ["timeoutTask"]
       12 CALL                             R3 1 0
       13 GETTABLEKS                       R3 R0 K6 ["success"]
       15 JUMPIFNOT                        R3 ; [+4]
       16 GETTABLEKS                       R3 R2 K7 ["resolve"]
       18 CALL                             R3 0 0
       19 JUMP                             ; [+6]
       20 GETTABLEKS                       R3 R2 K8 ["reject"]
       22 GETTABLEKS                       R5 R0 K10 ["error"]
       24 ORK                              R4 R5 K9 ["unknown"]
       25 CALL                             R3 1 0
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K1 ["pendingPublishes"]
       29 LOADNIL                          R4
       30 SETTABLE                         R4 R3 R1
       31 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        4 LOADK                            R4 K2 ["DialogManager"]
        5 NAMECALL                         R2 R2 K3 ["GetPluginComponent"]
        7 CALL                             R2 2 1
        8 GETTABLEKS                       R3 R1 K4 ["WebViewManagerContext"]
       10 GETTABLEKS                       R4 R1 K5 ["Localization"]
       12 GETTABLEKS                       R5 R0 K6 ["translationStrings"]
       14 NEWTABLE                         R6 4 0
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K7 ["WebEvents"]
       19 GETTABLEKS                       R7 R7 K8 ["OpenPublishModal"]
       21 NEWCLOSURE                       R8 P0
       22 CAPTURE                          VAL R5
       23 CAPTURE                          VAL R2
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R3
       27 CAPTURE                          UPVAL U0
       28 SETTABLE                         R8 R6 R7
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K7 ["WebEvents"]
       32 GETTABLEKS                       R7 R7 K9 ["CancelPublishModal"]
       34 NEWCLOSURE                       R8 P1
       35 CAPTURE                          VAL R2
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R3
       39 CAPTURE                          UPVAL U0
       40 SETTABLE                         R8 R6 R7
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K7 ["WebEvents"]
       44 GETTABLEKS                       R7 R7 K10 ["OpenPublishAsModal"]
       46 NEWCLOSURE                       R8 P2
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R2
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          VAL R5
       56 SETTABLE                         R8 R6 R7
       57 GETUPVAL                         R7 0
       58 GETTABLEKS                       R7 R7 K7 ["WebEvents"]
       60 GETTABLEKS                       R7 R7 K11 ["PublishCompleted"]
       62 NEWCLOSURE                       R8 P3
       63 CAPTURE                          VAL R0
       64 SETTABLE                         R8 R6 R7
       65 RETURN                           R6 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["timeout"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["pendingPublishes"]
        6 GETUPVAL                         R1 2
        7 LOADNIL                          R2
        8 SETTABLE                         R2 R0 R1
        9 RETURN                           R0 0

PROTO_19:
        0 GETIMPORT                        R2 K2 [task.delay]
        2 GETUPVAL                         R4 0
        3 ORK                              R3 R4 K3 [30]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K4 ["pendingPublishes"]
       12 GETUPVAL                         R4 2
       13 DUPTABLE                         R5 K8 [{"resolve", "reject", "timeoutTask"}]
       14 SETTABLEKS                       R0 R5 K5 ["resolve"]
       16 SETTABLEKS                       R1 R5 K6 ["reject"]
       18 SETTABLEKS                       R2 R5 K7 ["timeoutTask"]
       20 SETTABLE                         R5 R3 R4
       21 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R4 K1 ["WebViewManagerContext"]
        4 GETUPVAL                         R5 0
        5 LOADB                            R7 0
        6 NAMECALL                         R5 R5 K2 ["GenerateGUID"]
        8 CALL                             R5 2 1
        9 SETTABLEKS                       R5 R2 K3 ["publishSessionUuid"]
       11 MOVE                             R8 R1
       12 MOVE                             R9 R2
       13 NAMECALL                         R6 R4 K4 ["fire"]
       15 CALL                             R6 3 0
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K5 ["new"]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R5
       23 CALL                             R6 1 -1
       24 RETURN                           R6 -1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getConfigUrl"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+16]
        5 GETUPVAL                         R1 0
        6 JUMPIFNOT                        R1 ; [+14]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["state"]
       10 GETTABLEKS                       R1 R1 K2 ["configUrl"]
       12 JUMPIFEQ                         R0 R1 ; [+8]
       14 GETUPVAL                         R1 0
       15 DUPTABLE                         R3 K3 [{"configUrl"}]
       16 SETTABLEKS                       R0 R3 K2 ["configUrl"]
       18 NAMECALL                         R1 R1 K4 ["setState"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_22:
        0 DUPTABLE                         R1 K1 [{"configUrl"}]
        1 NAMECALL                         R2 R0 K2 ["getConfigUrl"]
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R2 R1 K0 ["configUrl"]
        6 SETTABLEKS                       R1 R0 K3 ["state"]
        8 GETTABLEKS                       R1 R0 K4 ["props"]
       10 GETTABLEKS                       R1 R1 K5 ["Plugin"]
       12 LOADK                            R3 K6 ["idsupdated"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R0
       15 NAMECALL                         R1 R1 K7 ["OnInvoke"]
       17 CALL                             R1 3 1
       18 SETTABLEKS                       R1 R0 K8 ["idsUpdatedConnection"]
       20 GETUPVAL                         R1 0
       21 CALL                             R1 0 1
       22 JUMPIFNOT                        R1 ; [+14]
       23 NAMECALL                         R1 R0 K9 ["getStaticTranslationStrings"]
       25 CALL                             R1 1 1
       26 SETTABLEKS                       R1 R0 K10 ["translationStrings"]
       28 NAMECALL                         R1 R0 K11 ["getEventHandlers"]
       30 CALL                             R1 1 1
       31 SETTABLEKS                       R1 R0 K12 ["eventHandlers"]
       33 NEWTABLE                         R1 0 0
       35 SETTABLEKS                       R1 R0 K13 ["pendingPublishes"]
       37 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R2 R2 K2 ["configUrl"]
        6 JUMPIFNOT                        R2 ; [+6]
        7 GETTABLEKS                       R2 R0 K1 ["state"]
        9 GETTABLEKS                       R2 R2 K2 ["configUrl"]
       11 JUMPIFNOTEQKS                    R2 K3 [""] ; [+3]
       13 LOADNIL                          R2
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R1 K4 ["Plugin"]
       17 LOADK                            R4 K5 ["CreatorConfigManager"]
       18 NAMECALL                         R2 R2 K6 ["GetPluginComponent"]
       20 CALL                             R2 2 1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K7 ["createElement"]
       24 GETUPVAL                         R4 1
       25 DUPTABLE                         R5 K19 [{["Plugin"], ["PluginManagerComponent"], ["WebViewManagerContext"], ["Url"], ["analyticsContext"] = "creatorConfig", ["offsetHeight"] = 0, ["initAutoRetryMaxAttempts"], ["retryTitle"], ["retryButtonText"], ["eventHandlers"]}]
       26 GETTABLEKS                       R6 R1 K4 ["Plugin"]
       28 SETTABLEKS                       R6 R5 K4 ["Plugin"]
       30 SETTABLEKS                       R2 R5 K8 ["PluginManagerComponent"]
       32 GETTABLEKS                       R6 R1 K9 ["WebViewManagerContext"]
       34 SETTABLEKS                       R6 R5 K9 ["WebViewManagerContext"]
       36 GETTABLEKS                       R6 R0 K1 ["state"]
       38 GETTABLEKS                       R6 R6 K2 ["configUrl"]
       40 SETTABLEKS                       R6 R5 K10 ["Url"]
       42 GETUPVAL                         R6 2
       43 CALL                             R6 0 1
       44 SETTABLEKS                       R6 R5 K15 ["initAutoRetryMaxAttempts"]
       46 GETTABLEKS                       R6 R1 K16 ["retryTitle"]
       48 SETTABLEKS                       R6 R5 K16 ["retryTitle"]
       50 GETTABLEKS                       R6 R1 K17 ["retryButtonText"]
       52 SETTABLEKS                       R6 R5 K17 ["retryButtonText"]
       54 GETTABLEKS                       R6 R0 K18 ["eventHandlers"]
       56 SETTABLEKS                       R6 R5 K18 ["eventHandlers"]
       58 CALL                             R3 2 -1
       59 RETURN                           R3 -1

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["idsUpdatedConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["idsUpdatedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CreatorConfig"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["HttpService"]
       17 NAMECALL                         R2 R2 K11 ["GetService"]
       19 CALL                             R2 2 1
       20 GETTABLEKS                       R3 R0 K12 ["Packages"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R3 K13 ["Roact"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R3 K14 ["StudioFoundation"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R3 K15 ["Framework"]
       36 CALL                             R6 1 1
       37 GETTABLEKS                       R7 R6 K16 ["Util"]
       39 GETTABLEKS                       R7 R7 K17 ["Promise"]
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R3 K18 ["WebView"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R9 R8 K19 ["WebViewPane"]
       48 GETIMPORT                        R10 K5 [require]
       50 GETTABLEKS                       R11 R0 K6 ["Src"]
       52 GETTABLEKS                       R11 R11 K16 ["Util"]
       54 GETTABLEKS                       R11 R11 K20 ["ConfigWebViewInitAutoRetry"]
       56 CALL                             R10 1 1
       57 GETTABLEKS                       R10 R10 K21 ["getIntMaxAttempts"]
       59 GETIMPORT                        R11 K5 [require]
       61 GETTABLEKS                       R12 R0 K6 ["Src"]
       63 GETTABLEKS                       R12 R12 K22 ["Network"]
       65 GETTABLEKS                       R12 R12 K23 ["GetCreatorUniverses"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K5 [require]
       70 GETTABLEKS                       R13 R0 K6 ["Src"]
       72 GETTABLEKS                       R13 R13 K22 ["Network"]
       74 GETTABLEKS                       R13 R13 K24 ["GetUserGroups"]
       76 CALL                             R12 1 1
       77 GETTABLEKS                       R13 R4 K25 ["PureComponent"]
       79 LOADK                            R15 K26 ["CreatorConfigWebViewConnector"]
       80 NAMECALL                         R13 R13 K27 ["extend"]
       82 CALL                             R13 2 1
       83 GETIMPORT                        R14 K9 [game]
       85 LOADK                            R16 K28 ["ContentProvider"]
       86 NAMECALL                         R14 R14 K11 ["GetService"]
       88 CALL                             R14 2 1
       89 GETIMPORT                        R15 K5 [require]
       91 GETTABLEKS                       R16 R0 K29 ["Bin"]
       93 GETTABLEKS                       R16 R16 K30 ["Common"]
       95 GETTABLEKS                       R16 R16 K31 ["defineLuaFlags"]
       97 CALL                             R15 1 1
       98 GETTABLEKS                       R16 R15 K32 ["getFFlagCreatorConfigStudioPublishWorkflow"]
      100 GETTABLEKS                       R17 R5 K16 ["Util"]
      102 GETTABLEKS                       R17 R17 K33 ["StudioUri"]
      104 GETTABLEKS                       R18 R17 K34 ["fromWidget"]
      106 LOADK                            R19 K2 ["CreatorConfig"]
      107 LOADK                            R20 K35 ["PublishDialog"]
      108 CALL                             R18 2 1
      109 GETTABLEKS                       R19 R17 K34 ["fromWidget"]
      111 LOADK                            R20 K2 ["CreatorConfig"]
      112 LOADK                            R21 K36 ["PublishAsDialog"]
      113 CALL                             R19 2 1
      114 GETTABLEKS                       R20 R17 K34 ["fromWidget"]
      116 LOADK                            R21 K2 ["CreatorConfig"]
      117 LOADK                            R22 K37 ["CancelPublishDialog"]
      118 CALL                             R20 2 1
      119 DUPTABLE                         R21 K46 [{["unknown"] = "Unknown", ["timeout"] = "Timeout", ["ongoingPublish"] = "OngoingPublish", ["emptyDraft"] = "EmptyDraft"}]
      120 DUPCLOSURE                       R22 K47 [PROTO_0]
      121 CAPTURE                          VAL R14
      122 DUPCLOSURE                       R23 K48 [PROTO_1]
      123 CAPTURE                          VAL R14
      124 SETTABLEKS                       R23 R13 K49 ["getConfigUrl"]
      126 DUPCLOSURE                       R23 K50 [PROTO_2]
      127 SETTABLEKS                       R23 R13 K51 ["getStaticTranslationStrings"]
      129 DUPCLOSURE                       R23 K52 [PROTO_17]
      130 CAPTURE                          VAL R1
      131 CAPTURE                          VAL R18
      132 CAPTURE                          VAL R20
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R21
      136 CAPTURE                          VAL R19
      137 SETTABLEKS                       R23 R13 K53 ["getEventHandlers"]
      139 DUPCLOSURE                       R23 K54 [PROTO_20]
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R7
      142 SETTABLEKS                       R23 R13 K55 ["requestPublish"]
      144 DUPCLOSURE                       R23 K56 [PROTO_22]
      145 CAPTURE                          VAL R16
      146 SETTABLEKS                       R23 R13 K57 ["init"]
      148 DUPCLOSURE                       R23 K58 [PROTO_23]
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R10
      152 SETTABLEKS                       R23 R13 K59 ["render"]
      154 DUPCLOSURE                       R23 K60 [PROTO_24]
      155 SETTABLEKS                       R23 R13 K61 ["willUnmount"]
      157 RETURN                           R13 1
