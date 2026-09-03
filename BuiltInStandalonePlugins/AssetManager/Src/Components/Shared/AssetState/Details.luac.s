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
       15 GETIMPORT                        R5 K11 [UDim2.fromOffset]
       17 GETTABLEKS                       R8 R0 K13 ["MaxWidth"]
       19 ORK                              R7 R8 K12 [∞]
       20 GETUPVAL                         R8 3
       21 GETTABLEKS                       R8 R8 K14 ["AssetStatePopoverWidth"]
       23 FASTCALL2                        MATH_MIN R7 R8 ; [+3]
       25 GETIMPORT                        R6 K17 [math.min]
       27 CALL                             R6 2 1
       28 LOADN                            R7 0
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K6 ["Size"]
       32 DUPTABLE                         R5 K20 [{"Thumbnail", "Details"}]
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K1 ["createElement"]
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R7 R7 K2 ["View"]
       39 DUPTABLE                         R8 K24 [{["LayoutOrder"] = 1, ["tag"] = "align-x-center align-y-center size-1300 radius-small bg-shift-200"}]
       40 GETUPVAL                         R9 1
       41 GETTABLEKS                       R9 R9 K1 ["createElement"]
       43 GETUPVAL                         R10 2
       44 GETTABLEKS                       R10 R10 K25 ["Image"]
       46 DUPTABLE                         R11 K27 [{["Image"], ["tag"] = "size-1200"}]
       47 GETUPVAL                         R12 4
       48 GETTABLEKS                       R12 R12 K28 ["get"]
       50 GETUPVAL                         R13 4
       51 GETTABLEKS                       R13 R13 K29 ["AvailableImages"]
       53 GETTABLEKS                       R13 R13 K30 ["DefaultThumbnail"]
       55 CALL                             R12 1 1
       56 SETTABLEKS                       R12 R11 K25 ["Image"]
       58 CALL                             R9 2 -1
       59 CALL                             R6 -1 1
       60 SETTABLEKS                       R6 R5 K18 ["Thumbnail"]
       62 GETUPVAL                         R6 1
       63 GETTABLEKS                       R6 R6 K1 ["createElement"]
       65 GETUPVAL                         R7 2
       66 GETTABLEKS                       R7 R7 K2 ["View"]
       68 DUPTABLE                         R8 K33 [{["LayoutOrder"] = 2, ["tag"] = "col fill gap-xsmall auto-y"}]
       69 DUPTABLE                         R9 K37 [{"Title", "Description", "Buttons"}]
       70 GETUPVAL                         R10 1
       71 GETTABLEKS                       R10 R10 K1 ["createElement"]
       73 GETUPVAL                         R11 2
       74 GETTABLEKS                       R11 R11 K38 ["Text"]
       76 DUPTABLE                         R12 K40 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-title-medium text-align-x-left text-truncate-split"}]
       77 LOADK                            R15 K41 ["AssetState"]
       78 LOADK                            R16 K42 ["RestrictedTitle"]
       79 NAMECALL                         R13 R1 K43 ["getText"]
       81 CALL                             R13 3 1
       82 SETTABLEKS                       R13 R12 K38 ["Text"]
       84 CALL                             R10 2 1
       85 SETTABLEKS                       R10 R9 K34 ["Title"]
       87 GETUPVAL                         R10 1
       88 GETTABLEKS                       R10 R10 K1 ["createElement"]
       90 GETUPVAL                         R11 2
       91 GETTABLEKS                       R11 R11 K38 ["Text"]
       93 DUPTABLE                         R12 K45 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left"}]
       94 LOADK                            R15 K41 ["AssetState"]
       95 LOADK                            R16 K46 ["RestrictedBody"]
       96 NAMECALL                         R13 R1 K43 ["getText"]
       98 CALL                             R13 3 1
       99 SETTABLEKS                       R13 R12 K38 ["Text"]
      101 CALL                             R10 2 1
      102 SETTABLEKS                       R10 R9 K35 ["Description"]
      104 GETUPVAL                         R10 1
      105 GETTABLEKS                       R10 R10 K1 ["createElement"]
      107 GETUPVAL                         R11 2
      108 GETTABLEKS                       R11 R11 K47 ["ButtonGroup"]
      110 DUPTABLE                         R12 K51 [{["LayoutOrder"] = 3, ["size"], ["buttons"]}]
      111 GETUPVAL                         R13 2
      112 GETTABLEKS                       R13 R13 K52 ["Enums"]
      114 GETTABLEKS                       R13 R13 K53 ["InputSize"]
      116 GETTABLEKS                       R13 R13 K54 ["XSmall"]
      118 SETTABLEKS                       R13 R12 K49 ["size"]
      120 NEWTABLE                         R13 0 1
      122 DUPTABLE                         R14 K60 [{["text"], ["variant"], ["onActivated"], ["testId"] = "asset-state-appeal-button"}]
      123 LOADK                            R17 K41 ["AssetState"]
      124 LOADK                            R18 K61 ["Appeal"]
      125 NAMECALL                         R15 R1 K43 ["getText"]
      127 CALL                             R15 3 1
      128 SETTABLEKS                       R15 R14 K55 ["text"]
      130 GETUPVAL                         R15 2
      131 GETTABLEKS                       R15 R15 K52 ["Enums"]
      133 GETTABLEKS                       R15 R15 K62 ["ButtonVariant"]
      135 GETTABLEKS                       R15 R15 K63 ["Standard"]
      137 SETTABLEKS                       R15 R14 K56 ["variant"]
      139 DUPCLOSURE                       R15 K64 [PROTO_0]
      140 CAPTURE                          UPVAL U5
      141 CAPTURE                          UPVAL U6
      142 SETTABLEKS                       R15 R14 K57 ["onActivated"]
      144 SETLIST                          R13 R14 1 [1]
      146 SETTABLEKS                       R13 R12 K50 ["buttons"]
      148 CALL                             R10 2 1
      149 SETTABLEKS                       R10 R9 K36 ["Buttons"]
      151 CALL                             R6 3 1
      152 SETTABLEKS                       R6 R5 K19 ["Details"]
      154 CALL                             R2 3 -1
      155 RETURN                           R2 -1

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
       72 DUPCLOSURE                       R11 K22 [PROTO_1]
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R10
       80 RETURN                           R11 1
