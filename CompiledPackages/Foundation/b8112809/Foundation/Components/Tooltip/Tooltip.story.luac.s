PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Size", "tag"}]
        5 GETIMPORT                        R4 K6 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 44
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 LOADK                            R4 K7 ["row align-x-right align-y-center"]
       15 SETTABLEKS                       R4 R3 K2 ["tag"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K0 ["createElement"]
       20 GETUPVAL                         R5 2
       21 DUPTABLE                         R6 K13 [{"title", "shortcut", "side", "align", "text"}]
       22 GETTABLEKS                       R8 R0 K14 ["controls"]
       24 GETTABLEKS                       R7 R8 K8 ["title"]
       26 SETTABLEKS                       R7 R6 K8 ["title"]
       28 GETUPVAL                         R7 3
       29 SETTABLEKS                       R7 R6 K9 ["shortcut"]
       31 GETTABLEKS                       R8 R0 K14 ["controls"]
       33 GETTABLEKS                       R7 R8 K10 ["side"]
       35 SETTABLEKS                       R7 R6 K10 ["side"]
       37 GETTABLEKS                       R8 R0 K14 ["controls"]
       39 GETTABLEKS                       R7 R8 K11 ["align"]
       41 SETTABLEKS                       R7 R6 K11 ["align"]
       43 LOADK                            R7 K15 ["Generally we should avoid tooltips with long titles and bodys. Consider using other affordances for sharing contextual information when content expands beyond a few lines."]
       44 SETTABLEKS                       R7 R6 K12 ["text"]
       46 GETUPVAL                         R8 0
       47 GETTABLEKS                       R7 R8 K0 ["createElement"]
       49 GETUPVAL                         R8 1
       50 DUPTABLE                         R9 K16 [{"tag"}]
       51 LOADK                            R10 K17 ["auto-xy bg-surface-100 radius-medium"]
       52 SETTABLEKS                       R10 R9 K2 ["tag"]
       54 GETUPVAL                         R11 0
       55 GETTABLEKS                       R10 R11 K0 ["createElement"]
       57 GETUPVAL                         R11 4
       58 DUPTABLE                         R12 K20 [{"name", "size"}]
       59 LOADK                            R13 K21 ["icons/controls/voice/microphone_off_light"]
       60 SETTABLEKS                       R13 R12 K18 ["name"]
       62 GETUPVAL                         R14 5
       63 GETTABLEKS                       R13 R14 K22 ["Medium"]
       65 SETTABLEKS                       R13 R12 K19 ["size"]
       67 CALL                             R10 2 -1
       68 CALL                             R7 -1 -1
       69 CALL                             R4 -1 -1
       70 CALL                             R1 -1 -1
       71 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"title", "shortcut", "side", "align"}]
        5 GETTABLEKS                       R5 R0 K6 ["controls"]
        7 GETTABLEKS                       R4 R5 K7 ["text"]
        9 SETTABLEKS                       R4 R3 K1 ["title"]
       11 GETUPVAL                         R4 2
       12 SETTABLEKS                       R4 R3 K2 ["shortcut"]
       14 GETTABLEKS                       R5 R0 K6 ["controls"]
       16 GETTABLEKS                       R4 R5 K3 ["side"]
       18 SETTABLEKS                       R4 R3 K3 ["side"]
       20 GETTABLEKS                       R5 R0 K6 ["controls"]
       22 GETTABLEKS                       R4 R5 K4 ["align"]
       24 SETTABLEKS                       R4 R3 K4 ["align"]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R4 R5 K0 ["createElement"]
       29 GETUPVAL                         R5 3
       30 DUPTABLE                         R6 K9 [{"tag"}]
       31 LOADK                            R7 K10 ["auto-xy bg-surface-100 radius-medium"]
       32 SETTABLEKS                       R7 R6 K8 ["tag"]
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R7 R8 K0 ["createElement"]
       37 GETUPVAL                         R8 4
       38 DUPTABLE                         R9 K13 [{"name", "size"}]
       39 LOADK                            R10 K14 ["icons/controls/voice/microphone_off_light"]
       40 SETTABLEKS                       R10 R9 K11 ["name"]
       42 GETUPVAL                         R11 5
       43 GETTABLEKS                       R10 R11 K15 ["Medium"]
       45 SETTABLEKS                       R10 R9 K12 ["size"]
       47 CALL                             R7 2 -1
       48 CALL                             R4 -1 -1
       49 CALL                             R1 -1 -1
       50 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Size", "tag"}]
        5 GETIMPORT                        R4 K6 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 44
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 LOADK                            R4 K7 ["row align-x-center align-y-center"]
       15 SETTABLEKS                       R4 R3 K2 ["tag"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K0 ["createElement"]
       20 GETUPVAL                         R5 2
       21 DUPTABLE                         R6 K13 [{"title", "shortcut", "side", "align", "text"}]
       22 LOADK                            R7 K14 ["Test"]
       23 SETTABLEKS                       R7 R6 K8 ["title"]
       25 GETUPVAL                         R7 3
       26 SETTABLEKS                       R7 R6 K9 ["shortcut"]
       28 GETTABLEKS                       R8 R0 K15 ["controls"]
       30 GETTABLEKS                       R7 R8 K10 ["side"]
       32 SETTABLEKS                       R7 R6 K10 ["side"]
       34 GETTABLEKS                       R8 R0 K15 ["controls"]
       36 GETTABLEKS                       R7 R8 K11 ["align"]
       38 SETTABLEKS                       R7 R6 K11 ["align"]
       40 LOADK                            R7 K16 ["Hi!"]
       41 SETTABLEKS                       R7 R6 K12 ["text"]
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R7 R8 K0 ["createElement"]
       46 GETUPVAL                         R8 1
       47 DUPTABLE                         R9 K17 [{"tag"}]
       48 LOADK                            R10 K18 ["auto-xy bg-surface-100 radius-medium"]
       49 SETTABLEKS                       R10 R9 K2 ["tag"]
       51 GETUPVAL                         R11 0
       52 GETTABLEKS                       R10 R11 K0 ["createElement"]
       54 GETUPVAL                         R11 4
       55 DUPTABLE                         R12 K21 [{"name", "size"}]
       56 LOADK                            R13 K22 ["icons/controls/voice/microphone_off_light"]
       57 SETTABLEKS                       R13 R12 K19 ["name"]
       59 GETUPVAL                         R14 5
       60 GETTABLEKS                       R13 R14 K23 ["Medium"]
       62 SETTABLEKS                       R13 R12 K20 ["size"]
       64 CALL                             R10 2 -1
       65 CALL                             R7 -1 -1
       66 CALL                             R4 -1 -1
       67 CALL                             R1 -1 -1
       68 RETURN                           R1 -1

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
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Icon"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R7 K12 ["IconSize"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K11 ["Enums"]
       37 GETTABLEKS                       R7 R8 K13 ["PopoverAlign"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K11 ["Enums"]
       44 GETTABLEKS                       R8 R9 K14 ["PopoverSide"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K9 ["Components"]
       51 GETTABLEKS                       R9 R10 K15 ["Tooltip"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R11 R0 K9 ["Components"]
       58 GETTABLEKS                       R10 R11 K16 ["View"]
       60 CALL                             R9 1 1
       61 NEWTABLE                         R10 0 3
       63 GETIMPORT                        R11 K20 [Enum.KeyCode.F2]
       65 GETIMPORT                        R12 K22 [Enum.KeyCode.One]
       67 GETIMPORT                        R13 K24 [Enum.KeyCode.ButtonR3]
       69 SETLIST                          R10 R11 3 [1]
       71 DUPTABLE                         R11 K28 [{"summary", "stories", "controls"}]
       72 LOADK                            R12 K15 ["Tooltip"]
       73 SETTABLEKS                       R12 R11 K25 ["summary"]
       75 NEWTABLE                         R12 0 3
       77 DUPTABLE                         R13 K31 [{"name", "story"}]
       78 LOADK                            R14 K32 ["Base"]
       79 SETTABLEKS                       R14 R13 K29 ["name"]
       81 DUPCLOSURE                       R14 K33 [PROTO_0]
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R5
       88 SETTABLEKS                       R14 R13 K30 ["story"]
       90 DUPTABLE                         R14 K31 [{"name", "story"}]
       91 LOADK                            R15 K34 ["Only title"]
       92 SETTABLEKS                       R15 R14 K29 ["name"]
       94 DUPCLOSURE                       R15 K35 [PROTO_1]
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R5
      101 SETTABLEKS                       R15 R14 K30 ["story"]
      103 DUPTABLE                         R15 K31 [{"name", "story"}]
      104 LOADK                            R16 K36 ["Short text"]
      105 SETTABLEKS                       R16 R15 K29 ["name"]
      107 DUPCLOSURE                       R16 K37 [PROTO_2]
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R5
      114 SETTABLEKS                       R16 R15 K30 ["story"]
      116 SETLIST                          R12 R13 3 [1]
      118 SETTABLEKS                       R12 R11 K26 ["stories"]
      120 DUPTABLE                         R12 K41 [{"title", "side", "align"}]
      121 LOADK                            R13 K42 ["Title"]
      122 SETTABLEKS                       R13 R12 K38 ["title"]
      124 GETTABLEKS                       R13 R2 K43 ["values"]
      126 MOVE                             R14 R7
      127 CALL                             R13 1 1
      128 SETTABLEKS                       R13 R12 K39 ["side"]
      130 GETTABLEKS                       R13 R2 K43 ["values"]
      132 MOVE                             R14 R6
      133 CALL                             R13 1 1
      134 SETTABLEKS                       R13 R12 K40 ["align"]
      136 SETTABLEKS                       R12 R11 K27 ["controls"]
      138 RETURN                           R11 1
