PROTO_0:
        0 LOADB                            R1 0
        1 JUMPIFEQKS                       R0 K0 [""] ; [+10]
        3 GETIMPORT                        R2 K3 [string.match]
        5 MOVE                             R3 R0
        6 LOADK                            R4 K4 ["^[%w%.%+%-_]+@[%w%-]+%.[%w%.%-]+$"]
        7 CALL                             R2 2 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+10]
        7 GETIMPORT                        R3 K3 [warn]
        9 LOADK                            R5 K4 ["OpenUrl failed: "]
       10 FASTCALL1                        TOSTRING R2 ; [+3]
       11 MOVE                             R7 R2
       12 GETIMPORT                        R6 K6 [tostring]
       14 CALL                             R6 1 1
       15 CONCAT                           R4 R5 R6
       16 CALL                             R3 1 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sendFeatureShown"]
        3 LOADK                            R1 K1 ["newParentDialogShown"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K7 [{[1] = True, ["statusCode"] = 200, ["errorMessage"] = , ["responseBody"]}]
        7 SETTABLEKS                       R0 R2 K6 ["responseBody"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["sendErrorFromCatch"]
        6 LOADK                            R2 K1 ["postSendRequestToNewParent"]
        7 MOVE                             R3 R0
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 2
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 FASTCALL1                        TYPE R0 ; [+3]
       13 MOVE                             R2 R0
       14 GETIMPORT                        R1 K3 [type]
       16 CALL                             R1 1 1
       17 JUMPIFNOTEQKS                    R1 K4 ["table"] ; [+17]
       19 GETUPVAL                         R1 2
       20 DUPTABLE                         R2 K10 [{["success"] = False, ["statusCode"], ["errorMessage"], ["responseBody"]}]
       21 GETTABLEKS                       R3 R0 K7 ["statusCode"]
       23 SETTABLEKS                       R3 R2 K7 ["statusCode"]
       25 GETTABLEKS                       R3 R0 K11 ["statusMessage"]
       27 SETTABLEKS                       R3 R2 K8 ["errorMessage"]
       29 GETTABLEKS                       R3 R0 K12 ["body"]
       31 SETTABLEKS                       R3 R2 K9 ["responseBody"]
       33 CALL                             R1 1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R1 2
       36 DUPTABLE                         R2 K14 [{["success"] = False, ["statusCode"] = , ["errorMessage"], ["responseBody"] = }]
       37 FASTCALL1                        TOSTRING R0 ; [+3]
       38 MOVE                             R4 R0
       39 GETIMPORT                        R3 K16 [tostring]
       41 CALL                             R3 1 1
       42 SETTABLEKS                       R3 R2 K8 ["errorMessage"]
       44 CALL                             R1 1 0
       45 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sendButtonClicked"]
        3 LOADK                            R1 K1 ["newParentEmailSendClicked"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R1 1
        6 LOADB                            R0 0
        7 JUMPIFEQKS                       R1 K2 [""] ; [+10]
        9 GETIMPORT                        R2 K5 [string.match]
       11 MOVE                             R3 R1
       12 LOADK                            R4 K6 ["^[%w%.%+%-_]+@[%w%-]+%.[%w%.%-]+$"]
       13 CALL                             R2 2 1
       14 JUMPIFNOTEQKNIL                  R2 ; [+2]
       16 LOADB                            R0 0 +1
       17 LOADB                            R0 1
       18 JUMPIF                           R0 ; [+9]
       19 GETUPVAL                         R0 2
       20 GETUPVAL                         R1 3
       21 LOADK                            R3 K7 ["VPCTrustedConnectionDialog"]
       22 LOADK                            R4 K8 ["EmailError"]
       23 NAMECALL                         R1 R1 K9 ["getText"]
       25 CALL                             R1 3 -1
       26 CALL                             R0 -1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R0 4
       29 LOADB                            R1 1
       30 CALL                             R0 1 0
       31 GETUPVAL                         R0 2
       32 LOADNIL                          R1
       33 CALL                             R0 1 0
       34 NEWTABLE                         R0 0 0
       36 GETUPVAL                         R1 5
       37 LOADNIL                          R2
       38 LOADNIL                          R3
       39 FORGPREP                         R1
       40 GETTABLEKS                       R9 R5 K10 ["userId"]
       42 FASTCALL1                        TOSTRING R9 ; [+2]
       43 GETIMPORT                        R8 K12 [tostring]
       45 CALL                             R8 1 1
       46 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       48 MOVE                             R7 R0
       49 GETIMPORT                        R6 K15 [table.insert]
       51 CALL                             R6 2 0
       52 FORGLOOP                         R1 2 ; [-13]
       54 GETUPVAL                         R1 6
       55 GETTABLEKS                       R1 R1 K16 ["postSendRequestToNewParent"]
       57 DUPTABLE                         R2 K21 [{["email"], ["requestType"] = "BulkAddTrustedConnections", ["requestDetails"]}]
       58 GETUPVAL                         R3 1
       59 SETTABLEKS                       R3 R2 K17 ["email"]
       61 DUPTABLE                         R3 K24 [{"targetUserIds", "gameId"}]
       62 GETIMPORT                        R4 K26 [table.concat]
       64 MOVE                             R5 R0
       65 LOADK                            R6 K27 [","]
       66 CALL                             R4 2 1
       67 SETTABLEKS                       R4 R3 K22 ["targetUserIds"]
       69 GETUPVAL                         R5 7
       70 FASTCALL1                        TOSTRING R5 ; [+2]
       71 GETIMPORT                        R4 K12 [tostring]
       73 CALL                             R4 1 1
       74 SETTABLEKS                       R4 R3 K23 ["gameId"]
       76 SETTABLEKS                       R3 R2 K20 ["requestDetails"]
       78 CALL                             R1 1 1
       79 NEWCLOSURE                       R3 P0
       80 CAPTURE                          UPVAL U4
       81 CAPTURE                          UPVAL U8
       82 NAMECALL                         R1 R1 K28 ["andThen"]
       84 CALL                             R1 2 1
       85 NEWCLOSURE                       R3 P1
       86 CAPTURE                          UPVAL U4
       87 CAPTURE                          UPVAL U0
       88 CAPTURE                          UPVAL U8
       89 NAMECALL                         R1 R1 K29 ["catch"]
       91 CALL                             R1 2 0
       92 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKS                       R0 K0 [""] ; [+24]
        3 GETUPVAL                         R1 0
        4 LOADB                            R0 0
        5 JUMPIFEQKS                       R1 K0 [""] ; [+10]
        7 GETIMPORT                        R2 K3 [string.match]
        9 MOVE                             R3 R1
       10 LOADK                            R4 K4 ["^[%w%.%+%-_]+@[%w%-]+%.[%w%.%-]+$"]
       11 CALL                             R2 2 1
       12 JUMPIFNOTEQKNIL                  R2 ; [+2]
       14 LOADB                            R0 0 +1
       15 LOADB                            R0 1
       16 JUMPIF                           R0 ; [+9]
       17 GETUPVAL                         R0 1
       18 GETUPVAL                         R1 2
       19 LOADK                            R3 K5 ["VPCTrustedConnectionDialog"]
       20 LOADK                            R4 K6 ["EmailError"]
       21 NAMECALL                         R1 R1 K7 ["getText"]
       23 CALL                             R1 3 -1
       24 CALL                             R0 -1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R0 1
       27 LOADNIL                          R1
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sendButtonClicked"]
        3 LOADK                            R1 K1 ["learnMoreClicked"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 GETIMPORT                        R1 K3 [pcall]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 CALL                             R1 1 2
       12 JUMPIF                           R1 ; [+10]
       13 GETIMPORT                        R3 K5 [warn]
       15 LOADK                            R5 K6 ["OpenUrl failed: "]
       16 FASTCALL1                        TOSTRING R2 ; [+3]
       17 MOVE                             R7 R2
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 CONCAT                           R4 R5 R6
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 NAMECALL                         R3 R3 K0 ["use"]
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K1 ["useContext"]
       11 GETUPVAL                         R5 3
       12 CALL                             R4 1 1
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K1 ["useContext"]
       16 GETUPVAL                         R6 4
       17 CALL                             R5 1 1
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K2 ["useState"]
       21 LOADK                            R7 K3 [""]
       22 CALL                             R6 1 2
       23 GETUPVAL                         R8 2
       24 GETTABLEKS                       R8 R8 K2 ["useState"]
       26 LOADB                            R9 0
       27 CALL                             R8 1 2
       28 GETUPVAL                         R10 2
       29 GETTABLEKS                       R10 R10 K2 ["useState"]
       31 LOADNIL                          R11
       32 CALL                             R10 1 2
       33 GETUPVAL                         R12 2
       34 GETTABLEKS                       R12 R12 K4 ["useEffect"]
       36 DUPCLOSURE                       R13 K5 [PROTO_3]
       37 CAPTURE                          UPVAL U5
       38 NEWTABLE                         R14 0 0
       40 CALL                             R12 2 0
       41 GETTABLEKS                       R12 R0 K6 ["onRequestComplete"]
       43 GETTABLEKS                       R13 R5 K7 ["collaborators"]
       45 GETTABLEKS                       R14 R0 K8 ["universeId"]
       47 GETUPVAL                         R15 2
       48 GETTABLEKS                       R15 R15 K9 ["useCallback"]
       50 NEWCLOSURE                       R16 P1
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R11
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R13
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R14
       59 CAPTURE                          VAL R12
       60 NEWTABLE                         R17 0 5
       62 MOVE                             R18 R6
       63 MOVE                             R19 R4
       64 MOVE                             R20 R12
       65 MOVE                             R21 R13
       66 MOVE                             R22 R14
       67 SETLIST                          R17 R18 5 [1]
       69 CALL                             R15 2 1
       70 GETUPVAL                         R16 2
       71 GETTABLEKS                       R16 R16 K10 ["createElement"]
       73 GETUPVAL                         R17 6
       74 GETTABLEKS                       R17 R17 K11 ["View"]
       76 DUPTABLE                         R18 K14 [{["tag"] = "col gap-small size-full-full auto-xy padding-medium bg-surface-100"}]
       77 DUPTABLE                         R19 K20 [{"Title", "Subtitle", "Spacer", "EmailInput", "ButtonBar"}]
       78 GETUPVAL                         R20 2
       79 GETTABLEKS                       R20 R20 K10 ["createElement"]
       81 GETUPVAL                         R21 7
       82 DUPTABLE                         R22 K24 [{["Text"], ["tag"] = "size-0-0 auto-xy text-title-medium text-wrap text-align-x-left text-align-y-center", ["LayoutOrder"]}]
       83 LOADK                            R25 K25 ["VPCTrustedConnectionDialog"]
       84 LOADK                            R26 K15 ["Title"]
       85 NAMECALL                         R23 R3 K26 ["getText"]
       87 CALL                             R23 3 1
       88 SETTABLEKS                       R23 R22 K21 ["Text"]
       90 MOVE                             R23 R1
       91 CALL                             R23 0 1
       92 SETTABLEKS                       R23 R22 K23 ["LayoutOrder"]
       94 CALL                             R20 2 1
       95 SETTABLEKS                       R20 R19 K15 ["Title"]
       97 GETUPVAL                         R20 2
       98 GETTABLEKS                       R20 R20 K10 ["createElement"]
      100 GETUPVAL                         R21 7
      101 DUPTABLE                         R22 K28 [{["Text"], ["tag"] = "flex-y-fill size-0-0 auto-xy text-body-small text-wrap text-align-x-left", ["LayoutOrder"]}]
      102 LOADK                            R25 K25 ["VPCTrustedConnectionDialog"]
      103 LOADK                            R26 K16 ["Subtitle"]
      104 NAMECALL                         R23 R3 K26 ["getText"]
      106 CALL                             R23 3 1
      107 SETTABLEKS                       R23 R22 K21 ["Text"]
      109 MOVE                             R23 R1
      110 CALL                             R23 0 1
      111 SETTABLEKS                       R23 R22 K23 ["LayoutOrder"]
      113 CALL                             R20 2 1
      114 SETTABLEKS                       R20 R19 K16 ["Subtitle"]
      116 GETUPVAL                         R20 2
      117 GETTABLEKS                       R20 R20 K10 ["createElement"]
      119 GETUPVAL                         R21 6
      120 GETTABLEKS                       R21 R21 K11 ["View"]
      122 DUPTABLE                         R22 K30 [{["tag"] = "fill", ["LayoutOrder"]}]
      123 MOVE                             R23 R1
      124 CALL                             R23 0 1
      125 SETTABLEKS                       R23 R22 K23 ["LayoutOrder"]
      127 CALL                             R20 2 1
      128 SETTABLEKS                       R20 R19 K17 ["Spacer"]
      130 GETUPVAL                         R20 2
      131 GETTABLEKS                       R20 R20 K10 ["createElement"]
      133 GETUPVAL                         R21 6
      134 GETTABLEKS                       R21 R21 K31 ["TextArea"]
      136 DUPTABLE                         R22 K44 [{["tag"] = "padding-x-small", ["text"], ["onChanged"], ["onFocusLost"], ["label"], ["hint"], ["hasError"], ["isDisabled"], ["width"], ["numLines"] = 1, ["size"], ["LayoutOrder"]}]
      137 SETTABLEKS                       R6 R22 K33 ["text"]
      139 SETTABLEKS                       R7 R22 K34 ["onChanged"]
      141 NEWCLOSURE                       R23 P2
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R3
      145 SETTABLEKS                       R23 R22 K35 ["onFocusLost"]
      147 LOADK                            R25 K25 ["VPCTrustedConnectionDialog"]
      148 LOADK                            R26 K45 ["EmailLabel"]
      149 NAMECALL                         R23 R3 K26 ["getText"]
      151 CALL                             R23 3 1
      152 SETTABLEKS                       R23 R22 K36 ["label"]
      154 ORK                              R23 R10 K46 []
      155 SETTABLEKS                       R23 R22 K37 ["hint"]
      157 JUMPIFNOTEQKNIL                  R10 ; [+2]
      159 LOADB                            R23 0 +1
      160 LOADB                            R23 1
      161 SETTABLEKS                       R23 R22 K38 ["hasError"]
      163 SETTABLEKS                       R8 R22 K39 ["isDisabled"]
      165 GETIMPORT                        R23 K49 [UDim.new]
      167 LOADN                            R24 0
      168 LOADN                            R25 500
      169 CALL                             R23 2 1
      170 SETTABLEKS                       R23 R22 K40 ["width"]
      172 GETUPVAL                         R23 6
      173 GETTABLEKS                       R23 R23 K50 ["Enums"]
      175 GETTABLEKS                       R23 R23 K51 ["InputSize"]
      177 GETTABLEKS                       R23 R23 K52 ["Medium"]
      179 SETTABLEKS                       R23 R22 K43 ["size"]
      181 MOVE                             R23 R1
      182 CALL                             R23 0 1
      183 SETTABLEKS                       R23 R22 K23 ["LayoutOrder"]
      185 CALL                             R20 2 1
      186 SETTABLEKS                       R20 R19 K18 ["EmailInput"]
      188 GETUPVAL                         R20 2
      189 GETTABLEKS                       R20 R20 K10 ["createElement"]
      191 GETUPVAL                         R21 6
      192 GETTABLEKS                       R21 R21 K11 ["View"]
      194 DUPTABLE                         R22 K54 [{["tag"] = "align-y-end row gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      195 MOVE                             R23 R1
      196 CALL                             R23 0 1
      197 SETTABLEKS                       R23 R22 K23 ["LayoutOrder"]
      199 DUPTABLE                         R23 K57 [{"Spacer", "SendButton", "LearnMoreButton"}]
      200 GETUPVAL                         R24 2
      201 GETTABLEKS                       R24 R24 K10 ["createElement"]
      203 GETUPVAL                         R25 6
      204 GETTABLEKS                       R25 R25 K11 ["View"]
      206 DUPTABLE                         R26 K30 [{["tag"] = "fill", ["LayoutOrder"]}]
      207 MOVE                             R27 R2
      208 CALL                             R27 0 1
      209 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      211 CALL                             R24 2 1
      212 SETTABLEKS                       R24 R23 K17 ["Spacer"]
      214 GETUPVAL                         R24 2
      215 GETTABLEKS                       R24 R24 K10 ["createElement"]
      217 GETUPVAL                         R25 6
      218 GETTABLEKS                       R25 R25 K58 ["Button"]
      220 DUPTABLE                         R26 K61 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
      221 LOADK                            R29 K25 ["VPCTrustedConnectionDialog"]
      222 LOADK                            R30 K55 ["SendButton"]
      223 NAMECALL                         R27 R3 K26 ["getText"]
      225 CALL                             R27 3 1
      226 SETTABLEKS                       R27 R26 K33 ["text"]
      228 GETUPVAL                         R27 6
      229 GETTABLEKS                       R27 R27 K50 ["Enums"]
      231 GETTABLEKS                       R27 R27 K62 ["ButtonVariant"]
      233 GETTABLEKS                       R27 R27 K63 ["Emphasis"]
      235 SETTABLEKS                       R27 R26 K59 ["variant"]
      237 SETTABLEKS                       R15 R26 K60 ["onActivated"]
      239 MOVE                             R27 R8
      240 JUMPIF                           R27 ; [+13]
      241 LOADB                            R28 0
      242 JUMPIFEQKS                       R6 K3 [""] ; [+10]
      244 GETIMPORT                        R29 K66 [string.match]
      246 MOVE                             R30 R6
      247 LOADK                            R31 K67 ["^[%w%.%+%-_]+@[%w%-]+%.[%w%.%-]+$"]
      248 CALL                             R29 2 1
      249 JUMPIFNOTEQKNIL                  R29 ; [+2]
      251 LOADB                            R28 0 +1
      252 LOADB                            R28 1
      253 NOT                              R27 R28
      254 SETTABLEKS                       R27 R26 K39 ["isDisabled"]
      256 GETUPVAL                         R27 6
      257 GETTABLEKS                       R27 R27 K50 ["Enums"]
      259 GETTABLEKS                       R27 R27 K51 ["InputSize"]
      261 GETTABLEKS                       R27 R27 K68 ["Small"]
      263 SETTABLEKS                       R27 R26 K43 ["size"]
      265 MOVE                             R27 R2
      266 CALL                             R27 0 1
      267 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      269 CALL                             R24 2 1
      270 SETTABLEKS                       R24 R23 K55 ["SendButton"]
      272 GETUPVAL                         R24 2
      273 GETTABLEKS                       R24 R24 K10 ["createElement"]
      275 GETUPVAL                         R25 6
      276 GETTABLEKS                       R25 R25 K58 ["Button"]
      278 DUPTABLE                         R26 K69 [{"text", "variant", "onActivated", "size", "LayoutOrder"}]
      279 LOADK                            R29 K70 ["MainView"]
      280 LOADK                            R30 K71 ["ViewDetailsButton"]
      281 NAMECALL                         R27 R3 K26 ["getText"]
      283 CALL                             R27 3 1
      284 SETTABLEKS                       R27 R26 K33 ["text"]
      286 GETUPVAL                         R27 6
      287 GETTABLEKS                       R27 R27 K50 ["Enums"]
      289 GETTABLEKS                       R27 R27 K62 ["ButtonVariant"]
      291 GETTABLEKS                       R27 R27 K72 ["Standard"]
      293 SETTABLEKS                       R27 R26 K59 ["variant"]
      295 DUPCLOSURE                       R27 K73 [PROTO_8]
      296 CAPTURE                          UPVAL U5
      297 CAPTURE                          UPVAL U8
      298 CAPTURE                          UPVAL U9
      299 SETTABLEKS                       R27 R26 K60 ["onActivated"]
      301 GETUPVAL                         R27 6
      302 GETTABLEKS                       R27 R27 K50 ["Enums"]
      304 GETTABLEKS                       R27 R27 K51 ["InputSize"]
      306 GETTABLEKS                       R27 R27 K68 ["Small"]
      308 SETTABLEKS                       R27 R26 K43 ["size"]
      310 MOVE                             R27 R2
      311 CALL                             R27 0 1
      312 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      314 CALL                             R24 2 1
      315 SETTABLEKS                       R24 R23 K56 ["LearnMoreButton"]
      317 CALL                             R20 3 1
      318 SETTABLEKS                       R20 R19 K19 ["ButtonBar"]
      320 CALL                             R16 3 -1
      321 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TeamCreateCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETTABLEKS                       R7 R2 K13 ["createNextOrder"]
       41 GETIMPORT                        R8 K15 [game]
       43 LOADK                            R10 K16 ["BrowserService"]
       44 NAMECALL                         R8 R8 K17 ["GetService"]
       46 CALL                             R8 2 1
       47 GETTABLEKS                       R9 R3 K18 ["Text"]
       49 GETIMPORT                        R10 K5 [require]
       51 GETTABLEKS                       R11 R0 K19 ["Bin"]
       53 GETTABLEKS                       R11 R11 K20 ["Common"]
       55 GETTABLEKS                       R11 R11 K21 ["flags"]
       57 CALL                             R10 1 1
       58 GETTABLEKS                       R11 R10 K22 ["FStringTrustedConnectionsHelpdesk"]
       60 GETTABLEKS                       R12 R0 K23 ["Src"]
       62 GETTABLEKS                       R12 R12 K24 ["Contexts"]
       64 GETIMPORT                        R13 K5 [require]
       66 GETTABLEKS                       R14 R12 K25 ["NetworkContext"]
       68 CALL                             R13 1 1
       69 GETIMPORT                        R14 K5 [require]
       71 GETTABLEKS                       R15 R12 K26 ["ControllerContext"]
       73 CALL                             R14 1 1
       74 GETIMPORT                        R15 K5 [require]
       76 GETTABLEKS                       R16 R0 K23 ["Src"]
       78 GETTABLEKS                       R16 R16 K27 ["Util"]
       80 GETTABLEKS                       R16 R16 K28 ["Telemetry"]
       82 GETTABLEKS                       R16 R16 K28 ["Telemetry"]
       84 CALL                             R15 1 1
       85 DUPCLOSURE                       R16 K29 [PROTO_0]
       86 DUPCLOSURE                       R17 K30 [PROTO_2]
       87 CAPTURE                          VAL R8
       88 DUPCLOSURE                       R18 K31 [PROTO_9]
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R13
       93 CAPTURE                          VAL R14
       94 CAPTURE                          VAL R15
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R8
       99 RETURN                           R18 1
