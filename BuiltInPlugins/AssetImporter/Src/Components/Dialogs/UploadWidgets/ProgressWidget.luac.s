PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["UploadStatus"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 LOADNIL                          R7
        8 GETUPVAL                         R10 0
        9 GETTABLEKS                       R9 R10 K1 ["UploadRequestStatus"]
       11 GETTABLEKS                       R8 R9 K2 ["Waiting"]
       13 JUMPIFNOTEQ                      R6 R8 ; [+17]
       15 GETUPVAL                         R9 1
       16 GETTABLEKS                       R8 R9 K3 ["createElement"]
       18 GETUPVAL                         R9 2
       19 DUPTABLE                         R10 K6 [{"size", "LayoutOrder"}]
       20 GETUPVAL                         R12 3
       21 GETTABLEKS                       R11 R12 K7 ["Small"]
       23 SETTABLEKS                       R11 R10 K4 ["size"]
       25 LOADN                            R11 1
       26 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       28 CALL                             R8 2 1
       29 MOVE                             R7 R8
       30 JUMP                             ; [+27]
       31 GETUPVAL                         R9 1
       32 GETTABLEKS                       R8 R9 K3 ["createElement"]
       34 GETUPVAL                         R9 4
       35 DUPTABLE                         R10 K9 [{"name", "size", "LayoutOrder"}]
       36 GETUPVAL                         R14 0
       37 GETTABLEKS                       R13 R14 K1 ["UploadRequestStatus"]
       39 GETTABLEKS                       R12 R13 K10 ["Succeeded"]
       41 JUMPIFNOTEQ                      R6 R12 ; [+3]
       43 GETUPVAL                         R11 5
       44 JUMP                             ; [+1]
       45 GETUPVAL                         R11 6
       46 SETTABLEKS                       R11 R10 K8 ["name"]
       48 GETUPVAL                         R12 3
       49 GETTABLEKS                       R11 R12 K7 ["Small"]
       51 SETTABLEKS                       R11 R10 K4 ["size"]
       53 LOADN                            R11 1
       54 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       56 CALL                             R8 2 1
       57 MOVE                             R7 R8
       58 GETUPVAL                         R9 1
       59 GETTABLEKS                       R8 R9 K3 ["createElement"]
       61 GETUPVAL                         R9 7
       62 DUPTABLE                         R10 K13 [{"tag", "Text", "LayoutOrder"}]
       63 NEWTABLE                         R11 4 0
       65 LOADB                            R12 1
       66 SETTABLEKS                       R12 R11 K14 ["fill auto-xy text-align-x-left text-label-medium text-wrap"]
       68 GETUPVAL                         R15 0
       69 GETTABLEKS                       R14 R15 K1 ["UploadRequestStatus"]
       71 GETTABLEKS                       R13 R14 K2 ["Waiting"]
       73 JUMPIFEQ                         R6 R13 ; [+2]
       75 LOADB                            R12 0 +1
       76 LOADB                            R12 1
       77 SETTABLEKS                       R12 R11 K15 ["content-system-warning"]
       79 GETUPVAL                         R15 0
       80 GETTABLEKS                       R14 R15 K1 ["UploadRequestStatus"]
       82 GETTABLEKS                       R13 R14 K10 ["Succeeded"]
       84 JUMPIFEQ                         R6 R13 ; [+2]
       86 LOADB                            R12 0 +1
       87 LOADB                            R12 1
       88 SETTABLEKS                       R12 R11 K16 ["content-system-success"]
       90 GETUPVAL                         R15 0
       91 GETTABLEKS                       R14 R15 K1 ["UploadRequestStatus"]
       93 GETTABLEKS                       R13 R14 K17 ["Failed"]
       95 JUMPIFEQ                         R6 R13 ; [+2]
       97 LOADB                            R12 0 +1
       98 LOADB                            R12 1
       99 SETTABLEKS                       R12 R11 K18 ["content-system-alert"]
      101 SETTABLEKS                       R11 R10 K11 ["tag"]
      103 SETTABLEKS                       R5 R10 K12 ["Text"]
      105 LOADN                            R11 2
      106 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      108 CALL                             R8 2 1
      109 GETUPVAL                         R10 1
      110 GETTABLEKS                       R9 R10 K3 ["createElement"]
      112 GETUPVAL                         R10 8
      113 DUPTABLE                         R11 K19 [{"tag"}]
      114 LOADK                            R12 K20 ["row align-x-left size-full-500"]
      115 SETTABLEKS                       R12 R11 K11 ["tag"]
      117 DUPTABLE                         R12 K22 [{"Icon", "Text"}]
      118 SETTABLEKS                       R7 R12 K21 ["Icon"]
      120 SETTABLEKS                       R8 R12 K12 ["Text"]
      122 CALL                             R9 3 1
      123 FASTCALL2                        TABLE_INSERT R1 R9 ; [+5]
      125 MOVE                             R11 R1
      126 MOVE                             R12 R9
      127 GETIMPORT                        R10 K25 [table.insert]
      129 CALL                             R10 2 0
      130 FORGLOOP                         R2 2 ; [-124]
      132 GETUPVAL                         R3 1
      133 GETTABLEKS                       R2 R3 K3 ["createElement"]
      135 GETUPVAL                         R3 9
      136 NEWTABLE                         R4 0 0
      138 DUPTABLE                         R5 K27 [{"View"}]
      139 GETUPVAL                         R7 1
      140 GETTABLEKS                       R6 R7 K3 ["createElement"]
      142 GETUPVAL                         R7 8
      143 DUPTABLE                         R8 K19 [{"tag"}]
      144 LOADK                            R9 K28 ["col align-x-left align-y-top size-full margin-medium gap-medium"]
      145 SETTABLEKS                       R9 R8 K11 ["tag"]
      147 DUPTABLE                         R9 K30 [{"Text", "Table"}]
      148 GETUPVAL                         R11 1
      149 GETTABLEKS                       R10 R11 K3 ["createElement"]
      151 GETUPVAL                         R11 7
      152 DUPTABLE                         R12 K13 [{"tag", "Text", "LayoutOrder"}]
      153 LOADK                            R13 K31 ["auto-xy text-align-x-left text-title-medium text-wrap"]
      154 SETTABLEKS                       R13 R12 K11 ["tag"]
      156 GETTABLEKS                       R13 R0 K32 ["UploadText"]
      158 SETTABLEKS                       R13 R12 K12 ["Text"]
      160 LOADN                            R13 1
      161 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
      163 CALL                             R10 2 1
      164 SETTABLEKS                       R10 R9 K12 ["Text"]
      166 GETUPVAL                         R11 1
      167 GETTABLEKS                       R10 R11 K3 ["createElement"]
      169 GETUPVAL                         R11 10
      170 DUPTABLE                         R12 K35 [{"scroll", "tag", "LayoutOrder", "ScrollBarImageTransparency"}]
      171 DUPTABLE                         R13 K40 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
      172 GETUPVAL                         R15 11
      173 GETTABLEKS                       R14 R15 K41 ["Always"]
      175 SETTABLEKS                       R14 R13 K36 ["scrollBarVisibility"]
      177 GETIMPORT                        R14 K44 [Enum.ScrollingDirection.Y]
      179 SETTABLEKS                       R14 R13 K37 ["ScrollingDirection"]
      181 GETIMPORT                        R14 K46 [Enum.AutomaticSize.Y]
      183 SETTABLEKS                       R14 R13 K38 ["AutomaticCanvasSize"]
      185 GETIMPORT                        R14 K49 [UDim2.new]
      187 CALL                             R14 0 1
      188 SETTABLEKS                       R14 R13 K39 ["CanvasSize"]
      190 SETTABLEKS                       R13 R12 K33 ["scroll"]
      192 LOADK                            R13 K50 ["fill size-full col align-y-top gap-small"]
      193 SETTABLEKS                       R13 R12 K11 ["tag"]
      195 LOADN                            R13 2
      196 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
      198 LOADN                            R13 0
      199 SETTABLEKS                       R13 R12 K34 ["ScrollBarImageTransparency"]
      201 MOVE                             R13 R1
      202 CALL                             R10 3 1
      203 SETTABLEKS                       R10 R9 K29 ["Table"]
      205 CALL                             R6 3 1
      206 SETTABLEKS                       R6 R5 K26 ["View"]
      208 CALL                             R2 3 -1
      209 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["BuilderIcons"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R2 K9 ["Icon"]
       23 GETTABLEKS                       R3 R4 K10 ["Check"]
       25 GETTABLEKS                       R5 R2 K9 ["Icon"]
       27 GETTABLEKS                       R4 R5 K11 ["X"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R7 R0 K6 ["Packages"]
       33 GETTABLEKS                       R6 R7 K12 ["Foundation"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R5 K13 ["FoundationProvider"]
       38 GETTABLEKS                       R8 R5 K14 ["Enums"]
       40 GETTABLEKS                       R7 R8 K15 ["ScrollBarVisibility"]
       42 GETTABLEKS                       R9 R5 K14 ["Enums"]
       44 GETTABLEKS                       R8 R9 K16 ["IconSize"]
       46 GETTABLEKS                       R9 R5 K9 ["Icon"]
       48 GETTABLEKS                       R10 R5 K17 ["Loading"]
       50 GETTABLEKS                       R11 R5 K18 ["ScrollView"]
       52 GETTABLEKS                       R12 R5 K19 ["Text"]
       54 GETTABLEKS                       R13 R5 K20 ["View"]
       56 GETIMPORT                        R14 K5 [require]
       58 GETTABLEKS                       R16 R0 K21 ["Src"]
       60 GETTABLEKS                       R15 R16 K22 ["Types"]
       62 CALL                             R14 1 1
       63 DUPCLOSURE                       R15 K23 [PROTO_0]
       64 CAPTURE                          VAL R14
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R12
       72 CAPTURE                          VAL R13
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R7
       76 RETURN                           R15 1
