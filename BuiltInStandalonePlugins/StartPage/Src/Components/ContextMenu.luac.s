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

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["https://www.roblox.com/games/"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["RootPlaceId"]
        5 CONCAT                           R2 R3 R4
        6 NAMECALL                         R0 R0 K2 ["openLink"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Id"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["PrivacyType"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Id"]
        4 LOADB                            R2 0
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Id"]
        4 LOADB                            R2 0
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["IsPlaceholder"]
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        5 LOADK                            R3 K1 ["Cell should not be a placeholder here"]
        6 GETIMPORT                        R1 K3 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 0
       10 NAMECALL                         R1 R1 K4 ["use"]
       12 CALL                             R1 1 1
       13 DUPTABLE                         R2 K16 [{"ConfigureExperience", "ConfigurePlace", "OpenPlace", "OpenACopy", "SaveAs", "PublicPrivateToggle", "Archive", "RestoreArchive", "RemoveShared", "RemoveRecent", "DisableTeamCreate"}]
       14 GETTABLEKS                       R4 R0 K17 ["Id"]
       16 JUMPIFNOT                        R4 ; [+14]
       17 DUPTABLE                         R3 K20 [{"Label", "Action"}]
       18 LOADK                            R6 K21 ["Plugin"]
       19 LOADK                            R7 K5 ["ConfigureExperience"]
       20 NAMECALL                         R4 R1 K22 ["getText"]
       22 CALL                             R4 3 1
       23 SETTABLEKS                       R4 R3 K18 ["Label"]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R4 R3 K19 ["Action"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R3
       32 SETTABLEKS                       R3 R2 K5 ["ConfigureExperience"]
       34 GETTABLEKS                       R4 R0 K17 ["Id"]
       36 JUMPIFNOT                        R4 ; [+17]
       37 GETTABLEKS                       R4 R0 K23 ["RootPlaceId"]
       39 JUMPIFNOT                        R4 ; [+14]
       40 DUPTABLE                         R3 K20 [{"Label", "Action"}]
       41 LOADK                            R6 K21 ["Plugin"]
       42 LOADK                            R7 K6 ["ConfigurePlace"]
       43 NAMECALL                         R4 R1 K22 ["getText"]
       45 CALL                             R4 3 1
       46 SETTABLEKS                       R4 R3 K18 ["Label"]
       48 NEWCLOSURE                       R4 P1
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R4 R3 K19 ["Action"]
       53 JUMP                             ; [+1]
       54 LOADNIL                          R3
       55 SETTABLEKS                       R3 R2 K6 ["ConfigurePlace"]
       57 GETTABLEKS                       R4 R0 K23 ["RootPlaceId"]
       59 JUMPIFNOT                        R4 ; [+14]
       60 DUPTABLE                         R3 K20 [{"Label", "Action"}]
       61 LOADK                            R6 K21 ["Plugin"]
       62 LOADK                            R7 K24 ["OpenPlacePage"]
       63 NAMECALL                         R4 R1 K22 ["getText"]
       65 CALL                             R4 3 1
       66 SETTABLEKS                       R4 R3 K18 ["Label"]
       68 NEWCLOSURE                       R4 P2
       69 CAPTURE                          UPVAL U1
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R4 R3 K19 ["Action"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R3
       75 SETTABLEKS                       R3 R2 K7 ["OpenPlace"]
       77 GETUPVAL                         R4 2
       78 JUMPIFNOT                        R4 ; [+20]
       79 GETTABLEKS                       R4 R0 K25 ["IsTeamCreateEnabled"]
       81 JUMPIFNOT                        R4 ; [+17]
       82 GETTABLEKS                       R4 R0 K23 ["RootPlaceId"]
       84 JUMPIFNOT                        R4 ; [+14]
       85 DUPTABLE                         R3 K20 [{"Label", "Action"}]
       86 LOADK                            R6 K21 ["Plugin"]
       87 LOADK                            R7 K8 ["OpenACopy"]
       88 NAMECALL                         R4 R1 K22 ["getText"]
       90 CALL                             R4 3 1
       91 SETTABLEKS                       R4 R3 K18 ["Label"]
       93 NEWCLOSURE                       R4 P3
       94 CAPTURE                          UPVAL U1
       95 CAPTURE                          VAL R0
       96 SETTABLEKS                       R4 R3 K19 ["Action"]
       98 JUMP                             ; [+1]
       99 LOADNIL                          R3
      100 SETTABLEKS                       R3 R2 K8 ["OpenACopy"]
      102 GETUPVAL                         R4 3
      103 JUMPIFNOT                        R4 ; [+20]
      104 GETTABLEKS                       R4 R0 K17 ["Id"]
      106 JUMPIFNOT                        R4 ; [+17]
      107 GETTABLEKS                       R4 R0 K25 ["IsTeamCreateEnabled"]
      109 JUMPIFNOT                        R4 ; [+14]
      110 DUPTABLE                         R3 K20 [{"Label", "Action"}]
      111 LOADK                            R6 K21 ["Plugin"]
      112 LOADK                            R7 K9 ["SaveAs"]
      113 NAMECALL                         R4 R1 K22 ["getText"]
      115 CALL                             R4 3 1
      116 SETTABLEKS                       R4 R3 K18 ["Label"]
      118 NEWCLOSURE                       R4 P4
      119 CAPTURE                          UPVAL U4
      120 CAPTURE                          VAL R0
      121 SETTABLEKS                       R4 R3 K19 ["Action"]
      123 JUMP                             ; [+1]
      124 LOADNIL                          R3
      125 SETTABLEKS                       R3 R2 K9 ["SaveAs"]
      127 GETUPVAL                         R4 5
      128 JUMPIF                           R4 ; [+44]
      129 GETUPVAL                         R4 6
      130 JUMPIF                           R4 ; [+42]
      131 GETTABLEKS                       R4 R0 K17 ["Id"]
      133 JUMPIFNOT                        R4 ; [+39]
      134 GETTABLEKS                       R4 R0 K26 ["PrivacyType"]
      136 JUMPIFNOT                        R4 ; [+36]
      137 GETTABLEKS                       R4 R0 K26 ["PrivacyType"]
      139 JUMPIFEQKS                       R4 K27 ["Draft"] ; [+33]
      141 DUPTABLE                         R3 K20 [{"Label", "Action"}]
      142 LOADK                            R6 K21 ["Plugin"]
      143 LOADK                            R7 K28 ["SetPrivacy"]
      144 DUPTABLE                         R8 K30 [{"privacy"}]
      145 GETTABLEKS                       R10 R0 K26 ["PrivacyType"]
      147 JUMPIFNOTEQKS                    R10 K31 ["Public"] ; [+7]
      149 LOADK                            R11 K21 ["Plugin"]
      150 LOADK                            R12 K32 ["PrivacyType.Private"]
      151 NAMECALL                         R9 R1 K22 ["getText"]
      153 CALL                             R9 3 1
      154 JUMP                             ; [+5]
      155 LOADK                            R11 K21 ["Plugin"]
      156 LOADK                            R12 K33 ["PrivacyType.Public"]
      157 NAMECALL                         R9 R1 K22 ["getText"]
      159 CALL                             R9 3 1
      160 SETTABLEKS                       R9 R8 K29 ["privacy"]
      162 NAMECALL                         R4 R1 K22 ["getText"]
      164 CALL                             R4 4 1
      165 SETTABLEKS                       R4 R3 K18 ["Label"]
      167 NEWCLOSURE                       R4 P5
      168 CAPTURE                          UPVAL U7
      169 CAPTURE                          VAL R0
      170 SETTABLEKS                       R4 R3 K19 ["Action"]
      172 JUMP                             ; [+1]
      173 LOADNIL                          R3
      174 SETTABLEKS                       R3 R2 K10 ["PublicPrivateToggle"]
      176 GETTABLEKS                       R4 R0 K17 ["Id"]
      178 JUMPIFNOT                        R4 ; [+15]
      179 DUPTABLE                         R3 K20 [{"Label", "Action"}]
      180 LOADK                            R6 K21 ["Plugin"]
      181 LOADK                            R7 K11 ["Archive"]
      182 NAMECALL                         R4 R1 K22 ["getText"]
      184 CALL                             R4 3 1
      185 SETTABLEKS                       R4 R3 K18 ["Label"]
      187 NEWCLOSURE                       R4 P6
      188 CAPTURE                          UPVAL U8
      189 CAPTURE                          VAL R0
      190 CAPTURE                          UPVAL U1
      191 SETTABLEKS                       R4 R3 K19 ["Action"]
      193 JUMP                             ; [+1]
      194 LOADNIL                          R3
      195 SETTABLEKS                       R3 R2 K11 ["Archive"]
      197 GETTABLEKS                       R4 R0 K17 ["Id"]
      199 JUMPIFNOT                        R4 ; [+14]
      200 DUPTABLE                         R3 K20 [{"Label", "Action"}]
      201 LOADK                            R6 K21 ["Plugin"]
      202 LOADK                            R7 K34 ["Restore"]
      203 NAMECALL                         R4 R1 K22 ["getText"]
      205 CALL                             R4 3 1
      206 SETTABLEKS                       R4 R3 K18 ["Label"]
      208 NEWCLOSURE                       R4 P7
      209 CAPTURE                          UPVAL U8
      210 CAPTURE                          VAL R0
      211 SETTABLEKS                       R4 R3 K19 ["Action"]
      213 JUMP                             ; [+1]
      214 LOADNIL                          R3
      215 SETTABLEKS                       R3 R2 K12 ["RestoreArchive"]
      217 GETTABLEKS                       R4 R0 K17 ["Id"]
      219 JUMPIFNOT                        R4 ; [+16]
      220 DUPTABLE                         R3 K20 [{"Label", "Action"}]
      221 LOADK                            R6 K21 ["Plugin"]
      222 LOADK                            R7 K35 ["Remove"]
      223 NAMECALL                         R4 R1 K22 ["getText"]
      225 CALL                             R4 3 1
      226 SETTABLEKS                       R4 R3 K18 ["Label"]
      228 NEWCLOSURE                       R4 P8
      229 CAPTURE                          UPVAL U9
      230 CAPTURE                          VAL R0
      231 CAPTURE                          UPVAL U10
      232 CAPTURE                          UPVAL U1
      233 SETTABLEKS                       R4 R3 K19 ["Action"]
      235 JUMP                             ; [+1]
      236 LOADNIL                          R3
      237 SETTABLEKS                       R3 R2 K13 ["RemoveShared"]
      239 GETTABLEKS                       R4 R0 K17 ["Id"]
      241 JUMPIF                           R4 ; [+3]
      242 GETTABLEKS                       R4 R0 K36 ["FilePath"]
      244 JUMPIFNOT                        R4 ; [+15]
      245 DUPTABLE                         R3 K20 [{"Label", "Action"}]
      246 LOADK                            R6 K21 ["Plugin"]
      247 LOADK                            R7 K37 ["RemoveFromList"]
      248 NAMECALL                         R4 R1 K22 ["getText"]
      250 CALL                             R4 3 1
      251 SETTABLEKS                       R4 R3 K18 ["Label"]
      253 NEWCLOSURE                       R4 P9
      254 CAPTURE                          VAL R0
      255 CAPTURE                          UPVAL U11
      256 CAPTURE                          UPVAL U1
      257 SETTABLEKS                       R4 R3 K19 ["Action"]
      259 JUMP                             ; [+1]
      260 LOADNIL                          R3
      261 SETTABLEKS                       R3 R2 K14 ["RemoveRecent"]
      263 GETUPVAL                         R4 12
      264 JUMPIFNOT                        R4 ; [+20]
      265 GETTABLEKS                       R4 R0 K17 ["Id"]
      267 JUMPIFNOT                        R4 ; [+17]
      268 GETTABLEKS                       R4 R0 K25 ["IsTeamCreateEnabled"]
      270 JUMPIFNOT                        R4 ; [+14]
      271 DUPTABLE                         R3 K20 [{"Label", "Action"}]
      272 LOADK                            R6 K21 ["Plugin"]
      273 LOADK                            R7 K15 ["DisableTeamCreate"]
      274 NAMECALL                         R4 R1 K22 ["getText"]
      276 CALL                             R4 3 1
      277 SETTABLEKS                       R4 R3 K18 ["Label"]
      279 NEWCLOSURE                       R4 P10
      280 CAPTURE                          UPVAL U13
      281 CAPTURE                          VAL R0
      282 SETTABLEKS                       R4 R3 K19 ["Action"]
      284 JUMP                             ; [+1]
      285 LOADNIL                          R3
      286 SETTABLEKS                       R3 R2 K15 ["DisableTeamCreate"]
      288 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 GETTABLEKS                       R0 R0 K0 ["Action"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["OnItemActivated"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["MenuContainerSizeChanged"]
        3 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_14:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R0 K0 ["Cell"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R3 R0 K1 ["KebabMenu"]
        8 JUMPIFNOT                        R3 ; [+62]
        9 GETTABLEKS                       R4 R0 K1 ["KebabMenu"]
       11 LENGTH                           R3 R4
       12 LOADN                            R4 0
       13 JUMPIFNOTLT                      R4 R3 ; [+57]
       15 GETTABLEKS                       R3 R0 K1 ["KebabMenu"]
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 JUMPIFEQKS                       R7 K2 [""] ; [+48]
       22 GETTABLE                         R8 R2 R7
       23 JUMPIFNOT                        R8 ; [+45]
       24 MOVE                             R9 R1
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R10 R10 K3 ["createElement"]
       28 LOADK                            R11 K4 ["TextButton"]
       29 NEWTABLE                         R12 8 0
       31 GETIMPORT                        R13 K7 [UDim2.new]
       33 LOADN                            R14 0
       34 LOADN                            R15 153
       35 LOADN                            R16 0
       36 LOADN                            R17 28
       37 CALL                             R13 4 1
       38 SETTABLEKS                       R13 R12 K8 ["Size"]
       40 GETTABLE                         R13 R2 R7
       41 GETTABLEKS                       R13 R13 K9 ["Label"]
       43 SETTABLEKS                       R13 R12 K10 ["Text"]
       45 GETIMPORT                        R13 K14 [Enum.TextXAlignment.Left]
       47 SETTABLEKS                       R13 R12 K12 ["TextXAlignment"]
       49 GETUPVAL                         R13 1
       50 GETTABLEKS                       R13 R13 K15 ["Event"]
       52 GETTABLEKS                       R13 R13 K16 ["Activated"]
       54 NEWCLOSURE                       R14 P0
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R0
       58 SETTABLE                         R14 R12 R13
       59 GETUPVAL                         R13 1
       60 GETTABLEKS                       R13 R13 K17 ["Tag"]
       62 LOADK                            R14 K18 ["X-Fit StartPage-TextColor StartPage-ContextMenuBackground StartPage-RoundedCorner8 StartPage-ContextMenuRowPadding StartPage-Font StartPage-TextSize"]
       63 SETTABLE                         R14 R12 R13
       64 CALL                             R10 2 -1
       65 FASTCALL                         TABLE_INSERT ; [+2]
       66 GETIMPORT                        R8 K21 [table.insert]
       68 CALL                             R8 -1 0
       69 FORGLOOP                         R3 2 ; [-50]
       71 GETUPVAL                         R3 1
       72 GETTABLEKS                       R3 R3 K3 ["createElement"]
       74 LOADK                            R4 K22 ["Frame"]
       75 NEWTABLE                         R5 4 0
       77 GETTABLEKS                       R6 R0 K23 ["Position"]
       79 SETTABLEKS                       R6 R5 K23 ["Position"]
       81 GETTABLEKS                       R7 R0 K24 ["Hide"]
       83 NOT                              R6 R7
       84 SETTABLEKS                       R6 R5 K25 ["Visible"]
       86 GETUPVAL                         R6 1
       87 GETTABLEKS                       R6 R6 K26 ["Change"]
       89 GETTABLEKS                       R6 R6 K27 ["AbsoluteSize"]
       91 NEWCLOSURE                       R7 P1
       92 CAPTURE                          VAL R0
       93 SETTABLE                         R7 R5 R6
       94 GETUPVAL                         R6 1
       95 GETTABLEKS                       R6 R6 K17 ["Tag"]
       97 GETUPVAL                         R8 2
       98 JUMPIFNOT                        R8 ; [+8]
       99 GETUPVAL                         R7 3
      100 LOADK                            R8 K28 ["X-Column X-Fit StartPage-ContextMenuBackground StartPage-RoundedCorner8 StartPage-ContextMenuPadding"]
      101 GETUPVAL                         R10 1
      102 GETTABLEKS                       R10 R10 K17 ["Tag"]
      104 GETTABLE                         R9 R0 R10
      105 CALL                             R7 2 1
      106 JUMP                             ; [+1]
      107 LOADK                            R7 K28 ["X-Column X-Fit StartPage-ContextMenuBackground StartPage-RoundedCorner8 StartPage-ContextMenuPadding"]
      108 SETTABLE                         R7 R5 R6
      109 MOVE                             R6 R1
      110 CALL                             R3 3 -1
      111 RETURN                           R3 -1

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
       85 GETTABLEKS                       R12 R12 K20 ["SharedFlags"]
       87 GETTABLEKS                       R12 R12 K21 ["getFFlagLuaStartPageHidePublicPrivateToggle"]
       89 CALL                             R11 1 1
       90 CALL                             R11 0 1
       91 GETIMPORT                        R12 K5 [require]
       93 GETTABLEKS                       R13 R0 K8 ["Src"]
       95 GETTABLEKS                       R13 R13 K20 ["SharedFlags"]
       97 GETTABLEKS                       R13 R13 K22 ["getFFlagLuaStartPageAudiencesReplacement"]
       99 CALL                             R12 1 1
      100 CALL                             R12 0 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K8 ["Src"]
      105 GETTABLEKS                       R14 R14 K20 ["SharedFlags"]
      107 GETTABLEKS                       R14 R14 K23 ["getFFlagStartPageAllowDisableTeamCreate"]
      109 CALL                             R13 1 1
      110 CALL                             R13 0 1
      111 GETIMPORT                        R14 K5 [require]
      113 GETTABLEKS                       R15 R0 K8 ["Src"]
      115 GETTABLEKS                       R15 R15 K20 ["SharedFlags"]
      117 GETTABLEKS                       R15 R15 K24 ["getFFlagLuaStartPageOpenACopy"]
      119 CALL                             R14 1 1
      120 CALL                             R14 0 1
      121 GETIMPORT                        R15 K5 [require]
      123 GETTABLEKS                       R16 R0 K8 ["Src"]
      125 GETTABLEKS                       R16 R16 K20 ["SharedFlags"]
      127 GETTABLEKS                       R16 R16 K25 ["getFFlagStartPageSaveAsCopy"]
      129 CALL                             R15 1 1
      130 CALL                             R15 0 1
      131 GETIMPORT                        R16 K5 [require]
      133 GETTABLEKS                       R17 R0 K6 ["Packages"]
      135 GETTABLEKS                       R17 R17 K26 ["Framework"]
      137 CALL                             R16 1 1
      138 GETTABLEKS                       R17 R16 K27 ["ContextServices"]
      140 GETTABLEKS                       R17 R17 K28 ["Localization"]
      142 GETTABLEKS                       R18 R16 K29 ["Styling"]
      144 GETTABLEKS                       R18 R18 K30 ["joinTags"]
      146 GETIMPORT                        R19 K32 [game]
      148 LOADK                            R21 K33 ["DontLayoutInvisibleGuiObjects"]
      149 NAMECALL                         R19 R19 K34 ["GetEngineFeature"]
      151 CALL                             R19 2 1
      152 GETIMPORT                        R20 K5 [require]
      154 GETTABLEKS                       R21 R0 K8 ["Src"]
      156 GETTABLEKS                       R21 R21 K35 ["Types"]
      158 CALL                             R20 1 1
      159 DUPCLOSURE                       R21 K36 [PROTO_11]
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R14
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R9
      165 CAPTURE                          VAL R12
      166 CAPTURE                          VAL R11
      167 CAPTURE                          VAL R5
      168 CAPTURE                          VAL R6
      169 CAPTURE                          VAL R7
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R13
      173 CAPTURE                          VAL R8
      174 DUPCLOSURE                       R22 K37 [PROTO_14]
      175 CAPTURE                          VAL R21
      176 CAPTURE                          VAL R1
      177 CAPTURE                          VAL R19
      178 CAPTURE                          VAL R18
      179 RETURN                           R22 1
