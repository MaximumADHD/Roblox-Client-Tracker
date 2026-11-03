PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["notify"]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["TutorialEvent"]
        8 GETTABLEKS                       R1 R1 K2 ["ClickedOutsideTooltip"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R3 R2 K1 ["tutorialState"]
        8 LOADB                            R4 0
        9 JUMPIFEQKNIL                     R3 ; [+16]
       11 LOADB                            R4 0
       12 GETTABLEKS                       R5 R3 K2 ["tutorialId"]
       14 GETTABLEKS                       R6 R0 K2 ["tutorialId"]
       16 JUMPIFNOTEQ                      R5 R6 ; [+9]
       18 GETTABLEKS                       R5 R3 K3 ["stepId"]
       20 GETTABLEKS                       R6 R0 K3 ["stepId"]
       22 JUMPIFEQ                         R5 R6 ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 GETTABLEKS                       R6 R0 K4 ["anchorInstance"]
       28 JUMPIFNOTEQKNIL                  R6 ; [+2]
       30 LOADB                            R5 0 +1
       31 LOADB                            R5 1
       32 AND                              R6 R4 R5
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R7 R7 K5 ["useRef"]
       36 LOADNIL                          R8
       37 CALL                             R7 1 1
       38 GETTABLEKS                       R8 R0 K4 ["anchorInstance"]
       40 SETTABLEKS                       R8 R7 K6 ["current"]
       42 GETUPVAL                         R8 3
       43 GETTABLEKS                       R8 R8 K7 ["getTutorial"]
       45 GETTABLEKS                       R9 R0 K2 ["tutorialId"]
       47 CALL                             R8 1 1
       48 JUMPIFNOT                        R6 ; [+8]
       49 JUMPIFNOT                        R3 ; [+7]
       50 JUMPIFNOT                        R8 ; [+6]
       51 GETTABLEKS                       R10 R8 K8 ["steps"]
       53 GETTABLEKS                       R11 R3 K9 ["index"]
       55 GETTABLE                         R9 R10 R11
       56 JUMP                             ; [+1]
       57 LOADNIL                          R9
       58 LOADB                            R10 0
       59 JUMPIFEQKNIL                     R9 ; [+15]
       61 GETIMPORT                        R11 K12 [table.find]
       63 GETTABLEKS                       R12 R9 K13 ["completeOn"]
       65 GETUPVAL                         R13 4
       66 GETTABLEKS                       R13 R13 K14 ["TutorialEvent"]
       68 GETTABLEKS                       R13 R13 K15 ["ClickedOutsideTooltip"]
       70 CALL                             R11 2 1
       71 JUMPIFNOTEQKNIL                  R11 ; [+2]
       73 LOADB                            R10 0 +1
       74 LOADB                            R10 1
       75 JUMPIFNOT                        R3 ; [+9]
       76 GETTABLEKS                       R12 R3 K9 ["index"]
       78 GETTABLEKS                       R13 R3 K16 ["total"]
       80 JUMPIFLE                         R13 R12 ; [+2]
       82 LOADB                            R11 0 +1
       83 LOADB                            R11 1
       84 JUMP                             ; [+1]
       85 LOADB                            R11 0
       86 LOADK                            R14 K17 ["Tutorial"]
       87 JUMPIFNOT                        R11 ; [+2]
       88 LOADK                            R15 K18 ["Done"]
       89 JUMP                             ; [+1]
       90 LOADK                            R15 K19 ["Next"]
       91 NAMECALL                         R12 R1 K20 ["getText"]
       93 CALL                             R12 3 1
       94 DUPTABLE                         R13 K31 [{"title", "text", "isOpen", "anchorRef", "side", "align", "hasArrow", "steps", "actions", "onClose", "onPressedOutside"}]
       95 JUMPIFNOT                        R9 ; [+10]
       96 LOADK                            R16 K17 ["Tutorial"]
       97 GETTABLEKS                       R17 R0 K32 ["titleKeyOverride"]
       99 JUMPIF                           R17 ; [+2]
      100 GETTABLEKS                       R17 R9 K33 ["titleKey"]
      102 NAMECALL                         R14 R1 K20 ["getText"]
      104 CALL                             R14 3 1
      105 JUMP                             ; [+1]
      106 LOADK                            R14 K34 [""]
      107 SETTABLEKS                       R14 R13 K21 ["title"]
      109 JUMPIFNOT                        R9 ; [+10]
      110 LOADK                            R16 K17 ["Tutorial"]
      111 GETTABLEKS                       R17 R0 K35 ["textKeyOverride"]
      113 JUMPIF                           R17 ; [+2]
      114 GETTABLEKS                       R17 R9 K36 ["textKey"]
      116 NAMECALL                         R14 R1 K20 ["getText"]
      118 CALL                             R14 3 1
      119 JUMP                             ; [+1]
      120 LOADNIL                          R14
      121 SETTABLEKS                       R14 R13 K22 ["text"]
      123 SETTABLEKS                       R6 R13 K23 ["isOpen"]
      125 SETTABLEKS                       R7 R13 K24 ["anchorRef"]
      127 GETTABLEKS                       R14 R0 K25 ["side"]
      129 SETTABLEKS                       R14 R13 K25 ["side"]
      131 GETTABLEKS                       R14 R0 K26 ["align"]
      133 SETTABLEKS                       R14 R13 K26 ["align"]
      135 GETTABLEKS                       R15 R0 K27 ["hasArrow"]
      137 JUMPIFNOTEQKB                    R15 FALSE ; [+2]
      139 LOADB                            R14 0 +1
      140 LOADB                            R14 1
      141 SETTABLEKS                       R14 R13 K27 ["hasArrow"]
      143 JUMPIFNOT                        R3 ; [+10]
      144 DUPTABLE                         R14 K37 [{"current", "total"}]
      145 GETTABLEKS                       R15 R3 K9 ["index"]
      147 SETTABLEKS                       R15 R14 K6 ["current"]
      149 GETTABLEKS                       R15 R3 K16 ["total"]
      151 SETTABLEKS                       R15 R14 K16 ["total"]
      153 JUMP                             ; [+1]
      154 LOADNIL                          R14
      155 SETTABLEKS                       R14 R13 K8 ["steps"]
      157 NEWTABLE                         R14 0 1
      159 DUPTABLE                         R15 K40 [{"text", "variant", "onActivated"}]
      160 SETTABLEKS                       R12 R15 K22 ["text"]
      162 GETUPVAL                         R16 5
      163 GETTABLEKS                       R16 R16 K41 ["Enums"]
      165 GETTABLEKS                       R16 R16 K42 ["ButtonVariant"]
      167 GETTABLEKS                       R16 R16 K43 ["Emphasis"]
      169 SETTABLEKS                       R16 R15 K38 ["variant"]
      171 GETTABLEKS                       R16 R2 K44 ["advance"]
      173 SETTABLEKS                       R16 R15 K39 ["onActivated"]
      175 SETLIST                          R14 R15 1 [1]
      177 SETTABLEKS                       R14 R13 K28 ["actions"]
      179 GETTABLEKS                       R14 R2 K45 ["dismiss"]
      181 SETTABLEKS                       R14 R13 K29 ["onClose"]
      183 NEWCLOSURE                       R14 P0
      184 CAPTURE                          VAL R10
      185 CAPTURE                          VAL R2
      186 CAPTURE                          UPVAL U4
      187 SETTABLEKS                       R14 R13 K30 ["onPressedOutside"]
      189 GETUPVAL                         R14 2
      190 GETTABLEKS                       R14 R14 K46 ["createElement"]
      192 GETUPVAL                         R15 5
      193 GETTABLEKS                       R15 R15 K47 ["EducationalTooltip"]
      195 MOVE                             R16 R13
      196 CALL                             R14 2 -1
      197 RETURN                           R14 -1

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
       57 DUPCLOSURE                       R9 K18 [PROTO_1]
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R2
       64 RETURN                           R9 1
