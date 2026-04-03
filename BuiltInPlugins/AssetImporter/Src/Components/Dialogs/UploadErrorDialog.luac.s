PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["ErrorMessages"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 NEWTABLE                         R1 0 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["new"]
        9 CALL                             R2 0 1
       10 GETTABLEKS                       R3 R0 K0 ["ErrorMessages"]
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 GETUPVAL                         R8 1
       16 GETUPVAL                         R10 2
       17 GETTABLEKS                       R9 R10 K2 ["View"]
       19 DUPTABLE                         R10 K5 [{"LayoutOrder", "tag"}]
       20 NAMECALL                         R11 R2 K6 ["getNextOrder"]
       22 CALL                             R11 1 1
       23 SETTABLEKS                       R11 R10 K3 ["LayoutOrder"]
       25 LOADK                            R11 K7 ["col size-full-0 auto-y padding-y-small gap-xsmall"]
       26 SETTABLEKS                       R11 R10 K4 ["tag"]
       28 DUPTABLE                         R11 K10 [{"AssetName", "ErrorMsg"}]
       29 GETUPVAL                         R12 1
       30 GETUPVAL                         R14 2
       31 GETTABLEKS                       R13 R14 K11 ["Text"]
       33 DUPTABLE                         R14 K12 [{"tag", "Text"}]
       34 LOADK                            R15 K13 ["size-full-0 auto-y text-align-x-left text-title-small text-wrap"]
       35 SETTABLEKS                       R15 R14 K4 ["tag"]
       37 SETTABLEKS                       R6 R14 K11 ["Text"]
       39 CALL                             R12 2 1
       40 SETTABLEKS                       R12 R11 K8 ["AssetName"]
       42 GETUPVAL                         R12 1
       43 GETUPVAL                         R14 2
       44 GETTABLEKS                       R13 R14 K11 ["Text"]
       46 DUPTABLE                         R14 K12 [{"tag", "Text"}]
       47 LOADK                            R15 K14 ["size-full-0 auto-y text-align-x-left text-body-small text-wrap"]
       48 SETTABLEKS                       R15 R14 K4 ["tag"]
       50 SETTABLEKS                       R7 R14 K11 ["Text"]
       52 CALL                             R12 2 1
       53 SETTABLEKS                       R12 R11 K9 ["ErrorMsg"]
       55 CALL                             R8 3 1
       56 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       58 MOVE                             R10 R1
       59 MOVE                             R11 R8
       60 GETIMPORT                        R9 K17 [table.insert]
       62 CALL                             R9 2 0
       63 MOVE                             R10 R1
       64 GETUPVAL                         R11 1
       65 GETUPVAL                         R13 2
       66 GETTABLEKS                       R12 R13 K18 ["Divider"]
       68 DUPTABLE                         R13 K19 [{"LayoutOrder"}]
       69 NAMECALL                         R14 R2 K6 ["getNextOrder"]
       71 CALL                             R14 1 1
       72 SETTABLEKS                       R14 R13 K3 ["LayoutOrder"]
       74 CALL                             R11 2 -1
       75 FASTCALL                         TABLE_INSERT ; [+2]
       76 GETIMPORT                        R9 K17 [table.insert]
       78 CALL                             R9 -1 0
       79 FORGLOOP                         R3 2 ; [-65]
       81 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Dialogs"]
        2 GETTABLEKS                       R1 R2 K1 ["uploadWidgetItem"]
        4 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Dialogs"]
        2 GETTABLEKS                       R1 R2 K1 ["showUploadWidget"]
        4 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R3 3
        7 GETTABLEKS                       R2 R3 K0 ["filepath"]
        9 NAMECALL                         R0 R0 K1 ["requestPreview"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["use"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K0 ["use"]
        9 CALL                             R3 0 1
       10 GETUPVAL                         R6 3
       11 GETTABLEKS                       R5 R6 K1 ["Design"]
       13 GETTABLEKS                       R4 R5 K0 ["use"]
       15 CALL                             R4 0 1
       16 NAMECALL                         R4 R4 K2 ["get"]
       18 CALL                             R4 1 1
       19 GETUPVAL                         R5 4
       20 DUPCLOSURE                       R6 K3 [PROTO_1]
       21 CALL                             R5 1 1
       22 GETUPVAL                         R6 4
       23 DUPCLOSURE                       R7 K4 [PROTO_2]
       24 CALL                             R6 1 1
       25 GETTABLEKS                       R7 R5 K5 ["uploadResults"]
       27 JUMPIFNOT                        R7 ; [+5]
       28 GETTABLEKS                       R8 R5 K5 ["uploadResults"]
       30 GETTABLEKS                       R7 R8 K6 ["Succeeded"]
       32 JUMPIFNOT                        R7 ; [+1]
       33 RETURN                           R0 0
       34 NEWTABLE                         R7 0 0
       36 GETTABLEKS                       R8 R5 K7 ["fileType"]
       38 GETUPVAL                         R11 5
       39 GETTABLEKS                       R10 R11 K8 ["FileType"]
       41 GETTABLEKS                       R9 R10 K9 ["Scene"]
       43 JUMPIFNOTEQ                      R8 R9 ; [+27]
       45 DUPTABLE                         R10 K13 [{"text", "variant", "onActivated"}]
       46 LOADK                            R13 K14 ["UploadError"]
       47 LOADK                            R14 K15 ["ReconfigureButton"]
       48 NAMECALL                         R11 R3 K16 ["getText"]
       50 CALL                             R11 3 1
       51 SETTABLEKS                       R11 R10 K10 ["text"]
       53 GETUPVAL                         R12 6
       54 GETTABLEKS                       R11 R12 K17 ["Standard"]
       56 SETTABLEKS                       R11 R10 K11 ["variant"]
       58 NEWCLOSURE                       R11 P2
       59 CAPTURE                          VAL R1
       60 CAPTURE                          UPVAL U7
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R5
       63 SETTABLEKS                       R11 R10 K12 ["onActivated"]
       65 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
       67 MOVE                             R9 R7
       68 GETIMPORT                        R8 K20 [table.insert]
       70 CALL                             R8 2 0
       71 DUPTABLE                         R10 K13 [{"text", "variant", "onActivated"}]
       72 LOADK                            R13 K14 ["UploadError"]
       73 LOADK                            R14 K21 ["OkButton"]
       74 NAMECALL                         R11 R3 K16 ["getText"]
       76 CALL                             R11 3 1
       77 SETTABLEKS                       R11 R10 K10 ["text"]
       79 GETUPVAL                         R12 6
       80 GETTABLEKS                       R11 R12 K22 ["Emphasis"]
       82 SETTABLEKS                       R11 R10 K11 ["variant"]
       84 NEWCLOSURE                       R11 P3
       85 CAPTURE                          VAL R1
       86 CAPTURE                          UPVAL U7
       87 SETTABLEKS                       R11 R10 K12 ["onActivated"]
       89 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
       91 MOVE                             R9 R7
       92 GETIMPORT                        R8 K20 [table.insert]
       94 CALL                             R8 2 0
       95 GETUPVAL                         R9 8
       96 GETTABLEKS                       R8 R9 K23 ["new"]
       98 CALL                             R8 0 1
       99 GETUPVAL                         R11 9
      100 GETTABLEKS                       R10 R11 K24 ["Hooks"]
      102 GETTABLEKS                       R9 R10 K25 ["useTokens"]
      104 CALL                             R9 0 1
      105 GETUPVAL                         R10 10
      106 GETUPVAL                         R13 11
      107 GETTABLEKS                       R12 R13 K26 ["UI"]
      109 GETTABLEKS                       R11 R12 K27 ["Dialog"]
      111 DUPTABLE                         R12 K36 [{"Enabled", "Modal", "Resizable", "Title", "ZIndexBehavior", "MinSize", "Size", "OnClose"}]
      112 SETTABLEKS                       R6 R12 K28 ["Enabled"]
      114 GETUPVAL                         R14 12
      115 CALL                             R14 0 1
      116 NOT                              R13 R14
      117 SETTABLEKS                       R13 R12 K29 ["Modal"]
      119 LOADB                            R13 1
      120 SETTABLEKS                       R13 R12 K30 ["Resizable"]
      122 LOADK                            R15 K14 ["UploadError"]
      123 LOADK                            R16 K37 ["WindowTitle"]
      124 NAMECALL                         R13 R3 K16 ["getText"]
      126 CALL                             R13 3 1
      127 SETTABLEKS                       R13 R12 K31 ["Title"]
      129 GETIMPORT                        R13 K40 [Enum.ZIndexBehavior.Sibling]
      131 SETTABLEKS                       R13 R12 K32 ["ZIndexBehavior"]
      133 GETUPVAL                         R13 13
      134 SETTABLEKS                       R13 R12 K33 ["MinSize"]
      136 GETUPVAL                         R13 14
      137 SETTABLEKS                       R13 R12 K34 ["Size"]
      139 NEWCLOSURE                       R13 P4
      140 CAPTURE                          VAL R1
      141 CAPTURE                          UPVAL U7
      142 SETTABLEKS                       R13 R12 K35 ["OnClose"]
      144 DUPTABLE                         R13 K43 [{"StyleLink", "MainView"}]
      145 GETUPVAL                         R14 10
      146 LOADK                            R15 K41 ["StyleLink"]
      147 DUPTABLE                         R16 K45 [{"StyleSheet"}]
      148 SETTABLEKS                       R4 R16 K44 ["StyleSheet"]
      150 CALL                             R14 2 1
      151 SETTABLEKS                       R14 R13 K41 ["StyleLink"]
      153 GETUPVAL                         R14 10
      154 GETUPVAL                         R16 9
      155 GETTABLEKS                       R15 R16 K46 ["View"]
      157 DUPTABLE                         R16 K48 [{"tag"}]
      158 LOADK                            R17 K49 ["col align-x-left size-full-0 auto-y margin-small gap-small"]
      159 SETTABLEKS                       R17 R16 K47 ["tag"]
      161 DUPTABLE                         R17 K52 [{"Title", "Content", "Buttons"}]
      162 GETUPVAL                         R18 10
      163 GETUPVAL                         R20 9
      164 GETTABLEKS                       R19 R20 K46 ["View"]
      166 DUPTABLE                         R20 K54 [{"LayoutOrder", "tag"}]
      167 NAMECALL                         R21 R8 K55 ["getNextOrder"]
      169 CALL                             R21 1 1
      170 SETTABLEKS                       R21 R20 K53 ["LayoutOrder"]
      172 LOADK                            R21 K56 ["row align-y-center size-full-0 auto-y gap-small"]
      173 SETTABLEKS                       R21 R20 K47 ["tag"]
      175 DUPTABLE                         R21 K59 [{"Icon", "Text"}]
      176 GETUPVAL                         R22 10
      177 GETUPVAL                         R24 9
      178 GETTABLEKS                       R23 R24 K57 ["Icon"]
      180 DUPTABLE                         R24 K63 [{"name", "size", "variant", "style"}]
      181 GETUPVAL                         R28 9
      182 GETTABLEKS                       R27 R28 K64 ["Enums"]
      184 GETTABLEKS                       R26 R27 K65 ["IconName"]
      186 GETTABLEKS                       R25 R26 K66 ["CircleX"]
      188 SETTABLEKS                       R25 R24 K60 ["name"]
      190 GETUPVAL                         R28 9
      191 GETTABLEKS                       R27 R28 K64 ["Enums"]
      193 GETTABLEKS                       R26 R27 K67 ["IconSize"]
      195 GETTABLEKS                       R25 R26 K68 ["Medium"]
      197 SETTABLEKS                       R25 R24 K61 ["size"]
      199 GETUPVAL                         R28 9
      200 GETTABLEKS                       R27 R28 K64 ["Enums"]
      202 GETTABLEKS                       R26 R27 K69 ["IconVariant"]
      204 GETTABLEKS                       R25 R26 K70 ["Filled"]
      206 SETTABLEKS                       R25 R24 K11 ["variant"]
      208 GETTABLEKS                       R28 R9 K71 ["Color"]
      210 GETTABLEKS                       R27 R28 K72 ["Extended"]
      212 GETTABLEKS                       R26 R27 K73 ["Red"]
      214 GETTABLEKS                       R25 R26 K74 ["Red_700"]
      216 SETTABLEKS                       R25 R24 K62 ["style"]
      218 CALL                             R22 2 1
      219 SETTABLEKS                       R22 R21 K57 ["Icon"]
      221 GETUPVAL                         R22 10
      222 GETUPVAL                         R24 9
      223 GETTABLEKS                       R23 R24 K58 ["Text"]
      225 DUPTABLE                         R24 K75 [{"Text", "tag"}]
      226 LOADK                            R27 K14 ["UploadError"]
      227 LOADK                            R28 K31 ["Title"]
      228 NAMECALL                         R25 R3 K16 ["getText"]
      230 CALL                             R25 3 1
      231 SETTABLEKS                       R25 R24 K58 ["Text"]
      233 LOADK                            R25 K76 ["flex-y-fill size-full-0 auto-y text-align-x-left text-align-y-center text-title-large text-wrap"]
      234 SETTABLEKS                       R25 R24 K47 ["tag"]
      236 CALL                             R22 2 1
      237 SETTABLEKS                       R22 R21 K58 ["Text"]
      239 CALL                             R18 3 1
      240 SETTABLEKS                       R18 R17 K31 ["Title"]
      242 GETUPVAL                         R18 10
      243 GETUPVAL                         R20 9
      244 GETTABLEKS                       R19 R20 K77 ["ScrollView"]
      246 DUPTABLE                         R20 K79 [{"LayoutOrder", "tag", "scroll"}]
      247 NAMECALL                         R21 R8 K55 ["getNextOrder"]
      249 CALL                             R21 1 1
      250 SETTABLEKS                       R21 R20 K53 ["LayoutOrder"]
      252 LOADK                            R21 K80 ["col size-full-0 auto-y fill gap-medium"]
      253 SETTABLEKS                       R21 R20 K47 ["tag"]
      255 DUPTABLE                         R21 K85 [{"AutomaticSize", "AutomaticCanvasSize", "CanvasSize", "VerticalScrollBarInset"}]
      256 GETIMPORT                        R22 K87 [Enum.AutomaticSize.None]
      258 SETTABLEKS                       R22 R21 K81 ["AutomaticSize"]
      260 GETIMPORT                        R22 K89 [Enum.AutomaticSize.Y]
      262 SETTABLEKS                       R22 R21 K82 ["AutomaticCanvasSize"]
      264 GETIMPORT                        R22 K92 [UDim2.fromScale]
      266 LOADN                            R23 1
      267 LOADN                            R24 1
      268 CALL                             R22 2 1
      269 SETTABLEKS                       R22 R21 K83 ["CanvasSize"]
      271 GETIMPORT                        R22 K95 [Enum.ScrollBarInset.ScrollBar]
      273 SETTABLEKS                       R22 R21 K84 ["VerticalScrollBarInset"]
      275 SETTABLEKS                       R21 R20 K78 ["scroll"]
      277 GETUPVAL                         R21 15
      278 GETTABLEKS                       R22 R5 K5 ["uploadResults"]
      280 CALL                             R21 1 -1
      281 CALL                             R18 -1 1
      282 SETTABLEKS                       R18 R17 K50 ["Content"]
      284 GETUPVAL                         R18 10
      285 GETUPVAL                         R21 9
      286 GETTABLEKS                       R20 R21 K27 ["Dialog"]
      288 GETTABLEKS                       R19 R20 K96 ["Actions"]
      290 DUPTABLE                         R20 K99 [{"LayoutOrder", "actions", "orientation"}]
      291 NAMECALL                         R21 R8 K55 ["getNextOrder"]
      293 CALL                             R21 1 1
      294 SETTABLEKS                       R21 R20 K53 ["LayoutOrder"]
      296 SETTABLEKS                       R7 R20 K97 ["actions"]
      298 GETUPVAL                         R22 16
      299 GETTABLEKS                       R21 R22 K100 ["Horizontal"]
      301 SETTABLEKS                       R21 R20 K98 ["orientation"]
      303 CALL                             R18 2 1
      304 SETTABLEKS                       R18 R17 K51 ["Buttons"]
      306 CALL                             R14 3 1
      307 SETTABLEKS                       R14 R13 K42 ["MainView"]
      309 CALL                             R10 3 -1
      310 RETURN                           R10 -1

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
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R5 R3 K10 ["Enums"]
       25 GETTABLEKS                       R4 R5 K11 ["ButtonVariant"]
       27 GETTABLEKS                       R6 R3 K10 ["Enums"]
       29 GETTABLEKS                       R5 R6 K12 ["Orientation"]
       31 GETIMPORT                        R6 K5 [require]
       33 GETTABLEKS                       R8 R0 K6 ["Packages"]
       35 GETTABLEKS                       R7 R8 K13 ["Framework"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R6 K14 ["ContextServices"]
       40 GETTABLEKS                       R8 R7 K15 ["Localization"]
       42 GETTABLEKS                       R10 R6 K16 ["Util"]
       44 GETTABLEKS                       R9 R10 K17 ["LayoutOrderIterator"]
       46 GETIMPORT                        R10 K5 [require]
       48 GETTABLEKS                       R13 R0 K18 ["Src"]
       50 GETTABLEKS                       R12 R13 K19 ["Actions"]
       52 GETTABLEKS                       R11 R12 K20 ["SetShowUploadWidget"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K5 [require]
       57 GETTABLEKS                       R14 R0 K18 ["Src"]
       59 GETTABLEKS                       R13 R14 K21 ["Controllers"]
       61 GETTABLEKS                       R12 R13 K22 ["FileController"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K5 [require]
       66 GETTABLEKS                       R15 R0 K18 ["Src"]
       68 GETTABLEKS                       R14 R15 K23 ["Hooks"]
       70 GETTABLEKS                       R13 R14 K24 ["useDispatch"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K5 [require]
       75 GETTABLEKS                       R16 R0 K18 ["Src"]
       77 GETTABLEKS                       R15 R16 K23 ["Hooks"]
       79 GETTABLEKS                       R14 R15 K25 ["useSelector"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K5 [require]
       84 GETTABLEKS                       R16 R0 K18 ["Src"]
       86 GETTABLEKS                       R15 R16 K26 ["Types"]
       88 CALL                             R14 1 1
       89 GETIMPORT                        R15 K5 [require]
       91 GETTABLEKS                       R18 R0 K18 ["Src"]
       93 GETTABLEKS                       R17 R18 K26 ["Types"]
       95 GETTABLEKS                       R16 R17 K27 ["QueuedSession"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K5 [require]
      100 GETTABLEKS                       R19 R0 K18 ["Src"]
      102 GETTABLEKS                       R18 R19 K28 ["Flags"]
      104 GETTABLEKS                       R17 R18 K29 ["getFFlagDebugAssetImportPlugin"]
      106 CALL                             R16 1 1
      107 GETIMPORT                        R17 K32 [Vector2.new]
      109 LOADN                            R18 224
      110 LOADN                            R19 200
      111 CALL                             R17 2 1
      112 GETIMPORT                        R18 K32 [Vector2.new]
      114 LOADN                            R19 224
      115 LOADN                            R20 144
      116 CALL                             R18 2 1
      117 DUPCLOSURE                       R19 K33 [PROTO_0]
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R3
      121 DUPCLOSURE                       R20 K34 [PROTO_6]
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R18
      137 CAPTURE                          VAL R19
      138 CAPTURE                          VAL R5
      139 RETURN                           R20 1
