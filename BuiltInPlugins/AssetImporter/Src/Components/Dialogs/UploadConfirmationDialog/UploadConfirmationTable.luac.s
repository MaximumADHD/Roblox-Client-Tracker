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
       52 DUPTABLE                         R5 K17 [{"tag", "LayoutOrder"}]
       53 LOADK                            R6 K18 ["row align-y-center size-full-0 auto-y flex-y-fill"]
       54 SETTABLEKS                       R6 R5 K16 ["tag"]
       56 NAMECALL                         R6 R1 K14 ["getNextOrder"]
       58 CALL                             R6 1 1
       59 SETTABLEKS                       R6 R5 K10 ["LayoutOrder"]
       61 DUPTABLE                         R6 K21 [{"Asset", "Cost"}]
       62 GETUPVAL                         R7 1
       63 GETUPVAL                         R8 2
       64 GETTABLEKS                       R8 R8 K15 ["View"]
       66 DUPTABLE                         R9 K22 [{"tag"}]
       67 LOADK                            R10 K23 ["row align-x-left align-y-center fill auto-y padding-y-small padding-x-medium gap-xsmall"]
       68 SETTABLEKS                       R10 R9 K16 ["tag"]
       70 DUPTABLE                         R10 K26 [{"Icon", "Name"}]
       71 GETUPVAL                         R11 1
       72 GETUPVAL                         R12 2
       73 GETTABLEKS                       R12 R12 K27 ["Image"]
       75 DUPTABLE                         R13 K28 [{"tag", "Image"}]
       76 LOADK                            R14 K29 ["size-400-400"]
       77 SETTABLEKS                       R14 R13 K16 ["tag"]
       79 GETTABLEKS                       R15 R0 K0 ["fileType"]
       81 GETUPVAL                         R16 0
       82 GETTABLEKS                       R16 R16 K1 ["FileType"]
       84 GETTABLEKS                       R16 R16 K2 ["Audio"]
       86 JUMPIFNOTEQ                      R15 R16 ; [+9]
       88 GETUPVAL                         R14 5
       89 LOADK                            R16 K30 ["Sound"]
       90 NAMECALL                         R14 R14 K31 ["GetClassIcon"]
       92 CALL                             R14 2 1
       93 GETTABLEKS                       R14 R14 K27 ["Image"]
       95 JUMP                             ; [+7]
       96 GETUPVAL                         R14 5
       97 LOADK                            R16 K32 ["VideoFrame"]
       98 NAMECALL                         R14 R14 K31 ["GetClassIcon"]
      100 CALL                             R14 2 1
      101 GETTABLEKS                       R14 R14 K27 ["Image"]
      103 SETTABLEKS                       R14 R13 K27 ["Image"]
      105 CALL                             R11 2 1
      106 SETTABLEKS                       R11 R10 K24 ["Icon"]
      108 GETUPVAL                         R11 1
      109 GETUPVAL                         R12 2
      110 GETTABLEKS                       R12 R12 K33 ["Text"]
      112 DUPTABLE                         R13 K34 [{"tag", "Text"}]
      113 LOADK                            R14 K35 ["fill auto-y content-emphasis text-body-medium text-wrap text-align-x-left text-align-y-center"]
      114 SETTABLEKS                       R14 R13 K16 ["tag"]
      116 GETTABLEKS                       R14 R0 K36 ["assetName"]
      118 SETTABLEKS                       R14 R13 K33 ["Text"]
      120 CALL                             R11 2 1
      121 SETTABLEKS                       R11 R10 K25 ["Name"]
      123 CALL                             R7 3 1
      124 SETTABLEKS                       R7 R6 K19 ["Asset"]
      126 GETUPVAL                         R7 1
      127 GETUPVAL                         R8 2
      128 GETTABLEKS                       R8 R8 K15 ["View"]
      130 DUPTABLE                         R9 K22 [{"tag"}]
      131 LOADK                            R10 K23 ["row align-x-left align-y-center fill auto-y padding-y-small padding-x-medium gap-xsmall"]
      132 SETTABLEKS                       R10 R9 K16 ["tag"]
      134 DUPTABLE                         R10 K38 [{"Icon", "Amount"}]
      135 GETUPVAL                         R11 1
      136 GETUPVAL                         R12 2
      137 GETTABLEKS                       R12 R12 K24 ["Icon"]
      139 DUPTABLE                         R13 K41 [{"name", "size"}]
      140 GETUPVAL                         R14 6
      141 GETTABLEKS                       R14 R14 K42 ["Robux"]
      143 SETTABLEKS                       R14 R13 K39 ["name"]
      145 GETUPVAL                         R14 7
      146 GETTABLEKS                       R14 R14 K43 ["Medium"]
      148 SETTABLEKS                       R14 R13 K40 ["size"]
      150 CALL                             R11 2 1
      151 SETTABLEKS                       R11 R10 K24 ["Icon"]
      153 GETUPVAL                         R11 1
      154 GETUPVAL                         R12 2
      155 GETTABLEKS                       R12 R12 K33 ["Text"]
      157 DUPTABLE                         R13 K34 [{"tag", "Text"}]
      158 LOADK                            R14 K35 ["fill auto-y content-emphasis text-body-medium text-wrap text-align-x-left text-align-y-center"]
      159 SETTABLEKS                       R14 R13 K16 ["tag"]
      161 GETTABLEKS                       R15 R0 K0 ["fileType"]
      163 GETUPVAL                         R16 0
      164 GETTABLEKS                       R16 R16 K1 ["FileType"]
      166 GETTABLEKS                       R16 R16 K2 ["Audio"]
      168 JUMPIFNOTEQ                      R15 R16 ; [+3]
      170 LOADN                            R14 0
      171 JUMP                             ; [+1]
      172 GETUPVAL                         R14 8
      173 SETTABLEKS                       R14 R13 K33 ["Text"]
      175 CALL                             R11 2 1
      176 SETTABLEKS                       R11 R10 K37 ["Amount"]
      178 CALL                             R7 3 1
      179 SETTABLEKS                       R7 R6 K20 ["Cost"]
      181 CALL                             R3 3 -1
      182 RETURN                           R2 -1

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
       35 DUPTABLE                         R5 K9 [{"tag", "Size", "LayoutOrder"}]
       36 LOADK                            R6 K10 ["col align-x-left size-full-0 auto-y stroke-standard stroke-default radius-medium"]
       37 SETTABLEKS                       R6 R5 K6 ["tag"]
       39 GETIMPORT                        R6 K12 [UDim2.new]
       41 LOADN                            R7 1
       42 LOADN                            R8 254
       43 LOADN                            R9 0
       44 LOADN                            R10 0
       45 CALL                             R6 4 1
       46 SETTABLEKS                       R6 R5 K7 ["Size"]
       48 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       50 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       52 DUPTABLE                         R6 K15 [{"Header", "Wrapper"}]
       53 GETUPVAL                         R7 2
       54 GETUPVAL                         R8 3
       55 GETTABLEKS                       R8 R8 K5 ["View"]
       57 DUPTABLE                         R9 K16 [{"tag"}]
       58 LOADK                            R10 K17 ["row align-y-center size-full-0 auto-y flex-y-fill"]
       59 SETTABLEKS                       R10 R9 K6 ["tag"]
       61 DUPTABLE                         R10 K20 [{"Name", "Amount"}]
       62 GETUPVAL                         R11 2
       63 GETUPVAL                         R12 3
       64 GETTABLEKS                       R12 R12 K21 ["Text"]
       66 DUPTABLE                         R13 K22 [{"tag", "Text"}]
       67 LOADK                            R14 K23 ["fill auto-y content-emphasis padding-y-xsmall padding-x-medium text-label-small text-wrap text-align-x-left text-align-y-center"]
       68 SETTABLEKS                       R14 R13 K6 ["tag"]
       70 GETTABLEKS                       R14 R0 K24 ["Localization"]
       72 LOADK                            R16 K25 ["UploadConfirmation"]
       73 LOADK                            R17 K18 ["Name"]
       74 NAMECALL                         R14 R14 K26 ["getText"]
       76 CALL                             R14 3 1
       77 SETTABLEKS                       R14 R13 K21 ["Text"]
       79 CALL                             R11 2 1
       80 SETTABLEKS                       R11 R10 K18 ["Name"]
       82 GETUPVAL                         R11 2
       83 GETUPVAL                         R12 3
       84 GETTABLEKS                       R12 R12 K21 ["Text"]
       86 DUPTABLE                         R13 K22 [{"tag", "Text"}]
       87 LOADK                            R14 K23 ["fill auto-y content-emphasis padding-y-xsmall padding-x-medium text-label-small text-wrap text-align-x-left text-align-y-center"]
       88 SETTABLEKS                       R14 R13 K6 ["tag"]
       90 GETTABLEKS                       R14 R0 K24 ["Localization"]
       92 LOADK                            R16 K25 ["UploadConfirmation"]
       93 LOADK                            R17 K27 ["Fee"]
       94 NAMECALL                         R14 R14 K26 ["getText"]
       96 CALL                             R14 3 1
       97 SETTABLEKS                       R14 R13 K21 ["Text"]
       99 CALL                             R11 2 1
      100 SETTABLEKS                       R11 R10 K19 ["Amount"]
      102 CALL                             R7 3 1
      103 SETTABLEKS                       R7 R6 K13 ["Header"]
      105 GETUPVAL                         R7 2
      106 GETUPVAL                         R8 3
      107 GETTABLEKS                       R8 R8 K5 ["View"]
      109 DUPTABLE                         R9 K16 [{"tag"}]
      110 LOADK                            R10 K28 ["col align-x-left size-full-0 auto-y"]
      111 SETTABLEKS                       R10 R9 K6 ["tag"]
      113 MOVE                             R10 R1
      114 CALL                             R7 3 1
      115 SETTABLEKS                       R7 R6 K14 ["Wrapper"]
      117 CALL                             R3 3 -1
      118 RETURN                           R3 -1

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
