PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["dummy"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Deactivate"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["none"] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R2 1
        6 NAMECALL                         R0 R0 K1 ["Activate"]
        8 CALL                             R0 2 0
        9 NEWCLOSURE                       R0 P0
       10 CAPTURE                          UPVAL U1
       11 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["none"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+3]
        3 LOADK                            R1 K0 ["none"]
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 LOADK                            R3 K1 ["openEditingTool"]
        7 GETUPVAL                         R4 0
        8 NAMECALL                         R1 R1 K2 ["report"]
       10 CALL                             R1 3 0
       11 GETUPVAL                         R1 0
       12 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKB                    R0 FALSE ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R5 K7 [{"Type", "Tooltip", "TooltipDescription", "Icon", "Selected", "OnClick", "Enabled"}]
        1 LOADK                            R6 K8 ["Button"]
        2 SETTABLEKS                       R6 R5 K0 ["Type"]
        4 SETTABLEKS                       R2 R5 K1 ["Tooltip"]
        6 SETTABLEKS                       R3 R5 K2 ["TooltipDescription"]
        8 SETTABLEKS                       R1 R5 K3 ["Icon"]
       10 GETUPVAL                         R7 0
       11 JUMPIFEQ                         R7 R0 ; [+2]
       13 LOADB                            R6 0 +1
       14 LOADB                            R6 1
       15 SETTABLEKS                       R6 R5 K4 ["Selected"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R4
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U2
       22 SETTABLEKS                       R6 R5 K5 ["OnClick"]
       24 SETTABLEKS                       R4 R5 K6 ["Enabled"]
       26 RETURN                           R5 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["cage"] ; [+13]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["state"]
        6 JUMPIFNOTEQKS                    R0 K2 ["ok"] ; [+8]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K3 ["value"]
       11 JUMPIF                           R0 ; [+3]
       12 GETUPVAL                         R0 2
       13 LOADK                            R1 K4 ["none"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["AvatarPreviewerEditingTools_Dev is not enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["Analytics"]
       11 NAMECALL                         R1 R1 K4 ["use"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 2
       15 NAMECALL                         R2 R2 K4 ["use"]
       17 CALL                             R2 1 1
       18 GETUPVAL                         R3 3
       19 LOADK                            R5 K5 ["EditingTools"]
       20 NAMECALL                         R3 R3 K4 ["use"]
       22 CALL                             R3 2 1
       23 GETUPVAL                         R4 4
       24 GETTABLEKS                       R4 R4 K6 ["useState"]
       26 LOADK                            R5 K7 ["none"]
       27 CALL                             R4 1 2
       28 GETUPVAL                         R6 5
       29 NAMECALL                         R6 R6 K4 ["use"]
       31 CALL                             R6 1 1
       32 NAMECALL                         R6 R6 K8 ["get"]
       34 CALL                             R6 1 1
       35 GETUPVAL                         R7 4
       36 GETTABLEKS                       R7 R7 K9 ["useEffect"]
       38 NEWCLOSURE                       R8 P0
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R6
       41 NEWTABLE                         R9 0 1
       43 JUMPIFEQKS                       R4 K7 ["none"] ; [+2]
       45 LOADB                            R10 0 +1
       46 LOADB                            R10 1
       47 SETLIST                          R9 R10 1 [1]
       49 CALL                             R7 2 0
       50 GETUPVAL                         R7 6
       51 GETTABLEKS                       R8 R6 K10 ["Deactivation"]
       53 NEWCLOSURE                       R9 P1
       54 CAPTURE                          VAL R5
       55 NEWTABLE                         R10 0 0
       57 CALL                             R7 3 0
       58 GETUPVAL                         R7 7
       59 LOADK                            R8 K11 ["EditingTools_ShowAccessories"]
       60 LOADB                            R9 1
       61 CALL                             R7 2 1
       62 NEWTABLE                         R8 0 1
       64 DUPTABLE                         R9 K18 [{"Type", "Tooltip", "TooltipDescription", "Icon", "Selected", "OnClick"}]
       65 LOADK                            R10 K19 ["Button"]
       66 SETTABLEKS                       R10 R9 K12 ["Type"]
       68 LOADK                            R12 K5 ["EditingTools"]
       69 LOADK                            R13 K20 ["ShowAccessories"]
       70 NAMECALL                         R10 R2 K21 ["getText"]
       72 CALL                             R10 3 1
       73 SETTABLEKS                       R10 R9 K13 ["Tooltip"]
       75 LOADK                            R12 K5 ["EditingTools"]
       76 LOADK                            R13 K22 ["ShowAccessoriesDescription"]
       77 NAMECALL                         R10 R2 K21 ["getText"]
       79 CALL                             R10 3 1
       80 SETTABLEKS                       R10 R9 K14 ["TooltipDescription"]
       82 GETTABLEKS                       R11 R7 K23 ["enabled"]
       84 JUMPIFNOT                        R11 ; [+3]
       85 GETTABLEKS                       R10 R3 K24 ["ShowClothingOnImage"]
       87 JUMP                             ; [+2]
       88 GETTABLEKS                       R10 R3 K25 ["ShowClothingOffImage"]
       90 SETTABLEKS                       R10 R9 K15 ["Icon"]
       92 GETTABLEKS                       R10 R7 K23 ["enabled"]
       94 SETTABLEKS                       R10 R9 K16 ["Selected"]
       96 GETTABLEKS                       R10 R7 K26 ["toggle"]
       98 SETTABLEKS                       R10 R9 K17 ["OnClick"]
      100 SETLIST                          R8 R9 1 [1]
      102 NEWCLOSURE                       R9 P2
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R1
      106 NEWTABLE                         R10 0 0
      108 MOVE                             R13 R9
      109 LOADK                            R14 K27 ["attachments"]
      110 GETTABLEKS                       R15 R3 K28 ["AttachmentToolImage"]
      112 LOADK                            R18 K5 ["EditingTools"]
      113 LOADK                            R19 K29 ["AttachmentsTool"]
      114 NAMECALL                         R16 R2 K21 ["getText"]
      116 CALL                             R16 3 1
      117 LOADK                            R19 K5 ["EditingTools"]
      118 LOADK                            R20 K30 ["AttachmentsToolDescription"]
      119 NAMECALL                         R17 R2 K21 ["getText"]
      121 CALL                             R17 3 -1
      122 CALL                             R13 -1 1
      123 FASTCALL2                        TABLE_INSERT R10 R13 ; [+4]
      125 MOVE                             R12 R10
      126 GETIMPORT                        R11 K33 [table.insert]
      128 CALL                             R11 2 0
      129 GETUPVAL                         R11 8
      130 DUPTABLE                         R12 K35 [{"avatar"}]
      131 GETTABLEKS                       R13 R0 K34 ["avatar"]
      133 SETTABLEKS                       R13 R12 K34 ["avatar"]
      135 CALL                             R11 1 1
      136 GETUPVAL                         R12 4
      137 GETTABLEKS                       R12 R12 K9 ["useEffect"]
      139 NEWCLOSURE                       R13 P3
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R5
      143 NEWTABLE                         R14 0 2
      145 MOVE                             R15 R4
      146 GETTABLEKS                       R17 R11 K36 ["state"]
      148 JUMPIFNOTEQKS                    R17 K37 ["ok"] ; [+4]
      150 GETTABLEKS                       R16 R11 K36 ["state"]
      152 JUMP                             ; [+1]
      153 LOADNIL                          R16
      154 SETLIST                          R14 R15 2 [1]
      156 CALL                             R12 2 0
      157 GETTABLEKS                       R12 R11 K36 ["state"]
      159 JUMPIFNOTEQKS                    R12 K37 ["ok"] ; [+34]
      161 MOVE                             R14 R9
      162 LOADK                            R15 K38 ["cage"]
      163 GETTABLEKS                       R16 R3 K39 ["CageEditingToolImage"]
      165 LOADK                            R19 K5 ["EditingTools"]
      166 LOADK                            R20 K40 ["CageTool"]
      167 NAMECALL                         R17 R2 K21 ["getText"]
      169 CALL                             R17 3 1
      170 GETTABLEKS                       R19 R11 K41 ["value"]
      172 JUMPIFNOT                        R19 ; [+6]
      173 LOADK                            R20 K5 ["EditingTools"]
      174 LOADK                            R21 K42 ["CageToolDescription"]
      175 NAMECALL                         R18 R2 K21 ["getText"]
      177 CALL                             R18 3 1
      178 JUMP                             ; [+5]
      179 LOADK                            R20 K5 ["EditingTools"]
      180 LOADK                            R21 K43 ["CageToolNoPermissionDescription"]
      181 NAMECALL                         R18 R2 K21 ["getText"]
      183 CALL                             R18 3 1
      184 GETTABLEKS                       R19 R11 K41 ["value"]
      186 CALL                             R14 5 1
      187 FASTCALL2                        TABLE_INSERT R10 R14 ; [+4]
      189 MOVE                             R13 R10
      190 GETIMPORT                        R12 K33 [table.insert]
      192 CALL                             R12 2 0
      193 JUMP                             ; [+22]
      194 MOVE                             R14 R9
      195 LOADK                            R15 K38 ["cage"]
      196 GETTABLEKS                       R16 R3 K39 ["CageEditingToolImage"]
      198 LOADK                            R19 K5 ["EditingTools"]
      199 LOADK                            R20 K40 ["CageTool"]
      200 NAMECALL                         R17 R2 K21 ["getText"]
      202 CALL                             R17 3 1
      203 LOADK                            R20 K5 ["EditingTools"]
      204 LOADK                            R21 K44 ["CageToolCheckingPermissionDescription"]
      205 NAMECALL                         R18 R2 K21 ["getText"]
      207 CALL                             R18 3 1
      208 LOADB                            R19 0
      209 CALL                             R14 5 1
      210 FASTCALL2                        TABLE_INSERT R10 R14 ; [+4]
      212 MOVE                             R13 R10
      213 GETIMPORT                        R12 K33 [table.insert]
      215 CALL                             R12 2 0
      216 LOADB                            R12 0
      217 LENGTH                           R13 R10
      218 LOADN                            R14 0
      219 JUMPIFNOTLT                      R14 R13 ; [+112]
      221 GETUPVAL                         R12 4
      222 GETTABLEKS                       R12 R12 K45 ["createElement"]
      224 GETUPVAL                         R13 4
      225 GETTABLEKS                       R13 R13 K46 ["Fragment"]
      227 NEWTABLE                         R14 0 0
      229 NEWTABLE                         R15 4 0
      231 GETUPVAL                         R16 9
      232 GETTABLEKS                       R16 R16 K47 ["EDITING_TOOLS_GUI_NAMES"]
      234 GETTABLEKS                       R16 R16 K48 ["EditingToolbar"]
      236 GETUPVAL                         R17 4
      237 GETTABLEKS                       R17 R17 K45 ["createElement"]
      239 GETUPVAL                         R18 10
      240 GETTABLEKS                       R18 R18 K49 ["Toolbar"]
      242 DUPTABLE                         R19 K52 [{"InitialPosition", "VerticalItems"}]
      243 LOADK                            R20 K53 ["Top"]
      244 SETTABLEKS                       R20 R19 K50 ["InitialPosition"]
      246 SETTABLEKS                       R10 R19 K51 ["VerticalItems"]
      248 CALL                             R17 2 1
      249 SETTABLE                         R17 R15 R16
      250 LOADB                            R16 0
      251 JUMPIFEQKS                       R4 K7 ["none"] ; [+41]
      253 JUMPIFNOTEQKS                    R4 K27 ["attachments"] ; [+16]
      255 GETUPVAL                         R16 4
      256 GETTABLEKS                       R16 R16 K45 ["createElement"]
      258 GETUPVAL                         R17 11
      259 DUPTABLE                         R18 K56 [{"worldModel", "additionalToolbarItems"}]
      260 GETTABLEKS                       R19 R0 K34 ["avatar"]
      262 GETTABLEKS                       R19 R19 K57 ["WorldModel"]
      264 SETTABLEKS                       R19 R18 K54 ["worldModel"]
      266 SETTABLEKS                       R8 R18 K55 ["additionalToolbarItems"]
      268 CALL                             R16 2 1
      269 JUMP                             ; [+23]
      270 GETUPVAL                         R17 12
      271 CALL                             R17 0 1
      272 JUMPIFNOT                        R17 ; [+17]
      273 JUMPIFNOTEQKS                    R4 K38 ["cage"] ; [+16]
      275 GETUPVAL                         R16 4
      276 GETTABLEKS                       R16 R16 K45 ["createElement"]
      278 GETUPVAL                         R17 13
      279 DUPTABLE                         R18 K59 [{"mannequin", "additionalToolbarItems"}]
      280 GETTABLEKS                       R19 R0 K34 ["avatar"]
      282 GETTABLEKS                       R19 R19 K57 ["WorldModel"]
      284 SETTABLEKS                       R19 R18 K58 ["mannequin"]
      286 SETTABLEKS                       R8 R18 K55 ["additionalToolbarItems"]
      288 CALL                             R16 2 1
      289 JUMP                             ; [+3]
      290 GETUPVAL                         R16 14
      291 MOVE                             R17 R4
      292 CALL                             R16 1 1
      293 SETTABLEKS                       R16 R15 K60 ["Tool"]
      295 LOADB                            R16 0
      296 JUMPIFEQKS                       R4 K7 ["none"] ; [+15]
      298 GETUPVAL                         R16 4
      299 GETTABLEKS                       R16 R16 K45 ["createElement"]
      301 GETUPVAL                         R17 15
      302 DUPTABLE                         R18 K62 [{"avatar", "includeAccessories"}]
      303 GETTABLEKS                       R19 R0 K34 ["avatar"]
      305 SETTABLEKS                       R19 R18 K34 ["avatar"]
      307 GETTABLEKS                       R19 R7 K23 ["enabled"]
      309 SETTABLEKS                       R19 R18 K61 ["includeAccessories"]
      311 CALL                             R16 2 1
      312 SETTABLEKS                       R16 R15 K63 ["RepresentEditorStateOnWorldModel"]
      314 LOADB                            R16 0
      315 JUMPIFEQKS                       R4 K7 ["none"] ; [+13]
      317 GETUPVAL                         R16 4
      318 GETTABLEKS                       R16 R16 K45 ["createElement"]
      320 GETUPVAL                         R17 16
      321 DUPTABLE                         R18 K65 [{"dummy"}]
      322 GETTABLEKS                       R19 R0 K34 ["avatar"]
      324 GETTABLEKS                       R19 R19 K57 ["WorldModel"]
      326 SETTABLEKS                       R19 R18 K64 ["dummy"]
      328 CALL                             R16 2 1
      329 SETTABLEKS                       R16 R15 K66 ["BindFocusOnPVInstance"]
      331 CALL                             R12 3 1
      332 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ViewportToolingFramework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["Constants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Resources"]
       43 GETTABLEKS                       R6 R6 K14 ["Theme"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Types"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K10 ["Src"]
       57 GETTABLEKS                       R8 R8 K11 ["Util"]
       59 GETTABLEKS                       R8 R8 K16 ["exhaustiveMatch"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K10 ["Src"]
       66 GETTABLEKS                       R9 R9 K17 ["Hooks"]
       68 GETTABLEKS                       R9 R9 K18 ["useEventConnection"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K10 ["Src"]
       75 GETTABLEKS                       R10 R10 K19 ["Components"]
       77 GETTABLEKS                       R10 R10 K20 ["EditingTools"]
       79 GETTABLEKS                       R10 R10 K21 ["CageEditingTool"]
       81 GETTABLEKS                       R10 R10 K22 ["useHasEditAssetPermissions"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K10 ["Src"]
       88 GETTABLEKS                       R11 R11 K17 ["Hooks"]
       90 GETTABLEKS                       R11 R11 K23 ["useTogglePluginSetting"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETIMPORT                        R12 K1 [script]
       97 GETTABLEKS                       R12 R12 K24 ["AttachmentTool"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K5 [require]
      102 GETIMPORT                        R13 K1 [script]
      104 GETTABLEKS                       R13 R13 K21 ["CageEditingTool"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETIMPORT                        R14 K1 [script]
      111 GETTABLEKS                       R14 R14 K25 ["RepresentEditorStateOnWorldModel"]
      113 CALL                             R13 1 1
      114 GETIMPORT                        R14 K5 [require]
      116 GETIMPORT                        R15 K1 [script]
      118 GETTABLEKS                       R15 R15 K26 ["useBindFocusOnPVInstance"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K5 [require]
      123 GETTABLEKS                       R16 R0 K10 ["Src"]
      125 GETTABLEKS                       R16 R16 K27 ["Flags"]
      127 GETTABLEKS                       R16 R16 K28 ["getFFlagAvatarPreviewerEditingTools"]
      129 CALL                             R15 1 1
      130 GETIMPORT                        R16 K5 [require]
      132 GETTABLEKS                       R17 R0 K10 ["Src"]
      134 GETTABLEKS                       R17 R17 K27 ["Flags"]
      136 GETTABLEKS                       R17 R17 K29 ["getFFlagAvatarPreviewerCageEditingTools"]
      138 CALL                             R16 1 1
      139 GETTABLEKS                       R17 R1 K30 ["ContextServices"]
      141 GETTABLEKS                       R18 R17 K31 ["Localization"]
      143 GETTABLEKS                       R19 R17 K32 ["Plugin"]
      145 GETTABLEKS                       R20 R17 K33 ["Stylizer"]
      147 DUPCLOSURE                       R21 K34 [PROTO_0]
      148 CAPTURE                          VAL R14
      149 DUPCLOSURE                       R22 K35 [PROTO_8]
      150 CAPTURE                          VAL R15
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R18
      153 CAPTURE                          VAL R20
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R19
      156 CAPTURE                          VAL R8
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R9
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R12
      164 CAPTURE                          VAL R7
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R21
      167 RETURN                           R22 1
