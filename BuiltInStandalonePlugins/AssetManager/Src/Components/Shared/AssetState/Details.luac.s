PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["View"]
       10 DUPTABLE                         R4 K7 [{["ref"], ["tag"] = "row gap-small auto-y padding-small stroke-default radius-medium bg-surface-300", ["Size"]}]
       11 GETTABLEKS                       R5 R0 K8 ["FrameRef"]
       13 SETTABLEKS                       R5 R4 K3 ["ref"]
       15 GETUPVAL                         R6 3
       16 CALL                             R6 0 1
       17 JUMPIFNOT                        R6 ; [+8]
       18 GETIMPORT                        R5 K11 [UDim2.fromOffset]
       20 GETUPVAL                         R6 4
       21 GETTABLEKS                       R6 R6 K12 ["AssetStatePopoverWidth"]
       23 LOADN                            R7 0
       24 CALL                             R5 2 1
       25 JUMP                             ; [+15]
       26 GETIMPORT                        R5 K11 [UDim2.fromOffset]
       28 GETTABLEKS                       R8 R0 K14 ["MaxWidth"]
       30 ORK                              R7 R8 K13 [∞]
       31 GETUPVAL                         R8 4
       32 GETTABLEKS                       R8 R8 K12 ["AssetStatePopoverWidth"]
       34 FASTCALL2                        MATH_MIN R7 R8 ; [+3]
       36 GETIMPORT                        R6 K17 [math.min]
       38 CALL                             R6 2 1
       39 LOADN                            R7 0
       40 CALL                             R5 2 1
       41 SETTABLEKS                       R5 R4 K6 ["Size"]
       43 DUPTABLE                         R5 K20 [{"Thumbnail", "Details"}]
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K1 ["createElement"]
       47 GETUPVAL                         R7 2
       48 GETTABLEKS                       R7 R7 K2 ["View"]
       50 DUPTABLE                         R8 K24 [{["LayoutOrder"] = 1, ["tag"] = "align-x-center align-y-center size-1300 radius-small bg-shift-200"}]
       51 GETUPVAL                         R9 1
       52 GETTABLEKS                       R9 R9 K1 ["createElement"]
       54 GETUPVAL                         R10 2
       55 GETTABLEKS                       R10 R10 K25 ["Image"]
       57 DUPTABLE                         R11 K27 [{["Image"], ["tag"] = "size-1200"}]
       58 GETUPVAL                         R12 5
       59 GETTABLEKS                       R12 R12 K28 ["get"]
       61 GETUPVAL                         R13 5
       62 GETTABLEKS                       R13 R13 K29 ["AvailableImages"]
       64 GETTABLEKS                       R13 R13 K30 ["DefaultThumbnail"]
       66 CALL                             R12 1 1
       67 SETTABLEKS                       R12 R11 K25 ["Image"]
       69 CALL                             R9 2 -1
       70 CALL                             R6 -1 1
       71 SETTABLEKS                       R6 R5 K18 ["Thumbnail"]
       73 GETUPVAL                         R6 1
       74 GETTABLEKS                       R6 R6 K1 ["createElement"]
       76 GETUPVAL                         R7 2
       77 GETTABLEKS                       R7 R7 K2 ["View"]
       79 DUPTABLE                         R8 K33 [{["LayoutOrder"] = 2, ["tag"] = "col fill gap-xsmall auto-y"}]
       80 DUPTABLE                         R9 K37 [{"Title", "Description", "Buttons"}]
       81 GETUPVAL                         R10 1
       82 GETTABLEKS                       R10 R10 K1 ["createElement"]
       84 GETUPVAL                         R11 2
       85 GETTABLEKS                       R11 R11 K38 ["Text"]
       87 DUPTABLE                         R12 K40 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-title-medium text-align-x-left text-truncate-split"}]
       88 LOADK                            R15 K41 ["AssetState"]
       89 LOADK                            R16 K42 ["RestrictedTitle"]
       90 NAMECALL                         R13 R1 K43 ["getText"]
       92 CALL                             R13 3 1
       93 SETTABLEKS                       R13 R12 K38 ["Text"]
       95 CALL                             R10 2 1
       96 SETTABLEKS                       R10 R9 K34 ["Title"]
       98 GETUPVAL                         R10 1
       99 GETTABLEKS                       R10 R10 K1 ["createElement"]
      101 GETUPVAL                         R11 2
      102 GETTABLEKS                       R11 R11 K38 ["Text"]
      104 DUPTABLE                         R12 K45 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left"}]
      105 LOADK                            R15 K41 ["AssetState"]
      106 LOADK                            R16 K46 ["RestrictedBody"]
      107 NAMECALL                         R13 R1 K43 ["getText"]
      109 CALL                             R13 3 1
      110 SETTABLEKS                       R13 R12 K38 ["Text"]
      112 CALL                             R10 2 1
      113 SETTABLEKS                       R10 R9 K35 ["Description"]
      115 GETUPVAL                         R10 1
      116 GETTABLEKS                       R10 R10 K1 ["createElement"]
      118 GETUPVAL                         R11 2
      119 GETTABLEKS                       R11 R11 K47 ["ButtonGroup"]
      121 DUPTABLE                         R12 K51 [{["LayoutOrder"] = 3, ["size"], ["buttons"]}]
      122 GETUPVAL                         R13 2
      123 GETTABLEKS                       R13 R13 K52 ["Enums"]
      125 GETTABLEKS                       R13 R13 K53 ["InputSize"]
      127 GETTABLEKS                       R13 R13 K54 ["XSmall"]
      129 SETTABLEKS                       R13 R12 K49 ["size"]
      131 NEWTABLE                         R13 0 1
      133 DUPTABLE                         R14 K60 [{["text"], ["variant"], ["onActivated"], ["testId"] = "asset-state-learn-more-button"}]
      134 LOADK                            R17 K41 ["AssetState"]
      135 LOADK                            R18 K61 ["LearnMore"]
      136 NAMECALL                         R15 R1 K43 ["getText"]
      138 CALL                             R15 3 1
      139 SETTABLEKS                       R15 R14 K55 ["text"]
      141 GETUPVAL                         R15 2
      142 GETTABLEKS                       R15 R15 K52 ["Enums"]
      144 GETTABLEKS                       R15 R15 K62 ["ButtonVariant"]
      146 GETTABLEKS                       R15 R15 K63 ["Standard"]
      148 SETTABLEKS                       R15 R14 K56 ["variant"]
      150 DUPCLOSURE                       R15 K64 [PROTO_0]
      151 CAPTURE                          UPVAL U6
      152 CAPTURE                          UPVAL U7
      153 SETTABLEKS                       R15 R14 K57 ["onActivated"]
      155 SETLIST                          R13 R14 1 [1]
      157 SETTABLEKS                       R13 R12 K50 ["buttons"]
      159 CALL                             R10 2 1
      160 SETTABLEKS                       R10 R9 K36 ["Buttons"]
      162 CALL                             R6 3 1
      163 SETTABLEKS                       R6 R5 K19 ["Details"]
      165 CALL                             R2 3 -1
      166 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
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
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Services"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["GetService"]
       32 LOADK                            R5 K13 ["BrowserService"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K6 ["Packages"]
       38 GETTABLEKS                       R6 R6 K14 ["Framework"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K15 ["ContextServices"]
       43 GETTABLEKS                       R7 R6 K16 ["Localization"]
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R9 R0 K9 ["Src"]
       49 GETTABLEKS                       R9 R9 K10 ["Util"]
       51 GETTABLEKS                       R9 R9 K17 ["Images"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R10 R0 K9 ["Src"]
       58 GETTABLEKS                       R10 R10 K18 ["Resources"]
       60 GETTABLEKS                       R10 R10 K19 ["StyleConstants"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R11 R0 K9 ["Src"]
       67 GETTABLEKS                       R11 R11 K20 ["Flags"]
       69 GETTABLEKS                       R11 R11 K21 ["getFStringAmrAssetAppealPage"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R12 R0 K9 ["Src"]
       76 GETTABLEKS                       R12 R12 K20 ["Flags"]
       78 GETTABLEKS                       R12 R12 K22 ["getFFlagAmrUseQWidgetPopovers"]
       80 CALL                             R11 1 1
       81 DUPCLOSURE                       R12 K23 [PROTO_1]
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R10
       90 RETURN                           R12 1
