PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["https://create.roblox.com/dashboard/creations/experiences/"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["Id"]
        5 LOADK                            R5 K2 ["/configure"]
        6 CONCAT                           R2 R3 R5
        7 NAMECALL                         R0 R0 K3 ["openLink"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["showPlaces"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["https://create.roblox.com/dashboard/creations/experiences/"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["Id"]
        5 LOADK                            R5 K2 ["/places/"]
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K3 ["RootPlaceId"]
        9 LOADK                            R7 K4 ["/configure"]
       10 CONCAT                           R2 R3 R7
       11 NAMECALL                         R0 R0 K5 ["openLink"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["https://www.roblox.com/games/"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["RootPlaceId"]
        5 CONCAT                           R2 R3 R4
        6 NAMECALL                         R0 R0 K2 ["openLink"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["RootPlaceId"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Id"]
        7 LOADB                            R4 0
        8 LOADB                            R5 0
        9 LOADB                            R6 1
       10 NAMECALL                         R0 R0 K2 ["openPlace"]
       12 CALL                             R0 6 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Id"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["PrivacyType"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Id"]
        4 LOADB                            R2 1
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K0 ["Id"]
       10 NAMECALL                         R0 R0 K1 ["removeAPIGameFromRegistry"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Id"]
        4 LOADB                            R2 0
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Id"]
        4 GETUPVAL                         R2 2
        5 NAMECALL                         R2 R2 K1 ["GetUserId"]
        7 CALL                             R2 1 -1
        8 CALL                             R0 -1 0
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K0 ["Id"]
       13 NAMECALL                         R0 R0 K2 ["removeAPIGameFromRegistry"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FilePath"]
        3 JUMPIFNOT                        R0 ; [+15]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["FilePath"]
        8 NAMECALL                         R0 R0 K1 ["deleteItem"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 2
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["FilePath"]
       15 NAMECALL                         R0 R0 K2 ["removeLocalFileFromRegistry"]
       17 CALL                             R0 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R0 0
       20 GETTABLEKS                       R0 R0 K3 ["Id"]
       22 JUMPIFNOT                        R0 ; [+18]
       23 GETUPVAL                         R0 1
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K3 ["Id"]
       27 FASTCALL1                        TOSTRING R3 ; [+2]
       28 GETIMPORT                        R2 K5 [tostring]
       30 CALL                             R2 1 1
       31 NAMECALL                         R0 R0 K1 ["deleteItem"]
       33 CALL                             R0 2 0
       34 GETUPVAL                         R0 2
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R2 R2 K3 ["Id"]
       38 NAMECALL                         R0 R0 K6 ["removeAPIGameFromRegistry"]
       40 CALL                             R0 2 0
       41 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Id"]
        4 LOADB                            R2 0
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R4 R0 K0 ["IsPlaceholder"]
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        5 LOADK                            R4 K1 ["Cell should not be a placeholder here"]
        6 GETIMPORT                        R2 K3 [assert]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R2 0
       10 NAMECALL                         R2 R2 K4 ["use"]
       12 CALL                             R2 1 1
       13 DUPTABLE                         R3 K17 [{"ConfigureExperience", "ViewPlaces", "ConfigurePlace", "OpenPlace", "OpenACopy", "SaveAs", "PublicPrivateToggle", "Archive", "RestoreArchive", "RemoveShared", "RemoveRecent", "DisableTeamCreate"}]
       14 GETTABLEKS                       R5 R0 K18 ["Id"]
       16 JUMPIFNOT                        R5 ; [+14]
       17 DUPTABLE                         R4 K21 [{"Label", "Action"}]
       18 LOADK                            R7 K22 ["Plugin"]
       19 LOADK                            R8 K5 ["ConfigureExperience"]
       20 NAMECALL                         R5 R2 K23 ["getText"]
       22 CALL                             R5 3 1
       23 SETTABLEKS                       R5 R4 K19 ["Label"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R5 R4 K20 ["Action"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R4
       32 SETTABLEKS                       R4 R3 K5 ["ConfigureExperience"]
       34 GETUPVAL                         R5 2
       35 JUMPIFNOT                        R5 ; [+20]
       36 GETTABLEKS                       R5 R0 K18 ["Id"]
       38 JUMPIFNOT                        R5 ; [+17]
       39 GETTABLEKS                       R5 R0 K24 ["RootPlaceId"]
       41 JUMPIFNOT                        R5 ; [+14]
       42 DUPTABLE                         R4 K21 [{"Label", "Action"}]
       43 LOADK                            R7 K22 ["Plugin"]
       44 LOADK                            R8 K25 ["PlaceDialog.ViewPlaces"]
       45 NAMECALL                         R5 R2 K23 ["getText"]
       47 CALL                             R5 3 1
       48 SETTABLEKS                       R5 R4 K19 ["Label"]
       50 NEWCLOSURE                       R5 P1
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R5 R4 K20 ["Action"]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R4
       57 SETTABLEKS                       R4 R3 K6 ["ViewPlaces"]
       59 GETTABLEKS                       R5 R0 K18 ["Id"]
       61 JUMPIFNOT                        R5 ; [+17]
       62 GETTABLEKS                       R5 R0 K24 ["RootPlaceId"]
       64 JUMPIFNOT                        R5 ; [+14]
       65 DUPTABLE                         R4 K21 [{"Label", "Action"}]
       66 LOADK                            R7 K22 ["Plugin"]
       67 LOADK                            R8 K7 ["ConfigurePlace"]
       68 NAMECALL                         R5 R2 K23 ["getText"]
       70 CALL                             R5 3 1
       71 SETTABLEKS                       R5 R4 K19 ["Label"]
       73 NEWCLOSURE                       R5 P2
       74 CAPTURE                          UPVAL U1
       75 CAPTURE                          VAL R0
       76 SETTABLEKS                       R5 R4 K20 ["Action"]
       78 JUMP                             ; [+1]
       79 LOADNIL                          R4
       80 SETTABLEKS                       R4 R3 K7 ["ConfigurePlace"]
       82 GETTABLEKS                       R5 R0 K24 ["RootPlaceId"]
       84 JUMPIFNOT                        R5 ; [+14]
       85 DUPTABLE                         R4 K21 [{"Label", "Action"}]
       86 LOADK                            R7 K22 ["Plugin"]
       87 LOADK                            R8 K26 ["OpenPlacePage"]
       88 NAMECALL                         R5 R2 K23 ["getText"]
       90 CALL                             R5 3 1
       91 SETTABLEKS                       R5 R4 K19 ["Label"]
       93 NEWCLOSURE                       R5 P3
       94 CAPTURE                          UPVAL U1
       95 CAPTURE                          VAL R0
       96 SETTABLEKS                       R5 R4 K20 ["Action"]
       98 JUMP                             ; [+1]
       99 LOADNIL                          R4
      100 SETTABLEKS                       R4 R3 K8 ["OpenPlace"]
      102 GETUPVAL                         R5 3
      103 JUMPIFNOT                        R5 ; [+20]
      104 GETTABLEKS                       R5 R0 K27 ["IsTeamCreateEnabled"]
      106 JUMPIFNOT                        R5 ; [+17]
      107 GETTABLEKS                       R5 R0 K24 ["RootPlaceId"]
      109 JUMPIFNOT                        R5 ; [+14]
      110 DUPTABLE                         R4 K21 [{"Label", "Action"}]
      111 LOADK                            R7 K22 ["Plugin"]
      112 LOADK                            R8 K9 ["OpenACopy"]
      113 NAMECALL                         R5 R2 K23 ["getText"]
      115 CALL                             R5 3 1
      116 SETTABLEKS                       R5 R4 K19 ["Label"]
      118 NEWCLOSURE                       R5 P4
      119 CAPTURE                          UPVAL U1
      120 CAPTURE                          VAL R0
      121 SETTABLEKS                       R5 R4 K20 ["Action"]
      123 JUMP                             ; [+1]
      124 LOADNIL                          R4
      125 SETTABLEKS                       R4 R3 K9 ["OpenACopy"]
      127 GETUPVAL                         R5 4
      128 JUMPIFNOT                        R5 ; [+20]
      129 GETTABLEKS                       R5 R0 K18 ["Id"]
      131 JUMPIFNOT                        R5 ; [+17]
      132 GETTABLEKS                       R5 R0 K27 ["IsTeamCreateEnabled"]
      134 JUMPIFNOT                        R5 ; [+14]
      135 DUPTABLE                         R4 K21 [{"Label", "Action"}]
      136 LOADK                            R7 K22 ["Plugin"]
      137 LOADK                            R8 K10 ["SaveAs"]
      138 NAMECALL                         R5 R2 K23 ["getText"]
      140 CALL                             R5 3 1
      141 SETTABLEKS                       R5 R4 K19 ["Label"]
      143 NEWCLOSURE                       R5 P5
      144 CAPTURE                          UPVAL U5
      145 CAPTURE                          VAL R0
      146 SETTABLEKS                       R5 R4 K20 ["Action"]
      148 JUMP                             ; [+1]
      149 LOADNIL                          R4
      150 SETTABLEKS                       R4 R3 K10 ["SaveAs"]
      152 GETUPVAL                         R5 6
      153 JUMPIF                           R5 ; [+44]
      154 GETUPVAL                         R5 7
      155 JUMPIF                           R5 ; [+42]
      156 GETTABLEKS                       R5 R0 K18 ["Id"]
      158 JUMPIFNOT                        R5 ; [+39]
      159 GETTABLEKS                       R5 R0 K28 ["PrivacyType"]
      161 JUMPIFNOT                        R5 ; [+36]
      162 GETTABLEKS                       R5 R0 K28 ["PrivacyType"]
      164 JUMPIFEQKS                       R5 K29 ["Draft"] ; [+33]
      166 DUPTABLE                         R4 K21 [{"Label", "Action"}]
      167 LOADK                            R7 K22 ["Plugin"]
      168 LOADK                            R8 K30 ["SetPrivacy"]
      169 DUPTABLE                         R9 K32 [{"privacy"}]
      170 GETTABLEKS                       R11 R0 K28 ["PrivacyType"]
      172 JUMPIFNOTEQKS                    R11 K33 ["Public"] ; [+7]
      174 LOADK                            R12 K22 ["Plugin"]
      175 LOADK                            R13 K34 ["PrivacyType.Private"]
      176 NAMECALL                         R10 R2 K23 ["getText"]
      178 CALL                             R10 3 1
      179 JUMP                             ; [+5]
      180 LOADK                            R12 K22 ["Plugin"]
      181 LOADK                            R13 K35 ["PrivacyType.Public"]
      182 NAMECALL                         R10 R2 K23 ["getText"]
      184 CALL                             R10 3 1
      185 SETTABLEKS                       R10 R9 K31 ["privacy"]
      187 NAMECALL                         R5 R2 K23 ["getText"]
      189 CALL                             R5 4 1
      190 SETTABLEKS                       R5 R4 K19 ["Label"]
      192 NEWCLOSURE                       R5 P6
      193 CAPTURE                          UPVAL U8
      194 CAPTURE                          VAL R0
      195 SETTABLEKS                       R5 R4 K20 ["Action"]
      197 JUMP                             ; [+1]
      198 LOADNIL                          R4
      199 SETTABLEKS                       R4 R3 K11 ["PublicPrivateToggle"]
      201 GETTABLEKS                       R5 R0 K18 ["Id"]
      203 JUMPIFNOT                        R5 ; [+15]
      204 DUPTABLE                         R4 K21 [{"Label", "Action"}]
      205 LOADK                            R7 K22 ["Plugin"]
      206 LOADK                            R8 K12 ["Archive"]
      207 NAMECALL                         R5 R2 K23 ["getText"]
      209 CALL                             R5 3 1
      210 SETTABLEKS                       R5 R4 K19 ["Label"]
      212 NEWCLOSURE                       R5 P7
      213 CAPTURE                          UPVAL U9
      214 CAPTURE                          VAL R0
      215 CAPTURE                          UPVAL U1
      216 SETTABLEKS                       R5 R4 K20 ["Action"]
      218 JUMP                             ; [+1]
      219 LOADNIL                          R4
      220 SETTABLEKS                       R4 R3 K12 ["Archive"]
      222 GETTABLEKS                       R5 R0 K18 ["Id"]
      224 JUMPIFNOT                        R5 ; [+14]
      225 DUPTABLE                         R4 K21 [{"Label", "Action"}]
      226 LOADK                            R7 K22 ["Plugin"]
      227 LOADK                            R8 K36 ["Restore"]
      228 NAMECALL                         R5 R2 K23 ["getText"]
      230 CALL                             R5 3 1
      231 SETTABLEKS                       R5 R4 K19 ["Label"]
      233 NEWCLOSURE                       R5 P8
      234 CAPTURE                          UPVAL U9
      235 CAPTURE                          VAL R0
      236 SETTABLEKS                       R5 R4 K20 ["Action"]
      238 JUMP                             ; [+1]
      239 LOADNIL                          R4
      240 SETTABLEKS                       R4 R3 K13 ["RestoreArchive"]
      242 GETTABLEKS                       R5 R0 K18 ["Id"]
      244 JUMPIFNOT                        R5 ; [+16]
      245 DUPTABLE                         R4 K21 [{"Label", "Action"}]
      246 LOADK                            R7 K22 ["Plugin"]
      247 LOADK                            R8 K37 ["Remove"]
      248 NAMECALL                         R5 R2 K23 ["getText"]
      250 CALL                             R5 3 1
      251 SETTABLEKS                       R5 R4 K19 ["Label"]
      253 NEWCLOSURE                       R5 P9
      254 CAPTURE                          UPVAL U10
      255 CAPTURE                          VAL R0
      256 CAPTURE                          UPVAL U11
      257 CAPTURE                          UPVAL U1
      258 SETTABLEKS                       R5 R4 K20 ["Action"]
      260 JUMP                             ; [+1]
      261 LOADNIL                          R4
      262 SETTABLEKS                       R4 R3 K14 ["RemoveShared"]
      264 GETTABLEKS                       R5 R0 K18 ["Id"]
      266 JUMPIF                           R5 ; [+3]
      267 GETTABLEKS                       R5 R0 K38 ["FilePath"]
      269 JUMPIFNOT                        R5 ; [+15]
      270 DUPTABLE                         R4 K21 [{"Label", "Action"}]
      271 LOADK                            R7 K22 ["Plugin"]
      272 LOADK                            R8 K39 ["RemoveFromList"]
      273 NAMECALL                         R5 R2 K23 ["getText"]
      275 CALL                             R5 3 1
      276 SETTABLEKS                       R5 R4 K19 ["Label"]
      278 NEWCLOSURE                       R5 P10
      279 CAPTURE                          VAL R0
      280 CAPTURE                          UPVAL U12
      281 CAPTURE                          UPVAL U1
      282 SETTABLEKS                       R5 R4 K20 ["Action"]
      284 JUMP                             ; [+1]
      285 LOADNIL                          R4
      286 SETTABLEKS                       R4 R3 K15 ["RemoveRecent"]
      288 GETUPVAL                         R5 13
      289 JUMPIFNOT                        R5 ; [+20]
      290 GETTABLEKS                       R5 R0 K18 ["Id"]
      292 JUMPIFNOT                        R5 ; [+17]
      293 GETTABLEKS                       R5 R0 K27 ["IsTeamCreateEnabled"]
      295 JUMPIFNOT                        R5 ; [+14]
      296 DUPTABLE                         R4 K21 [{"Label", "Action"}]
      297 LOADK                            R7 K22 ["Plugin"]
      298 LOADK                            R8 K16 ["DisableTeamCreate"]
      299 NAMECALL                         R5 R2 K23 ["getText"]
      301 CALL                             R5 3 1
      302 SETTABLEKS                       R5 R4 K19 ["Label"]
      304 NEWCLOSURE                       R5 P11
      305 CAPTURE                          UPVAL U14
      306 CAPTURE                          VAL R0
      307 SETTABLEKS                       R5 R4 K20 ["Action"]
      309 JUMP                             ; [+1]
      310 LOADNIL                          R4
      311 SETTABLEKS                       R4 R3 K16 ["DisableTeamCreate"]
      313 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 GETTABLEKS                       R0 R0 K0 ["Action"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["OnItemActivated"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["MenuContainerSizeChanged"]
        3 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_15:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["useContext"]
        6 GETUPVAL                         R3 2
        7 CALL                             R2 1 1
        8 MOVE                             R1 R2
        9 NEWTABLE                         R2 0 0
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R4 R0 K1 ["Cell"]
       14 MOVE                             R5 R1
       15 CALL                             R3 2 1
       16 GETTABLEKS                       R4 R0 K2 ["KebabMenu"]
       18 JUMPIFNOT                        R4 ; [+62]
       19 GETTABLEKS                       R5 R0 K2 ["KebabMenu"]
       21 LENGTH                           R4 R5
       22 LOADN                            R5 0
       23 JUMPIFNOTLT                      R5 R4 ; [+57]
       25 GETTABLEKS                       R4 R0 K2 ["KebabMenu"]
       27 LOADNIL                          R5
       28 LOADNIL                          R6
       29 FORGPREP                         R4
       30 JUMPIFEQKS                       R8 K3 [""] ; [+48]
       32 GETTABLE                         R9 R3 R8
       33 JUMPIFNOT                        R9 ; [+45]
       34 MOVE                             R10 R2
       35 GETUPVAL                         R11 1
       36 GETTABLEKS                       R11 R11 K4 ["createElement"]
       38 LOADK                            R12 K5 ["TextButton"]
       39 NEWTABLE                         R13 8 0
       41 GETIMPORT                        R14 K8 [UDim2.new]
       43 LOADN                            R15 0
       44 LOADN                            R16 153
       45 LOADN                            R17 0
       46 LOADN                            R18 28
       47 CALL                             R14 4 1
       48 SETTABLEKS                       R14 R13 K9 ["Size"]
       50 GETTABLE                         R14 R3 R8
       51 GETTABLEKS                       R14 R14 K10 ["Label"]
       53 SETTABLEKS                       R14 R13 K11 ["Text"]
       55 GETIMPORT                        R14 K15 [Enum.TextXAlignment.Left]
       57 SETTABLEKS                       R14 R13 K13 ["TextXAlignment"]
       59 GETUPVAL                         R14 1
       60 GETTABLEKS                       R14 R14 K16 ["Event"]
       62 GETTABLEKS                       R14 R14 K17 ["Activated"]
       64 NEWCLOSURE                       R15 P0
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R0
       68 SETTABLE                         R15 R13 R14
       69 GETUPVAL                         R14 1
       70 GETTABLEKS                       R14 R14 K18 ["Tag"]
       72 LOADK                            R15 K19 ["X-Fit StartPage-TextColor StartPage-ContextMenuBackground StartPage-RoundedCorner8 StartPage-ContextMenuRowPadding StartPage-Font StartPage-TextSize"]
       73 SETTABLE                         R15 R13 R14
       74 CALL                             R11 2 -1
       75 FASTCALL                         TABLE_INSERT ; [+2]
       76 GETIMPORT                        R9 K22 [table.insert]
       78 CALL                             R9 -1 0
       79 FORGLOOP                         R4 2 ; [-50]
       81 GETUPVAL                         R4 1
       82 GETTABLEKS                       R4 R4 K4 ["createElement"]
       84 LOADK                            R5 K23 ["Frame"]
       85 NEWTABLE                         R6 4 0
       87 GETTABLEKS                       R7 R0 K24 ["Position"]
       89 SETTABLEKS                       R7 R6 K24 ["Position"]
       91 GETTABLEKS                       R8 R0 K25 ["Hide"]
       93 NOT                              R7 R8
       94 SETTABLEKS                       R7 R6 K26 ["Visible"]
       96 GETUPVAL                         R7 1
       97 GETTABLEKS                       R7 R7 K27 ["Change"]
       99 GETTABLEKS                       R7 R7 K28 ["AbsoluteSize"]
      101 NEWCLOSURE                       R8 P1
      102 CAPTURE                          VAL R0
      103 SETTABLE                         R8 R6 R7
      104 GETUPVAL                         R7 1
      105 GETTABLEKS                       R7 R7 K18 ["Tag"]
      107 GETUPVAL                         R9 4
      108 JUMPIFNOT                        R9 ; [+8]
      109 GETUPVAL                         R8 5
      110 LOADK                            R9 K29 ["X-Column X-Fit StartPage-ContextMenuBackground StartPage-RoundedCorner8 StartPage-ContextMenuPadding"]
      111 GETUPVAL                         R11 1
      112 GETTABLEKS                       R11 R11 K18 ["Tag"]
      114 GETTABLE                         R10 R0 R11
      115 CALL                             R8 2 1
      116 JUMP                             ; [+1]
      117 LOADK                            R8 K29 ["X-Column X-Fit StartPage-ContextMenuBackground StartPage-RoundedCorner8 StartPage-ContextMenuPadding"]
      118 SETTABLE                         R8 R6 R7
      119 MOVE                             R7 R2
      120 CALL                             R4 3 -1
      121 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Services"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["StartPageManager"]
       25 GETTABLEKS                       R4 R2 K12 ["StudioService"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K8 ["Src"]
       31 GETTABLEKS                       R6 R6 K13 ["Network"]
       33 GETTABLEKS                       R6 R6 K14 ["ChangeUniverseActivity"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K8 ["Src"]
       40 GETTABLEKS                       R7 R7 K13 ["Network"]
       42 GETTABLEKS                       R7 R7 K15 ["ChangeArchiveConfiguration"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K8 ["Src"]
       49 GETTABLEKS                       R8 R8 K13 ["Network"]
       51 GETTABLEKS                       R8 R8 K16 ["DeleteUserFromTeamCreateUniverse"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K8 ["Src"]
       58 GETTABLEKS                       R9 R9 K13 ["Network"]
       60 GETTABLEKS                       R9 R9 K17 ["ChangeTeamCreateEnabled"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K8 ["Src"]
       67 GETTABLEKS                       R10 R10 K13 ["Network"]
       69 GETTABLEKS                       R10 R10 K18 ["SaveExperienceAsCopy"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K8 ["Src"]
       76 GETTABLEKS                       R11 R11 K13 ["Network"]
       78 GETTABLEKS                       R11 R11 K19 ["GameCache"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K8 ["Src"]
       85 GETTABLEKS                       R12 R12 K9 ["Util"]
       87 GETTABLEKS                       R12 R12 K20 ["Dialogs"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K8 ["Src"]
       94 GETTABLEKS                       R13 R13 K21 ["SharedFlags"]
       96 GETTABLEKS                       R13 R13 K22 ["getFFlagLuaStartPageHidePublicPrivateToggle"]
       98 CALL                             R12 1 1
       99 CALL                             R12 0 1
      100 GETIMPORT                        R13 K5 [require]
      102 GETTABLEKS                       R14 R0 K8 ["Src"]
      104 GETTABLEKS                       R14 R14 K21 ["SharedFlags"]
      106 GETTABLEKS                       R14 R14 K23 ["getFFlagLuaStartPageAudiencesReplacement"]
      108 CALL                             R13 1 1
      109 CALL                             R13 0 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R15 R0 K8 ["Src"]
      114 GETTABLEKS                       R15 R15 K21 ["SharedFlags"]
      116 GETTABLEKS                       R15 R15 K24 ["getFFlagStartPageAllowDisableTeamCreate"]
      118 CALL                             R14 1 1
      119 CALL                             R14 0 1
      120 GETIMPORT                        R15 K5 [require]
      122 GETTABLEKS                       R16 R0 K8 ["Src"]
      124 GETTABLEKS                       R16 R16 K21 ["SharedFlags"]
      126 GETTABLEKS                       R16 R16 K25 ["getFFlagLuaStartPageOpenACopy"]
      128 CALL                             R15 1 1
      129 CALL                             R15 0 1
      130 GETIMPORT                        R16 K5 [require]
      132 GETTABLEKS                       R17 R0 K8 ["Src"]
      134 GETTABLEKS                       R17 R17 K21 ["SharedFlags"]
      136 GETTABLEKS                       R17 R17 K26 ["getFFlagStartPageSaveAsCopy"]
      138 CALL                             R16 1 1
      139 CALL                             R16 0 1
      140 GETIMPORT                        R17 K5 [require]
      142 GETTABLEKS                       R18 R0 K8 ["Src"]
      144 GETTABLEKS                       R18 R18 K21 ["SharedFlags"]
      146 GETTABLEKS                       R18 R18 K27 ["getFFlagLuaStartPageViewPlacesDialog"]
      148 CALL                             R17 1 1
      149 CALL                             R17 0 1
      150 GETIMPORT                        R18 K5 [require]
      152 GETTABLEKS                       R19 R0 K6 ["Packages"]
      154 GETTABLEKS                       R19 R19 K28 ["Framework"]
      156 CALL                             R18 1 1
      157 GETTABLEKS                       R19 R18 K29 ["ContextServices"]
      159 GETTABLEKS                       R19 R19 K30 ["Localization"]
      161 GETTABLEKS                       R20 R18 K31 ["Styling"]
      163 GETTABLEKS                       R20 R20 K32 ["joinTags"]
      165 GETIMPORT                        R21 K34 [game]
      167 LOADK                            R23 K35 ["DontLayoutInvisibleGuiObjects"]
      168 NAMECALL                         R21 R21 K36 ["GetEngineFeature"]
      170 CALL                             R21 2 1
      171 GETIMPORT                        R22 K5 [require]
      173 GETTABLEKS                       R23 R0 K8 ["Src"]
      175 GETTABLEKS                       R23 R23 K37 ["Types"]
      177 CALL                             R22 1 1
      178 DUPCLOSURE                       R23 K38 [PROTO_12]
      179 CAPTURE                          VAL R19
      180 CAPTURE                          VAL R3
      181 CAPTURE                          VAL R17
      182 CAPTURE                          VAL R15
      183 CAPTURE                          VAL R16
      184 CAPTURE                          VAL R9
      185 CAPTURE                          VAL R13
      186 CAPTURE                          VAL R12
      187 CAPTURE                          VAL R5
      188 CAPTURE                          VAL R6
      189 CAPTURE                          VAL R7
      190 CAPTURE                          VAL R4
      191 CAPTURE                          VAL R10
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R8
      194 DUPCLOSURE                       R24 K39 [PROTO_15]
      195 CAPTURE                          VAL R17
      196 CAPTURE                          VAL R1
      197 CAPTURE                          VAL R11
      198 CAPTURE                          VAL R23
      199 CAPTURE                          VAL R21
      200 CAPTURE                          VAL R20
      201 RETURN                           R24 1
