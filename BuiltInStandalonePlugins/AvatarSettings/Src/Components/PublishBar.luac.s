PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["CreatePlaceSettingsPressed"]
        2 NAMECALL                         R0 R0 K1 ["logCounter"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["createPlaceAvatarRules"]
        9 GETTABLEKS                       R2 R2 K3 ["fromPlugin"]
       11 LOADB                            R3 0
       12 NAMECALL                         R0 R0 K4 ["Invoke"]
       14 CALL                             R0 3 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["RevertChangesPressed"]
        2 NAMECALL                         R0 R0 K1 ["logCounter"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K2 ["discardUnpublishedSettings"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SaveChangesPressed"]
        2 NAMECALL                         R0 R0 K1 ["logCounter"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K2 ["saveUnpublishedSettings"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 NAMECALL                         R4 R4 K0 ["use"]
       13 CALL                             R4 1 1
       14 NAMECALL                         R4 R4 K1 ["get"]
       16 CALL                             R4 1 1
       17 GETUPVAL                         R5 4
       18 GETTABLEKS                       R5 R5 K2 ["useContext"]
       20 GETUPVAL                         R6 5
       21 CALL                             R5 1 1
       22 GETTABLEKS                       R8 R5 K3 ["content"]
       24 JUMPIFNOTEQKNIL                  R8 ; [+2]
       26 LOADB                            R7 0 +1
       27 LOADB                            R7 1
       28 FASTCALL2K                       ASSERT R7 K4 ; [+4]
       30 LOADK                            R8 K4 ["Content must not be nil in PublishContext"]
       31 GETIMPORT                        R6 K6 [assert]
       33 CALL                             R6 2 0
       34 GETTABLEKS                       R6 R5 K3 ["content"]
       36 GETUPVAL                         R7 4
       37 GETTABLEKS                       R7 R7 K2 ["useContext"]
       39 GETUPVAL                         R8 6
       40 CALL                             R7 1 1
       41 GETUPVAL                         R8 7
       42 GETTABLEKS                       R9 R7 K7 ["currentGameId"]
       44 GETTABLEKS                       R10 R6 K8 ["canCreatePlaceSettings"]
       46 CALL                             R8 2 1
       47 GETUPVAL                         R9 8
       48 GETTABLEKS                       R10 R7 K7 ["currentGameId"]
       50 GETTABLEKS                       R11 R6 K9 ["canPublish"]
       52 CALL                             R9 2 1
       53 GETUPVAL                         R10 9
       54 GETUPVAL                         R11 10
       55 NEWTABLE                         R12 4 0
       57 GETUPVAL                         R13 4
       58 GETTABLEKS                       R13 R13 K10 ["Tag"]
       60 LOADK                            R14 K11 ["PublishBar X-Row X-Middle X-Right"]
       61 SETTABLE                         R14 R12 R13
       62 GETIMPORT                        R13 K14 [UDim2.new]
       64 LOADN                            R14 1
       65 LOADN                            R15 0
       66 LOADN                            R16 0
       67 GETUPVAL                         R17 11
       68 GETTABLEKS                       R17 R17 K15 ["MENU_BAR_HEIGHT"]
       70 CALL                             R13 4 1
       71 SETTABLEKS                       R13 R12 K16 ["Size"]
       73 GETTABLEKS                       R13 R0 K17 ["layoutOrder"]
       75 SETTABLEKS                       R13 R12 K18 ["LayoutOrder"]
       77 DUPTABLE                         R13 K22 [{"CreatePlaceSettingsButton", "RevertChangesButton", "SaveChangesButton"}]
       78 GETUPVAL                         R14 12
       79 CALL                             R14 0 1
       80 JUMPIFNOT                        R14 ; [+52]
       81 GETUPVAL                         R14 9
       82 GETUPVAL                         R15 13
       83 NEWTABLE                         R16 8 0
       85 GETUPVAL                         R17 4
       86 GETTABLEKS                       R17 R17 K10 ["Tag"]
       88 LOADK                            R18 K23 ["Compact"]
       89 SETTABLE                         R18 R16 R17
       90 GETIMPORT                        R17 K25 [UDim2.fromOffset]
       92 LOADN                            R18 0
       93 GETUPVAL                         R19 11
       94 GETTABLEKS                       R19 R19 K26 ["STANDARD_HEIGHT"]
       96 CALL                             R17 2 1
       97 SETTABLEKS                       R17 R16 K16 ["Size"]
       99 GETIMPORT                        R17 K30 [Enum.AutomaticSize.X]
      101 SETTABLEKS                       R17 R16 K28 ["AutomaticSize"]
      103 LOADK                            R19 K31 ["Publish"]
      104 LOADK                            R20 K32 ["CreatePlaceSettings"]
      105 NAMECALL                         R17 R1 K33 ["getText"]
      107 CALL                             R17 3 1
      108 SETTABLEKS                       R17 R16 K34 ["Text"]
      110 LOADK                            R19 K31 ["Publish"]
      111 MOVE                             R20 R8
      112 NAMECALL                         R17 R1 K33 ["getText"]
      114 CALL                             R17 3 1
      115 SETTABLEKS                       R17 R16 K35 ["TooltipText"]
      117 MOVE                             R17 R3
      118 CALL                             R17 0 1
      119 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
      121 GETTABLEKS                       R18 R6 K8 ["canCreatePlaceSettings"]
      123 NOT                              R17 R18
      124 SETTABLEKS                       R17 R16 K36 ["Disabled"]
      126 NEWCLOSURE                       R17 P0
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R4
      129 CAPTURE                          UPVAL U14
      130 SETTABLEKS                       R17 R16 K37 ["OnClick"]
      132 CALL                             R14 2 1
      133 SETTABLEKS                       R14 R13 K19 ["CreatePlaceSettingsButton"]
      135 GETUPVAL                         R14 9
      136 GETUPVAL                         R15 13
      137 NEWTABLE                         R16 8 0
      139 GETUPVAL                         R17 4
      140 GETTABLEKS                       R17 R17 K10 ["Tag"]
      142 LOADK                            R18 K23 ["Compact"]
      143 SETTABLE                         R18 R16 R17
      144 GETIMPORT                        R17 K25 [UDim2.fromOffset]
      146 LOADN                            R18 0
      147 GETUPVAL                         R19 11
      148 GETTABLEKS                       R19 R19 K26 ["STANDARD_HEIGHT"]
      150 CALL                             R17 2 1
      151 SETTABLEKS                       R17 R16 K16 ["Size"]
      153 GETIMPORT                        R17 K30 [Enum.AutomaticSize.X]
      155 SETTABLEKS                       R17 R16 K28 ["AutomaticSize"]
      157 LOADK                            R19 K31 ["Publish"]
      158 LOADK                            R20 K38 ["RevertChanges"]
      159 NAMECALL                         R17 R1 K33 ["getText"]
      161 CALL                             R17 3 1
      162 SETTABLEKS                       R17 R16 K34 ["Text"]
      164 GETTABLEKS                       R18 R9 K39 ["revert"]
      166 JUMPIFNOT                        R18 ; [+7]
      167 LOADK                            R19 K31 ["Publish"]
      168 GETTABLEKS                       R20 R9 K39 ["revert"]
      170 NAMECALL                         R17 R1 K33 ["getText"]
      172 CALL                             R17 3 1
      173 JUMP                             ; [+1]
      174 LOADNIL                          R17
      175 SETTABLEKS                       R17 R16 K35 ["TooltipText"]
      177 MOVE                             R17 R3
      178 CALL                             R17 0 1
      179 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
      181 GETTABLEKS                       R18 R6 K9 ["canPublish"]
      183 NOT                              R17 R18
      184 SETTABLEKS                       R17 R16 K36 ["Disabled"]
      186 NEWCLOSURE                       R17 P1
      187 CAPTURE                          VAL R2
      188 CAPTURE                          VAL R6
      189 SETTABLEKS                       R17 R16 K37 ["OnClick"]
      191 CALL                             R14 2 1
      192 SETTABLEKS                       R14 R13 K20 ["RevertChangesButton"]
      194 GETUPVAL                         R14 9
      195 GETUPVAL                         R15 13
      196 NEWTABLE                         R16 8 0
      198 GETUPVAL                         R17 4
      199 GETTABLEKS                       R17 R17 K10 ["Tag"]
      201 LOADK                            R18 K40 ["PrimaryBrand Compact"]
      202 SETTABLE                         R18 R16 R17
      203 GETIMPORT                        R17 K25 [UDim2.fromOffset]
      205 LOADN                            R18 0
      206 GETUPVAL                         R19 11
      207 GETTABLEKS                       R19 R19 K26 ["STANDARD_HEIGHT"]
      209 CALL                             R17 2 1
      210 SETTABLEKS                       R17 R16 K16 ["Size"]
      212 GETIMPORT                        R17 K30 [Enum.AutomaticSize.X]
      214 SETTABLEKS                       R17 R16 K28 ["AutomaticSize"]
      216 LOADK                            R19 K31 ["Publish"]
      217 LOADK                            R20 K41 ["SaveChanges"]
      218 NAMECALL                         R17 R1 K33 ["getText"]
      220 CALL                             R17 3 1
      221 SETTABLEKS                       R17 R16 K34 ["Text"]
      223 GETTABLEKS                       R18 R9 K42 ["save"]
      225 JUMPIFNOT                        R18 ; [+7]
      226 LOADK                            R19 K31 ["Publish"]
      227 GETTABLEKS                       R20 R9 K42 ["save"]
      229 NAMECALL                         R17 R1 K33 ["getText"]
      231 CALL                             R17 3 1
      232 JUMP                             ; [+1]
      233 LOADNIL                          R17
      234 SETTABLEKS                       R17 R16 K35 ["TooltipText"]
      236 MOVE                             R17 R3
      237 CALL                             R17 0 1
      238 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
      240 GETTABLEKS                       R18 R6 K9 ["canPublish"]
      242 NOT                              R17 R18
      243 SETTABLEKS                       R17 R16 K36 ["Disabled"]
      245 NEWCLOSURE                       R17 P2
      246 CAPTURE                          VAL R2
      247 CAPTURE                          VAL R6
      248 SETTABLEKS                       R17 R16 K37 ["OnClick"]
      250 CALL                             R14 2 1
      251 SETTABLEKS                       R14 R13 K21 ["SaveChangesButton"]
      253 CALL                             R10 3 -1
      254 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Components"]
       22 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       24 GETTABLEKS                       R3 R3 K11 ["EnableAvatarSettingsContext"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K12 ["Packages"]
       31 GETTABLEKS                       R4 R4 K13 ["Framework"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K9 ["Components"]
       40 GETTABLEKS                       R5 R5 K10 ["Contexts"]
       42 GETTABLEKS                       R5 R5 K14 ["PublishProvider"]
       44 GETTABLEKS                       R5 R5 K15 ["PublishContext"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R6 R0 K12 ["Packages"]
       51 GETTABLEKS                       R6 R6 K16 ["React"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K12 ["Packages"]
       58 GETTABLEKS                       R7 R7 K17 ["ReactUtils"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K6 ["Src"]
       65 GETTABLEKS                       R8 R8 K7 ["Util"]
       67 GETTABLEKS                       R8 R8 K18 ["getCreatePlaceSettingsTooltipKey"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K6 ["Src"]
       74 GETTABLEKS                       R9 R9 K7 ["Util"]
       76 GETTABLEKS                       R9 R9 K19 ["getPublishTooltipKeys"]
       78 CALL                             R8 1 1
       79 GETTABLEKS                       R9 R6 K20 ["createNextOrder"]
       81 GETTABLEKS                       R10 R3 K21 ["ContextServices"]
       83 GETTABLEKS                       R11 R10 K22 ["Localization"]
       85 GETTABLEKS                       R12 R10 K23 ["Plugin"]
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R14 R0 K6 ["Src"]
       91 GETTABLEKS                       R14 R14 K7 ["Util"]
       93 GETTABLEKS                       R14 R14 K24 ["Telemetry"]
       95 GETTABLEKS                       R14 R14 K25 ["TelemetryContext"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R15 R0 K6 ["Src"]
      102 GETTABLEKS                       R15 R15 K7 ["Util"]
      104 GETTABLEKS                       R15 R15 K26 ["InvokeKeys"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R16 R0 K6 ["Src"]
      111 GETTABLEKS                       R16 R16 K27 ["Flags"]
      113 GETTABLEKS                       R16 R16 K28 ["getEngineFeatureAvatarSettingsPlaceAvatarRules"]
      115 CALL                             R15 1 1
      116 GETTABLEKS                       R16 R3 K29 ["UI"]
      118 GETTABLEKS                       R17 R16 K30 ["Pane"]
      120 GETTABLEKS                       R18 R16 K31 ["IconButton"]
      122 GETTABLEKS                       R19 R5 K32 ["createElement"]
      124 DUPCLOSURE                       R20 K33 [PROTO_3]
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R19
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R18
      139 CAPTURE                          VAL R14
      140 RETURN                           R20 1
