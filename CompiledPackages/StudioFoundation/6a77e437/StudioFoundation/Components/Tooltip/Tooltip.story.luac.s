PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U2
       13 NEWTABLE                         R6 0 1
       15 MOVE                             R7 R3
       16 SETLIST                          R6 R7 1 [1]
       18 CALL                             R4 2 1
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K1 ["useCallback"]
       22 NEWCLOSURE                       R6 P1
       23 CAPTURE                          VAL R3
       24 NEWTABLE                         R7 0 1
       26 MOVE                             R8 R3
       27 SETLIST                          R7 R8 1 [1]
       29 CALL                             R5 2 1
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K2 ["createElement"]
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R7 R7 K3 ["Fragment"]
       36 LOADNIL                          R8
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R9 R9 K2 ["createElement"]
       40 GETUPVAL                         R10 3
       41 DUPTABLE                         R11 K8 [{["tag"] = "size-2000-2000 bg-system-emphasis", ["onStateChanged"], ["ref"]}]
       42 SETTABLEKS                       R4 R11 K6 ["onStateChanged"]
       44 GETTABLEKS                       R12 R1 K7 ["ref"]
       46 SETTABLEKS                       R12 R11 K7 ["ref"]
       48 CALL                             R9 2 1
       49 GETUPVAL                         R10 1
       50 GETTABLEKS                       R10 R10 K2 ["createElement"]
       52 GETUPVAL                         R11 4
       53 DUPTABLE                         R12 K18 [{["isOpen"], ["onClose"], ["title"] = "Title", ["text"], ["anchorUri"], ["anchorRef"], ["side"], ["align"]}]
       54 SETTABLEKS                       R2 R12 K9 ["isOpen"]
       56 SETTABLEKS                       R5 R12 K10 ["onClose"]
       58 GETTABLEKS                       R14 R0 K13 ["text"]
       60 ORK                              R13 R14 K19 ["Text"]
       61 SETTABLEKS                       R13 R12 K13 ["text"]
       63 GETTABLEKS                       R13 R1 K20 ["uri"]
       65 SETTABLEKS                       R13 R12 K14 ["anchorUri"]
       67 GETTABLEKS                       R13 R1 K7 ["ref"]
       69 SETTABLEKS                       R13 R12 K15 ["anchorRef"]
       71 GETTABLEKS                       R13 R0 K16 ["side"]
       73 SETTABLEKS                       R13 R12 K16 ["side"]
       75 GETTABLEKS                       R13 R0 K17 ["align"]
       77 SETTABLEKS                       R13 R12 K17 ["align"]
       79 CALL                             R10 2 -1
       80 CALL                             R6 -1 -1
       81 RETURN                           R6 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 LOADNIL                          R3
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K1 ["Provider"]
       13 DUPTABLE                         R6 K4 [{["uriScope"] = "BasicStory"}]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K0 ["createElement"]
       17 GETUPVAL                         R8 3
       18 GETTABLEKS                       R9 R0 K5 ["controls"]
       20 CALL                             R7 2 -1
       21 CALL                             R4 -1 -1
       22 CALL                             R1 -1 -1
       23 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K5 [{["showDelay"] = 0.5, ["hideDelay"] = 0.5}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K1 ["Provider"]
       13 DUPTABLE                         R6 K8 [{["uriScope"] = "DelayGroupStory"}]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K0 ["createElement"]
       17 GETUPVAL                         R8 3
       18 DUPTABLE                         R9 K11 [{["tag"] = "auto-xy row gap-large"}]
       19 GETUPVAL                         R10 0
       20 GETTABLEKS                       R10 R10 K0 ["createElement"]
       22 GETUPVAL                         R11 4
       23 DUPTABLE                         R12 K16 [{["side"], ["align"], ["text"] = "Text"}]
       24 GETTABLEKS                       R13 R0 K17 ["controls"]
       26 GETTABLEKS                       R13 R13 K12 ["side"]
       28 SETTABLEKS                       R13 R12 K12 ["side"]
       30 GETTABLEKS                       R13 R0 K17 ["controls"]
       32 GETTABLEKS                       R13 R13 K13 ["align"]
       34 SETTABLEKS                       R13 R12 K13 ["align"]
       36 CALL                             R10 2 1
       37 GETUPVAL                         R11 0
       38 GETTABLEKS                       R11 R11 K0 ["createElement"]
       40 GETUPVAL                         R12 4
       41 DUPTABLE                         R13 K19 [{["side"], ["align"], ["text"] = "Longer text that should most likely wrap into several lines"}]
       42 GETTABLEKS                       R14 R0 K17 ["controls"]
       44 GETTABLEKS                       R14 R14 K12 ["side"]
       46 SETTABLEKS                       R14 R13 K12 ["side"]
       48 GETTABLEKS                       R14 R0 K17 ["controls"]
       50 GETTABLEKS                       R14 R14 K13 ["align"]
       52 SETTABLEKS                       R14 R13 K13 ["align"]
       54 CALL                             R11 2 1
       55 GETUPVAL                         R12 0
       56 GETTABLEKS                       R12 R12 K0 ["createElement"]
       58 GETUPVAL                         R13 4
       59 DUPTABLE                         R14 K21 [{["side"], ["align"], ["text"] = "Short again"}]
       60 GETTABLEKS                       R15 R0 K17 ["controls"]
       62 GETTABLEKS                       R15 R15 K12 ["side"]
       64 SETTABLEKS                       R15 R14 K12 ["side"]
       66 GETTABLEKS                       R15 R0 K17 ["controls"]
       68 GETTABLEKS                       R15 R15 K13 ["align"]
       70 SETTABLEKS                       R15 R14 K13 ["align"]
       72 CALL                             R12 2 -1
       73 CALL                             R7 -1 -1
       74 CALL                             R4 -1 -1
       75 CALL                             R1 -1 -1
       76 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
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
       21 GETTABLEKS                       R5 R1 K9 ["Foundation"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R4 K10 ["View"]
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Hooks"]
       30 GETTABLEKS                       R7 R7 K12 ["useUniqueWidget"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R0 K13 ["Components"]
       37 GETTABLEKS                       R8 R8 K14 ["Tooltip"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R9 R0 K15 ["Contexts"]
       44 GETTABLEKS                       R9 R9 K16 ["TooltipSettingsContext"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K6 [require]
       49 GETTABLEKS                       R10 R0 K17 ["Panels"]
       51 GETTABLEKS                       R10 R10 K18 ["PanelsContext"]
       53 CALL                             R9 1 1
       54 GETTABLEKS                       R10 R4 K19 ["Enums"]
       56 GETTABLEKS                       R10 R10 K20 ["ControlState"]
       58 GETTABLEKS                       R11 R4 K19 ["Enums"]
       60 GETTABLEKS                       R11 R11 K21 ["PopoverAlign"]
       62 GETTABLEKS                       R12 R4 K19 ["Enums"]
       64 GETTABLEKS                       R12 R12 K22 ["PopoverSide"]
       66 DUPCLOSURE                       R13 K23 [PROTO_2]
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R7
       72 DUPTABLE                         R14 K27 [{["summary"] = "Tooltip", ["stories"], ["controls"]}]
       73 DUPTABLE                         R15 K30 [{"Basic", "DelayGroup"}]
       74 DUPTABLE                         R16 K33 [{["name"] = "Basic", ["story"]}]
       75 DUPCLOSURE                       R17 K34 [PROTO_3]
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R13
       80 SETTABLEKS                       R17 R16 K32 ["story"]
       82 SETTABLEKS                       R16 R15 K28 ["Basic"]
       84 DUPTABLE                         R16 K35 [{["name"] = "DelayGroup", ["story"]}]
       85 DUPCLOSURE                       R17 K36 [PROTO_4]
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R13
       91 SETTABLEKS                       R17 R16 K32 ["story"]
       93 SETTABLEKS                       R16 R15 K29 ["DelayGroup"]
       95 SETTABLEKS                       R15 R14 K25 ["stories"]
       97 DUPTABLE                         R15 K39 [{"side", "align"}]
       98 GETTABLEKS                       R16 R3 K40 ["values"]
      100 MOVE                             R17 R12
      101 CALL                             R16 1 1
      102 SETTABLEKS                       R16 R15 K37 ["side"]
      104 GETTABLEKS                       R16 R3 K40 ["values"]
      106 MOVE                             R17 R11
      107 CALL                             R16 1 1
      108 SETTABLEKS                       R16 R15 K38 ["align"]
      110 SETTABLEKS                       R15 R14 K26 ["controls"]
      112 RETURN                           R14 1
