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
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K9 ["Fragment"]
       20 LOADNIL                          R8
       21 DUPTABLE                         R9 K12 [{"ToggleButton", "DialogRoot"}]
       22 GETUPVAL                         R10 0
       23 GETTABLEKS                       R10 R10 K8 ["createElement"]
       25 GETUPVAL                         R11 1
       26 DUPTABLE                         R12 K16 [{"text", "onActivated", "variant"}]
       27 JUMPIFNOT                        R3 ; [+2]
       28 LOADK                            R13 K17 ["Close Dialog"]
       29 JUMP                             ; [+1]
       30 LOADK                            R13 K18 ["Open Dialog"]
       31 SETTABLEKS                       R13 R12 K13 ["text"]
       33 SETTABLEKS                       R5 R12 K14 ["onActivated"]
       35 GETUPVAL                         R13 2
       36 GETTABLEKS                       R13 R13 K19 ["Emphasis"]
       38 SETTABLEKS                       R13 R12 K15 ["variant"]
       40 CALL                             R10 2 1
       41 SETTABLEKS                       R10 R9 K10 ["ToggleButton"]
       43 JUMPIFNOT                        R3 ; [+83]
       44 GETUPVAL                         R10 0
       45 GETTABLEKS                       R10 R10 K8 ["createElement"]
       47 GETUPVAL                         R11 3
       48 GETTABLEKS                       R11 R11 K20 ["Root"]
       50 DUPTABLE                         R12 K25 [{"size", "onClose", "hasBackdrop", "disablePortal"}]
       51 GETTABLEKS                       R13 R2 K21 ["size"]
       53 SETTABLEKS                       R13 R12 K21 ["size"]
       55 SETTABLEKS                       R5 R12 K22 ["onClose"]
       57 GETTABLEKS                       R13 R2 K23 ["hasBackdrop"]
       59 SETTABLEKS                       R13 R12 K23 ["hasBackdrop"]
       61 GETTABLEKS                       R13 R2 K24 ["disablePortal"]
       63 SETTABLEKS                       R13 R12 K24 ["disablePortal"]
       65 DUPTABLE                         R13 K27 [{"DialogMedia", "DialogTitle", "DialogContent", "DialogActions"}]
       66 GETTABLEKS                       R14 R1 K1 ["DialogMedia"]
       68 SETTABLEKS                       R14 R13 K1 ["DialogMedia"]
       70 GETTABLEKS                       R14 R1 K4 ["DialogTitle"]
       72 SETTABLEKS                       R14 R13 K4 ["DialogTitle"]
       74 GETTABLEKS                       R14 R1 K3 ["DialogContent"]
       76 SETTABLEKS                       R14 R13 K3 ["DialogContent"]
       78 GETTABLEKS                       R15 R2 K28 ["hasActions"]
       80 JUMPIFNOT                        R15 ; [+41]
       81 GETUPVAL                         R14 0
       82 GETTABLEKS                       R14 R14 K8 ["createElement"]
       84 GETUPVAL                         R15 3
       85 GETTABLEKS                       R15 R15 K29 ["Actions"]
       87 DUPTABLE                         R16 K35 [{["LayoutOrder"] = 3, ["orientation"], ["actions"], ["label"]}]
       88 GETTABLEKS                       R17 R2 K36 ["actionsOrientation"]
       90 SETTABLEKS                       R17 R16 K32 ["orientation"]
       92 NEWTABLE                         R17 0 2
       94 DUPTABLE                         R18 K41 [{["text"] = "Join", ["variant"], ["icon"] = "icons/common/robux", ["onActivated"], ["inputDelay"] = 3}]
       95 GETUPVAL                         R19 2
       96 GETTABLEKS                       R19 R19 K19 ["Emphasis"]
       98 SETTABLEKS                       R19 R18 K15 ["variant"]
      100 DUPCLOSURE                       R19 K42 [PROTO_1]
      101 SETTABLEKS                       R19 R18 K14 ["onActivated"]
      103 DUPTABLE                         R19 K44 [{["text"] = "Share", ["variant"], ["onActivated"]}]
      104 GETUPVAL                         R20 2
      105 GETTABLEKS                       R20 R20 K45 ["Standard"]
      107 SETTABLEKS                       R20 R19 K15 ["variant"]
      109 DUPCLOSURE                       R20 K46 [PROTO_2]
      110 SETTABLEKS                       R20 R19 K14 ["onActivated"]
      112 SETLIST                          R17 R18 2 [1]
      114 SETTABLEKS                       R17 R16 K33 ["actions"]
      116 GETTABLEKS                       R17 R2 K47 ["actionsLabel"]
      118 SETTABLEKS                       R17 R16 K34 ["label"]
      120 CALL                             R14 2 1
      121 JUMP                             ; [+1]
      122 LOADNIL                          R14
      123 SETTABLEKS                       R14 R13 K26 ["DialogActions"]
      125 CALL                             R10 3 1
      126 JUMP                             ; [+1]
      127 LOADNIL                          R10
      128 SETTABLEKS                       R10 R9 K11 ["DialogRoot"]
      130 CALL                             R6 3 -1
      131 RETURN                           R6 -1

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
      107 DUPTABLE                         R8 K34 [{["LayoutOrder"] = 2, ["Selectable"]}]
      108 GETTABLEKS                       R9 R0 K8 ["controls"]
      110 GETTABLEKS                       R9 R9 K35 ["selectableContent"]
      112 SETTABLEKS                       R9 R8 K33 ["Selectable"]
      114 DUPTABLE                         R9 K37 [{"DialogText"}]
      115 GETUPVAL                         R10 1
      116 GETTABLEKS                       R10 R10 K0 ["createElement"]
      118 GETUPVAL                         R11 3
      119 GETTABLEKS                       R11 R11 K38 ["Text"]
      121 DUPTABLE                         R12 K39 [{"Text"}]
      122 GETTABLEKS                       R13 R0 K8 ["controls"]
      124 GETTABLEKS                       R13 R13 K40 ["content"]
      126 SETTABLEKS                       R13 R12 K38 ["Text"]
      128 CALL                             R10 2 1
      129 SETTABLEKS                       R10 R9 K36 ["DialogText"]
      131 CALL                             R6 3 1
      132 SETTABLEKS                       R6 R5 K3 ["DialogContent"]
      134 CALL                             R2 3 -1
      135 RETURN                           R2 -1

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
       91 DUPTABLE                         R8 K29 [{["LayoutOrder"] = 2, ["Selectable"]}]
       92 GETTABLEKS                       R9 R0 K11 ["controls"]
       94 GETTABLEKS                       R9 R9 K30 ["selectableContent"]
       96 SETTABLEKS                       R9 R8 K28 ["Selectable"]
       98 DUPTABLE                         R9 K32 [{"DialogText"}]
       99 GETUPVAL                         R10 1
      100 GETTABLEKS                       R10 R10 K0 ["createElement"]
      102 GETUPVAL                         R11 3
      103 GETTABLEKS                       R11 R11 K33 ["Text"]
      105 DUPTABLE                         R12 K34 [{"Text"}]
      106 GETTABLEKS                       R13 R0 K11 ["controls"]
      108 GETTABLEKS                       R13 R13 K35 ["content"]
      110 SETTABLEKS                       R13 R12 K33 ["Text"]
      112 CALL                             R10 2 1
      113 SETTABLEKS                       R10 R9 K31 ["DialogText"]
      115 CALL                             R6 3 1
      116 SETTABLEKS                       R6 R5 K2 ["DialogContent"]
      118 CALL                             R2 3 -1
      119 RETURN                           R2 -1

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
       45 DUPTABLE                         R6 K19 [{["tag"] = "auto-y size-full-0 col gap-xxlarge"}]
       46 DUPTABLE                         R7 K23 [{"Text", "RadioGroup", "DialogText"}]
       47 GETUPVAL                         R8 1
       48 GETTABLEKS                       R8 R8 K16 ["createElement"]
       50 GETUPVAL                         R9 5
       51 DUPTABLE                         R10 K28 [{["tag"] = "text-body-large text-wrap text-align-x-left text-align-y-top auto-y size-full-0", ["Text"] = "Some text", ["LayoutOrder"] = 2}]
       52 CALL                             R8 2 1
       53 SETTABLEKS                       R8 R7 K20 ["Text"]
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R8 R8 K16 ["createElement"]
       58 GETUPVAL                         R9 2
       59 GETTABLEKS                       R9 R9 K29 ["Root"]
       61 DUPTABLE                         R10 K32 [{["onValueChanged"], ["LayoutOrder"] = 3}]
       62 DUPCLOSURE                       R11 K33 [PROTO_10]
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
       27 DUPTABLE                         R4 K12 [{["tag"] = "auto-y size-full-0 col gap-xlarge"}]
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
      117 DUPTABLE                         R17 K32 [{["summary"] = "Dialog", ["stories"], ["controls"]}]
      118 NEWTABLE                         R18 0 6
      120 DUPTABLE                         R19 K36 [{["name"] = "Hero Image & Title & Content", ["story"]}]
      121 DUPCLOSURE                       R20 K37 [PROTO_5]
      122 CAPTURE                          VAL R15
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R16
      125 CAPTURE                          VAL R6
      126 SETTABLEKS                       R20 R19 K35 ["story"]
      128 DUPTABLE                         R20 K39 [{["name"] = "Title & Content", ["story"]}]
      129 DUPCLOSURE                       R21 K40 [PROTO_6]
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R6
      133 SETTABLEKS                       R21 R20 K35 ["story"]
      135 DUPTABLE                         R21 K42 [{["name"] = "Hero Image & Content", ["story"]}]
      136 DUPCLOSURE                       R22 K43 [PROTO_7]
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R16
      140 CAPTURE                          VAL R6
      141 SETTABLEKS                       R22 R21 K35 ["story"]
      143 DUPTABLE                         R22 K45 [{["name"] = "Hero Image only", ["story"]}]
      144 DUPCLOSURE                       R23 K46 [PROTO_8]
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R6
      149 SETTABLEKS                       R23 R22 K35 ["story"]
      151 DUPTABLE                         R23 K48 [{["name"] = "Custom Content", ["story"]}]
      152 DUPCLOSURE                       R24 K49 [PROTO_11]
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R10
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R16
      161 SETTABLEKS                       R24 R23 K35 ["story"]
      163 DUPTABLE                         R24 K51 [{["name"] = "Embedded Media", ["story"]}]
      164 DUPCLOSURE                       R25 K52 [PROTO_12]
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R6
      168 CAPTURE                          VAL R16
      169 SETTABLEKS                       R25 R24 K35 ["story"]
      171 SETLIST                          R18 R19 6 [1]
      173 SETTABLEKS                       R18 R17 K30 ["stories"]
      175 DUPTABLE                         R18 K81 [{["title"] = "Welcome Dialog", ["content"] = "This is a dialog with a very, very long description that spans multiple lines. Now, I'm not joking when I say that it has a lot to say. Really, a lot of things have a lot to say if you're willing to listen.", ["actionsLabel"] = "By selecting Primary, I consent to Roblox's collection, use, and storage of my data to enable services and for moderation, safety, and improvement of our services and tools.", ["actionsOrientation"], ["hasActions"] = True, ["disablePortal"] = False, ["hasBackdrop"] = True, ["media"], ["mediaSizeScaleX"] = 1, ["mediaSizeScaleY"] = 0, ["mediaSizeOffsetX"] = 0, ["mediaSizeOffsetY"] = 100, ["mediaAspectRatio"] = 0, ["heroMediaBackgroundStyle"] = False, ["heroMediaAspectRatio"] = 2.5, ["heroMediaHeightScale"] = 1, ["heroMediaHeightOffset"] = 0, ["selectableContent"] = True, ["size"]}]
      176 GETTABLEKS                       R19 R2 K82 ["values"]
      178 MOVE                             R20 R11
      179 CALL                             R19 1 1
      180 SETTABLEKS                       R19 R18 K59 ["actionsOrientation"]
      182 NEWTABLE                         R19 0 2
      184 LOADK                            R20 K83 ["pictograms/avatar_setup"]
      185 LOADK                            R21 K84 ["component_assets/avatarBG_dark"]
      186 SETLIST                          R19 R20 2 [1]
      188 SETTABLEKS                       R19 R18 K65 ["media"]
      190 GETTABLEKS                       R19 R2 K82 ["values"]
      192 MOVE                             R20 R7
      193 CALL                             R19 1 1
      194 SETTABLEKS                       R19 R18 K80 ["size"]
      196 SETTABLEKS                       R18 R17 K31 ["controls"]
      198 RETURN                           R17 1
