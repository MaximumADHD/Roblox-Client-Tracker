PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["setDialogStage"]
        5 LOADK                            R1 K1 ["EditInfo"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K0 ["setDialogStage"]
       13 LOADK                            R1 K2 ["Success"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 3
       17 JUMPIFNOT                        R0 ; [+4]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R0 R1 K3 ["closeDialog"]
       21 CALL                             R0 0 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["setDialogStage"]
        5 LOADK                            R1 K1 ["ConfirmItems"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+5]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K2 ["closeDialog"]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R0 R1 K2 ["closeDialog"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K0 ["use"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K1 ["useContext"]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R3 R4 K2 ["Context"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R4 R2 K3 ["dialogStage"]
       18 JUMPIFEQKS                       R4 K4 ["ConfirmItems"] ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 GETTABLEKS                       R5 R2 K3 ["dialogStage"]
       24 JUMPIFEQKS                       R5 K5 ["EditInfo"] ; [+2]
       26 LOADB                            R4 0 +1
       27 LOADB                            R4 1
       28 GETTABLEKS                       R6 R2 K3 ["dialogStage"]
       30 JUMPIFEQKS                       R6 K6 ["Success"] ; [+2]
       32 LOADB                            R5 0 +1
       33 LOADB                            R5 1
       34 GETTABLEKS                       R7 R2 K3 ["dialogStage"]
       36 JUMPIFEQKS                       R7 K7 ["Failure"] ; [+2]
       38 LOADB                            R6 0 +1
       39 LOADB                            R6 1
       40 GETUPVAL                         R8 2
       41 GETTABLEKS                       R7 R8 K8 ["useCallback"]
       43 NEWCLOSURE                       R8 P0
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R6
       48 NEWTABLE                         R9 0 3
       50 MOVE                             R10 R3
       51 MOVE                             R11 R4
       52 MOVE                             R12 R6
       53 SETLIST                          R9 R10 3 [1]
       55 CALL                             R7 2 1
       56 GETUPVAL                         R9 2
       57 GETTABLEKS                       R8 R9 K8 ["useCallback"]
       59 NEWCLOSURE                       R9 P1
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R5
       63 NEWTABLE                         R10 0 2
       65 MOVE                             R11 R4
       66 MOVE                             R12 R5
       67 SETLIST                          R10 R11 2 [1]
       69 CALL                             R8 2 1
       70 JUMPIFNOT                        R3 ; [+6]
       71 LOADK                            R11 K9 ["LookComposerDialog"]
       72 LOADK                            R12 K10 ["Continue"]
       73 NAMECALL                         R9 R1 K11 ["getText"]
       75 CALL                             R9 3 1
       76 JUMP                             ; [+19]
       77 JUMPIFNOT                        R4 ; [+6]
       78 LOADK                            R11 K9 ["LookComposerDialog"]
       79 LOADK                            R12 K12 ["Create"]
       80 NAMECALL                         R9 R1 K11 ["getText"]
       82 CALL                             R9 3 1
       83 JUMP                             ; [+12]
       84 JUMPIFNOT                        R6 ; [+6]
       85 LOADK                            R11 K9 ["LookComposerDialog"]
       86 LOADK                            R12 K13 ["Ok"]
       87 NAMECALL                         R9 R1 K11 ["getText"]
       89 CALL                             R9 3 1
       90 JUMP                             ; [+5]
       91 LOADK                            R11 K9 ["LookComposerDialog"]
       92 LOADK                            R12 K14 ["ViewOnCreatorHub"]
       93 NAMECALL                         R9 R1 K11 ["getText"]
       95 CALL                             R9 3 1
       96 JUMPIFNOT                        R4 ; [+6]
       97 LOADK                            R12 K9 ["LookComposerDialog"]
       98 LOADK                            R13 K15 ["Back"]
       99 NAMECALL                         R10 R1 K11 ["getText"]
      101 CALL                             R10 3 1
      102 JUMP                             ; [+12]
      103 JUMPIFNOT                        R5 ; [+6]
      104 LOADK                            R12 K9 ["LookComposerDialog"]
      105 LOADK                            R13 K16 ["Close"]
      106 NAMECALL                         R10 R1 K11 ["getText"]
      108 CALL                             R10 3 1
      109 JUMP                             ; [+5]
      110 LOADK                            R12 K9 ["LookComposerDialog"]
      111 LOADK                            R13 K17 ["Cancel"]
      112 NAMECALL                         R10 R1 K11 ["getText"]
      114 CALL                             R10 3 1
      115 GETUPVAL                         R12 2
      116 GETTABLEKS                       R11 R12 K18 ["createElement"]
      118 GETUPVAL                         R12 4
      119 DUPTABLE                         R13 K24 [{"text", "variant", "onActivated", "icon", "LayoutOrder"}]
      120 SETTABLEKS                       R9 R13 K19 ["text"]
      122 GETUPVAL                         R17 5
      123 GETTABLEKS                       R16 R17 K25 ["Enums"]
      125 GETTABLEKS                       R15 R16 K26 ["ButtonVariant"]
      127 GETTABLEKS                       R14 R15 K27 ["Emphasis"]
      129 SETTABLEKS                       R14 R13 K20 ["variant"]
      131 SETTABLEKS                       R7 R13 K21 ["onActivated"]
      133 JUMPIFNOT                        R5 ; [+8]
      134 GETUPVAL                         R17 5
      135 GETTABLEKS                       R16 R17 K25 ["Enums"]
      137 GETTABLEKS                       R15 R16 K28 ["IconName"]
      139 GETTABLEKS                       R14 R15 K29 ["ArrowUpRightFromSquare"]
      141 JUMP                             ; [+1]
      142 LOADNIL                          R14
      143 SETTABLEKS                       R14 R13 K22 ["icon"]
      145 LOADN                            R14 1
      146 SETTABLEKS                       R14 R13 K23 ["LayoutOrder"]
      148 CALL                             R11 2 1
      149 GETUPVAL                         R13 2
      150 GETTABLEKS                       R12 R13 K18 ["createElement"]
      152 GETUPVAL                         R13 6
      153 DUPTABLE                         R14 K31 [{"tag", "LayoutOrder"}]
      154 LOADK                            R15 K32 ["row gap-medium align-x-right align-y-center padding-large bg-surface-100 size-full-0 auto-y"]
      155 SETTABLEKS                       R15 R14 K30 ["tag"]
      157 GETTABLEKS                       R15 R0 K23 ["LayoutOrder"]
      159 SETTABLEKS                       R15 R14 K23 ["LayoutOrder"]
      161 DUPTABLE                         R15 K35 [{"PrimaryButton", "SecondaryButton"}]
      162 SETTABLEKS                       R11 R15 K33 ["PrimaryButton"]
      164 JUMPIF                           R6 ; [+14]
      165 GETUPVAL                         R17 2
      166 GETTABLEKS                       R16 R17 K18 ["createElement"]
      168 GETUPVAL                         R17 4
      169 DUPTABLE                         R18 K36 [{"text", "onActivated", "LayoutOrder"}]
      170 SETTABLEKS                       R10 R18 K19 ["text"]
      172 SETTABLEKS                       R8 R18 K21 ["onActivated"]
      174 LOADN                            R19 2
      175 SETTABLEKS                       R19 R18 K23 ["LayoutOrder"]
      177 CALL                             R16 2 1
      178 JUMP                             ; [+1]
      179 LOADNIL                          R16
      180 SETTABLEKS                       R16 R15 K34 ["SecondaryButton"]
      182 CALL                             R12 3 -1
      183 RETURN                           R12 -1

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
       38 GETTABLEKS                       R10 R0 K14 ["Src"]
       40 GETTABLEKS                       R9 R10 K15 ["Flags"]
       42 GETTABLEKS                       R8 R9 K16 ["getFFlagAvatarPreviewerLookComposer"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R11 R0 K14 ["Src"]
       49 GETTABLEKS                       R10 R11 K17 ["Components"]
       51 GETTABLEKS                       R9 R10 K18 ["LookContext"]
       53 CALL                             R8 1 1
       54 DUPCLOSURE                       R9 K19 [PROTO_2]
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R3
       62 RETURN                           R9 1
