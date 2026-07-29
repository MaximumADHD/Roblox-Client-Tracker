PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onCommit"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["id"]
        6 GETUPVAL                         R3 2
        7 JUMPIFNOTEQKB                    R3 TRUE ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onCommit"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["id"]
        6 GETTABLEKS                       R3 R0 K2 ["Text"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["control"]
        2 GETTABLEKS                       R2 R0 K1 ["value"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+3]
        6 LOADK                            R3 K2 [""]
        7 JUMP                             ; [+5]
        8 FASTCALL1                        TOSTRING R2 ; [+3]
        9 MOVE                             R4 R2
       10 GETIMPORT                        R3 K4 [tostring]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K5 ["createElement"]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K6 ["View"]
       19 DUPTABLE                         R6 K11 [{["Size"], ["LayoutOrder"], ["tag"] = "col gap-xsmall"}]
       20 GETIMPORT                        R7 K14 [UDim2.new]
       22 LOADN                            R8 1
       23 LOADN                            R9 0
       24 LOADN                            R10 0
       25 LOADN                            R11 52
       26 CALL                             R7 4 1
       27 SETTABLEKS                       R7 R6 K7 ["Size"]
       29 GETTABLEKS                       R7 R0 K15 ["layoutOrder"]
       31 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       33 DUPTABLE                         R7 K18 [{"Label", "Input"}]
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K5 ["createElement"]
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R9 R9 K19 ["Text"]
       40 DUPTABLE                         R10 K22 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-y text-label-small content-emphasis text-align-x-left"}]
       41 GETTABLEKS                       R11 R1 K23 ["label"]
       43 JUMPIF                           R11 ; [+2]
       44 GETTABLEKS                       R11 R1 K24 ["id"]
       46 SETTABLEKS                       R11 R10 K19 ["Text"]
       48 CALL                             R8 2 1
       49 SETTABLEKS                       R8 R7 K16 ["Label"]
       51 GETTABLEKS                       R9 R1 K25 ["type"]
       53 JUMPIFNOTEQKS                    R9 K26 ["boolean"] ; [+41]
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R8 R8 K5 ["createElement"]
       58 GETUPVAL                         R9 1
       59 GETTABLEKS                       R9 R9 K27 ["Button"]
       61 DUPTABLE                         R10 K33 [{["LayoutOrder"] = 2, ["text"], ["size"], ["variant"], ["onActivated"]}]
       62 JUMPIFNOTEQKB                    R2 TRUE ; [+3]
       64 LOADK                            R11 K34 ["On"]
       65 JUMP                             ; [+1]
       66 LOADK                            R11 K35 ["Off"]
       67 SETTABLEKS                       R11 R10 K29 ["text"]
       69 GETUPVAL                         R11 1
       70 GETTABLEKS                       R11 R11 K36 ["Enums"]
       72 GETTABLEKS                       R11 R11 K37 ["InputSize"]
       74 GETTABLEKS                       R11 R11 K38 ["Small"]
       76 SETTABLEKS                       R11 R10 K30 ["size"]
       78 GETUPVAL                         R11 1
       79 GETTABLEKS                       R11 R11 K36 ["Enums"]
       81 GETTABLEKS                       R11 R11 K39 ["ButtonVariant"]
       83 GETTABLEKS                       R11 R11 K40 ["Standard"]
       85 SETTABLEKS                       R11 R10 K31 ["variant"]
       87 NEWCLOSURE                       R11 P0
       88 CAPTURE                          VAL R0
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R2
       91 SETTABLEKS                       R11 R10 K32 ["onActivated"]
       93 CALL                             R8 2 1
       94 JUMP                             ; [+59]
       95 GETUPVAL                         R8 0
       96 GETTABLEKS                       R8 R8 K5 ["createElement"]
       98 LOADK                            R9 K41 ["TextBox"]
       99 NEWTABLE                         R10 16 0
      101 LOADN                            R11 2
      102 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
      104 GETIMPORT                        R11 K14 [UDim2.new]
      106 LOADN                            R12 1
      107 LOADN                            R13 0
      108 LOADN                            R14 0
      109 LOADN                            R15 28
      110 CALL                             R11 4 1
      111 SETTABLEKS                       R11 R10 K7 ["Size"]
      113 GETIMPORT                        R11 K44 [Color3.fromRGB]
      115 LOADN                            R12 45
      116 LOADN                            R13 46
      117 LOADN                            R14 49
      118 CALL                             R11 3 1
      119 SETTABLEKS                       R11 R10 K45 ["BackgroundColor3"]
      121 LOADN                            R11 0
      122 SETTABLEKS                       R11 R10 K46 ["BorderSizePixel"]
      124 LOADB                            R11 0
      125 SETTABLEKS                       R11 R10 K47 ["ClearTextOnFocus"]
      127 SETTABLEKS                       R3 R10 K19 ["Text"]
      129 GETIMPORT                        R11 K44 [Color3.fromRGB]
      131 LOADN                            R12 230
      132 LOADN                            R13 230
      133 LOADN                            R14 230
      134 CALL                             R11 3 1
      135 SETTABLEKS                       R11 R10 K48 ["TextColor3"]
      137 LOADN                            R11 12
      138 SETTABLEKS                       R11 R10 K49 ["TextSize"]
      140 GETIMPORT                        R11 K53 [Enum.Font.BuilderSans]
      142 SETTABLEKS                       R11 R10 K51 ["Font"]
      144 GETUPVAL                         R11 0
      145 GETTABLEKS                       R11 R11 K54 ["Event"]
      147 GETTABLEKS                       R11 R11 K55 ["FocusLost"]
      149 NEWCLOSURE                       R12 P1
      150 CAPTURE                          VAL R0
      151 CAPTURE                          VAL R1
      152 SETTABLE                         R12 R10 R11
      153 CALL                             R8 2 1
      154 SETTABLEKS                       R8 R7 K17 ["Input"]
      156 CALL                             R4 3 -1
      157 RETURN                           R4 -1

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"Layout"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["createElement"]
        4 LOADK                            R3 K3 ["UIListLayout"]
        5 DUPTABLE                         R4 K7 [{"FillDirection", "SortOrder", "Padding"}]
        6 GETIMPORT                        R5 K10 [Enum.FillDirection.Vertical]
        8 SETTABLEKS                       R5 R4 K4 ["FillDirection"]
       10 GETIMPORT                        R5 K12 [Enum.SortOrder.LayoutOrder]
       12 SETTABLEKS                       R5 R4 K5 ["SortOrder"]
       14 GETIMPORT                        R5 K15 [UDim.new]
       16 LOADN                            R6 0
       17 LOADN                            R7 8
       18 CALL                             R5 2 1
       19 SETTABLEKS                       R5 R4 K6 ["Padding"]
       21 CALL                             R2 2 1
       22 SETTABLEKS                       R2 R1 K0 ["Layout"]
       24 GETTABLEKS                       R2 R0 K16 ["schema"]
       26 GETTABLEKS                       R2 R2 K17 ["controls"]
       28 JUMPIF                           R2 ; [+2]
       29 NEWTABLE                         R2 0 0
       31 MOVE                             R3 R2
       32 LOADNIL                          R4
       33 LOADNIL                          R5
       34 FORGPREP                         R3
       35 LOADK                            R9 K18 ["Control_"]
       36 GETTABLEKS                       R10 R7 K19 ["id"]
       38 CONCAT                           R8 R9 R10
       39 GETUPVAL                         R9 0
       40 GETTABLEKS                       R9 R9 K2 ["createElement"]
       42 GETUPVAL                         R10 1
       43 DUPTABLE                         R11 K24 [{"control", "value", "onCommit", "layoutOrder"}]
       44 SETTABLEKS                       R7 R11 K20 ["control"]
       46 GETTABLEKS                       R13 R0 K25 ["values"]
       48 GETTABLEKS                       R14 R7 K19 ["id"]
       50 GETTABLE                         R12 R13 R14
       51 SETTABLEKS                       R12 R11 K21 ["value"]
       53 GETTABLEKS                       R12 R0 K22 ["onCommit"]
       55 SETTABLEKS                       R12 R11 K22 ["onCommit"]
       57 SETTABLEKS                       R6 R11 K23 ["layoutOrder"]
       59 CALL                             R9 2 1
       60 SETTABLE                         R9 R1 R8
       61 FORGLOOP                         R3 2 ; [-27]
       63 GETUPVAL                         R3 0
       64 GETTABLEKS                       R3 R3 K2 ["createElement"]
       66 GETUPVAL                         R4 2
       67 GETTABLEKS                       R4 R4 K26 ["FoundationProvider"]
       69 DUPTABLE                         R5 K30 [{"theme", "device", "overlayGui"}]
       70 GETUPVAL                         R6 2
       71 GETTABLEKS                       R6 R6 K31 ["Enums"]
       73 GETTABLEKS                       R6 R6 K32 ["Theme"]
       75 GETTABLEKS                       R6 R6 K33 ["Dark"]
       77 SETTABLEKS                       R6 R5 K27 ["theme"]
       79 GETUPVAL                         R6 2
       80 GETTABLEKS                       R6 R6 K31 ["Enums"]
       82 GETTABLEKS                       R6 R6 K34 ["Device"]
       84 GETTABLEKS                       R6 R6 K35 ["Desktop"]
       86 SETTABLEKS                       R6 R5 K28 ["device"]
       88 GETTABLEKS                       R6 R0 K29 ["overlayGui"]
       90 SETTABLEKS                       R6 R5 K29 ["overlayGui"]
       92 DUPTABLE                         R6 K37 [{"Content"}]
       93 GETUPVAL                         R7 0
       94 GETTABLEKS                       R7 R7 K2 ["createElement"]
       96 GETUPVAL                         R8 2
       97 GETTABLEKS                       R8 R8 K38 ["View"]
       99 DUPTABLE                         R9 K42 [{["Size"], ["tag"] = "col padding-medium bg-surface-0"}]
      100 GETIMPORT                        R10 K45 [UDim2.fromScale]
      102 LOADN                            R11 1
      103 LOADN                            R12 1
      104 CALL                             R10 2 1
      105 SETTABLEKS                       R10 R9 K39 ["Size"]
      107 MOVE                             R10 R1
      108 CALL                             R7 3 1
      109 SETTABLEKS                       R7 R6 K36 ["Content"]
      111 CALL                             R3 3 -1
      112 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["overlayGui"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["createElement"]
        7 GETUPVAL                         R4 3
        8 MOVE                             R5 R0
        9 CALL                             R3 2 -1
       10 NAMECALL                         R1 R1 K2 ["render"]
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R2
        2 NAMECALL                         R0 R0 K0 ["render"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R2
        2 NAMECALL                         R0 R0 K0 ["render"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createRoot"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 DUPTABLE                         R4 K4 [{"render", "clear", "destroy"}]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R3
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R5 R4 K1 ["render"]
       13 NEWCLOSURE                       R5 P1
       14 CAPTURE                          VAL R3
       15 SETTABLEKS                       R5 R4 K2 ["clear"]
       17 NEWCLOSURE                       R5 P2
       18 CAPTURE                          VAL R3
       19 SETTABLEKS                       R5 R4 K3 ["destroy"]
       21 RETURN                           R4 1

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
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K10 [PROTO_2]
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R3
       31 DUPCLOSURE                       R5 K11 [PROTO_3]
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R3
       35 NEWTABLE                         R6 1 0
       37 DUPCLOSURE                       R7 K12 [PROTO_7]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R5
       41 SETTABLEKS                       R7 R6 K13 ["mount"]
       43 RETURN                           R6 1
