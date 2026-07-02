PROTO_0:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+10]
        3 GETIMPORT                        R2 K2 [string.match]
        5 MOVE                             R3 R0
        6 LOADK                            R4 K3 ["^pictograms/"]
        7 CALL                             R2 2 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Join clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Share clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIF                           R1 ; [+1]
        3 DUPTABLE                         R1 K5 [{["DialogMedia"] = , ["DialogContent"] = , ["DialogTitle"] = }]
        4 GETTABLEKS                       R2 R0 K6 ["controls"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K7 ["useState"]
        9 LOADB                            R4 0
       10 CALL                             R3 1 2
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R4
       13 CAPTURE                          VAL R3
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K8 ["createElement"]
       17 GETUPVAL                         R7 1
       18 DUPTABLE                         R8 K10 [{"Size"}]
       19 GETIMPORT                        R9 K13 [UDim2.new]
       21 LOADN                            R10 1
       22 LOADN                            R11 0
       23 LOADN                            R12 0
       24 LOADN                            R13 700
       25 CALL                             R9 4 1
       26 SETTABLEKS                       R9 R8 K9 ["Size"]
       28 DUPTABLE                         R9 K16 [{"ToggleButton", "DialogRoot"}]
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R10 R10 K8 ["createElement"]
       32 GETUPVAL                         R11 2
       33 DUPTABLE                         R12 K20 [{"text", "onActivated", "variant"}]
       34 JUMPIFNOT                        R3 ; [+2]
       35 LOADK                            R13 K21 ["Close Dialog"]
       36 JUMP                             ; [+1]
       37 LOADK                            R13 K22 ["Open Dialog"]
       38 SETTABLEKS                       R13 R12 K17 ["text"]
       40 SETTABLEKS                       R5 R12 K18 ["onActivated"]
       42 GETUPVAL                         R13 3
       43 GETTABLEKS                       R13 R13 K23 ["Emphasis"]
       45 SETTABLEKS                       R13 R12 K19 ["variant"]
       47 CALL                             R10 2 1
       48 SETTABLEKS                       R10 R9 K14 ["ToggleButton"]
       50 JUMPIFNOT                        R3 ; [+83]
       51 GETUPVAL                         R10 0
       52 GETTABLEKS                       R10 R10 K8 ["createElement"]
       54 GETUPVAL                         R11 4
       55 GETTABLEKS                       R11 R11 K24 ["Root"]
       57 DUPTABLE                         R12 K29 [{"size", "onClose", "hasBackdrop", "disablePortal"}]
       58 GETTABLEKS                       R13 R2 K25 ["size"]
       60 SETTABLEKS                       R13 R12 K25 ["size"]
       62 SETTABLEKS                       R5 R12 K26 ["onClose"]
       64 GETTABLEKS                       R13 R2 K27 ["hasBackdrop"]
       66 SETTABLEKS                       R13 R12 K27 ["hasBackdrop"]
       68 GETTABLEKS                       R13 R2 K28 ["disablePortal"]
       70 SETTABLEKS                       R13 R12 K28 ["disablePortal"]
       72 DUPTABLE                         R13 K31 [{"DialogMedia", "DialogTitle", "DialogContent", "DialogActions"}]
       73 GETTABLEKS                       R14 R1 K1 ["DialogMedia"]
       75 SETTABLEKS                       R14 R13 K1 ["DialogMedia"]
       77 GETTABLEKS                       R14 R1 K4 ["DialogTitle"]
       79 SETTABLEKS                       R14 R13 K4 ["DialogTitle"]
       81 GETTABLEKS                       R14 R1 K3 ["DialogContent"]
       83 SETTABLEKS                       R14 R13 K3 ["DialogContent"]
       85 GETTABLEKS                       R15 R2 K32 ["hasActions"]
       87 JUMPIFNOT                        R15 ; [+41]
       88 GETUPVAL                         R14 0
       89 GETTABLEKS                       R14 R14 K8 ["createElement"]
       91 GETUPVAL                         R15 4
       92 GETTABLEKS                       R15 R15 K33 ["Actions"]
       94 DUPTABLE                         R16 K39 [{["LayoutOrder"] = 3, ["orientation"], ["actions"], ["label"]}]
       95 GETTABLEKS                       R17 R2 K40 ["actionsOrientation"]
       97 SETTABLEKS                       R17 R16 K36 ["orientation"]
       99 NEWTABLE                         R17 0 2
      101 DUPTABLE                         R18 K45 [{["text"] = "Join", ["variant"], ["icon"] = "icons/common/robux", ["onActivated"], ["inputDelay"] = 3}]
      102 GETUPVAL                         R19 3
      103 GETTABLEKS                       R19 R19 K23 ["Emphasis"]
      105 SETTABLEKS                       R19 R18 K19 ["variant"]
      107 DUPCLOSURE                       R19 K46 [PROTO_2]
      108 SETTABLEKS                       R19 R18 K18 ["onActivated"]
      110 DUPTABLE                         R19 K48 [{["text"] = "Share", ["variant"], ["onActivated"]}]
      111 GETUPVAL                         R20 3
      112 GETTABLEKS                       R20 R20 K49 ["Standard"]
      114 SETTABLEKS                       R20 R19 K19 ["variant"]
      116 DUPCLOSURE                       R20 K50 [PROTO_3]
      117 SETTABLEKS                       R20 R19 K18 ["onActivated"]
      119 SETLIST                          R17 R18 2 [1]
      121 SETTABLEKS                       R17 R16 K37 ["actions"]
      123 GETTABLEKS                       R17 R2 K51 ["actionsLabel"]
      125 SETTABLEKS                       R17 R16 K38 ["label"]
      127 CALL                             R14 2 1
      128 JUMP                             ; [+1]
      129 LOADNIL                          R14
      130 SETTABLEKS                       R14 R13 K30 ["DialogActions"]
      132 CALL                             R10 3 1
      133 JUMP                             ; [+1]
      134 LOADNIL                          R10
      135 SETTABLEKS                       R10 R9 K15 ["DialogRoot"]
      137 CALL                             R6 3 -1
      138 RETURN                           R6 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{["tag"] = "row align-x-center size-full-0 auto-y"}]
        5 DUPTABLE                         R4 K5 [{"Image"}]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K0 ["createElement"]
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R7 K8 [{"tag", "aspectRatio", "Image", "Size"}]
       11 NEWTABLE                         R8 1 0
       13 GETTABLEKS                       R10 R0 K9 ["media"]
       15 LOADB                            R9 0
       16 JUMPIFEQKNIL                     R10 ; [+10]
       18 GETIMPORT                        R11 K12 [string.match]
       20 MOVE                             R12 R10
       21 LOADK                            R13 K13 ["^pictograms/"]
       22 CALL                             R11 2 1
       23 JUMPIFNOTEQKNIL                  R11 ; [+2]
       25 LOADB                            R9 0 +1
       26 LOADB                            R9 1
       27 SETTABLEKS                       R9 R8 K14 ["content-emphasis"]
       29 SETTABLEKS                       R8 R7 K1 ["tag"]
       31 GETTABLEKS                       R8 R0 K6 ["aspectRatio"]
       33 SETTABLEKS                       R8 R7 K6 ["aspectRatio"]
       35 GETTABLEKS                       R8 R0 K9 ["media"]
       37 SETTABLEKS                       R8 R7 K4 ["Image"]
       39 GETTABLEKS                       R8 R0 K7 ["Size"]
       41 SETTABLEKS                       R8 R7 K7 ["Size"]
       43 CALL                             R5 2 1
       44 SETTABLEKS                       R5 R4 K4 ["Image"]
       46 CALL                             R1 3 -1
       47 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setContentStartRef"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useRef"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["useEffect"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 NEWTABLE                         R5 0 1
       15 GETTABLEKS                       R6 R1 K2 ["setContentStartRef"]
       17 SETLIST                          R5 R6 1 [1]
       19 CALL                             R3 2 0
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K3 ["createElement"]
       23 GETUPVAL                         R4 2
       24 DUPTABLE                         R5 K6 [{["tag"] = "col gap-small size-full-0 auto-y"}]
       25 DUPTABLE                         R6 K11 [{"Notifications", "Analytics", "Marketing", "ThirdParty"}]
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R7 R7 K3 ["createElement"]
       29 GETUPVAL                         R8 3
       30 DUPTABLE                         R9 K20 [{["label"] = "Enable notifications", ["isChecked"], ["onActivated"], ["ref"], ["NextSelectionUp"], ["LayoutOrder"] = 1}]
       31 GETTABLEKS                       R10 R0 K21 ["checkboxStates"]
       33 GETTABLEKS                       R10 R10 K22 ["notifications"]
       35 SETTABLEKS                       R10 R9 K14 ["isChecked"]
       37 GETTABLEKS                       R10 R0 K23 ["toggleCheckbox"]
       39 LOADK                            R11 K22 ["notifications"]
       40 CALL                             R10 1 1
       41 SETTABLEKS                       R10 R9 K15 ["onActivated"]
       43 SETTABLEKS                       R2 R9 K16 ["ref"]
       45 GETTABLEKS                       R10 R1 K24 ["closeAffordanceRef"]
       47 SETTABLEKS                       R10 R9 K17 ["NextSelectionUp"]
       49 CALL                             R7 2 1
       50 SETTABLEKS                       R7 R6 K7 ["Notifications"]
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R7 R7 K3 ["createElement"]
       55 GETUPVAL                         R8 3
       56 DUPTABLE                         R9 K27 [{["label"] = "Share usage analytics", ["isChecked"], ["onActivated"], ["LayoutOrder"] = 2}]
       57 GETTABLEKS                       R10 R0 K21 ["checkboxStates"]
       59 GETTABLEKS                       R10 R10 K28 ["analytics"]
       61 SETTABLEKS                       R10 R9 K14 ["isChecked"]
       63 GETTABLEKS                       R10 R0 K23 ["toggleCheckbox"]
       65 LOADK                            R11 K28 ["analytics"]
       66 CALL                             R10 1 1
       67 SETTABLEKS                       R10 R9 K15 ["onActivated"]
       69 CALL                             R7 2 1
       70 SETTABLEKS                       R7 R6 K8 ["Analytics"]
       72 GETUPVAL                         R7 1
       73 GETTABLEKS                       R7 R7 K3 ["createElement"]
       75 GETUPVAL                         R8 3
       76 DUPTABLE                         R9 K31 [{["label"] = "Receive marketing emails", ["isChecked"], ["onActivated"], ["LayoutOrder"] = 3}]
       77 GETTABLEKS                       R10 R0 K21 ["checkboxStates"]
       79 GETTABLEKS                       R10 R10 K32 ["marketing"]
       81 SETTABLEKS                       R10 R9 K14 ["isChecked"]
       83 GETTABLEKS                       R10 R0 K23 ["toggleCheckbox"]
       85 LOADK                            R11 K32 ["marketing"]
       86 CALL                             R10 1 1
       87 SETTABLEKS                       R10 R9 K15 ["onActivated"]
       89 CALL                             R7 2 1
       90 SETTABLEKS                       R7 R6 K9 ["Marketing"]
       92 GETUPVAL                         R7 1
       93 GETTABLEKS                       R7 R7 K3 ["createElement"]
       95 GETUPVAL                         R8 3
       96 DUPTABLE                         R9 K35 [{["label"] = "Allow third-party integrations", ["isChecked"], ["onActivated"], ["LayoutOrder"] = 4}]
       97 GETTABLEKS                       R10 R0 K21 ["checkboxStates"]
       99 GETTABLEKS                       R10 R10 K36 ["thirdParty"]
      101 SETTABLEKS                       R10 R9 K14 ["isChecked"]
      103 GETTABLEKS                       R10 R0 K23 ["toggleCheckbox"]
      105 LOADK                            R11 K36 ["thirdParty"]
      106 CALL                             R10 1 1
      107 SETTABLEKS                       R10 R9 K15 ["onActivated"]
      109 CALL                             R7 2 1
      110 SETTABLEKS                       R7 R6 K10 ["ThirdParty"]
      112 CALL                             R3 3 -1
      113 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 MOVE                             R4 R0
        7 DUPTABLE                         R5 K4 [{"DialogTitle", "DialogMedia", "DialogContent"}]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K0 ["createElement"]
       11 GETUPVAL                         R7 3
       12 GETTABLEKS                       R7 R7 K5 ["Title"]
       14 DUPTABLE                         R8 K7 [{"text"}]
       15 GETTABLEKS                       R9 R0 K8 ["controls"]
       17 GETTABLEKS                       R9 R9 K9 ["title"]
       19 SETTABLEKS                       R9 R8 K6 ["text"]
       21 CALL                             R6 2 1
       22 SETTABLEKS                       R6 R5 K1 ["DialogTitle"]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K0 ["createElement"]
       27 GETUPVAL                         R7 3
       28 GETTABLEKS                       R7 R7 K10 ["HeroMedia"]
       30 DUPTABLE                         R8 K16 [{"media", "mediaStyle", "backgroundStyle", "height", "aspectRatio"}]
       31 GETTABLEKS                       R9 R0 K8 ["controls"]
       33 GETTABLEKS                       R9 R9 K11 ["media"]
       35 SETTABLEKS                       R9 R8 K11 ["media"]
       37 GETTABLEKS                       R11 R0 K8 ["controls"]
       39 GETTABLEKS                       R11 R11 K11 ["media"]
       41 LOADB                            R10 0
       42 JUMPIFEQKNIL                     R11 ; [+10]
       44 GETIMPORT                        R12 K19 [string.match]
       46 MOVE                             R13 R11
       47 LOADK                            R14 K20 ["^pictograms/"]
       48 CALL                             R12 2 1
       49 JUMPIFNOTEQKNIL                  R12 ; [+2]
       51 LOADB                            R10 0 +1
       52 LOADB                            R10 1
       53 JUMPIFNOT                        R10 ; [+7]
       54 GETTABLEKS                       R9 R1 K21 ["Color"]
       56 GETTABLEKS                       R9 R9 K22 ["Content"]
       58 GETTABLEKS                       R9 R9 K23 ["Emphasis"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R9
       62 SETTABLEKS                       R9 R8 K12 ["mediaStyle"]
       64 GETTABLEKS                       R10 R0 K8 ["controls"]
       66 GETTABLEKS                       R10 R10 K24 ["heroMediaBackgroundStyle"]
       68 JUMPIFNOT                        R10 ; [+7]
       69 GETTABLEKS                       R9 R1 K21 ["Color"]
       71 GETTABLEKS                       R9 R9 K25 ["ActionSoftEmphasis"]
       73 GETTABLEKS                       R9 R9 K26 ["Background"]
       75 JUMP                             ; [+1]
       76 LOADNIL                          R9
       77 SETTABLEKS                       R9 R8 K13 ["backgroundStyle"]
       79 GETIMPORT                        R9 K29 [UDim.new]
       81 GETTABLEKS                       R11 R0 K8 ["controls"]
       83 GETTABLEKS                       R11 R11 K31 ["heroMediaHeightScale"]
       85 ORK                              R10 R11 K30 [0]
       86 GETTABLEKS                       R12 R0 K8 ["controls"]
       88 GETTABLEKS                       R12 R12 K32 ["heroMediaHeightOffset"]
       90 ORK                              R11 R12 K30 [0]
       91 CALL                             R9 2 1
       92 SETTABLEKS                       R9 R8 K14 ["height"]
       94 GETTABLEKS                       R10 R0 K8 ["controls"]
       96 GETTABLEKS                       R10 R10 K33 ["heroMediaAspectRatio"]
       98 LOADN                            R11 0
       99 JUMPIFNOTLT                      R11 R10 ; [+6]
      101 GETTABLEKS                       R9 R0 K8 ["controls"]
      103 GETTABLEKS                       R9 R9 K33 ["heroMediaAspectRatio"]
      105 JUMP                             ; [+1]
      106 LOADNIL                          R9
      107 SETTABLEKS                       R9 R8 K15 ["aspectRatio"]
      109 CALL                             R6 2 1
      110 SETTABLEKS                       R6 R5 K2 ["DialogMedia"]
      112 GETUPVAL                         R6 1
      113 GETTABLEKS                       R6 R6 K0 ["createElement"]
      115 GETUPVAL                         R7 3
      116 GETTABLEKS                       R7 R7 K22 ["Content"]
      118 DUPTABLE                         R8 K37 [{["LayoutOrder"] = 2, ["Selectable"]}]
      119 GETTABLEKS                       R9 R0 K8 ["controls"]
      121 GETTABLEKS                       R9 R9 K38 ["selectableContent"]
      123 SETTABLEKS                       R9 R8 K36 ["Selectable"]
      125 DUPTABLE                         R9 K40 [{"DialogText"}]
      126 GETUPVAL                         R10 1
      127 GETTABLEKS                       R10 R10 K0 ["createElement"]
      129 GETUPVAL                         R11 3
      130 GETTABLEKS                       R11 R11 K41 ["Text"]
      132 DUPTABLE                         R12 K42 [{"Text"}]
      133 GETTABLEKS                       R13 R0 K8 ["controls"]
      135 GETTABLEKS                       R13 R13 K43 ["content"]
      137 SETTABLEKS                       R13 R12 K41 ["Text"]
      139 CALL                             R10 2 1
      140 SETTABLEKS                       R10 R9 K39 ["DialogText"]
      142 CALL                             R6 3 1
      143 SETTABLEKS                       R6 R5 K3 ["DialogContent"]
      145 CALL                             R2 3 -1
      146 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 DUPTABLE                         R4 K3 [{"DialogTitle", "DialogContent"}]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K0 ["createElement"]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R6 R6 K4 ["Title"]
       12 DUPTABLE                         R7 K6 [{"text"}]
       13 GETTABLEKS                       R8 R0 K7 ["controls"]
       15 GETTABLEKS                       R8 R8 K8 ["title"]
       17 SETTABLEKS                       R8 R7 K5 ["text"]
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R4 K1 ["DialogTitle"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K0 ["createElement"]
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K9 ["Content"]
       28 DUPTABLE                         R7 K13 [{["LayoutOrder"] = 2, ["Selectable"]}]
       29 GETTABLEKS                       R8 R0 K7 ["controls"]
       31 GETTABLEKS                       R8 R8 K14 ["selectableContent"]
       33 SETTABLEKS                       R8 R7 K12 ["Selectable"]
       35 DUPTABLE                         R8 K16 [{"DialogText"}]
       36 GETUPVAL                         R9 0
       37 GETTABLEKS                       R9 R9 K0 ["createElement"]
       39 GETUPVAL                         R10 2
       40 GETTABLEKS                       R10 R10 K17 ["Text"]
       42 DUPTABLE                         R11 K18 [{"Text"}]
       43 GETTABLEKS                       R12 R0 K7 ["controls"]
       45 GETTABLEKS                       R12 R12 K19 ["content"]
       47 SETTABLEKS                       R12 R11 K17 ["Text"]
       49 CALL                             R9 2 1
       50 SETTABLEKS                       R9 R8 K15 ["DialogText"]
       52 CALL                             R5 3 1
       53 SETTABLEKS                       R5 R4 K2 ["DialogContent"]
       55 CALL                             R1 3 -1
       56 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 MOVE                             R4 R0
        7 DUPTABLE                         R5 K3 [{"DialogMedia", "DialogContent"}]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K0 ["createElement"]
       11 GETUPVAL                         R7 3
       12 GETTABLEKS                       R7 R7 K4 ["HeroMedia"]
       14 DUPTABLE                         R8 K10 [{"media", "mediaStyle", "backgroundStyle", "height", "aspectRatio"}]
       15 GETTABLEKS                       R9 R0 K11 ["controls"]
       17 GETTABLEKS                       R9 R9 K5 ["media"]
       19 SETTABLEKS                       R9 R8 K5 ["media"]
       21 GETTABLEKS                       R11 R0 K11 ["controls"]
       23 GETTABLEKS                       R11 R11 K5 ["media"]
       25 LOADB                            R10 0
       26 JUMPIFEQKNIL                     R11 ; [+10]
       28 GETIMPORT                        R12 K14 [string.match]
       30 MOVE                             R13 R11
       31 LOADK                            R14 K15 ["^pictograms/"]
       32 CALL                             R12 2 1
       33 JUMPIFNOTEQKNIL                  R12 ; [+2]
       35 LOADB                            R10 0 +1
       36 LOADB                            R10 1
       37 JUMPIFNOT                        R10 ; [+7]
       38 GETTABLEKS                       R9 R1 K16 ["Color"]
       40 GETTABLEKS                       R9 R9 K17 ["Content"]
       42 GETTABLEKS                       R9 R9 K18 ["Emphasis"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R9
       46 SETTABLEKS                       R9 R8 K6 ["mediaStyle"]
       48 GETTABLEKS                       R10 R0 K11 ["controls"]
       50 GETTABLEKS                       R10 R10 K19 ["heroMediaBackgroundStyle"]
       52 JUMPIFNOT                        R10 ; [+7]
       53 GETTABLEKS                       R9 R1 K16 ["Color"]
       55 GETTABLEKS                       R9 R9 K20 ["ActionSoftEmphasis"]
       57 GETTABLEKS                       R9 R9 K21 ["Background"]
       59 JUMP                             ; [+1]
       60 LOADNIL                          R9
       61 SETTABLEKS                       R9 R8 K7 ["backgroundStyle"]
       63 GETIMPORT                        R9 K24 [UDim.new]
       65 GETTABLEKS                       R11 R0 K11 ["controls"]
       67 GETTABLEKS                       R11 R11 K26 ["heroMediaHeightScale"]
       69 ORK                              R10 R11 K25 [0]
       70 GETTABLEKS                       R12 R0 K11 ["controls"]
       72 GETTABLEKS                       R12 R12 K27 ["heroMediaHeightOffset"]
       74 ORK                              R11 R12 K25 [0]
       75 CALL                             R9 2 1
       76 SETTABLEKS                       R9 R8 K8 ["height"]
       78 GETTABLEKS                       R10 R0 K11 ["controls"]
       80 GETTABLEKS                       R10 R10 K28 ["heroMediaAspectRatio"]
       82 LOADN                            R11 0
       83 JUMPIFNOTLT                      R11 R10 ; [+6]
       85 GETTABLEKS                       R9 R0 K11 ["controls"]
       87 GETTABLEKS                       R9 R9 K28 ["heroMediaAspectRatio"]
       89 JUMP                             ; [+1]
       90 LOADNIL                          R9
       91 SETTABLEKS                       R9 R8 K9 ["aspectRatio"]
       93 CALL                             R6 2 1
       94 SETTABLEKS                       R6 R5 K1 ["DialogMedia"]
       96 GETUPVAL                         R6 1
       97 GETTABLEKS                       R6 R6 K0 ["createElement"]
       99 GETUPVAL                         R7 3
      100 GETTABLEKS                       R7 R7 K17 ["Content"]
      102 DUPTABLE                         R8 K32 [{["LayoutOrder"] = 2, ["Selectable"]}]
      103 GETTABLEKS                       R9 R0 K11 ["controls"]
      105 GETTABLEKS                       R9 R9 K33 ["selectableContent"]
      107 SETTABLEKS                       R9 R8 K31 ["Selectable"]
      109 DUPTABLE                         R9 K35 [{"DialogText"}]
      110 GETUPVAL                         R10 1
      111 GETTABLEKS                       R10 R10 K0 ["createElement"]
      113 GETUPVAL                         R11 3
      114 GETTABLEKS                       R11 R11 K36 ["Text"]
      116 DUPTABLE                         R12 K37 [{"Text"}]
      117 GETTABLEKS                       R13 R0 K11 ["controls"]
      119 GETTABLEKS                       R13 R13 K38 ["content"]
      121 SETTABLEKS                       R13 R12 K36 ["Text"]
      123 CALL                             R10 2 1
      124 SETTABLEKS                       R10 R9 K34 ["DialogText"]
      126 CALL                             R6 3 1
      127 SETTABLEKS                       R6 R5 K2 ["DialogContent"]
      129 CALL                             R2 3 -1
      130 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 MOVE                             R4 R0
        7 DUPTABLE                         R5 K2 [{"DialogMedia"}]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K0 ["createElement"]
       11 GETUPVAL                         R7 3
       12 GETTABLEKS                       R7 R7 K3 ["HeroMedia"]
       14 DUPTABLE                         R8 K9 [{"media", "mediaStyle", "backgroundStyle", "height", "aspectRatio"}]
       15 GETTABLEKS                       R9 R0 K10 ["controls"]
       17 GETTABLEKS                       R9 R9 K4 ["media"]
       19 SETTABLEKS                       R9 R8 K4 ["media"]
       21 GETTABLEKS                       R11 R0 K10 ["controls"]
       23 GETTABLEKS                       R11 R11 K4 ["media"]
       25 LOADB                            R10 0
       26 JUMPIFEQKNIL                     R11 ; [+10]
       28 GETIMPORT                        R12 K13 [string.match]
       30 MOVE                             R13 R11
       31 LOADK                            R14 K14 ["^pictograms/"]
       32 CALL                             R12 2 1
       33 JUMPIFNOTEQKNIL                  R12 ; [+2]
       35 LOADB                            R10 0 +1
       36 LOADB                            R10 1
       37 JUMPIFNOT                        R10 ; [+7]
       38 GETTABLEKS                       R9 R1 K15 ["Color"]
       40 GETTABLEKS                       R9 R9 K16 ["Content"]
       42 GETTABLEKS                       R9 R9 K17 ["Emphasis"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R9
       46 SETTABLEKS                       R9 R8 K5 ["mediaStyle"]
       48 GETTABLEKS                       R10 R0 K10 ["controls"]
       50 GETTABLEKS                       R10 R10 K18 ["heroMediaBackgroundStyle"]
       52 JUMPIFNOT                        R10 ; [+7]
       53 GETTABLEKS                       R9 R1 K15 ["Color"]
       55 GETTABLEKS                       R9 R9 K19 ["ActionSoftEmphasis"]
       57 GETTABLEKS                       R9 R9 K20 ["Background"]
       59 JUMP                             ; [+1]
       60 LOADNIL                          R9
       61 SETTABLEKS                       R9 R8 K6 ["backgroundStyle"]
       63 GETIMPORT                        R9 K23 [UDim.new]
       65 GETTABLEKS                       R11 R0 K10 ["controls"]
       67 GETTABLEKS                       R11 R11 K25 ["heroMediaHeightScale"]
       69 ORK                              R10 R11 K24 [0]
       70 GETTABLEKS                       R12 R0 K10 ["controls"]
       72 GETTABLEKS                       R12 R12 K26 ["heroMediaHeightOffset"]
       74 ORK                              R11 R12 K24 [0]
       75 CALL                             R9 2 1
       76 SETTABLEKS                       R9 R8 K7 ["height"]
       78 GETTABLEKS                       R10 R0 K10 ["controls"]
       80 GETTABLEKS                       R10 R10 K27 ["heroMediaAspectRatio"]
       82 LOADN                            R11 0
       83 JUMPIFNOTLT                      R11 R10 ; [+6]
       85 GETTABLEKS                       R9 R0 K10 ["controls"]
       87 GETTABLEKS                       R9 R9 K27 ["heroMediaAspectRatio"]
       89 JUMP                             ; [+1]
       90 LOADNIL                          R9
       91 SETTABLEKS                       R9 R8 K8 ["aspectRatio"]
       93 CALL                             R6 2 1
       94 SETTABLEKS                       R6 R5 K1 ["DialogMedia"]
       96 CALL                             R2 3 -1
       97 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Item"]
        6 DUPTABLE                         R3 K5 [{"value", "label", "size"}]
        7 SETTABLEKS                       R0 R3 K2 ["value"]
        9 LOADK                            R5 K6 ["Dialog Option "]
       10 MOVE                             R6 R0
       11 CONCAT                           R4 R5 R6
       12 SETTABLEKS                       R4 R3 K3 ["label"]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K7 ["Medium"]
       17 SETTABLEKS                       R4 R3 K4 ["size"]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_13:
        0 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 GETTABLEKS                       R3 R0 K4 ["controls"]
        4 GETTABLEKS                       R3 R3 K5 ["mediaSizeScaleX"]
        6 ORK                              R2 R3 K3 [0]
        7 GETTABLEKS                       R4 R0 K4 ["controls"]
        9 GETTABLEKS                       R4 R4 K6 ["mediaSizeOffsetX"]
       11 ORK                              R3 R4 K3 [0]
       12 GETTABLEKS                       R5 R0 K4 ["controls"]
       14 GETTABLEKS                       R5 R5 K7 ["mediaSizeScaleY"]
       16 ORK                              R4 R5 K3 [0]
       17 GETTABLEKS                       R6 R0 K4 ["controls"]
       19 GETTABLEKS                       R6 R6 K8 ["mediaSizeOffsetY"]
       21 ORK                              R5 R6 K3 [0]
       22 CALL                             R1 4 1
       23 NEWTABLE                         R2 0 5
       25 LOADK                            R3 K9 ["A"]
       26 LOADK                            R4 K10 ["B"]
       27 LOADK                            R5 K11 ["C"]
       28 LOADK                            R6 K12 ["D"]
       29 LOADK                            R7 K13 ["E"]
       30 SETLIST                          R2 R3 5 [1]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K14 ["map"]
       35 MOVE                             R4 R2
       36 DUPCLOSURE                       R5 K15 [PROTO_12]
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 CALL                             R3 2 1
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R4 R4 K16 ["createElement"]
       44 GETUPVAL                         R5 4
       45 DUPTABLE                         R6 K19 [{["tag"] = "col gap-xxlarge size-full-0 auto-y"}]
       46 DUPTABLE                         R7 K23 [{"Text", "RadioGroup", "DialogText"}]
       47 GETUPVAL                         R8 1
       48 GETTABLEKS                       R8 R8 K16 ["createElement"]
       50 GETUPVAL                         R9 5
       51 DUPTABLE                         R10 K28 [{["tag"] = "size-full-0 auto-y text-body-large text-wrap text-align-x-left text-align-y-top", ["Text"] = "Some text", ["LayoutOrder"] = 2}]
       52 CALL                             R8 2 1
       53 SETTABLEKS                       R8 R7 K20 ["Text"]
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R8 R8 K16 ["createElement"]
       58 GETUPVAL                         R9 2
       59 GETTABLEKS                       R9 R9 K29 ["Root"]
       61 DUPTABLE                         R10 K32 [{["onValueChanged"], ["LayoutOrder"] = 3}]
       62 DUPCLOSURE                       R11 K33 [PROTO_13]
       63 SETTABLEKS                       R11 R10 K30 ["onValueChanged"]
       65 MOVE                             R11 R3
       66 CALL                             R8 3 1
       67 SETTABLEKS                       R8 R7 K21 ["RadioGroup"]
       69 GETUPVAL                         R8 1
       70 GETTABLEKS                       R8 R8 K16 ["createElement"]
       72 GETUPVAL                         R9 6
       73 GETTABLEKS                       R9 R9 K20 ["Text"]
       75 DUPTABLE                         R10 K35 [{["Text"], ["LayoutOrder"] = 4}]
       76 GETTABLEKS                       R11 R0 K4 ["controls"]
       78 GETTABLEKS                       R11 R11 K36 ["content"]
       80 SETTABLEKS                       R11 R10 K20 ["Text"]
       82 CALL                             R8 2 1
       83 SETTABLEKS                       R8 R7 K22 ["DialogText"]
       85 CALL                             R4 3 1
       86 GETUPVAL                         R5 1
       87 GETTABLEKS                       R5 R5 K16 ["createElement"]
       89 GETUPVAL                         R6 7
       90 MOVE                             R7 R0
       91 DUPTABLE                         R8 K40 [{"DialogTitle", "DialogMedia", "DialogContent"}]
       92 GETUPVAL                         R9 1
       93 GETTABLEKS                       R9 R9 K16 ["createElement"]
       95 GETUPVAL                         R10 6
       96 GETTABLEKS                       R10 R10 K41 ["Title"]
       98 DUPTABLE                         R11 K43 [{"text"}]
       99 GETTABLEKS                       R12 R0 K4 ["controls"]
      101 GETTABLEKS                       R12 R12 K44 ["title"]
      103 SETTABLEKS                       R12 R11 K42 ["text"]
      105 CALL                             R9 2 1
      106 SETTABLEKS                       R9 R8 K37 ["DialogTitle"]
      108 GETUPVAL                         R9 1
      109 GETTABLEKS                       R9 R9 K16 ["createElement"]
      111 GETGLOBAL                        R10 K45 ["CustomMedia"]
      113 DUPTABLE                         R11 K49 [{"media", "Size", "aspectRatio"}]
      114 GETTABLEKS                       R12 R0 K4 ["controls"]
      116 GETTABLEKS                       R12 R12 K46 ["media"]
      118 SETTABLEKS                       R12 R11 K46 ["media"]
      120 SETTABLEKS                       R1 R11 K47 ["Size"]
      122 GETTABLEKS                       R13 R0 K4 ["controls"]
      124 GETTABLEKS                       R13 R13 K50 ["mediaAspectRatio"]
      126 LOADN                            R14 0
      127 JUMPIFNOTLT                      R14 R13 ; [+6]
      129 GETTABLEKS                       R12 R0 K4 ["controls"]
      131 GETTABLEKS                       R12 R12 K50 ["mediaAspectRatio"]
      133 JUMP                             ; [+1]
      134 LOADNIL                          R12
      135 SETTABLEKS                       R12 R11 K48 ["aspectRatio"]
      137 CALL                             R9 2 1
      138 SETTABLEKS                       R9 R8 K38 ["DialogMedia"]
      140 GETUPVAL                         R9 1
      141 GETTABLEKS                       R9 R9 K16 ["createElement"]
      143 GETUPVAL                         R10 6
      144 GETTABLEKS                       R10 R10 K51 ["Content"]
      146 DUPTABLE                         R11 K53 [{["LayoutOrder"] = 2, ["Selectable"]}]
      147 GETTABLEKS                       R12 R0 K4 ["controls"]
      149 GETTABLEKS                       R12 R12 K54 ["selectableContent"]
      151 SETTABLEKS                       R12 R11 K52 ["Selectable"]
      153 DUPTABLE                         R12 K56 [{"CustomContent"}]
      154 SETTABLEKS                       R4 R12 K55 ["CustomContent"]
      156 CALL                             R9 3 1
      157 SETTABLEKS                       R9 R8 K39 ["DialogContent"]
      159 CALL                             R5 3 -1
      160 RETURN                           R5 -1

PROTO_15:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["Option %* activated"]
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Item"]
        6 DUPTABLE                         R4 K8 [{["key"], ["title"], ["description"] = "Description for this option", ["onActivated"], ["LayoutOrder"]}]
        7 FASTCALL1                        TOSTRING R1 ; [+3]
        8 MOVE                             R6 R1
        9 GETIMPORT                        R5 K10 [tostring]
       11 CALL                             R5 1 1
       12 SETTABLEKS                       R5 R4 K2 ["key"]
       14 LOADK                            R6 K11 ["Option %*"]
       15 MOVE                             R8 R1
       16 NAMECALL                         R6 R6 K12 ["format"]
       18 CALL                             R6 2 1
       19 MOVE                             R5 R6
       20 SETTABLEKS                       R5 R4 K3 ["title"]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          VAL R1
       24 SETTABLEKS                       R5 R4 K6 ["onActivated"]
       26 SETTABLEKS                       R1 R4 K7 ["LayoutOrder"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["map"]
        3 GETIMPORT                        R2 K3 [table.create]
        5 LOADN                            R3 15
        6 LOADB                            R4 1
        7 CALL                             R2 2 1
        8 DUPCLOSURE                       R3 K4 [PROTO_16]
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K5 ["createElement"]
       15 GETUPVAL                         R3 3
       16 MOVE                             R4 R0
       17 DUPTABLE                         R5 K8 [{"DialogTitle", "DialogContent"}]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K5 ["createElement"]
       21 GETUPVAL                         R7 4
       22 GETTABLEKS                       R7 R7 K9 ["Title"]
       24 DUPTABLE                         R8 K11 [{"text"}]
       25 GETTABLEKS                       R9 R0 K12 ["controls"]
       27 GETTABLEKS                       R9 R9 K13 ["title"]
       29 SETTABLEKS                       R9 R8 K10 ["text"]
       31 CALL                             R6 2 1
       32 SETTABLEKS                       R6 R5 K6 ["DialogTitle"]
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K5 ["createElement"]
       37 GETUPVAL                         R7 4
       38 GETTABLEKS                       R7 R7 K14 ["Content"]
       40 DUPTABLE                         R8 K18 [{["LayoutOrder"] = 2, ["Selectable"]}]
       41 GETTABLEKS                       R9 R0 K12 ["controls"]
       43 GETTABLEKS                       R9 R9 K19 ["selectableContent"]
       45 SETTABLEKS                       R9 R8 K17 ["Selectable"]
       47 DUPTABLE                         R9 K21 [{"ItemList"}]
       48 GETUPVAL                         R10 1
       49 GETTABLEKS                       R10 R10 K5 ["createElement"]
       51 GETUPVAL                         R11 2
       52 GETTABLEKS                       R11 R11 K22 ["Root"]
       54 LOADNIL                          R12
       55 MOVE                             R13 R1
       56 CALL                             R10 3 1
       57 SETTABLEKS                       R10 R9 K20 ["ItemList"]
       59 CALL                             R6 3 1
       60 SETTABLEKS                       R6 R5 K7 ["DialogContent"]
       62 CALL                             R2 3 -1
       63 RETURN                           R2 -1

PROTO_18:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 GETTABLEKS                       R3 R0 K4 ["controls"]
        4 GETTABLEKS                       R3 R3 K5 ["mediaSizeScaleX"]
        6 ORK                              R2 R3 K3 [0]
        7 GETTABLEKS                       R4 R0 K4 ["controls"]
        9 GETTABLEKS                       R4 R4 K6 ["mediaSizeOffsetX"]
       11 ORK                              R3 R4 K3 [0]
       12 GETTABLEKS                       R5 R0 K4 ["controls"]
       14 GETTABLEKS                       R5 R5 K7 ["mediaSizeScaleY"]
       16 ORK                              R4 R5 K3 [0]
       17 GETTABLEKS                       R6 R0 K4 ["controls"]
       19 GETTABLEKS                       R6 R6 K8 ["mediaSizeOffsetY"]
       21 ORK                              R5 R6 K3 [0]
       22 CALL                             R1 4 1
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K9 ["createElement"]
       26 GETUPVAL                         R3 1
       27 DUPTABLE                         R4 K12 [{["tag"] = "col gap-xlarge size-full-0 auto-y"}]
       28 DUPTABLE                         R5 K15 [{"DialogMedia", "DialogText"}]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K9 ["createElement"]
       32 GETGLOBAL                        R7 K16 ["CustomMedia"]
       34 DUPTABLE                         R8 K22 [{["media"], ["Size"], ["aspectRatio"], ["LayoutOrder"] = 1}]
       35 GETTABLEKS                       R9 R0 K4 ["controls"]
       37 GETTABLEKS                       R9 R9 K17 ["media"]
       39 SETTABLEKS                       R9 R8 K17 ["media"]
       41 SETTABLEKS                       R1 R8 K18 ["Size"]
       43 GETTABLEKS                       R10 R0 K4 ["controls"]
       45 GETTABLEKS                       R10 R10 K23 ["mediaAspectRatio"]
       47 LOADN                            R11 0
       48 JUMPIFNOTLT                      R11 R10 ; [+6]
       50 GETTABLEKS                       R9 R0 K4 ["controls"]
       52 GETTABLEKS                       R9 R9 K23 ["mediaAspectRatio"]
       54 JUMP                             ; [+1]
       55 LOADNIL                          R9
       56 SETTABLEKS                       R9 R8 K19 ["aspectRatio"]
       58 CALL                             R6 2 1
       59 SETTABLEKS                       R6 R5 K13 ["DialogMedia"]
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R6 R6 K9 ["createElement"]
       64 GETUPVAL                         R7 2
       65 GETTABLEKS                       R7 R7 K24 ["Text"]
       67 DUPTABLE                         R8 K26 [{["Text"], ["LayoutOrder"] = 4}]
       68 GETTABLEKS                       R9 R0 K4 ["controls"]
       70 GETTABLEKS                       R9 R9 K27 ["content"]
       72 SETTABLEKS                       R9 R8 K24 ["Text"]
       74 CALL                             R6 2 1
       75 SETTABLEKS                       R6 R5 K14 ["DialogText"]
       77 CALL                             R2 3 1
       78 GETUPVAL                         R3 0
       79 GETTABLEKS                       R3 R3 K9 ["createElement"]
       81 GETUPVAL                         R4 3
       82 MOVE                             R5 R0
       83 DUPTABLE                         R6 K30 [{"DialogTitle", "DialogContent"}]
       84 GETUPVAL                         R7 0
       85 GETTABLEKS                       R7 R7 K9 ["createElement"]
       87 GETUPVAL                         R8 2
       88 GETTABLEKS                       R8 R8 K31 ["Title"]
       90 DUPTABLE                         R9 K33 [{"text"}]
       91 GETTABLEKS                       R10 R0 K4 ["controls"]
       93 GETTABLEKS                       R10 R10 K34 ["title"]
       95 SETTABLEKS                       R10 R9 K32 ["text"]
       97 CALL                             R7 2 1
       98 SETTABLEKS                       R7 R6 K28 ["DialogTitle"]
      100 GETUPVAL                         R7 0
      101 GETTABLEKS                       R7 R7 K9 ["createElement"]
      103 GETUPVAL                         R8 2
      104 GETTABLEKS                       R8 R8 K35 ["Content"]
      106 DUPTABLE                         R9 K38 [{["LayoutOrder"] = 2, ["Selectable"]}]
      107 GETTABLEKS                       R10 R0 K4 ["controls"]
      109 GETTABLEKS                       R10 R10 K39 ["selectableContent"]
      111 SETTABLEKS                       R10 R9 K37 ["Selectable"]
      113 DUPTABLE                         R10 K41 [{"CustomContent"}]
      114 SETTABLEKS                       R2 R10 K40 ["CustomContent"]
      116 CALL                             R7 3 1
      117 SETTABLEKS                       R7 R6 K29 ["DialogContent"]
      119 CALL                             R3 3 -1
      120 RETURN                           R3 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R0
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 SETTABLE                         R3 R1 R2
       10 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_21:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 DUPTABLE                         R2 K6 [{["notifications"] = False, ["analytics"] = False, ["marketing"] = False, ["thirdParty"] = False}]
        4 CALL                             R1 1 2
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K7 ["createElement"]
       11 GETUPVAL                         R5 2
       12 MOVE                             R6 R0
       13 DUPTABLE                         R7 K10 [{"DialogTitle", "DialogContent"}]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K7 ["createElement"]
       17 GETUPVAL                         R9 3
       18 GETTABLEKS                       R9 R9 K11 ["Title"]
       20 DUPTABLE                         R10 K13 [{"text"}]
       21 GETTABLEKS                       R11 R0 K14 ["controls"]
       23 GETTABLEKS                       R11 R11 K15 ["title"]
       25 SETTABLEKS                       R11 R10 K12 ["text"]
       27 CALL                             R8 2 1
       28 SETTABLEKS                       R8 R7 K8 ["DialogTitle"]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K7 ["createElement"]
       33 GETUPVAL                         R9 3
       34 GETTABLEKS                       R9 R9 K16 ["Content"]
       36 DUPTABLE                         R10 K20 [{["LayoutOrder"] = 2, ["Selectable"]}]
       37 GETTABLEKS                       R11 R0 K14 ["controls"]
       39 GETTABLEKS                       R11 R11 K21 ["selectableContent"]
       41 SETTABLEKS                       R11 R10 K19 ["Selectable"]
       43 DUPTABLE                         R11 K23 [{"CheckboxContent"}]
       44 GETUPVAL                         R12 0
       45 GETTABLEKS                       R12 R12 K7 ["createElement"]
       47 GETUPVAL                         R13 4
       48 DUPTABLE                         R14 K26 [{"checkboxStates", "toggleCheckbox"}]
       49 SETTABLEKS                       R1 R14 K24 ["checkboxStates"]
       51 SETTABLEKS                       R3 R14 K25 ["toggleCheckbox"]
       53 CALL                             R12 2 1
       54 SETTABLEKS                       R12 R11 K22 ["CheckboxContent"]
       56 CALL                             R8 3 1
       57 SETTABLEKS                       R8 R7 K9 ["DialogContent"]
       59 CALL                             R4 3 -1
       60 RETURN                           R4 -1

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
       23 GETTABLEKS                       R5 R5 K10 ["Button"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R6 K12 ["ButtonVariant"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["Checkbox"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R8 K14 ["Dialog"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K11 ["Enums"]
       51 GETTABLEKS                       R9 R9 K15 ["DialogSize"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K9 ["Components"]
       58 GETTABLEKS                       R10 R10 K16 ["Image"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K11 ["Enums"]
       65 GETTABLEKS                       R11 R11 K17 ["InputSize"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K9 ["Components"]
       72 GETTABLEKS                       R12 R12 K18 ["List"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K11 ["Enums"]
       79 GETTABLEKS                       R13 R13 K19 ["Orientation"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K9 ["Components"]
       86 GETTABLEKS                       R14 R14 K20 ["RadioGroup"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R15 R0 K9 ["Components"]
       93 GETTABLEKS                       R15 R15 K21 ["Text"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K6 [require]
       98 GETTABLEKS                       R16 R0 K9 ["Components"]
      100 GETTABLEKS                       R16 R16 K22 ["View"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K6 [require]
      105 GETTABLEKS                       R17 R0 K9 ["Components"]
      107 GETTABLEKS                       R17 R17 K14 ["Dialog"]
      109 GETTABLEKS                       R17 R17 K23 ["useDialogNavigation"]
      111 CALL                             R16 1 1
      112 GETIMPORT                        R17 K6 [require]
      114 GETTABLEKS                       R18 R0 K24 ["Providers"]
      116 GETTABLEKS                       R18 R18 K25 ["Style"]
      118 GETTABLEKS                       R18 R18 K26 ["useTokens"]
      120 CALL                             R17 1 1
      121 NEWTABLE                         R18 0 12
      123 LOADK                            R19 K27 ["rbxassetid://103403748802347"]
      124 LOADK                            R20 K28 ["rbxassetid://88076582911570"]
      125 LOADK                            R21 K29 ["pictograms/celebrate"]
      126 LOADK                            R22 K30 ["pictograms/gift"]
      127 LOADK                            R23 K31 ["pictograms/trusted_connections_2"]
      128 LOADK                            R24 K32 ["pictograms/two_people"]
      129 LOADK                            R25 K33 ["pictograms/heart"]
      130 LOADK                            R26 K34 ["pictograms/badge"]
      131 LOADK                            R27 K35 ["pictograms/notifications"]
      132 LOADK                            R28 K36 ["pictograms/voice_chat"]
      133 LOADK                            R29 K37 ["pictograms/robux"]
      134 LOADK                            R30 K38 ["pictograms/protection_shield"]
      135 SETLIST                          R18 R19 12 [1]
      137 DUPCLOSURE                       R19 K39 [PROTO_0]
      138 DUPCLOSURE                       R20 K40 [PROTO_4]
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R7
      144 DUPCLOSURE                       R21 K41 [PROTO_5]
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R9
      148 SETGLOBAL                        R21 K42 ["CustomMedia"]
      150 DUPCLOSURE                       R21 K43 [PROTO_7]
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R6
      155 DUPTABLE                         R22 K47 [{["summary"] = "Dialog", ["stories"], ["controls"]}]
      156 NEWTABLE                         R23 0 8
      158 DUPTABLE                         R24 K51 [{["name"] = "Hero Image & Title & Content", ["story"]}]
      159 DUPCLOSURE                       R25 K52 [PROTO_8]
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R20
      163 CAPTURE                          VAL R7
      164 SETTABLEKS                       R25 R24 K50 ["story"]
      166 DUPTABLE                         R25 K54 [{["name"] = "Title & Content", ["story"]}]
      167 DUPCLOSURE                       R26 K55 [PROTO_9]
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R20
      170 CAPTURE                          VAL R7
      171 SETTABLEKS                       R26 R25 K50 ["story"]
      173 DUPTABLE                         R26 K57 [{["name"] = "Hero Image & Content", ["story"]}]
      174 DUPCLOSURE                       R27 K58 [PROTO_10]
      175 CAPTURE                          VAL R17
      176 CAPTURE                          VAL R3
      177 CAPTURE                          VAL R20
      178 CAPTURE                          VAL R7
      179 SETTABLEKS                       R27 R26 K50 ["story"]
      181 DUPTABLE                         R27 K60 [{["name"] = "Hero Image only", ["story"]}]
      182 DUPCLOSURE                       R28 K61 [PROTO_11]
      183 CAPTURE                          VAL R17
      184 CAPTURE                          VAL R3
      185 CAPTURE                          VAL R20
      186 CAPTURE                          VAL R7
      187 SETTABLEKS                       R28 R27 K50 ["story"]
      189 DUPTABLE                         R28 K63 [{["name"] = "Custom Content", ["story"]}]
      190 DUPCLOSURE                       R29 K64 [PROTO_14]
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R3
      193 CAPTURE                          VAL R13
      194 CAPTURE                          VAL R10
      195 CAPTURE                          VAL R15
      196 CAPTURE                          VAL R14
      197 CAPTURE                          VAL R7
      198 CAPTURE                          VAL R20
      199 SETTABLEKS                       R29 R28 K50 ["story"]
      201 DUPTABLE                         R29 K66 [{["name"] = "Scrollable List Content", ["story"]}]
      202 DUPCLOSURE                       R30 K67 [PROTO_17]
      203 CAPTURE                          VAL R2
      204 CAPTURE                          VAL R3
      205 CAPTURE                          VAL R11
      206 CAPTURE                          VAL R20
      207 CAPTURE                          VAL R7
      208 SETTABLEKS                       R30 R29 K50 ["story"]
      210 DUPTABLE                         R30 K69 [{["name"] = "Embedded Media", ["story"]}]
      211 DUPCLOSURE                       R31 K70 [PROTO_18]
      212 CAPTURE                          VAL R3
      213 CAPTURE                          VAL R15
      214 CAPTURE                          VAL R7
      215 CAPTURE                          VAL R20
      216 SETTABLEKS                       R31 R30 K50 ["story"]
      218 DUPTABLE                         R31 K72 [{["name"] = "Checkbox Content with Focus Navigation", ["story"]}]
      219 DUPCLOSURE                       R32 K73 [PROTO_22]
      220 CAPTURE                          VAL R3
      221 CAPTURE                          VAL R2
      222 CAPTURE                          VAL R20
      223 CAPTURE                          VAL R7
      224 CAPTURE                          VAL R21
      225 SETTABLEKS                       R32 R31 K50 ["story"]
      227 SETLIST                          R23 R24 8 [1]
      229 SETTABLEKS                       R23 R22 K45 ["stories"]
      231 DUPTABLE                         R23 K102 [{["title"] = "Welcome Dialog", ["content"] = "This is a dialog with a very, very long description that spans multiple lines. Now, I'm not joking when I say that it has a lot to say. Really, a lot of things have a lot to say if you're willing to listen.", ["actionsLabel"] = "By selecting Primary, I consent to Roblox's collection, use, and storage of my data to enable services and for moderation, safety, and improvement of our services and tools.", ["actionsOrientation"], ["hasActions"] = True, ["disablePortal"] = False, ["hasBackdrop"] = True, ["media"], ["mediaSizeScaleX"] = 1, ["mediaSizeScaleY"] = 0, ["mediaSizeOffsetX"] = 0, ["mediaSizeOffsetY"] = 100, ["mediaAspectRatio"] = 0, ["heroMediaBackgroundStyle"] = False, ["heroMediaAspectRatio"] = 2.5, ["heroMediaHeightScale"] = 1, ["heroMediaHeightOffset"] = 0, ["selectableContent"] = True, ["size"]}]
      232 GETTABLEKS                       R24 R2 K103 ["values"]
      234 MOVE                             R25 R12
      235 CALL                             R24 1 1
      236 SETTABLEKS                       R24 R23 K80 ["actionsOrientation"]
      238 SETTABLEKS                       R18 R23 K86 ["media"]
      240 GETTABLEKS                       R24 R2 K103 ["values"]
      242 MOVE                             R25 R8
      243 CALL                             R24 1 1
      244 SETTABLEKS                       R24 R23 K101 ["size"]
      246 SETTABLEKS                       R23 R22 K46 ["controls"]
      248 RETURN                           R22 1
