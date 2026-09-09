PROTO_0:
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
       14 JUMPIFEQKNIL                     R3 ; [+28]
       16 LOADB                            R4 0
       17 GETTABLEKS                       R5 R3 K2 ["tutorialId"]
       19 GETTABLEKS                       R6 R0 K2 ["tutorialId"]
       21 JUMPIFNOTEQ                      R5 R6 ; [+21]
       23 LOADB                            R4 0
       24 GETTABLEKS                       R5 R3 K3 ["stepId"]
       26 GETTABLEKS                       R6 R0 K3 ["stepId"]
       28 JUMPIFNOTEQ                      R5 R6 ; [+14]
       30 LOADB                            R4 0
       31 GETTABLEKS                       R5 R0 K4 ["anchorRef"]
       33 JUMPIFEQKNIL                     R5 ; [+9]
       35 GETTABLEKS                       R5 R0 K4 ["anchorRef"]
       37 GETTABLEKS                       R5 R5 K5 ["current"]
       39 JUMPIFNOTEQKNIL                  R5 ; [+2]
       41 LOADB                            R4 0 +1
       42 LOADB                            R4 1
       43 GETUPVAL                         R5 3
       44 GETTABLEKS                       R5 R5 K6 ["getTutorial"]
       46 GETTABLEKS                       R6 R0 K2 ["tutorialId"]
       48 CALL                             R5 1 1
       49 JUMPIFNOT                        R4 ; [+8]
       50 JUMPIFNOT                        R3 ; [+7]
       51 JUMPIFNOT                        R5 ; [+6]
       52 GETTABLEKS                       R7 R5 K7 ["steps"]
       54 GETTABLEKS                       R8 R3 K8 ["index"]
       56 GETTABLE                         R6 R7 R8
       57 JUMP                             ; [+1]
       58 LOADNIL                          R6
       59 JUMPIFNOT                        R3 ; [+9]
       60 GETTABLEKS                       R8 R3 K8 ["index"]
       62 GETTABLEKS                       R9 R3 K9 ["total"]
       64 JUMPIFLE                         R9 R8 ; [+2]
       66 LOADB                            R7 0 +1
       67 LOADB                            R7 1
       68 JUMP                             ; [+1]
       69 LOADB                            R7 0
       70 LOADK                            R10 K10 ["Tutorial"]
       71 JUMPIFNOT                        R7 ; [+2]
       72 LOADK                            R11 K11 ["Done"]
       73 JUMP                             ; [+1]
       74 LOADK                            R11 K12 ["Next"]
       75 NAMECALL                         R8 R1 K13 ["getText"]
       77 CALL                             R8 3 1
       78 DUPTABLE                         R9 K21 [{"title", "text", "isOpen", "anchorRef", "side", "align", "steps", "actions", "onClose"}]
       79 JUMPIFNOT                        R6 ; [+7]
       80 LOADK                            R12 K10 ["Tutorial"]
       81 GETTABLEKS                       R13 R6 K22 ["titleKey"]
       83 NAMECALL                         R10 R1 K13 ["getText"]
       85 CALL                             R10 3 1
       86 JUMP                             ; [+1]
       87 LOADK                            R10 K23 [""]
       88 SETTABLEKS                       R10 R9 K14 ["title"]
       90 JUMPIFNOT                        R6 ; [+7]
       91 LOADK                            R12 K10 ["Tutorial"]
       92 GETTABLEKS                       R13 R6 K24 ["textKey"]
       94 NAMECALL                         R10 R1 K13 ["getText"]
       96 CALL                             R10 3 1
       97 JUMP                             ; [+1]
       98 LOADNIL                          R10
       99 SETTABLEKS                       R10 R9 K15 ["text"]
      101 SETTABLEKS                       R4 R9 K16 ["isOpen"]
      103 GETTABLEKS                       R10 R0 K4 ["anchorRef"]
      105 SETTABLEKS                       R10 R9 K4 ["anchorRef"]
      107 GETTABLEKS                       R10 R0 K17 ["side"]
      109 SETTABLEKS                       R10 R9 K17 ["side"]
      111 GETTABLEKS                       R10 R0 K18 ["align"]
      113 SETTABLEKS                       R10 R9 K18 ["align"]
      115 JUMPIFNOT                        R3 ; [+10]
      116 DUPTABLE                         R10 K25 [{"current", "total"}]
      117 GETTABLEKS                       R11 R3 K8 ["index"]
      119 SETTABLEKS                       R11 R10 K5 ["current"]
      121 GETTABLEKS                       R11 R3 K9 ["total"]
      123 SETTABLEKS                       R11 R10 K9 ["total"]
      125 JUMP                             ; [+1]
      126 LOADNIL                          R10
      127 SETTABLEKS                       R10 R9 K7 ["steps"]
      129 NEWTABLE                         R10 0 1
      131 DUPTABLE                         R11 K28 [{"text", "variant", "onActivated"}]
      132 SETTABLEKS                       R8 R11 K15 ["text"]
      134 GETUPVAL                         R12 4
      135 GETTABLEKS                       R12 R12 K29 ["Enums"]
      137 GETTABLEKS                       R12 R12 K30 ["ButtonVariant"]
      139 GETTABLEKS                       R12 R12 K31 ["Emphasis"]
      141 SETTABLEKS                       R12 R11 K26 ["variant"]
      143 GETTABLEKS                       R12 R2 K32 ["advance"]
      145 SETTABLEKS                       R12 R11 K27 ["onActivated"]
      147 SETLIST                          R10 R11 1 [1]
      149 SETTABLEKS                       R10 R9 K19 ["actions"]
      151 GETTABLEKS                       R10 R2 K33 ["dismiss"]
      153 SETTABLEKS                       R10 R9 K20 ["onClose"]
      155 GETUPVAL                         R10 5
      156 GETTABLEKS                       R10 R10 K34 ["createElement"]
      158 GETUPVAL                         R11 4
      159 GETTABLEKS                       R11 R11 K35 ["EducationalTooltip"]
      161 MOVE                             R12 R9
      162 CALL                             R10 2 -1
      163 RETURN                           R10 -1

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
       66 DUPCLOSURE                       R10 K20 [PROTO_0]
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R1
       73 RETURN                           R10 1
