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
       36 GETUPVAL                         R7 6
       37 GETUPVAL                         R8 7
       38 NEWTABLE                         R9 4 0
       40 GETUPVAL                         R10 4
       41 GETTABLEKS                       R10 R10 K7 ["Tag"]
       43 LOADK                            R11 K8 ["PublishBar X-Row X-Middle X-Right"]
       44 SETTABLE                         R11 R9 R10
       45 GETIMPORT                        R10 K11 [UDim2.new]
       47 LOADN                            R11 1
       48 LOADN                            R12 0
       49 LOADN                            R13 0
       50 GETUPVAL                         R14 8
       51 GETTABLEKS                       R14 R14 K12 ["MENU_BAR_HEIGHT"]
       53 CALL                             R10 4 1
       54 SETTABLEKS                       R10 R9 K13 ["Size"]
       56 GETTABLEKS                       R10 R0 K14 ["layoutOrder"]
       58 SETTABLEKS                       R10 R9 K15 ["LayoutOrder"]
       60 DUPTABLE                         R10 K19 [{"CreatePlaceSettingsButton", "RevertChangesButton", "SaveChangesButton"}]
       61 GETUPVAL                         R11 9
       62 CALL                             R11 0 1
       63 JUMPIFNOT                        R11 ; [+57]
       64 GETUPVAL                         R11 6
       65 GETUPVAL                         R12 10
       66 NEWTABLE                         R13 8 0
       68 GETUPVAL                         R14 4
       69 GETTABLEKS                       R14 R14 K7 ["Tag"]
       71 LOADK                            R15 K20 ["Compact"]
       72 SETTABLE                         R15 R13 R14
       73 GETIMPORT                        R14 K22 [UDim2.fromOffset]
       75 LOADN                            R15 0
       76 GETUPVAL                         R16 8
       77 GETTABLEKS                       R16 R16 K23 ["STANDARD_HEIGHT"]
       79 CALL                             R14 2 1
       80 SETTABLEKS                       R14 R13 K13 ["Size"]
       82 GETIMPORT                        R14 K27 [Enum.AutomaticSize.X]
       84 SETTABLEKS                       R14 R13 K25 ["AutomaticSize"]
       86 LOADK                            R16 K28 ["Publish"]
       87 LOADK                            R17 K29 ["CreatePlaceSettings"]
       88 NAMECALL                         R14 R1 K30 ["getText"]
       90 CALL                             R14 3 1
       91 SETTABLEKS                       R14 R13 K31 ["Text"]
       93 LOADK                            R16 K28 ["Publish"]
       94 GETTABLEKS                       R18 R6 K32 ["canCreatePlaceSettings"]
       96 JUMPIFNOT                        R18 ; [+2]
       97 LOADK                            R17 K33 ["CreatePlaceSettingsTooltip"]
       98 JUMP                             ; [+1]
       99 LOADK                            R17 K34 ["CreatePlaceSettingsNoChangesTooltip"]
      100 NAMECALL                         R14 R1 K30 ["getText"]
      102 CALL                             R14 3 1
      103 SETTABLEKS                       R14 R13 K35 ["TooltipText"]
      105 MOVE                             R14 R3
      106 CALL                             R14 0 1
      107 SETTABLEKS                       R14 R13 K15 ["LayoutOrder"]
      109 GETTABLEKS                       R15 R6 K32 ["canCreatePlaceSettings"]
      111 NOT                              R14 R15
      112 SETTABLEKS                       R14 R13 K36 ["Disabled"]
      114 NEWCLOSURE                       R14 P0
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R4
      117 CAPTURE                          UPVAL U11
      118 SETTABLEKS                       R14 R13 K37 ["OnClick"]
      120 CALL                             R11 2 1
      121 SETTABLEKS                       R11 R10 K16 ["CreatePlaceSettingsButton"]
      123 GETUPVAL                         R11 6
      124 GETUPVAL                         R12 10
      125 NEWTABLE                         R13 8 0
      127 GETUPVAL                         R14 4
      128 GETTABLEKS                       R14 R14 K7 ["Tag"]
      130 LOADK                            R15 K20 ["Compact"]
      131 SETTABLE                         R15 R13 R14
      132 GETIMPORT                        R14 K22 [UDim2.fromOffset]
      134 LOADN                            R15 0
      135 GETUPVAL                         R16 8
      136 GETTABLEKS                       R16 R16 K23 ["STANDARD_HEIGHT"]
      138 CALL                             R14 2 1
      139 SETTABLEKS                       R14 R13 K13 ["Size"]
      141 GETIMPORT                        R14 K27 [Enum.AutomaticSize.X]
      143 SETTABLEKS                       R14 R13 K25 ["AutomaticSize"]
      145 LOADK                            R16 K28 ["Publish"]
      146 LOADK                            R17 K38 ["RevertChanges"]
      147 NAMECALL                         R14 R1 K30 ["getText"]
      149 CALL                             R14 3 1
      150 SETTABLEKS                       R14 R13 K31 ["Text"]
      152 MOVE                             R14 R3
      153 CALL                             R14 0 1
      154 SETTABLEKS                       R14 R13 K15 ["LayoutOrder"]
      156 GETTABLEKS                       R15 R6 K39 ["canPublish"]
      158 NOT                              R14 R15
      159 SETTABLEKS                       R14 R13 K36 ["Disabled"]
      161 NEWCLOSURE                       R14 P1
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R6
      164 SETTABLEKS                       R14 R13 K37 ["OnClick"]
      166 CALL                             R11 2 1
      167 SETTABLEKS                       R11 R10 K17 ["RevertChangesButton"]
      169 GETUPVAL                         R11 6
      170 GETUPVAL                         R12 10
      171 NEWTABLE                         R13 8 0
      173 GETUPVAL                         R14 4
      174 GETTABLEKS                       R14 R14 K7 ["Tag"]
      176 LOADK                            R15 K40 ["PrimaryBrand Compact"]
      177 SETTABLE                         R15 R13 R14
      178 GETIMPORT                        R14 K22 [UDim2.fromOffset]
      180 LOADN                            R15 0
      181 GETUPVAL                         R16 8
      182 GETTABLEKS                       R16 R16 K23 ["STANDARD_HEIGHT"]
      184 CALL                             R14 2 1
      185 SETTABLEKS                       R14 R13 K13 ["Size"]
      187 GETIMPORT                        R14 K27 [Enum.AutomaticSize.X]
      189 SETTABLEKS                       R14 R13 K25 ["AutomaticSize"]
      191 LOADK                            R16 K28 ["Publish"]
      192 LOADK                            R17 K41 ["SaveChanges"]
      193 NAMECALL                         R14 R1 K30 ["getText"]
      195 CALL                             R14 3 1
      196 SETTABLEKS                       R14 R13 K31 ["Text"]
      198 MOVE                             R14 R3
      199 CALL                             R14 0 1
      200 SETTABLEKS                       R14 R13 K15 ["LayoutOrder"]
      202 GETTABLEKS                       R15 R6 K39 ["canPublish"]
      204 NOT                              R14 R15
      205 SETTABLEKS                       R14 R13 K36 ["Disabled"]
      207 NEWCLOSURE                       R14 P2
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R6
      210 SETTABLEKS                       R14 R13 K37 ["OnClick"]
      212 CALL                             R11 2 1
      213 SETTABLEKS                       R11 R10 K18 ["SaveChangesButton"]
      215 CALL                             R7 3 -1
      216 RETURN                           R7 -1

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
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Components"]
       29 GETTABLEKS                       R4 R4 K12 ["Contexts"]
       31 GETTABLEKS                       R4 R4 K13 ["PublishProvider"]
       33 GETTABLEKS                       R4 R4 K14 ["PublishContext"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K9 ["Packages"]
       40 GETTABLEKS                       R5 R5 K15 ["React"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K9 ["Packages"]
       47 GETTABLEKS                       R6 R6 K16 ["ReactUtils"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R5 K17 ["createNextOrder"]
       52 GETTABLEKS                       R7 R2 K18 ["ContextServices"]
       54 GETTABLEKS                       R8 R7 K19 ["Localization"]
       56 GETTABLEKS                       R9 R7 K20 ["Plugin"]
       58 GETIMPORT                        R10 K5 [require]
       60 GETTABLEKS                       R11 R0 K6 ["Src"]
       62 GETTABLEKS                       R11 R11 K7 ["Util"]
       64 GETTABLEKS                       R11 R11 K21 ["Telemetry"]
       66 GETTABLEKS                       R11 R11 K22 ["TelemetryContext"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K5 [require]
       71 GETTABLEKS                       R12 R0 K6 ["Src"]
       73 GETTABLEKS                       R12 R12 K7 ["Util"]
       75 GETTABLEKS                       R12 R12 K23 ["InvokeKeys"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K5 [require]
       80 GETTABLEKS                       R13 R0 K6 ["Src"]
       82 GETTABLEKS                       R13 R13 K24 ["Flags"]
       84 GETTABLEKS                       R13 R13 K25 ["getEngineFeatureAvatarSettingsPlaceAvatarRules"]
       86 CALL                             R12 1 1
       87 GETTABLEKS                       R13 R2 K26 ["UI"]
       89 GETTABLEKS                       R14 R13 K27 ["Pane"]
       91 GETTABLEKS                       R15 R13 K28 ["IconButton"]
       93 GETTABLEKS                       R16 R4 K29 ["createElement"]
       95 DUPCLOSURE                       R17 K30 [PROTO_3]
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R16
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R15
      107 CAPTURE                          VAL R11
      108 RETURN                           R17 1
