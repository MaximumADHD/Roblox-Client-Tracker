PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["state"]
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R8 R8 K1 ["SessionState"]
       11 GETTABLEKS                       R8 R8 K2 ["Importing"]
       13 JUMPIFNOTEQ                      R7 R8 ; [+26]
       15 GETTABLEKS                       R7 R6 K3 ["fileType"]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R8 R8 K4 ["FileType"]
       20 GETTABLEKS                       R8 R8 K5 ["Audio"]
       22 JUMPIFEQ                         R7 R8 ; [+10]
       24 GETTABLEKS                       R7 R6 K3 ["fileType"]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K4 ["FileType"]
       29 GETTABLEKS                       R8 R8 K6 ["Video"]
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
        0 GETTABLEKS                       R1 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R1 K1 ["sessionQueue"]
        4 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Dialogs"]
        2 GETTABLEKS                       R1 R1 K1 ["showUploadConfirmation"]
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
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["use"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K0 ["use"]
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K0 ["use"]
       13 CALL                             R4 0 1
       14 GETUPVAL                         R5 4
       15 GETTABLEKS                       R5 R5 K1 ["Design"]
       17 GETTABLEKS                       R5 R5 K0 ["use"]
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
       49 GETUPVAL                         R11 8
       50 GETTABLEKS                       R11 R11 K9 ["new"]
       52 CALL                             R11 0 1
       53 GETUPVAL                         R12 8
       54 GETTABLEKS                       R12 R12 K9 ["new"]
       56 CALL                             R12 0 1
       57 GETUPVAL                         R13 9
       58 GETUPVAL                         R14 10
       59 GETTABLEKS                       R14 R14 K10 ["UI"]
       61 GETTABLEKS                       R14 R14 K11 ["Dialog"]
       63 DUPTABLE                         R15 K21 [{["Enabled"], ["Modal"], ["Resizable"] = True, ["Title"], ["ZIndexBehavior"], ["MinSize"], ["Size"], ["OnClose"]}]
       64 SETTABLEKS                       R7 R15 K12 ["Enabled"]
       66 GETUPVAL                         R17 11
       67 CALL                             R17 0 1
       68 NOT                              R16 R17
       69 SETTABLEKS                       R16 R15 K13 ["Modal"]
       71 LOADK                            R18 K22 ["UploadConfirmation"]
       72 LOADK                            R19 K23 ["WindowTitle"]
       73 NAMECALL                         R16 R4 K24 ["getText"]
       75 CALL                             R16 3 1
       76 SETTABLEKS                       R16 R15 K16 ["Title"]
       78 GETIMPORT                        R16 K27 [Enum.ZIndexBehavior.Sibling]
       80 SETTABLEKS                       R16 R15 K17 ["ZIndexBehavior"]
       82 GETUPVAL                         R16 12
       83 SETTABLEKS                       R16 R15 K18 ["MinSize"]
       85 GETUPVAL                         R16 13
       86 SETTABLEKS                       R16 R15 K19 ["Size"]
       88 NEWCLOSURE                       R16 P2
       89 CAPTURE                          VAL R1
       90 CAPTURE                          UPVAL U14
       91 CAPTURE                          VAL R3
       92 SETTABLEKS                       R16 R15 K20 ["OnClose"]
       94 DUPTABLE                         R16 K30 [{"StyleLink", "MainView"}]
       95 GETUPVAL                         R17 9
       96 LOADK                            R18 K28 ["StyleLink"]
       97 DUPTABLE                         R19 K32 [{"StyleSheet"}]
       98 SETTABLEKS                       R5 R19 K31 ["StyleSheet"]
      100 CALL                             R17 2 1
      101 SETTABLEKS                       R17 R16 K28 ["StyleLink"]
      103 GETUPVAL                         R17 9
      104 GETUPVAL                         R18 15
      105 GETTABLEKS                       R18 R18 K33 ["View"]
      107 DUPTABLE                         R19 K36 [{["tag"] = "col align-x-left gap-small size-full margin-small"}]
      108 DUPTABLE                         R20 K39 [{"Title", "MainContent", "Buttons"}]
      109 GETUPVAL                         R21 9
      110 GETUPVAL                         R22 15
      111 GETTABLEKS                       R22 R22 K40 ["Text"]
      113 DUPTABLE                         R23 K43 [{["tag"] = "size-full-0 auto-y text-title-large text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      114 LOADK                            R26 K22 ["UploadConfirmation"]
      115 LOADK                            R27 K16 ["Title"]
      116 NAMECALL                         R24 R4 K24 ["getText"]
      118 CALL                             R24 3 1
      119 SETTABLEKS                       R24 R23 K40 ["Text"]
      121 NAMECALL                         R24 R11 K44 ["getNextOrder"]
      123 CALL                             R24 1 1
      124 SETTABLEKS                       R24 R23 K42 ["LayoutOrder"]
      126 CALL                             R21 2 1
      127 SETTABLEKS                       R21 R20 K16 ["Title"]
      129 GETUPVAL                         R21 9
      130 GETUPVAL                         R22 15
      131 GETTABLEKS                       R22 R22 K45 ["ScrollView"]
      133 DUPTABLE                         R23 K48 [{["tag"] = "fill size-full-0 auto-y", ["LayoutOrder"], ["scroll"]}]
      134 NAMECALL                         R24 R11 K44 ["getNextOrder"]
      136 CALL                             R24 1 1
      137 SETTABLEKS                       R24 R23 K42 ["LayoutOrder"]
      139 DUPTABLE                         R24 K53 [{"AutomaticSize", "AutomaticCanvasSize", "CanvasSize", "VerticalScrollBarInset"}]
      140 GETIMPORT                        R25 K55 [Enum.AutomaticSize.None]
      142 SETTABLEKS                       R25 R24 K49 ["AutomaticSize"]
      144 GETIMPORT                        R25 K57 [Enum.AutomaticSize.Y]
      146 SETTABLEKS                       R25 R24 K50 ["AutomaticCanvasSize"]
      148 GETIMPORT                        R25 K60 [UDim2.fromScale]
      150 LOADN                            R26 0
      151 LOADN                            R27 1
      152 CALL                             R25 2 1
      153 SETTABLEKS                       R25 R24 K51 ["CanvasSize"]
      155 GETIMPORT                        R25 K63 [Enum.ScrollBarInset.ScrollBar]
      157 SETTABLEKS                       R25 R24 K52 ["VerticalScrollBarInset"]
      159 SETTABLEKS                       R24 R23 K47 ["scroll"]
      161 DUPTABLE                         R24 K64 [{"View"}]
      162 GETUPVAL                         R25 9
      163 GETUPVAL                         R26 15
      164 GETTABLEKS                       R26 R26 K33 ["View"]
      166 DUPTABLE                         R27 K66 [{["tag"] = "col align-x-center gap-large size-full-0 auto-y"}]
      167 DUPTABLE                         R28 K70 [{"Description", "AssetTable", "Quotas"}]
      168 GETUPVAL                         R29 9
      169 GETUPVAL                         R30 15
      170 GETTABLEKS                       R30 R30 K40 ["Text"]
      172 DUPTABLE                         R31 K72 [{["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left text-align-y-top", ["Text"], ["LayoutOrder"]}]
      173 LOADK                            R34 K22 ["UploadConfirmation"]
      174 LOADK                            R35 K67 ["Description"]
      175 NAMECALL                         R32 R4 K24 ["getText"]
      177 CALL                             R32 3 1
      178 SETTABLEKS                       R32 R31 K40 ["Text"]
      180 NAMECALL                         R32 R12 K44 ["getNextOrder"]
      182 CALL                             R32 1 1
      183 SETTABLEKS                       R32 R31 K42 ["LayoutOrder"]
      185 CALL                             R29 2 1
      186 SETTABLEKS                       R29 R28 K67 ["Description"]
      188 GETUPVAL                         R29 9
      189 GETUPVAL                         R30 16
      190 DUPTABLE                         R31 K75 [{"LayoutOrder", "Localization", "QueueItems"}]
      191 NAMECALL                         R32 R12 K44 ["getNextOrder"]
      193 CALL                             R32 1 1
      194 SETTABLEKS                       R32 R31 K42 ["LayoutOrder"]
      196 SETTABLEKS                       R4 R31 K73 ["Localization"]
      198 SETTABLEKS                       R8 R31 K74 ["QueueItems"]
      200 CALL                             R29 2 1
      201 SETTABLEKS                       R29 R28 K68 ["AssetTable"]
      203 JUMPIFNOT                        R10 ; [+19]
      204 JUMPIFNOT                        R9 ; [+18]
      205 GETUPVAL                         R29 9
      206 GETUPVAL                         R30 15
      207 GETTABLEKS                       R30 R30 K40 ["Text"]
      209 DUPTABLE                         R31 K78 [{["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left text-align-y-top", ["testId"] = "AssetQuota", ["Text"], ["LayoutOrder"]}]
      210 MOVE                             R33 R9
      211 LOADK                            R34 K79 ["\n"]
      212 MOVE                             R35 R10
      213 CONCAT                           R32 R33 R35
      214 SETTABLEKS                       R32 R31 K40 ["Text"]
      216 NAMECALL                         R32 R12 K44 ["getNextOrder"]
      218 CALL                             R32 1 1
      219 SETTABLEKS                       R32 R31 K42 ["LayoutOrder"]
      221 CALL                             R29 2 1
      222 JUMPIF                           R29 ; [+5]
      223 GETUPVAL                         R29 9
      224 GETUPVAL                         R30 17
      225 GETTABLEKS                       R30 R30 K80 ["Fragment"]
      227 CALL                             R29 1 1
      228 SETTABLEKS                       R29 R28 K69 ["Quotas"]
      230 CALL                             R25 3 1
      231 SETTABLEKS                       R25 R24 K33 ["View"]
      233 CALL                             R21 3 1
      234 SETTABLEKS                       R21 R20 K37 ["MainContent"]
      236 GETUPVAL                         R21 9
      237 GETUPVAL                         R22 15
      238 GETTABLEKS                       R22 R22 K11 ["Dialog"]
      240 GETTABLEKS                       R22 R22 K81 ["Actions"]
      242 DUPTABLE                         R23 K84 [{"LayoutOrder", "actions", "orientation"}]
      243 NAMECALL                         R24 R11 K44 ["getNextOrder"]
      245 CALL                             R24 1 1
      246 SETTABLEKS                       R24 R23 K42 ["LayoutOrder"]
      248 NEWTABLE                         R24 0 2
      250 DUPTABLE                         R25 K88 [{"text", "variant", "onActivated"}]
      251 LOADK                            R28 K22 ["UploadConfirmation"]
      252 LOADK                            R29 K89 ["CancelButton"]
      253 NAMECALL                         R26 R4 K24 ["getText"]
      255 CALL                             R26 3 1
      256 SETTABLEKS                       R26 R25 K85 ["text"]
      258 GETUPVAL                         R26 18
      259 GETTABLEKS                       R26 R26 K90 ["Standard"]
      261 SETTABLEKS                       R26 R25 K86 ["variant"]
      263 NEWCLOSURE                       R26 P3
      264 CAPTURE                          VAL R1
      265 CAPTURE                          UPVAL U14
      266 CAPTURE                          VAL R3
      267 SETTABLEKS                       R26 R25 K87 ["onActivated"]
      269 DUPTABLE                         R26 K88 [{"text", "variant", "onActivated"}]
      270 LOADK                            R29 K22 ["UploadConfirmation"]
      271 LOADK                            R30 K91 ["ContinueButton"]
      272 NAMECALL                         R27 R4 K24 ["getText"]
      274 CALL                             R27 3 1
      275 SETTABLEKS                       R27 R26 K85 ["text"]
      277 GETUPVAL                         R27 18
      278 GETTABLEKS                       R27 R27 K92 ["Emphasis"]
      280 SETTABLEKS                       R27 R26 K86 ["variant"]
      282 NEWCLOSURE                       R27 P4
      283 CAPTURE                          VAL R1
      284 CAPTURE                          UPVAL U14
      285 CAPTURE                          VAL R3
      286 SETTABLEKS                       R27 R26 K87 ["onActivated"]
      288 SETLIST                          R24 R25 2 [1]
      290 SETTABLEKS                       R24 R23 K82 ["actions"]
      292 GETUPVAL                         R24 19
      293 GETTABLEKS                       R24 R24 K93 ["Horizontal"]
      295 SETTABLEKS                       R24 R23 K83 ["orientation"]
      297 CALL                             R21 2 1
      298 SETTABLEKS                       R21 R20 K38 ["Buttons"]
      300 CALL                             R17 3 1
      301 SETTABLEKS                       R17 R16 K29 ["MainView"]
      303 CALL                             R13 3 -1
      304 RETURN                           R13 -1

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
       52 GETTABLEKS                       R11 R11 K20 ["SetShowUploadConfirmation"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K5 [require]
       57 GETTABLEKS                       R12 R0 K18 ["Src"]
       59 GETTABLEKS                       R12 R12 K21 ["Hooks"]
       61 GETTABLEKS                       R12 R12 K22 ["useDispatch"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K5 [require]
       66 GETTABLEKS                       R13 R0 K18 ["Src"]
       68 GETTABLEKS                       R13 R13 K21 ["Hooks"]
       70 GETTABLEKS                       R13 R13 K23 ["useSelector"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K5 [require]
       75 GETTABLEKS                       R14 R0 K18 ["Src"]
       77 GETTABLEKS                       R14 R14 K21 ["Hooks"]
       79 GETTABLEKS                       R14 R14 K24 ["useFetchAssetsQuota"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K5 [require]
       84 GETTABLEKS                       R15 R0 K18 ["Src"]
       86 GETTABLEKS                       R15 R15 K25 ["Types"]
       88 CALL                             R14 1 1
       89 GETIMPORT                        R15 K5 [require]
       91 GETTABLEKS                       R16 R0 K18 ["Src"]
       93 GETTABLEKS                       R16 R16 K25 ["Types"]
       95 GETTABLEKS                       R16 R16 K26 ["QueuedSession"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K5 [require]
      100 GETTABLEKS                       R17 R0 K18 ["Src"]
      102 GETTABLEKS                       R17 R17 K27 ["Components"]
      104 GETTABLEKS                       R17 R17 K28 ["Dialogs"]
      106 GETTABLEKS                       R17 R17 K29 ["UploadConfirmationDialog"]
      108 GETTABLEKS                       R17 R17 K30 ["UploadConfirmationTable"]
      110 CALL                             R16 1 1
      111 GETIMPORT                        R17 K5 [require]
      113 GETTABLEKS                       R18 R0 K18 ["Src"]
      115 GETTABLEKS                       R18 R18 K31 ["Controllers"]
      117 GETTABLEKS                       R18 R18 K32 ["Networking"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K5 [require]
      122 GETTABLEKS                       R19 R0 K18 ["Src"]
      124 GETTABLEKS                       R19 R19 K31 ["Controllers"]
      126 GETTABLEKS                       R19 R19 K33 ["UploadController"]
      128 CALL                             R18 1 1
      129 GETIMPORT                        R19 K5 [require]
      131 GETTABLEKS                       R20 R0 K18 ["Src"]
      133 GETTABLEKS                       R20 R20 K34 ["Flags"]
      135 GETTABLEKS                       R20 R20 K35 ["getFFlagDebugAssetImportPlugin"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K38 [Vector2.new]
      140 LOADN                            R21 480
      141 LOADN                            R22 200
      142 CALL                             R20 2 1
      143 GETIMPORT                        R21 K38 [Vector2.new]
      145 LOADN                            R22 480
      146 LOADN                            R23 400
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
