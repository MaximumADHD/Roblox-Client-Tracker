PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Hover"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K1 ["useCallback"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U2
       13 NEWTABLE                         R6 0 1
       15 MOVE                             R7 R3
       16 SETLIST                          R6 R7 1 [1]
       18 CALL                             R4 2 1
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R5 R6 K1 ["useCallback"]
       22 NEWCLOSURE                       R6 P1
       23 CAPTURE                          VAL R3
       24 NEWTABLE                         R7 0 1
       26 MOVE                             R8 R3
       27 SETLIST                          R7 R8 1 [1]
       29 CALL                             R5 2 1
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R6 R7 K2 ["createElement"]
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R7 R8 K3 ["Fragment"]
       36 LOADNIL                          R8
       37 GETUPVAL                         R10 1
       38 GETTABLEKS                       R9 R10 K2 ["createElement"]
       40 GETUPVAL                         R10 3
       41 DUPTABLE                         R11 K7 [{"tag", "onStateChanged", "ref"}]
       42 LOADK                            R12 K8 ["size-2000-2000 bg-system-emphasis"]
       43 SETTABLEKS                       R12 R11 K4 ["tag"]
       45 SETTABLEKS                       R4 R11 K5 ["onStateChanged"]
       47 GETTABLEKS                       R12 R1 K6 ["ref"]
       49 SETTABLEKS                       R12 R11 K6 ["ref"]
       51 CALL                             R9 2 1
       52 GETUPVAL                         R11 1
       53 GETTABLEKS                       R10 R11 K2 ["createElement"]
       55 GETUPVAL                         R11 4
       56 DUPTABLE                         R12 K17 [{"isOpen", "onClose", "title", "text", "anchorUri", "anchorRef", "side", "align"}]
       57 SETTABLEKS                       R2 R12 K9 ["isOpen"]
       59 SETTABLEKS                       R5 R12 K10 ["onClose"]
       61 LOADK                            R13 K18 ["Title"]
       62 SETTABLEKS                       R13 R12 K11 ["title"]
       64 GETTABLEKS                       R14 R0 K12 ["text"]
       66 ORK                              R13 R14 K19 ["Text"]
       67 SETTABLEKS                       R13 R12 K12 ["text"]
       69 GETTABLEKS                       R13 R1 K20 ["uri"]
       71 SETTABLEKS                       R13 R12 K13 ["anchorUri"]
       73 GETTABLEKS                       R13 R1 K6 ["ref"]
       75 SETTABLEKS                       R13 R12 K14 ["anchorRef"]
       77 GETTABLEKS                       R13 R0 K15 ["side"]
       79 SETTABLEKS                       R13 R12 K15 ["side"]
       81 GETTABLEKS                       R13 R0 K16 ["align"]
       83 SETTABLEKS                       R13 R12 K16 ["align"]
       85 CALL                             R10 2 -1
       86 CALL                             R6 -1 -1
       87 RETURN                           R6 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Provider"]
        6 LOADNIL                          R3
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["createElement"]
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K1 ["Provider"]
       13 DUPTABLE                         R6 K3 [{"uriScope"}]
       14 LOADK                            R7 K4 ["BasicStory"]
       15 SETTABLEKS                       R7 R6 K2 ["uriScope"]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R7 R8 K0 ["createElement"]
       20 GETUPVAL                         R8 3
       21 GETTABLEKS                       R9 R0 K5 ["controls"]
       23 CALL                             R7 2 -1
       24 CALL                             R4 -1 -1
       25 CALL                             R1 -1 -1
       26 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Provider"]
        6 DUPTABLE                         R3 K4 [{"showDelay", "hideDelay"}]
        7 LOADK                            R4 K5 [0.5]
        8 SETTABLEKS                       R4 R3 K2 ["showDelay"]
       10 LOADK                            R4 K5 [0.5]
       11 SETTABLEKS                       R4 R3 K3 ["hideDelay"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K0 ["createElement"]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R5 R6 K1 ["Provider"]
       19 DUPTABLE                         R6 K7 [{"uriScope"}]
       20 LOADK                            R7 K8 ["DelayGroupStory"]
       21 SETTABLEKS                       R7 R6 K6 ["uriScope"]
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K0 ["createElement"]
       26 GETUPVAL                         R8 3
       27 DUPTABLE                         R9 K10 [{"tag"}]
       28 LOADK                            R10 K11 ["auto-xy row gap-large"]
       29 SETTABLEKS                       R10 R9 K9 ["tag"]
       31 GETUPVAL                         R11 0
       32 GETTABLEKS                       R10 R11 K0 ["createElement"]
       34 GETUPVAL                         R11 4
       35 DUPTABLE                         R12 K15 [{"side", "align", "text"}]
       36 GETTABLEKS                       R14 R0 K16 ["controls"]
       38 GETTABLEKS                       R13 R14 K12 ["side"]
       40 SETTABLEKS                       R13 R12 K12 ["side"]
       42 GETTABLEKS                       R14 R0 K16 ["controls"]
       44 GETTABLEKS                       R13 R14 K13 ["align"]
       46 SETTABLEKS                       R13 R12 K13 ["align"]
       48 LOADK                            R13 K17 ["Text"]
       49 SETTABLEKS                       R13 R12 K14 ["text"]
       51 CALL                             R10 2 1
       52 GETUPVAL                         R12 0
       53 GETTABLEKS                       R11 R12 K0 ["createElement"]
       55 GETUPVAL                         R12 4
       56 DUPTABLE                         R13 K15 [{"side", "align", "text"}]
       57 GETTABLEKS                       R15 R0 K16 ["controls"]
       59 GETTABLEKS                       R14 R15 K12 ["side"]
       61 SETTABLEKS                       R14 R13 K12 ["side"]
       63 GETTABLEKS                       R15 R0 K16 ["controls"]
       65 GETTABLEKS                       R14 R15 K13 ["align"]
       67 SETTABLEKS                       R14 R13 K13 ["align"]
       69 LOADK                            R14 K18 ["Longer text that should most likely wrap into several lines"]
       70 SETTABLEKS                       R14 R13 K14 ["text"]
       72 CALL                             R11 2 1
       73 GETUPVAL                         R13 0
       74 GETTABLEKS                       R12 R13 K0 ["createElement"]
       76 GETUPVAL                         R13 4
       77 DUPTABLE                         R14 K15 [{"side", "align", "text"}]
       78 GETTABLEKS                       R16 R0 K16 ["controls"]
       80 GETTABLEKS                       R15 R16 K12 ["side"]
       82 SETTABLEKS                       R15 R14 K12 ["side"]
       84 GETTABLEKS                       R16 R0 K16 ["controls"]
       86 GETTABLEKS                       R15 R16 K13 ["align"]
       88 SETTABLEKS                       R15 R14 K13 ["align"]
       90 LOADK                            R15 K19 ["Short again"]
       91 SETTABLEKS                       R15 R14 K14 ["text"]
       93 CALL                             R12 2 -1
       94 CALL                             R7 -1 -1
       95 CALL                             R4 -1 -1
       96 CALL                             R1 -1 -1
       97 RETURN                           R1 -1

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
       28 GETTABLEKS                       R8 R0 K11 ["Hooks"]
       30 GETTABLEKS                       R7 R8 K12 ["useUniqueWidget"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R9 R0 K13 ["Components"]
       37 GETTABLEKS                       R8 R9 K14 ["Tooltip"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R10 R0 K15 ["Contexts"]
       44 GETTABLEKS                       R9 R10 K16 ["TooltipSettingsContext"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K6 [require]
       49 GETTABLEKS                       R11 R0 K17 ["Panels"]
       51 GETTABLEKS                       R10 R11 K18 ["PanelsContext"]
       53 CALL                             R9 1 1
       54 GETTABLEKS                       R11 R4 K19 ["Enums"]
       56 GETTABLEKS                       R10 R11 K20 ["ControlState"]
       58 GETTABLEKS                       R12 R4 K19 ["Enums"]
       60 GETTABLEKS                       R11 R12 K21 ["PopoverAlign"]
       62 GETTABLEKS                       R13 R4 K19 ["Enums"]
       64 GETTABLEKS                       R12 R13 K22 ["PopoverSide"]
       66 DUPCLOSURE                       R13 K23 [PROTO_2]
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R7
       72 DUPTABLE                         R14 K27 [{"summary", "stories", "controls"}]
       73 LOADK                            R15 K14 ["Tooltip"]
       74 SETTABLEKS                       R15 R14 K24 ["summary"]
       76 DUPTABLE                         R15 K30 [{"Basic", "DelayGroup"}]
       77 DUPTABLE                         R16 K33 [{"name", "story"}]
       78 LOADK                            R17 K28 ["Basic"]
       79 SETTABLEKS                       R17 R16 K31 ["name"]
       81 DUPCLOSURE                       R17 K34 [PROTO_3]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R13
       86 SETTABLEKS                       R17 R16 K32 ["story"]
       88 SETTABLEKS                       R16 R15 K28 ["Basic"]
       90 DUPTABLE                         R16 K33 [{"name", "story"}]
       91 LOADK                            R17 K29 ["DelayGroup"]
       92 SETTABLEKS                       R17 R16 K31 ["name"]
       94 DUPCLOSURE                       R17 K35 [PROTO_4]
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R13
      100 SETTABLEKS                       R17 R16 K32 ["story"]
      102 SETTABLEKS                       R16 R15 K29 ["DelayGroup"]
      104 SETTABLEKS                       R15 R14 K25 ["stories"]
      106 DUPTABLE                         R15 K38 [{"side", "align"}]
      107 GETTABLEKS                       R16 R3 K39 ["values"]
      109 MOVE                             R17 R12
      110 CALL                             R16 1 1
      111 SETTABLEKS                       R16 R15 K36 ["side"]
      113 GETTABLEKS                       R16 R3 K39 ["values"]
      115 MOVE                             R17 R11
      116 CALL                             R16 1 1
      117 SETTABLEKS                       R16 R15 K37 ["align"]
      119 SETTABLEKS                       R15 R14 K26 ["controls"]
      121 RETURN                           R14 1
