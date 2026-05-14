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
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Id"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["PrivacyType"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Id"]
        4 LOADB                            R2 0
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["IsPlaceholder"]
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        5 LOADK                            R3 K1 ["Cell should not be a placeholder here"]
        6 GETIMPORT                        R1 K3 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 0
       10 NAMECALL                         R1 R1 K4 ["use"]
       12 CALL                             R1 1 1
       13 DUPTABLE                         R2 K13 [{"ConfigureExperience", "ConfigurePlace", "OpenPlace", "PublicPrivateToggle", "Archive", "RestoreArchive", "RemoveShared", "RemoveRecent"}]
       14 GETTABLEKS                       R4 R0 K14 ["Id"]
       16 JUMPIFNOT                        R4 ; [+14]
       17 DUPTABLE                         R3 K17 [{"Label", "Action"}]
       18 LOADK                            R6 K18 ["Plugin"]
       19 LOADK                            R7 K5 ["ConfigureExperience"]
       20 NAMECALL                         R4 R1 K19 ["getText"]
       22 CALL                             R4 3 1
       23 SETTABLEKS                       R4 R3 K15 ["Label"]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R4 R3 K16 ["Action"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R3
       32 SETTABLEKS                       R3 R2 K5 ["ConfigureExperience"]
       34 GETTABLEKS                       R4 R0 K14 ["Id"]
       36 JUMPIFNOT                        R4 ; [+17]
       37 GETTABLEKS                       R4 R0 K20 ["RootPlaceId"]
       39 JUMPIFNOT                        R4 ; [+14]
       40 DUPTABLE                         R3 K17 [{"Label", "Action"}]
       41 LOADK                            R6 K18 ["Plugin"]
       42 LOADK                            R7 K6 ["ConfigurePlace"]
       43 NAMECALL                         R4 R1 K19 ["getText"]
       45 CALL                             R4 3 1
       46 SETTABLEKS                       R4 R3 K15 ["Label"]
       48 NEWCLOSURE                       R4 P1
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R4 R3 K16 ["Action"]
       53 JUMP                             ; [+1]
       54 LOADNIL                          R3
       55 SETTABLEKS                       R3 R2 K6 ["ConfigurePlace"]
       57 GETTABLEKS                       R4 R0 K20 ["RootPlaceId"]
       59 JUMPIFNOT                        R4 ; [+14]
       60 DUPTABLE                         R3 K17 [{"Label", "Action"}]
       61 LOADK                            R6 K18 ["Plugin"]
       62 LOADK                            R7 K21 ["OpenPlacePage"]
       63 NAMECALL                         R4 R1 K19 ["getText"]
       65 CALL                             R4 3 1
       66 SETTABLEKS                       R4 R3 K15 ["Label"]
       68 NEWCLOSURE                       R4 P2
       69 CAPTURE                          UPVAL U1
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R4 R3 K16 ["Action"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R3
       75 SETTABLEKS                       R3 R2 K7 ["OpenPlace"]
       77 GETUPVAL                         R4 2
       78 JUMPIF                           R4 ; [+42]
       79 GETTABLEKS                       R4 R0 K14 ["Id"]
       81 JUMPIFNOT                        R4 ; [+39]
       82 GETTABLEKS                       R4 R0 K22 ["PrivacyType"]
       84 JUMPIFNOT                        R4 ; [+36]
       85 GETTABLEKS                       R4 R0 K22 ["PrivacyType"]
       87 JUMPIFEQKS                       R4 K23 ["Draft"] ; [+33]
       89 DUPTABLE                         R3 K17 [{"Label", "Action"}]
       90 LOADK                            R6 K18 ["Plugin"]
       91 LOADK                            R7 K24 ["SetPrivacy"]
       92 DUPTABLE                         R8 K26 [{"privacy"}]
       93 GETTABLEKS                       R10 R0 K22 ["PrivacyType"]
       95 JUMPIFNOTEQKS                    R10 K27 ["Public"] ; [+7]
       97 LOADK                            R11 K18 ["Plugin"]
       98 LOADK                            R12 K28 ["PrivacyType.Private"]
       99 NAMECALL                         R9 R1 K19 ["getText"]
      101 CALL                             R9 3 1
      102 JUMP                             ; [+5]
      103 LOADK                            R11 K18 ["Plugin"]
      104 LOADK                            R12 K29 ["PrivacyType.Public"]
      105 NAMECALL                         R9 R1 K19 ["getText"]
      107 CALL                             R9 3 1
      108 SETTABLEKS                       R9 R8 K25 ["privacy"]
      110 NAMECALL                         R4 R1 K19 ["getText"]
      112 CALL                             R4 4 1
      113 SETTABLEKS                       R4 R3 K15 ["Label"]
      115 NEWCLOSURE                       R4 P3
      116 CAPTURE                          UPVAL U3
      117 CAPTURE                          VAL R0
      118 SETTABLEKS                       R4 R3 K16 ["Action"]
      120 JUMP                             ; [+1]
      121 LOADNIL                          R3
      122 SETTABLEKS                       R3 R2 K8 ["PublicPrivateToggle"]
      124 GETTABLEKS                       R4 R0 K14 ["Id"]
      126 JUMPIFNOT                        R4 ; [+15]
      127 DUPTABLE                         R3 K17 [{"Label", "Action"}]
      128 LOADK                            R6 K18 ["Plugin"]
      129 LOADK                            R7 K9 ["Archive"]
      130 NAMECALL                         R4 R1 K19 ["getText"]
      132 CALL                             R4 3 1
      133 SETTABLEKS                       R4 R3 K15 ["Label"]
      135 NEWCLOSURE                       R4 P4
      136 CAPTURE                          UPVAL U4
      137 CAPTURE                          VAL R0
      138 CAPTURE                          UPVAL U1
      139 SETTABLEKS                       R4 R3 K16 ["Action"]
      141 JUMP                             ; [+1]
      142 LOADNIL                          R3
      143 SETTABLEKS                       R3 R2 K9 ["Archive"]
      145 GETTABLEKS                       R4 R0 K14 ["Id"]
      147 JUMPIFNOT                        R4 ; [+14]
      148 DUPTABLE                         R3 K17 [{"Label", "Action"}]
      149 LOADK                            R6 K18 ["Plugin"]
      150 LOADK                            R7 K30 ["Restore"]
      151 NAMECALL                         R4 R1 K19 ["getText"]
      153 CALL                             R4 3 1
      154 SETTABLEKS                       R4 R3 K15 ["Label"]
      156 NEWCLOSURE                       R4 P5
      157 CAPTURE                          UPVAL U4
      158 CAPTURE                          VAL R0
      159 SETTABLEKS                       R4 R3 K16 ["Action"]
      161 JUMP                             ; [+1]
      162 LOADNIL                          R3
      163 SETTABLEKS                       R3 R2 K10 ["RestoreArchive"]
      165 GETTABLEKS                       R4 R0 K14 ["Id"]
      167 JUMPIFNOT                        R4 ; [+16]
      168 DUPTABLE                         R3 K17 [{"Label", "Action"}]
      169 LOADK                            R6 K18 ["Plugin"]
      170 LOADK                            R7 K31 ["Remove"]
      171 NAMECALL                         R4 R1 K19 ["getText"]
      173 CALL                             R4 3 1
      174 SETTABLEKS                       R4 R3 K15 ["Label"]
      176 NEWCLOSURE                       R4 P6
      177 CAPTURE                          UPVAL U5
      178 CAPTURE                          VAL R0
      179 CAPTURE                          UPVAL U6
      180 CAPTURE                          UPVAL U1
      181 SETTABLEKS                       R4 R3 K16 ["Action"]
      183 JUMP                             ; [+1]
      184 LOADNIL                          R3
      185 SETTABLEKS                       R3 R2 K11 ["RemoveShared"]
      187 GETTABLEKS                       R4 R0 K14 ["Id"]
      189 JUMPIF                           R4 ; [+3]
      190 GETTABLEKS                       R4 R0 K32 ["FilePath"]
      192 JUMPIFNOT                        R4 ; [+15]
      193 DUPTABLE                         R3 K17 [{"Label", "Action"}]
      194 LOADK                            R6 K18 ["Plugin"]
      195 LOADK                            R7 K33 ["RemoveFromList"]
      196 NAMECALL                         R4 R1 K19 ["getText"]
      198 CALL                             R4 3 1
      199 SETTABLEKS                       R4 R3 K15 ["Label"]
      201 NEWCLOSURE                       R4 P7
      202 CAPTURE                          VAL R0
      203 CAPTURE                          UPVAL U7
      204 CAPTURE                          UPVAL U1
      205 SETTABLEKS                       R4 R3 K16 ["Action"]
      207 JUMP                             ; [+1]
      208 LOADNIL                          R3
      209 SETTABLEKS                       R3 R2 K12 ["RemoveRecent"]
      211 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 GETTABLEKS                       R0 R0 K0 ["Action"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["OnItemActivated"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["MenuContainerSizeChanged"]
        3 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_11:
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
       60 GETTABLEKS                       R9 R9 K17 ["GameCache"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K8 ["Src"]
       67 GETTABLEKS                       R10 R10 K18 ["SharedFlags"]
       69 GETTABLEKS                       R10 R10 K19 ["getFFlagLuaStartPageHidePublicPrivateToggle"]
       71 CALL                             R9 1 1
       72 CALL                             R9 0 1
       73 GETIMPORT                        R10 K5 [require]
       75 GETTABLEKS                       R11 R0 K6 ["Packages"]
       77 GETTABLEKS                       R11 R11 K20 ["Framework"]
       79 CALL                             R10 1 1
       80 GETTABLEKS                       R11 R10 K21 ["ContextServices"]
       82 GETTABLEKS                       R11 R11 K22 ["Localization"]
       84 GETTABLEKS                       R12 R10 K23 ["Styling"]
       86 GETTABLEKS                       R12 R12 K24 ["joinTags"]
       88 GETIMPORT                        R13 K26 [game]
       90 LOADK                            R15 K27 ["DontLayoutInvisibleGuiObjects"]
       91 NAMECALL                         R13 R13 K28 ["GetEngineFeature"]
       93 CALL                             R13 2 1
       94 GETIMPORT                        R14 K5 [require]
       96 GETTABLEKS                       R15 R0 K8 ["Src"]
       98 GETTABLEKS                       R15 R15 K29 ["Types"]
      100 CALL                             R14 1 1
      101 DUPCLOSURE                       R15 K30 [PROTO_8]
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R8
      110 DUPCLOSURE                       R16 K31 [PROTO_11]
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R12
      115 RETURN                           R16 1
