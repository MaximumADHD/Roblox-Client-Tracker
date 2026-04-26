PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["InProgress"]
        4 JUMPIFEQ                         R0 R1 ; [+15]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K1 ["Annotation"]
        9 LOADK                            R2 K2 ["IsDraft"]
       10 NAMECALL                         R0 R0 K3 ["GetAttribute"]
       12 CALL                             R0 2 1
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R0 R1 K1 ["Annotation"]
       17 NAMECALL                         R0 R0 K4 ["Destroy"]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Deactivation"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 NAMECALL                         R0 R0 K1 ["Connect"]
        9 CALL                             R0 2 1
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["InProgress"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Annotation"]
        4 SETTABLEKS                       R1 R0 K1 ["Selected"]
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R2
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K0 ["None"]
        7 JUMPIFNOTEQ                      R3 R4 ; [+42]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K1 ["fflagAnnotationsOpenPanelOnCreate"]
       12 JUMPIFNOT                        R4 ; [+21]
       13 GETUPVAL                         R4 3
       14 LOADK                            R6 K2 ["Actions"]
       15 NAMECALL                         R4 R4 K3 ["GetPluginComponent"]
       17 CALL                             R4 2 1
       18 NEWTABLE                         R8 0 1
       20 GETUPVAL                         R9 4
       21 SETLIST                          R8 R9 1 [1]
       23 NAMECALL                         R6 R4 K4 ["GetAsync"]
       25 CALL                             R6 2 1
       26 GETTABLEN                        R5 R6 1
       27 GETTABLEKS                       R6 R5 K5 ["Checked"]
       29 JUMPIF                           R6 ; [+4]
       30 GETUPVAL                         R8 4
       31 NAMECALL                         R6 R4 K6 ["ActivateAsync"]
       33 CALL                             R6 2 0
       34 GETUPVAL                         R4 5
       35 GETUPVAL                         R6 6
       36 GETTABLEKS                       R5 R6 K0 ["None"]
       38 SETTABLEKS                       R5 R4 K7 ["Mode"]
       40 GETIMPORT                        R4 K9 [pcall]
       42 NEWCLOSURE                       R5 P0
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U7
       45 CALL                             R4 1 0
       46 GETUPVAL                         R4 8
       47 GETUPVAL                         R5 3
       48 LOADB                            R6 0
       49 CALL                             R4 2 0
       50 GETUPVAL                         R4 9
       51 MOVE                             R5 R3
       52 CALL                             R4 1 0
       53 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Annotation"]
        3 GETTABLEKS                       R0 R1 K1 ["RequestInitiated"]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 NAMECALL                         R0 R0 K2 ["Connect"]
       10 CALL                             R0 2 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K0 ["Annotation"]
       14 GETTABLEKS                       R1 R2 K3 ["RequestCompleted"]
       16 NEWCLOSURE                       R3 P1
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          UPVAL U7
       23 CAPTURE                          UPVAL U8
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U9
       26 CAPTURE                          UPVAL U1
       27 NAMECALL                         R1 R1 K2 ["Connect"]
       29 CALL                             R1 2 1
       30 GETUPVAL                         R2 10
       31 GETUPVAL                         R4 10
       32 NAMECALL                         R4 R4 K4 ["getAnnotationsPluginActionEvent"]
       34 CALL                             R4 1 1
       35 GETUPVAL                         R5 10
       36 GETUPVAL                         R8 11
       37 GETTABLEKS                       R7 R8 K5 ["PopupOpenEvent"]
       39 GETUPVAL                         R8 5
       40 NAMECALL                         R5 R5 K6 ["getTelemetryEvent"]
       42 CALL                             R5 3 -1
       43 NAMECALL                         R2 R2 K7 ["logRobloxTelemetryEvent"]
       45 CALL                             R2 -1 0
       46 NEWCLOSURE                       R2 P2
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R1
       49 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R1 R2 K0 ["InProgress"]
        7 JUMPIFEQ                         R0 R1 ; [+7]
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R0 R1 K1 ["Annotation"]
       12 NAMECALL                         R0 R0 K2 ["Destroy"]
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 4
       16 GETUPVAL                         R1 5
       17 LOADB                            R2 0
       18 CALL                             R0 2 0
       19 GETUPVAL                         R0 6
       20 GETUPVAL                         R2 6
       21 NAMECALL                         R2 R2 K3 ["getAnnotationsPluginActionEvent"]
       23 CALL                             R2 1 1
       24 GETUPVAL                         R3 6
       25 GETUPVAL                         R6 7
       26 GETTABLEKS                       R5 R6 K4 ["PopupCloseEvent"]
       28 GETUPVAL                         R6 5
       29 NAMECALL                         R3 R3 K5 ["getTelemetryEvent"]
       31 CALL                             R3 3 -1
       32 NAMECALL                         R0 R0 K6 ["logRobloxTelemetryEvent"]
       34 CALL                             R0 -1 0
       35 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R0 K1 [{"CloseButton"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K2 ["createElement"]
        4 LOADK                            R2 K3 ["TextButton"]
        5 NEWTABLE                         R3 2 0
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K4 ["Event"]
       10 GETTABLEKS                       R4 R5 K5 ["Activated"]
       12 GETUPVAL                         R5 1
       13 SETTABLE                         R5 R3 R4
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K6 ["Tag"]
       17 LOADK                            R5 K0 ["CloseButton"]
       18 SETTABLE                         R5 R3 R4
       19 DUPTABLE                         R4 K8 [{"CloseIcon"}]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K2 ["createElement"]
       23 LOADK                            R6 K9 ["ImageLabel"]
       24 NEWTABLE                         R7 1 0
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R8 R9 K6 ["Tag"]
       29 LOADK                            R9 K10 ["CloseIcon X-Transparent"]
       30 SETTABLE                         R9 R7 R8
       31 CALL                             R5 2 1
       32 SETTABLEKS                       R5 R4 K7 ["CloseIcon"]
       34 CALL                             R1 3 1
       35 SETTABLEKS                       R1 R0 K0 ["CloseButton"]
       37 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Annotation"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 GETUPVAL                         R4 2
        6 CALL                             R2 2 2
        7 SETTABLEKS                       R3 R1 K1 ["Contents"]
        9 SETTABLEKS                       R2 R1 K2 ["TaggedUsers"]
       11 GETUPVAL                         R4 3
       12 MOVE                             R6 R1
       13 NAMECALL                         R4 R4 K3 ["CreateAnnotation"]
       15 CALL                             R4 2 0
       16 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R2 R2 K0 ["use"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 NAMECALL                         R3 R3 K0 ["use"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R4 R5 K2 ["useState"]
       18 LOADK                            R5 K3 [""]
       19 CALL                             R4 1 2
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R6 R7 K2 ["useState"]
       23 GETUPVAL                         R8 4
       24 GETTABLEKS                       R7 R8 K4 ["None"]
       26 CALL                             R6 1 2
       27 GETUPVAL                         R9 3
       28 GETTABLEKS                       R8 R9 K5 ["useContext"]
       30 GETUPVAL                         R9 5
       31 CALL                             R8 1 1
       32 GETUPVAL                         R10 3
       33 GETTABLEKS                       R9 R10 K5 ["useContext"]
       35 GETUPVAL                         R10 6
       36 CALL                             R9 1 1
       37 GETTABLEKS                       R10 R9 K6 ["joinedTaggableUsersMap"]
       39 GETTABLEKS                       R11 R8 K7 ["isTagDropdownOpen"]
       41 GETTABLEKS                       R12 R9 K8 ["isTaggableUsersErrorStatus"]
       43 GETUPVAL                         R14 3
       44 GETTABLEKS                       R13 R14 K9 ["useEffect"]
       46 NEWCLOSURE                       R14 P0
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R6
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R0
       51 NEWTABLE                         R15 0 0
       53 CALL                             R13 2 0
       54 GETUPVAL                         R14 3
       55 GETTABLEKS                       R13 R14 K9 ["useEffect"]
       57 NEWCLOSURE                       R14 P1
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R7
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          UPVAL U8
       63 CAPTURE                          VAL R1
       64 CAPTURE                          UPVAL U9
       65 CAPTURE                          UPVAL U10
       66 CAPTURE                          UPVAL U11
       67 CAPTURE                          UPVAL U12
       68 CAPTURE                          VAL R3
       69 CAPTURE                          UPVAL U13
       70 NEWTABLE                         R15 0 1
       72 GETTABLEKS                       R16 R0 K10 ["Annotation"]
       74 SETLIST                          R15 R16 1 [1]
       76 CALL                             R13 2 0
       77 GETUPVAL                         R14 3
       78 GETTABLEKS                       R13 R14 K11 ["useCallback"]
       80 NEWCLOSURE                       R14 P2
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R6
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          VAL R0
       85 CAPTURE                          UPVAL U12
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R3
       88 CAPTURE                          UPVAL U13
       89 NEWTABLE                         R15 0 3
       91 GETTABLEKS                       R16 R0 K10 ["Annotation"]
       93 MOVE                             R17 R6
       94 MOVE                             R18 R11
       95 SETLIST                          R15 R16 3 [1]
       97 CALL                             R13 2 1
       98 GETUPVAL                         R15 3
       99 GETTABLEKS                       R14 R15 K12 ["useMemo"]
      101 NEWCLOSURE                       R15 P3
      102 CAPTURE                          UPVAL U3
      103 CAPTURE                          VAL R13
      104 NEWTABLE                         R16 0 1
      106 MOVE                             R17 R13
      107 SETLIST                          R16 R17 1 [1]
      109 CALL                             R14 2 1
      110 FASTCALL1                        STRING_LEN R4 ; [+3]
      111 MOVE                             R17 R4
      112 GETIMPORT                        R16 K15 [string.len]
      114 CALL                             R16 1 1
      115 GETUPVAL                         R17 14
      116 JUMPIFLT                         R17 R16 ; [+2]
      118 LOADB                            R15 0 +1
      119 LOADB                            R15 1
      120 GETUPVAL                         R17 3
      121 GETTABLEKS                       R16 R17 K16 ["createElement"]
      123 GETUPVAL                         R17 15
      124 DUPTABLE                         R18 K21 [{"Width", "Position", "OnFocusLost", "DebounceFocusLost"}]
      125 LOADN                            R19 94
      126 SETTABLEKS                       R19 R18 K17 ["Width"]
      128 GETTABLEKS                       R19 R0 K18 ["Position"]
      130 SETTABLEKS                       R19 R18 K18 ["Position"]
      132 SETTABLEKS                       R13 R18 K19 ["OnFocusLost"]
      134 GETUPVAL                         R21 4
      135 GETTABLEKS                       R20 R21 K22 ["InProgress"]
      137 JUMPIFNOTEQ                      R6 R20 ; [+2]
      139 LOADB                            R19 0 +1
      140 LOADB                            R19 1
      141 SETTABLEKS                       R19 R18 K20 ["DebounceFocusLost"]
      143 DUPTABLE                         R19 K27 [{"Header", "InputArea", "ErrorWrapper", "Footer"}]
      144 GETUPVAL                         R21 3
      145 GETTABLEKS                       R20 R21 K16 ["createElement"]
      147 GETUPVAL                         R21 16
      148 DUPTABLE                         R22 K30 [{"Annotation", "DataModel", "children"}]
      149 GETTABLEKS                       R23 R0 K10 ["Annotation"]
      151 SETTABLEKS                       R23 R22 K10 ["Annotation"]
      153 LOADK                            R23 K31 ["Edit"]
      154 SETTABLEKS                       R23 R22 K28 ["DataModel"]
      156 SETTABLEKS                       R14 R22 K29 ["children"]
      158 CALL                             R20 2 1
      159 SETTABLEKS                       R20 R19 K23 ["Header"]
      161 GETUPVAL                         R21 3
      162 GETTABLEKS                       R20 R21 K16 ["createElement"]
      164 LOADK                            R21 K32 ["Frame"]
      165 NEWTABLE                         R22 8 0
      167 LOADN                            R23 1
      168 SETTABLEKS                       R23 R22 K33 ["LayoutOrder"]
      170 LOADN                            R23 1
      171 SETTABLEKS                       R23 R22 K34 ["BackgroundTransparency"]
      173 GETIMPORT                        R23 K38 [Enum.AutomaticSize.Y]
      175 SETTABLEKS                       R23 R22 K36 ["AutomaticSize"]
      177 GETIMPORT                        R23 K41 [UDim2.fromScale]
      179 LOADN                            R24 1
      180 LOADN                            R25 0
      181 CALL                             R23 2 1
      182 SETTABLEKS                       R23 R22 K42 ["Size"]
      184 GETUPVAL                         R24 3
      185 GETTABLEKS                       R23 R24 K43 ["Tag"]
      187 LOADK                            R24 K44 ["X-RowM X-Top"]
      188 SETTABLE                         R24 R22 R23
      189 DUPTABLE                         R23 K47 [{"Avatar", "TextInput"}]
      190 GETUPVAL                         R25 3
      191 GETTABLEKS                       R24 R25 K16 ["createElement"]
      193 LOADK                            R25 K48 ["ImageLabel"]
      194 NEWTABLE                         R26 4 0
      196 LOADK                            R28 K49 ["rbxthumb://type=AvatarHeadShot&id=%*&filters=circular&w=150&h=150"]
      197 GETUPVAL                         R30 17
      198 NAMECALL                         R30 R30 K50 ["GetUserId"]
      200 CALL                             R30 1 1
      201 NAMECALL                         R28 R28 K51 ["format"]
      203 CALL                             R28 2 1
      204 MOVE                             R27 R28
      205 SETTABLEKS                       R27 R26 K52 ["Image"]
      207 LOADN                            R27 0
      208 SETTABLEKS                       R27 R26 K33 ["LayoutOrder"]
      210 GETUPVAL                         R28 3
      211 GETTABLEKS                       R27 R28 K43 ["Tag"]
      213 LOADK                            R28 K53 ["Component-Avatar"]
      214 SETTABLE                         R28 R26 R27
      215 CALL                             R24 2 1
      216 SETTABLEKS                       R24 R23 K45 ["Avatar"]
      218 GETUPVAL                         R25 3
      219 GETTABLEKS                       R24 R25 K16 ["createElement"]
      221 GETUPVAL                         R25 18
      222 DUPTABLE                         R26 K58 [{"LayoutOrder", "Text", "OnTextChanged", "PlaceholderText", "Disabled"}]
      223 LOADN                            R27 1
      224 SETTABLEKS                       R27 R26 K33 ["LayoutOrder"]
      226 SETTABLEKS                       R4 R26 K54 ["Text"]
      228 NEWCLOSURE                       R27 P4
      229 CAPTURE                          VAL R5
      230 SETTABLEKS                       R27 R26 K55 ["OnTextChanged"]
      232 LOADK                            R29 K59 ["AddAnnotation"]
      233 LOADK                            R30 K56 ["PlaceholderText"]
      234 NAMECALL                         R27 R2 K60 ["getText"]
      236 CALL                             R27 3 1
      237 SETTABLEKS                       R27 R26 K56 ["PlaceholderText"]
      239 GETUPVAL                         R29 4
      240 GETTABLEKS                       R28 R29 K22 ["InProgress"]
      242 JUMPIFEQ                         R6 R28 ; [+2]
      244 LOADB                            R27 0 +1
      245 LOADB                            R27 1
      246 SETTABLEKS                       R27 R26 K57 ["Disabled"]
      248 CALL                             R24 2 1
      249 SETTABLEKS                       R24 R23 K46 ["TextInput"]
      251 CALL                             R20 3 1
      252 SETTABLEKS                       R20 R19 K24 ["InputArea"]
      254 GETUPVAL                         R21 19
      255 MOVE                             R22 R6
      256 MOVE                             R23 R4
      257 MOVE                             R24 R12
      258 CALL                             R21 3 1
      259 JUMPIF                           R21 ; [+1]
      260 JUMPIFNOT                        R15 ; [+73]
      261 GETUPVAL                         R21 3
      262 GETTABLEKS                       R20 R21 K16 ["createElement"]
      264 LOADK                            R21 K32 ["Frame"]
      265 DUPTABLE                         R22 K61 [{"LayoutOrder", "BackgroundTransparency", "Size", "AutomaticSize"}]
      266 LOADN                            R23 2
      267 SETTABLEKS                       R23 R22 K33 ["LayoutOrder"]
      269 LOADN                            R23 1
      270 SETTABLEKS                       R23 R22 K34 ["BackgroundTransparency"]
      272 GETIMPORT                        R23 K41 [UDim2.fromScale]
      274 LOADN                            R24 1
      275 LOADN                            R25 0
      276 CALL                             R23 2 1
      277 SETTABLEKS                       R23 R22 K42 ["Size"]
      279 GETIMPORT                        R23 K38 [Enum.AutomaticSize.Y]
      281 SETTABLEKS                       R23 R22 K36 ["AutomaticSize"]
      283 DUPTABLE                         R23 K63 [{"Error"}]
      284 GETUPVAL                         R25 3
      285 GETTABLEKS                       R24 R25 K16 ["createElement"]
      287 GETUPVAL                         R25 20
      288 DUPTABLE                         R26 K66 [{"Message", "UIPadding"}]
      289 JUMPIFNOT                        R15 ; [+14]
      290 LOADK                            R29 K46 ["TextInput"]
      291 LOADK                            R30 K67 ["LengthExceeded"]
      292 DUPTABLE                         R31 K69 [{"maxLength"}]
      293 GETUPVAL                         R33 14
      294 FASTCALL1                        TOSTRING R33 ; [+2]
      295 GETIMPORT                        R32 K71 [tostring]
      297 CALL                             R32 1 1
      298 SETTABLEKS                       R32 R31 K68 ["maxLength"]
      300 NAMECALL                         R27 R2 K60 ["getText"]
      302 CALL                             R27 4 1
      303 JUMP                             ; [+8]
      304 GETUPVAL                         R27 21
      305 MOVE                             R28 R6
      306 GETTABLEKS                       R29 R0 K10 ["Annotation"]
      308 MOVE                             R30 R2
      309 MOVE                             R31 R4
      310 MOVE                             R32 R12
      311 CALL                             R27 5 1
      312 SETTABLEKS                       R27 R26 K64 ["Message"]
      314 GETUPVAL                         R28 3
      315 GETTABLEKS                       R27 R28 K16 ["createElement"]
      317 LOADK                            R28 K65 ["UIPadding"]
      318 DUPTABLE                         R29 K73 [{"PaddingLeft"}]
      319 GETIMPORT                        R30 K76 [UDim.new]
      321 LOADN                            R31 0
      322 LOADN                            R32 42
      323 CALL                             R30 2 1
      324 SETTABLEKS                       R30 R29 K72 ["PaddingLeft"]
      326 CALL                             R27 2 1
      327 SETTABLEKS                       R27 R26 K65 ["UIPadding"]
      329 CALL                             R24 2 1
      330 SETTABLEKS                       R24 R23 K62 ["Error"]
      332 CALL                             R20 3 1
      333 JUMP                             ; [+1]
      334 LOADNIL                          R20
      335 SETTABLEKS                       R20 R19 K25 ["ErrorWrapper"]
      337 GETUPVAL                         R22 4
      338 GETTABLEKS                       R21 R22 K22 ["InProgress"]
      340 JUMPIFEQ                         R6 R21 ; [+22]
      342 GETUPVAL                         R21 3
      343 GETTABLEKS                       R20 R21 K16 ["createElement"]
      345 GETUPVAL                         R21 22
      346 DUPTABLE                         R22 K79 [{"Text", "OnSubmit", "OnCancel", "LayoutOrder"}]
      347 SETTABLEKS                       R4 R22 K54 ["Text"]
      349 NEWCLOSURE                       R23 P5
      350 CAPTURE                          VAL R0
      351 CAPTURE                          UPVAL U23
      352 CAPTURE                          VAL R10
      353 CAPTURE                          UPVAL U10
      354 SETTABLEKS                       R23 R22 K77 ["OnSubmit"]
      356 SETTABLEKS                       R13 R22 K78 ["OnCancel"]
      358 LOADN                            R23 3
      359 SETTABLEKS                       R23 R22 K33 ["LayoutOrder"]
      361 CALL                             R20 2 1
      362 JUMP                             ; [+1]
      363 LOADNIL                          R20
      364 SETTABLEKS                       R20 R19 K26 ["Footer"]
      366 CALL                             R16 3 -1
      367 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Bin"]
       25 GETTABLEKS                       R5 R6 K10 ["Common"]
       27 GETTABLEKS                       R4 R5 K11 ["defineLuaFlags"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K12 ["Src"]
       34 GETTABLEKS                       R6 R7 K13 ["Util"]
       36 GETTABLEKS                       R5 R6 K14 ["Constants"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R2 K15 ["ContextServices"]
       41 GETTABLEKS                       R6 R5 K16 ["Plugin"]
       43 GETTABLEKS                       R7 R5 K17 ["Localization"]
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R11 R0 K12 ["Src"]
       49 GETTABLEKS                       R10 R11 K18 ["Contexts"]
       51 GETTABLEKS                       R9 R10 K19 ["TelemetryContext"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R12 R0 K12 ["Src"]
       58 GETTABLEKS                       R11 R12 K20 ["Components"]
       60 GETTABLEKS                       R10 R11 K21 ["PopoverBase"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R13 R0 K12 ["Src"]
       67 GETTABLEKS                       R12 R13 K20 ["Components"]
       69 GETTABLEKS                       R11 R12 K22 ["ErrorAlert"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R14 R0 K12 ["Src"]
       76 GETTABLEKS                       R13 R14 K20 ["Components"]
       78 GETTABLEKS                       R12 R13 K23 ["SizedTextInput"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K5 [require]
       83 GETTABLEKS                       R15 R0 K12 ["Src"]
       85 GETTABLEKS                       R14 R15 K20 ["Components"]
       87 GETTABLEKS                       R13 R14 K24 ["CancelSubmitFooter"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K5 [require]
       92 GETTABLEKS                       R16 R0 K12 ["Src"]
       94 GETTABLEKS                       R15 R16 K25 ["Enums"]
       96 GETTABLEKS                       R14 R15 K26 ["AnnotationRequestStatus"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K5 [require]
      101 GETTABLEKS                       R17 R0 K12 ["Src"]
      103 GETTABLEKS                       R16 R17 K25 ["Enums"]
      105 GETTABLEKS                       R15 R16 K27 ["UIRequestStatus"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R16 K5 [require]
      110 GETTABLEKS                       R19 R0 K12 ["Src"]
      112 GETTABLEKS                       R18 R19 K13 ["Util"]
      114 GETTABLEKS                       R17 R18 K28 ["TaggedUsersUtils"]
      116 CALL                             R16 1 1
      117 GETTABLEKS                       R15 R16 K29 ["GetTaggedUsersAndAnonymizedContents"]
      119 GETIMPORT                        R17 K5 [require]
      121 GETTABLEKS                       R20 R0 K12 ["Src"]
      123 GETTABLEKS                       R19 R20 K18 ["Contexts"]
      125 GETTABLEKS                       R18 R19 K30 ["TagDropdownContext"]
      127 CALL                             R17 1 1
      128 GETTABLEKS                       R16 R17 K30 ["TagDropdownContext"]
      130 GETIMPORT                        R18 K5 [require]
      132 GETTABLEKS                       R21 R0 K12 ["Src"]
      134 GETTABLEKS                       R20 R21 K18 ["Contexts"]
      136 GETTABLEKS                       R19 R20 K31 ["TaggableUsersContext"]
      138 CALL                             R18 1 1
      139 GETTABLEKS                       R17 R18 K31 ["TaggableUsersContext"]
      141 GETIMPORT                        R18 K5 [require]
      143 GETTABLEKS                       R21 R0 K12 ["Src"]
      145 GETTABLEKS                       R20 R21 K20 ["Components"]
      147 GETTABLEKS                       R19 R20 K32 ["AnnotationHeader"]
      149 CALL                             R18 1 1
      150 GETIMPORT                        R19 K5 [require]
      152 GETTABLEKS                       R22 R0 K12 ["Src"]
      154 GETTABLEKS                       R21 R22 K13 ["Util"]
      156 GETTABLEKS                       R20 R21 K33 ["toggleAddAnnotation"]
      158 CALL                             R19 1 1
      159 GETIMPORT                        R20 K5 [require]
      161 GETTABLEKS                       R23 R0 K12 ["Src"]
      163 GETTABLEKS                       R22 R23 K25 ["Enums"]
      165 GETTABLEKS                       R21 R22 K34 ["AnnotationEditingMode"]
      167 CALL                             R20 1 1
      168 GETIMPORT                        R21 K5 [require]
      170 GETTABLEKS                       R24 R0 K12 ["Src"]
      172 GETTABLEKS                       R23 R24 K13 ["Util"]
      174 GETTABLEKS                       R22 R23 K35 ["AnnotationRequestUtils"]
      176 CALL                             R21 1 1
      177 GETTABLEKS                       R22 R21 K36 ["GetUIRequestStatus"]
      179 GETTABLEKS                       R23 R21 K37 ["IsErrorStatus"]
      181 GETTABLEKS                       R24 R21 K38 ["GetErrorMessage"]
      183 GETIMPORT                        R25 K5 [require]
      185 GETTABLEKS                       R27 R0 K12 ["Src"]
      187 GETTABLEKS                       R26 R27 K39 ["ActionUris"]
      189 CALL                             R25 1 1
      190 GETTABLEKS                       R26 R25 K40 ["ANNOTATIONS_ACTION_URI"]
      192 GETIMPORT                        R27 K5 [require]
      194 GETTABLEKS                       R29 R0 K12 ["Src"]
      196 GETTABLEKS                       R28 R29 K41 ["Types"]
      198 CALL                             R27 1 1
      199 GETIMPORT                        R28 K43 [game]
      201 LOADK                            R30 K44 ["AnnotationsService"]
      202 NAMECALL                         R28 R28 K45 ["GetService"]
      204 CALL                             R28 2 1
      205 GETIMPORT                        R29 K43 [game]
      207 LOADK                            R31 K46 ["StudioService"]
      208 NAMECALL                         R29 R29 K45 ["GetService"]
      210 CALL                             R29 2 1
      211 GETTABLEKS                       R30 R3 K47 ["fflagAnnotationsMaxTextLength"]
      213 DUPCLOSURE                       R31 K48 [PROTO_12]
      214 CAPTURE                          VAL R6
      215 CAPTURE                          VAL R7
      216 CAPTURE                          VAL R8
      217 CAPTURE                          VAL R1
      218 CAPTURE                          VAL R14
      219 CAPTURE                          VAL R16
      220 CAPTURE                          VAL R17
      221 CAPTURE                          VAL R22
      222 CAPTURE                          VAL R3
      223 CAPTURE                          VAL R26
      224 CAPTURE                          VAL R28
      225 CAPTURE                          VAL R20
      226 CAPTURE                          VAL R19
      227 CAPTURE                          VAL R4
      228 CAPTURE                          VAL R30
      229 CAPTURE                          VAL R9
      230 CAPTURE                          VAL R18
      231 CAPTURE                          VAL R29
      232 CAPTURE                          VAL R11
      233 CAPTURE                          VAL R23
      234 CAPTURE                          VAL R10
      235 CAPTURE                          VAL R24
      236 CAPTURE                          VAL R12
      237 CAPTURE                          VAL R15
      238 RETURN                           R31 1
