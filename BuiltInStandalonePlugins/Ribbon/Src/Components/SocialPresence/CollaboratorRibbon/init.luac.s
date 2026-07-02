PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K3 [Enum.StudioDataModelType.Edit]
        3 JUMPIFEQ                         R0 R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["requestAssetCollaborators"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["connectOnDmChange"]
        8 GETUPVAL                         R1 1
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U2
       11 CALL                             R0 2 1
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K2 ["connectOnUpdateCollaborators"]
       15 GETUPVAL                         R2 1
       16 NEWCLOSURE                       R3 P1
       17 CAPTURE                          UPVAL U3
       18 CALL                             R1 2 1
       19 NEWCLOSURE                       R2 P2
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancelShowTooltip"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["OnClick"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 LOADB                            R3 1
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K2 ["useState"]
       15 NEWTABLE                         R5 0 0
       17 CALL                             R4 1 2
       18 LENGTH                           R7 R4
       19 LOADN                            R8 4
       20 JUMPIFLT                         R8 R7 ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 LOADK                            R9 K3 ["Actions"]
       25 NAMECALL                         R7 R1 K4 ["GetPluginComponent"]
       27 CALL                             R7 2 1
       28 NEWTABLE                         R11 0 1
       30 GETUPVAL                         R12 2
       31 SETLIST                          R11 R12 1 [1]
       33 NAMECALL                         R9 R7 K5 ["GetAsync"]
       35 CALL                             R9 2 1
       36 GETTABLEN                        R8 R9 1
       37 LOADNIL                          R9
       38 LOADNIL                          R10
       39 LOADNIL                          R11
       40 JUMPIFNOT                        R8 ; [+6]
       41 GETTABLEKS                       R9 R8 K6 ["Shortcuts"]
       43 GETTABLEKS                       R10 R8 K7 ["Text"]
       45 GETTABLEKS                       R11 R8 K8 ["Tooltip"]
       47 GETUPVAL                         R12 3
       48 GETUPVAL                         R13 2
       49 CALL                             R12 1 1
       50 GETUPVAL                         R13 4
       51 DUPTABLE                         R14 K12 [{"Uri", "Title", "Text", "Shortcuts", "WidgetRef"}]
       52 GETUPVAL                         R15 2
       53 SETTABLEKS                       R15 R14 K9 ["Uri"]
       55 SETTABLEKS                       R10 R14 K10 ["Title"]
       57 SETTABLEKS                       R11 R14 K7 ["Text"]
       59 SETTABLEKS                       R9 R14 K6 ["Shortcuts"]
       61 SETTABLEKS                       R12 R14 K11 ["WidgetRef"]
       63 CALL                             R13 1 2
       64 GETUPVAL                         R15 1
       65 GETTABLEKS                       R15 R15 K13 ["useEffect"]
       67 NEWCLOSURE                       R16 P0
       68 CAPTURE                          UPVAL U5
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R5
       72 NEWTABLE                         R17 0 0
       74 CALL                             R15 2 0
       75 JUMPIF                           R2 ; [+2]
       76 LOADNIL                          R15
       77 RETURN                           R15 1
       78 NEWTABLE                         R15 0 0
       80 MOVE                             R16 R4
       81 LOADNIL                          R17
       82 LOADNIL                          R18
       83 FORGPREP                         R16
       84 LOADN                            R21 4
       85 JUMPIFLT                         R21 R19 ; [+55]
       87 GETTABLEKS                       R21 R20 K14 ["UserId"]
       89 GETUPVAL                         R22 1
       90 GETTABLEKS                       R22 R22 K15 ["createElement"]
       92 LOADK                            R23 K16 ["Frame"]
       93 NEWTABLE                         R24 1 0
       95 GETUPVAL                         R25 1
       96 GETTABLEKS                       R25 R25 K17 ["Tag"]
       98 GETUPVAL                         R26 6
       99 JUMPIFNOT                        R6 ; [+2]
      100 LOADK                            R27 K18 ["ThumbnailOverlap"]
      101 JUMP                             ; [+1]
      102 LOADK                            R27 K19 ["X-Fit"]
      103 LOADK                            R28 K20 ["Role-Surface"]
      104 CALL                             R26 2 1
      105 SETTABLE                         R26 R24 R25
      106 DUPTABLE                         R25 K22 [{"CollaboratorThumbnail"}]
      107 GETUPVAL                         R26 1
      108 GETTABLEKS                       R26 R26 K15 ["createElement"]
      110 GETUPVAL                         R27 7
      111 NEWTABLE                         R28 8 0
      113 GETTABLEKS                       R29 R20 K14 ["UserId"]
      115 SETTABLEKS                       R29 R28 K14 ["UserId"]
      117 GETTABLEKS                       R29 R20 K23 ["Username"]
      119 SETTABLEKS                       R29 R28 K23 ["Username"]
      121 GETTABLEKS                       R29 R20 K24 ["IsIdle"]
      123 SETTABLEKS                       R29 R28 K24 ["IsIdle"]
      125 GETTABLEKS                       R29 R20 K25 ["CollaboratorColor3"]
      127 SETTABLEKS                       R29 R28 K26 ["RingColor"]
      129 GETUPVAL                         R29 1
      130 GETTABLEKS                       R29 R29 K17 ["Tag"]
      132 LOADK                            R30 K27 ["RibbonElement"]
      133 SETTABLE                         R30 R28 R29
      134 CALL                             R26 2 1
      135 SETTABLEKS                       R26 R25 K21 ["CollaboratorThumbnail"]
      137 CALL                             R22 3 1
      138 SETTABLE                         R22 R15 R21
      139 FORGLOOP                         R16 2 ; [-56]
      141 JUMPIFNOT                        R6 ; [+41]
      142 MOVE                             R17 R15
      143 GETUPVAL                         R18 1
      144 GETTABLEKS                       R18 R18 K15 ["createElement"]
      146 LOADK                            R19 K16 ["Frame"]
      147 NEWTABLE                         R20 1 0
      149 GETUPVAL                         R21 1
      150 GETTABLEKS                       R21 R21 K17 ["Tag"]
      152 LOADK                            R22 K28 ["Component-OverflowBubble RibbonElement Role-Surface"]
      153 SETTABLE                         R22 R20 R21
      154 DUPTABLE                         R21 K29 [{"Text"}]
      155 GETUPVAL                         R22 1
      156 GETTABLEKS                       R22 R22 K15 ["createElement"]
      158 LOADK                            R23 K30 ["TextLabel"]
      159 NEWTABLE                         R24 2 0
      161 LOADK                            R26 K31 ["+%*"]
      162 LENGTH                           R29 R4
      163 SUBK                             R28 R29 K32 [4]
      164 NAMECALL                         R26 R26 K33 ["format"]
      166 CALL                             R26 2 1
      167 MOVE                             R25 R26
      168 SETTABLEKS                       R25 R24 K7 ["Text"]
      170 GETUPVAL                         R25 1
      171 GETTABLEKS                       R25 R25 K17 ["Tag"]
      173 LOADK                            R26 K34 ["X-AnchorCenter Role-Surface X-Fit"]
      174 SETTABLE                         R26 R24 R25
      175 CALL                             R22 2 1
      176 SETTABLEKS                       R22 R21 K7 ["Text"]
      178 CALL                             R18 3 -1
      179 FASTCALL                         TABLE_INSERT ; [+2]
      180 GETIMPORT                        R16 K37 [table.insert]
      182 CALL                             R16 -1 0
      183 GETUPVAL                         R16 1
      184 GETTABLEKS                       R16 R16 K15 ["createElement"]
      186 LOADK                            R17 K16 ["Frame"]
      187 NEWTABLE                         R18 4 0
      189 SETTABLEKS                       R12 R18 K38 ["ref"]
      191 GETTABLEKS                       R19 R0 K39 ["LayoutOrder"]
      193 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      195 GETUPVAL                         R19 1
      196 GETTABLEKS                       R19 R19 K17 ["Tag"]
      198 GETUPVAL                         R20 6
      199 LOADK                            R21 K40 ["Component-CollaboratorRibbon X-Middle X-Fit Role-Surface"]
      200 LOADK                            R23 K41 ["data-testid=%*"]
      201 GETUPVAL                         R25 8
      202 GETUPVAL                         R26 2
      203 CALL                             R25 1 1
      204 NAMECALL                         R23 R23 K33 ["format"]
      206 CALL                             R23 2 1
      207 MOVE                             R22 R23
      208 CALL                             R20 2 1
      209 SETTABLE                         R20 R18 R19
      210 DUPTABLE                         R19 K44 [{"CollaboratorContainer", "CollaboratorButton"}]
      211 LENGTH                           R21 R4
      212 LOADN                            R22 0
      213 JUMPIFNOTLT                      R22 R21 ; [+46]
      215 GETUPVAL                         R20 1
      216 GETTABLEKS                       R20 R20 K15 ["createElement"]
      218 LOADK                            R21 K45 ["TextButton"]
      219 NEWTABLE                         R22 8 0
      221 LOADK                            R23 K46 [""]
      222 SETTABLEKS                       R23 R22 K7 ["Text"]
      224 GETUPVAL                         R23 1
      225 GETTABLEKS                       R23 R23 K47 ["Event"]
      227 GETTABLEKS                       R23 R23 K48 ["Activated"]
      229 NEWCLOSURE                       R24 P1
      230 CAPTURE                          UPVAL U9
      231 CAPTURE                          VAL R0
      232 SETTABLE                         R24 R22 R23
      233 GETUPVAL                         R23 1
      234 GETTABLEKS                       R23 R23 K47 ["Event"]
      236 GETTABLEKS                       R23 R23 K49 ["MouseEnter"]
      238 SETTABLE                         R13 R22 R23
      239 GETUPVAL                         R23 1
      240 GETTABLEKS                       R23 R23 K47 ["Event"]
      242 GETTABLEKS                       R23 R23 K50 ["MouseLeave"]
      244 SETTABLE                         R14 R22 R23
      245 GETUPVAL                         R23 1
      246 GETTABLEKS                       R23 R23 K17 ["Tag"]
      248 GETUPVAL                         R24 6
      249 LOADK                            R25 K51 ["X-Middle X-Fit Role-Surface"]
      250 JUMPIFNOT                        R6 ; [+2]
      251 LOADK                            R26 K52 ["X-Row"]
      252 JUMP                             ; [+1]
      253 LOADK                            R26 K53 ["UnderMax"]
      254 LOADK                            R27 K54 ["data-testid=LiveCollaboratorsContainer"]
      255 CALL                             R24 3 1
      256 SETTABLE                         R24 R22 R23
      257 MOVE                             R23 R15
      258 CALL                             R20 3 1
      259 JUMP                             ; [+1]
      260 LOADNIL                          R20
      261 SETTABLEKS                       R20 R19 K42 ["CollaboratorContainer"]
      263 GETUPVAL                         R20 1
      264 GETTABLEKS                       R20 R20 K15 ["createElement"]
      266 GETUPVAL                         R21 10
      267 DUPTABLE                         R22 K56 [{"IsTeamCreateOn"}]
      268 LENGTH                           R24 R4
      269 LOADN                            R25 0
      270 JUMPIFLT                         R25 R24 ; [+2]
      272 LOADB                            R23 0 +1
      273 LOADB                            R23 1
      274 SETTABLEKS                       R23 R22 K55 ["IsTeamCreateOn"]
      276 CALL                             R20 2 1
      277 SETTABLEKS                       R20 R19 K43 ["CollaboratorButton"]
      279 CALL                             R16 3 -1
      280 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Styling"]
       23 GETTABLEKS                       R3 R3 K10 ["joinTags"]
       25 GETTABLEKS                       R4 R2 K11 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K12 ["Plugin"]
       29 GETIMPORT                        R6 K1 [script]
       31 GETTABLEKS                       R6 R6 K13 ["Parent"]
       33 GETIMPORT                        R7 K5 [require]
       35 GETTABLEKS                       R8 R0 K14 ["Src"]
       37 GETTABLEKS                       R8 R8 K15 ["Util"]
       39 GETTABLEKS                       R8 R8 K16 ["SocialPresence"]
       41 GETTABLEKS                       R8 R8 K17 ["SocialPresenceDmBridge"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K5 [require]
       46 GETTABLEKS                       R9 R6 K18 ["CollaboratorThumbnail"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R10 R6 K19 ["AddCollaboratorButton"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K5 [require]
       56 GETTABLEKS                       R11 R0 K14 ["Src"]
       58 GETTABLEKS                       R11 R11 K20 ["Hooks"]
       60 GETTABLEKS                       R11 R11 K21 ["TooltipSettings"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K5 [require]
       65 GETTABLEKS                       R12 R0 K14 ["Src"]
       67 GETTABLEKS                       R12 R12 K20 ["Hooks"]
       69 GETTABLEKS                       R12 R12 K22 ["useTooltip"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K5 [require]
       74 GETTABLEKS                       R13 R0 K6 ["Packages"]
       76 GETTABLEKS                       R13 R13 K23 ["StudioFoundation"]
       78 CALL                             R12 1 1
       79 GETTABLEKS                       R13 R12 K20 ["Hooks"]
       81 GETTABLEKS                       R13 R13 K24 ["useWidgetRef"]
       83 GETIMPORT                        R14 K5 [require]
       85 GETTABLEKS                       R15 R0 K14 ["Src"]
       87 GETTABLEKS                       R15 R15 K15 ["Util"]
       89 GETTABLEKS                       R15 R15 K25 ["uriToTestId"]
       91 CALL                             R14 1 1
       92 GETIMPORT                        R15 K5 [require]
       94 GETTABLEKS                       R16 R0 K14 ["Src"]
       96 GETTABLEKS                       R16 R16 K26 ["Types"]
       98 CALL                             R15 1 1
       99 DUPTABLE                         R16 K35 [{["DataModel"] = "Standalone", ["PluginId"] = "LiveCollaborators", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
      100 DUPCLOSURE                       R17 K36 [PROTO_5]
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R16
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R9
      112 RETURN                           R17 1
