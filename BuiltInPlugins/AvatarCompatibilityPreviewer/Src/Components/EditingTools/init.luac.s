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
        0 DUPTABLE                         R5 K8 [{[1] = "Button", ["Tooltip"], ["TooltipDescription"], ["Icon"], ["Selected"], ["OnClick"], ["Enabled"]}]
        1 SETTABLEKS                       R2 R5 K2 ["Tooltip"]
        3 SETTABLEKS                       R3 R5 K3 ["TooltipDescription"]
        5 SETTABLEKS                       R1 R5 K4 ["Icon"]
        7 GETUPVAL                         R7 0
        8 JUMPIFEQ                         R7 R0 ; [+2]
       10 LOADB                            R6 0 +1
       11 LOADB                            R6 1
       12 SETTABLEKS                       R6 R5 K5 ["Selected"]
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R4
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U2
       19 SETTABLEKS                       R6 R5 K6 ["OnClick"]
       21 SETTABLEKS                       R4 R5 K7 ["Enabled"]
       23 RETURN                           R5 1

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
       64 DUPTABLE                         R9 K19 [{["Type"] = "Button", ["Tooltip"], ["TooltipDescription"], ["Icon"], ["Selected"], ["OnClick"]}]
       65 LOADK                            R12 K5 ["EditingTools"]
       66 LOADK                            R13 K20 ["ShowAccessories"]
       67 NAMECALL                         R10 R2 K21 ["getText"]
       69 CALL                             R10 3 1
       70 SETTABLEKS                       R10 R9 K14 ["Tooltip"]
       72 LOADK                            R12 K5 ["EditingTools"]
       73 LOADK                            R13 K22 ["ShowAccessoriesDescription"]
       74 NAMECALL                         R10 R2 K21 ["getText"]
       76 CALL                             R10 3 1
       77 SETTABLEKS                       R10 R9 K15 ["TooltipDescription"]
       79 GETTABLEKS                       R11 R7 K23 ["enabled"]
       81 JUMPIFNOT                        R11 ; [+3]
       82 GETTABLEKS                       R10 R3 K24 ["ShowClothingOnImage"]
       84 JUMP                             ; [+2]
       85 GETTABLEKS                       R10 R3 K25 ["ShowClothingOffImage"]
       87 SETTABLEKS                       R10 R9 K16 ["Icon"]
       89 GETTABLEKS                       R10 R7 K23 ["enabled"]
       91 SETTABLEKS                       R10 R9 K17 ["Selected"]
       93 GETTABLEKS                       R10 R7 K26 ["toggle"]
       95 SETTABLEKS                       R10 R9 K18 ["OnClick"]
       97 SETLIST                          R8 R9 1 [1]
       99 NEWCLOSURE                       R9 P2
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R1
      103 NEWTABLE                         R10 0 0
      105 MOVE                             R13 R9
      106 LOADK                            R14 K27 ["attachments"]
      107 GETTABLEKS                       R15 R3 K28 ["AttachmentToolImage"]
      109 LOADK                            R18 K5 ["EditingTools"]
      110 LOADK                            R19 K29 ["AttachmentsTool"]
      111 NAMECALL                         R16 R2 K21 ["getText"]
      113 CALL                             R16 3 1
      114 LOADK                            R19 K5 ["EditingTools"]
      115 LOADK                            R20 K30 ["AttachmentsToolDescription"]
      116 NAMECALL                         R17 R2 K21 ["getText"]
      118 CALL                             R17 3 -1
      119 CALL                             R13 -1 1
      120 FASTCALL2                        TABLE_INSERT R10 R13 ; [+4]
      122 MOVE                             R12 R10
      123 GETIMPORT                        R11 K33 [table.insert]
      125 CALL                             R11 2 0
      126 GETUPVAL                         R11 8
      127 DUPTABLE                         R12 K35 [{"avatar"}]
      128 GETTABLEKS                       R13 R0 K34 ["avatar"]
      130 SETTABLEKS                       R13 R12 K34 ["avatar"]
      132 CALL                             R11 1 1
      133 GETUPVAL                         R12 4
      134 GETTABLEKS                       R12 R12 K9 ["useEffect"]
      136 NEWCLOSURE                       R13 P3
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R5
      140 NEWTABLE                         R14 0 2
      142 MOVE                             R15 R4
      143 GETTABLEKS                       R17 R11 K36 ["state"]
      145 JUMPIFNOTEQKS                    R17 K37 ["ok"] ; [+4]
      147 GETTABLEKS                       R16 R11 K36 ["state"]
      149 JUMP                             ; [+1]
      150 LOADNIL                          R16
      151 SETLIST                          R14 R15 2 [1]
      153 CALL                             R12 2 0
      154 GETTABLEKS                       R12 R11 K36 ["state"]
      156 JUMPIFNOTEQKS                    R12 K37 ["ok"] ; [+34]
      158 MOVE                             R14 R9
      159 LOADK                            R15 K38 ["cage"]
      160 GETTABLEKS                       R16 R3 K39 ["CageEditingToolImage"]
      162 LOADK                            R19 K5 ["EditingTools"]
      163 LOADK                            R20 K40 ["CageTool"]
      164 NAMECALL                         R17 R2 K21 ["getText"]
      166 CALL                             R17 3 1
      167 GETTABLEKS                       R19 R11 K41 ["value"]
      169 JUMPIFNOT                        R19 ; [+6]
      170 LOADK                            R20 K5 ["EditingTools"]
      171 LOADK                            R21 K42 ["CageToolDescription"]
      172 NAMECALL                         R18 R2 K21 ["getText"]
      174 CALL                             R18 3 1
      175 JUMP                             ; [+5]
      176 LOADK                            R20 K5 ["EditingTools"]
      177 LOADK                            R21 K43 ["CageToolNoPermissionDescription"]
      178 NAMECALL                         R18 R2 K21 ["getText"]
      180 CALL                             R18 3 1
      181 GETTABLEKS                       R19 R11 K41 ["value"]
      183 CALL                             R14 5 1
      184 FASTCALL2                        TABLE_INSERT R10 R14 ; [+4]
      186 MOVE                             R13 R10
      187 GETIMPORT                        R12 K33 [table.insert]
      189 CALL                             R12 2 0
      190 JUMP                             ; [+22]
      191 MOVE                             R14 R9
      192 LOADK                            R15 K38 ["cage"]
      193 GETTABLEKS                       R16 R3 K39 ["CageEditingToolImage"]
      195 LOADK                            R19 K5 ["EditingTools"]
      196 LOADK                            R20 K40 ["CageTool"]
      197 NAMECALL                         R17 R2 K21 ["getText"]
      199 CALL                             R17 3 1
      200 LOADK                            R20 K5 ["EditingTools"]
      201 LOADK                            R21 K44 ["CageToolCheckingPermissionDescription"]
      202 NAMECALL                         R18 R2 K21 ["getText"]
      204 CALL                             R18 3 1
      205 LOADB                            R19 0
      206 CALL                             R14 5 1
      207 FASTCALL2                        TABLE_INSERT R10 R14 ; [+4]
      209 MOVE                             R13 R10
      210 GETIMPORT                        R12 K33 [table.insert]
      212 CALL                             R12 2 0
      213 LOADB                            R12 0
      214 LENGTH                           R13 R10
      215 LOADN                            R14 0
      216 JUMPIFNOTLT                      R14 R13 ; [+109]
      218 GETUPVAL                         R12 4
      219 GETTABLEKS                       R12 R12 K45 ["createElement"]
      221 GETUPVAL                         R13 4
      222 GETTABLEKS                       R13 R13 K46 ["Fragment"]
      224 NEWTABLE                         R14 0 0
      226 NEWTABLE                         R15 4 0
      228 GETUPVAL                         R16 9
      229 GETTABLEKS                       R16 R16 K47 ["EDITING_TOOLS_GUI_NAMES"]
      231 GETTABLEKS                       R16 R16 K48 ["EditingToolbar"]
      233 GETUPVAL                         R17 4
      234 GETTABLEKS                       R17 R17 K45 ["createElement"]
      236 GETUPVAL                         R18 10
      237 GETTABLEKS                       R18 R18 K49 ["Toolbar"]
      239 DUPTABLE                         R19 K53 [{["InitialPosition"] = "Top", ["VerticalItems"]}]
      240 SETTABLEKS                       R10 R19 K52 ["VerticalItems"]
      242 CALL                             R17 2 1
      243 SETTABLE                         R17 R15 R16
      244 LOADB                            R16 0
      245 JUMPIFEQKS                       R4 K7 ["none"] ; [+41]
      247 JUMPIFNOTEQKS                    R4 K27 ["attachments"] ; [+16]
      249 GETUPVAL                         R16 4
      250 GETTABLEKS                       R16 R16 K45 ["createElement"]
      252 GETUPVAL                         R17 11
      253 DUPTABLE                         R18 K56 [{"worldModel", "additionalToolbarItems"}]
      254 GETTABLEKS                       R19 R0 K34 ["avatar"]
      256 GETTABLEKS                       R19 R19 K57 ["WorldModel"]
      258 SETTABLEKS                       R19 R18 K54 ["worldModel"]
      260 SETTABLEKS                       R8 R18 K55 ["additionalToolbarItems"]
      262 CALL                             R16 2 1
      263 JUMP                             ; [+23]
      264 GETUPVAL                         R17 12
      265 CALL                             R17 0 1
      266 JUMPIFNOT                        R17 ; [+17]
      267 JUMPIFNOTEQKS                    R4 K38 ["cage"] ; [+16]
      269 GETUPVAL                         R16 4
      270 GETTABLEKS                       R16 R16 K45 ["createElement"]
      272 GETUPVAL                         R17 13
      273 DUPTABLE                         R18 K59 [{"mannequin", "additionalToolbarItems"}]
      274 GETTABLEKS                       R19 R0 K34 ["avatar"]
      276 GETTABLEKS                       R19 R19 K57 ["WorldModel"]
      278 SETTABLEKS                       R19 R18 K58 ["mannequin"]
      280 SETTABLEKS                       R8 R18 K55 ["additionalToolbarItems"]
      282 CALL                             R16 2 1
      283 JUMP                             ; [+3]
      284 GETUPVAL                         R16 14
      285 MOVE                             R17 R4
      286 CALL                             R16 1 1
      287 SETTABLEKS                       R16 R15 K60 ["Tool"]
      289 LOADB                            R16 0
      290 JUMPIFEQKS                       R4 K7 ["none"] ; [+15]
      292 GETUPVAL                         R16 4
      293 GETTABLEKS                       R16 R16 K45 ["createElement"]
      295 GETUPVAL                         R17 15
      296 DUPTABLE                         R18 K62 [{"avatar", "includeAccessories"}]
      297 GETTABLEKS                       R19 R0 K34 ["avatar"]
      299 SETTABLEKS                       R19 R18 K34 ["avatar"]
      301 GETTABLEKS                       R19 R7 K23 ["enabled"]
      303 SETTABLEKS                       R19 R18 K61 ["includeAccessories"]
      305 CALL                             R16 2 1
      306 SETTABLEKS                       R16 R15 K63 ["RepresentEditorStateOnWorldModel"]
      308 LOADB                            R16 0
      309 JUMPIFEQKS                       R4 K7 ["none"] ; [+13]
      311 GETUPVAL                         R16 4
      312 GETTABLEKS                       R16 R16 K45 ["createElement"]
      314 GETUPVAL                         R17 16
      315 DUPTABLE                         R18 K65 [{"dummy"}]
      316 GETTABLEKS                       R19 R0 K34 ["avatar"]
      318 GETTABLEKS                       R19 R19 K57 ["WorldModel"]
      320 SETTABLEKS                       R19 R18 K64 ["dummy"]
      322 CALL                             R16 2 1
      323 SETTABLEKS                       R16 R15 K66 ["BindFocusOnPVInstance"]
      325 CALL                             R12 3 1
      326 RETURN                           R12 1

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
