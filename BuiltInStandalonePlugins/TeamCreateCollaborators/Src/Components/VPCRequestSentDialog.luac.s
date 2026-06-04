PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sendFeatureShown"]
        3 LOADK                            R1 K1 ["requestFailedDialogShown"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 1
        7 NAMECALL                         R4 R4 K0 ["use"]
        9 CALL                             R4 1 1
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K1 ["useContext"]
       13 GETUPVAL                         R6 3
       14 CALL                             R5 1 1
       15 GETTABLEKS                       R6 R5 K2 ["universeInfoController"]
       17 GETTABLEKS                       R6 R6 K3 ["name"]
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K4 ["useEffect"]
       22 DUPCLOSURE                       R8 K5 [PROTO_0]
       23 CAPTURE                          UPVAL U4
       24 NEWTABLE                         R9 0 0
       26 CALL                             R7 2 0
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K6 ["createElement"]
       30 GETUPVAL                         R8 5
       31 GETTABLEKS                       R8 R8 K7 ["View"]
       33 DUPTABLE                         R9 K9 [{"tag"}]
       34 LOADK                            R10 K10 ["size-full-full auto-xy col gap-small radius-large bg-surface-100"]
       35 SETTABLEKS                       R10 R9 K8 ["tag"]
       37 DUPTABLE                         R10 K16 [{"SystemBannerView", "Title", "TrustedConnectionsSubtitle", "Spacer", "ButtonBar"}]
       38 GETUPVAL                         R11 2
       39 GETTABLEKS                       R11 R11 K6 ["createElement"]
       41 GETUPVAL                         R12 5
       42 GETTABLEKS                       R12 R12 K7 ["View"]
       44 DUPTABLE                         R13 K18 [{"tag", "backgroundStyle"}]
       45 LOADK                            R14 K19 ["size-full-0 auto-y row gap-small padding-small bg-shift-200 align-y-center"]
       46 SETTABLEKS                       R14 R13 K8 ["tag"]
       48 DUPTABLE                         R14 K22 [{"Color3", "Transparency"}]
       49 GETIMPORT                        R15 K24 [Color3.fromRGB]
       51 LOADN                            R16 223
       52 LOADN                            R17 40
       53 LOADN                            R18 30
       54 CALL                             R15 3 1
       55 SETTABLEKS                       R15 R14 K20 ["Color3"]
       57 LOADK                            R15 K25 [0.9]
       58 SETTABLEKS                       R15 R14 K21 ["Transparency"]
       60 SETTABLEKS                       R14 R13 K17 ["backgroundStyle"]
       62 DUPTABLE                         R14 K28 [{"Icon", "Text"}]
       63 GETUPVAL                         R15 2
       64 GETTABLEKS                       R15 R15 K6 ["createElement"]
       66 GETUPVAL                         R16 6
       67 DUPTABLE                         R17 K32 [{"variant", "name", "LayoutOrder", "style", "tag"}]
       68 GETUPVAL                         R18 7
       69 GETTABLEKS                       R18 R18 K33 ["Filled"]
       71 SETTABLEKS                       R18 R17 K29 ["variant"]
       73 GETUPVAL                         R18 8
       74 GETTABLEKS                       R18 R18 K34 ["CircleX"]
       76 SETTABLEKS                       R18 R17 K3 ["name"]
       78 MOVE                             R18 R2
       79 CALL                             R18 0 1
       80 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
       82 DUPTABLE                         R18 K22 [{"Color3", "Transparency"}]
       83 GETIMPORT                        R19 K24 [Color3.fromRGB]
       85 LOADN                            R20 223
       86 LOADN                            R21 40
       87 LOADN                            R22 31
       88 CALL                             R19 3 1
       89 SETTABLEKS                       R19 R18 K20 ["Color3"]
       91 LOADN                            R19 0
       92 SETTABLEKS                       R19 R18 K21 ["Transparency"]
       94 SETTABLEKS                       R18 R17 K31 ["style"]
       96 LOADK                            R18 K35 ["size-100-100"]
       97 SETTABLEKS                       R18 R17 K8 ["tag"]
       99 CALL                             R15 2 1
      100 SETTABLEKS                       R15 R14 K26 ["Icon"]
      102 GETUPVAL                         R15 2
      103 GETTABLEKS                       R15 R15 K6 ["createElement"]
      105 GETUPVAL                         R16 9
      106 DUPTABLE                         R17 K36 [{"Text", "LayoutOrder", "tag"}]
      107 LOADK                            R20 K37 ["VPCRequestSentDialog"]
      108 LOADK                            R21 K38 ["FailureBannerMessage"]
      109 NAMECALL                         R18 R4 K39 ["getText"]
      111 CALL                             R18 3 1
      112 SETTABLEKS                       R18 R17 K27 ["Text"]
      114 MOVE                             R18 R2
      115 CALL                             R18 0 1
      116 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
      118 LOADK                            R18 K40 ["auto-xy size-0-0 text-align-y-bottom text-align-x-left text-body-small text-wrap"]
      119 SETTABLEKS                       R18 R17 K8 ["tag"]
      121 CALL                             R15 2 1
      122 SETTABLEKS                       R15 R14 K27 ["Text"]
      124 CALL                             R11 3 1
      125 SETTABLEKS                       R11 R10 K11 ["SystemBannerView"]
      127 GETUPVAL                         R11 2
      128 GETTABLEKS                       R11 R11 K6 ["createElement"]
      130 GETUPVAL                         R12 9
      131 DUPTABLE                         R13 K36 [{"Text", "LayoutOrder", "tag"}]
      132 LOADK                            R16 K37 ["VPCRequestSentDialog"]
      133 LOADK                            R17 K41 ["FailureTitle"]
      134 NAMECALL                         R14 R4 K39 ["getText"]
      136 CALL                             R14 3 1
      137 SETTABLEKS                       R14 R13 K27 ["Text"]
      139 MOVE                             R14 R1
      140 CALL                             R14 0 1
      141 SETTABLEKS                       R14 R13 K30 ["LayoutOrder"]
      143 LOADK                            R14 K42 ["auto-xy size-0-0 text-align-y-center text-align-x-left text-title-medium text-wrap padding-left-large"]
      144 SETTABLEKS                       R14 R13 K8 ["tag"]
      146 CALL                             R11 2 1
      147 SETTABLEKS                       R11 R10 K12 ["Title"]
      149 GETUPVAL                         R11 2
      150 GETTABLEKS                       R11 R11 K6 ["createElement"]
      152 GETUPVAL                         R12 9
      153 DUPTABLE                         R13 K36 [{"Text", "LayoutOrder", "tag"}]
      154 LOADK                            R16 K37 ["VPCRequestSentDialog"]
      155 LOADK                            R17 K43 ["TooManyRequestsFailureSubtitle"]
      156 DUPTABLE                         R18 K45 [{"universe_name"}]
      157 SETTABLEKS                       R6 R18 K44 ["universe_name"]
      159 NAMECALL                         R14 R4 K39 ["getText"]
      161 CALL                             R14 4 1
      162 SETTABLEKS                       R14 R13 K27 ["Text"]
      164 MOVE                             R14 R1
      165 CALL                             R14 0 1
      166 SETTABLEKS                       R14 R13 K30 ["LayoutOrder"]
      168 LOADK                            R14 K46 ["auto-xy size-0-0 text-align-y-center text-align-x-left text-body-small  text-wrap padding-left-large"]
      169 SETTABLEKS                       R14 R13 K8 ["tag"]
      171 CALL                             R11 2 1
      172 SETTABLEKS                       R11 R10 K13 ["TrustedConnectionsSubtitle"]
      174 GETUPVAL                         R11 2
      175 GETTABLEKS                       R11 R11 K6 ["createElement"]
      177 GETUPVAL                         R12 5
      178 GETTABLEKS                       R12 R12 K7 ["View"]
      180 DUPTABLE                         R13 K47 [{"tag", "LayoutOrder"}]
      181 LOADK                            R14 K48 ["fill"]
      182 SETTABLEKS                       R14 R13 K8 ["tag"]
      184 MOVE                             R14 R1
      185 CALL                             R14 0 1
      186 SETTABLEKS                       R14 R13 K30 ["LayoutOrder"]
      188 CALL                             R11 2 1
      189 SETTABLEKS                       R11 R10 K14 ["Spacer"]
      191 GETUPVAL                         R11 2
      192 GETTABLEKS                       R11 R11 K6 ["createElement"]
      194 GETUPVAL                         R12 5
      195 GETTABLEKS                       R12 R12 K7 ["View"]
      197 DUPTABLE                         R13 K47 [{"tag", "LayoutOrder"}]
      198 LOADK                            R14 K49 ["size-full-0 auto-y row gap-small padding-large"]
      199 SETTABLEKS                       R14 R13 K8 ["tag"]
      201 MOVE                             R14 R1
      202 CALL                             R14 0 1
      203 SETTABLEKS                       R14 R13 K30 ["LayoutOrder"]
      205 DUPTABLE                         R14 K51 [{"Spacer", "CloseButton"}]
      206 GETUPVAL                         R15 2
      207 GETTABLEKS                       R15 R15 K6 ["createElement"]
      209 GETUPVAL                         R16 5
      210 GETTABLEKS                       R16 R16 K7 ["View"]
      212 DUPTABLE                         R17 K47 [{"tag", "LayoutOrder"}]
      213 LOADK                            R18 K48 ["fill"]
      214 SETTABLEKS                       R18 R17 K8 ["tag"]
      216 MOVE                             R18 R3
      217 CALL                             R18 0 1
      218 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
      220 CALL                             R15 2 1
      221 SETTABLEKS                       R15 R14 K14 ["Spacer"]
      223 GETUPVAL                         R15 2
      224 GETTABLEKS                       R15 R15 K6 ["createElement"]
      226 GETUPVAL                         R16 5
      227 GETTABLEKS                       R16 R16 K52 ["Button"]
      229 DUPTABLE                         R17 K56 [{"text", "LayoutOrder", "variant", "onActivated", "size"}]
      230 LOADK                            R20 K37 ["VPCRequestSentDialog"]
      231 LOADK                            R21 K50 ["CloseButton"]
      232 NAMECALL                         R18 R4 K39 ["getText"]
      234 CALL                             R18 3 1
      235 SETTABLEKS                       R18 R17 K53 ["text"]
      237 MOVE                             R18 R3
      238 CALL                             R18 0 1
      239 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
      241 GETUPVAL                         R18 5
      242 GETTABLEKS                       R18 R18 K57 ["Enums"]
      244 GETTABLEKS                       R18 R18 K58 ["ButtonVariant"]
      246 GETTABLEKS                       R18 R18 K59 ["Emphasis"]
      248 SETTABLEKS                       R18 R17 K29 ["variant"]
      250 GETTABLEKS                       R18 R0 K60 ["onClose"]
      252 SETTABLEKS                       R18 R17 K54 ["onActivated"]
      254 GETUPVAL                         R18 5
      255 GETTABLEKS                       R18 R18 K57 ["Enums"]
      257 GETTABLEKS                       R18 R18 K61 ["InputSize"]
      259 GETTABLEKS                       R18 R18 K62 ["Small"]
      261 SETTABLEKS                       R18 R17 K55 ["size"]
      263 CALL                             R15 2 1
      264 SETTABLEKS                       R15 R14 K50 ["CloseButton"]
      266 CALL                             R11 3 1
      267 SETTABLEKS                       R11 R10 K15 ["ButtonBar"]
      269 CALL                             R7 3 -1
      270 RETURN                           R7 -1

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
       28 GETTABLEKS                       R4 R2 K10 ["createNextOrder"]
       30 GETTABLEKS                       R5 R3 K11 ["Icon"]
       32 GETTABLEKS                       R6 R3 K12 ["Enums"]
       34 GETTABLEKS                       R6 R6 K13 ["IconName"]
       36 GETTABLEKS                       R7 R3 K12 ["Enums"]
       38 GETTABLEKS                       R7 R7 K14 ["IconVariant"]
       40 GETTABLEKS                       R8 R3 K15 ["Text"]
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R10 R0 K6 ["Packages"]
       46 GETTABLEKS                       R10 R10 K16 ["Framework"]
       48 CALL                             R9 1 1
       49 GETTABLEKS                       R10 R9 K17 ["ContextServices"]
       51 GETTABLEKS                       R11 R10 K18 ["Localization"]
       53 GETTABLEKS                       R12 R0 K19 ["Src"]
       55 GETTABLEKS                       R12 R12 K20 ["Contexts"]
       57 GETIMPORT                        R13 K5 [require]
       59 GETTABLEKS                       R14 R12 K21 ["ControllerContext"]
       61 CALL                             R13 1 1
       62 GETIMPORT                        R14 K5 [require]
       64 GETTABLEKS                       R15 R0 K19 ["Src"]
       66 GETTABLEKS                       R15 R15 K22 ["Util"]
       68 GETTABLEKS                       R15 R15 K23 ["Telemetry"]
       70 GETTABLEKS                       R15 R15 K23 ["Telemetry"]
       72 CALL                             R14 1 1
       73 DUPCLOSURE                       R15 K24 [PROTO_1]
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R13
       78 CAPTURE                          VAL R14
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R8
       84 RETURN                           R15 1
