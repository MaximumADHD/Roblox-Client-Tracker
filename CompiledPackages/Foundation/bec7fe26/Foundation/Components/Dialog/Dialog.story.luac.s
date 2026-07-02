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
        9 LOADNIL                          R4
       10 CALL                             R3 1 2
       11 GETUPVAL                         R5 1
       12 CALL                             R5 0 1
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K7 ["useState"]
       16 LOADB                            R7 1
       17 CALL                             R6 1 2
       18 NEWCLOSURE                       R8 P0
       19 CAPTURE                          VAL R7
       20 CAPTURE                          VAL R6
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K8 ["createElement"]
       24 GETUPVAL                         R10 2
       25 DUPTABLE                         R11 K14 [{["ref"], ["backgroundStyle"], ["tag"] = "clip", ["Size"]}]
       26 SETTABLEKS                       R4 R11 K9 ["ref"]
       28 DUPTABLE                         R12 K17 [{"Color3", "Transparency"}]
       29 GETTABLEKS                       R13 R5 K18 ["Color"]
       31 GETTABLEKS                       R13 R13 K19 ["Shift"]
       33 GETTABLEKS                       R13 R13 K20 ["Shift_200"]
       35 GETTABLEKS                       R13 R13 K15 ["Color3"]
       37 SETTABLEKS                       R13 R12 K15 ["Color3"]
       39 GETTABLEKS                       R13 R5 K18 ["Color"]
       41 GETTABLEKS                       R13 R13 K19 ["Shift"]
       43 GETTABLEKS                       R13 R13 K20 ["Shift_200"]
       45 GETTABLEKS                       R13 R13 K16 ["Transparency"]
       47 SETTABLEKS                       R13 R12 K16 ["Transparency"]
       49 SETTABLEKS                       R12 R11 K10 ["backgroundStyle"]
       51 GETIMPORT                        R12 K23 [UDim2.new]
       53 LOADN                            R13 1
       54 LOADN                            R14 0
       55 LOADN                            R15 0
       56 GETTABLEKS                       R17 R2 K25 ["mockScreenYOffset"]
       58 ORK                              R16 R17 K24 [0]
       59 CALL                             R12 4 1
       60 SETTABLEKS                       R12 R11 K13 ["Size"]
       62 DUPTABLE                         R12 K27 [{"OverlayProvider"}]
       63 GETUPVAL                         R13 0
       64 GETTABLEKS                       R13 R13 K8 ["createElement"]
       66 GETUPVAL                         R14 3
       67 DUPTABLE                         R15 K29 [{"gui"}]
       68 SETTABLEKS                       R3 R15 K28 ["gui"]
       70 DUPTABLE                         R16 K32 [{"ToggleButton", "DialogRoot"}]
       71 GETUPVAL                         R17 0
       72 GETTABLEKS                       R17 R17 K8 ["createElement"]
       74 GETUPVAL                         R18 4
       75 DUPTABLE                         R19 K37 [{"text", "onActivated", "variant", "Position"}]
       76 JUMPIFNOT                        R6 ; [+2]
       77 LOADK                            R20 K38 ["Close Dialog"]
       78 JUMP                             ; [+1]
       79 LOADK                            R20 K39 ["Open Dialog"]
       80 SETTABLEKS                       R20 R19 K33 ["text"]
       82 SETTABLEKS                       R8 R19 K34 ["onActivated"]
       84 GETUPVAL                         R20 5
       85 GETTABLEKS                       R20 R20 K40 ["Emphasis"]
       87 SETTABLEKS                       R20 R19 K35 ["variant"]
       89 GETIMPORT                        R20 K42 [UDim2.fromOffset]
       91 LOADN                            R21 20
       92 LOADN                            R22 20
       93 CALL                             R20 2 1
       94 SETTABLEKS                       R20 R19 K36 ["Position"]
       96 CALL                             R17 2 1
       97 SETTABLEKS                       R17 R16 K30 ["ToggleButton"]
       99 JUMPIFNOT                        R6 ; [+83]
      100 GETUPVAL                         R17 0
      101 GETTABLEKS                       R17 R17 K8 ["createElement"]
      103 GETUPVAL                         R18 6
      104 GETTABLEKS                       R18 R18 K43 ["Root"]
      106 DUPTABLE                         R19 K48 [{"size", "onClose", "hasBackdrop", "disablePortal"}]
      107 GETTABLEKS                       R20 R2 K44 ["size"]
      109 SETTABLEKS                       R20 R19 K44 ["size"]
      111 SETTABLEKS                       R8 R19 K45 ["onClose"]
      113 GETTABLEKS                       R20 R2 K46 ["hasBackdrop"]
      115 SETTABLEKS                       R20 R19 K46 ["hasBackdrop"]
      117 GETTABLEKS                       R20 R2 K47 ["disablePortal"]
      119 SETTABLEKS                       R20 R19 K47 ["disablePortal"]
      121 DUPTABLE                         R20 K50 [{"DialogMedia", "DialogTitle", "DialogContent", "DialogActions"}]
      122 GETTABLEKS                       R21 R1 K1 ["DialogMedia"]
      124 SETTABLEKS                       R21 R20 K1 ["DialogMedia"]
      126 GETTABLEKS                       R21 R1 K4 ["DialogTitle"]
      128 SETTABLEKS                       R21 R20 K4 ["DialogTitle"]
      130 GETTABLEKS                       R21 R1 K3 ["DialogContent"]
      132 SETTABLEKS                       R21 R20 K3 ["DialogContent"]
      134 GETTABLEKS                       R22 R2 K51 ["hasActions"]
      136 JUMPIFNOT                        R22 ; [+41]
      137 GETUPVAL                         R21 0
      138 GETTABLEKS                       R21 R21 K8 ["createElement"]
      140 GETUPVAL                         R22 6
      141 GETTABLEKS                       R22 R22 K52 ["Actions"]
      143 DUPTABLE                         R23 K58 [{["LayoutOrder"] = 3, ["orientation"], ["actions"], ["label"]}]
      144 GETTABLEKS                       R24 R2 K59 ["actionsOrientation"]
      146 SETTABLEKS                       R24 R23 K55 ["orientation"]
      148 NEWTABLE                         R24 0 2
      150 DUPTABLE                         R25 K64 [{["text"] = "Join", ["variant"], ["icon"] = "icons/common/robux", ["onActivated"], ["inputDelay"] = 3}]
      151 GETUPVAL                         R26 5
      152 GETTABLEKS                       R26 R26 K40 ["Emphasis"]
      154 SETTABLEKS                       R26 R25 K35 ["variant"]
      156 DUPCLOSURE                       R26 K65 [PROTO_1]
      157 SETTABLEKS                       R26 R25 K34 ["onActivated"]
      159 DUPTABLE                         R26 K67 [{["text"] = "Share", ["variant"], ["onActivated"]}]
      160 GETUPVAL                         R27 5
      161 GETTABLEKS                       R27 R27 K68 ["Standard"]
      163 SETTABLEKS                       R27 R26 K35 ["variant"]
      165 DUPCLOSURE                       R27 K69 [PROTO_2]
      166 SETTABLEKS                       R27 R26 K34 ["onActivated"]
      168 SETLIST                          R24 R25 2 [1]
      170 SETTABLEKS                       R24 R23 K56 ["actions"]
      172 GETTABLEKS                       R24 R2 K70 ["actionsLabel"]
      174 SETTABLEKS                       R24 R23 K57 ["label"]
      176 CALL                             R21 2 1
      177 JUMP                             ; [+1]
      178 LOADNIL                          R21
      179 SETTABLEKS                       R21 R20 K49 ["DialogActions"]
      181 CALL                             R17 3 1
      182 JUMP                             ; [+1]
      183 LOADNIL                          R17
      184 SETTABLEKS                       R17 R16 K31 ["DialogRoot"]
      186 CALL                             R13 3 1
      187 SETTABLEKS                       R13 R12 K26 ["OverlayProvider"]
      189 CALL                             R9 3 -1
      190 RETURN                           R9 -1

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
      107 DUPTABLE                         R8 K33 [{["LayoutOrder"] = 2}]
      108 DUPTABLE                         R9 K35 [{"DialogText"}]
      109 GETUPVAL                         R10 1
      110 GETTABLEKS                       R10 R10 K0 ["createElement"]
      112 GETUPVAL                         R11 3
      113 GETTABLEKS                       R11 R11 K36 ["Text"]
      115 DUPTABLE                         R12 K37 [{"Text"}]
      116 GETTABLEKS                       R13 R0 K8 ["controls"]
      118 GETTABLEKS                       R13 R13 K38 ["content"]
      120 SETTABLEKS                       R13 R12 K36 ["Text"]
      122 CALL                             R10 2 1
      123 SETTABLEKS                       R10 R9 K34 ["DialogText"]
      125 CALL                             R6 3 1
      126 SETTABLEKS                       R6 R5 K3 ["DialogContent"]
      128 CALL                             R2 3 -1
      129 RETURN                           R2 -1

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
       28 DUPTABLE                         R7 K12 [{["LayoutOrder"] = 2}]
       29 DUPTABLE                         R8 K14 [{"DialogText"}]
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R9 R9 K0 ["createElement"]
       33 GETUPVAL                         R10 2
       34 GETTABLEKS                       R10 R10 K15 ["Text"]
       36 DUPTABLE                         R11 K16 [{"Text"}]
       37 GETTABLEKS                       R12 R0 K7 ["controls"]
       39 GETTABLEKS                       R12 R12 K17 ["content"]
       41 SETTABLEKS                       R12 R11 K15 ["Text"]
       43 CALL                             R9 2 1
       44 SETTABLEKS                       R9 R8 K13 ["DialogText"]
       46 CALL                             R5 3 1
       47 SETTABLEKS                       R5 R4 K2 ["DialogContent"]
       49 CALL                             R1 3 -1
       50 RETURN                           R1 -1

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
       91 DUPTABLE                         R8 K28 [{["LayoutOrder"] = 2}]
       92 DUPTABLE                         R9 K30 [{"DialogText"}]
       93 GETUPVAL                         R10 1
       94 GETTABLEKS                       R10 R10 K0 ["createElement"]
       96 GETUPVAL                         R11 3
       97 GETTABLEKS                       R11 R11 K31 ["Text"]
       99 DUPTABLE                         R12 K32 [{"Text"}]
      100 GETTABLEKS                       R13 R0 K11 ["controls"]
      102 GETTABLEKS                       R13 R13 K33 ["content"]
      104 SETTABLEKS                       R13 R12 K31 ["Text"]
      106 CALL                             R10 2 1
      107 SETTABLEKS                       R10 R9 K29 ["DialogText"]
      109 CALL                             R6 3 1
      110 SETTABLEKS                       R6 R5 K2 ["DialogContent"]
      112 CALL                             R2 3 -1
      113 RETURN                           R2 -1

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
      146 DUPTABLE                         R11 K52 [{["LayoutOrder"] = 2}]
      147 DUPTABLE                         R12 K54 [{"CustomContent"}]
      148 SETTABLEKS                       R4 R12 K53 ["CustomContent"]
      150 CALL                             R9 3 1
      151 SETTABLEKS                       R9 R8 K39 ["DialogContent"]
      153 CALL                             R5 3 -1
      154 RETURN                           R5 -1

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
      106 DUPTABLE                         R9 K37 [{["LayoutOrder"] = 2}]
      107 DUPTABLE                         R10 K39 [{"CustomContent"}]
      108 SETTABLEKS                       R2 R10 K38 ["CustomContent"]
      110 CALL                             R7 3 1
      111 SETTABLEKS                       R7 R6 K29 ["DialogContent"]
      113 CALL                             R3 3 -1
      114 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
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
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Dialog"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K12 ["Button"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R8 K13 ["Image"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Components"]
       51 GETTABLEKS                       R9 R9 K14 ["Text"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K9 ["Components"]
       58 GETTABLEKS                       R10 R10 K15 ["RadioGroup"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K16 ["Enums"]
       65 GETTABLEKS                       R11 R11 K17 ["InputSize"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K16 ["Enums"]
       72 GETTABLEKS                       R12 R12 K18 ["ButtonVariant"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K16 ["Enums"]
       79 GETTABLEKS                       R13 R13 K19 ["DialogSize"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K16 ["Enums"]
       86 GETTABLEKS                       R14 R14 K20 ["Orientation"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R15 R0 K21 ["Providers"]
       93 GETTABLEKS                       R15 R15 K22 ["Overlay"]
       95 GETTABLEKS                       R15 R15 K23 ["OverlayProvider"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R16 R0 K21 ["Providers"]
      102 GETTABLEKS                       R16 R16 K24 ["Style"]
      104 GETTABLEKS                       R16 R16 K25 ["useTokens"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K6 [require]
      109 GETTABLEKS                       R17 R0 K26 ["Utility"]
      111 GETTABLEKS                       R17 R17 K27 ["Flags"]
      113 CALL                             R16 1 1
      114 DUPCLOSURE                       R17 K28 [PROTO_3]
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R15
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R4
      122 DUPCLOSURE                       R18 K29 [PROTO_4]
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R16
      126 CAPTURE                          VAL R7
      127 SETGLOBAL                        R18 K30 ["CustomMedia"]
      129 DUPTABLE                         R18 K34 [{["summary"] = "Dialog", ["stories"], ["controls"]}]
      130 NEWTABLE                         R19 0 6
      132 DUPTABLE                         R20 K38 [{["name"] = "Hero Image & Title & Content", ["story"]}]
      133 DUPCLOSURE                       R21 K39 [PROTO_5]
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R4
      138 SETTABLEKS                       R21 R20 K37 ["story"]
      140 DUPTABLE                         R21 K41 [{["name"] = "Title & Content", ["story"]}]
      141 DUPCLOSURE                       R22 K42 [PROTO_6]
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R17
      144 CAPTURE                          VAL R4
      145 SETTABLEKS                       R22 R21 K37 ["story"]
      147 DUPTABLE                         R22 K44 [{["name"] = "Hero Image & Content", ["story"]}]
      148 DUPCLOSURE                       R23 K45 [PROTO_7]
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R2
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R4
      153 SETTABLEKS                       R23 R22 K37 ["story"]
      155 DUPTABLE                         R23 K47 [{["name"] = "Hero Image only", ["story"]}]
      156 DUPCLOSURE                       R24 K48 [PROTO_8]
      157 CAPTURE                          VAL R15
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R4
      161 SETTABLEKS                       R24 R23 K37 ["story"]
      163 DUPTABLE                         R24 K50 [{["name"] = "Custom Content", ["story"]}]
      164 DUPCLOSURE                       R25 K51 [PROTO_11]
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R9
      168 CAPTURE                          VAL R10
      169 CAPTURE                          VAL R5
      170 CAPTURE                          VAL R8
      171 CAPTURE                          VAL R4
      172 CAPTURE                          VAL R17
      173 SETTABLEKS                       R25 R24 K37 ["story"]
      175 DUPTABLE                         R25 K53 [{["name"] = "Embedded Media", ["story"]}]
      176 DUPCLOSURE                       R26 K54 [PROTO_12]
      177 CAPTURE                          VAL R2
      178 CAPTURE                          VAL R5
      179 CAPTURE                          VAL R4
      180 CAPTURE                          VAL R17
      181 SETTABLEKS                       R26 R25 K37 ["story"]
      183 SETLIST                          R19 R20 6 [1]
      185 SETTABLEKS                       R19 R18 K32 ["stories"]
      187 DUPTABLE                         R19 K84 [{["title"] = "Welcome Dialog", ["content"] = "This is a dialog with a very, very long description that spans multiple lines. Now, I'm not joking when I say that it has a lot to say. Really, a lot of things have a lot to say if you're willing to listen.", ["actionsLabel"] = "By selecting Primary, I consent to Roblox's collection, use, and storage of my data to enable services and for moderation, safety, and improvement of our services and tools.", ["actionsOrientation"], ["hasActions"] = True, ["disablePortal"] = False, ["hasBackdrop"] = True, ["media"], ["mediaSizeScaleX"] = 1, ["mediaSizeScaleY"] = 0, ["mediaSizeOffsetX"] = 0, ["mediaSizeOffsetY"] = 100, ["mediaAspectRatio"] = 0, ["heroMediaBackgroundStyle"] = False, ["heroMediaAspectRatio"] = 2.5, ["heroMediaHeightScale"] = 1, ["heroMediaHeightOffset"] = 0, ["size"], ["mockScreenYOffset"] = 800}]
      188 GETTABLEKS                       R20 R3 K85 ["values"]
      190 MOVE                             R21 R13
      191 CALL                             R20 1 1
      192 SETTABLEKS                       R20 R19 K61 ["actionsOrientation"]
      194 NEWTABLE                         R20 0 2
      196 LOADK                            R21 K86 ["pictograms/avatar_setup"]
      197 LOADK                            R22 K87 ["component_assets/avatarBG_dark"]
      198 SETLIST                          R20 R21 2 [1]
      200 SETTABLEKS                       R20 R19 K67 ["media"]
      202 GETTABLEKS                       R20 R3 K85 ["values"]
      204 MOVE                             R21 R12
      205 CALL                             R20 1 1
      206 SETTABLEKS                       R20 R19 K81 ["size"]
      208 SETTABLEKS                       R19 R18 K33 ["controls"]
      210 RETURN                           R18 1
