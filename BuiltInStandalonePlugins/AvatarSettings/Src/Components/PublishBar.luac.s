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
       52 GETTABLEKS                       R12 R6 K10 ["hasInvalidSettings"]
       54 CALL                             R9 3 1
       55 GETUPVAL                         R10 9
       56 GETUPVAL                         R11 10
       57 NEWTABLE                         R12 4 0
       59 GETUPVAL                         R13 4
       60 GETTABLEKS                       R13 R13 K11 ["Tag"]
       62 LOADK                            R14 K12 ["PublishBar X-Row X-Middle X-Right"]
       63 SETTABLE                         R14 R12 R13
       64 GETIMPORT                        R13 K15 [UDim2.new]
       66 LOADN                            R14 1
       67 LOADN                            R15 0
       68 LOADN                            R16 0
       69 GETUPVAL                         R17 11
       70 GETTABLEKS                       R17 R17 K16 ["MENU_BAR_HEIGHT"]
       72 CALL                             R13 4 1
       73 SETTABLEKS                       R13 R12 K17 ["Size"]
       75 GETTABLEKS                       R13 R0 K18 ["layoutOrder"]
       77 SETTABLEKS                       R13 R12 K19 ["LayoutOrder"]
       79 DUPTABLE                         R13 K23 [{"CreatePlaceSettingsButton", "RevertChangesButton", "SaveChangesButton"}]
       80 GETUPVAL                         R14 12
       81 CALL                             R14 0 1
       82 JUMPIFNOT                        R14 ; [+52]
       83 GETUPVAL                         R14 9
       84 GETUPVAL                         R15 13
       85 NEWTABLE                         R16 8 0
       87 GETUPVAL                         R17 4
       88 GETTABLEKS                       R17 R17 K11 ["Tag"]
       90 LOADK                            R18 K24 ["Compact"]
       91 SETTABLE                         R18 R16 R17
       92 GETIMPORT                        R17 K26 [UDim2.fromOffset]
       94 LOADN                            R18 0
       95 GETUPVAL                         R19 11
       96 GETTABLEKS                       R19 R19 K27 ["STANDARD_HEIGHT"]
       98 CALL                             R17 2 1
       99 SETTABLEKS                       R17 R16 K17 ["Size"]
      101 GETIMPORT                        R17 K31 [Enum.AutomaticSize.X]
      103 SETTABLEKS                       R17 R16 K29 ["AutomaticSize"]
      105 LOADK                            R19 K32 ["Publish"]
      106 LOADK                            R20 K33 ["CreatePlaceSettings"]
      107 NAMECALL                         R17 R1 K34 ["getText"]
      109 CALL                             R17 3 1
      110 SETTABLEKS                       R17 R16 K35 ["Text"]
      112 LOADK                            R19 K32 ["Publish"]
      113 MOVE                             R20 R8
      114 NAMECALL                         R17 R1 K34 ["getText"]
      116 CALL                             R17 3 1
      117 SETTABLEKS                       R17 R16 K36 ["TooltipText"]
      119 MOVE                             R17 R3
      120 CALL                             R17 0 1
      121 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      123 GETTABLEKS                       R18 R6 K8 ["canCreatePlaceSettings"]
      125 NOT                              R17 R18
      126 SETTABLEKS                       R17 R16 K37 ["Disabled"]
      128 NEWCLOSURE                       R17 P0
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R4
      131 CAPTURE                          UPVAL U14
      132 SETTABLEKS                       R17 R16 K38 ["OnClick"]
      134 CALL                             R14 2 1
      135 SETTABLEKS                       R14 R13 K20 ["CreatePlaceSettingsButton"]
      137 GETUPVAL                         R14 9
      138 GETUPVAL                         R15 13
      139 NEWTABLE                         R16 8 0
      141 GETUPVAL                         R17 4
      142 GETTABLEKS                       R17 R17 K11 ["Tag"]
      144 LOADK                            R18 K24 ["Compact"]
      145 SETTABLE                         R18 R16 R17
      146 GETIMPORT                        R17 K26 [UDim2.fromOffset]
      148 LOADN                            R18 0
      149 GETUPVAL                         R19 11
      150 GETTABLEKS                       R19 R19 K27 ["STANDARD_HEIGHT"]
      152 CALL                             R17 2 1
      153 SETTABLEKS                       R17 R16 K17 ["Size"]
      155 GETIMPORT                        R17 K31 [Enum.AutomaticSize.X]
      157 SETTABLEKS                       R17 R16 K29 ["AutomaticSize"]
      159 LOADK                            R19 K32 ["Publish"]
      160 LOADK                            R20 K39 ["RevertChanges"]
      161 NAMECALL                         R17 R1 K34 ["getText"]
      163 CALL                             R17 3 1
      164 SETTABLEKS                       R17 R16 K35 ["Text"]
      166 GETTABLEKS                       R18 R9 K40 ["revert"]
      168 JUMPIFNOT                        R18 ; [+7]
      169 LOADK                            R19 K32 ["Publish"]
      170 GETTABLEKS                       R20 R9 K40 ["revert"]
      172 NAMECALL                         R17 R1 K34 ["getText"]
      174 CALL                             R17 3 1
      175 JUMP                             ; [+1]
      176 LOADNIL                          R17
      177 SETTABLEKS                       R17 R16 K36 ["TooltipText"]
      179 MOVE                             R17 R3
      180 CALL                             R17 0 1
      181 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      183 GETTABLEKS                       R18 R6 K9 ["canPublish"]
      185 NOT                              R17 R18
      186 SETTABLEKS                       R17 R16 K37 ["Disabled"]
      188 NEWCLOSURE                       R17 P1
      189 CAPTURE                          VAL R2
      190 CAPTURE                          VAL R6
      191 SETTABLEKS                       R17 R16 K38 ["OnClick"]
      193 CALL                             R14 2 1
      194 SETTABLEKS                       R14 R13 K21 ["RevertChangesButton"]
      196 GETUPVAL                         R14 9
      197 GETUPVAL                         R15 13
      198 NEWTABLE                         R16 8 0
      200 GETUPVAL                         R17 4
      201 GETTABLEKS                       R17 R17 K11 ["Tag"]
      203 LOADK                            R18 K41 ["PrimaryBrand Compact"]
      204 SETTABLE                         R18 R16 R17
      205 GETIMPORT                        R17 K26 [UDim2.fromOffset]
      207 LOADN                            R18 0
      208 GETUPVAL                         R19 11
      209 GETTABLEKS                       R19 R19 K27 ["STANDARD_HEIGHT"]
      211 CALL                             R17 2 1
      212 SETTABLEKS                       R17 R16 K17 ["Size"]
      214 GETIMPORT                        R17 K31 [Enum.AutomaticSize.X]
      216 SETTABLEKS                       R17 R16 K29 ["AutomaticSize"]
      218 LOADK                            R19 K32 ["Publish"]
      219 LOADK                            R20 K42 ["SaveChanges"]
      220 NAMECALL                         R17 R1 K34 ["getText"]
      222 CALL                             R17 3 1
      223 SETTABLEKS                       R17 R16 K35 ["Text"]
      225 GETTABLEKS                       R18 R9 K43 ["save"]
      227 JUMPIFNOT                        R18 ; [+7]
      228 LOADK                            R19 K32 ["Publish"]
      229 GETTABLEKS                       R20 R9 K43 ["save"]
      231 NAMECALL                         R17 R1 K34 ["getText"]
      233 CALL                             R17 3 1
      234 JUMP                             ; [+1]
      235 LOADNIL                          R17
      236 SETTABLEKS                       R17 R16 K36 ["TooltipText"]
      238 MOVE                             R17 R3
      239 CALL                             R17 0 1
      240 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      242 GETTABLEKS                       R18 R6 K9 ["canPublish"]
      244 NOT                              R17 R18
      245 JUMPIF                           R17 ; [+2]
      246 GETTABLEKS                       R17 R6 K10 ["hasInvalidSettings"]
      248 SETTABLEKS                       R17 R16 K37 ["Disabled"]
      250 NEWCLOSURE                       R17 P2
      251 CAPTURE                          VAL R2
      252 CAPTURE                          VAL R6
      253 SETTABLEKS                       R17 R16 K38 ["OnClick"]
      255 CALL                             R14 2 1
      256 SETTABLEKS                       R14 R13 K22 ["SaveChangesButton"]
      258 CALL                             R10 3 -1
      259 RETURN                           R10 -1

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
