PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 MOVE                             R10 R6
        7 NAMECALL                         R8 R0 K0 ["getItemInfo"]
        9 CALL                             R8 2 1
       10 SETTABLE                         R8 R2 R6
       11 FORGLOOP                         R3 1 ; [-6]
       13 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["View"]
        6 DUPTABLE                         R4 K6 [{["LayoutOrder"] = 2, ["tag"] = "row align-y-center gap-small size-full-800 padding-x-medium"}]
        7 DUPTABLE                         R5 K9 [{"Title", "CloseButton"}]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K0 ["createElement"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K10 ["Text"]
       14 DUPTABLE                         R8 K15 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "fill auto-y text-body-small text-align-x-left text-truncate-end content-default", ["testId"] = "details-drawer-title"}]
       15 SETTABLEKS                       R0 R8 K10 ["Text"]
       17 CALL                             R6 2 1
       18 SETTABLEKS                       R6 R5 K7 ["Title"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K0 ["createElement"]
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R7 R7 K16 ["IconButton"]
       26 DUPTABLE                         R8 K23 [{["LayoutOrder"] = 3, ["onActivated"], ["icon"], ["variant"], ["size"], ["testId"] = "details-drawer-close-button"}]
       27 SETTABLEKS                       R1 R8 K18 ["onActivated"]
       29 GETUPVAL                         R9 1
       30 GETTABLEKS                       R9 R9 K24 ["Enums"]
       32 GETTABLEKS                       R9 R9 K25 ["IconName"]
       34 GETTABLEKS                       R9 R9 K26 ["XSmall"]
       36 SETTABLEKS                       R9 R8 K19 ["icon"]
       38 GETUPVAL                         R9 1
       39 GETTABLEKS                       R9 R9 K24 ["Enums"]
       41 GETTABLEKS                       R9 R9 K27 ["ButtonVariant"]
       43 GETTABLEKS                       R9 R9 K28 ["Utility"]
       45 SETTABLEKS                       R9 R8 K20 ["variant"]
       47 GETUPVAL                         R9 1
       48 GETTABLEKS                       R9 R9 K24 ["Enums"]
       50 GETTABLEKS                       R9 R9 K29 ["InputSize"]
       52 GETTABLEKS                       R9 R9 K26 ["XSmall"]
       54 SETTABLEKS                       R9 R8 K21 ["size"]
       56 CALL                             R6 2 1
       57 SETTABLEKS                       R6 R5 K8 ["CloseButton"]
       59 CALL                             R2 3 -1
       60 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["View"]
        6 DUPTABLE                         R4 K8 [{["LayoutOrder"] = 4, ["tag"] = "col align-x-center gap-small size-full-0 auto-y margin-top-large padding-x-medium", ["testId"] = "details-drawer-empty"}]
        7 DUPTABLE                         R5 K11 [{"Message", "CloseButton"}]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K0 ["createElement"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K12 ["Text"]
       14 DUPTABLE                         R8 K16 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-center content-default", ["testId"] = "details-drawer-empty-message"}]
       15 LOADK                            R11 K17 ["DetailsDrawer"]
       16 LOADK                            R12 K18 ["EmptyMessage"]
       17 NAMECALL                         R9 R1 K19 ["getText"]
       19 CALL                             R9 3 1
       20 SETTABLEKS                       R9 R8 K12 ["Text"]
       22 CALL                             R6 2 1
       23 SETTABLEKS                       R6 R5 K9 ["Message"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K0 ["createElement"]
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R7 R7 K20 ["Button"]
       31 DUPTABLE                         R8 K27 [{["LayoutOrder"] = 2, ["text"], ["variant"], ["size"], ["onActivated"], ["testId"] = "details-drawer-empty-close-button"}]
       32 LOADK                            R11 K17 ["DetailsDrawer"]
       33 LOADK                            R12 K28 ["Close"]
       34 NAMECALL                         R9 R1 K19 ["getText"]
       36 CALL                             R9 3 1
       37 SETTABLEKS                       R9 R8 K22 ["text"]
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R9 R9 K29 ["Enums"]
       42 GETTABLEKS                       R9 R9 K30 ["ButtonVariant"]
       44 GETTABLEKS                       R9 R9 K31 ["Standard"]
       46 SETTABLEKS                       R9 R8 K23 ["variant"]
       48 GETUPVAL                         R9 1
       49 GETTABLEKS                       R9 R9 K29 ["Enums"]
       51 GETTABLEKS                       R9 R9 K32 ["InputSize"]
       53 GETTABLEKS                       R9 R9 K33 ["XSmall"]
       55 SETTABLEKS                       R9 R8 K24 ["size"]
       57 SETTABLEKS                       R0 R8 K25 ["onActivated"]
       59 CALL                             R6 2 1
       60 SETTABLEKS                       R6 R5 K10 ["CloseButton"]
       62 CALL                             R2 3 -1
       63 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["closeDetailsDrawer"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETUPVAL                         R2 3
        5 GETUPVAL                         R3 4
        6 NEWTABLE                         R4 0 1
        8 GETUPVAL                         R5 0
        9 SETLIST                          R4 R5 1 [1]
       11 CALL                             R0 4 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["use"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K0 ["use"]
       11 CALL                             R2 0 1
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K0 ["use"]
       15 CALL                             R3 0 1
       16 GETUPVAL                         R4 4
       17 GETTABLEKS                       R4 R4 K0 ["use"]
       19 CALL                             R4 0 1
       20 GETUPVAL                         R5 5
       21 CALL                             R5 0 1
       22 GETUPVAL                         R6 6
       23 GETTABLEKS                       R6 R6 K1 ["count"]
       25 MOVE                             R7 R5
       26 CALL                             R6 1 1
       27 JUMPIFNOTEQKN                    R6 K2 [1] ; [+6]
       29 GETIMPORT                        R7 K4 [next]
       31 MOVE                             R8 R5
       32 CALL                             R7 1 1
       33 JUMP                             ; [+1]
       34 LOADNIL                          R7
       35 JUMPIFNOT                        R7 ; [+5]
       36 MOVE                             R10 R7
       37 NAMECALL                         R8 R1 K5 ["getItemInfo"]
       39 CALL                             R8 2 1
       40 JUMP                             ; [+1]
       41 LOADNIL                          R8
       42 LOADN                            R10 1
       43 JUMPIFNOTLT                      R10 R6 ; [+6]
       45 GETUPVAL                         R9 7
       46 MOVE                             R10 R1
       47 MOVE                             R11 R5
       48 CALL                             R9 2 1
       49 JUMP                             ; [+1]
       50 LOADNIL                          R9
       51 GETUPVAL                         R10 8
       52 MOVE                             R11 R7
       53 CALL                             R10 1 2
       54 NEWCLOSURE                       R12 P0
       55 CAPTURE                          VAL R0
       56 NEWCLOSURE                       R13 P1
       57 CAPTURE                          VAL R7
       58 CAPTURE                          UPVAL U9
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R4
       62 JUMPIFNOT                        R9 ; [+14]
       63 LOADK                            R16 K6 ["AssetProperty"]
       64 LOADK                            R17 K7 ["AssetsSelected"]
       65 DUPTABLE                         R18 K8 [{"count"}]
       66 FASTCALL1                        TOSTRING R6 ; [+3]
       67 MOVE                             R20 R6
       68 GETIMPORT                        R19 K10 [tostring]
       70 CALL                             R19 1 1
       71 SETTABLEKS                       R19 R18 K1 ["count"]
       73 NAMECALL                         R14 R4 K11 ["getText"]
       75 CALL                             R14 4 1
       76 JUMP                             ; [+21]
       77 JUMPIFNOT                        R8 ; [+15]
       78 LOADK                            R16 K6 ["AssetProperty"]
       79 LOADK                            R17 K12 ["AssetTypeDetails"]
       80 DUPTABLE                         R18 K14 [{"assetType"}]
       81 LOADK                            R21 K15 ["AssetType"]
       82 GETTABLEKS                       R22 R8 K15 ["AssetType"]
       84 NAMECALL                         R19 R4 K11 ["getText"]
       86 CALL                             R19 3 1
       87 SETTABLEKS                       R19 R18 K13 ["assetType"]
       89 NAMECALL                         R14 R4 K11 ["getText"]
       91 CALL                             R14 4 1
       92 JUMP                             ; [+5]
       93 LOADK                            R16 K16 ["DetailsDrawer"]
       94 LOADK                            R17 K17 ["EmptyTitle"]
       95 NAMECALL                         R14 R4 K11 ["getText"]
       97 CALL                             R14 3 1
       98 LOADB                            R15 0
       99 JUMPIFEQKNIL                     R7 ; [+5]
      101 MOVE                             R17 R7
      102 NAMECALL                         R15 R1 K18 ["canFetchAssetSharing"]
      104 CALL                             R15 2 1
      105 GETUPVAL                         R16 10
      106 MOVE                             R17 R7
      107 CALL                             R16 1 2
      108 DUPTABLE                         R18 K21 [{"Header", "HeaderDivider"}]
      109 GETUPVAL                         R19 11
      110 MOVE                             R20 R14
      111 MOVE                             R21 R12
      112 CALL                             R19 2 1
      113 SETTABLEKS                       R19 R18 K19 ["Header"]
      115 GETUPVAL                         R19 12
      116 GETTABLEKS                       R19 R19 K22 ["createElement"]
      118 GETUPVAL                         R20 13
      119 GETTABLEKS                       R20 R20 K23 ["Divider"]
      121 DUPTABLE                         R21 K27 [{["LayoutOrder"] = 3, ["orientation"]}]
      122 GETUPVAL                         R22 13
      123 GETTABLEKS                       R22 R22 K28 ["Enums"]
      125 GETTABLEKS                       R22 R22 K29 ["DividerOrientation"]
      127 GETTABLEKS                       R22 R22 K30 ["Horizontal"]
      129 SETTABLEKS                       R22 R21 K26 ["orientation"]
      131 CALL                             R19 2 1
      132 SETTABLEKS                       R19 R18 K20 ["HeaderDivider"]
      134 JUMPIFNOT                        R9 ; [+11]
      135 GETUPVAL                         R19 12
      136 GETTABLEKS                       R19 R19 K22 ["createElement"]
      138 GETUPVAL                         R20 14
      139 DUPTABLE                         R21 K33 [{["LayoutOrder"] = 4, ["Assets"]}]
      140 SETTABLEKS                       R9 R21 K32 ["Assets"]
      142 CALL                             R19 2 1
      143 SETTABLEKS                       R19 R18 K34 ["Body"]
      145 JUMP                             ; [+30]
      146 JUMPIFNOT                        R8 ; [+23]
      147 GETUPVAL                         R19 12
      148 GETTABLEKS                       R19 R19 K22 ["createElement"]
      150 GETUPVAL                         R20 15
      151 DUPTABLE                         R21 K42 [{["LayoutOrder"] = 4, ["Asset"], ["TechnicalDetails"], ["IsLoadingTechnicalDetails"], ["ShowAccessPolicy"], ["Sharing"], ["IsLoadingSharing"], ["OnManageSharing"]}]
      152 SETTABLEKS                       R8 R21 K35 ["Asset"]
      154 SETTABLEKS                       R10 R21 K36 ["TechnicalDetails"]
      156 SETTABLEKS                       R11 R21 K37 ["IsLoadingTechnicalDetails"]
      158 SETTABLEKS                       R15 R21 K38 ["ShowAccessPolicy"]
      160 SETTABLEKS                       R16 R21 K39 ["Sharing"]
      162 SETTABLEKS                       R17 R21 K40 ["IsLoadingSharing"]
      164 SETTABLEKS                       R13 R21 K41 ["OnManageSharing"]
      166 CALL                             R19 2 1
      167 SETTABLEKS                       R19 R18 K34 ["Body"]
      169 JUMP                             ; [+6]
      170 GETUPVAL                         R19 16
      171 MOVE                             R20 R12
      172 MOVE                             R21 R4
      173 CALL                             R19 2 1
      174 SETTABLEKS                       R19 R18 K34 ["Body"]
      176 GETUPVAL                         R19 12
      177 GETTABLEKS                       R19 R19 K22 ["createElement"]
      179 GETUPVAL                         R20 13
      180 GETTABLEKS                       R20 R20 K43 ["View"]
      182 DUPTABLE                         R21 K48 [{["tag"] = "col size-full bg-surface-100", ["testId"] = "details-drawer"}]
      183 MOVE                             R22 R18
      184 CALL                             R19 3 -1
      185 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETIMPORT                        R6 K5 [require]
       39 GETIMPORT                        R7 K1 [script]
       41 GETTABLEKS                       R7 R7 K12 ["SingleAsset"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K5 [require]
       46 GETIMPORT                        R8 K1 [script]
       48 GETTABLEKS                       R8 R8 K13 ["MultiSelect"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K5 [require]
       53 GETTABLEKS                       R9 R0 K14 ["Src"]
       55 GETTABLEKS                       R9 R9 K15 ["Controllers"]
       57 GETTABLEKS                       R9 R9 K16 ["ItemsController"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K5 [require]
       62 GETTABLEKS                       R10 R0 K14 ["Src"]
       64 GETTABLEKS                       R10 R10 K15 ["Controllers"]
       66 GETTABLEKS                       R10 R10 K17 ["LayoutController"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K5 [require]
       71 GETTABLEKS                       R11 R0 K14 ["Src"]
       73 GETTABLEKS                       R11 R11 K15 ["Controllers"]
       75 GETTABLEKS                       R11 R11 K18 ["PluginController"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K5 [require]
       80 GETTABLEKS                       R12 R0 K14 ["Src"]
       82 GETTABLEKS                       R12 R12 K19 ["Networking"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K5 [require]
       87 GETTABLEKS                       R13 R0 K14 ["Src"]
       89 GETTABLEKS                       R13 R13 K20 ["Types"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K5 [require]
       94 GETTABLEKS                       R14 R0 K14 ["Src"]
       96 GETTABLEKS                       R14 R14 K21 ["Util"]
       98 GETTABLEKS                       R14 R14 K22 ["Dialogs"]
      100 GETTABLEKS                       R14 R14 K23 ["openQuickShare"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K5 [require]
      105 GETTABLEKS                       R15 R0 K14 ["Src"]
      107 GETTABLEKS                       R15 R15 K24 ["Hooks"]
      109 GETTABLEKS                       R15 R15 K25 ["useItemSelection"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K5 [require]
      114 GETTABLEKS                       R16 R0 K14 ["Src"]
      116 GETTABLEKS                       R16 R16 K24 ["Hooks"]
      118 GETTABLEKS                       R16 R16 K26 ["useAssetTechnicalDetails"]
      120 CALL                             R15 1 1
      121 GETIMPORT                        R16 K5 [require]
      123 GETTABLEKS                       R17 R0 K14 ["Src"]
      125 GETTABLEKS                       R17 R17 K24 ["Hooks"]
      127 GETTABLEKS                       R17 R17 K27 ["useAssetSharing"]
      129 CALL                             R16 1 1
      130 GETTABLEKS                       R17 R5 K28 ["Localization"]
      132 DUPCLOSURE                       R18 K29 [PROTO_0]
      133 DUPCLOSURE                       R19 K30 [PROTO_1]
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R3
      136 DUPCLOSURE                       R20 K31 [PROTO_2]
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R3
      139 DUPCLOSURE                       R21 K32 [PROTO_5]
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R14
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R18
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R19
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R20
      157 RETURN                           R21 1
