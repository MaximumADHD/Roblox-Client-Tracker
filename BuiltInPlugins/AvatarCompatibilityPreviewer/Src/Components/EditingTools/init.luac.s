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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKB                    R0 FALSE ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

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
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R4
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U3
       23 SETTABLEKS                       R6 R5 K5 ["OnClick"]
       25 SETTABLEKS                       R4 R5 K6 ["Enabled"]
       27 RETURN                           R5 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["cage"] ; [+13]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K1 ["state"]
        6 JUMPIFNOTEQKS                    R0 K2 ["ok"] ; [+8]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K3 ["value"]
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
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K3 ["Analytics"]
       11 NAMECALL                         R1 R1 K4 ["use"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 2
       15 NAMECALL                         R2 R2 K4 ["use"]
       17 CALL                             R2 1 1
       18 GETUPVAL                         R3 3
       19 LOADK                            R5 K5 ["EditingTools"]
       20 NAMECALL                         R3 R3 K4 ["use"]
       22 CALL                             R3 2 1
       23 GETUPVAL                         R5 4
       24 GETTABLEKS                       R4 R5 K6 ["useState"]
       26 LOADK                            R5 K7 ["none"]
       27 CALL                             R4 1 2
       28 GETUPVAL                         R6 5
       29 NAMECALL                         R6 R6 K4 ["use"]
       31 CALL                             R6 1 1
       32 NAMECALL                         R6 R6 K8 ["get"]
       34 CALL                             R6 1 1
       35 GETUPVAL                         R8 4
       36 GETTABLEKS                       R7 R8 K9 ["useEffect"]
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
      104 CAPTURE                          UPVAL U8
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R1
      107 NEWTABLE                         R10 0 0
      109 GETUPVAL                         R11 9
      110 CALL                             R11 0 1
      111 JUMPIFNOT                        R11 ; [+21]
      112 MOVE                             R13 R9
      113 LOADK                            R14 K27 ["attachments"]
      114 GETTABLEKS                       R15 R3 K28 ["AttachmentToolImage"]
      116 LOADK                            R18 K5 ["EditingTools"]
      117 LOADK                            R19 K29 ["AttachmentsTool"]
      118 NAMECALL                         R16 R2 K21 ["getText"]
      120 CALL                             R16 3 1
      121 LOADK                            R19 K5 ["EditingTools"]
      122 LOADK                            R20 K30 ["AttachmentsToolDescription"]
      123 NAMECALL                         R17 R2 K21 ["getText"]
      125 CALL                             R17 3 -1
      126 CALL                             R13 -1 1
      127 FASTCALL2                        TABLE_INSERT R10 R13 ; [+4]
      129 MOVE                             R12 R10
      130 GETIMPORT                        R11 K33 [table.insert]
      132 CALL                             R11 2 0
      133 GETUPVAL                         R11 8
      134 CALL                             R11 0 1
      135 JUMPIFNOT                        R11 ; [+87]
      136 GETUPVAL                         R11 10
      137 DUPTABLE                         R12 K35 [{"avatar"}]
      138 GETTABLEKS                       R13 R0 K34 ["avatar"]
      140 SETTABLEKS                       R13 R12 K34 ["avatar"]
      142 CALL                             R11 1 1
      143 GETUPVAL                         R13 4
      144 GETTABLEKS                       R12 R13 K9 ["useEffect"]
      146 NEWCLOSURE                       R13 P3
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R5
      150 NEWTABLE                         R14 0 2
      152 MOVE                             R15 R4
      153 GETTABLEKS                       R17 R11 K36 ["state"]
      155 JUMPIFNOTEQKS                    R17 K37 ["ok"] ; [+4]
      157 GETTABLEKS                       R16 R11 K36 ["state"]
      159 JUMP                             ; [+1]
      160 LOADNIL                          R16
      161 SETLIST                          R14 R15 2 [1]
      163 CALL                             R12 2 0
      164 GETTABLEKS                       R12 R11 K36 ["state"]
      166 JUMPIFNOTEQKS                    R12 K37 ["ok"] ; [+34]
      168 MOVE                             R14 R9
      169 LOADK                            R15 K38 ["cage"]
      170 GETTABLEKS                       R16 R3 K39 ["CageEditingToolImage"]
      172 LOADK                            R19 K5 ["EditingTools"]
      173 LOADK                            R20 K40 ["CageTool"]
      174 NAMECALL                         R17 R2 K21 ["getText"]
      176 CALL                             R17 3 1
      177 GETTABLEKS                       R19 R11 K41 ["value"]
      179 JUMPIFNOT                        R19 ; [+6]
      180 LOADK                            R20 K5 ["EditingTools"]
      181 LOADK                            R21 K42 ["CageToolDescription"]
      182 NAMECALL                         R18 R2 K21 ["getText"]
      184 CALL                             R18 3 1
      185 JUMP                             ; [+5]
      186 LOADK                            R20 K5 ["EditingTools"]
      187 LOADK                            R21 K43 ["CageToolNoPermissionDescription"]
      188 NAMECALL                         R18 R2 K21 ["getText"]
      190 CALL                             R18 3 1
      191 GETTABLEKS                       R19 R11 K41 ["value"]
      193 CALL                             R14 5 1
      194 FASTCALL2                        TABLE_INSERT R10 R14 ; [+4]
      196 MOVE                             R13 R10
      197 GETIMPORT                        R12 K33 [table.insert]
      199 CALL                             R12 2 0
      200 JUMP                             ; [+22]
      201 MOVE                             R14 R9
      202 LOADK                            R15 K38 ["cage"]
      203 GETTABLEKS                       R16 R3 K39 ["CageEditingToolImage"]
      205 LOADK                            R19 K5 ["EditingTools"]
      206 LOADK                            R20 K40 ["CageTool"]
      207 NAMECALL                         R17 R2 K21 ["getText"]
      209 CALL                             R17 3 1
      210 LOADK                            R20 K5 ["EditingTools"]
      211 LOADK                            R21 K44 ["CageToolCheckingPermissionDescription"]
      212 NAMECALL                         R18 R2 K21 ["getText"]
      214 CALL                             R18 3 1
      215 LOADB                            R19 0
      216 CALL                             R14 5 1
      217 FASTCALL2                        TABLE_INSERT R10 R14 ; [+4]
      219 MOVE                             R13 R10
      220 GETIMPORT                        R12 K33 [table.insert]
      222 CALL                             R12 2 0
      223 LOADB                            R11 0
      224 LENGTH                           R12 R10
      225 LOADN                            R13 0
      226 JUMPIFNOTLT                      R13 R12 ; [+112]
      228 GETUPVAL                         R12 4
      229 GETTABLEKS                       R11 R12 K45 ["createElement"]
      231 GETUPVAL                         R13 4
      232 GETTABLEKS                       R12 R13 K46 ["Fragment"]
      234 NEWTABLE                         R13 0 0
      236 NEWTABLE                         R14 4 0
      238 GETUPVAL                         R17 11
      239 GETTABLEKS                       R16 R17 K47 ["EDITING_TOOLS_GUI_NAMES"]
      241 GETTABLEKS                       R15 R16 K48 ["EditingToolbar"]
      243 GETUPVAL                         R17 4
      244 GETTABLEKS                       R16 R17 K45 ["createElement"]
      246 GETUPVAL                         R18 12
      247 GETTABLEKS                       R17 R18 K49 ["Toolbar"]
      249 DUPTABLE                         R18 K52 [{"InitialPosition", "VerticalItems"}]
      250 LOADK                            R19 K53 ["Top"]
      251 SETTABLEKS                       R19 R18 K50 ["InitialPosition"]
      253 SETTABLEKS                       R10 R18 K51 ["VerticalItems"]
      255 CALL                             R16 2 1
      256 SETTABLE                         R16 R14 R15
      257 LOADB                            R15 0
      258 JUMPIFEQKS                       R4 K7 ["none"] ; [+41]
      260 JUMPIFNOTEQKS                    R4 K27 ["attachments"] ; [+16]
      262 GETUPVAL                         R16 4
      263 GETTABLEKS                       R15 R16 K45 ["createElement"]
      265 GETUPVAL                         R16 13
      266 DUPTABLE                         R17 K56 [{"worldModel", "additionalToolbarItems"}]
      267 GETTABLEKS                       R19 R0 K34 ["avatar"]
      269 GETTABLEKS                       R18 R19 K57 ["WorldModel"]
      271 SETTABLEKS                       R18 R17 K54 ["worldModel"]
      273 SETTABLEKS                       R8 R17 K55 ["additionalToolbarItems"]
      275 CALL                             R15 2 1
      276 JUMP                             ; [+23]
      277 GETUPVAL                         R16 14
      278 CALL                             R16 0 1
      279 JUMPIFNOT                        R16 ; [+17]
      280 JUMPIFNOTEQKS                    R4 K38 ["cage"] ; [+16]
      282 GETUPVAL                         R16 4
      283 GETTABLEKS                       R15 R16 K45 ["createElement"]
      285 GETUPVAL                         R16 15
      286 DUPTABLE                         R17 K59 [{"mannequin", "additionalToolbarItems"}]
      287 GETTABLEKS                       R19 R0 K34 ["avatar"]
      289 GETTABLEKS                       R18 R19 K57 ["WorldModel"]
      291 SETTABLEKS                       R18 R17 K58 ["mannequin"]
      293 SETTABLEKS                       R8 R17 K55 ["additionalToolbarItems"]
      295 CALL                             R15 2 1
      296 JUMP                             ; [+3]
      297 GETUPVAL                         R15 16
      298 MOVE                             R16 R4
      299 CALL                             R15 1 1
      300 SETTABLEKS                       R15 R14 K60 ["Tool"]
      302 LOADB                            R15 0
      303 JUMPIFEQKS                       R4 K7 ["none"] ; [+15]
      305 GETUPVAL                         R16 4
      306 GETTABLEKS                       R15 R16 K45 ["createElement"]
      308 GETUPVAL                         R16 17
      309 DUPTABLE                         R17 K62 [{"avatar", "includeAccessories"}]
      310 GETTABLEKS                       R18 R0 K34 ["avatar"]
      312 SETTABLEKS                       R18 R17 K34 ["avatar"]
      314 GETTABLEKS                       R18 R7 K23 ["enabled"]
      316 SETTABLEKS                       R18 R17 K61 ["includeAccessories"]
      318 CALL                             R15 2 1
      319 SETTABLEKS                       R15 R14 K63 ["RepresentEditorStateOnWorldModel"]
      321 LOADB                            R15 0
      322 JUMPIFEQKS                       R4 K7 ["none"] ; [+13]
      324 GETUPVAL                         R16 4
      325 GETTABLEKS                       R15 R16 K45 ["createElement"]
      327 GETUPVAL                         R16 18
      328 DUPTABLE                         R17 K65 [{"dummy"}]
      329 GETTABLEKS                       R19 R0 K34 ["avatar"]
      331 GETTABLEKS                       R18 R19 K57 ["WorldModel"]
      333 SETTABLEKS                       R18 R17 K64 ["dummy"]
      335 CALL                             R15 2 1
      336 SETTABLEKS                       R15 R14 K66 ["BindFocusOnPVInstance"]
      338 CALL                             R11 3 1
      339 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["ViewportToolingFramework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Util"]
       34 GETTABLEKS                       R5 R6 K12 ["Constants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K10 ["Src"]
       41 GETTABLEKS                       R7 R8 K13 ["Resources"]
       43 GETTABLEKS                       R6 R7 K14 ["Theme"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R8 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R8 K15 ["Types"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R10 R0 K10 ["Src"]
       57 GETTABLEKS                       R9 R10 K11 ["Util"]
       59 GETTABLEKS                       R8 R9 K16 ["exhaustiveMatch"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R11 R0 K10 ["Src"]
       66 GETTABLEKS                       R10 R11 K17 ["Hooks"]
       68 GETTABLEKS                       R9 R10 K18 ["useEventConnection"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R14 R0 K10 ["Src"]
       75 GETTABLEKS                       R13 R14 K19 ["Components"]
       77 GETTABLEKS                       R12 R13 K20 ["EditingTools"]
       79 GETTABLEKS                       R11 R12 K21 ["CageEditingTool"]
       81 GETTABLEKS                       R10 R11 K22 ["useHasEditAssetPermissions"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R13 R0 K10 ["Src"]
       88 GETTABLEKS                       R12 R13 K17 ["Hooks"]
       90 GETTABLEKS                       R11 R12 K23 ["useTogglePluginSetting"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETIMPORT                        R13 K1 [script]
       97 GETTABLEKS                       R12 R13 K24 ["AttachmentTool"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K5 [require]
      102 GETIMPORT                        R14 K1 [script]
      104 GETTABLEKS                       R13 R14 K21 ["CageEditingTool"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETIMPORT                        R15 K1 [script]
      111 GETTABLEKS                       R14 R15 K25 ["RepresentEditorStateOnWorldModel"]
      113 CALL                             R13 1 1
      114 GETIMPORT                        R14 K5 [require]
      116 GETIMPORT                        R16 K1 [script]
      118 GETTABLEKS                       R15 R16 K26 ["useBindFocusOnPVInstance"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K5 [require]
      123 GETTABLEKS                       R18 R0 K10 ["Src"]
      125 GETTABLEKS                       R17 R18 K27 ["Flags"]
      127 GETTABLEKS                       R16 R17 K28 ["getFFlagAvatarPreviewerEditingTools"]
      129 CALL                             R15 1 1
      130 GETIMPORT                        R16 K5 [require]
      132 GETTABLEKS                       R19 R0 K10 ["Src"]
      134 GETTABLEKS                       R18 R19 K27 ["Flags"]
      136 GETTABLEKS                       R17 R18 K29 ["getFFlagAvatarPreviewerCageEditingTools"]
      138 CALL                             R16 1 1
      139 GETIMPORT                        R17 K5 [require]
      141 GETTABLEKS                       R20 R0 K10 ["Src"]
      143 GETTABLEKS                       R19 R20 K27 ["Flags"]
      145 GETTABLEKS                       R18 R19 K30 ["getFFlagAvatarPreviewerEnableAttachmentTool"]
      147 CALL                             R17 1 1
      148 GETIMPORT                        R18 K5 [require]
      150 GETTABLEKS                       R21 R0 K10 ["Src"]
      152 GETTABLEKS                       R20 R21 K27 ["Flags"]
      154 GETTABLEKS                       R19 R20 K31 ["getFFlagAvatarPreviewerEnableCageTool"]
      156 CALL                             R18 1 1
      157 GETTABLEKS                       R19 R1 K32 ["ContextServices"]
      159 GETTABLEKS                       R20 R19 K33 ["Localization"]
      161 GETTABLEKS                       R21 R19 K34 ["Plugin"]
      163 GETTABLEKS                       R22 R19 K35 ["Stylizer"]
      165 DUPCLOSURE                       R23 K36 [PROTO_0]
      166 CAPTURE                          VAL R14
      167 DUPCLOSURE                       R24 K37 [PROTO_8]
      168 CAPTURE                          VAL R15
      169 CAPTURE                          VAL R19
      170 CAPTURE                          VAL R20
      171 CAPTURE                          VAL R22
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R21
      174 CAPTURE                          VAL R8
      175 CAPTURE                          VAL R10
      176 CAPTURE                          VAL R18
      177 CAPTURE                          VAL R17
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R4
      180 CAPTURE                          VAL R3
      181 CAPTURE                          VAL R11
      182 CAPTURE                          VAL R16
      183 CAPTURE                          VAL R12
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R13
      186 CAPTURE                          VAL R23
      187 RETURN                           R24 1
