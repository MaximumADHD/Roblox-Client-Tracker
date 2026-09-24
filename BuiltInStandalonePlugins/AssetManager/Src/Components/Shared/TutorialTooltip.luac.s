PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["notify"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["TutorialEvent"]
        6 GETTABLEKS                       R1 R1 K2 ["ClickedOutsideTooltip"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 CALL                             R3 0 1
        8 JUMPIF                           R3 ; [+2]
        9 LOADNIL                          R3
       10 RETURN                           R3 1
       11 GETTABLEKS                       R3 R2 K1 ["tutorialState"]
       13 LOADB                            R4 0
       14 JUMPIFEQKNIL                     R3 ; [+16]
       16 LOADB                            R4 0
       17 GETTABLEKS                       R5 R3 K2 ["tutorialId"]
       19 GETTABLEKS                       R6 R0 K2 ["tutorialId"]
       21 JUMPIFNOTEQ                      R5 R6 ; [+9]
       23 GETTABLEKS                       R5 R3 K3 ["stepId"]
       25 GETTABLEKS                       R6 R0 K3 ["stepId"]
       27 JUMPIFEQ                         R5 R6 ; [+2]
       29 LOADB                            R4 0 +1
       30 LOADB                            R4 1
       31 GETTABLEKS                       R6 R0 K4 ["anchorInstance"]
       33 JUMPIFNOTEQKNIL                  R6 ; [+2]
       35 LOADB                            R5 0 +1
       36 LOADB                            R5 1
       37 AND                              R6 R4 R5
       38 GETUPVAL                         R7 3
       39 GETTABLEKS                       R7 R7 K5 ["useRef"]
       41 LOADNIL                          R8
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R8 R0 K4 ["anchorInstance"]
       45 SETTABLEKS                       R8 R7 K6 ["current"]
       47 GETUPVAL                         R8 4
       48 GETTABLEKS                       R8 R8 K7 ["getTutorial"]
       50 GETTABLEKS                       R9 R0 K2 ["tutorialId"]
       52 CALL                             R8 1 1
       53 JUMPIFNOT                        R6 ; [+8]
       54 JUMPIFNOT                        R3 ; [+7]
       55 JUMPIFNOT                        R8 ; [+6]
       56 GETTABLEKS                       R10 R8 K8 ["steps"]
       58 GETTABLEKS                       R11 R3 K9 ["index"]
       60 GETTABLE                         R9 R10 R11
       61 JUMP                             ; [+1]
       62 LOADNIL                          R9
       63 LOADB                            R10 0
       64 JUMPIFEQKNIL                     R9 ; [+15]
       66 GETIMPORT                        R11 K12 [table.find]
       68 GETTABLEKS                       R12 R9 K13 ["completeOn"]
       70 GETUPVAL                         R13 5
       71 GETTABLEKS                       R13 R13 K14 ["TutorialEvent"]
       73 GETTABLEKS                       R13 R13 K15 ["ClickedOutsideTooltip"]
       75 CALL                             R11 2 1
       76 JUMPIFNOTEQKNIL                  R11 ; [+2]
       78 LOADB                            R10 0 +1
       79 LOADB                            R10 1
       80 JUMPIFNOT                        R3 ; [+9]
       81 GETTABLEKS                       R12 R3 K9 ["index"]
       83 GETTABLEKS                       R13 R3 K16 ["total"]
       85 JUMPIFLE                         R13 R12 ; [+2]
       87 LOADB                            R11 0 +1
       88 LOADB                            R11 1
       89 JUMP                             ; [+1]
       90 LOADB                            R11 0
       91 LOADK                            R14 K17 ["Tutorial"]
       92 JUMPIFNOT                        R11 ; [+2]
       93 LOADK                            R15 K18 ["Done"]
       94 JUMP                             ; [+1]
       95 LOADK                            R15 K19 ["Next"]
       96 NAMECALL                         R12 R1 K20 ["getText"]
       98 CALL                             R12 3 1
       99 DUPTABLE                         R13 K30 [{"title", "text", "isOpen", "anchorRef", "side", "align", "steps", "actions", "onClose", "onPressedOutside"}]
      100 JUMPIFNOT                        R9 ; [+10]
      101 LOADK                            R16 K17 ["Tutorial"]
      102 GETTABLEKS                       R17 R0 K31 ["titleKeyOverride"]
      104 JUMPIF                           R17 ; [+2]
      105 GETTABLEKS                       R17 R9 K32 ["titleKey"]
      107 NAMECALL                         R14 R1 K20 ["getText"]
      109 CALL                             R14 3 1
      110 JUMP                             ; [+1]
      111 LOADK                            R14 K33 [""]
      112 SETTABLEKS                       R14 R13 K21 ["title"]
      114 JUMPIFNOT                        R9 ; [+10]
      115 LOADK                            R16 K17 ["Tutorial"]
      116 GETTABLEKS                       R17 R0 K34 ["textKeyOverride"]
      118 JUMPIF                           R17 ; [+2]
      119 GETTABLEKS                       R17 R9 K35 ["textKey"]
      121 NAMECALL                         R14 R1 K20 ["getText"]
      123 CALL                             R14 3 1
      124 JUMP                             ; [+1]
      125 LOADNIL                          R14
      126 SETTABLEKS                       R14 R13 K22 ["text"]
      128 SETTABLEKS                       R6 R13 K23 ["isOpen"]
      130 SETTABLEKS                       R7 R13 K24 ["anchorRef"]
      132 GETTABLEKS                       R14 R0 K25 ["side"]
      134 SETTABLEKS                       R14 R13 K25 ["side"]
      136 GETTABLEKS                       R14 R0 K26 ["align"]
      138 SETTABLEKS                       R14 R13 K26 ["align"]
      140 JUMPIFNOT                        R3 ; [+10]
      141 DUPTABLE                         R14 K36 [{"current", "total"}]
      142 GETTABLEKS                       R15 R3 K9 ["index"]
      144 SETTABLEKS                       R15 R14 K6 ["current"]
      146 GETTABLEKS                       R15 R3 K16 ["total"]
      148 SETTABLEKS                       R15 R14 K16 ["total"]
      150 JUMP                             ; [+1]
      151 LOADNIL                          R14
      152 SETTABLEKS                       R14 R13 K8 ["steps"]
      154 NEWTABLE                         R14 0 1
      156 DUPTABLE                         R15 K39 [{"text", "variant", "onActivated"}]
      157 SETTABLEKS                       R12 R15 K22 ["text"]
      159 GETUPVAL                         R16 6
      160 GETTABLEKS                       R16 R16 K40 ["Enums"]
      162 GETTABLEKS                       R16 R16 K41 ["ButtonVariant"]
      164 GETTABLEKS                       R16 R16 K42 ["Emphasis"]
      166 SETTABLEKS                       R16 R15 K37 ["variant"]
      168 GETTABLEKS                       R16 R2 K43 ["advance"]
      170 SETTABLEKS                       R16 R15 K38 ["onActivated"]
      172 SETLIST                          R14 R15 1 [1]
      174 SETTABLEKS                       R14 R13 K27 ["actions"]
      176 GETTABLEKS                       R14 R2 K44 ["dismiss"]
      178 SETTABLEKS                       R14 R13 K28 ["onClose"]
      180 JUMPIFNOT                        R10 ; [+4]
      181 NEWCLOSURE                       R14 P0
      182 CAPTURE                          VAL R2
      183 CAPTURE                          UPVAL U5
      184 JUMP                             ; [+1]
      185 LOADNIL                          R14
      186 SETTABLEKS                       R14 R13 K29 ["onPressedOutside"]
      188 GETUPVAL                         R14 3
      189 GETTABLEKS                       R14 R14 K45 ["createElement"]
      191 GETUPVAL                         R15 6
      192 GETTABLEKS                       R15 R15 K46 ["EducationalTooltip"]
      194 MOVE                             R16 R13
      195 CALL                             R14 2 -1
      196 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Types"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K12 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Configurations"]
       45 GETTABLEKS                       R8 R8 K15 ["Tutorial"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K12 ["Src"]
       52 GETTABLEKS                       R9 R9 K16 ["Hooks"]
       54 GETTABLEKS                       R9 R9 K17 ["useTutorial"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K12 ["Src"]
       61 GETTABLEKS                       R10 R10 K18 ["Flags"]
       63 GETTABLEKS                       R10 R10 K19 ["getFFlagAmrEnableTutorials"]
       65 CALL                             R9 1 1
       66 DUPCLOSURE                       R10 K20 [PROTO_1]
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R2
       74 RETURN                           R10 1
