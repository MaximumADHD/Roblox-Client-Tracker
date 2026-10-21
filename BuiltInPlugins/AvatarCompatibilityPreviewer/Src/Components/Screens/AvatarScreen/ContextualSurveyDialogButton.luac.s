PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKS                    R1 K0 ["AvatarCreation"] ; [+10]
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K1 ["sendAvatarCreationFeedback"]
        5 MOVE                             R4 R0
        6 GETUPVAL                         R5 2
        7 GETUPVAL                         R6 3
        8 NAMECALL                         R1 R1 K2 ["report"]
       10 CALL                             R1 5 0
       11 JUMP                             ; [+14]
       12 GETUPVAL                         R1 1
       13 LOADK                            R3 K3 ["sendAutoSetupSurvey"]
       14 MOVE                             R4 R0
       15 GETUPVAL                         R5 4
       16 GETUPVAL                         R6 5
       17 GETTABLEKS                       R6 R6 K4 ["Avatar"]
       19 GETTABLEKS                       R6 R6 K5 ["WorldModel"]
       21 CALL                             R5 1 1
       22 GETUPVAL                         R6 6
       23 NAMECALL                         R1 R1 K2 ["report"]
       25 CALL                             R1 5 0
       26 GETUPVAL                         R1 7
       27 LOADB                            R2 1
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["ContextualSurveyDialogButton"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R4 R0 K2 ["Avatar"]
       12 GETTABLEKS                       R4 R4 K3 ["WorldModel"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R5 R0 K2 ["Avatar"]
       18 GETTABLEKS                       R5 R5 K3 ["WorldModel"]
       20 GETUPVAL                         R6 4
       21 GETTABLEKS                       R6 R6 K4 ["ATTRIBUTE_AVATAR_CREATION_JOB_ID"]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R6 R0 K2 ["Avatar"]
       27 GETTABLEKS                       R6 R6 K3 ["WorldModel"]
       29 GETUPVAL                         R7 4
       30 GETTABLEKS                       R7 R7 K5 ["ATTRIBUTE_AVATAR_CREATION_PROMPT"]
       32 CALL                             R5 2 1
       33 GETUPVAL                         R7 5
       34 CALL                             R7 0 1
       35 JUMPIFNOT                        R7 ; [+4]
       36 JUMPIFEQKNIL                     R4 ; [+3]
       38 LOADK                            R6 K6 ["AvatarCreation"]
       39 JUMP                             ; [+4]
       40 JUMPIFNOT                        R3 ; [+2]
       41 LOADK                            R6 K7 ["AutoSetup"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R6
       44 GETUPVAL                         R7 6
       45 GETTABLEKS                       R8 R0 K2 ["Avatar"]
       47 GETTABLEKS                       R8 R8 K3 ["WorldModel"]
       49 JUMPIFNOTEQKS                    R6 K6 ["AvatarCreation"] ; [+3]
       51 LOADK                            R9 K8 ["completedAvatarCreationSurvey"]
       52 JUMP                             ; [+1]
       53 LOADK                            R9 K9 ["completedAutoSetupSurvey"]
       54 LOADB                            R10 0
       55 CALL                             R7 3 2
       56 GETUPVAL                         R9 6
       57 GETTABLEKS                       R10 R0 K2 ["Avatar"]
       59 GETTABLEKS                       R10 R10 K3 ["WorldModel"]
       61 GETUPVAL                         R11 4
       62 GETTABLEKS                       R11 R11 K10 ["ATTRIBUTE_AUTO_SETUP_INPUT_ASSET"]
       64 LOADNIL                          R12
       65 CALL                             R9 3 1
       66 GETUPVAL                         R10 7
       67 LOADB                            R11 0
       68 CALL                             R10 1 1
       69 GETUPVAL                         R11 8
       70 GETTABLEKS                       R11 R11 K11 ["useEventCallback"]
       72 NEWCLOSURE                       R12 P0
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R5
       77 CAPTURE                          UPVAL U9
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R8
       81 CALL                             R11 1 1
       82 JUMPIFNOTEQKNIL                  R6 ; [+3]
       84 LOADNIL                          R12
       85 RETURN                           R12 1
       86 GETUPVAL                         R12 10
       87 GETTABLEKS                       R12 R12 K12 ["createElement"]
       89 GETUPVAL                         R13 10
       90 GETTABLEKS                       R13 R13 K13 ["Fragment"]
       92 NEWTABLE                         R14 0 0
       94 DUPTABLE                         R15 K15 [{"SurveyDialog", "ContextualSurveyDialogButton"}]
       95 GETTABLEKS                       R16 R10 K16 ["enabled"]
       97 JUMPIFNOT                        R16 ; [+14]
       98 GETUPVAL                         R16 10
       99 GETTABLEKS                       R16 R16 K12 ["createElement"]
      101 GETUPVAL                         R17 11
      102 DUPTABLE                         R18 K20 [{"survey", "close", "submitResults"}]
      103 SETTABLEKS                       R6 R18 K17 ["survey"]
      105 GETTABLEKS                       R19 R10 K21 ["disable"]
      107 SETTABLEKS                       R19 R18 K18 ["close"]
      109 SETTABLEKS                       R11 R18 K19 ["submitResults"]
      111 CALL                             R16 2 1
      112 SETTABLEKS                       R16 R15 K14 ["SurveyDialog"]
      114 NOT                              R16 R7
      115 JUMPIFNOT                        R16 ; [+37]
      116 GETUPVAL                         R16 10
      117 GETTABLEKS                       R16 R16 K12 ["createElement"]
      119 LOADK                            R17 K22 ["ImageButton"]
      120 NEWTABLE                         R18 8 0
      122 GETIMPORT                        R19 K25 [Vector2.new]
      124 LOADN                            R20 0
      125 LOADN                            R21 1
      126 CALL                             R19 2 1
      127 SETTABLEKS                       R19 R18 K26 ["AnchorPoint"]
      129 LOADN                            R19 1
      130 SETTABLEKS                       R19 R18 K27 ["BackgroundTransparency"]
      132 GETTABLEKS                       R19 R2 K28 ["Image"]
      134 SETTABLEKS                       R19 R18 K28 ["Image"]
      136 GETTABLEKS                       R19 R2 K29 ["Position"]
      138 SETTABLEKS                       R19 R18 K29 ["Position"]
      140 GETTABLEKS                       R19 R2 K30 ["Size"]
      142 SETTABLEKS                       R19 R18 K30 ["Size"]
      144 GETUPVAL                         R19 10
      145 GETTABLEKS                       R19 R19 K31 ["Event"]
      147 GETTABLEKS                       R19 R19 K32 ["Activated"]
      149 GETTABLEKS                       R20 R10 K33 ["enable"]
      151 SETTABLE                         R20 R18 R19
      152 CALL                             R16 2 1
      153 SETTABLEKS                       R16 R15 K1 ["ContextualSurveyDialogButton"]
      155 CALL                             R12 3 -1
      156 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Components"]
       41 GETTABLEKS                       R6 R6 K13 ["SurveyDialog"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K10 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Resources"]
       50 GETTABLEKS                       R7 R7 K15 ["Theme"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K10 ["Src"]
       57 GETTABLEKS                       R8 R8 K16 ["Hooks"]
       59 GETTABLEKS                       R8 R8 K17 ["useAttribute"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K10 ["Src"]
       66 GETTABLEKS                       R9 R9 K16 ["Hooks"]
       68 GETTABLEKS                       R9 R9 K18 ["useCreatedByAutoSetup"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K10 ["Src"]
       75 GETTABLEKS                       R10 R10 K16 ["Hooks"]
       77 GETTABLEKS                       R10 R10 K19 ["useSerializedState"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K10 ["Src"]
       84 GETTABLEKS                       R11 R11 K16 ["Hooks"]
       86 GETTABLEKS                       R11 R11 K20 ["useToggleState"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K10 ["Src"]
       93 GETTABLEKS                       R12 R12 K21 ["Util"]
       95 GETTABLEKS                       R12 R12 K22 ["Constants"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K10 ["Src"]
      102 GETTABLEKS                       R13 R13 K21 ["Util"]
      104 GETTABLEKS                       R13 R13 K23 ["findUnderlyingMeshAssetIds"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K10 ["Src"]
      111 GETTABLEKS                       R14 R14 K24 ["Flags"]
      113 GETTABLEKS                       R14 R14 K25 ["getFFlagAvatarPreviewerAvatarCreationFeedback"]
      115 CALL                             R13 1 1
      116 GETTABLEKS                       R14 R1 K26 ["ContextServices"]
      118 GETTABLEKS                       R14 R14 K27 ["Analytics"]
      120 GETTABLEKS                       R15 R1 K26 ["ContextServices"]
      122 GETTABLEKS                       R15 R15 K28 ["Stylizer"]
      124 DUPCLOSURE                       R16 K29 [PROTO_1]
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R5
      137 RETURN                           R16 1
