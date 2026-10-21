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
       16 JUMPIFNOT                        R5 ; [+14]
       17 DUPTABLE                         R4 K20 [{"Label", "Action"}]
       18 LOADK                            R7 K21 ["Plugin"]
       19 LOADK                            R8 K5 ["ConfigureExperience"]
       20 NAMECALL                         R5 R2 K22 ["getText"]
       22 CALL                             R5 3 1
       23 SETTABLEKS                       R5 R4 K18 ["Label"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R5 R4 K19 ["Action"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R4
       32 SETTABLEKS                       R4 R3 K5 ["ConfigureExperience"]
       34 GETUPVAL                         R5 2
       35 JUMPIFNOT                        R5 ; [+20]
       36 GETTABLEKS                       R5 R0 K17 ["Id"]
       38 JUMPIFNOT                        R5 ; [+17]
       39 GETTABLEKS                       R5 R0 K23 ["RootPlaceId"]
       41 JUMPIFNOT                        R5 ; [+14]
       42 DUPTABLE                         R4 K20 [{"Label", "Action"}]
       43 LOADK                            R7 K21 ["Plugin"]
       44 LOADK                            R8 K24 ["PlaceDialog.ViewPlaces"]
       45 NAMECALL                         R5 R2 K22 ["getText"]
       47 CALL                             R5 3 1
       48 SETTABLEKS                       R5 R4 K18 ["Label"]
       50 NEWCLOSURE                       R5 P1
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R5 R4 K19 ["Action"]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R4
       57 SETTABLEKS                       R4 R3 K6 ["ViewPlaces"]
       59 GETTABLEKS                       R5 R0 K17 ["Id"]
       61 JUMPIFNOT                        R5 ; [+17]
       62 GETTABLEKS                       R5 R0 K23 ["RootPlaceId"]
       64 JUMPIFNOT                        R5 ; [+14]
       65 DUPTABLE                         R4 K20 [{"Label", "Action"}]
       66 LOADK                            R7 K21 ["Plugin"]
       67 LOADK                            R8 K7 ["ConfigurePlace"]
       68 NAMECALL                         R5 R2 K22 ["getText"]
       70 CALL                             R5 3 1
       71 SETTABLEKS                       R5 R4 K18 ["Label"]
       73 NEWCLOSURE                       R5 P2
       74 CAPTURE                          UPVAL U1
       75 CAPTURE                          VAL R0
       76 SETTABLEKS                       R5 R4 K19 ["Action"]
       78 JUMP                             ; [+1]
       79 LOADNIL                          R4
       80 SETTABLEKS                       R4 R3 K7 ["ConfigurePlace"]
       82 GETTABLEKS                       R5 R0 K23 ["RootPlaceId"]
       84 JUMPIFNOT                        R5 ; [+14]
       85 DUPTABLE                         R4 K20 [{"Label", "Action"}]
       86 LOADK                            R7 K21 ["Plugin"]
       87 LOADK                            R8 K25 ["OpenPlacePage"]
       88 NAMECALL                         R5 R2 K22 ["getText"]
       90 CALL                             R5 3 1
       91 SETTABLEKS                       R5 R4 K18 ["Label"]
       93 NEWCLOSURE                       R5 P3
       94 CAPTURE                          UPVAL U1
       95 CAPTURE                          VAL R0
       96 SETTABLEKS                       R5 R4 K19 ["Action"]
       98 JUMP                             ; [+1]
       99 LOADNIL                          R4
      100 SETTABLEKS                       R4 R3 K8 ["OpenPlace"]
      102 GETUPVAL                         R5 3
      103 JUMPIFNOT                        R5 ; [+20]
      104 GETTABLEKS                       R5 R0 K26 ["IsTeamCreateEnabled"]
      106 JUMPIFNOT                        R5 ; [+17]
      107 GETTABLEKS                       R5 R0 K23 ["RootPlaceId"]
      109 JUMPIFNOT                        R5 ; [+14]
      110 DUPTABLE                         R4 K20 [{"Label", "Action"}]
      111 LOADK                            R7 K21 ["Plugin"]
      112 LOADK                            R8 K9 ["OpenACopy"]
      113 NAMECALL                         R5 R2 K22 ["getText"]
      115 CALL                             R5 3 1
      116 SETTABLEKS                       R5 R4 K18 ["Label"]
      118 NEWCLOSURE                       R5 P4
      119 CAPTURE                          UPVAL U1
      120 CAPTURE                          VAL R0
      121 SETTABLEKS                       R5 R4 K19 ["Action"]
      123 JUMP                             ; [+1]
      124 LOADNIL                          R4
      125 SETTABLEKS                       R4 R3 K9 ["OpenACopy"]
      127 GETTABLEKS                       R5 R0 K17 ["Id"]
      129 JUMPIFNOT                        R5 ; [+17]
      130 GETTABLEKS                       R5 R0 K26 ["IsTeamCreateEnabled"]
      132 JUMPIFNOT                        R5 ; [+14]
      133 DUPTABLE                         R4 K20 [{"Label", "Action"}]
      134 LOADK                            R7 K21 ["Plugin"]
      135 LOADK                            R8 K10 ["SaveAs"]
      136 NAMECALL                         R5 R2 K22 ["getText"]
      138 CALL                             R5 3 1
      139 SETTABLEKS                       R5 R4 K18 ["Label"]
      141 NEWCLOSURE                       R5 P5
      142 CAPTURE                          UPVAL U4
      143 CAPTURE                          VAL R0
      144 SETTABLEKS                       R5 R4 K19 ["Action"]
      146 JUMP                             ; [+1]
      147 LOADNIL                          R4
      148 SETTABLEKS                       R4 R3 K10 ["SaveAs"]
      150 GETTABLEKS                       R5 R0 K17 ["Id"]
      152 JUMPIFNOT                        R5 ; [+15]
      153 DUPTABLE                         R4 K20 [{"Label", "Action"}]
      154 LOADK                            R7 K21 ["Plugin"]
      155 LOADK                            R8 K11 ["Archive"]
      156 NAMECALL                         R5 R2 K22 ["getText"]
      158 CALL                             R5 3 1
      159 SETTABLEKS                       R5 R4 K18 ["Label"]
      161 NEWCLOSURE                       R5 P6
      162 CAPTURE                          UPVAL U5
      163 CAPTURE                          VAL R0
      164 CAPTURE                          UPVAL U1
      165 SETTABLEKS                       R5 R4 K19 ["Action"]
      167 JUMP                             ; [+1]
      168 LOADNIL                          R4
      169 SETTABLEKS                       R4 R3 K11 ["Archive"]
      171 GETTABLEKS                       R5 R0 K17 ["Id"]
      173 JUMPIFNOT                        R5 ; [+14]
      174 DUPTABLE                         R4 K20 [{"Label", "Action"}]
      175 LOADK                            R7 K21 ["Plugin"]
      176 LOADK                            R8 K27 ["Restore"]
      177 NAMECALL                         R5 R2 K22 ["getText"]
      179 CALL                             R5 3 1
      180 SETTABLEKS                       R5 R4 K18 ["Label"]
      182 NEWCLOSURE                       R5 P7
      183 CAPTURE                          UPVAL U5
      184 CAPTURE                          VAL R0
      185 SETTABLEKS                       R5 R4 K19 ["Action"]
      187 JUMP                             ; [+1]
      188 LOADNIL                          R4
      189 SETTABLEKS                       R4 R3 K12 ["RestoreArchive"]
      191 GETTABLEKS                       R5 R0 K17 ["Id"]
      193 JUMPIFNOT                        R5 ; [+16]
      194 DUPTABLE                         R4 K20 [{"Label", "Action"}]
      195 LOADK                            R7 K21 ["Plugin"]
      196 LOADK                            R8 K28 ["Remove"]
      197 NAMECALL                         R5 R2 K22 ["getText"]
      199 CALL                             R5 3 1
      200 SETTABLEKS                       R5 R4 K18 ["Label"]
      202 NEWCLOSURE                       R5 P8
      203 CAPTURE                          UPVAL U6
      204 CAPTURE                          VAL R0
      205 CAPTURE                          UPVAL U7
      206 CAPTURE                          UPVAL U1
      207 SETTABLEKS                       R5 R4 K19 ["Action"]
      209 JUMP                             ; [+1]
      210 LOADNIL                          R4
      211 SETTABLEKS                       R4 R3 K13 ["RemoveShared"]
      213 GETTABLEKS                       R5 R0 K17 ["Id"]
      215 JUMPIF                           R5 ; [+3]
      216 GETTABLEKS                       R5 R0 K29 ["FilePath"]
      218 JUMPIFNOT                        R5 ; [+15]
      219 DUPTABLE                         R4 K20 [{"Label", "Action"}]
      220 LOADK                            R7 K21 ["Plugin"]
      221 LOADK                            R8 K30 ["RemoveFromList"]
      222 NAMECALL                         R5 R2 K22 ["getText"]
      224 CALL                             R5 3 1
      225 SETTABLEKS                       R5 R4 K18 ["Label"]
      227 NEWCLOSURE                       R5 P9
      228 CAPTURE                          VAL R0
      229 CAPTURE                          UPVAL U8
      230 CAPTURE                          UPVAL U1
      231 SETTABLEKS                       R5 R4 K19 ["Action"]
      233 JUMP                             ; [+1]
      234 LOADNIL                          R4
      235 SETTABLEKS                       R4 R3 K14 ["RemoveRecent"]
      237 GETUPVAL                         R5 9
      238 JUMPIFNOT                        R5 ; [+20]
      239 GETTABLEKS                       R5 R0 K17 ["Id"]
      241 JUMPIFNOT                        R5 ; [+17]
      242 GETTABLEKS                       R5 R0 K26 ["IsTeamCreateEnabled"]
      244 JUMPIFNOT                        R5 ; [+14]
      245 DUPTABLE                         R4 K20 [{"Label", "Action"}]
      246 LOADK                            R7 K21 ["Plugin"]
      247 LOADK                            R8 K15 ["DisableTeamCreate"]
      248 NAMECALL                         R5 R2 K22 ["getText"]
      250 CALL                             R5 3 1
      251 SETTABLEKS                       R5 R4 K18 ["Label"]
      253 NEWCLOSURE                       R5 P10
      254 CAPTURE                          UPVAL U10
      255 CAPTURE                          VAL R0
      256 SETTABLEKS                       R5 R4 K19 ["Action"]
      258 JUMP                             ; [+1]
      259 LOADNIL                          R4
      260 SETTABLEKS                       R4 R3 K15 ["DisableTeamCreate"]
      262 RETURN                           R3 1

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
       25 GETTABLEKS                       R4 R2 K12 ["StudioService"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K8 ["Src"]
       31 GETTABLEKS                       R6 R6 K13 ["Network"]
       33 GETTABLEKS                       R6 R6 K14 ["ChangeArchiveConfiguration"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K8 ["Src"]
       40 GETTABLEKS                       R7 R7 K13 ["Network"]
       42 GETTABLEKS                       R7 R7 K15 ["DeleteUserFromTeamCreateUniverse"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K8 ["Src"]
       49 GETTABLEKS                       R8 R8 K13 ["Network"]
       51 GETTABLEKS                       R8 R8 K16 ["ChangeTeamCreateEnabled"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K8 ["Src"]
       58 GETTABLEKS                       R9 R9 K13 ["Network"]
       60 GETTABLEKS                       R9 R9 K17 ["SaveExperienceAsCopy"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K8 ["Src"]
       67 GETTABLEKS                       R10 R10 K13 ["Network"]
       69 GETTABLEKS                       R10 R10 K18 ["GameCache"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K8 ["Src"]
       76 GETTABLEKS                       R11 R11 K9 ["Util"]
       78 GETTABLEKS                       R11 R11 K19 ["Dialogs"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K8 ["Src"]
       85 GETTABLEKS                       R12 R12 K20 ["SharedFlags"]
       87 GETTABLEKS                       R12 R12 K21 ["getFFlagStartPageAllowDisableTeamCreate"]
       89 CALL                             R11 1 1
       90 CALL                             R11 0 1
       91 GETIMPORT                        R12 K5 [require]
       93 GETTABLEKS                       R13 R0 K8 ["Src"]
       95 GETTABLEKS                       R13 R13 K20 ["SharedFlags"]
       97 GETTABLEKS                       R13 R13 K22 ["getFFlagLuaStartPageOpenACopy"]
       99 CALL                             R12 1 1
      100 CALL                             R12 0 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K8 ["Src"]
      105 GETTABLEKS                       R14 R14 K20 ["SharedFlags"]
      107 GETTABLEKS                       R14 R14 K23 ["getFFlagLuaStartPageViewPlacesDialog"]
      109 CALL                             R13 1 1
      110 CALL                             R13 0 1
      111 GETIMPORT                        R14 K5 [require]
      113 GETTABLEKS                       R15 R0 K6 ["Packages"]
      115 GETTABLEKS                       R15 R15 K24 ["Framework"]
      117 CALL                             R14 1 1
      118 GETTABLEKS                       R15 R14 K25 ["ContextServices"]
      120 GETTABLEKS                       R15 R15 K26 ["Localization"]
      122 GETTABLEKS                       R16 R14 K27 ["Styling"]
      124 GETTABLEKS                       R16 R16 K28 ["joinTags"]
      126 GETIMPORT                        R17 K30 [game]
      128 LOADK                            R19 K31 ["DontLayoutInvisibleGuiObjects"]
      129 NAMECALL                         R17 R17 K32 ["GetEngineFeature"]
      131 CALL                             R17 2 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R19 R0 K8 ["Src"]
      136 GETTABLEKS                       R19 R19 K33 ["Types"]
      138 CALL                             R18 1 1
      139 DUPCLOSURE                       R19 K34 [PROTO_11]
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R12
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R9
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R7
      151 DUPCLOSURE                       R20 K35 [PROTO_14]
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R19
      156 CAPTURE                          VAL R17
      157 CAPTURE                          VAL R16
      158 RETURN                           R20 1
