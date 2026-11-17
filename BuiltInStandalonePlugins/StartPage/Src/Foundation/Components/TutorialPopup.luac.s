PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K6 [{[1] = "interaction", ["telemetrySubtype"] = "tutorial_popup", ["action"] = "close"}]
        3 NAMECALL                         R0 R0 K7 ["log"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K8 ["onClose"]
        9 JUMPIFNOT                        R0 ; [+4]
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K8 ["onClose"]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K6 [{[1] = "interaction", ["telemetrySubtype"] = "tutorial_popup", ["action"] = "go_home"}]
        3 NAMECALL                         R0 R0 K7 ["log"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K8 ["onClose"]
        9 JUMPIFNOT                        R0 ; [+4]
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K8 ["onClose"]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K6 [{[1] = "interaction", ["telemetrySubtype"] = "tutorial_popup", ["action"] = "start_tour"}]
        3 NAMECALL                         R0 R0 K7 ["log"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 2
        7 NAMECALL                         R0 R0 K8 ["startTutorial"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K1 ["createElement"]
       13 GETUPVAL                         R5 4
       14 DUPTABLE                         R6 K9 [{["Size"], ["ClipsDescendants"] = True, ["tag"] = "col radius-medium bg-surface-100", ["testId"] = "--start-page-TutorialPopup"}]
       15 GETIMPORT                        R7 K12 [UDim2.new]
       17 LOADN                            R8 0
       18 LOADN                            R9 640
       19 LOADN                            R10 0
       20 LOADN                            R11 546
       21 CALL                             R7 4 1
       22 SETTABLEKS                       R7 R6 K2 ["Size"]
       24 DUPTABLE                         R7 K15 [{"CityImage", "Content"}]
       25 GETUPVAL                         R8 3
       26 GETTABLEKS                       R8 R8 K1 ["createElement"]
       28 GETUPVAL                         R9 5
       29 DUPTABLE                         R10 K19 [{["Image"] = "rbxasset://textures/StartPage/Tour2Screenshot.png", ["Size"], ["tag"] = "align-x-right padding-medium"}]
       30 GETIMPORT                        R11 K12 [UDim2.new]
       32 LOADN                            R12 1
       33 LOADN                            R13 0
       34 LOADN                            R14 0
       35 LOADN                            R15 257
       36 CALL                             R11 4 1
       37 SETTABLEKS                       R11 R10 K2 ["Size"]
       39 GETUPVAL                         R11 3
       40 GETTABLEKS                       R11 R11 K1 ["createElement"]
       42 GETUPVAL                         R12 6
       43 DUPTABLE                         R13 K21 [{"onActivated"}]
       44 NEWCLOSURE                       R14 P0
       45 CAPTURE                          VAL R1
       46 CAPTURE                          UPVAL U7
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R14 R13 K20 ["onActivated"]
       50 CALL                             R11 2 -1
       51 CALL                             R8 -1 1
       52 SETTABLEKS                       R8 R7 K13 ["CityImage"]
       54 GETUPVAL                         R8 3
       55 GETTABLEKS                       R8 R8 K1 ["createElement"]
       57 GETUPVAL                         R9 4
       58 DUPTABLE                         R10 K23 [{["tag"] = "col fill size-full-0 auto-y padding-xxlarge"}]
       59 DUPTABLE                         R11 K26 [{"Text", "Actions"}]
       60 GETUPVAL                         R12 3
       61 GETTABLEKS                       R12 R12 K1 ["createElement"]
       63 GETUPVAL                         R13 4
       64 DUPTABLE                         R14 K29 [{["LayoutOrder"], ["tag"] = "col fill gap-medium size-full-0 auto-y"}]
       65 MOVE                             R15 R3
       66 CALL                             R15 0 1
       67 SETTABLEKS                       R15 R14 K27 ["LayoutOrder"]
       69 DUPTABLE                         R15 K32 [{"Heading", "Body"}]
       70 GETUPVAL                         R16 3
       71 GETTABLEKS                       R16 R16 K1 ["createElement"]
       73 GETUPVAL                         R17 8
       74 DUPTABLE                         R18 K34 [{["Text"], ["LayoutOrder"], ["tag"] = "size-full-0 auto-y text-heading-medium"}]
       75 LOADK                            R21 K35 ["Plugin"]
       76 LOADK                            R22 K36 ["TutorialPopup.Heading"]
       77 NAMECALL                         R19 R2 K37 ["getText"]
       79 CALL                             R19 3 1
       80 SETTABLEKS                       R19 R18 K24 ["Text"]
       82 MOVE                             R19 R3
       83 CALL                             R19 0 1
       84 SETTABLEKS                       R19 R18 K27 ["LayoutOrder"]
       86 CALL                             R16 2 1
       87 SETTABLEKS                       R16 R15 K30 ["Heading"]
       89 GETUPVAL                         R16 3
       90 GETTABLEKS                       R16 R16 K1 ["createElement"]
       92 GETUPVAL                         R17 8
       93 DUPTABLE                         R18 K41 [{["Text"], ["TextWrapped"] = True, ["TextYAlignment"], ["LayoutOrder"], ["tag"] = "size-full-0 auto-y text-body-medium"}]
       94 LOADK                            R21 K35 ["Plugin"]
       95 LOADK                            R22 K42 ["TutorialPopup.Body"]
       96 NAMECALL                         R19 R2 K37 ["getText"]
       98 CALL                             R19 3 1
       99 SETTABLEKS                       R19 R18 K24 ["Text"]
      101 GETIMPORT                        R19 K45 [Enum.TextYAlignment.Top]
      103 SETTABLEKS                       R19 R18 K39 ["TextYAlignment"]
      105 MOVE                             R19 R3
      106 CALL                             R19 0 1
      107 SETTABLEKS                       R19 R18 K27 ["LayoutOrder"]
      109 CALL                             R16 2 1
      110 SETTABLEKS                       R16 R15 K31 ["Body"]
      112 CALL                             R12 3 1
      113 SETTABLEKS                       R12 R11 K24 ["Text"]
      115 GETUPVAL                         R12 3
      116 GETTABLEKS                       R12 R12 K1 ["createElement"]
      118 GETUPVAL                         R13 4
      119 DUPTABLE                         R14 K47 [{["LayoutOrder"], ["tag"] = "row gap-medium size-full-0 auto-y"}]
      120 MOVE                             R15 R3
      121 CALL                             R15 0 1
      122 SETTABLEKS                       R15 R14 K27 ["LayoutOrder"]
      124 DUPTABLE                         R15 K50 [{"GoHome", "TakeTour"}]
      125 GETUPVAL                         R16 3
      126 GETTABLEKS                       R16 R16 K1 ["createElement"]
      128 GETUPVAL                         R17 9
      129 DUPTABLE                         R18 K55 [{["LayoutOrder"], ["variant"], ["fillBehavior"], ["text"], ["onActivated"], ["testId"] = "--start-page-TutorialPopup-go-home"}]
      130 MOVE                             R19 R3
      131 CALL                             R19 0 1
      132 SETTABLEKS                       R19 R18 K27 ["LayoutOrder"]
      134 GETUPVAL                         R19 10
      135 GETTABLEKS                       R19 R19 K24 ["Text"]
      137 SETTABLEKS                       R19 R18 K51 ["variant"]
      139 GETUPVAL                         R19 11
      140 GETTABLEKS                       R19 R19 K56 ["Fill"]
      142 SETTABLEKS                       R19 R18 K52 ["fillBehavior"]
      144 LOADK                            R21 K35 ["Plugin"]
      145 LOADK                            R22 K57 ["TutorialPopup.BackButton"]
      146 NAMECALL                         R19 R2 K37 ["getText"]
      148 CALL                             R19 3 1
      149 SETTABLEKS                       R19 R18 K53 ["text"]
      151 NEWCLOSURE                       R19 P1
      152 CAPTURE                          VAL R1
      153 CAPTURE                          UPVAL U7
      154 CAPTURE                          VAL R0
      155 SETTABLEKS                       R19 R18 K20 ["onActivated"]
      157 CALL                             R16 2 1
      158 SETTABLEKS                       R16 R15 K48 ["GoHome"]
      160 GETUPVAL                         R16 3
      161 GETTABLEKS                       R16 R16 K1 ["createElement"]
      163 GETUPVAL                         R17 9
      164 DUPTABLE                         R18 K58 [{"LayoutOrder", "variant", "fillBehavior", "text", "onActivated"}]
      165 MOVE                             R19 R3
      166 CALL                             R19 0 1
      167 SETTABLEKS                       R19 R18 K27 ["LayoutOrder"]
      169 GETUPVAL                         R19 10
      170 GETTABLEKS                       R19 R19 K59 ["Emphasis"]
      172 SETTABLEKS                       R19 R18 K51 ["variant"]
      174 GETUPVAL                         R19 11
      175 GETTABLEKS                       R19 R19 K56 ["Fill"]
      177 SETTABLEKS                       R19 R18 K52 ["fillBehavior"]
      179 LOADK                            R21 K35 ["Plugin"]
      180 LOADK                            R22 K60 ["TutorialPopup.StartButton"]
      181 NAMECALL                         R19 R2 K37 ["getText"]
      183 CALL                             R19 3 1
      184 SETTABLEKS                       R19 R18 K53 ["text"]
      186 NEWCLOSURE                       R19 P2
      187 CAPTURE                          VAL R1
      188 CAPTURE                          UPVAL U7
      189 CAPTURE                          UPVAL U12
      190 SETTABLEKS                       R19 R18 K20 ["onActivated"]
      192 CALL                             R16 2 1
      193 SETTABLEKS                       R16 R15 K49 ["TakeTour"]
      195 CALL                             R12 3 1
      196 SETTABLEKS                       R12 R11 K25 ["Actions"]
      198 CALL                             R8 3 1
      199 SETTABLEKS                       R8 R7 K14 ["Content"]
      201 CALL                             R4 3 -1
      202 RETURN                           R4 -1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 LOADNIL                          R3
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["createElement"]
        8 GETUPVAL                         R5 2
        9 DUPTABLE                         R6 K2 [{"OnFocusLost"}]
       10 DUPCLOSURE                       R7 K3 [PROTO_4]
       11 SETTABLEKS                       R7 R6 K1 ["OnFocusLost"]
       13 DUPTABLE                         R7 K6 [{"DarkBackground", "PopupContainer"}]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K0 ["createElement"]
       17 GETUPVAL                         R9 3
       18 DUPTABLE                         R10 K9 [{["tag"] = "size-full bg-over-media-0"}]
       19 CALL                             R8 2 1
       20 SETTABLEKS                       R8 R7 K4 ["DarkBackground"]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K0 ["createElement"]
       25 GETUPVAL                         R9 3
       26 DUPTABLE                         R10 K11 [{["tag"] = "align-x-center align-y-center size-full"}]
       27 GETUPVAL                         R11 0
       28 GETTABLEKS                       R11 R11 K0 ["createElement"]
       30 GETUPVAL                         R12 4
       31 MOVE                             R13 R0
       32 CALL                             R11 2 -1
       33 CALL                             R8 -1 1
       34 SETTABLEKS                       R8 R7 K5 ["PopupContainer"]
       36 CALL                             R4 3 -1
       37 CALL                             R1 -1 -1
       38 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R3 R3 K10 ["Localization"]
       25 GETTABLEKS                       R4 R2 K11 ["Util"]
       27 GETTABLEKS                       R4 R4 K12 ["counter"]
       29 GETTABLEKS                       R5 R2 K13 ["UI"]
       31 GETTABLEKS                       R6 R5 K14 ["CaptureFocus"]
       33 GETIMPORT                        R7 K5 [require]
       35 GETTABLEKS                       R8 R0 K15 ["Src"]
       37 GETTABLEKS                       R8 R8 K11 ["Util"]
       39 GETTABLEKS                       R8 R8 K16 ["Foundation"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R8 R7 K17 ["Image"]
       44 GETTABLEKS                       R9 R7 K18 ["Text"]
       46 GETTABLEKS                       R10 R7 K19 ["Button"]
       48 GETTABLEKS                       R11 R7 K20 ["Enums"]
       50 GETTABLEKS                       R11 R11 K21 ["ButtonVariant"]
       52 GETTABLEKS                       R12 R7 K20 ["Enums"]
       54 GETTABLEKS                       R12 R12 K22 ["FillBehavior"]
       56 GETIMPORT                        R13 K5 [require]
       58 GETTABLEKS                       R14 R0 K15 ["Src"]
       60 GETTABLEKS                       R14 R14 K23 ["Components"]
       62 GETTABLEKS                       R14 R14 K24 ["CursorScope"]
       64 CALL                             R13 1 1
       65 GETIMPORT                        R14 K5 [require]
       67 GETTABLEKS                       R15 R0 K15 ["Src"]
       69 GETTABLEKS                       R15 R15 K16 ["Foundation"]
       71 GETTABLEKS                       R15 R15 K23 ["Components"]
       73 GETTABLEKS                       R15 R15 K25 ["Frame"]
       75 CALL                             R14 1 1
       76 GETIMPORT                        R15 K5 [require]
       78 GETTABLEKS                       R16 R0 K15 ["Src"]
       80 GETTABLEKS                       R16 R16 K16 ["Foundation"]
       82 GETTABLEKS                       R16 R16 K23 ["Components"]
       84 GETTABLEKS                       R16 R16 K26 ["OverMediaCloseButton"]
       86 CALL                             R15 1 1
       87 GETIMPORT                        R16 K5 [require]
       89 GETTABLEKS                       R17 R0 K15 ["Src"]
       91 GETTABLEKS                       R17 R17 K11 ["Util"]
       93 GETTABLEKS                       R17 R17 K27 ["Telemetry"]
       95 GETTABLEKS                       R17 R17 K28 ["TelemetryContext"]
       97 CALL                             R16 1 1
       98 GETIMPORT                        R17 K5 [require]
      100 GETTABLEKS                       R18 R0 K15 ["Src"]
      102 GETTABLEKS                       R18 R18 K11 ["Util"]
      104 GETTABLEKS                       R18 R18 K27 ["Telemetry"]
      106 GETTABLEKS                       R18 R18 K29 ["StartPageTelemetryEvent"]
      108 CALL                             R17 1 1
      109 GETIMPORT                        R18 K5 [require]
      111 GETTABLEKS                       R19 R0 K15 ["Src"]
      113 GETTABLEKS                       R19 R19 K11 ["Util"]
      115 GETTABLEKS                       R19 R19 K30 ["Services"]
      117 CALL                             R18 1 1
      118 GETTABLEKS                       R19 R18 K31 ["StartPageManager"]
      120 DUPCLOSURE                       R20 K32 [PROTO_3]
      121 CAPTURE                          VAL R16
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R17
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R19
      134 DUPCLOSURE                       R21 K33 [PROTO_5]
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R20
      140 RETURN                           R21 1
