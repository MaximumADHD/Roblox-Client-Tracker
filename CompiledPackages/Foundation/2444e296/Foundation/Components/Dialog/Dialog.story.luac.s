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
       26 GETUPVAL                         R7 1
       27 DUPTABLE                         R8 K9 [{"Size"}]
       28 GETIMPORT                        R9 K12 [UDim2.new]
       30 LOADN                            R10 1
       31 LOADN                            R11 0
       32 LOADN                            R12 0
       33 LOADN                            R13 188
       34 CALL                             R9 4 1
       35 SETTABLEKS                       R9 R8 K8 ["Size"]
       37 DUPTABLE                         R9 K15 [{"ToggleButton", "DialogRoot"}]
       38 GETUPVAL                         R10 0
       39 GETTABLEKS                       R10 R10 K7 ["createElement"]
       41 GETUPVAL                         R11 2
       42 DUPTABLE                         R12 K19 [{"text", "onActivated", "variant"}]
       43 JUMPIFNOT                        R3 ; [+2]
       44 LOADK                            R13 K20 ["Close Dialog"]
       45 JUMP                             ; [+1]
       46 LOADK                            R13 K21 ["Open Dialog"]
       47 SETTABLEKS                       R13 R12 K16 ["text"]
       49 SETTABLEKS                       R5 R12 K17 ["onActivated"]
       51 GETUPVAL                         R13 3
       52 GETTABLEKS                       R13 R13 K22 ["Emphasis"]
       54 SETTABLEKS                       R13 R12 K18 ["variant"]
       56 CALL                             R10 2 1
       57 SETTABLEKS                       R10 R9 K13 ["ToggleButton"]
       59 JUMPIFNOT                        R3 ; [+98]
       60 GETUPVAL                         R10 0
       61 GETTABLEKS                       R10 R10 K7 ["createElement"]
       63 GETUPVAL                         R11 4
       64 GETTABLEKS                       R11 R11 K23 ["Root"]
       66 DUPTABLE                         R12 K28 [{"size", "onClose", "hasBackdrop", "disablePortal"}]
       67 GETTABLEKS                       R13 R2 K24 ["size"]
       69 SETTABLEKS                       R13 R12 K24 ["size"]
       71 SETTABLEKS                       R5 R12 K25 ["onClose"]
       73 GETTABLEKS                       R13 R2 K26 ["hasBackdrop"]
       75 SETTABLEKS                       R13 R12 K26 ["hasBackdrop"]
       77 GETTABLEKS                       R13 R2 K27 ["disablePortal"]
       79 SETTABLEKS                       R13 R12 K27 ["disablePortal"]
       81 DUPTABLE                         R13 K30 [{"DialogMedia", "DialogTitle", "DialogContent", "DialogActions"}]
       82 GETTABLEKS                       R14 R1 K1 ["DialogMedia"]
       84 SETTABLEKS                       R14 R13 K1 ["DialogMedia"]
       86 GETTABLEKS                       R14 R1 K3 ["DialogTitle"]
       88 SETTABLEKS                       R14 R13 K3 ["DialogTitle"]
       90 GETTABLEKS                       R14 R1 K2 ["DialogContent"]
       92 SETTABLEKS                       R14 R13 K2 ["DialogContent"]
       94 GETTABLEKS                       R15 R2 K31 ["hasActions"]
       96 JUMPIFNOT                        R15 ; [+56]
       97 GETUPVAL                         R14 0
       98 GETTABLEKS                       R14 R14 K7 ["createElement"]
      100 GETUPVAL                         R15 4
      101 GETTABLEKS                       R15 R15 K32 ["Actions"]
      103 DUPTABLE                         R16 K37 [{"LayoutOrder", "orientation", "actions", "label"}]
      104 LOADN                            R17 3
      105 SETTABLEKS                       R17 R16 K33 ["LayoutOrder"]
      107 GETTABLEKS                       R17 R2 K38 ["actionsOrientation"]
      109 SETTABLEKS                       R17 R16 K34 ["orientation"]
      111 NEWTABLE                         R17 0 2
      113 DUPTABLE                         R18 K41 [{"text", "variant", "icon", "onActivated", "inputDelay"}]
      114 LOADK                            R19 K42 ["Join"]
      115 SETTABLEKS                       R19 R18 K16 ["text"]
      117 GETUPVAL                         R19 3
      118 GETTABLEKS                       R19 R19 K22 ["Emphasis"]
      120 SETTABLEKS                       R19 R18 K18 ["variant"]
      122 LOADK                            R19 K43 ["icons/common/robux"]
      123 SETTABLEKS                       R19 R18 K39 ["icon"]
      125 DUPCLOSURE                       R19 K44 [PROTO_2]
      126 SETTABLEKS                       R19 R18 K17 ["onActivated"]
      128 LOADN                            R19 3
      129 SETTABLEKS                       R19 R18 K40 ["inputDelay"]
      131 DUPTABLE                         R19 K45 [{"text", "variant", "onActivated"}]
      132 LOADK                            R20 K46 ["Share"]
      133 SETTABLEKS                       R20 R19 K16 ["text"]
      135 GETUPVAL                         R20 3
      136 GETTABLEKS                       R20 R20 K47 ["Standard"]
      138 SETTABLEKS                       R20 R19 K18 ["variant"]
      140 DUPCLOSURE                       R20 K48 [PROTO_3]
      141 SETTABLEKS                       R20 R19 K17 ["onActivated"]
      143 SETLIST                          R17 R18 2 [1]
      145 SETTABLEKS                       R17 R16 K35 ["actions"]
      147 GETTABLEKS                       R17 R2 K49 ["actionsLabel"]
      149 SETTABLEKS                       R17 R16 K36 ["label"]
      151 CALL                             R14 2 1
      152 JUMP                             ; [+1]
      153 LOADNIL                          R14
      154 SETTABLEKS                       R14 R13 K29 ["DialogActions"]
      156 CALL                             R10 3 1
      157 JUMP                             ; [+1]
      158 LOADNIL                          R10
      159 SETTABLEKS                       R10 R9 K14 ["DialogRoot"]
      161 CALL                             R6 3 -1
      162 RETURN                           R6 -1

PROTO_5:
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
       18 LOADB                            R9 0
       19 JUMPIFEQKNIL                     R10 ; [+10]
       21 GETIMPORT                        R11 K12 [string.match]
       23 MOVE                             R12 R10
       24 LOADK                            R13 K13 ["^pictograms/"]
       25 CALL                             R11 2 1
       26 JUMPIFNOTEQKNIL                  R11 ; [+2]
       28 LOADB                            R9 0 +1
       29 LOADB                            R9 1
       30 SETTABLEKS                       R9 R8 K14 ["content-emphasis"]
       32 SETTABLEKS                       R8 R7 K1 ["tag"]
       34 GETTABLEKS                       R8 R0 K6 ["aspectRatio"]
       36 SETTABLEKS                       R8 R7 K6 ["aspectRatio"]
       38 GETTABLEKS                       R8 R0 K9 ["media"]
       40 SETTABLEKS                       R8 R7 K4 ["Image"]
       42 GETTABLEKS                       R8 R0 K7 ["Size"]
       44 SETTABLEKS                       R8 R7 K7 ["Size"]
       46 CALL                             R5 2 1
       47 SETTABLEKS                       R5 R4 K4 ["Image"]
       49 CALL                             R1 3 -1
       50 RETURN                           R1 -1

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
      118 DUPTABLE                         R8 K36 [{"LayoutOrder", "Selectable"}]
      119 LOADN                            R9 2
      120 SETTABLEKS                       R9 R8 K34 ["LayoutOrder"]
      122 GETTABLEKS                       R9 R0 K8 ["controls"]
      124 GETTABLEKS                       R9 R9 K37 ["selectableContent"]
      126 SETTABLEKS                       R9 R8 K35 ["Selectable"]
      128 DUPTABLE                         R9 K39 [{"DialogText"}]
      129 GETUPVAL                         R10 1
      130 GETTABLEKS                       R10 R10 K0 ["createElement"]
      132 GETUPVAL                         R11 3
      133 GETTABLEKS                       R11 R11 K40 ["Text"]
      135 DUPTABLE                         R12 K41 [{"Text"}]
      136 GETTABLEKS                       R13 R0 K8 ["controls"]
      138 GETTABLEKS                       R13 R13 K42 ["content"]
      140 SETTABLEKS                       R13 R12 K40 ["Text"]
      142 CALL                             R10 2 1
      143 SETTABLEKS                       R10 R9 K38 ["DialogText"]
      145 CALL                             R6 3 1
      146 SETTABLEKS                       R6 R5 K3 ["DialogContent"]
      148 CALL                             R2 3 -1
      149 RETURN                           R2 -1

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
      102 DUPTABLE                         R8 K31 [{"LayoutOrder", "Selectable"}]
      103 LOADN                            R9 2
      104 SETTABLEKS                       R9 R8 K29 ["LayoutOrder"]
      106 GETTABLEKS                       R9 R0 K11 ["controls"]
      108 GETTABLEKS                       R9 R9 K32 ["selectableContent"]
      110 SETTABLEKS                       R9 R8 K30 ["Selectable"]
      112 DUPTABLE                         R9 K34 [{"DialogText"}]
      113 GETUPVAL                         R10 1
      114 GETTABLEKS                       R10 R10 K0 ["createElement"]
      116 GETUPVAL                         R11 3
      117 GETTABLEKS                       R11 R11 K35 ["Text"]
      119 DUPTABLE                         R12 K36 [{"Text"}]
      120 GETTABLEKS                       R13 R0 K11 ["controls"]
      122 GETTABLEKS                       R13 R13 K37 ["content"]
      124 SETTABLEKS                       R13 R12 K35 ["Text"]
      126 CALL                             R10 2 1
      127 SETTABLEKS                       R10 R9 K33 ["DialogText"]
      129 CALL                             R6 3 1
      130 SETTABLEKS                       R6 R5 K2 ["DialogContent"]
      132 CALL                             R2 3 -1
      133 RETURN                           R2 -1

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
       74 DUPCLOSURE                       R11 K31 [PROTO_13]
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
      155 DUPTABLE                         R22 K47 [{"summary", "stories", "controls"}]
      156 LOADK                            R23 K14 ["Dialog"]
      157 SETTABLEKS                       R23 R22 K44 ["summary"]
      159 NEWTABLE                         R23 0 8
      161 DUPTABLE                         R24 K50 [{"name", "story"}]
      162 LOADK                            R25 K51 ["Hero Image & Title & Content"]
      163 SETTABLEKS                       R25 R24 K48 ["name"]
      165 DUPCLOSURE                       R25 K52 [PROTO_8]
      166 CAPTURE                          VAL R17
      167 CAPTURE                          VAL R3
      168 CAPTURE                          VAL R20
      169 CAPTURE                          VAL R7
      170 SETTABLEKS                       R25 R24 K49 ["story"]
      172 DUPTABLE                         R25 K50 [{"name", "story"}]
      173 LOADK                            R26 K53 ["Title & Content"]
      174 SETTABLEKS                       R26 R25 K48 ["name"]
      176 DUPCLOSURE                       R26 K54 [PROTO_9]
      177 CAPTURE                          VAL R3
      178 CAPTURE                          VAL R20
      179 CAPTURE                          VAL R7
      180 SETTABLEKS                       R26 R25 K49 ["story"]
      182 DUPTABLE                         R26 K50 [{"name", "story"}]
      183 LOADK                            R27 K55 ["Hero Image & Content"]
      184 SETTABLEKS                       R27 R26 K48 ["name"]
      186 DUPCLOSURE                       R27 K56 [PROTO_10]
      187 CAPTURE                          VAL R17
      188 CAPTURE                          VAL R3
      189 CAPTURE                          VAL R20
      190 CAPTURE                          VAL R7
      191 SETTABLEKS                       R27 R26 K49 ["story"]
      193 DUPTABLE                         R27 K50 [{"name", "story"}]
      194 LOADK                            R28 K57 ["Hero Image only"]
      195 SETTABLEKS                       R28 R27 K48 ["name"]
      197 DUPCLOSURE                       R28 K58 [PROTO_11]
      198 CAPTURE                          VAL R17
      199 CAPTURE                          VAL R3
      200 CAPTURE                          VAL R20
      201 CAPTURE                          VAL R7
      202 SETTABLEKS                       R28 R27 K49 ["story"]
      204 DUPTABLE                         R28 K50 [{"name", "story"}]
      205 LOADK                            R29 K59 ["Custom Content"]
      206 SETTABLEKS                       R29 R28 K48 ["name"]
      208 DUPCLOSURE                       R29 K60 [PROTO_14]
      209 CAPTURE                          VAL R2
      210 CAPTURE                          VAL R3
      211 CAPTURE                          VAL R13
      212 CAPTURE                          VAL R10
      213 CAPTURE                          VAL R15
      214 CAPTURE                          VAL R14
      215 CAPTURE                          VAL R7
      216 CAPTURE                          VAL R20
      217 SETTABLEKS                       R29 R28 K49 ["story"]
      219 DUPTABLE                         R29 K50 [{"name", "story"}]
      220 LOADK                            R30 K61 ["Scrollable List Content"]
      221 SETTABLEKS                       R30 R29 K48 ["name"]
      223 DUPCLOSURE                       R30 K62 [PROTO_17]
      224 CAPTURE                          VAL R2
      225 CAPTURE                          VAL R3
      226 CAPTURE                          VAL R11
      227 CAPTURE                          VAL R20
      228 CAPTURE                          VAL R7
      229 SETTABLEKS                       R30 R29 K49 ["story"]
      231 DUPTABLE                         R30 K50 [{"name", "story"}]
      232 LOADK                            R31 K63 ["Embedded Media"]
      233 SETTABLEKS                       R31 R30 K48 ["name"]
      235 DUPCLOSURE                       R31 K64 [PROTO_18]
      236 CAPTURE                          VAL R3
      237 CAPTURE                          VAL R15
      238 CAPTURE                          VAL R7
      239 CAPTURE                          VAL R20
      240 SETTABLEKS                       R31 R30 K49 ["story"]
      242 DUPTABLE                         R31 K50 [{"name", "story"}]
      243 LOADK                            R32 K65 ["Checkbox Content with Focus Navigation"]
      244 SETTABLEKS                       R32 R31 K48 ["name"]
      246 DUPCLOSURE                       R32 K66 [PROTO_22]
      247 CAPTURE                          VAL R3
      248 CAPTURE                          VAL R2
      249 CAPTURE                          VAL R20
      250 CAPTURE                          VAL R7
      251 CAPTURE                          VAL R21
      252 SETTABLEKS                       R32 R31 K49 ["story"]
      254 SETLIST                          R23 R24 8 [1]
      256 SETTABLEKS                       R23 R22 K45 ["stories"]
      258 DUPTABLE                         R23 K86 [{"title", "content", "actionsLabel", "actionsOrientation", "hasActions", "disablePortal", "hasBackdrop", "media", "mediaSizeScaleX", "mediaSizeScaleY", "mediaSizeOffsetX", "mediaSizeOffsetY", "mediaAspectRatio", "heroMediaBackgroundStyle", "heroMediaAspectRatio", "heroMediaHeightScale", "heroMediaHeightOffset", "selectableContent", "size"}]
      259 LOADK                            R24 K87 ["Welcome Dialog"]
      260 SETTABLEKS                       R24 R23 K67 ["title"]
      262 LOADK                            R24 K88 ["This is a dialog with a very, very long description that spans multiple lines. Now, I'm not joking when I say that it has a lot to say. Really, a lot of things have a lot to say if you're willing to listen."]
      263 SETTABLEKS                       R24 R23 K68 ["content"]
      265 LOADK                            R24 K89 ["By selecting Primary, I consent to Roblox's collection, use, and storage of my data to enable services and for moderation, safety, and improvement of our services and tools."]
      266 SETTABLEKS                       R24 R23 K69 ["actionsLabel"]
      268 GETTABLEKS                       R24 R2 K90 ["values"]
      270 MOVE                             R25 R12
      271 CALL                             R24 1 1
      272 SETTABLEKS                       R24 R23 K70 ["actionsOrientation"]
      274 LOADB                            R24 1
      275 SETTABLEKS                       R24 R23 K71 ["hasActions"]
      277 LOADB                            R24 0
      278 SETTABLEKS                       R24 R23 K72 ["disablePortal"]
      280 LOADB                            R24 1
      281 SETTABLEKS                       R24 R23 K73 ["hasBackdrop"]
      283 SETTABLEKS                       R18 R23 K74 ["media"]
      285 LOADN                            R24 1
      286 SETTABLEKS                       R24 R23 K75 ["mediaSizeScaleX"]
      288 LOADN                            R24 0
      289 SETTABLEKS                       R24 R23 K76 ["mediaSizeScaleY"]
      291 LOADN                            R24 0
      292 SETTABLEKS                       R24 R23 K77 ["mediaSizeOffsetX"]
      294 LOADN                            R24 100
      295 SETTABLEKS                       R24 R23 K78 ["mediaSizeOffsetY"]
      297 LOADN                            R24 0
      298 SETTABLEKS                       R24 R23 K79 ["mediaAspectRatio"]
      300 LOADB                            R24 0
      301 SETTABLEKS                       R24 R23 K80 ["heroMediaBackgroundStyle"]
      303 LOADK                            R24 K91 [2.5]
      304 SETTABLEKS                       R24 R23 K81 ["heroMediaAspectRatio"]
      306 LOADN                            R24 1
      307 SETTABLEKS                       R24 R23 K82 ["heroMediaHeightScale"]
      309 LOADN                            R24 0
      310 SETTABLEKS                       R24 R23 K83 ["heroMediaHeightOffset"]
      312 LOADB                            R24 1
      313 SETTABLEKS                       R24 R23 K84 ["selectableContent"]
      315 GETTABLEKS                       R24 R2 K90 ["values"]
      317 MOVE                             R25 R8
      318 CALL                             R24 1 1
      319 SETTABLEKS                       R24 R23 K85 ["size"]
      321 SETTABLEKS                       R23 R22 K46 ["controls"]
      323 RETURN                           R22 1
