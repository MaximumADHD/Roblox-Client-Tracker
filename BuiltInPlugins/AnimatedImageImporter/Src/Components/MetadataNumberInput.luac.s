PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getNextState"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["current"]
        6 JUMPIFEQKNIL                     R3 ; [+8]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K0 ["current"]
       11 GETTABLEKS                       R3 R3 K1 ["set"]
       13 MOVE                             R4 R2
       14 CALL                             R3 1 0
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K2 ["Enums"]
       18 GETTABLEKS                       R3 R3 K3 ["OnChangeCallbackReason"]
       20 GETTABLEKS                       R3 R3 K4 ["FocusLost"]
       22 JUMPIFNOTEQ                      R1 R3 ; [+25]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K0 ["current"]
       27 JUMPIFNOTEQKNIL                  R3 ; [+9]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K5 ["historyState"]
       32 GETTABLEKS                       R3 R3 K1 ["set"]
       34 MOVE                             R4 R2
       35 CALL                             R3 1 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R3 R3 K0 ["current"]
       40 GETTABLEKS                       R3 R3 K6 ["finish"]
       42 CALL                             R3 0 0
       43 GETUPVAL                         R3 1
       44 LOADNIL                          R4
       45 SETTABLEKS                       R4 R3 K0 ["current"]
       47 RETURN                           R0 0
       48 GETUPVAL                         R3 1
       49 GETTABLEKS                       R3 R3 K0 ["current"]
       51 JUMPIFNOTEQKNIL                  R3 ; [+14]
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R3 R3 K5 ["historyState"]
       56 GETTABLEKS                       R3 R3 K7 ["createRecording"]
       58 CALL                             R3 0 1
       59 GETTABLEKS                       R4 R3 K1 ["set"]
       61 MOVE                             R5 R2
       62 CALL                             R4 1 0
       63 GETUPVAL                         R4 1
       64 SETTABLEKS                       R3 R4 K0 ["current"]
       66 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["historyState"]
       10 GETTABLEKS                       R2 R2 K2 ["createRecording"]
       12 CALL                             R2 0 1
       13 SETTABLEKS                       R2 R1 K0 ["current"]
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R1 R0 K1 ["finish"]
        8 CALL                             R1 0 0
        9 GETUPVAL                         R1 0
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R1 K0 ["current"]
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["useEventCallback"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U2
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K1 ["useEventCallback"]
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R0
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K1 ["useEventCallback"]
       23 NEWCLOSURE                       R5 P2
       24 CAPTURE                          VAL R1
       25 CALL                             R4 1 1
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K2 ["useEffect"]
       29 NEWCLOSURE                       R6 P3
       30 CAPTURE                          VAL R4
       31 NEWTABLE                         R7 0 0
       33 CALL                             R5 2 0
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K3 ["createElement"]
       37 GETUPVAL                         R6 3
       38 DUPTABLE                         R7 K6 [{"text", "layoutOrder"}]
       39 GETTABLEKS                       R8 R0 K4 ["text"]
       41 SETTABLEKS                       R8 R7 K4 ["text"]
       43 GETTABLEKS                       R8 R0 K5 ["layoutOrder"]
       45 SETTABLEKS                       R8 R7 K5 ["layoutOrder"]
       47 DUPTABLE                         R8 K8 [{"Input"}]
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R9 R9 K3 ["createElement"]
       51 GETUPVAL                         R10 2
       52 GETTABLEKS                       R10 R10 K9 ["NumberInput"]
       54 DUPTABLE                         R11 K25 [{["isRequired"] = True, ["label"] = "", ["onChanged"], ["size"], ["width"], ["value"], ["suffix"], ["minimum"], ["maximum"], ["controlsVariant"], ["isScrubbable"] = True, ["onScrubStarted"], ["onScrubEnded"]}]
       55 SETTABLEKS                       R2 R11 K14 ["onChanged"]
       57 GETUPVAL                         R12 2
       58 GETTABLEKS                       R12 R12 K26 ["Enums"]
       60 GETTABLEKS                       R12 R12 K27 ["InputSize"]
       62 GETTABLEKS                       R12 R12 K28 ["XSmall"]
       64 SETTABLEKS                       R12 R11 K15 ["size"]
       66 GETIMPORT                        R12 K31 [UDim.new]
       68 LOADN                            R13 1
       69 LOADN                            R14 0
       70 CALL                             R12 2 1
       71 SETTABLEKS                       R12 R11 K16 ["width"]
       73 GETTABLEKS                       R12 R0 K17 ["value"]
       75 SETTABLEKS                       R12 R11 K17 ["value"]
       77 GETTABLEKS                       R12 R0 K18 ["suffix"]
       79 SETTABLEKS                       R12 R11 K18 ["suffix"]
       81 GETTABLEKS                       R12 R0 K19 ["minimum"]
       83 SETTABLEKS                       R12 R11 K19 ["minimum"]
       85 GETTABLEKS                       R12 R0 K20 ["maximum"]
       87 SETTABLEKS                       R12 R11 K20 ["maximum"]
       89 GETUPVAL                         R12 2
       90 GETTABLEKS                       R12 R12 K26 ["Enums"]
       92 GETTABLEKS                       R12 R12 K32 ["NumberInputControlsVariant"]
       94 GETTABLEKS                       R12 R12 K33 ["None"]
       96 SETTABLEKS                       R12 R11 K21 ["controlsVariant"]
       98 SETTABLEKS                       R3 R11 K23 ["onScrubStarted"]
      100 SETTABLEKS                       R4 R11 K24 ["onScrubEnded"]
      102 CALL                             R9 2 1
      103 SETTABLEKS                       R9 R8 K7 ["Input"]
      105 CALL                             R5 3 -1
      106 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["MetadataRow"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Libraries"]
       43 GETTABLEKS                       R6 R6 K14 ["useHistoryState"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K15 [PROTO_5]
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R2
       51 RETURN                           R6 1
