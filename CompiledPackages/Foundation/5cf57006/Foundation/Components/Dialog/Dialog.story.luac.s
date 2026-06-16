PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Join clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Share clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIF                           R1 ; [+10]
        3 DUPTABLE                         R1 K4 [{"DialogMedia", "DialogContent", "DialogTitle"}]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K1 ["DialogMedia"]
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R1 K2 ["DialogContent"]
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R1 K3 ["DialogTitle"]
       13 GETTABLEKS                       R2 R0 K5 ["controls"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K6 ["useState"]
       18 LOADB                            R4 0
       19 CALL                             R3 1 2
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R3
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K7 ["createElement"]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K8 ["Fragment"]
       29 LOADNIL                          R8
       30 DUPTABLE                         R9 K11 [{"ToggleButton", "DialogRoot"}]
       31 GETUPVAL                         R10 0
       32 GETTABLEKS                       R10 R10 K7 ["createElement"]
       34 GETUPVAL                         R11 1
       35 DUPTABLE                         R12 K15 [{"text", "onActivated", "variant"}]
       36 JUMPIFNOT                        R3 ; [+2]
       37 LOADK                            R13 K16 ["Close Dialog"]
       38 JUMP                             ; [+1]
       39 LOADK                            R13 K17 ["Open Dialog"]
       40 SETTABLEKS                       R13 R12 K12 ["text"]
       42 SETTABLEKS                       R5 R12 K13 ["onActivated"]
       44 GETUPVAL                         R13 2
       45 GETTABLEKS                       R13 R13 K18 ["Emphasis"]
       47 SETTABLEKS                       R13 R12 K14 ["variant"]
       49 CALL                             R10 2 1
       50 SETTABLEKS                       R10 R9 K9 ["ToggleButton"]
       52 JUMPIFNOT                        R3 ; [+98]
       53 GETUPVAL                         R10 0
       54 GETTABLEKS                       R10 R10 K7 ["createElement"]
       56 GETUPVAL                         R11 3
       57 GETTABLEKS                       R11 R11 K19 ["Root"]
       59 DUPTABLE                         R12 K24 [{"size", "onClose", "hasBackdrop", "disablePortal"}]
       60 GETTABLEKS                       R13 R2 K20 ["size"]
       62 SETTABLEKS                       R13 R12 K20 ["size"]
       64 SETTABLEKS                       R5 R12 K21 ["onClose"]
       66 GETTABLEKS                       R13 R2 K22 ["hasBackdrop"]
       68 SETTABLEKS                       R13 R12 K22 ["hasBackdrop"]
       70 GETTABLEKS                       R13 R2 K23 ["disablePortal"]
       72 SETTABLEKS                       R13 R12 K23 ["disablePortal"]
       74 DUPTABLE                         R13 K26 [{"DialogMedia", "DialogTitle", "DialogContent", "DialogActions"}]
       75 GETTABLEKS                       R14 R1 K1 ["DialogMedia"]
       77 SETTABLEKS                       R14 R13 K1 ["DialogMedia"]
       79 GETTABLEKS                       R14 R1 K3 ["DialogTitle"]
       81 SETTABLEKS                       R14 R13 K3 ["DialogTitle"]
       83 GETTABLEKS                       R14 R1 K2 ["DialogContent"]
       85 SETTABLEKS                       R14 R13 K2 ["DialogContent"]
       87 GETTABLEKS                       R15 R2 K27 ["hasActions"]
       89 JUMPIFNOT                        R15 ; [+56]
       90 GETUPVAL                         R14 0
       91 GETTABLEKS                       R14 R14 K7 ["createElement"]
       93 GETUPVAL                         R15 3
       94 GETTABLEKS                       R15 R15 K28 ["Actions"]
       96 DUPTABLE                         R16 K33 [{"LayoutOrder", "orientation", "actions", "label"}]
       97 LOADN                            R17 3
       98 SETTABLEKS                       R17 R16 K29 ["LayoutOrder"]
      100 GETTABLEKS                       R17 R2 K34 ["actionsOrientation"]
      102 SETTABLEKS                       R17 R16 K30 ["orientation"]
      104 NEWTABLE                         R17 0 2
      106 DUPTABLE                         R18 K37 [{"text", "variant", "icon", "onActivated", "inputDelay"}]
      107 LOADK                            R19 K38 ["Join"]
      108 SETTABLEKS                       R19 R18 K12 ["text"]
      110 GETUPVAL                         R19 2
      111 GETTABLEKS                       R19 R19 K18 ["Emphasis"]
      113 SETTABLEKS                       R19 R18 K14 ["variant"]
      115 LOADK                            R19 K39 ["icons/common/robux"]
      116 SETTABLEKS                       R19 R18 K35 ["icon"]
      118 DUPCLOSURE                       R19 K40 [PROTO_1]
      119 SETTABLEKS                       R19 R18 K13 ["onActivated"]
      121 LOADN                            R19 3
      122 SETTABLEKS                       R19 R18 K36 ["inputDelay"]
      124 DUPTABLE                         R19 K41 [{"text", "variant", "onActivated"}]
      125 LOADK                            R20 K42 ["Share"]
      126 SETTABLEKS                       R20 R19 K12 ["text"]
      128 GETUPVAL                         R20 2
      129 GETTABLEKS                       R20 R20 K43 ["Standard"]
      131 SETTABLEKS                       R20 R19 K14 ["variant"]
      133 DUPCLOSURE                       R20 K44 [PROTO_2]
      134 SETTABLEKS                       R20 R19 K13 ["onActivated"]
      136 SETLIST                          R17 R18 2 [1]
      138 SETTABLEKS                       R17 R16 K31 ["actions"]
      140 GETTABLEKS                       R17 R2 K45 ["actionsLabel"]
      142 SETTABLEKS                       R17 R16 K32 ["label"]
      144 CALL                             R14 2 1
      145 JUMP                             ; [+1]
      146 LOADNIL                          R14
      147 SETTABLEKS                       R14 R13 K25 ["DialogActions"]
      149 CALL                             R10 3 1
      150 JUMP                             ; [+1]
      151 LOADNIL                          R10
      152 SETTABLEKS                       R10 R9 K10 ["DialogRoot"]
      154 CALL                             R6 3 -1
      155 RETURN                           R6 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["row align-x-center size-full-0 auto-y"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 DUPTABLE                         R4 K5 [{"Image"}]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K0 ["createElement"]
       12 GETUPVAL                         R6 2
       13 DUPTABLE                         R7 K8 [{"tag", "aspectRatio", "Image", "Size"}]
       14 NEWTABLE                         R8 1 0
       16 GETTABLEKS                       R10 R0 K9 ["media"]
       18 JUMPIFEQKS                       R10 K10 ["pictograms/avatar_setup"] ; [+2]
       20 LOADB                            R9 0 +1
       21 LOADB                            R9 1
       22 SETTABLEKS                       R9 R8 K11 ["content-emphasis"]
       24 SETTABLEKS                       R8 R7 K1 ["tag"]
       26 GETTABLEKS                       R8 R0 K6 ["aspectRatio"]
       28 SETTABLEKS                       R8 R7 K6 ["aspectRatio"]
       30 GETTABLEKS                       R8 R0 K9 ["media"]
       32 SETTABLEKS                       R8 R7 K4 ["Image"]
       34 GETTABLEKS                       R8 R0 K7 ["Size"]
       36 SETTABLEKS                       R8 R7 K7 ["Size"]
       38 CALL                             R5 2 1
       39 SETTABLEKS                       R5 R4 K4 ["Image"]
       41 CALL                             R1 3 -1
       42 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setContentStartRef"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
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
       24 DUPTABLE                         R5 K5 [{"tag"}]
       25 LOADK                            R6 K6 ["col gap-small size-full-0 auto-y"]
       26 SETTABLEKS                       R6 R5 K4 ["tag"]
       28 DUPTABLE                         R6 K11 [{"Notifications", "Analytics", "Marketing", "ThirdParty"}]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R7 R7 K3 ["createElement"]
       32 GETUPVAL                         R8 3
       33 DUPTABLE                         R9 K18 [{"label", "isChecked", "onActivated", "ref", "NextSelectionUp", "LayoutOrder"}]
       34 LOADK                            R10 K19 ["Enable notifications"]
       35 SETTABLEKS                       R10 R9 K12 ["label"]
       37 GETTABLEKS                       R10 R0 K20 ["checkboxStates"]
       39 GETTABLEKS                       R10 R10 K21 ["notifications"]
       41 SETTABLEKS                       R10 R9 K13 ["isChecked"]
       43 GETTABLEKS                       R10 R0 K22 ["toggleCheckbox"]
       45 LOADK                            R11 K21 ["notifications"]
       46 CALL                             R10 1 1
       47 SETTABLEKS                       R10 R9 K14 ["onActivated"]
       49 SETTABLEKS                       R2 R9 K15 ["ref"]
       51 GETTABLEKS                       R10 R1 K23 ["closeAffordanceRef"]
       53 SETTABLEKS                       R10 R9 K16 ["NextSelectionUp"]
       55 LOADN                            R10 1
       56 SETTABLEKS                       R10 R9 K17 ["LayoutOrder"]
       58 CALL                             R7 2 1
       59 SETTABLEKS                       R7 R6 K7 ["Notifications"]
       61 GETUPVAL                         R7 1
       62 GETTABLEKS                       R7 R7 K3 ["createElement"]
       64 GETUPVAL                         R8 3
       65 DUPTABLE                         R9 K24 [{"label", "isChecked", "onActivated", "LayoutOrder"}]
       66 LOADK                            R10 K25 ["Share usage analytics"]
       67 SETTABLEKS                       R10 R9 K12 ["label"]
       69 GETTABLEKS                       R10 R0 K20 ["checkboxStates"]
       71 GETTABLEKS                       R10 R10 K26 ["analytics"]
       73 SETTABLEKS                       R10 R9 K13 ["isChecked"]
       75 GETTABLEKS                       R10 R0 K22 ["toggleCheckbox"]
       77 LOADK                            R11 K26 ["analytics"]
       78 CALL                             R10 1 1
       79 SETTABLEKS                       R10 R9 K14 ["onActivated"]
       81 LOADN                            R10 2
       82 SETTABLEKS                       R10 R9 K17 ["LayoutOrder"]
       84 CALL                             R7 2 1
       85 SETTABLEKS                       R7 R6 K8 ["Analytics"]
       87 GETUPVAL                         R7 1
       88 GETTABLEKS                       R7 R7 K3 ["createElement"]
       90 GETUPVAL                         R8 3
       91 DUPTABLE                         R9 K24 [{"label", "isChecked", "onActivated", "LayoutOrder"}]
       92 LOADK                            R10 K27 ["Receive marketing emails"]
       93 SETTABLEKS                       R10 R9 K12 ["label"]
       95 GETTABLEKS                       R10 R0 K20 ["checkboxStates"]
       97 GETTABLEKS                       R10 R10 K28 ["marketing"]
       99 SETTABLEKS                       R10 R9 K13 ["isChecked"]
      101 GETTABLEKS                       R10 R0 K22 ["toggleCheckbox"]
      103 LOADK                            R11 K28 ["marketing"]
      104 CALL                             R10 1 1
      105 SETTABLEKS                       R10 R9 K14 ["onActivated"]
      107 LOADN                            R10 3
      108 SETTABLEKS                       R10 R9 K17 ["LayoutOrder"]
      110 CALL                             R7 2 1
      111 SETTABLEKS                       R7 R6 K9 ["Marketing"]
      113 GETUPVAL                         R7 1
      114 GETTABLEKS                       R7 R7 K3 ["createElement"]
      116 GETUPVAL                         R8 3
      117 DUPTABLE                         R9 K24 [{"label", "isChecked", "onActivated", "LayoutOrder"}]
      118 LOADK                            R10 K29 ["Allow third-party integrations"]
      119 SETTABLEKS                       R10 R9 K12 ["label"]
      121 GETTABLEKS                       R10 R0 K20 ["checkboxStates"]
      123 GETTABLEKS                       R10 R10 K30 ["thirdParty"]
      125 SETTABLEKS                       R10 R9 K13 ["isChecked"]
      127 GETTABLEKS                       R10 R0 K22 ["toggleCheckbox"]
      129 LOADK                            R11 K30 ["thirdParty"]
      130 CALL                             R10 1 1
      131 SETTABLEKS                       R10 R9 K14 ["onActivated"]
      133 LOADN                            R10 4
      134 SETTABLEKS                       R10 R9 K17 ["LayoutOrder"]
      136 CALL                             R7 2 1
      137 SETTABLEKS                       R7 R6 K10 ["ThirdParty"]
      139 CALL                             R3 3 -1
      140 RETURN                           R3 -1

PROTO_7:
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
       37 GETTABLEKS                       R10 R0 K8 ["controls"]
       39 GETTABLEKS                       R10 R10 K11 ["media"]
       41 JUMPIFNOTEQKS                    R10 K17 ["pictograms/avatar_setup"] ; [+8]
       43 GETTABLEKS                       R9 R1 K18 ["Color"]
       45 GETTABLEKS                       R9 R9 K19 ["Content"]
       47 GETTABLEKS                       R9 R9 K20 ["Emphasis"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R9
       51 SETTABLEKS                       R9 R8 K12 ["mediaStyle"]
       53 GETTABLEKS                       R10 R0 K8 ["controls"]
       55 GETTABLEKS                       R10 R10 K21 ["heroMediaBackgroundStyle"]
       57 JUMPIFNOT                        R10 ; [+7]
       58 GETTABLEKS                       R9 R1 K18 ["Color"]
       60 GETTABLEKS                       R9 R9 K22 ["ActionSoftEmphasis"]
       62 GETTABLEKS                       R9 R9 K23 ["Background"]
       64 JUMP                             ; [+1]
       65 LOADNIL                          R9
       66 SETTABLEKS                       R9 R8 K13 ["backgroundStyle"]
       68 GETIMPORT                        R9 K26 [UDim.new]
       70 GETTABLEKS                       R11 R0 K8 ["controls"]
       72 GETTABLEKS                       R11 R11 K28 ["heroMediaHeightScale"]
       74 ORK                              R10 R11 K27 [0]
       75 GETTABLEKS                       R12 R0 K8 ["controls"]
       77 GETTABLEKS                       R12 R12 K29 ["heroMediaHeightOffset"]
       79 ORK                              R11 R12 K27 [0]
       80 CALL                             R9 2 1
       81 SETTABLEKS                       R9 R8 K14 ["height"]
       83 GETTABLEKS                       R10 R0 K8 ["controls"]
       85 GETTABLEKS                       R10 R10 K30 ["heroMediaAspectRatio"]
       87 LOADN                            R11 0
       88 JUMPIFNOTLT                      R11 R10 ; [+6]
       90 GETTABLEKS                       R9 R0 K8 ["controls"]
       92 GETTABLEKS                       R9 R9 K30 ["heroMediaAspectRatio"]
       94 JUMP                             ; [+1]
       95 LOADNIL                          R9
       96 SETTABLEKS                       R9 R8 K15 ["aspectRatio"]
       98 CALL                             R6 2 1
       99 SETTABLEKS                       R6 R5 K2 ["DialogMedia"]
      101 GETUPVAL                         R6 1
      102 GETTABLEKS                       R6 R6 K0 ["createElement"]
      104 GETUPVAL                         R7 3
      105 GETTABLEKS                       R7 R7 K19 ["Content"]
      107 DUPTABLE                         R8 K33 [{"LayoutOrder", "Selectable"}]
      108 LOADN                            R9 2
      109 SETTABLEKS                       R9 R8 K31 ["LayoutOrder"]
      111 GETTABLEKS                       R9 R0 K8 ["controls"]
      113 GETTABLEKS                       R9 R9 K34 ["selectableContent"]
      115 SETTABLEKS                       R9 R8 K32 ["Selectable"]
      117 DUPTABLE                         R9 K36 [{"DialogText"}]
      118 GETUPVAL                         R10 1
      119 GETTABLEKS                       R10 R10 K0 ["createElement"]
      121 GETUPVAL                         R11 3
      122 GETTABLEKS                       R11 R11 K37 ["Text"]
      124 DUPTABLE                         R12 K38 [{"Text"}]
      125 GETTABLEKS                       R13 R0 K8 ["controls"]
      127 GETTABLEKS                       R13 R13 K39 ["content"]
      129 SETTABLEKS                       R13 R12 K37 ["Text"]
      131 CALL                             R10 2 1
      132 SETTABLEKS                       R10 R9 K35 ["DialogText"]
      134 CALL                             R6 3 1
      135 SETTABLEKS                       R6 R5 K3 ["DialogContent"]
      137 CALL                             R2 3 -1
      138 RETURN                           R2 -1

PROTO_8:
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
       28 DUPTABLE                         R7 K12 [{"LayoutOrder", "Selectable"}]
       29 LOADN                            R8 2
       30 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       32 GETTABLEKS                       R8 R0 K7 ["controls"]
       34 GETTABLEKS                       R8 R8 K13 ["selectableContent"]
       36 SETTABLEKS                       R8 R7 K11 ["Selectable"]
       38 DUPTABLE                         R8 K15 [{"DialogText"}]
       39 GETUPVAL                         R9 0
       40 GETTABLEKS                       R9 R9 K0 ["createElement"]
       42 GETUPVAL                         R10 2
       43 GETTABLEKS                       R10 R10 K16 ["Text"]
       45 DUPTABLE                         R11 K17 [{"Text"}]
       46 GETTABLEKS                       R12 R0 K7 ["controls"]
       48 GETTABLEKS                       R12 R12 K18 ["content"]
       50 SETTABLEKS                       R12 R11 K16 ["Text"]
       52 CALL                             R9 2 1
       53 SETTABLEKS                       R9 R8 K14 ["DialogText"]
       55 CALL                             R5 3 1
       56 SETTABLEKS                       R5 R4 K2 ["DialogContent"]
       58 CALL                             R1 3 -1
       59 RETURN                           R1 -1

PROTO_9:
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
       21 GETTABLEKS                       R10 R0 K11 ["controls"]
       23 GETTABLEKS                       R10 R10 K5 ["media"]
       25 JUMPIFNOTEQKS                    R10 K12 ["pictograms/avatar_setup"] ; [+8]
       27 GETTABLEKS                       R9 R1 K13 ["Color"]
       29 GETTABLEKS                       R9 R9 K14 ["Content"]
       31 GETTABLEKS                       R9 R9 K15 ["Emphasis"]
       33 JUMP                             ; [+1]
       34 LOADNIL                          R9
       35 SETTABLEKS                       R9 R8 K6 ["mediaStyle"]
       37 GETTABLEKS                       R10 R0 K11 ["controls"]
       39 GETTABLEKS                       R10 R10 K16 ["heroMediaBackgroundStyle"]
       41 JUMPIFNOT                        R10 ; [+7]
       42 GETTABLEKS                       R9 R1 K13 ["Color"]
       44 GETTABLEKS                       R9 R9 K17 ["ActionSoftEmphasis"]
       46 GETTABLEKS                       R9 R9 K18 ["Background"]
       48 JUMP                             ; [+1]
       49 LOADNIL                          R9
       50 SETTABLEKS                       R9 R8 K7 ["backgroundStyle"]
       52 GETIMPORT                        R9 K21 [UDim.new]
       54 GETTABLEKS                       R11 R0 K11 ["controls"]
       56 GETTABLEKS                       R11 R11 K23 ["heroMediaHeightScale"]
       58 ORK                              R10 R11 K22 [0]
       59 GETTABLEKS                       R12 R0 K11 ["controls"]
       61 GETTABLEKS                       R12 R12 K24 ["heroMediaHeightOffset"]
       63 ORK                              R11 R12 K22 [0]
       64 CALL                             R9 2 1
       65 SETTABLEKS                       R9 R8 K8 ["height"]
       67 GETTABLEKS                       R10 R0 K11 ["controls"]
       69 GETTABLEKS                       R10 R10 K25 ["heroMediaAspectRatio"]
       71 LOADN                            R11 0
       72 JUMPIFNOTLT                      R11 R10 ; [+6]
       74 GETTABLEKS                       R9 R0 K11 ["controls"]
       76 GETTABLEKS                       R9 R9 K25 ["heroMediaAspectRatio"]
       78 JUMP                             ; [+1]
       79 LOADNIL                          R9
       80 SETTABLEKS                       R9 R8 K9 ["aspectRatio"]
       82 CALL                             R6 2 1
       83 SETTABLEKS                       R6 R5 K1 ["DialogMedia"]
       85 GETUPVAL                         R6 1
       86 GETTABLEKS                       R6 R6 K0 ["createElement"]
       88 GETUPVAL                         R7 3
       89 GETTABLEKS                       R7 R7 K14 ["Content"]
       91 DUPTABLE                         R8 K28 [{"LayoutOrder", "Selectable"}]
       92 LOADN                            R9 2
       93 SETTABLEKS                       R9 R8 K26 ["LayoutOrder"]
       95 GETTABLEKS                       R9 R0 K11 ["controls"]
       97 GETTABLEKS                       R9 R9 K29 ["selectableContent"]
       99 SETTABLEKS                       R9 R8 K27 ["Selectable"]
      101 DUPTABLE                         R9 K31 [{"DialogText"}]
      102 GETUPVAL                         R10 1
      103 GETTABLEKS                       R10 R10 K0 ["createElement"]
      105 GETUPVAL                         R11 3
      106 GETTABLEKS                       R11 R11 K32 ["Text"]
      108 DUPTABLE                         R12 K33 [{"Text"}]
      109 GETTABLEKS                       R13 R0 K11 ["controls"]
      111 GETTABLEKS                       R13 R13 K34 ["content"]
      113 SETTABLEKS                       R13 R12 K32 ["Text"]
      115 CALL                             R10 2 1
      116 SETTABLEKS                       R10 R9 K30 ["DialogText"]
      118 CALL                             R6 3 1
      119 SETTABLEKS                       R6 R5 K2 ["DialogContent"]
      121 CALL                             R2 3 -1
      122 RETURN                           R2 -1

PROTO_10:
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
       21 GETTABLEKS                       R10 R0 K10 ["controls"]
       23 GETTABLEKS                       R10 R10 K4 ["media"]
       25 JUMPIFNOTEQKS                    R10 K11 ["pictograms/avatar_setup"] ; [+8]
       27 GETTABLEKS                       R9 R1 K12 ["Color"]
       29 GETTABLEKS                       R9 R9 K13 ["Content"]
       31 GETTABLEKS                       R9 R9 K14 ["Emphasis"]
       33 JUMP                             ; [+1]
       34 LOADNIL                          R9
       35 SETTABLEKS                       R9 R8 K5 ["mediaStyle"]
       37 GETTABLEKS                       R10 R0 K10 ["controls"]
       39 GETTABLEKS                       R10 R10 K15 ["heroMediaBackgroundStyle"]
       41 JUMPIFNOT                        R10 ; [+7]
       42 GETTABLEKS                       R9 R1 K12 ["Color"]
       44 GETTABLEKS                       R9 R9 K16 ["ActionSoftEmphasis"]
       46 GETTABLEKS                       R9 R9 K17 ["Background"]
       48 JUMP                             ; [+1]
       49 LOADNIL                          R9
       50 SETTABLEKS                       R9 R8 K6 ["backgroundStyle"]
       52 GETIMPORT                        R9 K20 [UDim.new]
       54 GETTABLEKS                       R11 R0 K10 ["controls"]
       56 GETTABLEKS                       R11 R11 K22 ["heroMediaHeightScale"]
       58 ORK                              R10 R11 K21 [0]
       59 GETTABLEKS                       R12 R0 K10 ["controls"]
       61 GETTABLEKS                       R12 R12 K23 ["heroMediaHeightOffset"]
       63 ORK                              R11 R12 K21 [0]
       64 CALL                             R9 2 1
       65 SETTABLEKS                       R9 R8 K7 ["height"]
       67 GETTABLEKS                       R10 R0 K10 ["controls"]
       69 GETTABLEKS                       R10 R10 K24 ["heroMediaAspectRatio"]
       71 LOADN                            R11 0
       72 JUMPIFNOTLT                      R11 R10 ; [+6]
       74 GETTABLEKS                       R9 R0 K10 ["controls"]
       76 GETTABLEKS                       R9 R9 K24 ["heroMediaAspectRatio"]
       78 JUMP                             ; [+1]
       79 LOADNIL                          R9
       80 SETTABLEKS                       R9 R8 K8 ["aspectRatio"]
       82 CALL                             R6 2 1
       83 SETTABLEKS                       R6 R5 K1 ["DialogMedia"]
       85 CALL                             R2 3 -1
       86 RETURN                           R2 -1

PROTO_11:
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

PROTO_12:
        0 RETURN                           R0 0

PROTO_13:
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
       36 DUPCLOSURE                       R5 K15 [PROTO_11]
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 CALL                             R3 2 1
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R4 R4 K16 ["createElement"]
       44 GETUPVAL                         R5 4
       45 DUPTABLE                         R6 K18 [{"tag"}]
       46 LOADK                            R7 K19 ["col gap-xxlarge size-full-0 auto-y"]
       47 SETTABLEKS                       R7 R6 K17 ["tag"]
       49 DUPTABLE                         R7 K23 [{"Text", "RadioGroup", "DialogText"}]
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R8 R8 K16 ["createElement"]
       53 GETUPVAL                         R9 5
       54 DUPTABLE                         R10 K25 [{"tag", "Text", "LayoutOrder"}]
       55 LOADK                            R11 K26 ["size-full-0 auto-y text-body-large text-wrap text-align-x-left text-align-y-top"]
       56 SETTABLEKS                       R11 R10 K17 ["tag"]
       58 LOADK                            R11 K27 ["Some text"]
       59 SETTABLEKS                       R11 R10 K20 ["Text"]
       61 LOADN                            R11 2
       62 SETTABLEKS                       R11 R10 K24 ["LayoutOrder"]
       64 CALL                             R8 2 1
       65 SETTABLEKS                       R8 R7 K20 ["Text"]
       67 GETUPVAL                         R8 1
       68 GETTABLEKS                       R8 R8 K16 ["createElement"]
       70 GETUPVAL                         R9 2
       71 GETTABLEKS                       R9 R9 K28 ["Root"]
       73 DUPTABLE                         R10 K30 [{"onValueChanged", "LayoutOrder"}]
       74 DUPCLOSURE                       R11 K31 [PROTO_12]
       75 SETTABLEKS                       R11 R10 K29 ["onValueChanged"]
       77 LOADN                            R11 3
       78 SETTABLEKS                       R11 R10 K24 ["LayoutOrder"]
       80 MOVE                             R11 R3
       81 CALL                             R8 3 1
       82 SETTABLEKS                       R8 R7 K21 ["RadioGroup"]
       84 GETUPVAL                         R8 1
       85 GETTABLEKS                       R8 R8 K16 ["createElement"]
       87 GETUPVAL                         R9 6
       88 GETTABLEKS                       R9 R9 K20 ["Text"]
       90 DUPTABLE                         R10 K32 [{"Text", "LayoutOrder"}]
       91 GETTABLEKS                       R11 R0 K4 ["controls"]
       93 GETTABLEKS                       R11 R11 K33 ["content"]
       95 SETTABLEKS                       R11 R10 K20 ["Text"]
       97 LOADN                            R11 4
       98 SETTABLEKS                       R11 R10 K24 ["LayoutOrder"]
      100 CALL                             R8 2 1
      101 SETTABLEKS                       R8 R7 K22 ["DialogText"]
      103 CALL                             R4 3 1
      104 GETUPVAL                         R5 1
      105 GETTABLEKS                       R5 R5 K16 ["createElement"]
      107 GETUPVAL                         R6 7
      108 MOVE                             R7 R0
      109 DUPTABLE                         R8 K37 [{"DialogTitle", "DialogMedia", "DialogContent"}]
      110 GETUPVAL                         R9 1
      111 GETTABLEKS                       R9 R9 K16 ["createElement"]
      113 GETUPVAL                         R10 6
      114 GETTABLEKS                       R10 R10 K38 ["Title"]
      116 DUPTABLE                         R11 K40 [{"text"}]
      117 GETTABLEKS                       R12 R0 K4 ["controls"]
      119 GETTABLEKS                       R12 R12 K41 ["title"]
      121 SETTABLEKS                       R12 R11 K39 ["text"]
      123 CALL                             R9 2 1
      124 SETTABLEKS                       R9 R8 K34 ["DialogTitle"]
      126 GETUPVAL                         R9 1
      127 GETTABLEKS                       R9 R9 K16 ["createElement"]
      129 GETGLOBAL                        R10 K42 ["CustomMedia"]
      131 DUPTABLE                         R11 K46 [{"media", "Size", "aspectRatio"}]
      132 GETTABLEKS                       R12 R0 K4 ["controls"]
      134 GETTABLEKS                       R12 R12 K43 ["media"]
      136 SETTABLEKS                       R12 R11 K43 ["media"]
      138 SETTABLEKS                       R1 R11 K44 ["Size"]
      140 GETTABLEKS                       R13 R0 K4 ["controls"]
      142 GETTABLEKS                       R13 R13 K47 ["mediaAspectRatio"]
      144 LOADN                            R14 0
      145 JUMPIFNOTLT                      R14 R13 ; [+6]
      147 GETTABLEKS                       R12 R0 K4 ["controls"]
      149 GETTABLEKS                       R12 R12 K47 ["mediaAspectRatio"]
      151 JUMP                             ; [+1]
      152 LOADNIL                          R12
      153 SETTABLEKS                       R12 R11 K45 ["aspectRatio"]
      155 CALL                             R9 2 1
      156 SETTABLEKS                       R9 R8 K35 ["DialogMedia"]
      158 GETUPVAL                         R9 1
      159 GETTABLEKS                       R9 R9 K16 ["createElement"]
      161 GETUPVAL                         R10 6
      162 GETTABLEKS                       R10 R10 K48 ["Content"]
      164 DUPTABLE                         R11 K50 [{"LayoutOrder", "Selectable"}]
      165 LOADN                            R12 2
      166 SETTABLEKS                       R12 R11 K24 ["LayoutOrder"]
      168 GETTABLEKS                       R12 R0 K4 ["controls"]
      170 GETTABLEKS                       R12 R12 K51 ["selectableContent"]
      172 SETTABLEKS                       R12 R11 K49 ["Selectable"]
      174 DUPTABLE                         R12 K53 [{"CustomContent"}]
      175 SETTABLEKS                       R4 R12 K52 ["CustomContent"]
      177 CALL                             R9 3 1
      178 SETTABLEKS                       R9 R8 K36 ["DialogContent"]
      180 CALL                             R5 3 -1
      181 RETURN                           R5 -1

PROTO_14:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["Option %* activated"]
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Item"]
        6 DUPTABLE                         R4 K7 [{"key", "title", "description", "onActivated", "LayoutOrder"}]
        7 FASTCALL1                        TOSTRING R1 ; [+3]
        8 MOVE                             R6 R1
        9 GETIMPORT                        R5 K9 [tostring]
       11 CALL                             R5 1 1
       12 SETTABLEKS                       R5 R4 K2 ["key"]
       14 LOADK                            R6 K10 ["Option %*"]
       15 MOVE                             R8 R1
       16 NAMECALL                         R6 R6 K11 ["format"]
       18 CALL                             R6 2 1
       19 MOVE                             R5 R6
       20 SETTABLEKS                       R5 R4 K3 ["title"]
       22 LOADK                            R5 K12 ["Description for this option"]
       23 SETTABLEKS                       R5 R4 K4 ["description"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R5 R4 K5 ["onActivated"]
       29 SETTABLEKS                       R1 R4 K6 ["LayoutOrder"]
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["map"]
        3 GETIMPORT                        R2 K3 [table.create]
        5 LOADN                            R3 15
        6 LOADB                            R4 1
        7 CALL                             R2 2 1
        8 DUPCLOSURE                       R3 K4 [PROTO_15]
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
       40 DUPTABLE                         R8 K17 [{"LayoutOrder", "Selectable"}]
       41 LOADN                            R9 2
       42 SETTABLEKS                       R9 R8 K15 ["LayoutOrder"]
       44 GETTABLEKS                       R9 R0 K12 ["controls"]
       46 GETTABLEKS                       R9 R9 K18 ["selectableContent"]
       48 SETTABLEKS                       R9 R8 K16 ["Selectable"]
       50 DUPTABLE                         R9 K20 [{"ItemList"}]
       51 GETUPVAL                         R10 1
       52 GETTABLEKS                       R10 R10 K5 ["createElement"]
       54 GETUPVAL                         R11 2
       55 GETTABLEKS                       R11 R11 K21 ["Root"]
       57 LOADNIL                          R12
       58 MOVE                             R13 R1
       59 CALL                             R10 3 1
       60 SETTABLEKS                       R10 R9 K19 ["ItemList"]
       62 CALL                             R6 3 1
       63 SETTABLEKS                       R6 R5 K7 ["DialogContent"]
       65 CALL                             R2 3 -1
       66 RETURN                           R2 -1

PROTO_17:
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
       27 DUPTABLE                         R4 K11 [{"tag"}]
       28 LOADK                            R5 K12 ["col gap-xlarge size-full-0 auto-y"]
       29 SETTABLEKS                       R5 R4 K10 ["tag"]
       31 DUPTABLE                         R5 K15 [{"DialogMedia", "DialogText"}]
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K9 ["createElement"]
       35 GETGLOBAL                        R7 K16 ["CustomMedia"]
       37 DUPTABLE                         R8 K21 [{"media", "Size", "aspectRatio", "LayoutOrder"}]
       38 GETTABLEKS                       R9 R0 K4 ["controls"]
       40 GETTABLEKS                       R9 R9 K17 ["media"]
       42 SETTABLEKS                       R9 R8 K17 ["media"]
       44 SETTABLEKS                       R1 R8 K18 ["Size"]
       46 GETTABLEKS                       R10 R0 K4 ["controls"]
       48 GETTABLEKS                       R10 R10 K22 ["mediaAspectRatio"]
       50 LOADN                            R11 0
       51 JUMPIFNOTLT                      R11 R10 ; [+6]
       53 GETTABLEKS                       R9 R0 K4 ["controls"]
       55 GETTABLEKS                       R9 R9 K22 ["mediaAspectRatio"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R9
       59 SETTABLEKS                       R9 R8 K19 ["aspectRatio"]
       61 LOADN                            R9 1
       62 SETTABLEKS                       R9 R8 K20 ["LayoutOrder"]
       64 CALL                             R6 2 1
       65 SETTABLEKS                       R6 R5 K13 ["DialogMedia"]
       67 GETUPVAL                         R6 0
       68 GETTABLEKS                       R6 R6 K9 ["createElement"]
       70 GETUPVAL                         R7 2
       71 GETTABLEKS                       R7 R7 K23 ["Text"]
       73 DUPTABLE                         R8 K24 [{"Text", "LayoutOrder"}]
       74 GETTABLEKS                       R9 R0 K4 ["controls"]
       76 GETTABLEKS                       R9 R9 K25 ["content"]
       78 SETTABLEKS                       R9 R8 K23 ["Text"]
       80 LOADN                            R9 4
       81 SETTABLEKS                       R9 R8 K20 ["LayoutOrder"]
       83 CALL                             R6 2 1
       84 SETTABLEKS                       R6 R5 K14 ["DialogText"]
       86 CALL                             R2 3 1
       87 GETUPVAL                         R3 0
       88 GETTABLEKS                       R3 R3 K9 ["createElement"]
       90 GETUPVAL                         R4 3
       91 MOVE                             R5 R0
       92 DUPTABLE                         R6 K28 [{"DialogTitle", "DialogContent"}]
       93 GETUPVAL                         R7 0
       94 GETTABLEKS                       R7 R7 K9 ["createElement"]
       96 GETUPVAL                         R8 2
       97 GETTABLEKS                       R8 R8 K29 ["Title"]
       99 DUPTABLE                         R9 K31 [{"text"}]
      100 GETTABLEKS                       R10 R0 K4 ["controls"]
      102 GETTABLEKS                       R10 R10 K32 ["title"]
      104 SETTABLEKS                       R10 R9 K30 ["text"]
      106 CALL                             R7 2 1
      107 SETTABLEKS                       R7 R6 K26 ["DialogTitle"]
      109 GETUPVAL                         R7 0
      110 GETTABLEKS                       R7 R7 K9 ["createElement"]
      112 GETUPVAL                         R8 2
      113 GETTABLEKS                       R8 R8 K33 ["Content"]
      115 DUPTABLE                         R9 K35 [{"LayoutOrder", "Selectable"}]
      116 LOADN                            R10 2
      117 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
      119 GETTABLEKS                       R10 R0 K4 ["controls"]
      121 GETTABLEKS                       R10 R10 K36 ["selectableContent"]
      123 SETTABLEKS                       R10 R9 K34 ["Selectable"]
      125 DUPTABLE                         R10 K38 [{"CustomContent"}]
      126 SETTABLEKS                       R2 R10 K37 ["CustomContent"]
      128 CALL                             R7 3 1
      129 SETTABLEKS                       R7 R6 K27 ["DialogContent"]
      131 CALL                             R3 3 -1
      132 RETURN                           R3 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R0
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 SETTABLE                         R3 R1 R2
       10 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_20:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 DUPTABLE                         R2 K5 [{"notifications", "analytics", "marketing", "thirdParty"}]
        4 LOADB                            R3 0
        5 SETTABLEKS                       R3 R2 K1 ["notifications"]
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K2 ["analytics"]
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K3 ["marketing"]
       13 LOADB                            R3 0
       14 SETTABLEKS                       R3 R2 K4 ["thirdParty"]
       16 CALL                             R1 1 2
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K6 ["createElement"]
       23 GETUPVAL                         R5 2
       24 MOVE                             R6 R0
       25 DUPTABLE                         R7 K9 [{"DialogTitle", "DialogContent"}]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K6 ["createElement"]
       29 GETUPVAL                         R9 3
       30 GETTABLEKS                       R9 R9 K10 ["Title"]
       32 DUPTABLE                         R10 K12 [{"text"}]
       33 GETTABLEKS                       R11 R0 K13 ["controls"]
       35 GETTABLEKS                       R11 R11 K14 ["title"]
       37 SETTABLEKS                       R11 R10 K11 ["text"]
       39 CALL                             R8 2 1
       40 SETTABLEKS                       R8 R7 K7 ["DialogTitle"]
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R8 R8 K6 ["createElement"]
       45 GETUPVAL                         R9 3
       46 GETTABLEKS                       R9 R9 K15 ["Content"]
       48 DUPTABLE                         R10 K18 [{"LayoutOrder", "Selectable"}]
       49 LOADN                            R11 2
       50 SETTABLEKS                       R11 R10 K16 ["LayoutOrder"]
       52 GETTABLEKS                       R11 R0 K13 ["controls"]
       54 GETTABLEKS                       R11 R11 K19 ["selectableContent"]
       56 SETTABLEKS                       R11 R10 K17 ["Selectable"]
       58 DUPTABLE                         R11 K21 [{"CheckboxContent"}]
       59 GETUPVAL                         R12 0
       60 GETTABLEKS                       R12 R12 K6 ["createElement"]
       62 GETUPVAL                         R13 4
       63 DUPTABLE                         R14 K24 [{"checkboxStates", "toggleCheckbox"}]
       64 SETTABLEKS                       R1 R14 K22 ["checkboxStates"]
       66 SETTABLEKS                       R3 R14 K23 ["toggleCheckbox"]
       68 CALL                             R12 2 1
       69 SETTABLEKS                       R12 R11 K20 ["CheckboxContent"]
       71 CALL                             R8 3 1
       72 SETTABLEKS                       R8 R7 K8 ["DialogContent"]
       74 CALL                             R4 3 -1
       75 RETURN                           R4 -1

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
      121 DUPCLOSURE                       R18 K27 [PROTO_3]
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R7
      126 DUPCLOSURE                       R19 K28 [PROTO_4]
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R9
      130 SETGLOBAL                        R19 K29 ["CustomMedia"]
      132 DUPCLOSURE                       R19 K30 [PROTO_6]
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R6
      137 DUPTABLE                         R20 K34 [{"summary", "stories", "controls"}]
      138 LOADK                            R21 K14 ["Dialog"]
      139 SETTABLEKS                       R21 R20 K31 ["summary"]
      141 NEWTABLE                         R21 0 8
      143 DUPTABLE                         R22 K37 [{"name", "story"}]
      144 LOADK                            R23 K38 ["Hero Image & Title & Content"]
      145 SETTABLEKS                       R23 R22 K35 ["name"]
      147 DUPCLOSURE                       R23 K39 [PROTO_7]
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R7
      152 SETTABLEKS                       R23 R22 K36 ["story"]
      154 DUPTABLE                         R23 K37 [{"name", "story"}]
      155 LOADK                            R24 K40 ["Title & Content"]
      156 SETTABLEKS                       R24 R23 K35 ["name"]
      158 DUPCLOSURE                       R24 K41 [PROTO_8]
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R18
      161 CAPTURE                          VAL R7
      162 SETTABLEKS                       R24 R23 K36 ["story"]
      164 DUPTABLE                         R24 K37 [{"name", "story"}]
      165 LOADK                            R25 K42 ["Hero Image & Content"]
      166 SETTABLEKS                       R25 R24 K35 ["name"]
      168 DUPCLOSURE                       R25 K43 [PROTO_9]
      169 CAPTURE                          VAL R17
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R18
      172 CAPTURE                          VAL R7
      173 SETTABLEKS                       R25 R24 K36 ["story"]
      175 DUPTABLE                         R25 K37 [{"name", "story"}]
      176 LOADK                            R26 K44 ["Hero Image only"]
      177 SETTABLEKS                       R26 R25 K35 ["name"]
      179 DUPCLOSURE                       R26 K45 [PROTO_10]
      180 CAPTURE                          VAL R17
      181 CAPTURE                          VAL R3
      182 CAPTURE                          VAL R18
      183 CAPTURE                          VAL R7
      184 SETTABLEKS                       R26 R25 K36 ["story"]
      186 DUPTABLE                         R26 K37 [{"name", "story"}]
      187 LOADK                            R27 K46 ["Custom Content"]
      188 SETTABLEKS                       R27 R26 K35 ["name"]
      190 DUPCLOSURE                       R27 K47 [PROTO_13]
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R3
      193 CAPTURE                          VAL R13
      194 CAPTURE                          VAL R10
      195 CAPTURE                          VAL R15
      196 CAPTURE                          VAL R14
      197 CAPTURE                          VAL R7
      198 CAPTURE                          VAL R18
      199 SETTABLEKS                       R27 R26 K36 ["story"]
      201 DUPTABLE                         R27 K37 [{"name", "story"}]
      202 LOADK                            R28 K48 ["Scrollable List Content"]
      203 SETTABLEKS                       R28 R27 K35 ["name"]
      205 DUPCLOSURE                       R28 K49 [PROTO_16]
      206 CAPTURE                          VAL R2
      207 CAPTURE                          VAL R3
      208 CAPTURE                          VAL R11
      209 CAPTURE                          VAL R18
      210 CAPTURE                          VAL R7
      211 SETTABLEKS                       R28 R27 K36 ["story"]
      213 DUPTABLE                         R28 K37 [{"name", "story"}]
      214 LOADK                            R29 K50 ["Embedded Media"]
      215 SETTABLEKS                       R29 R28 K35 ["name"]
      217 DUPCLOSURE                       R29 K51 [PROTO_17]
      218 CAPTURE                          VAL R3
      219 CAPTURE                          VAL R15
      220 CAPTURE                          VAL R7
      221 CAPTURE                          VAL R18
      222 SETTABLEKS                       R29 R28 K36 ["story"]
      224 DUPTABLE                         R29 K37 [{"name", "story"}]
      225 LOADK                            R30 K52 ["Checkbox Content with Focus Navigation"]
      226 SETTABLEKS                       R30 R29 K35 ["name"]
      228 DUPCLOSURE                       R30 K53 [PROTO_21]
      229 CAPTURE                          VAL R3
      230 CAPTURE                          VAL R2
      231 CAPTURE                          VAL R18
      232 CAPTURE                          VAL R7
      233 CAPTURE                          VAL R19
      234 SETTABLEKS                       R30 R29 K36 ["story"]
      236 SETLIST                          R21 R22 8 [1]
      238 SETTABLEKS                       R21 R20 K32 ["stories"]
      240 DUPTABLE                         R21 K73 [{"title", "content", "actionsLabel", "actionsOrientation", "hasActions", "disablePortal", "hasBackdrop", "media", "mediaSizeScaleX", "mediaSizeScaleY", "mediaSizeOffsetX", "mediaSizeOffsetY", "mediaAspectRatio", "heroMediaBackgroundStyle", "heroMediaAspectRatio", "heroMediaHeightScale", "heroMediaHeightOffset", "selectableContent", "size"}]
      241 LOADK                            R22 K74 ["Welcome Dialog"]
      242 SETTABLEKS                       R22 R21 K54 ["title"]
      244 LOADK                            R22 K75 ["This is a dialog with a very, very long description that spans multiple lines. Now, I'm not joking when I say that it has a lot to say. Really, a lot of things have a lot to say if you're willing to listen."]
      245 SETTABLEKS                       R22 R21 K55 ["content"]
      247 LOADK                            R22 K76 ["By selecting Primary, I consent to Roblox's collection, use, and storage of my data to enable services and for moderation, safety, and improvement of our services and tools."]
      248 SETTABLEKS                       R22 R21 K56 ["actionsLabel"]
      250 GETTABLEKS                       R22 R2 K77 ["values"]
      252 MOVE                             R23 R12
      253 CALL                             R22 1 1
      254 SETTABLEKS                       R22 R21 K57 ["actionsOrientation"]
      256 LOADB                            R22 1
      257 SETTABLEKS                       R22 R21 K58 ["hasActions"]
      259 LOADB                            R22 0
      260 SETTABLEKS                       R22 R21 K59 ["disablePortal"]
      262 LOADB                            R22 1
      263 SETTABLEKS                       R22 R21 K60 ["hasBackdrop"]
      265 NEWTABLE                         R22 0 2
      267 LOADK                            R23 K78 ["pictograms/avatar_setup"]
      268 LOADK                            R24 K79 ["component_assets/avatarBG_dark"]
      269 SETLIST                          R22 R23 2 [1]
      271 SETTABLEKS                       R22 R21 K61 ["media"]
      273 LOADN                            R22 1
      274 SETTABLEKS                       R22 R21 K62 ["mediaSizeScaleX"]
      276 LOADN                            R22 0
      277 SETTABLEKS                       R22 R21 K63 ["mediaSizeScaleY"]
      279 LOADN                            R22 0
      280 SETTABLEKS                       R22 R21 K64 ["mediaSizeOffsetX"]
      282 LOADN                            R22 100
      283 SETTABLEKS                       R22 R21 K65 ["mediaSizeOffsetY"]
      285 LOADN                            R22 0
      286 SETTABLEKS                       R22 R21 K66 ["mediaAspectRatio"]
      288 LOADB                            R22 0
      289 SETTABLEKS                       R22 R21 K67 ["heroMediaBackgroundStyle"]
      291 LOADK                            R22 K80 [2.5]
      292 SETTABLEKS                       R22 R21 K68 ["heroMediaAspectRatio"]
      294 LOADN                            R22 1
      295 SETTABLEKS                       R22 R21 K69 ["heroMediaHeightScale"]
      297 LOADN                            R22 0
      298 SETTABLEKS                       R22 R21 K70 ["heroMediaHeightOffset"]
      300 LOADB                            R22 1
      301 SETTABLEKS                       R22 R21 K71 ["selectableContent"]
      303 GETTABLEKS                       R22 R2 K77 ["values"]
      305 MOVE                             R23 R8
      306 CALL                             R22 1 1
      307 SETTABLEKS                       R22 R21 K72 ["size"]
      309 SETTABLEKS                       R21 R20 K33 ["controls"]
      311 RETURN                           R20 1
