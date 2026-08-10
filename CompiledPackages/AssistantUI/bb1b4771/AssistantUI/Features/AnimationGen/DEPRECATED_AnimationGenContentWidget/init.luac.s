PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R3 R3 K0 ["Root"]
        6 DUPTABLE                         R4 K5 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
        7 GETTABLEKS                       R5 R0 K1 ["LayoutOrder"]
        9 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       11 GETTABLEKS                       R6 R0 K6 ["canToggle"]
       13 JUMPIFNOT                        R6 ; [+3]
       14 GETTABLEKS                       R5 R0 K2 ["expanded"]
       16 JUMP                             ; [+1]
       17 LOADB                            R5 0
       18 SETTABLEKS                       R5 R4 K2 ["expanded"]
       20 GETTABLEKS                       R5 R0 K3 ["contentId"]
       22 SETTABLEKS                       R5 R4 K3 ["contentId"]
       24 GETTABLEKS                       R5 R0 K4 ["editThisContent"]
       26 SETTABLEKS                       R5 R4 K4 ["editThisContent"]
       28 DUPTABLE                         R5 K9 [{"Header", "Content"}]
       29 GETUPVAL                         R6 1
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K7 ["Header"]
       33 DUPTABLE                         R8 K11 [{"IsDisabled", "LayoutOrder"}]
       34 GETTABLEKS                       R10 R0 K6 ["canToggle"]
       36 NOT                              R9 R10
       37 SETTABLEKS                       R9 R8 K10 ["IsDisabled"]
       39 MOVE                             R9 R1
       40 CALL                             R9 0 1
       41 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       43 GETTABLEKS                       R9 R0 K12 ["headerChildren"]
       45 CALL                             R6 3 1
       46 SETTABLEKS                       R6 R5 K7 ["Header"]
       48 GETTABLEKS                       R6 R0 K13 ["children"]
       50 JUMPIFNOT                        R6 ; [+12]
       51 GETUPVAL                         R6 1
       52 GETUPVAL                         R7 2
       53 GETTABLEKS                       R7 R7 K8 ["Content"]
       55 DUPTABLE                         R8 K18 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True}]
       56 MOVE                             R9 R1
       57 CALL                             R9 0 1
       58 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       60 GETTABLEKS                       R9 R0 K13 ["children"]
       62 CALL                             R6 3 1
       63 SETTABLEKS                       R6 R5 K8 ["Content"]
       65 CALL                             R2 3 -1
       66 RETURN                           R2 -1

PROTO_1:
        0 DUPTABLE                         R0 K7 [{"Preparing", "Generating", "Generated", "Publish", "NoRigSelected", "NoPromptProvided", "GenerationFailed"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K8 ["AnimationGen"]
        3 LOADK                            R4 K0 ["Preparing"]
        4 NAMECALL                         R1 R1 K9 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Preparing"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K8 ["AnimationGen"]
       11 LOADK                            R4 K1 ["Generating"]
       12 NAMECALL                         R1 R1 K9 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Generating"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K8 ["AnimationGen"]
       19 LOADK                            R4 K2 ["Generated"]
       20 NAMECALL                         R1 R1 K9 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["Generated"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K8 ["AnimationGen"]
       27 LOADK                            R4 K3 ["Publish"]
       28 NAMECALL                         R1 R1 K9 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["Publish"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K8 ["AnimationGen"]
       35 LOADK                            R4 K4 ["NoRigSelected"]
       36 NAMECALL                         R1 R1 K9 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["NoRigSelected"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K8 ["AnimationGen"]
       43 LOADK                            R4 K5 ["NoPromptProvided"]
       44 NAMECALL                         R1 R1 K9 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["NoPromptProvided"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K8 ["AnimationGen"]
       51 LOADK                            R4 K6 ["GenerationFailed"]
       52 NAMECALL                         R1 R1 K9 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["GenerationFailed"]
       57 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["publishAnimationAsync"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["publishAnimationAsync"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onChipClicked"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onChipClicked"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["previewState"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["PreviewStates"]
        5 GETTABLEKS                       R3 R3 K2 ["GenerationSucceeded"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 GETTABLEKS                       R3 R0 K0 ["previewState"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K1 ["PreviewStates"]
       16 GETTABLEKS                       R4 R4 K3 ["GenerationFailed"]
       18 JUMPIFEQ                         R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 GETUPVAL                         R3 1
       23 LOADK                            R4 K4 ["KeyframeSequence"]
       24 CALL                             R3 1 1
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K5 ["useMemo"]
       28 DUPCLOSURE                       R5 K6 [PROTO_1]
       29 CAPTURE                          UPVAL U3
       30 NEWTABLE                         R6 0 1
       32 GETUPVAL                         R7 3
       33 GETTABLEKS                       R7 R7 K7 ["locale"]
       35 SETLIST                          R6 R7 1 [1]
       37 CALL                             R4 2 1
       38 LOADNIL                          R5
       39 LOADB                            R6 0
       40 GETTABLEKS                       R7 R0 K0 ["previewState"]
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R8 R8 K1 ["PreviewStates"]
       45 GETTABLEKS                       R8 R8 K8 ["Preparing"]
       47 JUMPIFNOTEQ                      R7 R8 ; [+5]
       49 GETTABLEKS                       R5 R4 K8 ["Preparing"]
       51 LOADB                            R6 1
       52 JUMP                             ; [+43]
       53 GETTABLEKS                       R7 R0 K0 ["previewState"]
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R8 R8 K1 ["PreviewStates"]
       58 GETTABLEKS                       R8 R8 K9 ["Generating"]
       60 JUMPIFNOTEQ                      R7 R8 ; [+5]
       62 GETTABLEKS                       R5 R4 K9 ["Generating"]
       64 LOADB                            R6 1
       65 JUMP                             ; [+30]
       66 JUMPIFNOT                        R2 ; [+27]
       67 GETTABLEKS                       R7 R0 K10 ["failureReason"]
       69 GETUPVAL                         R8 0
       70 GETTABLEKS                       R8 R8 K11 ["FailureReasons"]
       72 GETTABLEKS                       R8 R8 K12 ["NoRigSelected"]
       74 JUMPIFNOTEQ                      R7 R8 ; [+4]
       76 GETTABLEKS                       R5 R4 K12 ["NoRigSelected"]
       78 JUMP                             ; [+17]
       79 GETTABLEKS                       R7 R0 K10 ["failureReason"]
       81 GETUPVAL                         R8 0
       82 GETTABLEKS                       R8 R8 K11 ["FailureReasons"]
       84 GETTABLEKS                       R8 R8 K13 ["NoPromptProvided"]
       86 JUMPIFNOTEQ                      R7 R8 ; [+4]
       88 GETTABLEKS                       R5 R4 K13 ["NoPromptProvided"]
       90 JUMP                             ; [+5]
       91 GETTABLEKS                       R5 R4 K3 ["GenerationFailed"]
       93 JUMP                             ; [+2]
       94 GETTABLEKS                       R5 R4 K14 ["Generated"]
       96 GETUPVAL                         R7 2
       97 GETTABLEKS                       R7 R7 K15 ["useCallback"]
       99 NEWCLOSURE                       R8 P1
      100 CAPTURE                          VAL R0
      101 NEWTABLE                         R9 0 1
      103 GETTABLEKS                       R10 R0 K16 ["publishAnimationAsync"]
      105 SETLIST                          R9 R10 1 [1]
      107 CALL                             R7 2 1
      108 GETUPVAL                         R8 4
      109 CALL                             R8 0 1
      110 GETUPVAL                         R9 5
      111 GETUPVAL                         R10 6
      112 GETUPVAL                         R11 7
      113 GETTABLEKS                       R11 R11 K17 ["assign"]
      115 DUPTABLE                         R12 K20 [{"canToggle", "headerChildren"}]
      116 SETTABLEKS                       R1 R12 K18 ["canToggle"]
      118 DUPTABLE                         R13 K23 [{"Text", "ChipArea"}]
      119 GETUPVAL                         R14 5
      120 GETUPVAL                         R15 8
      121 DUPTABLE                         R16 K27 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      122 SETTABLEKS                       R5 R16 K21 ["Text"]
      124 MOVE                             R17 R8
      125 CALL                             R17 0 1
      126 SETTABLEKS                       R17 R16 K26 ["LayoutOrder"]
      128 DUPTABLE                         R17 K29 [{"Shimmer"}]
      129 MOVE                             R18 R6
      130 JUMPIFNOT                        R18 ; [+3]
      131 GETUPVAL                         R18 5
      132 GETUPVAL                         R19 9
      133 CALL                             R18 1 1
      134 SETTABLEKS                       R18 R17 K28 ["Shimmer"]
      136 CALL                             R14 3 1
      137 SETTABLEKS                       R14 R13 K21 ["Text"]
      139 MOVE                             R14 R1
      140 JUMPIFNOT                        R14 ; [+41]
      141 LOADB                            R14 0
      142 GETTABLEKS                       R15 R0 K30 ["displayName"]
      144 JUMPIFEQKNIL                     R15 ; [+37]
      146 GETUPVAL                         R14 5
      147 GETUPVAL                         R15 10
      148 DUPTABLE                         R16 K32 [{["tag"] = "align-x-left align-y-center fill", ["LayoutOrder"]}]
      149 MOVE                             R17 R8
      150 CALL                             R17 0 1
      151 SETTABLEKS                       R17 R16 K26 ["LayoutOrder"]
      153 DUPTABLE                         R17 K34 [{"AnimationLink"}]
      154 GETUPVAL                         R18 5
      155 GETUPVAL                         R19 11
      156 DUPTABLE                         R20 K41 [{["text"], ["leading"], ["onActivated"], ["isChecked"] = False, ["size"]}]
      157 GETTABLEKS                       R21 R0 K30 ["displayName"]
      159 SETTABLEKS                       R21 R20 K35 ["text"]
      161 GETTABLEKS                       R21 R3 K42 ["Image"]
      163 SETTABLEKS                       R21 R20 K36 ["leading"]
      165 NEWCLOSURE                       R21 P2
      166 CAPTURE                          VAL R0
      167 SETTABLEKS                       R21 R20 K37 ["onActivated"]
      169 GETUPVAL                         R21 12
      170 GETTABLEKS                       R21 R21 K43 ["Enums"]
      172 GETTABLEKS                       R21 R21 K44 ["ChipSize"]
      174 GETTABLEKS                       R21 R21 K45 ["Small"]
      176 SETTABLEKS                       R21 R20 K40 ["size"]
      178 CALL                             R18 2 1
      179 SETTABLEKS                       R18 R17 K33 ["AnimationLink"]
      181 CALL                             R14 3 1
      182 SETTABLEKS                       R14 R13 K22 ["ChipArea"]
      184 SETTABLEKS                       R13 R12 K19 ["headerChildren"]
      186 MOVE                             R13 R0
      187 CALL                             R11 2 1
      188 DUPTABLE                         R12 K48 [{"PlaybackWidget", "PublishButton"}]
      189 MOVE                             R13 R1
      190 JUMPIFNOT                        R13 ; [+32]
      191 GETUPVAL                         R13 5
      192 GETUPVAL                         R14 13
      193 DUPTABLE                         R15 K56 [{"layoutOrder", "duration", "animatorRemovedSignal", "rigSelectedSignal", "setHostIsPlaying", "setHostCurrentTime", "setHostPlaybackSpeed"}]
      194 MOVE                             R16 R8
      195 CALL                             R16 0 1
      196 SETTABLEKS                       R16 R15 K49 ["layoutOrder"]
      198 GETTABLEKS                       R16 R0 K50 ["duration"]
      200 SETTABLEKS                       R16 R15 K50 ["duration"]
      202 GETTABLEKS                       R16 R0 K51 ["animatorRemovedSignal"]
      204 SETTABLEKS                       R16 R15 K51 ["animatorRemovedSignal"]
      206 GETTABLEKS                       R16 R0 K52 ["rigSelectedSignal"]
      208 SETTABLEKS                       R16 R15 K52 ["rigSelectedSignal"]
      210 GETTABLEKS                       R16 R0 K53 ["setHostIsPlaying"]
      212 SETTABLEKS                       R16 R15 K53 ["setHostIsPlaying"]
      214 GETTABLEKS                       R16 R0 K54 ["setHostCurrentTime"]
      216 SETTABLEKS                       R16 R15 K54 ["setHostCurrentTime"]
      218 GETTABLEKS                       R16 R0 K55 ["setHostPlaybackSpeed"]
      220 SETTABLEKS                       R16 R15 K55 ["setHostPlaybackSpeed"]
      222 CALL                             R13 2 1
      223 SETTABLEKS                       R13 R12 K46 ["PlaybackWidget"]
      225 MOVE                             R13 R1
      226 JUMPIFNOT                        R13 ; [+32]
      227 GETUPVAL                         R13 5
      228 GETUPVAL                         R14 14
      229 DUPTABLE                         R15 K58 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      230 MOVE                             R16 R8
      231 CALL                             R16 0 1
      232 SETTABLEKS                       R16 R15 K26 ["LayoutOrder"]
      234 GETTABLEKS                       R16 R4 K59 ["Publish"]
      236 SETTABLEKS                       R16 R15 K35 ["text"]
      238 GETUPVAL                         R16 12
      239 GETTABLEKS                       R16 R16 K43 ["Enums"]
      241 GETTABLEKS                       R16 R16 K60 ["InputSize"]
      243 GETTABLEKS                       R16 R16 K45 ["Small"]
      245 SETTABLEKS                       R16 R15 K40 ["size"]
      247 GETUPVAL                         R16 12
      248 GETTABLEKS                       R16 R16 K43 ["Enums"]
      250 GETTABLEKS                       R16 R16 K61 ["ButtonVariant"]
      252 GETTABLEKS                       R16 R16 K62 ["Standard"]
      254 SETTABLEKS                       R16 R15 K57 ["variant"]
      256 SETTABLEKS                       R7 R15 K37 ["onActivated"]
      258 CALL                             R13 2 1
      259 SETTABLEKS                       R13 R12 K47 ["PublishButton"]
      261 CALL                             R9 3 -1
      262 RETURN                           R9 -1

PROTO_5:
        0 DUPTABLE                         R1 K3 [{"previewState", "prompt", "duration"}]
        1 GETTABLEKS                       R2 R0 K0 ["previewState"]
        3 SETTABLEKS                       R2 R1 K0 ["previewState"]
        5 GETTABLEKS                       R2 R0 K1 ["prompt"]
        7 SETTABLEKS                       R2 R1 K1 ["prompt"]
        9 GETTABLEKS                       R2 R0 K2 ["duration"]
       11 SETTABLEKS                       R2 R1 K2 ["duration"]
       13 RETURN                           R1 1

PROTO_6:
        0 DUPTABLE                         R2 K5 [{[1] = "AnimationGen", ["previewState"], ["prompt"], ["duration"]}]
        1 GETTABLEKS                       R3 R0 K2 ["previewState"]
        3 SETTABLEKS                       R3 R2 K2 ["previewState"]
        5 GETTABLEKS                       R3 R0 K3 ["prompt"]
        7 SETTABLEKS                       R3 R2 K3 ["prompt"]
        9 GETTABLEKS                       R3 R0 K4 ["duration"]
       11 SETTABLEKS                       R3 R2 K4 ["duration"]
       13 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Accordion"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Util"]
       20 GETTABLEKS                       R4 R4 K10 ["AnimationGen"]
       22 GETTABLEKS                       R4 R4 K11 ["AnimationGenTypes"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R1 K12 ["Foundation"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R4 R4 K13 ["Chip"]
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R1 K14 ["Dash"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R1 K12 ["Foundation"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETIMPORT                        R8 K1 [script]
       46 GETTABLEKS                       R8 R8 K15 ["PlaybackWidget"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R1 K16 ["React"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R1 K17 ["ReactUtils"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R0 K9 ["Util"]
       63 GETTABLEKS                       R11 R11 K18 ["Serializer"]
       65 GETTABLEKS                       R11 R11 K19 ["SerializerTypes"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K7 ["Components"]
       72 GETTABLEKS                       R12 R12 K20 ["ShimmerGradient"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R1 K21 ["Signal"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R14 R0 K22 ["Resources"]
       84 GETTABLEKS                       R14 R14 K23 ["Localization"]
       86 GETTABLEKS                       R14 R14 K24 ["Translator"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R15 R0 K25 ["Types"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K6 [require]
       96 GETTABLEKS                       R16 R0 K26 ["Hooks"]
       98 GETTABLEKS                       R16 R16 K27 ["useClassIcon"]
      100 CALL                             R15 1 1
      101 GETTABLEKS                       R16 R6 K28 ["Button"]
      103 GETTABLEKS                       R17 R6 K29 ["Text"]
      105 GETTABLEKS                       R18 R6 K30 ["View"]
      107 GETTABLEKS                       R19 R9 K31 ["createNextOrder"]
      109 GETTABLEKS                       R20 R8 K32 ["createElement"]
      111 DUPCLOSURE                       R21 K33 [PROTO_0]
      112 CAPTURE                          VAL R19
      113 CAPTURE                          VAL R20
      114 CAPTURE                          VAL R2
      115 DUPCLOSURE                       R22 K34 [PROTO_4]
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R15
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R19
      121 CAPTURE                          VAL R20
      122 CAPTURE                          VAL R21
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R18
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R16
      131 DUPTABLE                         R23 K37 [{"toMeta", "fromMeta"}]
      132 DUPCLOSURE                       R24 K38 [PROTO_5]
      133 SETTABLEKS                       R24 R23 K35 ["toMeta"]
      135 DUPCLOSURE                       R24 K39 [PROTO_6]
      136 SETTABLEKS                       R24 R23 K36 ["fromMeta"]
      138 DUPTABLE                         R24 K43 [{["Type"] = "AnimationGen", ["ContentWidget"], ["Serialization"]}]
      139 GETTABLEKS                       R25 R8 K44 ["memo"]
      141 MOVE                             R26 R22
      142 CALL                             R25 1 1
      143 SETTABLEKS                       R25 R24 K41 ["ContentWidget"]
      145 SETTABLEKS                       R23 R24 K42 ["Serialization"]
      147 RETURN                           R24 1
