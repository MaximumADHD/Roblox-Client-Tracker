PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K0 ["use"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R3 R0 K1 ["dialogStage"]
       11 JUMPIFEQKS                       R3 K2 ["ConfirmItems"] ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 GETTABLEKS                       R4 R0 K1 ["dialogStage"]
       17 JUMPIFEQKS                       R4 K3 ["EditInfo"] ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 GETTABLEKS                       R5 R0 K1 ["dialogStage"]
       23 JUMPIFEQKS                       R5 K4 ["Success"] ; [+2]
       25 LOADB                            R4 0 +1
       26 LOADB                            R4 1
       27 GETTABLEKS                       R6 R0 K1 ["dialogStage"]
       29 JUMPIFEQKS                       R6 K5 ["Failure"] ; [+2]
       31 LOADB                            R5 0 +1
       32 LOADB                            R5 1
       33 JUMPIFNOT                        R2 ; [+6]
       34 LOADK                            R8 K6 ["LookComposerDialog"]
       35 LOADK                            R9 K7 ["Continue"]
       36 NAMECALL                         R6 R1 K8 ["getText"]
       38 CALL                             R6 3 1
       39 JUMP                             ; [+19]
       40 JUMPIFNOT                        R3 ; [+6]
       41 LOADK                            R8 K6 ["LookComposerDialog"]
       42 LOADK                            R9 K9 ["Create"]
       43 NAMECALL                         R6 R1 K8 ["getText"]
       45 CALL                             R6 3 1
       46 JUMP                             ; [+12]
       47 JUMPIFNOT                        R5 ; [+6]
       48 LOADK                            R8 K6 ["LookComposerDialog"]
       49 LOADK                            R9 K10 ["Ok"]
       50 NAMECALL                         R6 R1 K8 ["getText"]
       52 CALL                             R6 3 1
       53 JUMP                             ; [+5]
       54 LOADK                            R8 K6 ["LookComposerDialog"]
       55 LOADK                            R9 K11 ["ViewOnCreatorHub"]
       56 NAMECALL                         R6 R1 K8 ["getText"]
       58 CALL                             R6 3 1
       59 JUMPIFNOT                        R3 ; [+6]
       60 LOADK                            R9 K6 ["LookComposerDialog"]
       61 LOADK                            R10 K12 ["Back"]
       62 NAMECALL                         R7 R1 K8 ["getText"]
       64 CALL                             R7 3 1
       65 JUMP                             ; [+12]
       66 JUMPIFNOT                        R4 ; [+6]
       67 LOADK                            R9 K6 ["LookComposerDialog"]
       68 LOADK                            R10 K13 ["Close"]
       69 NAMECALL                         R7 R1 K8 ["getText"]
       71 CALL                             R7 3 1
       72 JUMP                             ; [+5]
       73 LOADK                            R9 K6 ["LookComposerDialog"]
       74 LOADK                            R10 K14 ["Cancel"]
       75 NAMECALL                         R7 R1 K8 ["getText"]
       77 CALL                             R7 3 1
       78 GETUPVAL                         R8 2
       79 GETTABLEKS                       R8 R8 K15 ["createElement"]
       81 GETUPVAL                         R9 3
       82 DUPTABLE                         R10 K23 [{["text"], ["variant"], ["onActivated"], ["icon"], ["LayoutOrder"] = 1, ["isDisabled"]}]
       83 SETTABLEKS                       R6 R10 K16 ["text"]
       85 GETUPVAL                         R11 4
       86 GETTABLEKS                       R11 R11 K24 ["Enums"]
       88 GETTABLEKS                       R11 R11 K25 ["ButtonVariant"]
       90 GETTABLEKS                       R11 R11 K26 ["Emphasis"]
       92 SETTABLEKS                       R11 R10 K17 ["variant"]
       94 GETTABLEKS                       R11 R0 K27 ["onForward"]
       96 SETTABLEKS                       R11 R10 K18 ["onActivated"]
       98 JUMPIFNOT                        R4 ; [+8]
       99 GETUPVAL                         R11 4
      100 GETTABLEKS                       R11 R11 K24 ["Enums"]
      102 GETTABLEKS                       R11 R11 K28 ["IconName"]
      104 GETTABLEKS                       R11 R11 K29 ["ArrowUpRightFromSquare"]
      106 JUMP                             ; [+1]
      107 LOADNIL                          R11
      108 SETTABLEKS                       R11 R10 K19 ["icon"]
      110 GETTABLEKS                       R11 R0 K30 ["isForwardDisabled"]
      112 SETTABLEKS                       R11 R10 K22 ["isDisabled"]
      114 CALL                             R8 2 1
      115 GETUPVAL                         R9 2
      116 GETTABLEKS                       R9 R9 K15 ["createElement"]
      118 GETUPVAL                         R10 5
      119 DUPTABLE                         R11 K33 [{["tag"] = "row align-x-right align-y-center gap-medium size-full-0 auto-y padding-large bg-surface-100", ["LayoutOrder"]}]
      120 GETTABLEKS                       R12 R0 K20 ["LayoutOrder"]
      122 SETTABLEKS                       R12 R11 K20 ["LayoutOrder"]
      124 DUPTABLE                         R12 K36 [{"PrimaryButton", "SecondaryButton"}]
      125 SETTABLEKS                       R8 R12 K34 ["PrimaryButton"]
      127 JUMPIF                           R5 ; [+17]
      128 GETUPVAL                         R13 2
      129 GETTABLEKS                       R13 R13 K15 ["createElement"]
      131 GETUPVAL                         R14 3
      132 DUPTABLE                         R15 K38 [{["text"], ["onActivated"], ["LayoutOrder"] = 2, ["isDisabled"]}]
      133 SETTABLEKS                       R7 R15 K16 ["text"]
      135 GETTABLEKS                       R16 R0 K39 ["onBack"]
      137 SETTABLEKS                       R16 R15 K18 ["onActivated"]
      139 GETTABLEKS                       R16 R0 K40 ["isBackDisabled"]
      141 SETTABLEKS                       R16 R15 K22 ["isDisabled"]
      143 CALL                             R13 2 1
      144 JUMP                             ; [+1]
      145 LOADNIL                          R13
      146 SETTABLEKS                       R13 R12 K35 ["SecondaryButton"]
      148 CALL                             R9 3 -1
      149 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Button"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R6 K11 ["Framework"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K12 ["ContextServices"]
       34 GETTABLEKS                       R6 R6 K13 ["Localization"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R0 K14 ["Src"]
       40 GETTABLEKS                       R8 R8 K15 ["Types"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R0 K14 ["Src"]
       47 GETTABLEKS                       R9 R9 K16 ["Flags"]
       49 GETTABLEKS                       R9 R9 K17 ["getFFlagAvatarPreviewerLookComposer"]
       51 CALL                             R8 1 1
       52 DUPCLOSURE                       R9 K18 [PROTO_0]
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R3
       59 RETURN                           R9 1
