PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["canvasState"]
        3 LOADK                            R3 K1 ["zoomScaleRequested"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K2 ["emit"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 JUMPIFNOTEQKS                    R1 K1 ["zoom-50"] ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K2 ["canvasState"]
        7 LOADK                            R3 K3 ["zoomScaleRequested"]
        8 LOADK                            R4 K4 [0.5]
        9 NAMECALL                         R1 R1 K5 ["emit"]
       11 CALL                             R1 3 0
       12 RETURN                           R0 0
       13 GETTABLEKS                       R1 R0 K0 ["id"]
       15 JUMPIFNOTEQKS                    R1 K6 ["zoom-100"] ; [+10]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K2 ["canvasState"]
       20 LOADK                            R3 K3 ["zoomScaleRequested"]
       21 LOADN                            R4 1
       22 NAMECALL                         R1 R1 K5 ["emit"]
       24 CALL                             R1 3 0
       25 RETURN                           R0 0
       26 GETTABLEKS                       R1 R0 K0 ["id"]
       28 JUMPIFNOTEQKS                    R1 K7 ["zoom-200"] ; [+10]
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R1 R1 K2 ["canvasState"]
       33 LOADK                            R3 K3 ["zoomScaleRequested"]
       34 LOADN                            R4 2
       35 NAMECALL                         R1 R1 K5 ["emit"]
       37 CALL                             R1 3 0
       38 RETURN                           R0 0
       39 GETTABLEKS                       R1 R0 K0 ["id"]
       41 JUMPIFNOTEQKS                    R1 K8 ["zoom-fit"] ; [+8]
       43 GETUPVAL                         R1 0
       44 GETTABLEKS                       R1 R1 K2 ["canvasState"]
       46 LOADK                            R3 K9 ["zoomToFitRequested"]
       47 NAMECALL                         R1 R1 K5 ["emit"]
       49 CALL                             R1 2 0
       50 RETURN                           R0 0

PROTO_3:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_3]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useRef"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K2 ["formatZoomPercent"]
       13 GETTABLEKS                       R5 R0 K3 ["zoomScale"]
       15 CALL                             R4 1 1
       16 GETTABLEKS                       R5 R0 K4 ["tokens"]
       18 GETTABLEKS                       R5 R5 K5 ["Color"]
       20 GETTABLEKS                       R5 R5 K6 ["ActionUtility"]
       22 GETTABLEKS                       R6 R5 K7 ["Border"]
       24 JUMPIF                           R6 ; [+8]
       25 GETTABLEKS                       R6 R0 K4 ["tokens"]
       27 GETTABLEKS                       R6 R6 K5 ["Color"]
       29 GETTABLEKS                       R6 R6 K8 ["Stroke"]
       31 GETTABLEKS                       R6 R6 K9 ["Default"]
       33 NEWCLOSURE                       R7 P0
       34 CAPTURE                          VAL R2
       35 NEWCLOSURE                       R8 P1
       36 CAPTURE                          VAL R0
       37 NEWCLOSURE                       R9 P2
       38 CAPTURE                          VAL R0
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K10 ["createElement"]
       42 GETUPVAL                         R11 2
       43 GETTABLEKS                       R11 R11 K11 ["View"]
       45 DUPTABLE                         R12 K20 [{["ref"], ["Size"], ["tag"] = "row align-y-center align-x-center gap-xsmall radius-small", ["backgroundStyle"], ["stroke"], ["padding"], ["onActivated"]}]
       46 SETTABLEKS                       R3 R12 K12 ["ref"]
       48 GETIMPORT                        R13 K23 [UDim2.fromOffset]
       50 LOADN                            R14 65
       51 GETTABLEKS                       R15 R0 K24 ["chromeControlHeight"]
       53 CALL                             R13 2 1
       54 SETTABLEKS                       R13 R12 K13 ["Size"]
       56 JUMPIFNOT                        R1 ; [+9]
       57 GETTABLEKS                       R13 R0 K4 ["tokens"]
       59 GETTABLEKS                       R13 R13 K5 ["Color"]
       61 GETTABLEKS                       R13 R13 K25 ["Surface"]
       63 GETTABLEKS                       R13 R13 K26 ["Surface_100"]
       65 JUMP                             ; [+2]
       66 GETTABLEKS                       R13 R5 K27 ["Background"]
       68 SETTABLEKS                       R13 R12 K16 ["backgroundStyle"]
       70 DUPTABLE                         R13 K31 [{["Color"], ["Transparency"], ["Thickness"] = 1}]
       71 GETTABLEKS                       R14 R6 K32 ["Color3"]
       73 SETTABLEKS                       R14 R13 K5 ["Color"]
       75 GETTABLEKS                       R14 R6 K28 ["Transparency"]
       77 SETTABLEKS                       R14 R13 K28 ["Transparency"]
       79 SETTABLEKS                       R13 R12 K17 ["stroke"]
       81 DUPTABLE                         R13 K35 [{"left", "right"}]
       82 GETIMPORT                        R14 K38 [UDim.new]
       84 LOADN                            R15 0
       85 LOADN                            R16 8
       86 CALL                             R14 2 1
       87 SETTABLEKS                       R14 R13 K33 ["left"]
       89 GETIMPORT                        R14 K38 [UDim.new]
       91 LOADN                            R15 0
       92 LOADN                            R16 6
       93 CALL                             R14 2 1
       94 SETTABLEKS                       R14 R13 K34 ["right"]
       96 SETTABLEKS                       R13 R12 K18 ["padding"]
       98 NEWCLOSURE                       R13 P3
       99 CAPTURE                          VAL R2
      100 SETTABLEKS                       R13 R12 K19 ["onActivated"]
      102 DUPTABLE                         R13 K41 [{"Label", "Chevron"}]
      103 GETUPVAL                         R14 0
      104 GETTABLEKS                       R14 R14 K10 ["createElement"]
      106 GETUPVAL                         R15 2
      107 GETTABLEKS                       R15 R15 K42 ["Text"]
      109 DUPTABLE                         R16 K47 [{["Text"], ["TextTruncate"], ["LayoutOrder"] = 1, ["textStyle"], ["tag"] = "fill size-full-0 text-body-small text-align-x-left text-align-y-center"}]
      110 SETTABLEKS                       R4 R16 K42 ["Text"]
      112 GETIMPORT                        R17 K50 [Enum.TextTruncate.AtEnd]
      114 SETTABLEKS                       R17 R16 K43 ["TextTruncate"]
      116 GETTABLEKS                       R17 R5 K51 ["Foreground"]
      118 SETTABLEKS                       R17 R16 K45 ["textStyle"]
      120 CALL                             R14 2 1
      121 SETTABLEKS                       R14 R13 K39 ["Label"]
      123 GETUPVAL                         R14 0
      124 GETTABLEKS                       R14 R14 K10 ["createElement"]
      126 GETUPVAL                         R15 2
      127 GETTABLEKS                       R15 R15 K52 ["Icon"]
      129 DUPTABLE                         R16 K57 [{["name"], ["size"], ["style"], ["LayoutOrder"] = 2}]
      130 JUMPIFNOT                        R1 ; [+8]
      131 GETUPVAL                         R17 2
      132 GETTABLEKS                       R17 R17 K58 ["Enums"]
      134 GETTABLEKS                       R17 R17 K59 ["IconName"]
      136 GETTABLEKS                       R17 R17 K60 ["ChevronLargeUp"]
      138 JUMP                             ; [+7]
      139 GETUPVAL                         R17 2
      140 GETTABLEKS                       R17 R17 K58 ["Enums"]
      142 GETTABLEKS                       R17 R17 K59 ["IconName"]
      144 GETTABLEKS                       R17 R17 K61 ["ChevronLargeDown"]
      146 SETTABLEKS                       R17 R16 K53 ["name"]
      148 GETUPVAL                         R17 2
      149 GETTABLEKS                       R17 R17 K58 ["Enums"]
      151 GETTABLEKS                       R17 R17 K62 ["IconSize"]
      153 GETTABLEKS                       R17 R17 K63 ["XSmall"]
      155 SETTABLEKS                       R17 R16 K54 ["size"]
      157 GETTABLEKS                       R17 R5 K51 ["Foreground"]
      159 SETTABLEKS                       R17 R16 K55 ["style"]
      161 CALL                             R14 2 1
      162 SETTABLEKS                       R14 R13 K40 ["Chevron"]
      164 CALL                             R10 3 1
      165 GETUPVAL                         R11 0
      166 GETTABLEKS                       R11 R11 K10 ["createElement"]
      168 GETUPVAL                         R12 3
      169 GETTABLEKS                       R12 R12 K64 ["Anchored"]
      171 DUPTABLE                         R13 K74 [{["isOpen"], ["anchorRef"], ["trigger"], ["items"], ["width"] = 164, ["side"], ["align"], ["onClose"], ["onActivated"]}]
      172 SETTABLEKS                       R1 R13 K65 ["isOpen"]
      174 SETTABLEKS                       R3 R13 K66 ["anchorRef"]
      176 SETTABLEKS                       R10 R13 K67 ["trigger"]
      178 GETUPVAL                         R14 4
      179 SETTABLEKS                       R14 R13 K68 ["items"]
      181 GETUPVAL                         R14 2
      182 GETTABLEKS                       R14 R14 K58 ["Enums"]
      184 GETTABLEKS                       R14 R14 K75 ["PopoverSide"]
      186 GETTABLEKS                       R14 R14 K76 ["Bottom"]
      188 SETTABLEKS                       R14 R13 K71 ["side"]
      190 GETUPVAL                         R14 2
      191 GETTABLEKS                       R14 R14 K58 ["Enums"]
      193 GETTABLEKS                       R14 R14 K77 ["PopoverAlign"]
      195 GETTABLEKS                       R14 R14 K78 ["End"]
      197 SETTABLEKS                       R14 R13 K72 ["align"]
      199 SETTABLEKS                       R7 R13 K73 ["onClose"]
      201 SETTABLEKS                       R9 R13 K19 ["onActivated"]
      203 CALL                             R11 2 -1
      204 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["Menu"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K12 ["Parent"]
       36 GETTABLEKS                       R5 R5 K13 ["ZoomLogic"]
       38 CALL                             R4 1 1
       39 NEWTABLE                         R5 0 4
       41 DUPTABLE                         R6 K18 [{["id"] = "zoom-50", ["label"] = "Zoom to 50%"}]
       42 DUPTABLE                         R7 K21 [{["id"] = "zoom-100", ["label"] = "Zoom to 100%"}]
       43 DUPTABLE                         R8 K24 [{["id"] = "zoom-200", ["label"] = "Zoom to 200%"}]
       44 DUPTABLE                         R9 K27 [{["id"] = "zoom-fit", ["label"] = "Zoom to fit"}]
       45 SETLIST                          R5 R6 4 [1]
       47 DUPCLOSURE                       R6 K28 [PROTO_5]
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R5
       53 RETURN                           R6 1
