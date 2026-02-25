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
       30 GETUPVAL                         R3 4
       31 GETTABLEKS                       R2 R3 K4 ["fflagCOLLAB8949AnnotationsAddPluginTelemetry"]
       33 JUMPIFNOT                        R2 ; [+16]
       34 GETUPVAL                         R2 10
       35 GETUPVAL                         R4 10
       36 NAMECALL                         R4 R4 K5 ["getAnnotationsPluginActionEvent"]
       38 CALL                             R4 1 1
       39 GETUPVAL                         R5 10
       40 GETUPVAL                         R8 11
       41 GETTABLEKS                       R7 R8 K6 ["PopupOpenEvent"]
       43 GETUPVAL                         R8 5
       44 NAMECALL                         R5 R5 K7 ["getTelemetryEvent"]
       46 CALL                             R5 3 -1
       47 NAMECALL                         R2 R2 K8 ["logRobloxTelemetryEvent"]
       49 CALL                             R2 -1 0
       50 NEWCLOSURE                       R2 P2
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R1
       53 RETURN                           R2 1

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
       19 GETUPVAL                         R1 6
       20 GETTABLEKS                       R0 R1 K3 ["fflagCOLLAB8949AnnotationsAddPluginTelemetry"]
       22 JUMPIFNOT                        R0 ; [+16]
       23 GETUPVAL                         R0 7
       24 GETUPVAL                         R2 7
       25 NAMECALL                         R2 R2 K4 ["getAnnotationsPluginActionEvent"]
       27 CALL                             R2 1 1
       28 GETUPVAL                         R3 7
       29 GETUPVAL                         R6 8
       30 GETTABLEKS                       R5 R6 K5 ["PopupCloseEvent"]
       32 GETUPVAL                         R6 5
       33 NAMECALL                         R3 R3 K6 ["getTelemetryEvent"]
       35 CALL                             R3 3 -1
       36 NAMECALL                         R0 R0 K7 ["logRobloxTelemetryEvent"]
       38 CALL                             R0 -1 0
       39 RETURN                           R0 0

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
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R4 R5 K2 ["fflagCOLLAB8949AnnotationsAddPluginTelemetry"]
       14 JUMPIFNOT                        R4 ; [+5]
       15 GETUPVAL                         R3 3
       16 NAMECALL                         R3 R3 K0 ["use"]
       18 CALL                             R3 1 1
       19 JUMP                             ; [+1]
       20 LOADNIL                          R3
       21 GETUPVAL                         R5 4
       22 GETTABLEKS                       R4 R5 K3 ["useState"]
       24 LOADK                            R5 K4 [""]
       25 CALL                             R4 1 2
       26 GETUPVAL                         R7 4
       27 GETTABLEKS                       R6 R7 K3 ["useState"]
       29 GETUPVAL                         R8 5
       30 GETTABLEKS                       R7 R8 K5 ["None"]
       32 CALL                             R6 1 2
       33 GETUPVAL                         R9 4
       34 GETTABLEKS                       R8 R9 K6 ["useContext"]
       36 GETUPVAL                         R9 6
       37 CALL                             R8 1 1
       38 GETUPVAL                         R10 4
       39 GETTABLEKS                       R9 R10 K6 ["useContext"]
       41 GETUPVAL                         R10 7
       42 CALL                             R9 1 1
       43 GETTABLEKS                       R10 R9 K7 ["joinedTaggableUsersMap"]
       45 GETTABLEKS                       R11 R8 K8 ["isTagDropdownOpen"]
       47 GETTABLEKS                       R12 R9 K9 ["isTaggableUsersErrorStatus"]
       49 GETUPVAL                         R14 4
       50 GETTABLEKS                       R13 R14 K10 ["useEffect"]
       52 NEWCLOSURE                       R14 P0
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R6
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          VAL R0
       57 NEWTABLE                         R15 0 0
       59 CALL                             R13 2 0
       60 GETUPVAL                         R14 4
       61 GETTABLEKS                       R13 R14 K10 ["useEffect"]
       63 NEWCLOSURE                       R14 P1
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R7
       66 CAPTURE                          UPVAL U5
       67 CAPTURE                          UPVAL U8
       68 CAPTURE                          UPVAL U2
       69 CAPTURE                          VAL R1
       70 CAPTURE                          UPVAL U9
       71 CAPTURE                          UPVAL U10
       72 CAPTURE                          UPVAL U11
       73 CAPTURE                          UPVAL U12
       74 CAPTURE                          VAL R3
       75 CAPTURE                          UPVAL U13
       76 NEWTABLE                         R15 0 1
       78 GETTABLEKS                       R16 R0 K11 ["Annotation"]
       80 SETLIST                          R15 R16 1 [1]
       82 CALL                             R13 2 0
       83 GETUPVAL                         R14 4
       84 GETTABLEKS                       R13 R14 K12 ["useCallback"]
       86 NEWCLOSURE                       R14 P2
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R6
       89 CAPTURE                          UPVAL U5
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U12
       92 CAPTURE                          VAL R1
       93 CAPTURE                          UPVAL U2
       94 CAPTURE                          VAL R3
       95 CAPTURE                          UPVAL U13
       96 NEWTABLE                         R15 0 3
       98 GETTABLEKS                       R16 R0 K11 ["Annotation"]
      100 MOVE                             R17 R6
      101 MOVE                             R18 R11
      102 SETLIST                          R15 R16 3 [1]
      104 CALL                             R13 2 1
      105 GETUPVAL                         R15 4
      106 GETTABLEKS                       R14 R15 K13 ["useMemo"]
      108 NEWCLOSURE                       R15 P3
      109 CAPTURE                          UPVAL U4
      110 CAPTURE                          VAL R13
      111 NEWTABLE                         R16 0 1
      113 MOVE                             R17 R13
      114 SETLIST                          R16 R17 1 [1]
      116 CALL                             R14 2 1
      117 FASTCALL1                        STRING_LEN R4 ; [+3]
      118 MOVE                             R17 R4
      119 GETIMPORT                        R16 K16 [string.len]
      121 CALL                             R16 1 1
      122 GETUPVAL                         R17 14
      123 JUMPIFLT                         R17 R16 ; [+2]
      125 LOADB                            R15 0 +1
      126 LOADB                            R15 1
      127 GETUPVAL                         R17 4
      128 GETTABLEKS                       R16 R17 K17 ["createElement"]
      130 GETUPVAL                         R17 15
      131 DUPTABLE                         R18 K22 [{"Width", "Position", "OnFocusLost", "DebounceFocusLost"}]
      132 LOADN                            R19 94
      133 SETTABLEKS                       R19 R18 K18 ["Width"]
      135 GETTABLEKS                       R19 R0 K19 ["Position"]
      137 SETTABLEKS                       R19 R18 K19 ["Position"]
      139 SETTABLEKS                       R13 R18 K20 ["OnFocusLost"]
      141 GETUPVAL                         R21 5
      142 GETTABLEKS                       R20 R21 K23 ["InProgress"]
      144 JUMPIFNOTEQ                      R6 R20 ; [+2]
      146 LOADB                            R19 0 +1
      147 LOADB                            R19 1
      148 SETTABLEKS                       R19 R18 K21 ["DebounceFocusLost"]
      150 DUPTABLE                         R19 K28 [{"Header", "InputArea", "ErrorWrapper", "Footer"}]
      151 GETUPVAL                         R21 4
      152 GETTABLEKS                       R20 R21 K17 ["createElement"]
      154 GETUPVAL                         R21 16
      155 DUPTABLE                         R22 K31 [{"Annotation", "DataModel", "children"}]
      156 GETTABLEKS                       R23 R0 K11 ["Annotation"]
      158 SETTABLEKS                       R23 R22 K11 ["Annotation"]
      160 LOADK                            R23 K32 ["Edit"]
      161 SETTABLEKS                       R23 R22 K29 ["DataModel"]
      163 SETTABLEKS                       R14 R22 K30 ["children"]
      165 CALL                             R20 2 1
      166 SETTABLEKS                       R20 R19 K24 ["Header"]
      168 GETUPVAL                         R21 4
      169 GETTABLEKS                       R20 R21 K17 ["createElement"]
      171 LOADK                            R21 K33 ["Frame"]
      172 NEWTABLE                         R22 8 0
      174 LOADN                            R23 1
      175 SETTABLEKS                       R23 R22 K34 ["LayoutOrder"]
      177 LOADN                            R23 1
      178 SETTABLEKS                       R23 R22 K35 ["BackgroundTransparency"]
      180 GETIMPORT                        R23 K39 [Enum.AutomaticSize.Y]
      182 SETTABLEKS                       R23 R22 K37 ["AutomaticSize"]
      184 GETIMPORT                        R23 K42 [UDim2.fromScale]
      186 LOADN                            R24 1
      187 LOADN                            R25 0
      188 CALL                             R23 2 1
      189 SETTABLEKS                       R23 R22 K43 ["Size"]
      191 GETUPVAL                         R24 4
      192 GETTABLEKS                       R23 R24 K44 ["Tag"]
      194 LOADK                            R24 K45 ["X-RowM X-Top"]
      195 SETTABLE                         R24 R22 R23
      196 DUPTABLE                         R23 K48 [{"Avatar", "TextInput"}]
      197 GETUPVAL                         R25 4
      198 GETTABLEKS                       R24 R25 K17 ["createElement"]
      200 LOADK                            R25 K49 ["ImageLabel"]
      201 NEWTABLE                         R26 4 0
      203 LOADK                            R28 K50 ["rbxthumb://type=AvatarHeadShot&id=%*&filters=circular&w=150&h=150"]
      204 GETUPVAL                         R30 17
      205 NAMECALL                         R30 R30 K51 ["GetUserId"]
      207 CALL                             R30 1 1
      208 NAMECALL                         R28 R28 K52 ["format"]
      210 CALL                             R28 2 1
      211 MOVE                             R27 R28
      212 SETTABLEKS                       R27 R26 K53 ["Image"]
      214 LOADN                            R27 0
      215 SETTABLEKS                       R27 R26 K34 ["LayoutOrder"]
      217 GETUPVAL                         R28 4
      218 GETTABLEKS                       R27 R28 K44 ["Tag"]
      220 LOADK                            R28 K54 ["Component-Avatar"]
      221 SETTABLE                         R28 R26 R27
      222 CALL                             R24 2 1
      223 SETTABLEKS                       R24 R23 K46 ["Avatar"]
      225 GETUPVAL                         R25 4
      226 GETTABLEKS                       R24 R25 K17 ["createElement"]
      228 GETUPVAL                         R25 18
      229 DUPTABLE                         R26 K59 [{"LayoutOrder", "Text", "OnTextChanged", "PlaceholderText", "Disabled"}]
      230 LOADN                            R27 1
      231 SETTABLEKS                       R27 R26 K34 ["LayoutOrder"]
      233 SETTABLEKS                       R4 R26 K55 ["Text"]
      235 NEWCLOSURE                       R27 P4
      236 CAPTURE                          VAL R5
      237 SETTABLEKS                       R27 R26 K56 ["OnTextChanged"]
      239 LOADK                            R29 K60 ["AddAnnotation"]
      240 LOADK                            R30 K57 ["PlaceholderText"]
      241 NAMECALL                         R27 R2 K61 ["getText"]
      243 CALL                             R27 3 1
      244 SETTABLEKS                       R27 R26 K57 ["PlaceholderText"]
      246 GETUPVAL                         R29 5
      247 GETTABLEKS                       R28 R29 K23 ["InProgress"]
      249 JUMPIFEQ                         R6 R28 ; [+2]
      251 LOADB                            R27 0 +1
      252 LOADB                            R27 1
      253 SETTABLEKS                       R27 R26 K58 ["Disabled"]
      255 CALL                             R24 2 1
      256 SETTABLEKS                       R24 R23 K47 ["TextInput"]
      258 CALL                             R20 3 1
      259 SETTABLEKS                       R20 R19 K25 ["InputArea"]
      261 GETUPVAL                         R21 19
      262 MOVE                             R22 R6
      263 MOVE                             R23 R4
      264 MOVE                             R24 R12
      265 CALL                             R21 3 1
      266 JUMPIF                           R21 ; [+1]
      267 JUMPIFNOT                        R15 ; [+73]
      268 GETUPVAL                         R21 4
      269 GETTABLEKS                       R20 R21 K17 ["createElement"]
      271 LOADK                            R21 K33 ["Frame"]
      272 DUPTABLE                         R22 K62 [{"LayoutOrder", "BackgroundTransparency", "Size", "AutomaticSize"}]
      273 LOADN                            R23 2
      274 SETTABLEKS                       R23 R22 K34 ["LayoutOrder"]
      276 LOADN                            R23 1
      277 SETTABLEKS                       R23 R22 K35 ["BackgroundTransparency"]
      279 GETIMPORT                        R23 K42 [UDim2.fromScale]
      281 LOADN                            R24 1
      282 LOADN                            R25 0
      283 CALL                             R23 2 1
      284 SETTABLEKS                       R23 R22 K43 ["Size"]
      286 GETIMPORT                        R23 K39 [Enum.AutomaticSize.Y]
      288 SETTABLEKS                       R23 R22 K37 ["AutomaticSize"]
      290 DUPTABLE                         R23 K64 [{"Error"}]
      291 GETUPVAL                         R25 4
      292 GETTABLEKS                       R24 R25 K17 ["createElement"]
      294 GETUPVAL                         R25 20
      295 DUPTABLE                         R26 K67 [{"Message", "UIPadding"}]
      296 JUMPIFNOT                        R15 ; [+14]
      297 LOADK                            R29 K47 ["TextInput"]
      298 LOADK                            R30 K68 ["LengthExceeded"]
      299 DUPTABLE                         R31 K70 [{"maxLength"}]
      300 GETUPVAL                         R33 14
      301 FASTCALL1                        TOSTRING R33 ; [+2]
      302 GETIMPORT                        R32 K72 [tostring]
      304 CALL                             R32 1 1
      305 SETTABLEKS                       R32 R31 K69 ["maxLength"]
      307 NAMECALL                         R27 R2 K61 ["getText"]
      309 CALL                             R27 4 1
      310 JUMP                             ; [+8]
      311 GETUPVAL                         R27 21
      312 MOVE                             R28 R6
      313 GETTABLEKS                       R29 R0 K11 ["Annotation"]
      315 MOVE                             R30 R2
      316 MOVE                             R31 R4
      317 MOVE                             R32 R12
      318 CALL                             R27 5 1
      319 SETTABLEKS                       R27 R26 K65 ["Message"]
      321 GETUPVAL                         R28 4
      322 GETTABLEKS                       R27 R28 K17 ["createElement"]
      324 LOADK                            R28 K66 ["UIPadding"]
      325 DUPTABLE                         R29 K74 [{"PaddingLeft"}]
      326 GETIMPORT                        R30 K77 [UDim.new]
      328 LOADN                            R31 0
      329 LOADN                            R32 42
      330 CALL                             R30 2 1
      331 SETTABLEKS                       R30 R29 K73 ["PaddingLeft"]
      333 CALL                             R27 2 1
      334 SETTABLEKS                       R27 R26 K66 ["UIPadding"]
      336 CALL                             R24 2 1
      337 SETTABLEKS                       R24 R23 K63 ["Error"]
      339 CALL                             R20 3 1
      340 JUMP                             ; [+1]
      341 LOADNIL                          R20
      342 SETTABLEKS                       R20 R19 K26 ["ErrorWrapper"]
      344 GETUPVAL                         R22 5
      345 GETTABLEKS                       R21 R22 K23 ["InProgress"]
      347 JUMPIFEQ                         R6 R21 ; [+22]
      349 GETUPVAL                         R21 4
      350 GETTABLEKS                       R20 R21 K17 ["createElement"]
      352 GETUPVAL                         R21 22
      353 DUPTABLE                         R22 K80 [{"Text", "OnSubmit", "OnCancel", "LayoutOrder"}]
      354 SETTABLEKS                       R4 R22 K55 ["Text"]
      356 NEWCLOSURE                       R23 P5
      357 CAPTURE                          VAL R0
      358 CAPTURE                          UPVAL U23
      359 CAPTURE                          VAL R10
      360 CAPTURE                          UPVAL U10
      361 SETTABLEKS                       R23 R22 K78 ["OnSubmit"]
      363 SETTABLEKS                       R13 R22 K79 ["OnCancel"]
      365 LOADN                            R23 3
      366 SETTABLEKS                       R23 R22 K34 ["LayoutOrder"]
      368 CALL                             R20 2 1
      369 JUMP                             ; [+1]
      370 LOADNIL                          R20
      371 SETTABLEKS                       R20 R19 K27 ["Footer"]
      373 CALL                             R16 3 -1
      374 RETURN                           R16 -1

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
      216 CAPTURE                          VAL R3
      217 CAPTURE                          VAL R8
      218 CAPTURE                          VAL R1
      219 CAPTURE                          VAL R14
      220 CAPTURE                          VAL R16
      221 CAPTURE                          VAL R17
      222 CAPTURE                          VAL R22
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
