PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{["Size"], ["tag"] = "row align-x-right align-y-center"}]
        5 GETIMPORT                        R4 K7 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 300
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K0 ["createElement"]
       17 GETUPVAL                         R5 2
       18 DUPTABLE                         R6 K14 [{["title"], ["shortcut"], ["side"], ["align"], ["text"] = "Generally we should avoid tooltips with long titles and bodys. Consider using other affordances for sharing contextual information when content expands beyond a few lines."}]
       19 GETTABLEKS                       R7 R0 K15 ["controls"]
       21 GETTABLEKS                       R7 R7 K8 ["title"]
       23 SETTABLEKS                       R7 R6 K8 ["title"]
       25 GETUPVAL                         R7 3
       26 SETTABLEKS                       R7 R6 K9 ["shortcut"]
       28 GETTABLEKS                       R7 R0 K15 ["controls"]
       30 GETTABLEKS                       R7 R7 K10 ["side"]
       32 SETTABLEKS                       R7 R6 K10 ["side"]
       34 GETTABLEKS                       R7 R0 K15 ["controls"]
       36 GETTABLEKS                       R7 R7 K11 ["align"]
       38 SETTABLEKS                       R7 R6 K11 ["align"]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K0 ["createElement"]
       43 GETUPVAL                         R8 1
       44 DUPTABLE                         R9 K17 [{["tag"] = "auto-xy bg-surface-100 radius-medium"}]
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R10 R10 K0 ["createElement"]
       48 GETUPVAL                         R11 4
       49 DUPTABLE                         R12 K21 [{["name"] = "icons/controls/voice/microphone_off_light", ["size"]}]
       50 GETUPVAL                         R13 5
       51 GETTABLEKS                       R13 R13 K22 ["Medium"]
       53 SETTABLEKS                       R13 R12 K20 ["size"]
       55 CALL                             R10 2 -1
       56 CALL                             R7 -1 -1
       57 CALL                             R4 -1 -1
       58 CALL                             R1 -1 -1
       59 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"title", "shortcut", "side", "align"}]
        5 GETTABLEKS                       R4 R0 K6 ["controls"]
        7 GETTABLEKS                       R4 R4 K7 ["text"]
        9 SETTABLEKS                       R4 R3 K1 ["title"]
       11 GETUPVAL                         R4 2
       12 SETTABLEKS                       R4 R3 K2 ["shortcut"]
       14 GETTABLEKS                       R4 R0 K6 ["controls"]
       16 GETTABLEKS                       R4 R4 K3 ["side"]
       18 SETTABLEKS                       R4 R3 K3 ["side"]
       20 GETTABLEKS                       R4 R0 K6 ["controls"]
       22 GETTABLEKS                       R4 R4 K4 ["align"]
       24 SETTABLEKS                       R4 R3 K4 ["align"]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K0 ["createElement"]
       29 GETUPVAL                         R5 3
       30 DUPTABLE                         R6 K10 [{["tag"] = "auto-xy bg-surface-100 radius-medium"}]
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R7 R7 K0 ["createElement"]
       34 GETUPVAL                         R8 4
       35 DUPTABLE                         R9 K14 [{["name"] = "icons/controls/voice/microphone_off_light", ["size"]}]
       36 GETUPVAL                         R10 5
       37 GETTABLEKS                       R10 R10 K15 ["Medium"]
       39 SETTABLEKS                       R10 R9 K13 ["size"]
       41 CALL                             R7 2 -1
       42 CALL                             R4 -1 -1
       43 CALL                             R1 -1 -1
       44 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{["Size"], ["tag"] = "row align-x-center align-y-center"}]
        5 GETIMPORT                        R4 K7 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 300
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K0 ["createElement"]
       17 GETUPVAL                         R5 2
       18 DUPTABLE                         R6 K15 [{["title"] = "Test", ["shortcut"], ["side"], ["align"], ["text"] = "Hi!"}]
       19 GETUPVAL                         R7 3
       20 SETTABLEKS                       R7 R6 K10 ["shortcut"]
       22 GETTABLEKS                       R7 R0 K16 ["controls"]
       24 GETTABLEKS                       R7 R7 K11 ["side"]
       26 SETTABLEKS                       R7 R6 K11 ["side"]
       28 GETTABLEKS                       R7 R0 K16 ["controls"]
       30 GETTABLEKS                       R7 R7 K12 ["align"]
       32 SETTABLEKS                       R7 R6 K12 ["align"]
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R7 R7 K0 ["createElement"]
       37 GETUPVAL                         R8 1
       38 DUPTABLE                         R9 K18 [{["tag"] = "auto-xy bg-surface-100 radius-medium"}]
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K0 ["createElement"]
       42 GETUPVAL                         R11 4
       43 DUPTABLE                         R12 K22 [{["name"] = "icons/controls/voice/microphone_off_light", ["size"]}]
       44 GETUPVAL                         R13 5
       45 GETTABLEKS                       R13 R13 K23 ["Medium"]
       47 SETTABLEKS                       R13 R12 K21 ["size"]
       49 CALL                             R10 2 -1
       50 CALL                             R7 -1 -1
       51 CALL                             R4 -1 -1
       52 CALL                             R1 -1 -1
       53 RETURN                           R1 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Icon"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R6 K12 ["IconSize"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Enums"]
       37 GETTABLEKS                       R7 R7 K13 ["PopoverAlign"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K11 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["PopoverSide"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Components"]
       51 GETTABLEKS                       R9 R9 K15 ["Tooltip"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K9 ["Components"]
       58 GETTABLEKS                       R10 R10 K16 ["View"]
       60 CALL                             R9 1 1
       61 NEWTABLE                         R10 0 3
       63 GETIMPORT                        R11 K20 [Enum.KeyCode.F2]
       65 GETIMPORT                        R12 K22 [Enum.KeyCode.One]
       67 GETIMPORT                        R13 K24 [Enum.KeyCode.ButtonR3]
       69 SETLIST                          R10 R11 3 [1]
       71 DUPTABLE                         R11 K28 [{["summary"] = "Tooltip", ["stories"], ["controls"]}]
       72 NEWTABLE                         R12 0 3
       74 DUPTABLE                         R13 K32 [{["name"] = "Base", ["story"]}]
       75 DUPCLOSURE                       R14 K33 [PROTO_0]
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R5
       82 SETTABLEKS                       R14 R13 K31 ["story"]
       84 DUPTABLE                         R14 K35 [{["name"] = "Only title", ["story"]}]
       85 DUPCLOSURE                       R15 K36 [PROTO_1]
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R5
       92 SETTABLEKS                       R15 R14 K31 ["story"]
       94 DUPTABLE                         R15 K38 [{["name"] = "Short text", ["story"]}]
       95 DUPCLOSURE                       R16 K39 [PROTO_2]
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R5
      102 SETTABLEKS                       R16 R15 K31 ["story"]
      104 SETLIST                          R12 R13 3 [1]
      106 SETTABLEKS                       R12 R11 K26 ["stories"]
      108 DUPTABLE                         R12 K44 [{["title"] = "Title", ["side"], ["align"]}]
      109 GETTABLEKS                       R13 R2 K45 ["values"]
      111 MOVE                             R14 R7
      112 CALL                             R13 1 1
      113 SETTABLEKS                       R13 R12 K42 ["side"]
      115 GETTABLEKS                       R13 R2 K45 ["values"]
      117 MOVE                             R14 R6
      118 CALL                             R13 1 1
      119 SETTABLEKS                       R13 R12 K43 ["align"]
      121 SETTABLEKS                       R12 R11 K27 ["controls"]
      123 RETURN                           R11 1
