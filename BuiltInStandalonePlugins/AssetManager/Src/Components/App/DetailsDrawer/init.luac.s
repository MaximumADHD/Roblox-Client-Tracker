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
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 LOADB                            R1 1
        7 SETTABLEKS                       R1 R0 K0 ["current"]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K1 ["sendDetailsDrawerClosedEvent"]
       12 NEWTABLE                         R1 0 0
       14 GETUPVAL                         R2 2
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETUPVAL                         R1 0
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       10 MOVE                             R7 R0
       11 MOVE                             R8 R5
       12 GETIMPORT                        R6 K2 [table.insert]
       14 CALL                             R6 2 0
       15 FORGLOOP                         R1 2 ; [-8]
       17 JUMP                             ; [+9]
       18 GETUPVAL                         R1 1
       19 JUMPIFNOT                        R1 ; [+7]
       20 GETUPVAL                         R3 1
       21 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       23 MOVE                             R2 R0
       24 GETIMPORT                        R1 K2 [table.insert]
       26 CALL                             R1 2 0
       27 NEWTABLE                         R1 0 0
       29 NEWTABLE                         R2 0 0
       31 MOVE                             R3 R0
       32 LOADNIL                          R4
       33 LOADNIL                          R5
       34 FORGPREP                         R3
       35 GETTABLEKS                       R9 R7 K3 ["AssetType"]
       37 GETTABLE                         R8 R2 R9
       38 JUMPIF                           R8 ; [+12]
       39 GETTABLEKS                       R8 R7 K3 ["AssetType"]
       41 LOADB                            R9 1
       42 SETTABLE                         R9 R2 R8
       43 GETTABLEKS                       R10 R7 K3 ["AssetType"]
       45 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       47 MOVE                             R9 R1
       48 GETIMPORT                        R8 K2 [table.insert]
       50 CALL                             R8 2 0
       51 FORGLOOP                         R3 2 ; [-17]
       53 GETUPVAL                         R3 2
       54 GETTABLEKS                       R3 R3 K4 ["sendDetailsDrawerOpenedEvent"]
       56 DUPTABLE                         R4 K8 [{"selectionMode", "selectionCount", "assetTypes"}]
       57 GETUPVAL                         R6 3
       58 JUMPIFNOTEQKN                    R6 K9 [0] ; [+7]
       60 GETUPVAL                         R5 4
       61 GETTABLEKS                       R5 R5 K10 ["DetailsDrawerSelectionMode"]
       63 GETTABLEKS                       R5 R5 K11 ["Empty"]
       65 JUMP                             ; [+14]
       66 GETUPVAL                         R6 3
       67 JUMPIFNOTEQKN                    R6 K12 [1] ; [+7]
       69 GETUPVAL                         R5 4
       70 GETTABLEKS                       R5 R5 K10 ["DetailsDrawerSelectionMode"]
       72 GETTABLEKS                       R5 R5 K13 ["Single"]
       74 JUMP                             ; [+5]
       75 GETUPVAL                         R5 4
       76 GETTABLEKS                       R5 R5 K10 ["DetailsDrawerSelectionMode"]
       78 GETTABLEKS                       R5 R5 K14 ["Multiple"]
       80 SETTABLEKS                       R5 R4 K5 ["selectionMode"]
       82 GETUPVAL                         R5 3
       83 SETTABLEKS                       R5 R4 K6 ["selectionCount"]
       85 SETTABLEKS                       R1 R4 K7 ["assetTypes"]
       87 GETUPVAL                         R5 5
       88 CALL                             R3 2 0
       89 GETUPVAL                         R3 6
       90 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K0 ["current"]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 2
        9 JUMPIFEQKNIL                     R0 ; [+7]
       11 GETUPVAL                         R0 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K0 ["current"]
       15 JUMPIFNOTEQ                      R0 R1 ; [+2]
       17 RETURN                           R0 0
       18 GETUPVAL                         R0 1
       19 GETUPVAL                         R1 0
       20 SETTABLEKS                       R1 R0 K0 ["current"]
       22 GETUPVAL                         R0 3
       23 GETTABLEKS                       R0 R0 K1 ["sendDetailsDrawerAssetViewedEvent"]
       25 DUPTABLE                         R1 K3 [{"assetType"}]
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R2 R2 K4 ["AssetType"]
       29 SETTABLEKS                       R2 R1 K2 ["assetType"]
       31 GETUPVAL                         R2 4
       32 CALL                             R0 2 0
       33 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sendDetailsDrawerActionClickedEvent"]
        3 DUPTABLE                         R2 K3 [{"action", "assetType"}]
        4 SETTABLEKS                       R0 R2 K1 ["action"]
        6 GETUPVAL                         R4 1
        7 JUMPIFNOT                        R4 ; [+4]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K4 ["AssetType"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R3
       13 SETTABLEKS                       R3 R2 K2 ["assetType"]
       15 GETUPVAL                         R3 2
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["closeDetailsDrawer"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+32]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["DetailsDrawerAction"]
        5 GETTABLEKS                       R0 R0 K1 ["ManageSharing"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["sendDetailsDrawerActionClickedEvent"]
       10 DUPTABLE                         R2 K5 [{"action", "assetType"}]
       11 SETTABLEKS                       R0 R2 K3 ["action"]
       13 GETUPVAL                         R4 3
       14 JUMPIFNOT                        R4 ; [+4]
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K6 ["AssetType"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R3
       20 SETTABLEKS                       R3 R2 K4 ["assetType"]
       22 GETUPVAL                         R3 4
       23 CALL                             R1 2 0
       24 GETUPVAL                         R0 5
       25 GETUPVAL                         R1 6
       26 GETUPVAL                         R2 7
       27 GETUPVAL                         R3 8
       28 NEWTABLE                         R4 0 1
       30 GETUPVAL                         R5 0
       31 SETLIST                          R4 R5 1 [1]
       33 CALL                             R0 4 0
       34 RETURN                           R0 0

PROTO_9:
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
       21 GETTABLEKS                       R5 R5 K0 ["use"]
       23 CALL                             R5 0 1
       24 GETUPVAL                         R6 6
       25 GETTABLEKS                       R6 R6 K0 ["use"]
       27 CALL                             R6 0 1
       28 GETUPVAL                         R7 7
       29 CALL                             R7 0 1
       30 GETUPVAL                         R8 8
       31 GETTABLEKS                       R8 R8 K1 ["count"]
       33 MOVE                             R9 R7
       34 CALL                             R8 1 1
       35 JUMPIFNOTEQKN                    R8 K2 [1] ; [+6]
       37 GETIMPORT                        R9 K4 [next]
       39 MOVE                             R10 R7
       40 CALL                             R9 1 1
       41 JUMP                             ; [+1]
       42 LOADNIL                          R9
       43 JUMPIFNOT                        R9 ; [+5]
       44 MOVE                             R12 R9
       45 NAMECALL                         R10 R1 K5 ["getItemInfo"]
       47 CALL                             R10 2 1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R10
       50 LOADN                            R12 1
       51 JUMPIFNOTLT                      R12 R8 ; [+6]
       53 GETUPVAL                         R11 9
       54 MOVE                             R12 R1
       55 MOVE                             R13 R7
       56 CALL                             R11 2 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R11
       59 GETUPVAL                         R12 10
       60 MOVE                             R13 R9
       61 CALL                             R12 1 2
       62 GETUPVAL                         R14 11
       63 GETTABLEKS                       R14 R14 K6 ["useRef"]
       65 LOADB                            R15 0
       66 CALL                             R14 1 1
       67 GETUPVAL                         R15 11
       68 GETTABLEKS                       R15 R15 K6 ["useRef"]
       70 LOADNIL                          R16
       71 CALL                             R15 1 1
       72 DUPTABLE                         R16 K11 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
       73 SETTABLEKS                       R2 R16 K7 ["ExplorerController"]
       75 SETTABLEKS                       R0 R16 K8 ["LayoutController"]
       77 SETTABLEKS                       R1 R16 K9 ["ItemsController"]
       79 SETTABLEKS                       R4 R16 K10 ["SearchController"]
       81 GETUPVAL                         R17 11
       82 GETTABLEKS                       R17 R17 K12 ["useCallback"]
       84 NEWCLOSURE                       R18 P0
       85 CAPTURE                          VAL R14
       86 CAPTURE                          UPVAL U12
       87 CAPTURE                          VAL R16
       88 NEWTABLE                         R19 0 0
       90 CALL                             R17 2 1
       91 GETUPVAL                         R18 11
       92 GETTABLEKS                       R18 R18 K13 ["useEffect"]
       94 NEWCLOSURE                       R19 P1
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R10
       97 CAPTURE                          UPVAL U12
       98 CAPTURE                          VAL R8
       99 CAPTURE                          UPVAL U13
      100 CAPTURE                          VAL R16
      101 CAPTURE                          VAL R17
      102 NEWTABLE                         R20 0 0
      104 CALL                             R18 2 0
      105 GETUPVAL                         R18 11
      106 GETTABLEKS                       R18 R18 K13 ["useEffect"]
      108 NEWCLOSURE                       R19 P2
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R10
      112 CAPTURE                          UPVAL U12
      113 CAPTURE                          VAL R16
      114 NEWTABLE                         R20 0 2
      116 MOVE                             R21 R9
      117 MOVE                             R22 R10
      118 SETLIST                          R20 R21 2 [1]
      120 CALL                             R18 2 0
      121 NEWCLOSURE                       R18 P3
      122 CAPTURE                          UPVAL U12
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R16
      125 NEWCLOSURE                       R19 P4
      126 CAPTURE                          VAL R17
      127 CAPTURE                          VAL R0
      128 NEWCLOSURE                       R20 P5
      129 CAPTURE                          VAL R9
      130 CAPTURE                          UPVAL U13
      131 CAPTURE                          UPVAL U12
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R16
      134 CAPTURE                          UPVAL U14
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R6
      138 JUMPIFNOT                        R11 ; [+14]
      139 LOADK                            R23 K14 ["AssetProperty"]
      140 LOADK                            R24 K15 ["AssetsSelected"]
      141 DUPTABLE                         R25 K16 [{"count"}]
      142 FASTCALL1                        TOSTRING R8 ; [+3]
      143 MOVE                             R27 R8
      144 GETIMPORT                        R26 K18 [tostring]
      146 CALL                             R26 1 1
      147 SETTABLEKS                       R26 R25 K1 ["count"]
      149 NAMECALL                         R21 R6 K19 ["getText"]
      151 CALL                             R21 4 1
      152 JUMP                             ; [+21]
      153 JUMPIFNOT                        R10 ; [+15]
      154 LOADK                            R23 K14 ["AssetProperty"]
      155 LOADK                            R24 K20 ["AssetTypeDetails"]
      156 DUPTABLE                         R25 K22 [{"assetType"}]
      157 LOADK                            R28 K23 ["AssetType"]
      158 GETTABLEKS                       R29 R10 K23 ["AssetType"]
      160 NAMECALL                         R26 R6 K19 ["getText"]
      162 CALL                             R26 3 1
      163 SETTABLEKS                       R26 R25 K21 ["assetType"]
      165 NAMECALL                         R21 R6 K19 ["getText"]
      167 CALL                             R21 4 1
      168 JUMP                             ; [+5]
      169 LOADK                            R23 K24 ["DetailsDrawer"]
      170 LOADK                            R24 K25 ["EmptyTitle"]
      171 NAMECALL                         R21 R6 K19 ["getText"]
      173 CALL                             R21 3 1
      174 LOADB                            R22 0
      175 JUMPIFEQKNIL                     R9 ; [+5]
      177 MOVE                             R24 R9
      178 NAMECALL                         R22 R1 K26 ["canFetchAssetSharing"]
      180 CALL                             R22 2 1
      181 GETUPVAL                         R23 15
      182 MOVE                             R24 R9
      183 CALL                             R23 1 2
      184 DUPTABLE                         R25 K29 [{"Header", "HeaderDivider"}]
      185 GETUPVAL                         R26 16
      186 MOVE                             R27 R21
      187 MOVE                             R28 R19
      188 CALL                             R26 2 1
      189 SETTABLEKS                       R26 R25 K27 ["Header"]
      191 GETUPVAL                         R26 11
      192 GETTABLEKS                       R26 R26 K30 ["createElement"]
      194 GETUPVAL                         R27 17
      195 GETTABLEKS                       R27 R27 K31 ["Divider"]
      197 DUPTABLE                         R28 K35 [{["LayoutOrder"] = 3, ["orientation"]}]
      198 GETUPVAL                         R29 17
      199 GETTABLEKS                       R29 R29 K36 ["Enums"]
      201 GETTABLEKS                       R29 R29 K37 ["DividerOrientation"]
      203 GETTABLEKS                       R29 R29 K38 ["Horizontal"]
      205 SETTABLEKS                       R29 R28 K34 ["orientation"]
      207 CALL                             R26 2 1
      208 SETTABLEKS                       R26 R25 K28 ["HeaderDivider"]
      210 JUMPIFNOT                        R11 ; [+11]
      211 GETUPVAL                         R26 11
      212 GETTABLEKS                       R26 R26 K30 ["createElement"]
      214 GETUPVAL                         R27 18
      215 DUPTABLE                         R28 K41 [{["LayoutOrder"] = 4, ["Assets"]}]
      216 SETTABLEKS                       R11 R28 K40 ["Assets"]
      218 CALL                             R26 2 1
      219 SETTABLEKS                       R26 R25 K42 ["Body"]
      221 JUMP                             ; [+32]
      222 JUMPIFNOT                        R10 ; [+25]
      223 GETUPVAL                         R26 11
      224 GETTABLEKS                       R26 R26 K30 ["createElement"]
      226 GETUPVAL                         R27 19
      227 DUPTABLE                         R28 K51 [{["LayoutOrder"] = 4, ["Asset"], ["TechnicalDetails"], ["IsLoadingTechnicalDetails"], ["ShowAccessPolicy"], ["Sharing"], ["IsLoadingSharing"], ["OnManageSharing"], ["OnAction"]}]
      228 SETTABLEKS                       R10 R28 K43 ["Asset"]
      230 SETTABLEKS                       R12 R28 K44 ["TechnicalDetails"]
      232 SETTABLEKS                       R13 R28 K45 ["IsLoadingTechnicalDetails"]
      234 SETTABLEKS                       R22 R28 K46 ["ShowAccessPolicy"]
      236 SETTABLEKS                       R23 R28 K47 ["Sharing"]
      238 SETTABLEKS                       R24 R28 K48 ["IsLoadingSharing"]
      240 SETTABLEKS                       R20 R28 K49 ["OnManageSharing"]
      242 SETTABLEKS                       R18 R28 K50 ["OnAction"]
      244 CALL                             R26 2 1
      245 SETTABLEKS                       R26 R25 K42 ["Body"]
      247 JUMP                             ; [+6]
      248 GETUPVAL                         R26 20
      249 MOVE                             R27 R19
      250 MOVE                             R28 R6
      251 CALL                             R26 2 1
      252 SETTABLEKS                       R26 R25 K42 ["Body"]
      254 GETUPVAL                         R26 11
      255 GETTABLEKS                       R26 R26 K30 ["createElement"]
      257 GETUPVAL                         R27 17
      258 GETTABLEKS                       R27 R27 K52 ["View"]
      260 DUPTABLE                         R28 K57 [{["tag"] = "col size-full bg-surface-100", ["testId"] = "details-drawer"}]
      261 MOVE                             R29 R25
      262 CALL                             R26 3 -1
      263 RETURN                           R26 -1

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
       39 GETTABLEKS                       R7 R0 K12 ["Src"]
       41 GETTABLEKS                       R7 R7 K13 ["Analytics"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K5 [require]
       46 GETTABLEKS                       R8 R0 K12 ["Src"]
       48 GETTABLEKS                       R8 R8 K13 ["Analytics"]
       50 GETTABLEKS                       R8 R8 K14 ["Types"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K5 [require]
       55 GETIMPORT                        R9 K1 [script]
       57 GETTABLEKS                       R9 R9 K15 ["SingleAsset"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K5 [require]
       62 GETIMPORT                        R10 K1 [script]
       64 GETTABLEKS                       R10 R10 K16 ["MultiSelect"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K5 [require]
       69 GETTABLEKS                       R11 R0 K12 ["Src"]
       71 GETTABLEKS                       R11 R11 K17 ["Controllers"]
       73 GETTABLEKS                       R11 R11 K18 ["ExplorerController"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K5 [require]
       78 GETTABLEKS                       R12 R0 K12 ["Src"]
       80 GETTABLEKS                       R12 R12 K17 ["Controllers"]
       82 GETTABLEKS                       R12 R12 K19 ["ItemsController"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K5 [require]
       87 GETTABLEKS                       R13 R0 K12 ["Src"]
       89 GETTABLEKS                       R13 R13 K17 ["Controllers"]
       91 GETTABLEKS                       R13 R13 K20 ["LayoutController"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K5 [require]
       96 GETTABLEKS                       R14 R0 K12 ["Src"]
       98 GETTABLEKS                       R14 R14 K17 ["Controllers"]
      100 GETTABLEKS                       R14 R14 K21 ["PluginController"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K5 [require]
      105 GETTABLEKS                       R15 R0 K12 ["Src"]
      107 GETTABLEKS                       R15 R15 K17 ["Controllers"]
      109 GETTABLEKS                       R15 R15 K22 ["SearchController"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K5 [require]
      114 GETTABLEKS                       R16 R0 K12 ["Src"]
      116 GETTABLEKS                       R16 R16 K23 ["Networking"]
      118 CALL                             R15 1 1
      119 GETIMPORT                        R16 K5 [require]
      121 GETTABLEKS                       R17 R0 K12 ["Src"]
      123 GETTABLEKS                       R17 R17 K14 ["Types"]
      125 CALL                             R16 1 1
      126 GETIMPORT                        R17 K5 [require]
      128 GETTABLEKS                       R18 R0 K12 ["Src"]
      130 GETTABLEKS                       R18 R18 K24 ["Util"]
      132 GETTABLEKS                       R18 R18 K25 ["Dialogs"]
      134 GETTABLEKS                       R18 R18 K26 ["openQuickShare"]
      136 CALL                             R17 1 1
      137 GETIMPORT                        R18 K5 [require]
      139 GETTABLEKS                       R19 R0 K12 ["Src"]
      141 GETTABLEKS                       R19 R19 K27 ["Hooks"]
      143 GETTABLEKS                       R19 R19 K28 ["useItemSelection"]
      145 CALL                             R18 1 1
      146 GETIMPORT                        R19 K5 [require]
      148 GETTABLEKS                       R20 R0 K12 ["Src"]
      150 GETTABLEKS                       R20 R20 K27 ["Hooks"]
      152 GETTABLEKS                       R20 R20 K29 ["useAssetTechnicalDetails"]
      154 CALL                             R19 1 1
      155 GETIMPORT                        R20 K5 [require]
      157 GETTABLEKS                       R21 R0 K12 ["Src"]
      159 GETTABLEKS                       R21 R21 K27 ["Hooks"]
      161 GETTABLEKS                       R21 R21 K30 ["useAssetSharing"]
      163 CALL                             R20 1 1
      164 GETTABLEKS                       R21 R5 K31 ["Localization"]
      166 DUPCLOSURE                       R22 K32 [PROTO_0]
      167 DUPCLOSURE                       R23 K33 [PROTO_1]
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R3
      170 DUPCLOSURE                       R24 K34 [PROTO_2]
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R3
      173 DUPCLOSURE                       R25 K35 [PROTO_9]
      174 CAPTURE                          VAL R12
      175 CAPTURE                          VAL R11
      176 CAPTURE                          VAL R10
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R14
      179 CAPTURE                          VAL R15
      180 CAPTURE                          VAL R21
      181 CAPTURE                          VAL R18
      182 CAPTURE                          VAL R1
      183 CAPTURE                          VAL R22
      184 CAPTURE                          VAL R19
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R7
      188 CAPTURE                          VAL R17
      189 CAPTURE                          VAL R20
      190 CAPTURE                          VAL R23
      191 CAPTURE                          VAL R3
      192 CAPTURE                          VAL R9
      193 CAPTURE                          VAL R8
      194 CAPTURE                          VAL R24
      195 RETURN                           R25 1
