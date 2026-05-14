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
       18 LOADNIL                          R4
       19 CALL                             R3 1 2
       20 GETUPVAL                         R5 1
       21 CALL                             R5 0 1
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K6 ["useState"]
       25 LOADB                            R7 1
       26 CALL                             R6 1 2
       27 NEWCLOSURE                       R8 P0
       28 CAPTURE                          VAL R7
       29 CAPTURE                          VAL R6
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R9 R9 K7 ["createElement"]
       33 GETUPVAL                         R10 2
       34 DUPTABLE                         R11 K12 [{"ref", "backgroundStyle", "tag", "Size"}]
       35 SETTABLEKS                       R4 R11 K8 ["ref"]
       37 DUPTABLE                         R12 K15 [{"Color3", "Transparency"}]
       38 GETTABLEKS                       R13 R5 K16 ["Color"]
       40 GETTABLEKS                       R13 R13 K17 ["Shift"]
       42 GETTABLEKS                       R13 R13 K18 ["Shift_200"]
       44 GETTABLEKS                       R13 R13 K13 ["Color3"]
       46 SETTABLEKS                       R13 R12 K13 ["Color3"]
       48 GETTABLEKS                       R13 R5 K16 ["Color"]
       50 GETTABLEKS                       R13 R13 K17 ["Shift"]
       52 GETTABLEKS                       R13 R13 K18 ["Shift_200"]
       54 GETTABLEKS                       R13 R13 K14 ["Transparency"]
       56 SETTABLEKS                       R13 R12 K14 ["Transparency"]
       58 SETTABLEKS                       R12 R11 K9 ["backgroundStyle"]
       60 LOADK                            R12 K19 ["clip"]
       61 SETTABLEKS                       R12 R11 K10 ["tag"]
       63 GETIMPORT                        R12 K22 [UDim2.new]
       65 LOADN                            R13 1
       66 LOADN                            R14 0
       67 LOADN                            R15 0
       68 GETTABLEKS                       R17 R2 K24 ["mockScreenYOffset"]
       70 ORK                              R16 R17 K23 [0]
       71 CALL                             R12 4 1
       72 SETTABLEKS                       R12 R11 K11 ["Size"]
       74 DUPTABLE                         R12 K26 [{"OverlayProvider"}]
       75 GETUPVAL                         R13 0
       76 GETTABLEKS                       R13 R13 K7 ["createElement"]
       78 GETUPVAL                         R14 3
       79 DUPTABLE                         R15 K28 [{"gui"}]
       80 SETTABLEKS                       R3 R15 K27 ["gui"]
       82 DUPTABLE                         R16 K31 [{"ToggleButton", "DialogRoot"}]
       83 GETUPVAL                         R17 0
       84 GETTABLEKS                       R17 R17 K7 ["createElement"]
       86 GETUPVAL                         R18 4
       87 DUPTABLE                         R19 K36 [{"text", "onActivated", "variant", "Position"}]
       88 JUMPIFNOT                        R6 ; [+2]
       89 LOADK                            R20 K37 ["Close Dialog"]
       90 JUMP                             ; [+1]
       91 LOADK                            R20 K38 ["Open Dialog"]
       92 SETTABLEKS                       R20 R19 K32 ["text"]
       94 SETTABLEKS                       R8 R19 K33 ["onActivated"]
       96 GETUPVAL                         R20 5
       97 GETTABLEKS                       R20 R20 K39 ["Emphasis"]
       99 SETTABLEKS                       R20 R19 K34 ["variant"]
      101 GETIMPORT                        R20 K41 [UDim2.fromOffset]
      103 LOADN                            R21 20
      104 LOADN                            R22 20
      105 CALL                             R20 2 1
      106 SETTABLEKS                       R20 R19 K35 ["Position"]
      108 CALL                             R17 2 1
      109 SETTABLEKS                       R17 R16 K29 ["ToggleButton"]
      111 JUMPIFNOT                        R6 ; [+98]
      112 GETUPVAL                         R17 0
      113 GETTABLEKS                       R17 R17 K7 ["createElement"]
      115 GETUPVAL                         R18 6
      116 GETTABLEKS                       R18 R18 K42 ["Root"]
      118 DUPTABLE                         R19 K47 [{"size", "onClose", "hasBackdrop", "disablePortal"}]
      119 GETTABLEKS                       R20 R2 K43 ["size"]
      121 SETTABLEKS                       R20 R19 K43 ["size"]
      123 SETTABLEKS                       R8 R19 K44 ["onClose"]
      125 GETTABLEKS                       R20 R2 K45 ["hasBackdrop"]
      127 SETTABLEKS                       R20 R19 K45 ["hasBackdrop"]
      129 GETTABLEKS                       R20 R2 K46 ["disablePortal"]
      131 SETTABLEKS                       R20 R19 K46 ["disablePortal"]
      133 DUPTABLE                         R20 K49 [{"DialogMedia", "DialogTitle", "DialogContent", "DialogActions"}]
      134 GETTABLEKS                       R21 R1 K1 ["DialogMedia"]
      136 SETTABLEKS                       R21 R20 K1 ["DialogMedia"]
      138 GETTABLEKS                       R21 R1 K3 ["DialogTitle"]
      140 SETTABLEKS                       R21 R20 K3 ["DialogTitle"]
      142 GETTABLEKS                       R21 R1 K2 ["DialogContent"]
      144 SETTABLEKS                       R21 R20 K2 ["DialogContent"]
      146 GETTABLEKS                       R22 R2 K50 ["hasActions"]
      148 JUMPIFNOT                        R22 ; [+56]
      149 GETUPVAL                         R21 0
      150 GETTABLEKS                       R21 R21 K7 ["createElement"]
      152 GETUPVAL                         R22 6
      153 GETTABLEKS                       R22 R22 K51 ["Actions"]
      155 DUPTABLE                         R23 K56 [{"LayoutOrder", "orientation", "actions", "label"}]
      156 LOADN                            R24 3
      157 SETTABLEKS                       R24 R23 K52 ["LayoutOrder"]
      159 GETTABLEKS                       R24 R2 K57 ["actionsOrientation"]
      161 SETTABLEKS                       R24 R23 K53 ["orientation"]
      163 NEWTABLE                         R24 0 2
      165 DUPTABLE                         R25 K60 [{"text", "variant", "icon", "onActivated", "inputDelay"}]
      166 LOADK                            R26 K61 ["Join"]
      167 SETTABLEKS                       R26 R25 K32 ["text"]
      169 GETUPVAL                         R26 5
      170 GETTABLEKS                       R26 R26 K39 ["Emphasis"]
      172 SETTABLEKS                       R26 R25 K34 ["variant"]
      174 LOADK                            R26 K62 ["icons/common/robux"]
      175 SETTABLEKS                       R26 R25 K58 ["icon"]
      177 DUPCLOSURE                       R26 K63 [PROTO_1]
      178 SETTABLEKS                       R26 R25 K33 ["onActivated"]
      180 LOADN                            R26 3
      181 SETTABLEKS                       R26 R25 K59 ["inputDelay"]
      183 DUPTABLE                         R26 K64 [{"text", "variant", "onActivated"}]
      184 LOADK                            R27 K65 ["Share"]
      185 SETTABLEKS                       R27 R26 K32 ["text"]
      187 GETUPVAL                         R27 5
      188 GETTABLEKS                       R27 R27 K66 ["Standard"]
      190 SETTABLEKS                       R27 R26 K34 ["variant"]
      192 DUPCLOSURE                       R27 K67 [PROTO_2]
      193 SETTABLEKS                       R27 R26 K33 ["onActivated"]
      195 SETLIST                          R24 R25 2 [1]
      197 SETTABLEKS                       R24 R23 K54 ["actions"]
      199 GETTABLEKS                       R24 R2 K68 ["actionsLabel"]
      201 SETTABLEKS                       R24 R23 K55 ["label"]
      203 CALL                             R21 2 1
      204 JUMP                             ; [+1]
      205 LOADNIL                          R21
      206 SETTABLEKS                       R21 R20 K48 ["DialogActions"]
      208 CALL                             R17 3 1
      209 JUMP                             ; [+1]
      210 LOADNIL                          R17
      211 SETTABLEKS                       R17 R16 K30 ["DialogRoot"]
      213 CALL                             R13 3 1
      214 SETTABLEKS                       R13 R12 K25 ["OverlayProvider"]
      216 CALL                             R9 3 -1
      217 RETURN                           R9 -1

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
      107 DUPTABLE                         R8 K32 [{"LayoutOrder"}]
      108 LOADN                            R9 2
      109 SETTABLEKS                       R9 R8 K31 ["LayoutOrder"]
      111 DUPTABLE                         R9 K34 [{"DialogText"}]
      112 GETUPVAL                         R10 1
      113 GETTABLEKS                       R10 R10 K0 ["createElement"]
      115 GETUPVAL                         R11 3
      116 GETTABLEKS                       R11 R11 K35 ["Text"]
      118 DUPTABLE                         R12 K36 [{"Text"}]
      119 GETTABLEKS                       R13 R0 K8 ["controls"]
      121 GETTABLEKS                       R13 R13 K37 ["content"]
      123 SETTABLEKS                       R13 R12 K35 ["Text"]
      125 CALL                             R10 2 1
      126 SETTABLEKS                       R10 R9 K33 ["DialogText"]
      128 CALL                             R6 3 1
      129 SETTABLEKS                       R6 R5 K3 ["DialogContent"]
      131 CALL                             R2 3 -1
      132 RETURN                           R2 -1

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
       28 DUPTABLE                         R7 K11 [{"LayoutOrder"}]
       29 LOADN                            R8 2
       30 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       32 DUPTABLE                         R8 K13 [{"DialogText"}]
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R9 R9 K0 ["createElement"]
       36 GETUPVAL                         R10 2
       37 GETTABLEKS                       R10 R10 K14 ["Text"]
       39 DUPTABLE                         R11 K15 [{"Text"}]
       40 GETTABLEKS                       R12 R0 K7 ["controls"]
       42 GETTABLEKS                       R12 R12 K16 ["content"]
       44 SETTABLEKS                       R12 R11 K14 ["Text"]
       46 CALL                             R9 2 1
       47 SETTABLEKS                       R9 R8 K12 ["DialogText"]
       49 CALL                             R5 3 1
       50 SETTABLEKS                       R5 R4 K2 ["DialogContent"]
       52 CALL                             R1 3 -1
       53 RETURN                           R1 -1

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
       91 DUPTABLE                         R8 K27 [{"LayoutOrder"}]
       92 LOADN                            R9 2
       93 SETTABLEKS                       R9 R8 K26 ["LayoutOrder"]
       95 DUPTABLE                         R9 K29 [{"DialogText"}]
       96 GETUPVAL                         R10 1
       97 GETTABLEKS                       R10 R10 K0 ["createElement"]
       99 GETUPVAL                         R11 3
      100 GETTABLEKS                       R11 R11 K30 ["Text"]
      102 DUPTABLE                         R12 K31 [{"Text"}]
      103 GETTABLEKS                       R13 R0 K11 ["controls"]
      105 GETTABLEKS                       R13 R13 K32 ["content"]
      107 SETTABLEKS                       R13 R12 K30 ["Text"]
      109 CALL                             R10 2 1
      110 SETTABLEKS                       R10 R9 K28 ["DialogText"]
      112 CALL                             R6 3 1
      113 SETTABLEKS                       R6 R5 K2 ["DialogContent"]
      115 CALL                             R2 3 -1
      116 RETURN                           R2 -1

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
      164 DUPTABLE                         R11 K49 [{"LayoutOrder"}]
      165 LOADN                            R12 2
      166 SETTABLEKS                       R12 R11 K24 ["LayoutOrder"]
      168 DUPTABLE                         R12 K51 [{"CustomContent"}]
      169 SETTABLEKS                       R4 R12 K50 ["CustomContent"]
      171 CALL                             R9 3 1
      172 SETTABLEKS                       R9 R8 K36 ["DialogContent"]
      174 CALL                             R5 3 -1
      175 RETURN                           R5 -1

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
      115 DUPTABLE                         R9 K34 [{"LayoutOrder"}]
      116 LOADN                            R10 2
      117 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
      119 DUPTABLE                         R10 K36 [{"CustomContent"}]
      120 SETTABLEKS                       R2 R10 K35 ["CustomContent"]
      122 CALL                             R7 3 1
      123 SETTABLEKS                       R7 R6 K27 ["DialogContent"]
      125 CALL                             R3 3 -1
      126 RETURN                           R3 -1

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
       77 GETTABLEKS                       R13 R0 K20 ["Providers"]
       79 GETTABLEKS                       R13 R13 K21 ["Overlay"]
       81 GETTABLEKS                       R13 R13 K22 ["OverlayProvider"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K9 ["Components"]
       88 GETTABLEKS                       R14 R14 K23 ["RadioGroup"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R15 R0 K9 ["Components"]
       95 GETTABLEKS                       R15 R15 K24 ["Text"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R16 R0 K9 ["Components"]
      102 GETTABLEKS                       R16 R16 K25 ["View"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K6 [require]
      107 GETTABLEKS                       R17 R0 K20 ["Providers"]
      109 GETTABLEKS                       R17 R17 K26 ["Style"]
      111 GETTABLEKS                       R17 R17 K27 ["useTokens"]
      113 CALL                             R16 1 1
      114 DUPCLOSURE                       R17 K28 [PROTO_3]
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R16
      117 CAPTURE                          VAL R15
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R6
      122 DUPCLOSURE                       R18 K29 [PROTO_4]
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R9
      127 SETGLOBAL                        R18 K30 ["CustomMedia"]
      129 DUPTABLE                         R18 K34 [{"summary", "stories", "controls"}]
      130 LOADK                            R19 K13 ["Dialog"]
      131 SETTABLEKS                       R19 R18 K31 ["summary"]
      133 NEWTABLE                         R19 0 6
      135 DUPTABLE                         R20 K37 [{"name", "story"}]
      136 LOADK                            R21 K38 ["Hero Image & Title & Content"]
      137 SETTABLEKS                       R21 R20 K35 ["name"]
      139 DUPCLOSURE                       R21 K39 [PROTO_5]
      140 CAPTURE                          VAL R16
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R17
      143 CAPTURE                          VAL R6
      144 SETTABLEKS                       R21 R20 K36 ["story"]
      146 DUPTABLE                         R21 K37 [{"name", "story"}]
      147 LOADK                            R22 K40 ["Title & Content"]
      148 SETTABLEKS                       R22 R21 K35 ["name"]
      150 DUPCLOSURE                       R22 K41 [PROTO_6]
      151 CAPTURE                          VAL R3
      152 CAPTURE                          VAL R17
      153 CAPTURE                          VAL R6
      154 SETTABLEKS                       R22 R21 K36 ["story"]
      156 DUPTABLE                         R22 K37 [{"name", "story"}]
      157 LOADK                            R23 K42 ["Hero Image & Content"]
      158 SETTABLEKS                       R23 R22 K35 ["name"]
      160 DUPCLOSURE                       R23 K43 [PROTO_7]
      161 CAPTURE                          VAL R16
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R6
      165 SETTABLEKS                       R23 R22 K36 ["story"]
      167 DUPTABLE                         R23 K37 [{"name", "story"}]
      168 LOADK                            R24 K44 ["Hero Image only"]
      169 SETTABLEKS                       R24 R23 K35 ["name"]
      171 DUPCLOSURE                       R24 K45 [PROTO_8]
      172 CAPTURE                          VAL R16
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R17
      175 CAPTURE                          VAL R6
      176 SETTABLEKS                       R24 R23 K36 ["story"]
      178 DUPTABLE                         R24 K37 [{"name", "story"}]
      179 LOADK                            R25 K46 ["Custom Content"]
      180 SETTABLEKS                       R25 R24 K35 ["name"]
      182 DUPCLOSURE                       R25 K47 [PROTO_11]
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R3
      185 CAPTURE                          VAL R13
      186 CAPTURE                          VAL R10
      187 CAPTURE                          VAL R15
      188 CAPTURE                          VAL R14
      189 CAPTURE                          VAL R6
      190 CAPTURE                          VAL R17
      191 SETTABLEKS                       R25 R24 K36 ["story"]
      193 DUPTABLE                         R25 K37 [{"name", "story"}]
      194 LOADK                            R26 K48 ["Embedded Media"]
      195 SETTABLEKS                       R26 R25 K35 ["name"]
      197 DUPCLOSURE                       R26 K49 [PROTO_12]
      198 CAPTURE                          VAL R3
      199 CAPTURE                          VAL R15
      200 CAPTURE                          VAL R6
      201 CAPTURE                          VAL R17
      202 SETTABLEKS                       R26 R25 K36 ["story"]
      204 SETLIST                          R19 R20 6 [1]
      206 SETTABLEKS                       R19 R18 K32 ["stories"]
      208 DUPTABLE                         R19 K69 [{"title", "content", "actionsLabel", "actionsOrientation", "hasActions", "disablePortal", "hasBackdrop", "media", "mediaSizeScaleX", "mediaSizeScaleY", "mediaSizeOffsetX", "mediaSizeOffsetY", "mediaAspectRatio", "heroMediaBackgroundStyle", "heroMediaAspectRatio", "heroMediaHeightScale", "heroMediaHeightOffset", "size", "mockScreenYOffset"}]
      209 LOADK                            R20 K70 ["Welcome Dialog"]
      210 SETTABLEKS                       R20 R19 K50 ["title"]
      212 LOADK                            R20 K71 ["This is a dialog with a very, very long description that spans multiple lines. Now, I'm not joking when I say that it has a lot to say. Really, a lot of things have a lot to say if you're willing to listen."]
      213 SETTABLEKS                       R20 R19 K51 ["content"]
      215 LOADK                            R20 K72 ["By selecting Primary, I consent to Roblox's collection, use, and storage of my data to enable services and for moderation, safety, and improvement of our services and tools."]
      216 SETTABLEKS                       R20 R19 K52 ["actionsLabel"]
      218 GETTABLEKS                       R20 R2 K73 ["values"]
      220 MOVE                             R21 R11
      221 CALL                             R20 1 1
      222 SETTABLEKS                       R20 R19 K53 ["actionsOrientation"]
      224 LOADB                            R20 1
      225 SETTABLEKS                       R20 R19 K54 ["hasActions"]
      227 LOADB                            R20 0
      228 SETTABLEKS                       R20 R19 K55 ["disablePortal"]
      230 LOADB                            R20 1
      231 SETTABLEKS                       R20 R19 K56 ["hasBackdrop"]
      233 NEWTABLE                         R20 0 2
      235 LOADK                            R21 K74 ["pictograms/avatar_setup"]
      236 LOADK                            R22 K75 ["component_assets/avatarBG_dark"]
      237 SETLIST                          R20 R21 2 [1]
      239 SETTABLEKS                       R20 R19 K57 ["media"]
      241 LOADN                            R20 1
      242 SETTABLEKS                       R20 R19 K58 ["mediaSizeScaleX"]
      244 LOADN                            R20 0
      245 SETTABLEKS                       R20 R19 K59 ["mediaSizeScaleY"]
      247 LOADN                            R20 0
      248 SETTABLEKS                       R20 R19 K60 ["mediaSizeOffsetX"]
      250 LOADN                            R20 100
      251 SETTABLEKS                       R20 R19 K61 ["mediaSizeOffsetY"]
      253 LOADN                            R20 0
      254 SETTABLEKS                       R20 R19 K62 ["mediaAspectRatio"]
      256 LOADB                            R20 0
      257 SETTABLEKS                       R20 R19 K63 ["heroMediaBackgroundStyle"]
      259 LOADK                            R20 K76 [2.5]
      260 SETTABLEKS                       R20 R19 K64 ["heroMediaAspectRatio"]
      262 LOADN                            R20 1
      263 SETTABLEKS                       R20 R19 K65 ["heroMediaHeightScale"]
      265 LOADN                            R20 0
      266 SETTABLEKS                       R20 R19 K66 ["heroMediaHeightOffset"]
      268 GETTABLEKS                       R20 R2 K73 ["values"]
      270 MOVE                             R21 R7
      271 CALL                             R20 1 1
      272 SETTABLEKS                       R20 R19 K67 ["size"]
      274 LOADN                            R20 32
      275 SETTABLEKS                       R20 R19 K68 ["mockScreenYOffset"]
      277 SETTABLEKS                       R19 R18 K33 ["controls"]
      279 RETURN                           R18 1
