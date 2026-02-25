PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Primary button clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Secondary button clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 1
        2 DUPTABLE                         R2 K3 [{"text", "onActivated", "variant"}]
        3 LOADK                            R3 K4 ["Got it"]
        4 SETTABLEKS                       R3 R2 K0 ["text"]
        6 DUPCLOSURE                       R3 K5 [PROTO_0]
        7 SETTABLEKS                       R3 R2 K1 ["onActivated"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K6 ["Emphasis"]
       12 SETTABLEKS                       R3 R2 K2 ["variant"]
       14 SETLIST                          R1 R2 1 [1]
       16 JUMPIFNOT                        R0 ; [+18]
       17 DUPTABLE                         R4 K3 [{"text", "onActivated", "variant"}]
       18 LOADK                            R5 K7 ["Skipppp"]
       19 SETTABLEKS                       R5 R4 K0 ["text"]
       21 DUPCLOSURE                       R5 K8 [PROTO_1]
       22 SETTABLEKS                       R5 R4 K1 ["onActivated"]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K9 ["Standard"]
       27 SETTABLEKS                       R5 R4 K2 ["variant"]
       29 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       31 MOVE                             R3 R1
       32 GETIMPORT                        R2 K12 [table.insert]
       34 CALL                             R2 2 0
       35 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Close affordance clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Icon button clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Size", "tag"}]
        5 GETIMPORT                        R4 K6 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 244
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 LOADK                            R4 K7 ["row align-x-center align-y-center"]
       15 SETTABLEKS                       R4 R3 K2 ["tag"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K0 ["createElement"]
       20 GETUPVAL                         R5 2
       21 DUPTABLE                         R6 K16 [{"title", "side", "align", "text", "isOpen", "onClose", "steps", "actions"}]
       22 GETTABLEKS                       R8 R0 K17 ["controls"]
       24 GETTABLEKS                       R7 R8 K8 ["title"]
       26 SETTABLEKS                       R7 R6 K8 ["title"]
       28 GETTABLEKS                       R8 R0 K17 ["controls"]
       30 GETTABLEKS                       R7 R8 K9 ["side"]
       32 SETTABLEKS                       R7 R6 K9 ["side"]
       34 GETTABLEKS                       R8 R0 K17 ["controls"]
       36 GETTABLEKS                       R7 R8 K10 ["align"]
       38 SETTABLEKS                       R7 R6 K10 ["align"]
       40 GETTABLEKS                       R8 R0 K17 ["controls"]
       42 GETTABLEKS                       R7 R8 K11 ["text"]
       44 SETTABLEKS                       R7 R6 K11 ["text"]
       46 GETTABLEKS                       R8 R0 K17 ["controls"]
       48 GETTABLEKS                       R7 R8 K12 ["isOpen"]
       50 SETTABLEKS                       R7 R6 K12 ["isOpen"]
       52 GETTABLEKS                       R9 R0 K17 ["controls"]
       54 GETTABLEKS                       R8 R9 K18 ["hasCloseAffordance"]
       56 JUMPIFNOT                        R8 ; [+2]
       57 DUPCLOSURE                       R7 K19 [PROTO_3]
       58 JUMP                             ; [+1]
       59 LOADNIL                          R7
       60 SETTABLEKS                       R7 R6 K13 ["onClose"]
       62 GETTABLEKS                       R9 R0 K17 ["controls"]
       64 GETTABLEKS                       R8 R9 K20 ["showSteps"]
       66 JUMPIFNOT                        R8 ; [+8]
       67 DUPTABLE                         R7 K23 [{"current", "total"}]
       68 LOADN                            R8 2
       69 SETTABLEKS                       R8 R7 K21 ["current"]
       71 LOADN                            R8 5
       72 SETTABLEKS                       R8 R7 K22 ["total"]
       74 JUMP                             ; [+1]
       75 LOADNIL                          R7
       76 SETTABLEKS                       R7 R6 K14 ["steps"]
       78 GETTABLEKS                       R9 R0 K17 ["controls"]
       80 GETTABLEKS                       R8 R9 K24 ["hasActions"]
       82 JUMPIFNOT                        R8 ; [+7]
       83 GETUPVAL                         R7 3
       84 GETTABLEKS                       R9 R0 K17 ["controls"]
       86 GETTABLEKS                       R8 R9 K25 ["hasSecondaryButton"]
       88 CALL                             R7 1 1
       89 JUMP                             ; [+1]
       90 LOADNIL                          R7
       91 SETTABLEKS                       R7 R6 K15 ["actions"]
       93 GETUPVAL                         R8 0
       94 GETTABLEKS                       R7 R8 K0 ["createElement"]
       96 GETUPVAL                         R8 4
       97 DUPTABLE                         R9 K29 [{"icon", "size", "onActivated"}]
       98 LOADK                            R10 K30 ["icons/controls/voice/microphone_off_light"]
       99 SETTABLEKS                       R10 R9 K26 ["icon"]
      101 GETUPVAL                         R11 5
      102 GETTABLEKS                       R10 R11 K31 ["Medium"]
      104 SETTABLEKS                       R10 R9 K27 ["size"]
      106 DUPCLOSURE                       R10 K32 [PROTO_4]
      107 SETTABLEKS                       R10 R9 K28 ["onActivated"]
      109 CALL                             R7 2 -1
      110 CALL                             R4 -1 -1
      111 CALL                             R1 -1 -1
      112 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Coachmark"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R8 K12 ["IconButton"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K13 ["Enums"]
       44 GETTABLEKS                       R8 R9 K14 ["InputSize"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K13 ["Enums"]
       51 GETTABLEKS                       R9 R10 K15 ["PopoverSide"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R11 R0 K13 ["Enums"]
       58 GETTABLEKS                       R10 R11 K16 ["PopoverAlign"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R12 R0 K13 ["Enums"]
       65 GETTABLEKS                       R11 R12 K17 ["ButtonVariant"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R13 R0 K9 ["Components"]
       72 GETTABLEKS                       R12 R13 K18 ["Types"]
       74 CALL                             R11 1 1
       75 DUPCLOSURE                       R12 K19 [PROTO_2]
       76 CAPTURE                          VAL R10
       77 DUPTABLE                         R13 K23 [{"summary", "story", "controls"}]
       78 LOADK                            R14 K10 ["Coachmark"]
       79 SETTABLEKS                       R14 R13 K20 ["summary"]
       81 DUPCLOSURE                       R14 K24 [PROTO_5]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R7
       88 SETTABLEKS                       R14 R13 K21 ["story"]
       90 DUPTABLE                         R14 K34 [{"title", "text", "side", "align", "hasSecondaryButton", "hasCloseAffordance", "hasActions", "isOpen", "showSteps"}]
       91 LOADK                            R15 K35 ["Title"]
       92 SETTABLEKS                       R15 R14 K25 ["title"]
       94 LOADK                            R15 K36 ["Generally we should avoid coachmarks with long titles and bodys. Consider using other affordances for sharing contextual information when content expands beyond a few lines."]
       95 SETTABLEKS                       R15 R14 K26 ["text"]
       97 GETTABLEKS                       R15 R3 K37 ["values"]
       99 MOVE                             R16 R8
      100 CALL                             R15 1 1
      101 SETTABLEKS                       R15 R14 K27 ["side"]
      103 GETTABLEKS                       R15 R3 K37 ["values"]
      105 MOVE                             R16 R9
      106 CALL                             R15 1 1
      107 SETTABLEKS                       R15 R14 K28 ["align"]
      109 LOADB                            R15 0
      110 SETTABLEKS                       R15 R14 K29 ["hasSecondaryButton"]
      112 LOADB                            R15 0
      113 SETTABLEKS                       R15 R14 K30 ["hasCloseAffordance"]
      115 LOADB                            R15 1
      116 SETTABLEKS                       R15 R14 K31 ["hasActions"]
      118 LOADB                            R15 1
      119 SETTABLEKS                       R15 R14 K32 ["isOpen"]
      121 LOADB                            R15 1
      122 SETTABLEKS                       R15 R14 K33 ["showSteps"]
      124 SETTABLEKS                       R14 R13 K22 ["controls"]
      126 RETURN                           R13 1
