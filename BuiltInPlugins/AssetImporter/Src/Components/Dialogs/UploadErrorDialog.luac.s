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
       10 GETUPVAL                         R4 3
       11 DUPCLOSURE                       R5 K1 [PROTO_1]
       12 CALL                             R4 1 1
       13 GETUPVAL                         R5 3
       14 DUPCLOSURE                       R6 K2 [PROTO_2]
       15 CALL                             R5 1 1
       16 GETTABLEKS                       R6 R4 K3 ["uploadResults"]
       18 JUMPIFNOT                        R6 ; [+5]
       19 GETTABLEKS                       R7 R4 K3 ["uploadResults"]
       21 GETTABLEKS                       R6 R7 K4 ["Succeeded"]
       23 JUMPIFNOT                        R6 ; [+1]
       24 RETURN                           R0 0
       25 NEWTABLE                         R6 0 0
       27 GETTABLEKS                       R7 R4 K5 ["fileType"]
       29 GETUPVAL                         R10 4
       30 GETTABLEKS                       R9 R10 K6 ["FileType"]
       32 GETTABLEKS                       R8 R9 K7 ["Scene"]
       34 JUMPIFNOTEQ                      R7 R8 ; [+27]
       36 DUPTABLE                         R9 K11 [{"text", "variant", "onActivated"}]
       37 LOADK                            R12 K12 ["UploadError"]
       38 LOADK                            R13 K13 ["ReconfigureButton"]
       39 NAMECALL                         R10 R3 K14 ["getText"]
       41 CALL                             R10 3 1
       42 SETTABLEKS                       R10 R9 K8 ["text"]
       44 GETUPVAL                         R11 5
       45 GETTABLEKS                       R10 R11 K15 ["Standard"]
       47 SETTABLEKS                       R10 R9 K9 ["variant"]
       49 NEWCLOSURE                       R10 P2
       50 CAPTURE                          VAL R1
       51 CAPTURE                          UPVAL U6
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 SETTABLEKS                       R10 R9 K10 ["onActivated"]
       56 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
       58 MOVE                             R8 R6
       59 GETIMPORT                        R7 K18 [table.insert]
       61 CALL                             R7 2 0
       62 DUPTABLE                         R9 K11 [{"text", "variant", "onActivated"}]
       63 LOADK                            R12 K12 ["UploadError"]
       64 LOADK                            R13 K19 ["OkButton"]
       65 NAMECALL                         R10 R3 K14 ["getText"]
       67 CALL                             R10 3 1
       68 SETTABLEKS                       R10 R9 K8 ["text"]
       70 GETUPVAL                         R11 5
       71 GETTABLEKS                       R10 R11 K20 ["Emphasis"]
       73 SETTABLEKS                       R10 R9 K9 ["variant"]
       75 NEWCLOSURE                       R10 P3
       76 CAPTURE                          VAL R1
       77 CAPTURE                          UPVAL U6
       78 SETTABLEKS                       R10 R9 K10 ["onActivated"]
       80 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
       82 MOVE                             R8 R6
       83 GETIMPORT                        R7 K18 [table.insert]
       85 CALL                             R7 2 0
       86 GETUPVAL                         R8 7
       87 GETTABLEKS                       R7 R8 K21 ["new"]
       89 CALL                             R7 0 1
       90 GETUPVAL                         R10 8
       91 GETTABLEKS                       R9 R10 K22 ["Hooks"]
       93 GETTABLEKS                       R8 R9 K23 ["useTokens"]
       95 CALL                             R8 0 1
       96 GETUPVAL                         R9 9
       97 GETUPVAL                         R12 10
       98 GETTABLEKS                       R11 R12 K24 ["UI"]
      100 GETTABLEKS                       R10 R11 K25 ["Dialog"]
      102 DUPTABLE                         R11 K34 [{"Enabled", "Modal", "Resizable", "Title", "ZIndexBehavior", "MinSize", "Size", "OnClose"}]
      103 SETTABLEKS                       R5 R11 K26 ["Enabled"]
      105 GETUPVAL                         R13 11
      106 CALL                             R13 0 1
      107 NOT                              R12 R13
      108 SETTABLEKS                       R12 R11 K27 ["Modal"]
      110 LOADB                            R12 1
      111 SETTABLEKS                       R12 R11 K28 ["Resizable"]
      113 LOADK                            R14 K12 ["UploadError"]
      114 LOADK                            R15 K35 ["WindowTitle"]
      115 NAMECALL                         R12 R3 K14 ["getText"]
      117 CALL                             R12 3 1
      118 SETTABLEKS                       R12 R11 K29 ["Title"]
      120 GETIMPORT                        R12 K38 [Enum.ZIndexBehavior.Sibling]
      122 SETTABLEKS                       R12 R11 K30 ["ZIndexBehavior"]
      124 GETUPVAL                         R12 12
      125 SETTABLEKS                       R12 R11 K31 ["MinSize"]
      127 GETUPVAL                         R12 13
      128 SETTABLEKS                       R12 R11 K32 ["Size"]
      130 NEWCLOSURE                       R12 P4
      131 CAPTURE                          VAL R1
      132 CAPTURE                          UPVAL U6
      133 SETTABLEKS                       R12 R11 K33 ["OnClose"]
      135 DUPTABLE                         R12 K40 [{"MainView"}]
      136 GETUPVAL                         R13 9
      137 GETUPVAL                         R15 8
      138 GETTABLEKS                       R14 R15 K41 ["FoundationProvider"]
      140 DUPTABLE                         R15 K43 [{"theme"}]
      141 GETUPVAL                         R19 8
      142 GETTABLEKS                       R18 R19 K44 ["Enums"]
      144 GETTABLEKS                       R17 R18 K45 ["Theme"]
      146 GETTABLEKS                       R16 R17 K46 ["Dark"]
      148 SETTABLEKS                       R16 R15 K42 ["theme"]
      150 DUPTABLE                         R16 K48 [{"InnerWrapper"}]
      151 GETUPVAL                         R17 9
      152 GETUPVAL                         R19 8
      153 GETTABLEKS                       R18 R19 K49 ["View"]
      155 DUPTABLE                         R19 K51 [{"tag"}]
      156 LOADK                            R20 K52 ["col align-x-left size-full-0 auto-y margin-small gap-small"]
      157 SETTABLEKS                       R20 R19 K50 ["tag"]
      159 DUPTABLE                         R20 K55 [{"Title", "Content", "Buttons"}]
      160 GETUPVAL                         R21 9
      161 GETUPVAL                         R23 8
      162 GETTABLEKS                       R22 R23 K49 ["View"]
      164 DUPTABLE                         R23 K57 [{"LayoutOrder", "tag"}]
      165 NAMECALL                         R24 R7 K58 ["getNextOrder"]
      167 CALL                             R24 1 1
      168 SETTABLEKS                       R24 R23 K56 ["LayoutOrder"]
      170 LOADK                            R24 K59 ["row align-y-center size-full-0 auto-y gap-small"]
      171 SETTABLEKS                       R24 R23 K50 ["tag"]
      173 DUPTABLE                         R24 K62 [{"Icon", "Text"}]
      174 GETUPVAL                         R25 9
      175 GETUPVAL                         R27 8
      176 GETTABLEKS                       R26 R27 K60 ["Icon"]
      178 DUPTABLE                         R27 K66 [{"name", "size", "variant", "style"}]
      179 GETUPVAL                         R31 8
      180 GETTABLEKS                       R30 R31 K44 ["Enums"]
      182 GETTABLEKS                       R29 R30 K67 ["IconName"]
      184 GETTABLEKS                       R28 R29 K68 ["CircleX"]
      186 SETTABLEKS                       R28 R27 K63 ["name"]
      188 GETUPVAL                         R31 8
      189 GETTABLEKS                       R30 R31 K44 ["Enums"]
      191 GETTABLEKS                       R29 R30 K69 ["IconSize"]
      193 GETTABLEKS                       R28 R29 K70 ["Medium"]
      195 SETTABLEKS                       R28 R27 K64 ["size"]
      197 GETUPVAL                         R31 8
      198 GETTABLEKS                       R30 R31 K44 ["Enums"]
      200 GETTABLEKS                       R29 R30 K71 ["IconVariant"]
      202 GETTABLEKS                       R28 R29 K72 ["Filled"]
      204 SETTABLEKS                       R28 R27 K9 ["variant"]
      206 GETTABLEKS                       R31 R8 K73 ["Color"]
      208 GETTABLEKS                       R30 R31 K74 ["Extended"]
      210 GETTABLEKS                       R29 R30 K75 ["Red"]
      212 GETTABLEKS                       R28 R29 K76 ["Red_700"]
      214 SETTABLEKS                       R28 R27 K65 ["style"]
      216 CALL                             R25 2 1
      217 SETTABLEKS                       R25 R24 K60 ["Icon"]
      219 GETUPVAL                         R25 9
      220 GETUPVAL                         R27 8
      221 GETTABLEKS                       R26 R27 K61 ["Text"]
      223 DUPTABLE                         R27 K77 [{"Text", "tag"}]
      224 LOADK                            R30 K12 ["UploadError"]
      225 LOADK                            R31 K29 ["Title"]
      226 NAMECALL                         R28 R3 K14 ["getText"]
      228 CALL                             R28 3 1
      229 SETTABLEKS                       R28 R27 K61 ["Text"]
      231 LOADK                            R28 K78 ["flex-y-fill size-full-0 auto-y text-align-x-left text-align-y-center text-title-large text-wrap"]
      232 SETTABLEKS                       R28 R27 K50 ["tag"]
      234 CALL                             R25 2 1
      235 SETTABLEKS                       R25 R24 K61 ["Text"]
      237 CALL                             R21 3 1
      238 SETTABLEKS                       R21 R20 K29 ["Title"]
      240 GETUPVAL                         R21 9
      241 GETUPVAL                         R23 8
      242 GETTABLEKS                       R22 R23 K79 ["ScrollView"]
      244 DUPTABLE                         R23 K81 [{"LayoutOrder", "tag", "scroll"}]
      245 NAMECALL                         R24 R7 K58 ["getNextOrder"]
      247 CALL                             R24 1 1
      248 SETTABLEKS                       R24 R23 K56 ["LayoutOrder"]
      250 LOADK                            R24 K82 ["col size-full-0 auto-y fill gap-medium"]
      251 SETTABLEKS                       R24 R23 K50 ["tag"]
      253 DUPTABLE                         R24 K87 [{"AutomaticSize", "AutomaticCanvasSize", "CanvasSize", "VerticalScrollBarInset"}]
      254 GETIMPORT                        R25 K89 [Enum.AutomaticSize.None]
      256 SETTABLEKS                       R25 R24 K83 ["AutomaticSize"]
      258 GETIMPORT                        R25 K91 [Enum.AutomaticSize.Y]
      260 SETTABLEKS                       R25 R24 K84 ["AutomaticCanvasSize"]
      262 GETIMPORT                        R25 K94 [UDim2.fromScale]
      264 LOADN                            R26 1
      265 LOADN                            R27 1
      266 CALL                             R25 2 1
      267 SETTABLEKS                       R25 R24 K85 ["CanvasSize"]
      269 GETIMPORT                        R25 K97 [Enum.ScrollBarInset.ScrollBar]
      271 SETTABLEKS                       R25 R24 K86 ["VerticalScrollBarInset"]
      273 SETTABLEKS                       R24 R23 K80 ["scroll"]
      275 GETUPVAL                         R24 14
      276 GETTABLEKS                       R25 R4 K3 ["uploadResults"]
      278 CALL                             R24 1 -1
      279 CALL                             R21 -1 1
      280 SETTABLEKS                       R21 R20 K53 ["Content"]
      282 GETUPVAL                         R21 9
      283 GETUPVAL                         R24 8
      284 GETTABLEKS                       R23 R24 K25 ["Dialog"]
      286 GETTABLEKS                       R22 R23 K98 ["Actions"]
      288 DUPTABLE                         R23 K101 [{"LayoutOrder", "actions", "orientation"}]
      289 NAMECALL                         R24 R7 K58 ["getNextOrder"]
      291 CALL                             R24 1 1
      292 SETTABLEKS                       R24 R23 K56 ["LayoutOrder"]
      294 SETTABLEKS                       R6 R23 K99 ["actions"]
      296 GETUPVAL                         R25 15
      297 GETTABLEKS                       R24 R25 K102 ["Horizontal"]
      299 SETTABLEKS                       R24 R23 K100 ["orientation"]
      301 CALL                             R21 2 1
      302 SETTABLEKS                       R21 R20 K54 ["Buttons"]
      304 CALL                             R17 3 1
      305 SETTABLEKS                       R17 R16 K47 ["InnerWrapper"]
      307 CALL                             R13 3 1
      308 SETTABLEKS                       R13 R12 K39 ["MainView"]
      310 CALL                             R9 3 -1
      311 RETURN                           R9 -1

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
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R19
      137 CAPTURE                          VAL R5
      138 RETURN                           R20 1
