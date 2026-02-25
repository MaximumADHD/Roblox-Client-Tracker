PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["state"]
        8 GETUPVAL                         R10 0
        9 GETTABLEKS                       R9 R10 K1 ["SessionState"]
       11 GETTABLEKS                       R8 R9 K2 ["Importing"]
       13 JUMPIFNOTEQ                      R7 R8 ; [+26]
       15 GETTABLEKS                       R7 R6 K3 ["fileType"]
       17 GETUPVAL                         R10 0
       18 GETTABLEKS                       R9 R10 K4 ["FileType"]
       20 GETTABLEKS                       R8 R9 K5 ["Audio"]
       22 JUMPIFEQ                         R7 R8 ; [+10]
       24 GETTABLEKS                       R7 R6 K3 ["fileType"]
       26 GETUPVAL                         R10 0
       27 GETTABLEKS                       R9 R10 K4 ["FileType"]
       29 GETTABLEKS                       R8 R9 K6 ["Video"]
       31 JUMPIFNOTEQ                      R7 R8 ; [+8]
       33 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       35 MOVE                             R8 R1
       36 MOVE                             R9 R6
       37 GETIMPORT                        R7 K9 [table.insert]
       39 CALL                             R7 2 0
       40 FORGLOOP                         R2 2 ; [-35]
       42 RETURN                           R1 1

PROTO_1:
        0 LOADNIL                          R3
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 LOADNIL                          R8
        6 GETUPVAL                         R9 0
        7 MOVE                             R10 R1
        8 NEWTABLE                         R11 0 1
       10 MOVE                             R12 R2
       11 SETLIST                          R11 R12 1 [1]
       13 LOADK                            R12 K0 ["Audio"]
       14 CALL                             R9 3 3
       15 MOVE                             R3 R9
       16 MOVE                             R4 R10
       17 MOVE                             R5 R11
       18 GETUPVAL                         R9 0
       19 MOVE                             R10 R1
       20 NEWTABLE                         R11 0 1
       22 MOVE                             R12 R2
       23 SETLIST                          R11 R12 1 [1]
       25 LOADK                            R12 K1 ["Video"]
       26 CALL                             R9 3 3
       27 MOVE                             R6 R9
       28 MOVE                             R7 R10
       29 MOVE                             R8 R11
       30 LOADNIL                          R9
       31 JUMPIFNOT                        R3 ; [+35]
       32 JUMPIF                           R4 ; [+34]
       33 JUMPIF                           R5 ; [+33]
       34 LOADK                            R12 K2 ["UploadConfirmation"]
       35 LOADK                            R13 K3 ["AudioUploadLimit"]
       36 DUPTABLE                         R14 K7 [{"usage", "capacity", "duration"}]
       37 GETTABLEKS                       R17 R3 K5 ["capacity"]
       39 GETTABLEKS                       R18 R3 K4 ["usage"]
       41 SUB                              R16 R17 R18
       42 FASTCALL1                        TOSTRING R16 ; [+2]
       43 GETIMPORT                        R15 K9 [tostring]
       45 CALL                             R15 1 1
       46 SETTABLEKS                       R15 R14 K4 ["usage"]
       48 GETTABLEKS                       R16 R3 K5 ["capacity"]
       50 FASTCALL1                        TOSTRING R16 ; [+2]
       51 GETIMPORT                        R15 K9 [tostring]
       53 CALL                             R15 1 1
       54 SETTABLEKS                       R15 R14 K5 ["capacity"]
       56 GETIMPORT                        R15 K12 [string.lower]
       58 GETTABLEKS                       R16 R3 K6 ["duration"]
       60 CALL                             R15 1 1
       61 SETTABLEKS                       R15 R14 K6 ["duration"]
       63 NAMECALL                         R10 R0 K13 ["getText"]
       65 CALL                             R10 4 1
       66 MOVE                             R9 R10
       67 LOADNIL                          R10
       68 JUMPIFNOT                        R6 ; [+35]
       69 JUMPIF                           R7 ; [+34]
       70 JUMPIF                           R8 ; [+33]
       71 LOADK                            R13 K2 ["UploadConfirmation"]
       72 LOADK                            R14 K14 ["VideoUploadLimit"]
       73 DUPTABLE                         R15 K7 [{"usage", "capacity", "duration"}]
       74 GETTABLEKS                       R18 R6 K5 ["capacity"]
       76 GETTABLEKS                       R19 R6 K4 ["usage"]
       78 SUB                              R17 R18 R19
       79 FASTCALL1                        TOSTRING R17 ; [+2]
       80 GETIMPORT                        R16 K9 [tostring]
       82 CALL                             R16 1 1
       83 SETTABLEKS                       R16 R15 K4 ["usage"]
       85 GETTABLEKS                       R17 R6 K5 ["capacity"]
       87 FASTCALL1                        TOSTRING R17 ; [+2]
       88 GETIMPORT                        R16 K9 [tostring]
       90 CALL                             R16 1 1
       91 SETTABLEKS                       R16 R15 K5 ["capacity"]
       93 GETIMPORT                        R16 K12 [string.lower]
       95 GETTABLEKS                       R17 R6 K6 ["duration"]
       97 CALL                             R16 1 1
       98 SETTABLEKS                       R16 R15 K6 ["duration"]
      100 NAMECALL                         R11 R0 K13 ["getText"]
      102 CALL                             R11 4 1
      103 MOVE                             R10 R11
      104 RETURN                           R9 2

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R2 K1 ["sessionQueue"]
        4 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Dialogs"]
        2 GETTABLEKS                       R1 R2 K1 ["showUploadConfirmation"]
        4 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 GETUPVAL                         R0 2
        6 NAMECALL                         R0 R0 K0 ["cancelUpload"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 GETUPVAL                         R0 2
        6 NAMECALL                         R0 R0 K0 ["cancelUpload"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 GETUPVAL                         R0 2
        6 NAMECALL                         R0 R0 K0 ["uploadItems"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["use"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K0 ["use"]
        9 CALL                             R3 0 1
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R4 R5 K0 ["use"]
       13 CALL                             R4 0 1
       14 GETUPVAL                         R7 4
       15 GETTABLEKS                       R6 R7 K1 ["Design"]
       17 GETTABLEKS                       R5 R6 K0 ["use"]
       19 CALL                             R5 0 1
       20 NAMECALL                         R5 R5 K2 ["get"]
       22 CALL                             R5 1 1
       23 GETUPVAL                         R6 5
       24 DUPCLOSURE                       R7 K3 [PROTO_2]
       25 CALL                             R6 1 1
       26 GETUPVAL                         R7 5
       27 DUPCLOSURE                       R8 K4 [PROTO_3]
       28 CALL                             R7 1 1
       29 GETUPVAL                         R8 6
       30 MOVE                             R9 R6
       31 CALL                             R8 1 1
       32 JUMPIFNOT                        R7 ; [+4]
       33 LOADB                            R10 1
       34 LENGTH                           R11 R8
       35 JUMPIFNOTEQKN                    R11 K5 [0] ; [+2]
       37 NOT                              R10 R7
       38 FASTCALL2K                       ASSERT R10 K6 ; [+4]
       40 LOADK                            R11 K6 ["Dialog must have assets to show"]
       41 GETIMPORT                        R9 K8 [assert]
       43 CALL                             R9 2 0
       44 GETUPVAL                         R9 7
       45 MOVE                             R10 R4
       46 MOVE                             R11 R2
       47 MOVE                             R12 R7
       48 CALL                             R9 3 2
       49 GETUPVAL                         R12 8
       50 GETTABLEKS                       R11 R12 K9 ["new"]
       52 CALL                             R11 0 1
       53 GETUPVAL                         R13 8
       54 GETTABLEKS                       R12 R13 K9 ["new"]
       56 CALL                             R12 0 1
       57 GETUPVAL                         R13 9
       58 GETUPVAL                         R16 10
       59 GETTABLEKS                       R15 R16 K10 ["UI"]
       61 GETTABLEKS                       R14 R15 K11 ["Dialog"]
       63 DUPTABLE                         R15 K20 [{"Enabled", "Modal", "Resizable", "Title", "ZIndexBehavior", "MinSize", "Size", "OnClose"}]
       64 SETTABLEKS                       R7 R15 K12 ["Enabled"]
       66 GETUPVAL                         R17 11
       67 CALL                             R17 0 1
       68 NOT                              R16 R17
       69 SETTABLEKS                       R16 R15 K13 ["Modal"]
       71 LOADB                            R16 1
       72 SETTABLEKS                       R16 R15 K14 ["Resizable"]
       74 LOADK                            R18 K21 ["UploadConfirmation"]
       75 LOADK                            R19 K22 ["WindowTitle"]
       76 NAMECALL                         R16 R4 K23 ["getText"]
       78 CALL                             R16 3 1
       79 SETTABLEKS                       R16 R15 K15 ["Title"]
       81 GETIMPORT                        R16 K26 [Enum.ZIndexBehavior.Sibling]
       83 SETTABLEKS                       R16 R15 K16 ["ZIndexBehavior"]
       85 GETUPVAL                         R16 12
       86 SETTABLEKS                       R16 R15 K17 ["MinSize"]
       88 GETUPVAL                         R16 13
       89 SETTABLEKS                       R16 R15 K18 ["Size"]
       91 NEWCLOSURE                       R16 P2
       92 CAPTURE                          VAL R1
       93 CAPTURE                          UPVAL U14
       94 CAPTURE                          VAL R3
       95 SETTABLEKS                       R16 R15 K19 ["OnClose"]
       97 DUPTABLE                         R16 K29 [{"StyleLink", "MainView"}]
       98 GETUPVAL                         R17 9
       99 LOADK                            R18 K27 ["StyleLink"]
      100 DUPTABLE                         R19 K31 [{"StyleSheet"}]
      101 SETTABLEKS                       R5 R19 K30 ["StyleSheet"]
      103 CALL                             R17 2 1
      104 SETTABLEKS                       R17 R16 K27 ["StyleLink"]
      106 GETUPVAL                         R17 9
      107 GETUPVAL                         R19 15
      108 GETTABLEKS                       R18 R19 K32 ["View"]
      110 DUPTABLE                         R19 K34 [{"tag"}]
      111 LOADK                            R20 K35 ["col size-full align-x-left margin-small gap-small"]
      112 SETTABLEKS                       R20 R19 K33 ["tag"]
      114 DUPTABLE                         R20 K38 [{"Title", "MainContent", "Buttons"}]
      115 GETUPVAL                         R21 9
      116 GETUPVAL                         R23 15
      117 GETTABLEKS                       R22 R23 K39 ["Text"]
      119 DUPTABLE                         R23 K41 [{"tag", "Text", "LayoutOrder"}]
      120 LOADK                            R24 K42 ["size-full-0 auto-y content-emphasis text-title-large text-wrap text-align-x-left"]
      121 SETTABLEKS                       R24 R23 K33 ["tag"]
      123 LOADK                            R26 K21 ["UploadConfirmation"]
      124 LOADK                            R27 K15 ["Title"]
      125 NAMECALL                         R24 R4 K23 ["getText"]
      127 CALL                             R24 3 1
      128 SETTABLEKS                       R24 R23 K39 ["Text"]
      130 NAMECALL                         R24 R11 K43 ["getNextOrder"]
      132 CALL                             R24 1 1
      133 SETTABLEKS                       R24 R23 K40 ["LayoutOrder"]
      135 CALL                             R21 2 1
      136 SETTABLEKS                       R21 R20 K15 ["Title"]
      138 GETUPVAL                         R21 9
      139 GETUPVAL                         R23 15
      140 GETTABLEKS                       R22 R23 K44 ["ScrollView"]
      142 DUPTABLE                         R23 K46 [{"tag", "LayoutOrder", "scroll"}]
      143 LOADK                            R24 K47 ["size-full-0 auto-y fill"]
      144 SETTABLEKS                       R24 R23 K33 ["tag"]
      146 NAMECALL                         R24 R11 K43 ["getNextOrder"]
      148 CALL                             R24 1 1
      149 SETTABLEKS                       R24 R23 K40 ["LayoutOrder"]
      151 DUPTABLE                         R24 K52 [{"AutomaticSize", "AutomaticCanvasSize", "CanvasSize", "VerticalScrollBarInset"}]
      152 GETIMPORT                        R25 K54 [Enum.AutomaticSize.None]
      154 SETTABLEKS                       R25 R24 K48 ["AutomaticSize"]
      156 GETIMPORT                        R25 K56 [Enum.AutomaticSize.Y]
      158 SETTABLEKS                       R25 R24 K49 ["AutomaticCanvasSize"]
      160 GETIMPORT                        R25 K59 [UDim2.fromScale]
      162 LOADN                            R26 0
      163 LOADN                            R27 1
      164 CALL                             R25 2 1
      165 SETTABLEKS                       R25 R24 K50 ["CanvasSize"]
      167 GETIMPORT                        R25 K62 [Enum.ScrollBarInset.ScrollBar]
      169 SETTABLEKS                       R25 R24 K51 ["VerticalScrollBarInset"]
      171 SETTABLEKS                       R24 R23 K45 ["scroll"]
      173 DUPTABLE                         R24 K63 [{"View"}]
      174 GETUPVAL                         R25 9
      175 GETUPVAL                         R27 15
      176 GETTABLEKS                       R26 R27 K32 ["View"]
      178 DUPTABLE                         R27 K34 [{"tag"}]
      179 LOADK                            R28 K64 ["col size-full-0 auto-y align-x-center gap-large"]
      180 SETTABLEKS                       R28 R27 K33 ["tag"]
      182 DUPTABLE                         R28 K68 [{"Description", "AssetTable", "Quotas"}]
      183 GETUPVAL                         R29 9
      184 GETUPVAL                         R31 15
      185 GETTABLEKS                       R30 R31 K39 ["Text"]
      187 DUPTABLE                         R31 K41 [{"tag", "Text", "LayoutOrder"}]
      188 LOADK                            R32 K69 ["size-full-0 auto-y text-body-medium text-wrap text-align-x-left text-align-y-top"]
      189 SETTABLEKS                       R32 R31 K33 ["tag"]
      191 LOADK                            R34 K21 ["UploadConfirmation"]
      192 LOADK                            R35 K65 ["Description"]
      193 NAMECALL                         R32 R4 K23 ["getText"]
      195 CALL                             R32 3 1
      196 SETTABLEKS                       R32 R31 K39 ["Text"]
      198 NAMECALL                         R32 R12 K43 ["getNextOrder"]
      200 CALL                             R32 1 1
      201 SETTABLEKS                       R32 R31 K40 ["LayoutOrder"]
      203 CALL                             R29 2 1
      204 SETTABLEKS                       R29 R28 K65 ["Description"]
      206 GETUPVAL                         R29 9
      207 GETUPVAL                         R30 16
      208 DUPTABLE                         R31 K72 [{"LayoutOrder", "Localization", "QueueItems"}]
      209 NAMECALL                         R32 R12 K43 ["getNextOrder"]
      211 CALL                             R32 1 1
      212 SETTABLEKS                       R32 R31 K40 ["LayoutOrder"]
      214 SETTABLEKS                       R4 R31 K70 ["Localization"]
      216 SETTABLEKS                       R8 R31 K71 ["QueueItems"]
      218 CALL                             R29 2 1
      219 SETTABLEKS                       R29 R28 K66 ["AssetTable"]
      221 JUMPIFNOT                        R10 ; [+22]
      222 JUMPIFNOT                        R9 ; [+21]
      223 GETUPVAL                         R29 9
      224 GETUPVAL                         R31 15
      225 GETTABLEKS                       R30 R31 K39 ["Text"]
      227 DUPTABLE                         R31 K41 [{"tag", "Text", "LayoutOrder"}]
      228 LOADK                            R32 K73 ["size-full-0 auto-y text-body-medium text-wrap text-align-x-left text-align-y-top data-testid=AssetQuota"]
      229 SETTABLEKS                       R32 R31 K33 ["tag"]
      231 MOVE                             R33 R9
      232 LOADK                            R34 K74 ["\n"]
      233 MOVE                             R35 R10
      234 CONCAT                           R32 R33 R35
      235 SETTABLEKS                       R32 R31 K39 ["Text"]
      237 NAMECALL                         R32 R12 K43 ["getNextOrder"]
      239 CALL                             R32 1 1
      240 SETTABLEKS                       R32 R31 K40 ["LayoutOrder"]
      242 CALL                             R29 2 1
      243 JUMPIF                           R29 ; [+5]
      244 GETUPVAL                         R29 9
      245 GETUPVAL                         R31 17
      246 GETTABLEKS                       R30 R31 K75 ["Fragment"]
      248 CALL                             R29 1 1
      249 SETTABLEKS                       R29 R28 K67 ["Quotas"]
      251 CALL                             R25 3 1
      252 SETTABLEKS                       R25 R24 K32 ["View"]
      254 CALL                             R21 3 1
      255 SETTABLEKS                       R21 R20 K36 ["MainContent"]
      257 GETUPVAL                         R21 9
      258 GETUPVAL                         R24 15
      259 GETTABLEKS                       R23 R24 K11 ["Dialog"]
      261 GETTABLEKS                       R22 R23 K76 ["Actions"]
      263 DUPTABLE                         R23 K79 [{"LayoutOrder", "actions", "orientation"}]
      264 NAMECALL                         R24 R11 K43 ["getNextOrder"]
      266 CALL                             R24 1 1
      267 SETTABLEKS                       R24 R23 K40 ["LayoutOrder"]
      269 NEWTABLE                         R24 0 2
      271 DUPTABLE                         R25 K83 [{"text", "variant", "onActivated"}]
      272 LOADK                            R28 K21 ["UploadConfirmation"]
      273 LOADK                            R29 K84 ["CancelButton"]
      274 NAMECALL                         R26 R4 K23 ["getText"]
      276 CALL                             R26 3 1
      277 SETTABLEKS                       R26 R25 K80 ["text"]
      279 GETUPVAL                         R27 18
      280 GETTABLEKS                       R26 R27 K85 ["Standard"]
      282 SETTABLEKS                       R26 R25 K81 ["variant"]
      284 NEWCLOSURE                       R26 P3
      285 CAPTURE                          VAL R1
      286 CAPTURE                          UPVAL U14
      287 CAPTURE                          VAL R3
      288 SETTABLEKS                       R26 R25 K82 ["onActivated"]
      290 DUPTABLE                         R26 K83 [{"text", "variant", "onActivated"}]
      291 LOADK                            R29 K21 ["UploadConfirmation"]
      292 LOADK                            R30 K86 ["ContinueButton"]
      293 NAMECALL                         R27 R4 K23 ["getText"]
      295 CALL                             R27 3 1
      296 SETTABLEKS                       R27 R26 K80 ["text"]
      298 GETUPVAL                         R28 18
      299 GETTABLEKS                       R27 R28 K87 ["Emphasis"]
      301 SETTABLEKS                       R27 R26 K81 ["variant"]
      303 NEWCLOSURE                       R27 P4
      304 CAPTURE                          VAL R1
      305 CAPTURE                          UPVAL U14
      306 CAPTURE                          VAL R3
      307 SETTABLEKS                       R27 R26 K82 ["onActivated"]
      309 SETLIST                          R24 R25 2 [1]
      311 SETTABLEKS                       R24 R23 K77 ["actions"]
      313 GETUPVAL                         R25 19
      314 GETTABLEKS                       R24 R25 K88 ["Horizontal"]
      316 SETTABLEKS                       R24 R23 K78 ["orientation"]
      318 CALL                             R21 2 1
      319 SETTABLEKS                       R21 R20 K37 ["Buttons"]
      321 CALL                             R17 3 1
      322 SETTABLEKS                       R17 R16 K28 ["MainView"]
      324 CALL                             R13 3 -1
      325 RETURN                           R13 -1

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
       52 GETTABLEKS                       R11 R12 K20 ["SetShowUploadConfirmation"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K5 [require]
       57 GETTABLEKS                       R14 R0 K18 ["Src"]
       59 GETTABLEKS                       R13 R14 K21 ["Hooks"]
       61 GETTABLEKS                       R12 R13 K22 ["useDispatch"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K5 [require]
       66 GETTABLEKS                       R15 R0 K18 ["Src"]
       68 GETTABLEKS                       R14 R15 K21 ["Hooks"]
       70 GETTABLEKS                       R13 R14 K23 ["useSelector"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K5 [require]
       75 GETTABLEKS                       R16 R0 K18 ["Src"]
       77 GETTABLEKS                       R15 R16 K21 ["Hooks"]
       79 GETTABLEKS                       R14 R15 K24 ["useFetchAssetsQuota"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K5 [require]
       84 GETTABLEKS                       R16 R0 K18 ["Src"]
       86 GETTABLEKS                       R15 R16 K25 ["Types"]
       88 CALL                             R14 1 1
       89 GETIMPORT                        R15 K5 [require]
       91 GETTABLEKS                       R18 R0 K18 ["Src"]
       93 GETTABLEKS                       R17 R18 K25 ["Types"]
       95 GETTABLEKS                       R16 R17 K26 ["QueuedSession"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K5 [require]
      100 GETTABLEKS                       R21 R0 K18 ["Src"]
      102 GETTABLEKS                       R20 R21 K27 ["Components"]
      104 GETTABLEKS                       R19 R20 K28 ["Dialogs"]
      106 GETTABLEKS                       R18 R19 K29 ["UploadConfirmationDialog"]
      108 GETTABLEKS                       R17 R18 K30 ["UploadConfirmationTable"]
      110 CALL                             R16 1 1
      111 GETIMPORT                        R17 K5 [require]
      113 GETTABLEKS                       R20 R0 K18 ["Src"]
      115 GETTABLEKS                       R19 R20 K31 ["Controllers"]
      117 GETTABLEKS                       R18 R19 K32 ["Networking"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K5 [require]
      122 GETTABLEKS                       R21 R0 K18 ["Src"]
      124 GETTABLEKS                       R20 R21 K31 ["Controllers"]
      126 GETTABLEKS                       R19 R20 K33 ["UploadController"]
      128 CALL                             R18 1 1
      129 GETIMPORT                        R19 K5 [require]
      131 GETTABLEKS                       R22 R0 K18 ["Src"]
      133 GETTABLEKS                       R21 R22 K34 ["Flags"]
      135 GETTABLEKS                       R20 R21 K35 ["getFFlagDebugAssetImportPlugin"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K38 [Vector2.new]
      140 LOADN                            R21 224
      141 LOADN                            R22 200
      142 CALL                             R20 2 1
      143 GETIMPORT                        R21 K38 [Vector2.new]
      145 LOADN                            R22 224
      146 LOADN                            R23 144
      147 CALL                             R21 2 1
      148 DUPCLOSURE                       R22 K39 [PROTO_0]
      149 CAPTURE                          VAL R14
      150 DUPCLOSURE                       R23 K40 [PROTO_1]
      151 CAPTURE                          VAL R13
      152 DUPCLOSURE                       R24 K41 [PROTO_7]
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R8
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R12
      159 CAPTURE                          VAL R22
      160 CAPTURE                          VAL R23
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R6
      164 CAPTURE                          VAL R19
      165 CAPTURE                          VAL R20
      166 CAPTURE                          VAL R21
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R16
      170 CAPTURE                          VAL R1
      171 CAPTURE                          VAL R4
      172 CAPTURE                          VAL R5
      173 RETURN                           R24 1
