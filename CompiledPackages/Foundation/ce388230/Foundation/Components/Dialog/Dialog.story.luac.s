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
        5 LOADK                            R5 K3 ["auto-y size-full-0 row align-x-center %*"]
        6 GETUPVAL                         R8 2
        7 GETTABLEKS                       R8 R8 K4 ["FoundationDialogBodyUpdate"]
        9 JUMPIFNOT                        R8 ; [+2]
       10 LOADK                            R7 K5 ["padding-top-large"]
       11 JUMP                             ; [+1]
       12 LOADK                            R7 K6 [""]
       13 NAMECALL                         R5 R5 K7 ["format"]
       15 CALL                             R5 2 1
       16 MOVE                             R4 R5
       17 SETTABLEKS                       R4 R3 K1 ["tag"]
       19 DUPTABLE                         R4 K9 [{"Image"}]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K0 ["createElement"]
       23 GETUPVAL                         R6 3
       24 DUPTABLE                         R7 K12 [{"tag", "aspectRatio", "Image", "Size"}]
       25 NEWTABLE                         R8 1 0
       27 GETTABLEKS                       R10 R0 K13 ["media"]
       29 JUMPIFEQKS                       R10 K14 ["pictograms/avatar_setup"] ; [+2]
       31 LOADB                            R9 0 +1
       32 LOADB                            R9 1
       33 SETTABLEKS                       R9 R8 K15 ["content-emphasis"]
       35 SETTABLEKS                       R8 R7 K1 ["tag"]
       37 GETTABLEKS                       R8 R0 K10 ["aspectRatio"]
       39 SETTABLEKS                       R8 R7 K10 ["aspectRatio"]
       41 GETTABLEKS                       R8 R0 K13 ["media"]
       43 SETTABLEKS                       R8 R7 K8 ["Image"]
       45 GETTABLEKS                       R8 R0 K11 ["Size"]
       47 SETTABLEKS                       R8 R7 K11 ["Size"]
       49 CALL                             R5 2 1
       50 SETTABLEKS                       R5 R4 K8 ["Image"]
       52 CALL                             R1 3 -1
       53 RETURN                           R1 -1

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
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
       36 DUPCLOSURE                       R5 K15 [PROTO_9]
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 CALL                             R3 2 1
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R4 R4 K16 ["createElement"]
       44 GETUPVAL                         R5 4
       45 DUPTABLE                         R6 K18 [{"tag"}]
       46 LOADK                            R7 K19 ["auto-y size-full-0 col gap-xxlarge"]
       47 SETTABLEKS                       R7 R6 K17 ["tag"]
       49 DUPTABLE                         R7 K23 [{"Text", "RadioGroup", "DialogText"}]
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R8 R8 K16 ["createElement"]
       53 GETUPVAL                         R9 5
       54 DUPTABLE                         R10 K25 [{"tag", "Text", "LayoutOrder"}]
       55 LOADK                            R11 K26 ["text-body-large text-wrap text-align-x-left text-align-y-top auto-y size-full-0"]
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
       74 DUPCLOSURE                       R11 K31 [PROTO_10]
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

PROTO_12:
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
       28 LOADK                            R5 K12 ["auto-y size-full-0 col gap-xlarge"]
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
       37 GETTABLEKS                       R7 R7 K13 ["Dialog"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K11 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["DialogSize"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K15 ["Utility"]
       51 GETTABLEKS                       R9 R9 K16 ["Flags"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K9 ["Components"]
       58 GETTABLEKS                       R10 R10 K17 ["Image"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K11 ["Enums"]
       65 GETTABLEKS                       R11 R11 K18 ["InputSize"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K11 ["Enums"]
       72 GETTABLEKS                       R12 R12 K19 ["Orientation"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K9 ["Components"]
       79 GETTABLEKS                       R13 R13 K20 ["RadioGroup"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K9 ["Components"]
       86 GETTABLEKS                       R14 R14 K21 ["Text"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R15 R0 K9 ["Components"]
       93 GETTABLEKS                       R15 R15 K22 ["View"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K6 [require]
       98 GETTABLEKS                       R16 R0 K23 ["Providers"]
      100 GETTABLEKS                       R16 R16 K24 ["Style"]
      102 GETTABLEKS                       R16 R16 K25 ["useTokens"]
      104 CALL                             R15 1 1
      105 DUPCLOSURE                       R16 K26 [PROTO_3]
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R6
      110 DUPCLOSURE                       R17 K27 [PROTO_4]
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R9
      115 SETGLOBAL                        R17 K28 ["CustomMedia"]
      117 DUPTABLE                         R17 K32 [{"summary", "stories", "controls"}]
      118 LOADK                            R18 K13 ["Dialog"]
      119 SETTABLEKS                       R18 R17 K29 ["summary"]
      121 NEWTABLE                         R18 0 6
      123 DUPTABLE                         R19 K35 [{"name", "story"}]
      124 LOADK                            R20 K36 ["Hero Image & Title & Content"]
      125 SETTABLEKS                       R20 R19 K33 ["name"]
      127 DUPCLOSURE                       R20 K37 [PROTO_5]
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R6
      132 SETTABLEKS                       R20 R19 K34 ["story"]
      134 DUPTABLE                         R20 K35 [{"name", "story"}]
      135 LOADK                            R21 K38 ["Title & Content"]
      136 SETTABLEKS                       R21 R20 K33 ["name"]
      138 DUPCLOSURE                       R21 K39 [PROTO_6]
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R16
      141 CAPTURE                          VAL R6
      142 SETTABLEKS                       R21 R20 K34 ["story"]
      144 DUPTABLE                         R21 K35 [{"name", "story"}]
      145 LOADK                            R22 K40 ["Hero Image & Content"]
      146 SETTABLEKS                       R22 R21 K33 ["name"]
      148 DUPCLOSURE                       R22 K41 [PROTO_7]
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R6
      153 SETTABLEKS                       R22 R21 K34 ["story"]
      155 DUPTABLE                         R22 K35 [{"name", "story"}]
      156 LOADK                            R23 K42 ["Hero Image only"]
      157 SETTABLEKS                       R23 R22 K33 ["name"]
      159 DUPCLOSURE                       R23 K43 [PROTO_8]
      160 CAPTURE                          VAL R15
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R6
      164 SETTABLEKS                       R23 R22 K34 ["story"]
      166 DUPTABLE                         R23 K35 [{"name", "story"}]
      167 LOADK                            R24 K44 ["Custom Content"]
      168 SETTABLEKS                       R24 R23 K33 ["name"]
      170 DUPCLOSURE                       R24 K45 [PROTO_11]
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R3
      173 CAPTURE                          VAL R12
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R14
      176 CAPTURE                          VAL R13
      177 CAPTURE                          VAL R6
      178 CAPTURE                          VAL R16
      179 SETTABLEKS                       R24 R23 K34 ["story"]
      181 DUPTABLE                         R24 K35 [{"name", "story"}]
      182 LOADK                            R25 K46 ["Embedded Media"]
      183 SETTABLEKS                       R25 R24 K33 ["name"]
      185 DUPCLOSURE                       R25 K47 [PROTO_12]
      186 CAPTURE                          VAL R3
      187 CAPTURE                          VAL R14
      188 CAPTURE                          VAL R6
      189 CAPTURE                          VAL R16
      190 SETTABLEKS                       R25 R24 K34 ["story"]
      192 SETLIST                          R18 R19 6 [1]
      194 SETTABLEKS                       R18 R17 K30 ["stories"]
      196 DUPTABLE                         R18 K67 [{"title", "content", "actionsLabel", "actionsOrientation", "hasActions", "disablePortal", "hasBackdrop", "media", "mediaSizeScaleX", "mediaSizeScaleY", "mediaSizeOffsetX", "mediaSizeOffsetY", "mediaAspectRatio", "heroMediaBackgroundStyle", "heroMediaAspectRatio", "heroMediaHeightScale", "heroMediaHeightOffset", "selectableContent", "size"}]
      197 LOADK                            R19 K68 ["Welcome Dialog"]
      198 SETTABLEKS                       R19 R18 K48 ["title"]
      200 LOADK                            R19 K69 ["This is a dialog with a very, very long description that spans multiple lines. Now, I'm not joking when I say that it has a lot to say. Really, a lot of things have a lot to say if you're willing to listen."]
      201 SETTABLEKS                       R19 R18 K49 ["content"]
      203 LOADK                            R19 K70 ["By selecting Primary, I consent to Roblox's collection, use, and storage of my data to enable services and for moderation, safety, and improvement of our services and tools."]
      204 SETTABLEKS                       R19 R18 K50 ["actionsLabel"]
      206 GETTABLEKS                       R19 R2 K71 ["values"]
      208 MOVE                             R20 R11
      209 CALL                             R19 1 1
      210 SETTABLEKS                       R19 R18 K51 ["actionsOrientation"]
      212 LOADB                            R19 1
      213 SETTABLEKS                       R19 R18 K52 ["hasActions"]
      215 LOADB                            R19 0
      216 SETTABLEKS                       R19 R18 K53 ["disablePortal"]
      218 LOADB                            R19 1
      219 SETTABLEKS                       R19 R18 K54 ["hasBackdrop"]
      221 NEWTABLE                         R19 0 2
      223 LOADK                            R20 K72 ["pictograms/avatar_setup"]
      224 LOADK                            R21 K73 ["component_assets/avatarBG_dark"]
      225 SETLIST                          R19 R20 2 [1]
      227 SETTABLEKS                       R19 R18 K55 ["media"]
      229 LOADN                            R19 1
      230 SETTABLEKS                       R19 R18 K56 ["mediaSizeScaleX"]
      232 LOADN                            R19 0
      233 SETTABLEKS                       R19 R18 K57 ["mediaSizeScaleY"]
      235 LOADN                            R19 0
      236 SETTABLEKS                       R19 R18 K58 ["mediaSizeOffsetX"]
      238 LOADN                            R19 100
      239 SETTABLEKS                       R19 R18 K59 ["mediaSizeOffsetY"]
      241 LOADN                            R19 0
      242 SETTABLEKS                       R19 R18 K60 ["mediaAspectRatio"]
      244 LOADB                            R19 0
      245 SETTABLEKS                       R19 R18 K61 ["heroMediaBackgroundStyle"]
      247 LOADK                            R19 K74 [2.5]
      248 SETTABLEKS                       R19 R18 K62 ["heroMediaAspectRatio"]
      250 LOADN                            R19 1
      251 SETTABLEKS                       R19 R18 K63 ["heroMediaHeightScale"]
      253 LOADN                            R19 0
      254 SETTABLEKS                       R19 R18 K64 ["heroMediaHeightOffset"]
      256 LOADB                            R19 1
      257 SETTABLEKS                       R19 R18 K65 ["selectableContent"]
      259 GETTABLEKS                       R19 R2 K71 ["values"]
      261 MOVE                             R20 R7
      262 CALL                             R19 1 1
      263 SETTABLEKS                       R19 R18 K66 ["size"]
      265 SETTABLEKS                       R18 R17 K31 ["controls"]
      267 RETURN                           R17 1
