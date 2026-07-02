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
        2 DUPTABLE                         R2 K4 [{[1] = "Got it", ["onActivated"], ["variant"]}]
        3 DUPCLOSURE                       R3 K5 [PROTO_0]
        4 SETTABLEKS                       R3 R2 K2 ["onActivated"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K6 ["Emphasis"]
        9 SETTABLEKS                       R3 R2 K3 ["variant"]
       11 SETLIST                          R1 R2 1 [1]
       13 JUMPIFNOT                        R0 ; [+15]
       14 DUPTABLE                         R4 K8 [{[1] = "Skipppp", ["onActivated"], ["variant"]}]
       15 DUPCLOSURE                       R5 K9 [PROTO_1]
       16 SETTABLEKS                       R5 R4 K2 ["onActivated"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K10 ["Standard"]
       21 SETTABLEKS                       R5 R4 K3 ["variant"]
       23 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       25 MOVE                             R3 R1
       26 GETIMPORT                        R2 K13 [table.insert]
       28 CALL                             R2 2 0
       29 RETURN                           R1 1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{["Size"], ["tag"] = "row align-x-center align-y-center"}]
        5 GETIMPORT                        R4 K7 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 500
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K0 ["createElement"]
       17 GETUPVAL                         R5 2
       18 DUPTABLE                         R6 K16 [{"title", "side", "align", "text", "isOpen", "onClose", "steps", "actions"}]
       19 GETTABLEKS                       R7 R0 K17 ["controls"]
       21 GETTABLEKS                       R7 R7 K8 ["title"]
       23 SETTABLEKS                       R7 R6 K8 ["title"]
       25 GETTABLEKS                       R7 R0 K17 ["controls"]
       27 GETTABLEKS                       R7 R7 K9 ["side"]
       29 SETTABLEKS                       R7 R6 K9 ["side"]
       31 GETTABLEKS                       R7 R0 K17 ["controls"]
       33 GETTABLEKS                       R7 R7 K10 ["align"]
       35 SETTABLEKS                       R7 R6 K10 ["align"]
       37 GETTABLEKS                       R7 R0 K17 ["controls"]
       39 GETTABLEKS                       R7 R7 K11 ["text"]
       41 SETTABLEKS                       R7 R6 K11 ["text"]
       43 GETTABLEKS                       R7 R0 K17 ["controls"]
       45 GETTABLEKS                       R7 R7 K12 ["isOpen"]
       47 SETTABLEKS                       R7 R6 K12 ["isOpen"]
       49 GETTABLEKS                       R8 R0 K17 ["controls"]
       51 GETTABLEKS                       R8 R8 K18 ["hasCloseAffordance"]
       53 JUMPIFNOT                        R8 ; [+2]
       54 DUPCLOSURE                       R7 K19 [PROTO_3]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R7
       57 SETTABLEKS                       R7 R6 K13 ["onClose"]
       59 GETTABLEKS                       R8 R0 K17 ["controls"]
       61 GETTABLEKS                       R8 R8 K20 ["showSteps"]
       63 JUMPIFNOT                        R8 ; [+2]
       64 DUPTABLE                         R7 K25 [{["current"] = 2, ["total"] = 5}]
       65 JUMP                             ; [+1]
       66 LOADNIL                          R7
       67 SETTABLEKS                       R7 R6 K14 ["steps"]
       69 GETTABLEKS                       R8 R0 K17 ["controls"]
       71 GETTABLEKS                       R8 R8 K26 ["hasActions"]
       73 JUMPIFNOT                        R8 ; [+7]
       74 GETUPVAL                         R7 3
       75 GETTABLEKS                       R8 R0 K17 ["controls"]
       77 GETTABLEKS                       R8 R8 K27 ["hasSecondaryButton"]
       79 CALL                             R7 1 1
       80 JUMP                             ; [+1]
       81 LOADNIL                          R7
       82 SETTABLEKS                       R7 R6 K15 ["actions"]
       84 GETUPVAL                         R7 0
       85 GETTABLEKS                       R7 R7 K0 ["createElement"]
       87 GETUPVAL                         R8 4
       88 DUPTABLE                         R9 K32 [{["icon"] = "reactions/heart", ["size"], ["onActivated"]}]
       89 GETUPVAL                         R10 5
       90 GETTABLEKS                       R10 R10 K33 ["Medium"]
       92 SETTABLEKS                       R10 R9 K30 ["size"]
       94 DUPCLOSURE                       R10 K34 [PROTO_4]
       95 SETTABLEKS                       R10 R9 K31 ["onActivated"]
       97 CALL                             R7 2 -1
       98 CALL                             R4 -1 -1
       99 CALL                             R1 -1 -1
      100 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R5 K10 ["ButtonVariant"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R6 K12 ["Coachmark"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["IconButton"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["InputSize"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Enums"]
       51 GETTABLEKS                       R9 R9 K15 ["PopoverAlign"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K9 ["Enums"]
       58 GETTABLEKS                       R10 R10 K16 ["PopoverSide"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K11 ["Components"]
       65 GETTABLEKS                       R11 R11 K17 ["Types"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K11 ["Components"]
       72 GETTABLEKS                       R12 R12 K18 ["View"]
       74 CALL                             R11 1 1
       75 DUPCLOSURE                       R12 K19 [PROTO_2]
       76 CAPTURE                          VAL R4
       77 DUPTABLE                         R13 K23 [{["summary"] = "Coachmark", ["story"], ["controls"]}]
       78 DUPCLOSURE                       R14 K24 [PROTO_5]
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R7
       85 SETTABLEKS                       R14 R13 K21 ["story"]
       87 DUPTABLE                         R14 K38 [{["title"] = "Title", ["text"] = "Generally we should avoid coachmarks with long titles and bodys. Consider using other affordances for sharing contextual information when content expands beyond a few lines.", ["side"], ["align"], ["hasSecondaryButton"] = False, ["hasCloseAffordance"] = False, ["hasActions"] = True, ["isOpen"] = True, ["showSteps"] = True}]
       88 GETTABLEKS                       R15 R2 K39 ["values"]
       90 MOVE                             R16 R9
       91 CALL                             R15 1 1
       92 SETTABLEKS                       R15 R14 K29 ["side"]
       94 GETTABLEKS                       R15 R2 K39 ["values"]
       96 MOVE                             R16 R8
       97 CALL                             R15 1 1
       98 SETTABLEKS                       R15 R14 K30 ["align"]
      100 SETTABLEKS                       R14 R13 K22 ["controls"]
      102 RETURN                           R13 1
