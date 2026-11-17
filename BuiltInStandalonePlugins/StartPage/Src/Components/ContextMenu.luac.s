PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["composeUrl"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["CREATOR_HUB_URL"]
        7 LOADK                            R4 K2 ["dashboard/creations/experiences/%*/configure"]
        8 GETUPVAL                         R6 3
        9 GETTABLEKS                       R6 R6 K3 ["Id"]
       11 NAMECALL                         R4 R4 K4 ["format"]
       13 CALL                             R4 2 1
       14 CALL                             R2 2 -1
       15 NAMECALL                         R0 R0 K5 ["openLink"]
       17 CALL                             R0 -1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["showPlaces"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["composeUrl"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["CREATOR_HUB_URL"]
        7 LOADK                            R4 K2 ["dashboard/creations/experiences/%*/places/%*/configure"]
        8 GETUPVAL                         R6 3
        9 GETTABLEKS                       R6 R6 K3 ["Id"]
       11 GETUPVAL                         R7 3
       12 GETTABLEKS                       R7 R7 K4 ["RootPlaceId"]
       14 NAMECALL                         R4 R4 K5 ["format"]
       16 CALL                             R4 3 1
       17 CALL                             R2 2 -1
       18 NAMECALL                         R0 R0 K6 ["openLink"]
       20 CALL                             R0 -1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["composeUrl"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["BASE_URL"]
        7 LOADK                            R4 K2 ["games/%*"]
        8 GETUPVAL                         R6 3
        9 GETTABLEKS                       R6 R6 K3 ["RootPlaceId"]
       11 NAMECALL                         R4 R4 K4 ["format"]
       13 CALL                             R4 2 1
       14 CALL                             R2 2 -1
       15 NAMECALL                         R0 R0 K5 ["openLink"]
       17 CALL                             R0 -1 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["RootPlaceId"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Id"]
        7 LOADB                            R4 0
        8 LOADB                            R5 0
        9 LOADB                            R6 1
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R7 R7 K2 ["get"]
       13 CALL                             R7 0 -1
       14 NAMECALL                         R0 R0 K3 ["openPlace"]
       16 CALL                             R0 -1 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

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
        0 GETTABLEKS                       R4 R0 K0 ["IsPlaceholder"]
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        5 LOADK                            R4 K1 ["Cell should not be a placeholder here"]
        6 GETIMPORT                        R2 K3 [assert]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R2 0
       10 NAMECALL                         R2 R2 K4 ["use"]
       12 CALL                             R2 1 1
       13 DUPTABLE                         R3 K16 [{"ConfigureExperience", "ViewPlaces", "ConfigurePlace", "OpenPlace", "OpenACopy", "SaveAs", "Archive", "RestoreArchive", "RemoveShared", "RemoveRecent", "DisableTeamCreate"}]
       14 GETTABLEKS                       R5 R0 K17 ["Id"]
       16 JUMPIFNOT                        R5 ; [+16]
       17 DUPTABLE                         R4 K20 [{"Label", "Action"}]
       18 LOADK                            R7 K21 ["Plugin"]
       19 LOADK                            R8 K5 ["ConfigureExperience"]
       20 NAMECALL                         R5 R2 K22 ["getText"]
       22 CALL                             R5 3 1
       23 SETTABLEKS                       R5 R4 K18 ["Label"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R5 R4 K19 ["Action"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R4
       34 SETTABLEKS                       R4 R3 K5 ["ConfigureExperience"]
       36 GETUPVAL                         R5 4
       37 JUMPIFNOT                        R5 ; [+20]
       38 GETTABLEKS                       R5 R0 K17 ["Id"]
       40 JUMPIFNOT                        R5 ; [+17]
       41 GETTABLEKS                       R5 R0 K23 ["RootPlaceId"]
       43 JUMPIFNOT                        R5 ; [+14]
       44 DUPTABLE                         R4 K20 [{"Label", "Action"}]
       45 LOADK                            R7 K21 ["Plugin"]
       46 LOADK                            R8 K24 ["PlaceDialog.ViewPlaces"]
       47 NAMECALL                         R5 R2 K22 ["getText"]
       49 CALL                             R5 3 1
       50 SETTABLEKS                       R5 R4 K18 ["Label"]
       52 NEWCLOSURE                       R5 P1
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R5 R4 K19 ["Action"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R4
       59 SETTABLEKS                       R4 R3 K6 ["ViewPlaces"]
       61 GETTABLEKS                       R5 R0 K17 ["Id"]
       63 JUMPIFNOT                        R5 ; [+19]
       64 GETTABLEKS                       R5 R0 K23 ["RootPlaceId"]
       66 JUMPIFNOT                        R5 ; [+16]
       67 DUPTABLE                         R4 K20 [{"Label", "Action"}]
       68 LOADK                            R7 K21 ["Plugin"]
       69 LOADK                            R8 K7 ["ConfigurePlace"]
       70 NAMECALL                         R5 R2 K22 ["getText"]
       72 CALL                             R5 3 1
       73 SETTABLEKS                       R5 R4 K18 ["Label"]
       75 NEWCLOSURE                       R5 P2
       76 CAPTURE                          UPVAL U1
       77 CAPTURE                          UPVAL U2
       78 CAPTURE                          UPVAL U3
       79 CAPTURE                          VAL R0
       80 SETTABLEKS                       R5 R4 K19 ["Action"]
       82 JUMP                             ; [+1]
       83 LOADNIL                          R4
       84 SETTABLEKS                       R4 R3 K7 ["ConfigurePlace"]
       86 GETTABLEKS                       R5 R0 K23 ["RootPlaceId"]
       88 JUMPIFNOT                        R5 ; [+16]
       89 DUPTABLE                         R4 K20 [{"Label", "Action"}]
       90 LOADK                            R7 K21 ["Plugin"]
       91 LOADK                            R8 K25 ["OpenPlacePage"]
       92 NAMECALL                         R5 R2 K22 ["getText"]
       94 CALL                             R5 3 1
       95 SETTABLEKS                       R5 R4 K18 ["Label"]
       97 NEWCLOSURE                       R5 P3
       98 CAPTURE                          UPVAL U1
       99 CAPTURE                          UPVAL U2
      100 CAPTURE                          UPVAL U3
      101 CAPTURE                          VAL R0
      102 SETTABLEKS                       R5 R4 K19 ["Action"]
      104 JUMP                             ; [+1]
      105 LOADNIL                          R4
      106 SETTABLEKS                       R4 R3 K8 ["OpenPlace"]
      108 GETUPVAL                         R5 5
      109 JUMPIFNOT                        R5 ; [+21]
      110 GETTABLEKS                       R5 R0 K26 ["IsTeamCreateEnabled"]
      112 JUMPIFNOT                        R5 ; [+18]
      113 GETTABLEKS                       R5 R0 K23 ["RootPlaceId"]
      115 JUMPIFNOT                        R5 ; [+15]
      116 DUPTABLE                         R4 K20 [{"Label", "Action"}]
      117 LOADK                            R7 K21 ["Plugin"]
      118 LOADK                            R8 K9 ["OpenACopy"]
      119 NAMECALL                         R5 R2 K22 ["getText"]
      121 CALL                             R5 3 1
      122 SETTABLEKS                       R5 R4 K18 ["Label"]
      124 NEWCLOSURE                       R5 P4
      125 CAPTURE                          UPVAL U1
      126 CAPTURE                          VAL R0
      127 CAPTURE                          UPVAL U6
      128 SETTABLEKS                       R5 R4 K19 ["Action"]
      130 JUMP                             ; [+1]
      131 LOADNIL                          R4
      132 SETTABLEKS                       R4 R3 K9 ["OpenACopy"]
      134 GETTABLEKS                       R5 R0 K17 ["Id"]
      136 JUMPIFNOT                        R5 ; [+17]
      137 GETTABLEKS                       R5 R0 K26 ["IsTeamCreateEnabled"]
      139 JUMPIFNOT                        R5 ; [+14]
      140 DUPTABLE                         R4 K20 [{"Label", "Action"}]
      141 LOADK                            R7 K21 ["Plugin"]
      142 LOADK                            R8 K10 ["SaveAs"]
      143 NAMECALL                         R5 R2 K22 ["getText"]
      145 CALL                             R5 3 1
      146 SETTABLEKS                       R5 R4 K18 ["Label"]
      148 NEWCLOSURE                       R5 P5
      149 CAPTURE                          UPVAL U7
      150 CAPTURE                          VAL R0
      151 SETTABLEKS                       R5 R4 K19 ["Action"]
      153 JUMP                             ; [+1]
      154 LOADNIL                          R4
      155 SETTABLEKS                       R4 R3 K10 ["SaveAs"]
      157 GETTABLEKS                       R5 R0 K17 ["Id"]
      159 JUMPIFNOT                        R5 ; [+15]
      160 DUPTABLE                         R4 K20 [{"Label", "Action"}]
      161 LOADK                            R7 K21 ["Plugin"]
      162 LOADK                            R8 K11 ["Archive"]
      163 NAMECALL                         R5 R2 K22 ["getText"]
      165 CALL                             R5 3 1
      166 SETTABLEKS                       R5 R4 K18 ["Label"]
      168 NEWCLOSURE                       R5 P6
      169 CAPTURE                          UPVAL U8
      170 CAPTURE                          VAL R0
      171 CAPTURE                          UPVAL U1
      172 SETTABLEKS                       R5 R4 K19 ["Action"]
      174 JUMP                             ; [+1]
      175 LOADNIL                          R4
      176 SETTABLEKS                       R4 R3 K11 ["Archive"]
      178 GETTABLEKS                       R5 R0 K17 ["Id"]
      180 JUMPIFNOT                        R5 ; [+14]
      181 DUPTABLE                         R4 K20 [{"Label", "Action"}]
      182 LOADK                            R7 K21 ["Plugin"]
      183 LOADK                            R8 K27 ["Restore"]
      184 NAMECALL                         R5 R2 K22 ["getText"]
      186 CALL                             R5 3 1
      187 SETTABLEKS                       R5 R4 K18 ["Label"]
      189 NEWCLOSURE                       R5 P7
      190 CAPTURE                          UPVAL U8
      191 CAPTURE                          VAL R0
      192 SETTABLEKS                       R5 R4 K19 ["Action"]
      194 JUMP                             ; [+1]
      195 LOADNIL                          R4
      196 SETTABLEKS                       R4 R3 K12 ["RestoreArchive"]
      198 GETTABLEKS                       R5 R0 K17 ["Id"]
      200 JUMPIFNOT                        R5 ; [+16]
      201 DUPTABLE                         R4 K20 [{"Label", "Action"}]
      202 LOADK                            R7 K21 ["Plugin"]
      203 LOADK                            R8 K28 ["Remove"]
      204 NAMECALL                         R5 R2 K22 ["getText"]
      206 CALL                             R5 3 1
      207 SETTABLEKS                       R5 R4 K18 ["Label"]
      209 NEWCLOSURE                       R5 P8
      210 CAPTURE                          UPVAL U9
      211 CAPTURE                          VAL R0
      212 CAPTURE                          UPVAL U10
      213 CAPTURE                          UPVAL U1
      214 SETTABLEKS                       R5 R4 K19 ["Action"]
      216 JUMP                             ; [+1]
      217 LOADNIL                          R4
      218 SETTABLEKS                       R4 R3 K13 ["RemoveShared"]
      220 GETTABLEKS                       R5 R0 K17 ["Id"]
      222 JUMPIF                           R5 ; [+3]
      223 GETTABLEKS                       R5 R0 K29 ["FilePath"]
      225 JUMPIFNOT                        R5 ; [+15]
      226 DUPTABLE                         R4 K20 [{"Label", "Action"}]
      227 LOADK                            R7 K21 ["Plugin"]
      228 LOADK                            R8 K30 ["RemoveFromList"]
      229 NAMECALL                         R5 R2 K22 ["getText"]
      231 CALL                             R5 3 1
      232 SETTABLEKS                       R5 R4 K18 ["Label"]
      234 NEWCLOSURE                       R5 P9
      235 CAPTURE                          VAL R0
      236 CAPTURE                          UPVAL U11
      237 CAPTURE                          UPVAL U1
      238 SETTABLEKS                       R5 R4 K19 ["Action"]
      240 JUMP                             ; [+1]
      241 LOADNIL                          R4
      242 SETTABLEKS                       R4 R3 K14 ["RemoveRecent"]
      244 GETUPVAL                         R5 12
      245 JUMPIFNOT                        R5 ; [+20]
      246 GETTABLEKS                       R5 R0 K17 ["Id"]
      248 JUMPIFNOT                        R5 ; [+17]
      249 GETTABLEKS                       R5 R0 K26 ["IsTeamCreateEnabled"]
      251 JUMPIFNOT                        R5 ; [+14]
      252 DUPTABLE                         R4 K20 [{"Label", "Action"}]
      253 LOADK                            R7 K21 ["Plugin"]
      254 LOADK                            R8 K15 ["DisableTeamCreate"]
      255 NAMECALL                         R5 R2 K22 ["getText"]
      257 CALL                             R5 3 1
      258 SETTABLEKS                       R5 R4 K18 ["Label"]
      260 NEWCLOSURE                       R5 P10
      261 CAPTURE                          UPVAL U13
      262 CAPTURE                          VAL R0
      263 SETTABLEKS                       R5 R4 K19 ["Action"]
      265 JUMP                             ; [+1]
      266 LOADNIL                          R4
      267 SETTABLEKS                       R4 R3 K15 ["DisableTeamCreate"]
      269 RETURN                           R3 1

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
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K8 ["Src"]
       29 GETTABLEKS                       R5 R5 K9 ["Util"]
       31 GETTABLEKS                       R5 R5 K12 ["SessionChannel"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R2 K13 ["StudioService"]
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K8 ["Src"]
       40 GETTABLEKS                       R7 R7 K14 ["Network"]
       42 GETTABLEKS                       R7 R7 K15 ["ChangeArchiveConfiguration"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K8 ["Src"]
       49 GETTABLEKS                       R8 R8 K14 ["Network"]
       51 GETTABLEKS                       R8 R8 K16 ["DeleteUserFromTeamCreateUniverse"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K8 ["Src"]
       58 GETTABLEKS                       R9 R9 K14 ["Network"]
       60 GETTABLEKS                       R9 R9 K17 ["ChangeTeamCreateEnabled"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K8 ["Src"]
       67 GETTABLEKS                       R10 R10 K14 ["Network"]
       69 GETTABLEKS                       R10 R10 K18 ["SaveExperienceAsCopy"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K8 ["Src"]
       76 GETTABLEKS                       R11 R11 K14 ["Network"]
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
       96 GETTABLEKS                       R13 R13 K22 ["getFFlagStartPageAllowDisableTeamCreate"]
       98 CALL                             R12 1 1
       99 CALL                             R12 0 1
      100 GETIMPORT                        R13 K5 [require]
      102 GETTABLEKS                       R14 R0 K8 ["Src"]
      104 GETTABLEKS                       R14 R14 K21 ["SharedFlags"]
      106 GETTABLEKS                       R14 R14 K23 ["getFFlagLuaStartPageOpenACopy"]
      108 CALL                             R13 1 1
      109 CALL                             R13 0 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R15 R0 K8 ["Src"]
      114 GETTABLEKS                       R15 R15 K21 ["SharedFlags"]
      116 GETTABLEKS                       R15 R15 K24 ["getFFlagLuaStartPageViewPlacesDialog"]
      118 CALL                             R14 1 1
      119 CALL                             R14 0 1
      120 GETIMPORT                        R15 K5 [require]
      122 GETTABLEKS                       R16 R0 K6 ["Packages"]
      124 GETTABLEKS                       R16 R16 K25 ["Framework"]
      126 CALL                             R15 1 1
      127 GETTABLEKS                       R16 R15 K26 ["ContextServices"]
      129 GETTABLEKS                       R16 R16 K27 ["Localization"]
      131 GETTABLEKS                       R17 R15 K28 ["Styling"]
      133 GETTABLEKS                       R17 R17 K29 ["joinTags"]
      135 GETTABLEKS                       R18 R15 K30 ["RobloxAPI"]
      137 GETTABLEKS                       R18 R18 K31 ["Url"]
      139 GETTABLEKS                       R19 R18 K32 ["new"]
      141 CALL                             R19 0 1
      142 GETIMPORT                        R20 K34 [game]
      144 LOADK                            R22 K35 ["DontLayoutInvisibleGuiObjects"]
      145 NAMECALL                         R20 R20 K36 ["GetEngineFeature"]
      147 CALL                             R20 2 1
      148 GETIMPORT                        R21 K5 [require]
      150 GETTABLEKS                       R22 R0 K8 ["Src"]
      152 GETTABLEKS                       R22 R22 K37 ["Types"]
      154 CALL                             R21 1 1
      155 DUPCLOSURE                       R22 K38 [PROTO_11]
      156 CAPTURE                          VAL R16
      157 CAPTURE                          VAL R3
      158 CAPTURE                          VAL R18
      159 CAPTURE                          VAL R19
      160 CAPTURE                          VAL R14
      161 CAPTURE                          VAL R13
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R6
      165 CAPTURE                          VAL R7
      166 CAPTURE                          VAL R5
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R12
      169 CAPTURE                          VAL R8
      170 DUPCLOSURE                       R23 K39 [PROTO_14]
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R11
      174 CAPTURE                          VAL R22
      175 CAPTURE                          VAL R20
      176 CAPTURE                          VAL R17
      177 RETURN                           R23 1
