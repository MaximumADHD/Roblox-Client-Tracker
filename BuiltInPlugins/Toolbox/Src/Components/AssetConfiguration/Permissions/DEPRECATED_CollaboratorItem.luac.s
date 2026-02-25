PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"Size", "LayoutOrder", "Image", "UseMask", "IsLoadedThumbnail"}]
        5 GETIMPORT                        R4 K9 [UDim2.new]
        7 LOADN                            R5 0
        8 LOADN                            R6 50
        9 LOADN                            R7 0
       10 LOADN                            R8 50
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 GETTABLEKS                       R5 R0 K2 ["LayoutOrder"]
       16 ORK                              R4 R5 K10 [0]
       17 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       19 GETTABLEKS                       R5 R0 K5 ["IsLoadedThumbnail"]
       21 JUMPIFNOT                        R5 ; [+3]
       22 GETTABLEKS                       R4 R0 K11 ["CollaboratorIcon"]
       24 JUMPIF                           R4 ; [+2]
       25 GETTABLEKS                       R4 R0 K12 ["DefaultIcon"]
       27 SETTABLEKS                       R4 R3 K3 ["Image"]
       29 GETTABLEKS                       R4 R0 K4 ["UseMask"]
       31 SETTABLEKS                       R4 R3 K4 ["UseMask"]
       33 GETTABLEKS                       R4 R0 K5 ["IsLoadedThumbnail"]
       35 SETTABLEKS                       R4 R3 K5 ["IsLoadedThumbnail"]
       37 CALL                             R1 2 -1
       38 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["Enabled"]
        5 JUMPIFNOT                        R2 ; [+8]
        6 GETTABLEKS                       R2 R1 K2 ["PermissionChanged"]
        8 JUMPIFNOT                        R2 ; [+5]
        9 GETTABLEKS                       R2 R1 K2 ["PermissionChanged"]
       11 GETTABLEKS                       R3 R0 K3 ["Key"]
       13 CALL                             R2 1 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K4 ["closeDropdown"]
       17 CALL                             R2 0 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K6 [{"Key", "Description", "OnActivated", "Selected", "Title"}]
        5 GETTABLEKS                       R6 R0 K1 ["Key"]
        7 SETTABLEKS                       R6 R5 K1 ["Key"]
        9 GETTABLEKS                       R6 R0 K2 ["Description"]
       11 SETTABLEKS                       R6 R5 K2 ["Description"]
       13 SETTABLEKS                       R2 R5 K3 ["OnActivated"]
       15 GETTABLEKS                       R7 R0 K1 ["Key"]
       17 GETUPVAL                         R10 2
       18 GETTABLEKS                       R9 R10 K7 ["props"]
       20 GETTABLEKS                       R8 R9 K8 ["SelectedItem"]
       22 JUMPIFEQ                         R7 R8 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 SETTABLEKS                       R6 R5 K4 ["Selected"]
       28 GETTABLEKS                       R6 R0 K9 ["Display"]
       30 SETTABLEKS                       R6 R5 K5 ["Title"]
       32 CALL                             R3 2 -1
       33 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showDropdown"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["showDropdown"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showDropdown"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showDropdown"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Enabled"]
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETTABLEKS                       R1 R0 K2 ["Removed"]
        8 JUMPIFNOT                        R1 ; [+3]
        9 GETTABLEKS                       R1 R0 K2 ["Removed"]
       11 CALL                             R1 0 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R3 K1 [require]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R6 R7 K2 ["Src"]
        5 GETTABLEKS                       R5 R6 K3 ["Flags"]
        7 GETTABLEKS                       R4 R5 K4 ["getFFlagAACPermissionsPage"]
        9 CALL                             R3 1 1
       10 CALL                             R3 0 1
       11 NOT                              R2 R3
       12 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       14 LOADK                            R3 K5 ["This component is deprecated by FFlagAACPermissionsPage"]
       15 GETIMPORT                        R1 K7 [assert]
       17 CALL                             R1 2 0
       18 DUPTABLE                         R1 K10 [{"assetFetchStatus", "showDropdown"}]
       19 LOADNIL                          R2
       20 SETTABLEKS                       R2 R1 K8 ["assetFetchStatus"]
       22 LOADB                            R2 0
       23 SETTABLEKS                       R2 R1 K9 ["showDropdown"]
       25 SETTABLEKS                       R1 R0 K11 ["state"]
       27 LOADB                            R1 0
       28 SETTABLEKS                       R1 R0 K12 ["isMounted"]
       30 NEWCLOSURE                       R1 P0
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K13 ["onItemActivated"]
       34 NEWCLOSURE                       R1 P1
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R1 R0 K14 ["onDropdownRenderItem"]
       40 NEWCLOSURE                       R1 P2
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R1 R0 K15 ["openDropdown"]
       44 NEWCLOSURE                       R1 P3
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R1 R0 K16 ["closeDropdown"]
       48 NEWCLOSURE                       R1 P4
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R1 R0 K17 ["onDelete"]
       52 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["isMounted"]
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETUPVAL                         R2 0
        5 DUPTABLE                         R4 K2 [{"assetFetchStatus"}]
        6 SETTABLEKS                       R1 R4 K1 ["assetFetchStatus"]
        8 NAMECALL                         R2 R2 K3 ["setState"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R0 0 1
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["props"]
        5 GETTABLEKS                       R1 R2 K1 ["CollaboratorIcon"]
        7 SETLIST                          R0 R1 1 [1]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U0
       11 GETUPVAL                         R2 1
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 NAMECALL                         R2 R2 K2 ["PreloadAsync"]
       16 CALL                             R2 3 0
       17 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETIMPORT                        R1 K2 [spawn]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_10:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["closeDropdown"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["openDropdown"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Items"]
        6 JUMPIF                           R3 ; [+2]
        7 NEWTABLE                         R3 0 0
        9 SETTABLEKS                       R3 R1 K2 ["Items"]
       11 GETTABLEKS                       R3 R1 K3 ["Removable"]
       13 JUMPIFNOT                        R3 ; [+10]
       14 LOADB                            R3 0
       15 GETTABLEKS                       R5 R1 K2 ["Items"]
       17 LENGTH                           R4 R5
       18 LOADN                            R5 0
       19 JUMPIFNOTLT                      R5 R4 ; [+4]
       21 GETTABLEKS                       R4 R1 K4 ["IsLoading"]
       23 NOT                              R3 R4
       24 GETTABLEKS                       R6 R0 K5 ["state"]
       26 GETTABLEKS                       R5 R6 K6 ["assetFetchStatus"]
       28 GETIMPORT                        R6 K10 [Enum.AssetFetchStatus.Success]
       30 JUMPIFEQ                         R5 R6 ; [+2]
       32 LOADB                            R4 0 +1
       33 LOADB                            R4 1
       34 LOADNIL                          R5
       35 GETTABLEKS                       R6 R1 K11 ["SubjectType"]
       37 GETIMPORT                        R7 K14 [Enum.CreatorType.User]
       39 JUMPIFNOTEQ                      R6 R7 ; [+5]
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R5 R6 K15 ["DEFAULT_USER_THUMBNAIL"]
       44 JUMP                             ; [+3]
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R5 R6 K16 ["DEFAULT_GROUP_THUMBNAIL"]
       48 GETUPVAL                         R7 1
       49 GETTABLEKS                       R6 R7 K17 ["createElement"]
       51 LOADK                            R7 K18 ["Frame"]
       52 DUPTABLE                         R8 K23 [{"Size", "LayoutOrder", "BackgroundTransparency", "BorderSizePixel"}]
       53 GETIMPORT                        R9 K26 [UDim2.new]
       55 LOADN                            R10 1
       56 LOADN                            R11 0
       57 LOADN                            R12 0
       58 LOADN                            R13 60
       59 CALL                             R9 4 1
       60 SETTABLEKS                       R9 R8 K19 ["Size"]
       62 GETTABLEKS                       R10 R1 K20 ["LayoutOrder"]
       64 ORK                              R9 R10 K27 [0]
       65 SETTABLEKS                       R9 R8 K20 ["LayoutOrder"]
       67 LOADN                            R9 1
       68 SETTABLEKS                       R9 R8 K21 ["BackgroundTransparency"]
       70 LOADN                            R9 0
       71 SETTABLEKS                       R9 R8 K22 ["BorderSizePixel"]
       73 DUPTABLE                         R9 K29 [{"Contents"}]
       74 GETUPVAL                         R11 1
       75 GETTABLEKS                       R10 R11 K17 ["createElement"]
       77 LOADK                            R11 K18 ["Frame"]
       78 DUPTABLE                         R12 K31 [{"Size", "BackgroundTransparency", "BackgroundColor3"}]
       79 GETIMPORT                        R13 K26 [UDim2.new]
       81 LOADN                            R14 1
       82 LOADN                            R15 0
       83 LOADN                            R16 1
       84 LOADN                            R17 0
       85 CALL                             R13 4 1
       86 SETTABLEKS                       R13 R12 K19 ["Size"]
       88 LOADN                            R13 1
       89 SETTABLEKS                       R13 R12 K21 ["BackgroundTransparency"]
       91 GETTABLEKS                       R15 R2 K32 ["assetConfig"]
       93 GETTABLEKS                       R14 R15 K33 ["packagePermissions"]
       95 GETTABLEKS                       R13 R14 K34 ["backgroundColor"]
       97 SETTABLEKS                       R13 R12 K30 ["BackgroundColor3"]
       99 DUPTABLE                         R13 K42 [{"Padding", "Icon", "Labels", "DropdownFrame", "Dropdown", "Delete", "Tooltip"}]
      100 GETUPVAL                         R15 1
      101 GETTABLEKS                       R14 R15 K17 ["createElement"]
      103 LOADK                            R15 K43 ["UIPadding"]
      104 DUPTABLE                         R16 K48 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      105 GETIMPORT                        R17 K50 [UDim.new]
      107 LOADN                            R18 0
      108 LOADN                            R19 6
      109 CALL                             R17 2 1
      110 SETTABLEKS                       R17 R16 K44 ["PaddingLeft"]
      112 GETIMPORT                        R17 K50 [UDim.new]
      114 LOADN                            R18 0
      115 LOADN                            R19 6
      116 CALL                             R17 2 1
      117 SETTABLEKS                       R17 R16 K45 ["PaddingRight"]
      119 GETIMPORT                        R17 K50 [UDim.new]
      121 LOADN                            R18 0
      122 LOADN                            R19 10
      123 CALL                             R17 2 1
      124 SETTABLEKS                       R17 R16 K46 ["PaddingTop"]
      126 GETIMPORT                        R17 K50 [UDim.new]
      128 LOADN                            R18 0
      129 LOADN                            R19 10
      130 CALL                             R17 2 1
      131 SETTABLEKS                       R17 R16 K47 ["PaddingBottom"]
      133 CALL                             R14 2 1
      134 SETTABLEKS                       R14 R13 K35 ["Padding"]
      136 LOADB                            R14 0
      137 GETTABLEKS                       R15 R1 K51 ["CollaboratorIcon"]
      139 JUMPIFEQKNIL                     R15 ; [+26]
      141 GETUPVAL                         R15 1
      142 GETTABLEKS                       R14 R15 K17 ["createElement"]
      144 GETUPVAL                         R15 2
      145 DUPTABLE                         R16 K56 [{"LayoutOrder", "Enabled", "UseMask", "CollaboratorIcon", "DefaultIcon", "IsLoadedThumbnail"}]
      146 LOADN                            R17 0
      147 SETTABLEKS                       R17 R16 K20 ["LayoutOrder"]
      149 GETTABLEKS                       R17 R1 K52 ["Enabled"]
      151 SETTABLEKS                       R17 R16 K52 ["Enabled"]
      153 GETTABLEKS                       R17 R1 K53 ["UseMask"]
      155 SETTABLEKS                       R17 R16 K53 ["UseMask"]
      157 GETTABLEKS                       R17 R1 K51 ["CollaboratorIcon"]
      159 SETTABLEKS                       R17 R16 K51 ["CollaboratorIcon"]
      161 SETTABLEKS                       R5 R16 K54 ["DefaultIcon"]
      163 SETTABLEKS                       R4 R16 K55 ["IsLoadedThumbnail"]
      165 CALL                             R14 2 1
      166 SETTABLEKS                       R14 R13 K36 ["Icon"]
      168 GETUPVAL                         R15 1
      169 GETTABLEKS                       R14 R15 K17 ["createElement"]
      171 LOADK                            R15 K18 ["Frame"]
      172 DUPTABLE                         R16 K58 [{"Size", "Position", "LayoutOrder", "BackgroundTransparency"}]
      173 GETIMPORT                        R17 K26 [UDim2.new]
      175 LOADN                            R18 1
      176 LOADN                            R19 222
      177 LOADN                            R20 0
      178 LOADN                            R21 50
      179 CALL                             R17 4 1
      180 SETTABLEKS                       R17 R16 K19 ["Size"]
      182 GETIMPORT                        R17 K26 [UDim2.new]
      184 LOADN                            R18 0
      185 LOADN                            R19 80
      186 LOADN                            R20 0
      187 LOADN                            R21 0
      188 CALL                             R17 4 1
      189 SETTABLEKS                       R17 R16 K57 ["Position"]
      191 GETTABLEKS                       R18 R1 K20 ["LayoutOrder"]
      193 ORK                              R17 R18 K27 [0]
      194 SETTABLEKS                       R17 R16 K20 ["LayoutOrder"]
      196 LOADN                            R17 1
      197 SETTABLEKS                       R17 R16 K21 ["BackgroundTransparency"]
      199 DUPTABLE                         R17 K60 [{"PrimaryLabel"}]
      200 GETUPVAL                         R19 1
      201 GETTABLEKS                       R18 R19 K17 ["createElement"]
      203 LOADK                            R19 K61 ["TextLabel"]
      204 DUPTABLE                         R20 K68 [{"Size", "Text", "TextXAlignment", "Font", "TextSize", "TextColor3", "TextTruncate", "BackgroundTransparency"}]
      205 GETIMPORT                        R21 K26 [UDim2.new]
      207 LOADN                            R22 1
      208 LOADN                            R23 0
      209 GETTABLEKS                       R25 R1 K69 ["SecondaryText"]
      211 JUMPIFNOT                        R25 ; [+2]
      212 LOADK                            R24 K70 [0.5]
      213 JUMP                             ; [+1]
      214 LOADN                            R24 1
      215 LOADN                            R25 0
      216 CALL                             R21 4 1
      217 SETTABLEKS                       R21 R20 K19 ["Size"]
      219 GETTABLEKS                       R22 R1 K72 ["CollaboratorName"]
      221 ORK                              R21 R22 K71 [""]
      222 SETTABLEKS                       R21 R20 K62 ["Text"]
      224 GETIMPORT                        R21 K74 [Enum.TextXAlignment.Left]
      226 SETTABLEKS                       R21 R20 K63 ["TextXAlignment"]
      228 GETUPVAL                         R22 3
      229 GETTABLEKS                       R21 R22 K75 ["FONT"]
      231 SETTABLEKS                       R21 R20 K64 ["Font"]
      233 GETUPVAL                         R22 3
      234 GETTABLEKS                       R21 R22 K76 ["FONT_SIZE_TITLE"]
      236 SETTABLEKS                       R21 R20 K65 ["TextSize"]
      238 GETTABLEKS                       R23 R2 K32 ["assetConfig"]
      240 GETTABLEKS                       R22 R23 K33 ["packagePermissions"]
      242 GETTABLEKS                       R21 R22 K77 ["subTextColor"]
      244 SETTABLEKS                       R21 R20 K66 ["TextColor3"]
      246 GETIMPORT                        R21 K79 [Enum.TextTruncate.AtEnd]
      248 SETTABLEKS                       R21 R20 K67 ["TextTruncate"]
      250 LOADN                            R21 1
      251 SETTABLEKS                       R21 R20 K21 ["BackgroundTransparency"]
      253 CALL                             R18 2 1
      254 SETTABLEKS                       R18 R17 K59 ["PrimaryLabel"]
      256 CALL                             R14 3 1
      257 SETTABLEKS                       R14 R13 K37 ["Labels"]
      259 GETUPVAL                         R15 1
      260 GETTABLEKS                       R14 R15 K17 ["createElement"]
      262 LOADK                            R15 K18 ["Frame"]
      263 DUPTABLE                         R16 K81 [{"AnchorPoint", "BackgroundTransparency", "Position", "Size"}]
      264 GETIMPORT                        R17 K83 [Vector2.new]
      266 LOADN                            R18 1
      267 LOADN                            R19 0
      268 CALL                             R17 2 1
      269 SETTABLEKS                       R17 R16 K80 ["AnchorPoint"]
      271 LOADN                            R17 1
      272 SETTABLEKS                       R17 R16 K21 ["BackgroundTransparency"]
      274 GETIMPORT                        R17 K26 [UDim2.new]
      276 LOADN                            R18 1
      277 LOADN                            R19 176
      278 LOADN                            R20 0
      279 LOADN                            R21 0
      280 CALL                             R17 4 1
      281 SETTABLEKS                       R17 R16 K57 ["Position"]
      283 GETIMPORT                        R17 K26 [UDim2.new]
      285 LOADN                            R18 0
      286 LOADN                            R19 120
      287 LOADN                            R20 0
      288 LOADN                            R21 50
      289 CALL                             R17 4 1
      290 SETTABLEKS                       R17 R16 K19 ["Size"]
      292 DUPTABLE                         R17 K84 [{"Dropdown"}]
      293 GETUPVAL                         R19 1
      294 GETTABLEKS                       R18 R19 K17 ["createElement"]
      296 GETUPVAL                         R19 4
      297 DUPTABLE                         R20 K90 [{"Hide", "OnFocusLost", "Items", "OnItemActivated", "OnRenderItem", "Width"}]
      298 GETTABLEKS                       R22 R1 K52 ["Enabled"]
      300 JUMPIFNOT                        R22 ; [+8]
      301 GETTABLEKS                       R24 R1 K2 ["Items"]
      303 LENGTH                           R23 R24
      304 LOADN                            R24 0
      305 JUMPIFLT                         R24 R23 ; [+2]
      307 LOADB                            R22 0 +1
      308 LOADB                            R22 1
      309 NOT                              R21 R22
      310 JUMPIF                           R21 ; [+5]
      311 GETTABLEKS                       R23 R0 K5 ["state"]
      313 GETTABLEKS                       R22 R23 K91 ["showDropdown"]
      315 NOT                              R21 R22
      316 SETTABLEKS                       R21 R20 K85 ["Hide"]
      318 NEWCLOSURE                       R21 P0
      319 CAPTURE                          VAL R0
      320 SETTABLEKS                       R21 R20 K86 ["OnFocusLost"]
      322 GETTABLEKS                       R21 R1 K2 ["Items"]
      324 SETTABLEKS                       R21 R20 K2 ["Items"]
      326 GETTABLEKS                       R21 R0 K92 ["onItemActivated"]
      328 SETTABLEKS                       R21 R20 K87 ["OnItemActivated"]
      330 GETTABLEKS                       R21 R0 K93 ["onDropdownRenderItem"]
      332 SETTABLEKS                       R21 R20 K88 ["OnRenderItem"]
      334 LOADN                            R21 44
      335 SETTABLEKS                       R21 R20 K89 ["Width"]
      337 CALL                             R18 2 1
      338 SETTABLEKS                       R18 R17 K39 ["Dropdown"]
      340 CALL                             R14 3 1
      341 SETTABLEKS                       R14 R13 K38 ["DropdownFrame"]
      343 GETUPVAL                         R15 1
      344 GETTABLEKS                       R14 R15 K17 ["createElement"]
      346 GETUPVAL                         R15 5
      347 DUPTABLE                         R16 K97 [{"Disabled", "RightIcon", "Text", "OnClick", "AnchorPoint", "Position", "Size"}]
      348 GETTABLEKS                       R18 R1 K52 ["Enabled"]
      350 JUMPIFNOT                        R18 ; [+8]
      351 GETTABLEKS                       R20 R1 K2 ["Items"]
      353 LENGTH                           R19 R20
      354 LOADN                            R20 0
      355 JUMPIFLT                         R20 R19 ; [+2]
      357 LOADB                            R18 0 +1
      358 LOADB                            R18 1
      359 NOT                              R17 R18
      360 SETTABLEKS                       R17 R16 K94 ["Disabled"]
      362 LOADK                            R17 K98 ["rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png"]
      363 SETTABLEKS                       R17 R16 K95 ["RightIcon"]
      365 GETTABLEKS                       R17 R1 K99 ["Action"]
      367 SETTABLEKS                       R17 R16 K62 ["Text"]
      369 NEWCLOSURE                       R17 P1
      370 CAPTURE                          VAL R0
      371 SETTABLEKS                       R17 R16 K96 ["OnClick"]
      373 GETIMPORT                        R17 K83 [Vector2.new]
      375 LOADN                            R18 1
      376 LOADN                            R19 0
      377 CALL                             R17 2 1
      378 SETTABLEKS                       R17 R16 K80 ["AnchorPoint"]
      380 GETIMPORT                        R17 K26 [UDim2.new]
      382 LOADN                            R18 1
      383 LOADN                            R19 176
      384 LOADN                            R20 0
      385 LOADN                            R21 0
      386 CALL                             R17 4 1
      387 SETTABLEKS                       R17 R16 K57 ["Position"]
      389 GETIMPORT                        R17 K26 [UDim2.new]
      391 LOADN                            R18 0
      392 LOADN                            R19 120
      393 LOADN                            R20 0
      394 LOADN                            R21 50
      395 CALL                             R17 4 1
      396 SETTABLEKS                       R17 R16 K19 ["Size"]
      398 DUPTABLE                         R17 K101 [{"TextPadding"}]
      399 GETUPVAL                         R19 1
      400 GETTABLEKS                       R18 R19 K17 ["createElement"]
      402 LOADK                            R19 K43 ["UIPadding"]
      403 DUPTABLE                         R20 K102 [{"PaddingLeft"}]
      404 GETIMPORT                        R21 K50 [UDim.new]
      406 LOADN                            R22 0
      407 LOADN                            R23 4
      408 CALL                             R21 2 1
      409 SETTABLEKS                       R21 R20 K44 ["PaddingLeft"]
      411 CALL                             R18 2 1
      412 SETTABLEKS                       R18 R17 K100 ["TextPadding"]
      414 CALL                             R14 3 1
      415 SETTABLEKS                       R14 R13 K39 ["Dropdown"]
      417 MOVE                             R14 R3
      418 JUMPIFNOT                        R14 ; [+53]
      419 GETUPVAL                         R15 1
      420 GETTABLEKS                       R14 R15 K17 ["createElement"]
      422 GETUPVAL                         R15 5
      423 DUPTABLE                         R16 K106 [{"AnchorPoint", "BackgroundStyle", "IconColor", "LeftIcon", "OnClick", "Position", "Size"}]
      424 GETIMPORT                        R17 K83 [Vector2.new]
      426 LOADN                            R18 1
      427 LOADN                            R19 0
      428 CALL                             R17 2 1
      429 SETTABLEKS                       R17 R16 K80 ["AnchorPoint"]
      431 LOADK                            R17 K107 ["RoundBox"]
      432 SETTABLEKS                       R17 R16 K103 ["BackgroundStyle"]
      434 GETTABLEKS                       R20 R2 K32 ["assetConfig"]
      436 GETTABLEKS                       R19 R20 K33 ["packagePermissions"]
      438 GETTABLEKS                       R18 R19 K108 ["collaboratorItem"]
      440 GETTABLEKS                       R17 R18 K109 ["deleteButton"]
      442 SETTABLEKS                       R17 R16 K104 ["IconColor"]
      444 GETUPVAL                         R18 0
      445 GETTABLEKS                       R17 R18 K110 ["CLOSE_ICON"]
      447 SETTABLEKS                       R17 R16 K105 ["LeftIcon"]
      449 GETTABLEKS                       R17 R0 K111 ["onDelete"]
      451 SETTABLEKS                       R17 R16 K96 ["OnClick"]
      453 GETIMPORT                        R17 K26 [UDim2.new]
      455 LOADN                            R18 1
      456 LOADN                            R19 0
      457 LOADN                            R20 0
      458 LOADN                            R21 0
      459 CALL                             R17 4 1
      460 SETTABLEKS                       R17 R16 K57 ["Position"]
      462 GETIMPORT                        R17 K26 [UDim2.new]
      464 LOADN                            R18 0
      465 LOADN                            R19 50
      466 LOADN                            R20 0
      467 LOADN                            R21 50
      468 CALL                             R17 4 1
      469 SETTABLEKS                       R17 R16 K19 ["Size"]
      471 CALL                             R14 2 1
      472 SETTABLEKS                       R14 R13 K40 ["Delete"]
      474 GETTABLEKS                       R14 R1 K112 ["TooltipText"]
      476 JUMPIFNOT                        R14 ; [+10]
      477 GETUPVAL                         R15 1
      478 GETTABLEKS                       R14 R15 K17 ["createElement"]
      480 GETUPVAL                         R15 6
      481 DUPTABLE                         R16 K113 [{"Text"}]
      482 GETTABLEKS                       R17 R1 K112 ["TooltipText"]
      484 SETTABLEKS                       R17 R16 K62 ["Text"]
      486 CALL                             R14 2 1
      487 SETTABLEKS                       R14 R13 K41 ["Tooltip"]
      489 CALL                             R10 3 1
      490 SETTABLEKS                       R10 R9 K28 ["Contents"]
      492 CALL                             R6 3 -1
      493 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R5 K1 [script]
        3 GETTABLEKS                       R4 R5 K2 ["Parent"]
        5 GETTABLEKS                       R3 R4 K2 ["Parent"]
        7 GETTABLEKS                       R2 R3 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETTABLEKS                       R0 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R0 K3 ["Packages"]
       15 GETIMPORT                        R2 K5 [require]
       17 GETTABLEKS                       R3 R1 K6 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R1 K7 ["Framework"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R5 R3 K8 ["UI"]
       27 GETTABLEKS                       R4 R5 K9 ["DropdownMenu"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R10 R0 K10 ["Src"]
       33 GETTABLEKS                       R9 R10 K11 ["Components"]
       35 GETTABLEKS                       R8 R9 K12 ["AssetConfiguration"]
       37 GETTABLEKS                       R7 R8 K13 ["Permissions"]
       39 GETTABLEKS                       R6 R7 K14 ["DetailedDropdownItem"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R7 R3 K8 ["UI"]
       44 GETTABLEKS                       R6 R7 K15 ["IconButton"]
       46 GETTABLEKS                       R8 R3 K8 ["UI"]
       48 GETTABLEKS                       R7 R8 K16 ["Tooltip"]
       50 GETTABLEKS                       R9 R0 K10 ["Src"]
       52 GETTABLEKS                       R8 R9 K17 ["Util"]
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R10 R8 K18 ["Images"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K5 [require]
       61 GETTABLEKS                       R11 R8 K19 ["Constants"]
       63 CALL                             R10 1 1
       64 GETTABLEKS                       R14 R0 K10 ["Src"]
       66 GETTABLEKS                       R13 R14 K11 ["Components"]
       68 GETTABLEKS                       R12 R13 K12 ["AssetConfiguration"]
       70 GETTABLEKS                       R11 R12 K13 ["Permissions"]
       72 GETIMPORT                        R12 K5 [require]
       74 GETTABLEKS                       R13 R11 K20 ["CollaboratorThumbnail"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K22 [game]
       79 LOADK                            R15 K23 ["ContentProvider"]
       80 NAMECALL                         R13 R13 K24 ["GetService"]
       82 CALL                             R13 2 1
       83 GETTABLEKS                       R14 R3 K25 ["ContextServices"]
       85 GETTABLEKS                       R15 R14 K26 ["withContext"]
       87 GETTABLEKS                       R16 R2 K27 ["PureComponent"]
       89 LOADK                            R18 K28 ["CollaboratorItem"]
       90 NAMECALL                         R16 R16 K29 ["extend"]
       92 CALL                             R16 2 1
       93 DUPCLOSURE                       R17 K30 [PROTO_0]
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R12
       96 DUPCLOSURE                       R18 K31 [PROTO_6]
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R5
      100 SETTABLEKS                       R18 R16 K32 ["init"]
      102 DUPCLOSURE                       R18 K33 [PROTO_9]
      103 CAPTURE                          VAL R13
      104 SETTABLEKS                       R18 R16 K34 ["didMount"]
      106 DUPCLOSURE                       R18 K35 [PROTO_10]
      107 SETTABLEKS                       R18 R16 K36 ["willUnmount"]
      109 DUPCLOSURE                       R18 K37 [PROTO_13]
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R17
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R7
      117 SETTABLEKS                       R18 R16 K38 ["render"]
      119 MOVE                             R18 R15
      120 DUPTABLE                         R19 K40 [{"Stylizer"}]
      121 GETTABLEKS                       R20 R14 K39 ["Stylizer"]
      123 SETTABLEKS                       R20 R19 K39 ["Stylizer"]
      125 CALL                             R18 1 1
      126 MOVE                             R19 R16
      127 CALL                             R18 1 1
      128 MOVE                             R16 R18
      129 RETURN                           R16 1
