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
        4 JUMPIFNOT                        R1 ; [+14]
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K4 [{"success", "statusCode", "errorMessage", "responseBody"}]
        7 LOADB                            R3 1
        8 SETTABLEKS                       R3 R2 K0 ["success"]
       10 LOADN                            R3 200
       11 SETTABLEKS                       R3 R2 K1 ["statusCode"]
       13 LOADNIL                          R3
       14 SETTABLEKS                       R3 R2 K2 ["errorMessage"]
       16 SETTABLEKS                       R0 R2 K3 ["responseBody"]
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

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
       17 JUMPIFNOTEQKS                    R1 K4 ["table"] ; [+20]
       19 GETUPVAL                         R1 2
       20 DUPTABLE                         R2 K9 [{"success", "statusCode", "errorMessage", "responseBody"}]
       21 LOADB                            R3 0
       22 SETTABLEKS                       R3 R2 K5 ["success"]
       24 GETTABLEKS                       R3 R0 K6 ["statusCode"]
       26 SETTABLEKS                       R3 R2 K6 ["statusCode"]
       28 GETTABLEKS                       R3 R0 K10 ["statusMessage"]
       30 SETTABLEKS                       R3 R2 K7 ["errorMessage"]
       32 GETTABLEKS                       R3 R0 K11 ["body"]
       34 SETTABLEKS                       R3 R2 K8 ["responseBody"]
       36 CALL                             R1 1 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R1 2
       39 DUPTABLE                         R2 K9 [{"success", "statusCode", "errorMessage", "responseBody"}]
       40 LOADB                            R3 0
       41 SETTABLEKS                       R3 R2 K5 ["success"]
       43 LOADNIL                          R3
       44 SETTABLEKS                       R3 R2 K6 ["statusCode"]
       46 FASTCALL1                        TOSTRING R0 ; [+3]
       47 MOVE                             R4 R0
       48 GETIMPORT                        R3 K13 [tostring]
       50 CALL                             R3 1 1
       51 SETTABLEKS                       R3 R2 K7 ["errorMessage"]
       53 LOADNIL                          R3
       54 SETTABLEKS                       R3 R2 K8 ["responseBody"]
       56 CALL                             R1 1 0
       57 RETURN                           R0 0

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
       57 DUPTABLE                         R2 K20 [{"email", "requestType", "requestDetails"}]
       58 GETUPVAL                         R3 1
       59 SETTABLEKS                       R3 R2 K17 ["email"]
       61 LOADK                            R3 K21 ["BulkAddTrustedConnections"]
       62 SETTABLEKS                       R3 R2 K18 ["requestType"]
       64 DUPTABLE                         R3 K24 [{"targetUserIds", "gameId"}]
       65 GETIMPORT                        R4 K26 [table.concat]
       67 MOVE                             R5 R0
       68 LOADK                            R6 K27 [","]
       69 CALL                             R4 2 1
       70 SETTABLEKS                       R4 R3 K22 ["targetUserIds"]
       72 GETUPVAL                         R5 7
       73 FASTCALL1                        TOSTRING R5 ; [+2]
       74 GETIMPORT                        R4 K12 [tostring]
       76 CALL                             R4 1 1
       77 SETTABLEKS                       R4 R3 K23 ["gameId"]
       79 SETTABLEKS                       R3 R2 K19 ["requestDetails"]
       81 CALL                             R1 1 1
       82 NEWCLOSURE                       R3 P0
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          UPVAL U8
       85 NAMECALL                         R1 R1 K28 ["andThen"]
       87 CALL                             R1 2 1
       88 NEWCLOSURE                       R3 P1
       89 CAPTURE                          UPVAL U4
       90 CAPTURE                          UPVAL U0
       91 CAPTURE                          UPVAL U8
       92 NAMECALL                         R1 R1 K29 ["catch"]
       94 CALL                             R1 2 0
       95 RETURN                           R0 0

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
       76 DUPTABLE                         R18 K13 [{"tag"}]
       77 LOADK                            R19 K14 ["size-full-full auto-xy col gap-small padding-medium bg-surface-100"]
       78 SETTABLEKS                       R19 R18 K12 ["tag"]
       80 DUPTABLE                         R19 K20 [{"Title", "Subtitle", "Spacer", "EmailInput", "ButtonBar"}]
       81 GETUPVAL                         R20 2
       82 GETTABLEKS                       R20 R20 K10 ["createElement"]
       84 GETUPVAL                         R21 7
       85 DUPTABLE                         R22 K23 [{"Text", "tag", "LayoutOrder"}]
       86 LOADK                            R25 K24 ["VPCTrustedConnectionDialog"]
       87 LOADK                            R26 K15 ["Title"]
       88 NAMECALL                         R23 R3 K25 ["getText"]
       90 CALL                             R23 3 1
       91 SETTABLEKS                       R23 R22 K21 ["Text"]
       93 LOADK                            R23 K26 ["auto-xy size-0-0 text-align-y-center text-align-x-left text-title-medium text-wrap"]
       94 SETTABLEKS                       R23 R22 K12 ["tag"]
       96 MOVE                             R23 R1
       97 CALL                             R23 0 1
       98 SETTABLEKS                       R23 R22 K22 ["LayoutOrder"]
      100 CALL                             R20 2 1
      101 SETTABLEKS                       R20 R19 K15 ["Title"]
      103 GETUPVAL                         R20 2
      104 GETTABLEKS                       R20 R20 K10 ["createElement"]
      106 GETUPVAL                         R21 7
      107 DUPTABLE                         R22 K23 [{"Text", "tag", "LayoutOrder"}]
      108 LOADK                            R25 K24 ["VPCTrustedConnectionDialog"]
      109 LOADK                            R26 K16 ["Subtitle"]
      110 NAMECALL                         R23 R3 K25 ["getText"]
      112 CALL                             R23 3 1
      113 SETTABLEKS                       R23 R22 K21 ["Text"]
      115 LOADK                            R23 K27 ["auto-xy size-0-0 text-align-x-left text-body-small text-wrap flex-y-fill"]
      116 SETTABLEKS                       R23 R22 K12 ["tag"]
      118 MOVE                             R23 R1
      119 CALL                             R23 0 1
      120 SETTABLEKS                       R23 R22 K22 ["LayoutOrder"]
      122 CALL                             R20 2 1
      123 SETTABLEKS                       R20 R19 K16 ["Subtitle"]
      125 GETUPVAL                         R20 2
      126 GETTABLEKS                       R20 R20 K10 ["createElement"]
      128 GETUPVAL                         R21 6
      129 GETTABLEKS                       R21 R21 K11 ["View"]
      131 DUPTABLE                         R22 K28 [{"tag", "LayoutOrder"}]
      132 LOADK                            R23 K29 ["fill"]
      133 SETTABLEKS                       R23 R22 K12 ["tag"]
      135 MOVE                             R23 R1
      136 CALL                             R23 0 1
      137 SETTABLEKS                       R23 R22 K22 ["LayoutOrder"]
      139 CALL                             R20 2 1
      140 SETTABLEKS                       R20 R19 K17 ["Spacer"]
      142 GETUPVAL                         R20 2
      143 GETTABLEKS                       R20 R20 K10 ["createElement"]
      145 GETUPVAL                         R21 6
      146 GETTABLEKS                       R21 R21 K30 ["TextArea"]
      148 DUPTABLE                         R22 K41 [{"tag", "text", "onChanged", "onFocusLost", "label", "hint", "hasError", "isDisabled", "width", "numLines", "size", "LayoutOrder"}]
      149 LOADK                            R23 K42 ["padding-x-small"]
      150 SETTABLEKS                       R23 R22 K12 ["tag"]
      152 SETTABLEKS                       R6 R22 K31 ["text"]
      154 SETTABLEKS                       R7 R22 K32 ["onChanged"]
      156 NEWCLOSURE                       R23 P2
      157 CAPTURE                          VAL R6
      158 CAPTURE                          VAL R11
      159 CAPTURE                          VAL R3
      160 SETTABLEKS                       R23 R22 K33 ["onFocusLost"]
      162 LOADK                            R25 K24 ["VPCTrustedConnectionDialog"]
      163 LOADK                            R26 K43 ["EmailLabel"]
      164 NAMECALL                         R23 R3 K25 ["getText"]
      166 CALL                             R23 3 1
      167 SETTABLEKS                       R23 R22 K34 ["label"]
      169 ORK                              R23 R10 K44 []
      170 SETTABLEKS                       R23 R22 K35 ["hint"]
      172 JUMPIFNOTEQKNIL                  R10 ; [+2]
      174 LOADB                            R23 0 +1
      175 LOADB                            R23 1
      176 SETTABLEKS                       R23 R22 K36 ["hasError"]
      178 SETTABLEKS                       R8 R22 K37 ["isDisabled"]
      180 GETIMPORT                        R23 K47 [UDim.new]
      182 LOADN                            R24 0
      183 LOADN                            R25 244
      184 CALL                             R23 2 1
      185 SETTABLEKS                       R23 R22 K38 ["width"]
      187 LOADN                            R23 1
      188 SETTABLEKS                       R23 R22 K39 ["numLines"]
      190 GETUPVAL                         R23 6
      191 GETTABLEKS                       R23 R23 K48 ["Enums"]
      193 GETTABLEKS                       R23 R23 K49 ["InputSize"]
      195 GETTABLEKS                       R23 R23 K50 ["Medium"]
      197 SETTABLEKS                       R23 R22 K40 ["size"]
      199 MOVE                             R23 R1
      200 CALL                             R23 0 1
      201 SETTABLEKS                       R23 R22 K22 ["LayoutOrder"]
      203 CALL                             R20 2 1
      204 SETTABLEKS                       R20 R19 K18 ["EmailInput"]
      206 GETUPVAL                         R20 2
      207 GETTABLEKS                       R20 R20 K10 ["createElement"]
      209 GETUPVAL                         R21 6
      210 GETTABLEKS                       R21 R21 K11 ["View"]
      212 DUPTABLE                         R22 K28 [{"tag", "LayoutOrder"}]
      213 LOADK                            R23 K51 ["size-full-0 auto-y row gap-small align-y-end"]
      214 SETTABLEKS                       R23 R22 K12 ["tag"]
      216 MOVE                             R23 R1
      217 CALL                             R23 0 1
      218 SETTABLEKS                       R23 R22 K22 ["LayoutOrder"]
      220 DUPTABLE                         R23 K54 [{"Spacer", "SendButton", "LearnMoreButton"}]
      221 GETUPVAL                         R24 2
      222 GETTABLEKS                       R24 R24 K10 ["createElement"]
      224 GETUPVAL                         R25 6
      225 GETTABLEKS                       R25 R25 K11 ["View"]
      227 DUPTABLE                         R26 K28 [{"tag", "LayoutOrder"}]
      228 LOADK                            R27 K29 ["fill"]
      229 SETTABLEKS                       R27 R26 K12 ["tag"]
      231 MOVE                             R27 R2
      232 CALL                             R27 0 1
      233 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      235 CALL                             R24 2 1
      236 SETTABLEKS                       R24 R23 K17 ["Spacer"]
      238 GETUPVAL                         R24 2
      239 GETTABLEKS                       R24 R24 K10 ["createElement"]
      241 GETUPVAL                         R25 6
      242 GETTABLEKS                       R25 R25 K55 ["Button"]
      244 DUPTABLE                         R26 K58 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
      245 LOADK                            R29 K24 ["VPCTrustedConnectionDialog"]
      246 LOADK                            R30 K52 ["SendButton"]
      247 NAMECALL                         R27 R3 K25 ["getText"]
      249 CALL                             R27 3 1
      250 SETTABLEKS                       R27 R26 K31 ["text"]
      252 GETUPVAL                         R27 6
      253 GETTABLEKS                       R27 R27 K48 ["Enums"]
      255 GETTABLEKS                       R27 R27 K59 ["ButtonVariant"]
      257 GETTABLEKS                       R27 R27 K60 ["Emphasis"]
      259 SETTABLEKS                       R27 R26 K56 ["variant"]
      261 SETTABLEKS                       R15 R26 K57 ["onActivated"]
      263 MOVE                             R27 R8
      264 JUMPIF                           R27 ; [+13]
      265 LOADB                            R28 0
      266 JUMPIFEQKS                       R6 K3 [""] ; [+10]
      268 GETIMPORT                        R29 K63 [string.match]
      270 MOVE                             R30 R6
      271 LOADK                            R31 K64 ["^[%w%.%+%-_]+@[%w%-]+%.[%w%.%-]+$"]
      272 CALL                             R29 2 1
      273 JUMPIFNOTEQKNIL                  R29 ; [+2]
      275 LOADB                            R28 0 +1
      276 LOADB                            R28 1
      277 NOT                              R27 R28
      278 SETTABLEKS                       R27 R26 K37 ["isDisabled"]
      280 GETUPVAL                         R27 6
      281 GETTABLEKS                       R27 R27 K48 ["Enums"]
      283 GETTABLEKS                       R27 R27 K49 ["InputSize"]
      285 GETTABLEKS                       R27 R27 K65 ["Small"]
      287 SETTABLEKS                       R27 R26 K40 ["size"]
      289 MOVE                             R27 R2
      290 CALL                             R27 0 1
      291 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      293 CALL                             R24 2 1
      294 SETTABLEKS                       R24 R23 K52 ["SendButton"]
      296 GETUPVAL                         R24 2
      297 GETTABLEKS                       R24 R24 K10 ["createElement"]
      299 GETUPVAL                         R25 6
      300 GETTABLEKS                       R25 R25 K55 ["Button"]
      302 DUPTABLE                         R26 K66 [{"text", "variant", "onActivated", "size", "LayoutOrder"}]
      303 LOADK                            R29 K67 ["MainView"]
      304 LOADK                            R30 K68 ["ViewDetailsButton"]
      305 NAMECALL                         R27 R3 K25 ["getText"]
      307 CALL                             R27 3 1
      308 SETTABLEKS                       R27 R26 K31 ["text"]
      310 GETUPVAL                         R27 6
      311 GETTABLEKS                       R27 R27 K48 ["Enums"]
      313 GETTABLEKS                       R27 R27 K59 ["ButtonVariant"]
      315 GETTABLEKS                       R27 R27 K69 ["Standard"]
      317 SETTABLEKS                       R27 R26 K56 ["variant"]
      319 DUPCLOSURE                       R27 K70 [PROTO_8]
      320 CAPTURE                          UPVAL U5
      321 CAPTURE                          UPVAL U8
      322 CAPTURE                          UPVAL U9
      323 SETTABLEKS                       R27 R26 K57 ["onActivated"]
      325 GETUPVAL                         R27 6
      326 GETTABLEKS                       R27 R27 K48 ["Enums"]
      328 GETTABLEKS                       R27 R27 K49 ["InputSize"]
      330 GETTABLEKS                       R27 R27 K65 ["Small"]
      332 SETTABLEKS                       R27 R26 K40 ["size"]
      334 MOVE                             R27 R2
      335 CALL                             R27 0 1
      336 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      338 CALL                             R24 2 1
      339 SETTABLEKS                       R24 R23 K53 ["LearnMoreButton"]
      341 CALL                             R20 3 1
      342 SETTABLEKS                       R20 R19 K19 ["ButtonBar"]
      344 CALL                             R16 3 -1
      345 RETURN                           R16 -1

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
