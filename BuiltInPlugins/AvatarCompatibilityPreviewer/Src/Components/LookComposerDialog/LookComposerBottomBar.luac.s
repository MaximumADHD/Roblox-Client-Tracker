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
       78 GETUPVAL                         R9 2
       79 GETTABLEKS                       R8 R9 K15 ["createElement"]
       81 GETUPVAL                         R9 3
       82 DUPTABLE                         R10 K22 [{"text", "variant", "onActivated", "icon", "LayoutOrder", "isDisabled"}]
       83 SETTABLEKS                       R6 R10 K16 ["text"]
       85 GETUPVAL                         R14 4
       86 GETTABLEKS                       R13 R14 K23 ["Enums"]
       88 GETTABLEKS                       R12 R13 K24 ["ButtonVariant"]
       90 GETTABLEKS                       R11 R12 K25 ["Emphasis"]
       92 SETTABLEKS                       R11 R10 K17 ["variant"]
       94 GETTABLEKS                       R11 R0 K26 ["onForward"]
       96 SETTABLEKS                       R11 R10 K18 ["onActivated"]
       98 JUMPIFNOT                        R4 ; [+8]
       99 GETUPVAL                         R14 4
      100 GETTABLEKS                       R13 R14 K23 ["Enums"]
      102 GETTABLEKS                       R12 R13 K27 ["IconName"]
      104 GETTABLEKS                       R11 R12 K28 ["ArrowUpRightFromSquare"]
      106 JUMP                             ; [+1]
      107 LOADNIL                          R11
      108 SETTABLEKS                       R11 R10 K19 ["icon"]
      110 LOADN                            R11 1
      111 SETTABLEKS                       R11 R10 K20 ["LayoutOrder"]
      113 GETTABLEKS                       R11 R0 K29 ["isForwardDisabled"]
      115 SETTABLEKS                       R11 R10 K21 ["isDisabled"]
      117 CALL                             R8 2 1
      118 GETUPVAL                         R10 2
      119 GETTABLEKS                       R9 R10 K15 ["createElement"]
      121 GETUPVAL                         R10 5
      122 DUPTABLE                         R11 K31 [{"tag", "LayoutOrder"}]
      123 LOADK                            R12 K32 ["row gap-medium align-x-right align-y-center padding-large bg-surface-100 size-full-0 auto-y"]
      124 SETTABLEKS                       R12 R11 K30 ["tag"]
      126 GETTABLEKS                       R12 R0 K20 ["LayoutOrder"]
      128 SETTABLEKS                       R12 R11 K20 ["LayoutOrder"]
      130 DUPTABLE                         R12 K35 [{"PrimaryButton", "SecondaryButton"}]
      131 SETTABLEKS                       R8 R12 K33 ["PrimaryButton"]
      133 JUMPIF                           R5 ; [+20]
      134 GETUPVAL                         R14 2
      135 GETTABLEKS                       R13 R14 K15 ["createElement"]
      137 GETUPVAL                         R14 3
      138 DUPTABLE                         R15 K36 [{"text", "onActivated", "LayoutOrder", "isDisabled"}]
      139 SETTABLEKS                       R7 R15 K16 ["text"]
      141 GETTABLEKS                       R16 R0 K37 ["onBack"]
      143 SETTABLEKS                       R16 R15 K18 ["onActivated"]
      145 LOADN                            R16 2
      146 SETTABLEKS                       R16 R15 K20 ["LayoutOrder"]
      148 GETTABLEKS                       R16 R0 K38 ["isBackDisabled"]
      150 SETTABLEKS                       R16 R15 K21 ["isDisabled"]
      152 CALL                             R13 2 1
      153 JUMP                             ; [+1]
      154 LOADNIL                          R13
      155 SETTABLEKS                       R13 R12 K34 ["SecondaryButton"]
      157 CALL                             R9 3 -1
      158 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Button"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R7 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R7 K11 ["Framework"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R7 R5 K12 ["ContextServices"]
       34 GETTABLEKS                       R6 R7 K13 ["Localization"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R9 R0 K14 ["Src"]
       40 GETTABLEKS                       R8 R9 K15 ["Types"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R11 R0 K14 ["Src"]
       47 GETTABLEKS                       R10 R11 K16 ["Flags"]
       49 GETTABLEKS                       R9 R10 K17 ["getFFlagAvatarPreviewerLookComposer"]
       51 CALL                             R8 1 1
       52 DUPCLOSURE                       R9 K18 [PROTO_0]
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R3
       59 RETURN                           R9 1
