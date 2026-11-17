PROTO_0:
        0 LOADB                            R3 1
        1 GETTABLEKS                       R4 R0 K0 ["fileType"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K1 ["FileType"]
        6 GETTABLEKS                       R5 R5 K2 ["Audio"]
        8 JUMPIFEQ                         R4 R5 ; [+12]
       10 GETTABLEKS                       R4 R0 K0 ["fileType"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K1 ["FileType"]
       15 GETTABLEKS                       R5 R5 K3 ["Video"]
       17 JUMPIFEQ                         R4 R5 ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       23 LOADK                            R4 K4 ["Item in dialog must be Audio or Video"]
       24 GETIMPORT                        R2 K6 [assert]
       26 CALL                             R2 2 0
       27 GETUPVAL                         R2 1
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R3 R3 K7 ["Divider"]
       31 DUPTABLE                         R4 K11 [{"variant", "orientation", "LayoutOrder"}]
       32 GETUPVAL                         R5 3
       33 GETTABLEKS                       R5 R5 K12 ["Default"]
       35 SETTABLEKS                       R5 R4 K8 ["variant"]
       37 GETUPVAL                         R5 4
       38 GETTABLEKS                       R5 R5 K13 ["Horizontal"]
       40 SETTABLEKS                       R5 R4 K9 ["orientation"]
       42 NAMECALL                         R5 R1 K14 ["getNextOrder"]
       44 CALL                             R5 1 1
       45 SETTABLEKS                       R5 R4 K10 ["LayoutOrder"]
       47 CALL                             R2 2 1
       48 GETUPVAL                         R3 1
       49 GETUPVAL                         R4 2
       50 GETTABLEKS                       R4 R4 K15 ["View"]
       52 DUPTABLE                         R5 K18 [{["tag"] = "row flex-y-fill align-y-center size-full-0 auto-y", ["LayoutOrder"]}]
       53 NAMECALL                         R6 R1 K14 ["getNextOrder"]
       55 CALL                             R6 1 1
       56 SETTABLEKS                       R6 R5 K10 ["LayoutOrder"]
       58 DUPTABLE                         R6 K21 [{"Asset", "Cost"}]
       59 GETUPVAL                         R7 1
       60 GETUPVAL                         R8 2
       61 GETTABLEKS                       R8 R8 K15 ["View"]
       63 DUPTABLE                         R9 K23 [{["tag"] = "row align-x-left align-y-center fill gap-xsmall auto-y padding-x-medium padding-y-small"}]
       64 DUPTABLE                         R10 K26 [{"Icon", "Name"}]
       65 GETUPVAL                         R11 1
       66 GETUPVAL                         R12 2
       67 GETTABLEKS                       R12 R12 K27 ["Image"]
       69 DUPTABLE                         R13 K29 [{["tag"] = "size-400-400", ["Image"]}]
       70 GETTABLEKS                       R15 R0 K0 ["fileType"]
       72 GETUPVAL                         R16 0
       73 GETTABLEKS                       R16 R16 K1 ["FileType"]
       75 GETTABLEKS                       R16 R16 K2 ["Audio"]
       77 JUMPIFNOTEQ                      R15 R16 ; [+9]
       79 GETUPVAL                         R14 5
       80 LOADK                            R16 K30 ["Sound"]
       81 NAMECALL                         R14 R14 K31 ["GetClassIcon"]
       83 CALL                             R14 2 1
       84 GETTABLEKS                       R14 R14 K27 ["Image"]
       86 JUMP                             ; [+7]
       87 GETUPVAL                         R14 5
       88 LOADK                            R16 K32 ["VideoFrame"]
       89 NAMECALL                         R14 R14 K31 ["GetClassIcon"]
       91 CALL                             R14 2 1
       92 GETTABLEKS                       R14 R14 K27 ["Image"]
       94 SETTABLEKS                       R14 R13 K27 ["Image"]
       96 CALL                             R11 2 1
       97 SETTABLEKS                       R11 R10 K24 ["Icon"]
       99 GETUPVAL                         R11 1
      100 GETUPVAL                         R12 2
      101 GETTABLEKS                       R12 R12 K33 ["Text"]
      103 DUPTABLE                         R13 K35 [{["tag"] = "fill auto-y text-body-medium text-wrap text-align-x-left text-align-y-center content-emphasis", ["Text"]}]
      104 GETTABLEKS                       R14 R0 K36 ["assetName"]
      106 SETTABLEKS                       R14 R13 K33 ["Text"]
      108 CALL                             R11 2 1
      109 SETTABLEKS                       R11 R10 K25 ["Name"]
      111 CALL                             R7 3 1
      112 SETTABLEKS                       R7 R6 K19 ["Asset"]
      114 GETUPVAL                         R7 1
      115 GETUPVAL                         R8 2
      116 GETTABLEKS                       R8 R8 K15 ["View"]
      118 DUPTABLE                         R9 K23 [{["tag"] = "row align-x-left align-y-center fill gap-xsmall auto-y padding-x-medium padding-y-small"}]
      119 DUPTABLE                         R10 K38 [{"Icon", "Amount"}]
      120 GETUPVAL                         R11 1
      121 GETUPVAL                         R12 2
      122 GETTABLEKS                       R12 R12 K24 ["Icon"]
      124 DUPTABLE                         R13 K41 [{"name", "size"}]
      125 GETUPVAL                         R14 6
      126 GETTABLEKS                       R14 R14 K42 ["Robux"]
      128 SETTABLEKS                       R14 R13 K39 ["name"]
      130 GETUPVAL                         R14 7
      131 GETTABLEKS                       R14 R14 K43 ["Medium"]
      133 SETTABLEKS                       R14 R13 K40 ["size"]
      135 CALL                             R11 2 1
      136 SETTABLEKS                       R11 R10 K24 ["Icon"]
      138 GETUPVAL                         R11 1
      139 GETUPVAL                         R12 2
      140 GETTABLEKS                       R12 R12 K33 ["Text"]
      142 DUPTABLE                         R13 K35 [{["tag"] = "fill auto-y text-body-medium text-wrap text-align-x-left text-align-y-center content-emphasis", ["Text"]}]
      143 GETTABLEKS                       R15 R0 K0 ["fileType"]
      145 GETUPVAL                         R16 0
      146 GETTABLEKS                       R16 R16 K1 ["FileType"]
      148 GETTABLEKS                       R16 R16 K2 ["Audio"]
      150 JUMPIFNOTEQ                      R15 R16 ; [+3]
      152 LOADN                            R14 0
      153 JUMP                             ; [+1]
      154 GETUPVAL                         R14 8
      155 SETTABLEKS                       R14 R13 K33 ["Text"]
      157 CALL                             R11 2 1
      158 SETTABLEKS                       R11 R10 K37 ["Amount"]
      160 CALL                             R7 3 1
      161 SETTABLEKS                       R7 R6 K20 ["Cost"]
      163 CALL                             R3 3 -1
      164 RETURN                           R2 -1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["new"]
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R3 R0 K1 ["QueueItems"]
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETUPVAL                         R8 1
       12 MOVE                             R9 R7
       13 MOVE                             R10 R2
       14 CALL                             R8 2 2
       15 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       17 MOVE                             R11 R1
       18 MOVE                             R12 R8
       19 GETIMPORT                        R10 K4 [table.insert]
       21 CALL                             R10 2 0
       22 FASTCALL2                        TABLE_INSERT R1 R9 ; [+5]
       24 MOVE                             R11 R1
       25 MOVE                             R12 R9
       26 GETIMPORT                        R10 K4 [table.insert]
       28 CALL                             R10 2 0
       29 FORGLOOP                         R3 2 ; [-19]
       31 GETUPVAL                         R3 2
       32 GETUPVAL                         R4 3
       33 GETTABLEKS                       R4 R4 K5 ["View"]
       35 DUPTABLE                         R5 K10 [{["tag"] = "col align-x-left size-full-0 auto-y stroke-standard stroke-default radius-medium", ["Size"], ["LayoutOrder"]}]
       36 GETIMPORT                        R6 K12 [UDim2.new]
       38 LOADN                            R7 1
       39 LOADN                            R8 -2
       40 LOADN                            R9 0
       41 LOADN                            R10 0
       42 CALL                             R6 4 1
       43 SETTABLEKS                       R6 R5 K8 ["Size"]
       45 GETTABLEKS                       R6 R0 K9 ["LayoutOrder"]
       47 SETTABLEKS                       R6 R5 K9 ["LayoutOrder"]
       49 DUPTABLE                         R6 K15 [{"Header", "Wrapper"}]
       50 GETUPVAL                         R7 2
       51 GETUPVAL                         R8 3
       52 GETTABLEKS                       R8 R8 K5 ["View"]
       54 DUPTABLE                         R9 K17 [{["tag"] = "row flex-y-fill align-y-center size-full-0 auto-y"}]
       55 DUPTABLE                         R10 K20 [{"Name", "Amount"}]
       56 GETUPVAL                         R11 2
       57 GETUPVAL                         R12 3
       58 GETTABLEKS                       R12 R12 K21 ["Text"]
       60 DUPTABLE                         R13 K23 [{["tag"] = "fill auto-y padding-x-medium padding-y-xsmall text-label-small text-wrap text-align-x-left text-align-y-center content-emphasis", ["Text"]}]
       61 GETTABLEKS                       R14 R0 K24 ["Localization"]
       63 LOADK                            R16 K25 ["UploadConfirmation"]
       64 LOADK                            R17 K18 ["Name"]
       65 NAMECALL                         R14 R14 K26 ["getText"]
       67 CALL                             R14 3 1
       68 SETTABLEKS                       R14 R13 K21 ["Text"]
       70 CALL                             R11 2 1
       71 SETTABLEKS                       R11 R10 K18 ["Name"]
       73 GETUPVAL                         R11 2
       74 GETUPVAL                         R12 3
       75 GETTABLEKS                       R12 R12 K21 ["Text"]
       77 DUPTABLE                         R13 K23 [{["tag"] = "fill auto-y padding-x-medium padding-y-xsmall text-label-small text-wrap text-align-x-left text-align-y-center content-emphasis", ["Text"]}]
       78 GETTABLEKS                       R14 R0 K24 ["Localization"]
       80 LOADK                            R16 K25 ["UploadConfirmation"]
       81 LOADK                            R17 K27 ["Fee"]
       82 NAMECALL                         R14 R14 K26 ["getText"]
       84 CALL                             R14 3 1
       85 SETTABLEKS                       R14 R13 K21 ["Text"]
       87 CALL                             R11 2 1
       88 SETTABLEKS                       R11 R10 K19 ["Amount"]
       90 CALL                             R7 3 1
       91 SETTABLEKS                       R7 R6 K13 ["Header"]
       93 GETUPVAL                         R7 2
       94 GETUPVAL                         R8 3
       95 GETTABLEKS                       R8 R8 K5 ["View"]
       97 DUPTABLE                         R9 K29 [{["tag"] = "col align-x-left size-full-0 auto-y"}]
       98 MOVE                             R10 R1
       99 CALL                             R7 3 1
      100 SETTABLEKS                       R7 R6 K14 ["Wrapper"]
      102 CALL                             R3 3 -1
      103 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Utility"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["StudioService"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R0 K11 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K13 ["Util"]
       29 GETTABLEKS                       R4 R4 K14 ["LayoutOrderIterator"]
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K11 ["Packages"]
       35 GETTABLEKS                       R6 R6 K15 ["React"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R6 R5 K16 ["createElement"]
       40 GETIMPORT                        R7 K5 [require]
       42 GETTABLEKS                       R8 R0 K11 ["Packages"]
       44 GETTABLEKS                       R8 R8 K17 ["Foundation"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R7 K18 ["Enums"]
       49 GETTABLEKS                       R8 R8 K19 ["DividerVariant"]
       51 GETTABLEKS                       R9 R7 K18 ["Enums"]
       53 GETTABLEKS                       R9 R9 K20 ["IconName"]
       55 GETTABLEKS                       R10 R7 K18 ["Enums"]
       57 GETTABLEKS                       R10 R10 K21 ["IconSize"]
       59 GETTABLEKS                       R11 R7 K18 ["Enums"]
       61 GETTABLEKS                       R11 R11 K22 ["Orientation"]
       63 GETIMPORT                        R12 K5 [require]
       65 GETTABLEKS                       R13 R0 K6 ["Src"]
       67 GETTABLEKS                       R13 R13 K23 ["Types"]
       69 CALL                             R12 1 1
       70 GETIMPORT                        R13 K5 [require]
       72 GETTABLEKS                       R14 R0 K6 ["Src"]
       74 GETTABLEKS                       R14 R14 K23 ["Types"]
       76 GETTABLEKS                       R14 R14 K24 ["QueuedSession"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K5 [require]
       81 GETTABLEKS                       R15 R0 K6 ["Src"]
       83 GETTABLEKS                       R15 R15 K25 ["Flags"]
       85 GETTABLEKS                       R15 R15 K26 ["getDFIntBulkImportVideoPrice"]
       87 CALL                             R14 1 1
       88 MOVE                             R16 R14
       89 CALL                             R16 0 1
       90 ORK                              R15 R16 K27 [2000]
       91 DUPCLOSURE                       R16 K28 [PROTO_0]
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R15
      101 DUPCLOSURE                       R17 K29 [PROTO_1]
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R16
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R7
      106 RETURN                           R17 1
