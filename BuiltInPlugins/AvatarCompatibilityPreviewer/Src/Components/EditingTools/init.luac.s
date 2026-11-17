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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Analytics"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 NAMECALL                         R2 R2 K1 ["use"]
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 2
       11 LOADK                            R5 K2 ["EditingTools"]
       12 NAMECALL                         R3 R3 K1 ["use"]
       14 CALL                             R3 2 1
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K3 ["useState"]
       18 LOADK                            R5 K4 ["none"]
       19 CALL                             R4 1 2
       20 GETUPVAL                         R6 4
       21 NAMECALL                         R6 R6 K1 ["use"]
       23 CALL                             R6 1 1
       24 NAMECALL                         R6 R6 K5 ["get"]
       26 CALL                             R6 1 1
       27 GETUPVAL                         R7 3
       28 GETTABLEKS                       R7 R7 K6 ["useEffect"]
       30 NEWCLOSURE                       R8 P0
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R6
       33 NEWTABLE                         R9 0 1
       35 JUMPIFEQKS                       R4 K4 ["none"] ; [+2]
       37 LOADB                            R10 0 +1
       38 LOADB                            R10 1
       39 SETLIST                          R9 R10 1 [1]
       41 CALL                             R7 2 0
       42 GETUPVAL                         R7 5
       43 GETTABLEKS                       R8 R6 K7 ["Deactivation"]
       45 NEWCLOSURE                       R9 P1
       46 CAPTURE                          VAL R5
       47 NEWTABLE                         R10 0 0
       49 CALL                             R7 3 0
       50 GETUPVAL                         R7 6
       51 LOADK                            R8 K8 ["EditingTools_ShowAccessories"]
       52 LOADB                            R9 1
       53 CALL                             R7 2 1
       54 NEWTABLE                         R8 0 1
       56 DUPTABLE                         R9 K16 [{["Type"] = "Button", ["Tooltip"], ["TooltipDescription"], ["Icon"], ["Selected"], ["OnClick"]}]
       57 LOADK                            R12 K2 ["EditingTools"]
       58 LOADK                            R13 K17 ["ShowAccessories"]
       59 NAMECALL                         R10 R2 K18 ["getText"]
       61 CALL                             R10 3 1
       62 SETTABLEKS                       R10 R9 K11 ["Tooltip"]
       64 LOADK                            R12 K2 ["EditingTools"]
       65 LOADK                            R13 K19 ["ShowAccessoriesDescription"]
       66 NAMECALL                         R10 R2 K18 ["getText"]
       68 CALL                             R10 3 1
       69 SETTABLEKS                       R10 R9 K12 ["TooltipDescription"]
       71 GETTABLEKS                       R11 R7 K20 ["enabled"]
       73 JUMPIFNOT                        R11 ; [+3]
       74 GETTABLEKS                       R10 R3 K21 ["ShowClothingOnImage"]
       76 JUMP                             ; [+2]
       77 GETTABLEKS                       R10 R3 K22 ["ShowClothingOffImage"]
       79 SETTABLEKS                       R10 R9 K13 ["Icon"]
       81 GETTABLEKS                       R10 R7 K20 ["enabled"]
       83 SETTABLEKS                       R10 R9 K14 ["Selected"]
       85 GETTABLEKS                       R10 R7 K23 ["toggle"]
       87 SETTABLEKS                       R10 R9 K15 ["OnClick"]
       89 SETLIST                          R8 R9 1 [1]
       91 NEWCLOSURE                       R9 P2
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R1
       95 NEWTABLE                         R10 0 0
       97 MOVE                             R13 R9
       98 LOADK                            R14 K24 ["attachments"]
       99 GETTABLEKS                       R15 R3 K25 ["AttachmentToolImage"]
      101 LOADK                            R18 K2 ["EditingTools"]
      102 LOADK                            R19 K26 ["AttachmentsTool"]
      103 NAMECALL                         R16 R2 K18 ["getText"]
      105 CALL                             R16 3 1
      106 LOADK                            R19 K2 ["EditingTools"]
      107 LOADK                            R20 K27 ["AttachmentsToolDescription"]
      108 NAMECALL                         R17 R2 K18 ["getText"]
      110 CALL                             R17 3 -1
      111 CALL                             R13 -1 1
      112 FASTCALL2                        TABLE_INSERT R10 R13 ; [+4]
      114 MOVE                             R12 R10
      115 GETIMPORT                        R11 K30 [table.insert]
      117 CALL                             R11 2 0
      118 GETUPVAL                         R11 7
      119 DUPTABLE                         R12 K32 [{"avatar"}]
      120 GETTABLEKS                       R13 R0 K31 ["avatar"]
      122 SETTABLEKS                       R13 R12 K31 ["avatar"]
      124 CALL                             R11 1 1
      125 GETUPVAL                         R12 3
      126 GETTABLEKS                       R12 R12 K6 ["useEffect"]
      128 NEWCLOSURE                       R13 P3
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R5
      132 NEWTABLE                         R14 0 2
      134 MOVE                             R15 R4
      135 GETTABLEKS                       R17 R11 K33 ["state"]
      137 JUMPIFNOTEQKS                    R17 K34 ["ok"] ; [+4]
      139 GETTABLEKS                       R16 R11 K33 ["state"]
      141 JUMP                             ; [+1]
      142 LOADNIL                          R16
      143 SETLIST                          R14 R15 2 [1]
      145 CALL                             R12 2 0
      146 GETTABLEKS                       R12 R11 K33 ["state"]
      148 JUMPIFNOTEQKS                    R12 K34 ["ok"] ; [+34]
      150 MOVE                             R14 R9
      151 LOADK                            R15 K35 ["cage"]
      152 GETTABLEKS                       R16 R3 K36 ["CageEditingToolImage"]
      154 LOADK                            R19 K2 ["EditingTools"]
      155 LOADK                            R20 K37 ["CageTool"]
      156 NAMECALL                         R17 R2 K18 ["getText"]
      158 CALL                             R17 3 1
      159 GETTABLEKS                       R19 R11 K38 ["value"]
      161 JUMPIFNOT                        R19 ; [+6]
      162 LOADK                            R20 K2 ["EditingTools"]
      163 LOADK                            R21 K39 ["CageToolDescription"]
      164 NAMECALL                         R18 R2 K18 ["getText"]
      166 CALL                             R18 3 1
      167 JUMP                             ; [+5]
      168 LOADK                            R20 K2 ["EditingTools"]
      169 LOADK                            R21 K40 ["CageToolNoPermissionDescription"]
      170 NAMECALL                         R18 R2 K18 ["getText"]
      172 CALL                             R18 3 1
      173 GETTABLEKS                       R19 R11 K38 ["value"]
      175 CALL                             R14 5 1
      176 FASTCALL2                        TABLE_INSERT R10 R14 ; [+4]
      178 MOVE                             R13 R10
      179 GETIMPORT                        R12 K30 [table.insert]
      181 CALL                             R12 2 0
      182 JUMP                             ; [+22]
      183 MOVE                             R14 R9
      184 LOADK                            R15 K35 ["cage"]
      185 GETTABLEKS                       R16 R3 K36 ["CageEditingToolImage"]
      187 LOADK                            R19 K2 ["EditingTools"]
      188 LOADK                            R20 K37 ["CageTool"]
      189 NAMECALL                         R17 R2 K18 ["getText"]
      191 CALL                             R17 3 1
      192 LOADK                            R20 K2 ["EditingTools"]
      193 LOADK                            R21 K41 ["CageToolCheckingPermissionDescription"]
      194 NAMECALL                         R18 R2 K18 ["getText"]
      196 CALL                             R18 3 1
      197 LOADB                            R19 0
      198 CALL                             R14 5 1
      199 FASTCALL2                        TABLE_INSERT R10 R14 ; [+4]
      201 MOVE                             R13 R10
      202 GETIMPORT                        R12 K30 [table.insert]
      204 CALL                             R12 2 0
      205 LOADB                            R12 0
      206 LENGTH                           R13 R10
      207 LOADN                            R14 0
      208 JUMPIFNOTLT                      R14 R13 ; [+106]
      210 GETUPVAL                         R12 3
      211 GETTABLEKS                       R12 R12 K42 ["createElement"]
      213 GETUPVAL                         R13 3
      214 GETTABLEKS                       R13 R13 K43 ["Fragment"]
      216 NEWTABLE                         R14 0 0
      218 NEWTABLE                         R15 4 0
      220 GETUPVAL                         R16 8
      221 GETTABLEKS                       R16 R16 K44 ["EDITING_TOOLS_GUI_NAMES"]
      223 GETTABLEKS                       R16 R16 K45 ["EditingToolbar"]
      225 GETUPVAL                         R17 3
      226 GETTABLEKS                       R17 R17 K42 ["createElement"]
      228 GETUPVAL                         R18 9
      229 GETTABLEKS                       R18 R18 K46 ["Toolbar"]
      231 DUPTABLE                         R19 K50 [{["InitialPosition"] = "Top", ["VerticalItems"]}]
      232 SETTABLEKS                       R10 R19 K49 ["VerticalItems"]
      234 CALL                             R17 2 1
      235 SETTABLE                         R17 R15 R16
      236 LOADB                            R16 0
      237 JUMPIFEQKS                       R4 K4 ["none"] ; [+38]
      239 JUMPIFNOTEQKS                    R4 K24 ["attachments"] ; [+16]
      241 GETUPVAL                         R16 3
      242 GETTABLEKS                       R16 R16 K42 ["createElement"]
      244 GETUPVAL                         R17 10
      245 DUPTABLE                         R18 K53 [{"worldModel", "additionalToolbarItems"}]
      246 GETTABLEKS                       R19 R0 K31 ["avatar"]
      248 GETTABLEKS                       R19 R19 K54 ["WorldModel"]
      250 SETTABLEKS                       R19 R18 K51 ["worldModel"]
      252 SETTABLEKS                       R8 R18 K52 ["additionalToolbarItems"]
      254 CALL                             R16 2 1
      255 JUMP                             ; [+20]
      256 JUMPIFNOTEQKS                    R4 K35 ["cage"] ; [+16]
      258 GETUPVAL                         R16 3
      259 GETTABLEKS                       R16 R16 K42 ["createElement"]
      261 GETUPVAL                         R17 11
      262 DUPTABLE                         R18 K56 [{"mannequin", "additionalToolbarItems"}]
      263 GETTABLEKS                       R19 R0 K31 ["avatar"]
      265 GETTABLEKS                       R19 R19 K54 ["WorldModel"]
      267 SETTABLEKS                       R19 R18 K55 ["mannequin"]
      269 SETTABLEKS                       R8 R18 K52 ["additionalToolbarItems"]
      271 CALL                             R16 2 1
      272 JUMP                             ; [+3]
      273 GETUPVAL                         R16 12
      274 MOVE                             R17 R4
      275 CALL                             R16 1 1
      276 SETTABLEKS                       R16 R15 K57 ["Tool"]
      278 LOADB                            R16 0
      279 JUMPIFEQKS                       R4 K4 ["none"] ; [+15]
      281 GETUPVAL                         R16 3
      282 GETTABLEKS                       R16 R16 K42 ["createElement"]
      284 GETUPVAL                         R17 13
      285 DUPTABLE                         R18 K59 [{"avatar", "includeAccessories"}]
      286 GETTABLEKS                       R19 R0 K31 ["avatar"]
      288 SETTABLEKS                       R19 R18 K31 ["avatar"]
      290 GETTABLEKS                       R19 R7 K20 ["enabled"]
      292 SETTABLEKS                       R19 R18 K58 ["includeAccessories"]
      294 CALL                             R16 2 1
      295 SETTABLEKS                       R16 R15 K60 ["RepresentEditorStateOnWorldModel"]
      297 LOADB                            R16 0
      298 JUMPIFEQKS                       R4 K4 ["none"] ; [+13]
      300 GETUPVAL                         R16 3
      301 GETTABLEKS                       R16 R16 K42 ["createElement"]
      303 GETUPVAL                         R17 14
      304 DUPTABLE                         R18 K62 [{"dummy"}]
      305 GETTABLEKS                       R19 R0 K31 ["avatar"]
      307 GETTABLEKS                       R19 R19 K54 ["WorldModel"]
      309 SETTABLEKS                       R19 R18 K61 ["dummy"]
      311 CALL                             R16 2 1
      312 SETTABLEKS                       R16 R15 K63 ["BindFocusOnPVInstance"]
      314 CALL                             R12 3 1
      315 RETURN                           R12 1

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
      121 GETTABLEKS                       R15 R1 K27 ["ContextServices"]
      123 GETTABLEKS                       R16 R15 K28 ["Localization"]
      125 GETTABLEKS                       R17 R15 K29 ["Plugin"]
      127 GETTABLEKS                       R18 R15 K30 ["Stylizer"]
      129 DUPCLOSURE                       R19 K31 [PROTO_0]
      130 CAPTURE                          VAL R14
      131 DUPCLOSURE                       R20 K32 [PROTO_8]
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R18
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R12
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R19
      147 RETURN                           R20 1
