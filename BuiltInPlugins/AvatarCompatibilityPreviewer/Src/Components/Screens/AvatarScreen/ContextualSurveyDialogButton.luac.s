PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["sendAutoSetupSurvey"]
        2 MOVE                             R4 R0
        3 GETUPVAL                         R5 1
        4 GETUPVAL                         R8 2
        5 GETTABLEKS                       R7 R8 K1 ["Avatar"]
        7 GETTABLEKS                       R6 R7 K2 ["WorldModel"]
        9 CALL                             R5 1 1
       10 GETUPVAL                         R6 3
       11 NAMECALL                         R1 R1 K3 ["report"]
       13 CALL                             R1 5 0
       14 GETUPVAL                         R1 4
       15 LOADB                            R2 1
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["ContextualSurveyDialogButton"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R5 R0 K2 ["Avatar"]
       12 GETTABLEKS                       R4 R5 K3 ["WorldModel"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R6 R0 K2 ["Avatar"]
       18 GETTABLEKS                       R5 R6 K3 ["WorldModel"]
       20 LOADK                            R6 K4 ["completedAutoSetupSurvey"]
       21 LOADB                            R7 0
       22 CALL                             R4 3 2
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R8 R0 K2 ["Avatar"]
       26 GETTABLEKS                       R7 R8 K3 ["WorldModel"]
       28 GETUPVAL                         R9 4
       29 GETTABLEKS                       R8 R9 K5 ["ATTRIBUTE_AUTO_SETUP_INPUT_ASSET"]
       31 LOADNIL                          R9
       32 CALL                             R6 3 1
       33 GETUPVAL                         R7 5
       34 LOADB                            R8 0
       35 CALL                             R7 1 1
       36 GETUPVAL                         R9 6
       37 GETTABLEKS                       R8 R9 K6 ["useCallback"]
       39 NEWCLOSURE                       R9 P0
       40 CAPTURE                          VAL R1
       41 CAPTURE                          UPVAL U7
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R5
       45 NEWTABLE                         R10 0 0
       47 CALL                             R8 2 1
       48 JUMPIF                           R3 ; [+2]
       49 LOADNIL                          R9
       50 RETURN                           R9 1
       51 GETUPVAL                         R10 6
       52 GETTABLEKS                       R9 R10 K7 ["createElement"]
       54 GETUPVAL                         R11 6
       55 GETTABLEKS                       R10 R11 K8 ["Fragment"]
       57 NEWTABLE                         R11 0 0
       59 DUPTABLE                         R12 K10 [{"SurveyDialog", "ContextualSurveyDialogButton"}]
       60 GETTABLEKS                       R13 R7 K11 ["enabled"]
       62 JUMPIFNOT                        R13 ; [+12]
       63 GETUPVAL                         R14 6
       64 GETTABLEKS                       R13 R14 K7 ["createElement"]
       66 GETUPVAL                         R14 8
       67 DUPTABLE                         R15 K14 [{"close", "submitResults"}]
       68 GETTABLEKS                       R16 R7 K15 ["disable"]
       70 SETTABLEKS                       R16 R15 K12 ["close"]
       72 SETTABLEKS                       R8 R15 K13 ["submitResults"]
       74 CALL                             R13 2 1
       75 SETTABLEKS                       R13 R12 K9 ["SurveyDialog"]
       77 NOT                              R13 R4
       78 JUMPIFNOT                        R13 ; [+37]
       79 GETUPVAL                         R14 6
       80 GETTABLEKS                       R13 R14 K7 ["createElement"]
       82 LOADK                            R14 K16 ["ImageButton"]
       83 NEWTABLE                         R15 8 0
       85 GETIMPORT                        R16 K19 [Vector2.new]
       87 LOADN                            R17 0
       88 LOADN                            R18 1
       89 CALL                             R16 2 1
       90 SETTABLEKS                       R16 R15 K20 ["AnchorPoint"]
       92 LOADN                            R16 1
       93 SETTABLEKS                       R16 R15 K21 ["BackgroundTransparency"]
       95 GETTABLEKS                       R16 R2 K22 ["Image"]
       97 SETTABLEKS                       R16 R15 K22 ["Image"]
       99 GETTABLEKS                       R16 R2 K23 ["Position"]
      101 SETTABLEKS                       R16 R15 K23 ["Position"]
      103 GETTABLEKS                       R16 R2 K24 ["Size"]
      105 SETTABLEKS                       R16 R15 K24 ["Size"]
      107 GETUPVAL                         R18 6
      108 GETTABLEKS                       R17 R18 K25 ["Event"]
      110 GETTABLEKS                       R16 R17 K26 ["Activated"]
      112 GETTABLEKS                       R17 R7 K27 ["enable"]
      114 SETTABLE                         R17 R15 R16
      115 CALL                             R13 2 1
      116 SETTABLEKS                       R13 R12 K1 ["ContextualSurveyDialogButton"]
      118 CALL                             R9 3 -1
      119 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R5 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K9 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Components"]
       34 GETTABLEKS                       R5 R6 K12 ["SurveyDialog"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K9 ["Src"]
       41 GETTABLEKS                       R7 R8 K13 ["Resources"]
       43 GETTABLEKS                       R6 R7 K14 ["Theme"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R9 R0 K9 ["Src"]
       50 GETTABLEKS                       R8 R9 K15 ["Hooks"]
       52 GETTABLEKS                       R7 R8 K16 ["useCreatedByAutoSetup"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R10 R0 K9 ["Src"]
       59 GETTABLEKS                       R9 R10 K15 ["Hooks"]
       61 GETTABLEKS                       R8 R9 K17 ["useSerializedState"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R11 R0 K9 ["Src"]
       68 GETTABLEKS                       R10 R11 K15 ["Hooks"]
       70 GETTABLEKS                       R9 R10 K18 ["useToggleState"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R12 R0 K9 ["Src"]
       77 GETTABLEKS                       R11 R12 K19 ["Util"]
       79 GETTABLEKS                       R10 R11 K20 ["Constants"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R13 R0 K9 ["Src"]
       86 GETTABLEKS                       R12 R13 K19 ["Util"]
       88 GETTABLEKS                       R11 R12 K21 ["findUnderlyingMeshAssetIds"]
       90 CALL                             R10 1 1
       91 GETTABLEKS                       R12 R1 K22 ["ContextServices"]
       93 GETTABLEKS                       R11 R12 K23 ["Analytics"]
       95 GETTABLEKS                       R13 R1 K22 ["ContextServices"]
       97 GETTABLEKS                       R12 R13 K24 ["Stylizer"]
       99 DUPCLOSURE                       R13 K25 [PROTO_1]
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R4
      109 RETURN                           R13 1
