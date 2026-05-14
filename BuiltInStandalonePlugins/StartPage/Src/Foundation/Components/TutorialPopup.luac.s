PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K3 [{"telemetryType", "telemetrySubtype", "action"}]
        3 LOADK                            R4 K4 ["interaction"]
        4 SETTABLEKS                       R4 R3 K0 ["telemetryType"]
        6 LOADK                            R4 K5 ["tutorial_popup"]
        7 SETTABLEKS                       R4 R3 K1 ["telemetrySubtype"]
        9 LOADK                            R4 K6 ["close"]
       10 SETTABLEKS                       R4 R3 K2 ["action"]
       12 NAMECALL                         R0 R0 K7 ["log"]
       14 CALL                             R0 3 0
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K8 ["onClose"]
       18 JUMPIFNOT                        R0 ; [+4]
       19 GETUPVAL                         R0 2
       20 GETTABLEKS                       R0 R0 K8 ["onClose"]
       22 CALL                             R0 0 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K3 [{"telemetryType", "telemetrySubtype", "action"}]
        3 LOADK                            R4 K4 ["interaction"]
        4 SETTABLEKS                       R4 R3 K0 ["telemetryType"]
        6 LOADK                            R4 K5 ["tutorial_popup"]
        7 SETTABLEKS                       R4 R3 K1 ["telemetrySubtype"]
        9 LOADK                            R4 K6 ["go_home"]
       10 SETTABLEKS                       R4 R3 K2 ["action"]
       12 NAMECALL                         R0 R0 K7 ["log"]
       14 CALL                             R0 3 0
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K8 ["onClose"]
       18 JUMPIFNOT                        R0 ; [+4]
       19 GETUPVAL                         R0 2
       20 GETTABLEKS                       R0 R0 K8 ["onClose"]
       22 CALL                             R0 0 0
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K3 [{"telemetryType", "telemetrySubtype", "action"}]
        3 LOADK                            R4 K4 ["interaction"]
        4 SETTABLEKS                       R4 R3 K0 ["telemetryType"]
        6 LOADK                            R4 K5 ["tutorial_popup"]
        7 SETTABLEKS                       R4 R3 K1 ["telemetrySubtype"]
        9 LOADK                            R4 K6 ["start_tour"]
       10 SETTABLEKS                       R4 R3 K2 ["action"]
       12 NAMECALL                         R0 R0 K7 ["log"]
       14 CALL                             R0 3 0
       15 GETUPVAL                         R0 2
       16 NAMECALL                         R0 R0 K8 ["startTutorial"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

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
       14 DUPTABLE                         R6 K6 [{"Size", "ClipsDescendants", "tag", "testId"}]
       15 GETIMPORT                        R7 K9 [UDim2.new]
       17 LOADN                            R8 0
       18 LOADN                            R9 128
       19 LOADN                            R10 0
       20 LOADN                            R11 34
       21 CALL                             R7 4 1
       22 SETTABLEKS                       R7 R6 K2 ["Size"]
       24 LOADB                            R7 1
       25 SETTABLEKS                       R7 R6 K3 ["ClipsDescendants"]
       27 LOADK                            R7 K10 ["bg-surface-100 radius-medium col"]
       28 SETTABLEKS                       R7 R6 K4 ["tag"]
       30 LOADK                            R7 K11 ["--start-page-TutorialPopup"]
       31 SETTABLEKS                       R7 R6 K5 ["testId"]
       33 DUPTABLE                         R7 K14 [{"CityImage", "Content"}]
       34 GETUPVAL                         R8 3
       35 GETTABLEKS                       R8 R8 K1 ["createElement"]
       37 GETUPVAL                         R9 5
       38 DUPTABLE                         R10 K16 [{"Image", "Size", "tag"}]
       39 LOADK                            R11 K17 ["rbxasset://textures/StartPage/Tour2Screenshot.png"]
       40 SETTABLEKS                       R11 R10 K15 ["Image"]
       42 GETIMPORT                        R11 K9 [UDim2.new]
       44 LOADN                            R12 1
       45 LOADN                            R13 0
       46 LOADN                            R14 0
       47 LOADN                            R15 1
       48 CALL                             R11 4 1
       49 SETTABLEKS                       R11 R10 K2 ["Size"]
       51 LOADK                            R11 K18 ["align-x-right padding-medium"]
       52 SETTABLEKS                       R11 R10 K4 ["tag"]
       54 GETUPVAL                         R11 3
       55 GETTABLEKS                       R11 R11 K1 ["createElement"]
       57 GETUPVAL                         R12 6
       58 DUPTABLE                         R13 K20 [{"onActivated"}]
       59 NEWCLOSURE                       R14 P0
       60 CAPTURE                          VAL R1
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R14 R13 K19 ["onActivated"]
       65 CALL                             R11 2 -1
       66 CALL                             R8 -1 1
       67 SETTABLEKS                       R8 R7 K12 ["CityImage"]
       69 GETUPVAL                         R8 3
       70 GETTABLEKS                       R8 R8 K1 ["createElement"]
       72 GETUPVAL                         R9 4
       73 DUPTABLE                         R10 K21 [{"tag"}]
       74 LOADK                            R11 K22 ["col auto-y size-full-0 padding-xxlarge fill"]
       75 SETTABLEKS                       R11 R10 K4 ["tag"]
       77 DUPTABLE                         R11 K25 [{"Text", "Actions"}]
       78 GETUPVAL                         R12 3
       79 GETTABLEKS                       R12 R12 K1 ["createElement"]
       81 GETUPVAL                         R13 4
       82 DUPTABLE                         R14 K27 [{"LayoutOrder", "tag"}]
       83 MOVE                             R15 R3
       84 CALL                             R15 0 1
       85 SETTABLEKS                       R15 R14 K26 ["LayoutOrder"]
       87 LOADK                            R15 K28 ["auto-y size-full-0 col gap-medium fill"]
       88 SETTABLEKS                       R15 R14 K4 ["tag"]
       90 DUPTABLE                         R15 K31 [{"Heading", "Body"}]
       91 GETUPVAL                         R16 3
       92 GETTABLEKS                       R16 R16 K1 ["createElement"]
       94 GETUPVAL                         R17 8
       95 DUPTABLE                         R18 K32 [{"Text", "LayoutOrder", "tag"}]
       96 LOADK                            R21 K33 ["Plugin"]
       97 LOADK                            R22 K34 ["TutorialPopup.Heading"]
       98 NAMECALL                         R19 R2 K35 ["getText"]
      100 CALL                             R19 3 1
      101 SETTABLEKS                       R19 R18 K23 ["Text"]
      103 MOVE                             R19 R3
      104 CALL                             R19 0 1
      105 SETTABLEKS                       R19 R18 K26 ["LayoutOrder"]
      107 LOADK                            R19 K36 ["auto-y size-full-0 text-heading-medium"]
      108 SETTABLEKS                       R19 R18 K4 ["tag"]
      110 CALL                             R16 2 1
      111 SETTABLEKS                       R16 R15 K29 ["Heading"]
      113 GETUPVAL                         R16 3
      114 GETTABLEKS                       R16 R16 K1 ["createElement"]
      116 GETUPVAL                         R17 8
      117 DUPTABLE                         R18 K39 [{"Text", "TextWrapped", "TextYAlignment", "LayoutOrder", "tag"}]
      118 LOADK                            R21 K33 ["Plugin"]
      119 LOADK                            R22 K40 ["TutorialPopup.Body"]
      120 NAMECALL                         R19 R2 K35 ["getText"]
      122 CALL                             R19 3 1
      123 SETTABLEKS                       R19 R18 K23 ["Text"]
      125 LOADB                            R19 1
      126 SETTABLEKS                       R19 R18 K37 ["TextWrapped"]
      128 GETIMPORT                        R19 K43 [Enum.TextYAlignment.Top]
      130 SETTABLEKS                       R19 R18 K38 ["TextYAlignment"]
      132 MOVE                             R19 R3
      133 CALL                             R19 0 1
      134 SETTABLEKS                       R19 R18 K26 ["LayoutOrder"]
      136 LOADK                            R19 K44 ["auto-y size-full-0 text-body-medium"]
      137 SETTABLEKS                       R19 R18 K4 ["tag"]
      139 CALL                             R16 2 1
      140 SETTABLEKS                       R16 R15 K30 ["Body"]
      142 CALL                             R12 3 1
      143 SETTABLEKS                       R12 R11 K23 ["Text"]
      145 GETUPVAL                         R12 3
      146 GETTABLEKS                       R12 R12 K1 ["createElement"]
      148 GETUPVAL                         R13 4
      149 DUPTABLE                         R14 K27 [{"LayoutOrder", "tag"}]
      150 MOVE                             R15 R3
      151 CALL                             R15 0 1
      152 SETTABLEKS                       R15 R14 K26 ["LayoutOrder"]
      154 LOADK                            R15 K45 ["auto-y size-full-0 row gap-medium"]
      155 SETTABLEKS                       R15 R14 K4 ["tag"]
      157 DUPTABLE                         R15 K48 [{"GoHome", "TakeTour"}]
      158 GETUPVAL                         R16 3
      159 GETTABLEKS                       R16 R16 K1 ["createElement"]
      161 GETUPVAL                         R17 9
      162 DUPTABLE                         R18 K52 [{"LayoutOrder", "variant", "fillBehavior", "text", "onActivated", "testId"}]
      163 MOVE                             R19 R3
      164 CALL                             R19 0 1
      165 SETTABLEKS                       R19 R18 K26 ["LayoutOrder"]
      167 GETUPVAL                         R19 10
      168 GETTABLEKS                       R19 R19 K23 ["Text"]
      170 SETTABLEKS                       R19 R18 K49 ["variant"]
      172 GETUPVAL                         R19 11
      173 GETTABLEKS                       R19 R19 K53 ["Fill"]
      175 SETTABLEKS                       R19 R18 K50 ["fillBehavior"]
      177 LOADK                            R21 K33 ["Plugin"]
      178 LOADK                            R22 K54 ["TutorialPopup.BackButton"]
      179 NAMECALL                         R19 R2 K35 ["getText"]
      181 CALL                             R19 3 1
      182 SETTABLEKS                       R19 R18 K51 ["text"]
      184 NEWCLOSURE                       R19 P1
      185 CAPTURE                          VAL R1
      186 CAPTURE                          UPVAL U7
      187 CAPTURE                          VAL R0
      188 SETTABLEKS                       R19 R18 K19 ["onActivated"]
      190 LOADK                            R19 K55 ["--start-page-TutorialPopup-go-home"]
      191 SETTABLEKS                       R19 R18 K5 ["testId"]
      193 CALL                             R16 2 1
      194 SETTABLEKS                       R16 R15 K46 ["GoHome"]
      196 GETUPVAL                         R16 3
      197 GETTABLEKS                       R16 R16 K1 ["createElement"]
      199 GETUPVAL                         R17 9
      200 DUPTABLE                         R18 K56 [{"LayoutOrder", "variant", "fillBehavior", "text", "onActivated"}]
      201 MOVE                             R19 R3
      202 CALL                             R19 0 1
      203 SETTABLEKS                       R19 R18 K26 ["LayoutOrder"]
      205 GETUPVAL                         R19 10
      206 GETTABLEKS                       R19 R19 K57 ["Emphasis"]
      208 SETTABLEKS                       R19 R18 K49 ["variant"]
      210 GETUPVAL                         R19 11
      211 GETTABLEKS                       R19 R19 K53 ["Fill"]
      213 SETTABLEKS                       R19 R18 K50 ["fillBehavior"]
      215 LOADK                            R21 K33 ["Plugin"]
      216 LOADK                            R22 K58 ["TutorialPopup.StartButton"]
      217 NAMECALL                         R19 R2 K35 ["getText"]
      219 CALL                             R19 3 1
      220 SETTABLEKS                       R19 R18 K51 ["text"]
      222 NEWCLOSURE                       R19 P2
      223 CAPTURE                          VAL R1
      224 CAPTURE                          UPVAL U7
      225 CAPTURE                          UPVAL U12
      226 SETTABLEKS                       R19 R18 K19 ["onActivated"]
      228 CALL                             R16 2 1
      229 SETTABLEKS                       R16 R15 K47 ["TakeTour"]
      231 CALL                             R12 3 1
      232 SETTABLEKS                       R12 R11 K24 ["Actions"]
      234 CALL                             R8 3 1
      235 SETTABLEKS                       R8 R7 K13 ["Content"]
      237 CALL                             R4 3 -1
      238 RETURN                           R4 -1

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
       18 DUPTABLE                         R10 K8 [{"tag"}]
       19 LOADK                            R11 K9 ["size-full bg-over-media-0"]
       20 SETTABLEKS                       R11 R10 K7 ["tag"]
       22 CALL                             R8 2 1
       23 SETTABLEKS                       R8 R7 K4 ["DarkBackground"]
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R8 R8 K0 ["createElement"]
       28 GETUPVAL                         R9 3
       29 DUPTABLE                         R10 K8 [{"tag"}]
       30 LOADK                            R11 K10 ["size-full align-x-center align-y-center"]
       31 SETTABLEKS                       R11 R10 K7 ["tag"]
       33 GETUPVAL                         R11 0
       34 GETTABLEKS                       R11 R11 K0 ["createElement"]
       36 GETUPVAL                         R12 4
       37 MOVE                             R13 R0
       38 CALL                             R11 2 -1
       39 CALL                             R8 -1 1
       40 SETTABLEKS                       R8 R7 K5 ["PopupContainer"]
       42 CALL                             R4 3 -1
       43 CALL                             R1 -1 -1
       44 RETURN                           R1 -1

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
