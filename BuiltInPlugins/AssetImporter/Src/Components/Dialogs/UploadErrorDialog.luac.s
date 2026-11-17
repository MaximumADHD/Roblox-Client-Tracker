PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["ErrorMessages"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 NEWTABLE                         R1 0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["new"]
        9 CALL                             R2 0 1
       10 GETTABLEKS                       R3 R0 K0 ["ErrorMessages"]
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 GETUPVAL                         R8 1
       16 GETUPVAL                         R9 2
       17 GETTABLEKS                       R9 R9 K2 ["View"]
       19 DUPTABLE                         R10 K6 [{["LayoutOrder"], ["tag"] = "col gap-xsmall size-full-0 auto-y padding-y-small"}]
       20 NAMECALL                         R11 R2 K7 ["getNextOrder"]
       22 CALL                             R11 1 1
       23 SETTABLEKS                       R11 R10 K3 ["LayoutOrder"]
       25 DUPTABLE                         R11 K10 [{"AssetName", "ErrorMsg"}]
       26 GETUPVAL                         R12 1
       27 GETUPVAL                         R13 2
       28 GETTABLEKS                       R13 R13 K11 ["Text"]
       30 DUPTABLE                         R14 K13 [{["tag"] = "size-full-0 auto-y text-title-small text-wrap text-align-x-left", ["Text"]}]
       31 SETTABLEKS                       R6 R14 K11 ["Text"]
       33 CALL                             R12 2 1
       34 SETTABLEKS                       R12 R11 K8 ["AssetName"]
       36 GETUPVAL                         R12 1
       37 GETUPVAL                         R13 2
       38 GETTABLEKS                       R13 R13 K11 ["Text"]
       40 DUPTABLE                         R14 K15 [{["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left", ["Text"]}]
       41 SETTABLEKS                       R7 R14 K11 ["Text"]
       43 CALL                             R12 2 1
       44 SETTABLEKS                       R12 R11 K9 ["ErrorMsg"]
       46 CALL                             R8 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       49 MOVE                             R10 R1
       50 MOVE                             R11 R8
       51 GETIMPORT                        R9 K18 [table.insert]
       53 CALL                             R9 2 0
       54 MOVE                             R10 R1
       55 GETUPVAL                         R11 1
       56 GETUPVAL                         R12 2
       57 GETTABLEKS                       R12 R12 K19 ["Divider"]
       59 DUPTABLE                         R13 K20 [{"LayoutOrder"}]
       60 NAMECALL                         R14 R2 K7 ["getNextOrder"]
       62 CALL                             R14 1 1
       63 SETTABLEKS                       R14 R13 K3 ["LayoutOrder"]
       65 CALL                             R11 2 -1
       66 FASTCALL                         TABLE_INSERT ; [+2]
       67 GETIMPORT                        R9 K18 [table.insert]
       69 CALL                             R9 -1 0
       70 FORGLOOP                         R3 2 ; [-56]
       72 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Dialogs"]
        2 GETTABLEKS                       R1 R1 K1 ["uploadWidgetItem"]
        4 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Dialogs"]
        2 GETTABLEKS                       R1 R1 K1 ["showUploadWidget"]
        4 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R2 3
        7 GETTABLEKS                       R2 R2 K0 ["filepath"]
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
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["use"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K0 ["use"]
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K1 ["Design"]
       13 GETTABLEKS                       R4 R4 K0 ["use"]
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
       28 GETTABLEKS                       R7 R5 K5 ["uploadResults"]
       30 GETTABLEKS                       R7 R7 K6 ["Succeeded"]
       32 JUMPIFNOT                        R7 ; [+1]
       33 RETURN                           R0 0
       34 NEWTABLE                         R7 0 0
       36 GETTABLEKS                       R8 R5 K7 ["fileType"]
       38 GETUPVAL                         R9 5
       39 GETTABLEKS                       R9 R9 K8 ["FileType"]
       41 GETTABLEKS                       R9 R9 K9 ["Scene"]
       43 JUMPIFNOTEQ                      R8 R9 ; [+27]
       45 DUPTABLE                         R10 K13 [{"text", "variant", "onActivated"}]
       46 LOADK                            R13 K14 ["UploadError"]
       47 LOADK                            R14 K15 ["ReconfigureButton"]
       48 NAMECALL                         R11 R3 K16 ["getText"]
       50 CALL                             R11 3 1
       51 SETTABLEKS                       R11 R10 K10 ["text"]
       53 GETUPVAL                         R11 6
       54 GETTABLEKS                       R11 R11 K17 ["Standard"]
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
       79 GETUPVAL                         R11 6
       80 GETTABLEKS                       R11 R11 K22 ["Emphasis"]
       82 SETTABLEKS                       R11 R10 K11 ["variant"]
       84 NEWCLOSURE                       R11 P3
       85 CAPTURE                          VAL R1
       86 CAPTURE                          UPVAL U7
       87 SETTABLEKS                       R11 R10 K12 ["onActivated"]
       89 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
       91 MOVE                             R9 R7
       92 GETIMPORT                        R8 K20 [table.insert]
       94 CALL                             R8 2 0
       95 GETUPVAL                         R8 8
       96 GETTABLEKS                       R8 R8 K23 ["new"]
       98 CALL                             R8 0 1
       99 GETUPVAL                         R9 9
      100 GETTABLEKS                       R9 R9 K24 ["Hooks"]
      102 GETTABLEKS                       R9 R9 K25 ["useTokens"]
      104 CALL                             R9 0 1
      105 GETUPVAL                         R10 10
      106 GETUPVAL                         R11 11
      107 GETTABLEKS                       R11 R11 K26 ["UI"]
      109 GETTABLEKS                       R11 R11 K27 ["Dialog"]
      111 DUPTABLE                         R12 K37 [{["Enabled"], ["Modal"], ["Resizable"] = True, ["Title"], ["ZIndexBehavior"], ["MinSize"], ["Size"], ["OnClose"]}]
      112 SETTABLEKS                       R6 R12 K28 ["Enabled"]
      114 GETUPVAL                         R14 12
      115 CALL                             R14 0 1
      116 NOT                              R13 R14
      117 SETTABLEKS                       R13 R12 K29 ["Modal"]
      119 LOADK                            R15 K14 ["UploadError"]
      120 LOADK                            R16 K38 ["WindowTitle"]
      121 NAMECALL                         R13 R3 K16 ["getText"]
      123 CALL                             R13 3 1
      124 SETTABLEKS                       R13 R12 K32 ["Title"]
      126 GETIMPORT                        R13 K41 [Enum.ZIndexBehavior.Sibling]
      128 SETTABLEKS                       R13 R12 K33 ["ZIndexBehavior"]
      130 GETUPVAL                         R13 13
      131 SETTABLEKS                       R13 R12 K34 ["MinSize"]
      133 GETUPVAL                         R13 14
      134 SETTABLEKS                       R13 R12 K35 ["Size"]
      136 NEWCLOSURE                       R13 P4
      137 CAPTURE                          VAL R1
      138 CAPTURE                          UPVAL U7
      139 SETTABLEKS                       R13 R12 K36 ["OnClose"]
      141 DUPTABLE                         R13 K44 [{"StyleLink", "MainView"}]
      142 GETUPVAL                         R14 10
      143 LOADK                            R15 K42 ["StyleLink"]
      144 DUPTABLE                         R16 K46 [{"StyleSheet"}]
      145 SETTABLEKS                       R4 R16 K45 ["StyleSheet"]
      147 CALL                             R14 2 1
      148 SETTABLEKS                       R14 R13 K42 ["StyleLink"]
      150 GETUPVAL                         R14 10
      151 GETUPVAL                         R15 9
      152 GETTABLEKS                       R15 R15 K47 ["View"]
      154 DUPTABLE                         R16 K50 [{["tag"] = "col align-x-left gap-small size-full-0 auto-y margin-small"}]
      155 DUPTABLE                         R17 K53 [{"Title", "Content", "Buttons"}]
      156 GETUPVAL                         R18 10
      157 GETUPVAL                         R19 9
      158 GETTABLEKS                       R19 R19 K47 ["View"]
      160 DUPTABLE                         R20 K56 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-small size-full-0 auto-y"}]
      161 NAMECALL                         R21 R8 K57 ["getNextOrder"]
      163 CALL                             R21 1 1
      164 SETTABLEKS                       R21 R20 K54 ["LayoutOrder"]
      166 DUPTABLE                         R21 K60 [{"Icon", "Text"}]
      167 GETUPVAL                         R22 10
      168 GETUPVAL                         R23 9
      169 GETTABLEKS                       R23 R23 K58 ["Icon"]
      171 DUPTABLE                         R24 K64 [{"name", "size", "variant", "style"}]
      172 GETUPVAL                         R25 9
      173 GETTABLEKS                       R25 R25 K65 ["Enums"]
      175 GETTABLEKS                       R25 R25 K66 ["IconName"]
      177 GETTABLEKS                       R25 R25 K67 ["CircleX"]
      179 SETTABLEKS                       R25 R24 K61 ["name"]
      181 GETUPVAL                         R25 9
      182 GETTABLEKS                       R25 R25 K65 ["Enums"]
      184 GETTABLEKS                       R25 R25 K68 ["IconSize"]
      186 GETTABLEKS                       R25 R25 K69 ["Medium"]
      188 SETTABLEKS                       R25 R24 K62 ["size"]
      190 GETUPVAL                         R25 9
      191 GETTABLEKS                       R25 R25 K65 ["Enums"]
      193 GETTABLEKS                       R25 R25 K70 ["IconVariant"]
      195 GETTABLEKS                       R25 R25 K71 ["Filled"]
      197 SETTABLEKS                       R25 R24 K11 ["variant"]
      199 GETTABLEKS                       R25 R9 K72 ["Color"]
      201 GETTABLEKS                       R25 R25 K73 ["Extended"]
      203 GETTABLEKS                       R25 R25 K74 ["Red"]
      205 GETTABLEKS                       R25 R25 K75 ["Red_700"]
      207 SETTABLEKS                       R25 R24 K63 ["style"]
      209 CALL                             R22 2 1
      210 SETTABLEKS                       R22 R21 K58 ["Icon"]
      212 GETUPVAL                         R22 10
      213 GETUPVAL                         R23 9
      214 GETTABLEKS                       R23 R23 K59 ["Text"]
      216 DUPTABLE                         R24 K77 [{["Text"], ["tag"] = "flex-y-fill size-full-0 auto-y text-title-large text-wrap text-align-x-left text-align-y-center"}]
      217 LOADK                            R27 K14 ["UploadError"]
      218 LOADK                            R28 K32 ["Title"]
      219 NAMECALL                         R25 R3 K16 ["getText"]
      221 CALL                             R25 3 1
      222 SETTABLEKS                       R25 R24 K59 ["Text"]
      224 CALL                             R22 2 1
      225 SETTABLEKS                       R22 R21 K59 ["Text"]
      227 CALL                             R18 3 1
      228 SETTABLEKS                       R18 R17 K32 ["Title"]
      230 GETUPVAL                         R18 10
      231 GETUPVAL                         R19 9
      232 GETTABLEKS                       R19 R19 K78 ["ScrollView"]
      234 DUPTABLE                         R20 K82 [{["LayoutOrder"], ["tag"] = "col fill gap-medium size-full-0 auto-y", ["scroll"], ["layout"]}]
      235 NAMECALL                         R21 R8 K57 ["getNextOrder"]
      237 CALL                             R21 1 1
      238 SETTABLEKS                       R21 R20 K54 ["LayoutOrder"]
      240 DUPTABLE                         R21 K87 [{"AutomaticSize", "AutomaticCanvasSize", "CanvasSize", "VerticalScrollBarInset"}]
      241 GETIMPORT                        R22 K89 [Enum.AutomaticSize.None]
      243 SETTABLEKS                       R22 R21 K83 ["AutomaticSize"]
      245 GETIMPORT                        R22 K91 [Enum.AutomaticSize.Y]
      247 SETTABLEKS                       R22 R21 K84 ["AutomaticCanvasSize"]
      249 GETIMPORT                        R22 K94 [UDim2.fromScale]
      251 LOADN                            R23 1
      252 LOADN                            R24 1
      253 CALL                             R22 2 1
      254 SETTABLEKS                       R22 R21 K85 ["CanvasSize"]
      256 GETIMPORT                        R22 K97 [Enum.ScrollBarInset.ScrollBar]
      258 SETTABLEKS                       R22 R21 K86 ["VerticalScrollBarInset"]
      260 SETTABLEKS                       R21 R20 K80 ["scroll"]
      262 DUPTABLE                         R21 K99 [{"FillDirection"}]
      263 GETIMPORT                        R22 K101 [Enum.FillDirection.Vertical]
      265 SETTABLEKS                       R22 R21 K98 ["FillDirection"]
      267 SETTABLEKS                       R21 R20 K81 ["layout"]
      269 GETUPVAL                         R21 15
      270 GETTABLEKS                       R22 R5 K5 ["uploadResults"]
      272 CALL                             R21 1 -1
      273 CALL                             R18 -1 1
      274 SETTABLEKS                       R18 R17 K51 ["Content"]
      276 GETUPVAL                         R18 10
      277 GETUPVAL                         R19 9
      278 GETTABLEKS                       R19 R19 K27 ["Dialog"]
      280 GETTABLEKS                       R19 R19 K102 ["Actions"]
      282 DUPTABLE                         R20 K105 [{"LayoutOrder", "actions", "orientation"}]
      283 NAMECALL                         R21 R8 K57 ["getNextOrder"]
      285 CALL                             R21 1 1
      286 SETTABLEKS                       R21 R20 K54 ["LayoutOrder"]
      288 SETTABLEKS                       R7 R20 K103 ["actions"]
      290 GETUPVAL                         R21 16
      291 GETTABLEKS                       R21 R21 K106 ["Horizontal"]
      293 SETTABLEKS                       R21 R20 K104 ["orientation"]
      295 CALL                             R18 2 1
      296 SETTABLEKS                       R18 R17 K52 ["Buttons"]
      298 CALL                             R14 3 1
      299 SETTABLEKS                       R14 R13 K43 ["MainView"]
      301 CALL                             R10 3 -1
      302 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Enums"]
       25 GETTABLEKS                       R4 R4 K11 ["ButtonVariant"]
       27 GETTABLEKS                       R5 R3 K10 ["Enums"]
       29 GETTABLEKS                       R5 R5 K12 ["Orientation"]
       31 GETIMPORT                        R6 K5 [require]
       33 GETTABLEKS                       R7 R0 K6 ["Packages"]
       35 GETTABLEKS                       R7 R7 K13 ["Framework"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R6 K14 ["ContextServices"]
       40 GETTABLEKS                       R8 R7 K15 ["Localization"]
       42 GETTABLEKS                       R9 R6 K16 ["Util"]
       44 GETTABLEKS                       R9 R9 K17 ["LayoutOrderIterator"]
       46 GETIMPORT                        R10 K5 [require]
       48 GETTABLEKS                       R11 R0 K18 ["Src"]
       50 GETTABLEKS                       R11 R11 K19 ["Actions"]
       52 GETTABLEKS                       R11 R11 K20 ["SetShowUploadWidget"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K5 [require]
       57 GETTABLEKS                       R12 R0 K18 ["Src"]
       59 GETTABLEKS                       R12 R12 K21 ["Controllers"]
       61 GETTABLEKS                       R12 R12 K22 ["FileController"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K5 [require]
       66 GETTABLEKS                       R13 R0 K18 ["Src"]
       68 GETTABLEKS                       R13 R13 K23 ["Hooks"]
       70 GETTABLEKS                       R13 R13 K24 ["useDispatch"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K5 [require]
       75 GETTABLEKS                       R14 R0 K18 ["Src"]
       77 GETTABLEKS                       R14 R14 K23 ["Hooks"]
       79 GETTABLEKS                       R14 R14 K25 ["useSelector"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K5 [require]
       84 GETTABLEKS                       R15 R0 K18 ["Src"]
       86 GETTABLEKS                       R15 R15 K26 ["Types"]
       88 CALL                             R14 1 1
       89 GETIMPORT                        R15 K5 [require]
       91 GETTABLEKS                       R16 R0 K18 ["Src"]
       93 GETTABLEKS                       R16 R16 K26 ["Types"]
       95 GETTABLEKS                       R16 R16 K27 ["QueuedSession"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K5 [require]
      100 GETTABLEKS                       R17 R0 K18 ["Src"]
      102 GETTABLEKS                       R17 R17 K28 ["Flags"]
      104 GETTABLEKS                       R17 R17 K29 ["getFFlagDebugAssetImportPlugin"]
      106 CALL                             R16 1 1
      107 GETIMPORT                        R17 K32 [Vector2.new]
      109 LOADN                            R18 480
      110 LOADN                            R19 200
      111 CALL                             R17 2 1
      112 GETIMPORT                        R18 K32 [Vector2.new]
      114 LOADN                            R19 480
      115 LOADN                            R20 400
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
