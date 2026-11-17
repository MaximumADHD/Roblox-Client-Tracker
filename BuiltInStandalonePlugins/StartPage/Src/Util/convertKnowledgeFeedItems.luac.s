PROTO_0:
        0 LOADN                            R3 1
        1 LOADN                            R4 26
        2 FASTCALL3                        STRING_SUB R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [string.sub]
        7 CALL                             R1 3 1
        8 JUMPIFEQKS                       R1 K3 ["https://create.roblox.com/"] ; [+2]
       10 RETURN                           R0 1
       11 FASTCALL2K                       STRING_SUB R0 K4 ; [+5]
       13 MOVE                             R2 R0
       14 LOADK                            R3 K4 [27]
       15 GETIMPORT                        R1 K2 [string.sub]
       17 CALL                             R1 2 1
       18 GETIMPORT                        R2 K6 [string.gsub]
       20 MOVE                             R3 R1
       21 LOADK                            R4 K7 ["^docs/en%-us/"]
       22 LOADK                            R5 K8 ["docs/"]
       23 CALL                             R2 3 1
       24 MOVE                             R1 R2
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K9 ["composeUrl"]
       28 GETUPVAL                         R3 1
       29 MOVE                             R4 R1
       30 CALL                             R2 2 -1
       31 RETURN                           R2 -1

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 GETUPVAL                         R1 0
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 GETIMPORT                        R6 K2 [string.find]
        9 MOVE                             R7 R0
       10 MOVE                             R8 R5
       11 CALL                             R6 2 1
       12 JUMPIFNOT                        R6 ; [+2]
       13 LOADB                            R6 1
       14 RETURN                           R6 1
       15 FORGLOOP                         R1 2 ; [-9]
       17 LOADB                            R1 0
       18 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+2]
        7 RETURN                           R0 1
        8 FASTCALL1                        TONUMBER R0 ; [+3]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K4 [tonumber]
       12 CALL                             R1 1 1
       13 JUMPIFNOT                        R1 ; [+1]
       14 RETURN                           R1 1
       15 LOADN                            R2 0
       16 LOADN                            R5 1
       17 LENGTH                           R3 R0
       18 LOADN                            R4 1
       19 FORNPREP                         R3
       20 MOVE                             R8 R5
       21 NAMECALL                         R6 R0 K5 ["byte"]
       23 CALL                             R6 2 1
       24 MULK                             R8 R2 K7 [31]
       25 ADD                              R7 R8 R6
       26 MODK                             R2 R7 K6 [4294967296]
       27 FORNLOOP                         R3
       28 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 NEWTABLE                         R3 0 0
        4 GETIMPORT                        R4 K1 [ipairs]
        6 MOVE                             R5 R0
        7 CALL                             R4 1 3
        8 FORGPREP_INEXT                   R4
        9 JUMPIFNOT                        R2 ; [+9]
       10 GETTABLEKS                       R9 R8 K2 ["feedType"]
       12 JUMPIFEQKS                       R9 K3 ["YouTubeVideo"] ; [+219]
       14 GETUPVAL                         R9 1
       15 GETTABLEKS                       R10 R8 K4 ["url"]
       17 CALL                             R9 1 1
       18 JUMPIF                           R9 ; [+213]
       19 GETTABLEKS                       R10 R8 K5 ["thumbnails"]
       21 JUMPIFNOT                        R10 ; [+12]
       22 GETTABLEKS                       R11 R8 K5 ["thumbnails"]
       24 GETTABLEKS                       R10 R11 K6 ["studio"]
       26 JUMPIFNOT                        R10 ; [+7]
       27 GETTABLEKS                       R10 R8 K5 ["thumbnails"]
       29 GETTABLEKS                       R9 R10 K6 ["studio"]
       31 GETTABLEKS                       R9 R9 K4 ["url"]
       33 JUMPIF                           R9 ; [+1]
       34 LOADNIL                          R9
       35 JUMPIF                           R9 ; [+17]
       36 GETTABLEKS                       R11 R8 K5 ["thumbnails"]
       38 JUMPIFNOT                        R11 ; [+12]
       39 GETTABLEKS                       R12 R8 K5 ["thumbnails"]
       41 GETTABLEKS                       R11 R12 K7 ["default"]
       43 JUMPIFNOT                        R11 ; [+7]
       44 GETTABLEKS                       R11 R8 K5 ["thumbnails"]
       46 GETTABLEKS                       R10 R11 K7 ["default"]
       48 GETTABLEKS                       R10 R10 K4 ["url"]
       50 JUMPIF                           R10 ; [+1]
       51 LOADNIL                          R10
       52 MOVE                             R9 R10
       53 JUMPIF                           R9 ; [+1]
       54 LOADK                            R9 K8 ["rbxasset://textures/StartPage/KnowledgeFeedDefaultThumbnail.png"]
       55 GETTABLEKS                       R11 R8 K10 ["title"]
       57 ORK                              R10 R11 K9 [""]
       58 GETTABLEKS                       R11 R8 K11 ["titleKey"]
       60 JUMPIFNOT                        R11 ; [+17]
       61 GETTABLEKS                       R12 R8 K11 ["titleKey"]
       63 FASTCALL1                        STRING_LEN R12 ; [+2]
       64 GETIMPORT                        R11 K14 [string.len]
       66 CALL                             R11 1 1
       67 LOADN                            R12 0
       68 JUMPIFNOTLT                      R12 R11 ; [+9]
       70 JUMPIFNOT                        R1 ; [+7]
       71 LOADK                            R13 K15 ["DiscoverStudioPlaceholder"]
       72 GETTABLEKS                       R14 R8 K11 ["titleKey"]
       74 NAMECALL                         R11 R1 K16 ["getText"]
       76 CALL                             R11 3 1
       77 MOVE                             R10 R11
       78 GETTABLEKS                       R12 R8 K17 ["description"]
       80 ORK                              R11 R12 K9 [""]
       81 GETTABLEKS                       R12 R8 K18 ["descriptionKey"]
       83 JUMPIFNOT                        R12 ; [+17]
       84 GETTABLEKS                       R13 R8 K18 ["descriptionKey"]
       86 FASTCALL1                        STRING_LEN R13 ; [+2]
       87 GETIMPORT                        R12 K14 [string.len]
       89 CALL                             R12 1 1
       90 LOADN                            R13 0
       91 JUMPIFNOTLT                      R13 R12 ; [+9]
       93 JUMPIFNOT                        R1 ; [+7]
       94 LOADK                            R14 K15 ["DiscoverStudioPlaceholder"]
       95 GETTABLEKS                       R15 R8 K18 ["descriptionKey"]
       97 NAMECALL                         R12 R1 K16 ["getText"]
       99 CALL                             R12 3 1
      100 MOVE                             R11 R12
      101 GETUPVAL                         R12 2
      102 GETTABLEKS                       R13 R8 K19 ["id"]
      104 CALL                             R12 1 1
      105 DUPTABLE                         R13 K27 [{"Id", "ContentId", "Name", "Description", "UniverseId", "RootPlaceId", "Difficulty"}]
      106 SETTABLEKS                       R12 R13 K20 ["Id"]
      108 GETTABLEKS                       R15 R8 K19 ["id"]
      110 FASTCALL1                        TOSTRING R15 ; [+2]
      111 GETIMPORT                        R14 K29 [tostring]
      113 CALL                             R14 1 1
      114 SETTABLEKS                       R14 R13 K21 ["ContentId"]
      116 SETTABLEKS                       R10 R13 K22 ["Name"]
      118 SETTABLEKS                       R11 R13 K23 ["Description"]
      120 GETTABLEKS                       R15 R8 K30 ["universeId"]
      122 FASTCALL1                        TONUMBER R15 ; [+2]
      123 GETIMPORT                        R14 K32 [tonumber]
      125 CALL                             R14 1 1
      126 SETTABLEKS                       R14 R13 K24 ["UniverseId"]
      128 GETTABLEKS                       R15 R8 K33 ["placeId"]
      130 FASTCALL1                        TONUMBER R15 ; [+2]
      131 GETIMPORT                        R14 K32 [tonumber]
      133 CALL                             R14 1 1
      134 SETTABLEKS                       R14 R13 K25 ["RootPlaceId"]
      136 GETTABLEKS                       R14 R8 K34 ["difficulty"]
      138 SETTABLEKS                       R14 R13 K26 ["Difficulty"]
      140 GETTABLEKS                       R14 R8 K35 ["categories"]
      142 JUMPIFNOT                        R14 ; [+10]
      143 GETTABLEKS                       R15 R8 K35 ["categories"]
      145 LENGTH                           R14 R15
      146 LOADN                            R15 0
      147 JUMPIFNOTLT                      R15 R14 ; [+5]
      149 GETTABLEKS                       R14 R8 K35 ["categories"]
      151 SETTABLEKS                       R14 R13 K36 ["Categories"]
      153 JUMPIFNOT                        R9 ; [+13]
      154 LOADN                            R16 1
      155 LOADN                            R17 11
      156 FASTCALL3                        STRING_SUB R9 R16 R17
      158 MOVE                             R15 R9
      159 GETIMPORT                        R14 K38 [string.sub]
      161 CALL                             R14 3 1
      162 JUMPIFNOTEQKS                    R14 K39 ["rbxasset://"] ; [+4]
      164 SETTABLEKS                       R9 R13 K40 ["ImageUrl"]
      166 JUMP                             ; [+2]
      167 SETTABLEKS                       R9 R13 K41 ["CDNUrl"]
      169 GETTABLEKS                       R14 R8 K4 ["url"]
      171 JUMPIFNOT                        R14 ; [+45]
      172 GETTABLEKS                       R14 R8 K4 ["url"]
      174 JUMPIFEQKS                       R14 K9 [""] ; [+42]
      176 JUMPIFNOT                        R2 ; [+36]
      177 GETTABLEKS                       R15 R8 K4 ["url"]
      179 LOADN                            R18 1
      180 LOADN                            R19 26
      181 FASTCALL3                        STRING_SUB R15 R18 R19
      183 MOVE                             R17 R15
      184 GETIMPORT                        R16 K38 [string.sub]
      186 CALL                             R16 3 1
      187 JUMPIFEQKS                       R16 K42 ["https://create.roblox.com/"] ; [+3]
      189 MOVE                             R14 R15
      190 JUMP                             ; [+24]
      191 FASTCALL2K                       STRING_SUB R15 K43 ; [+5]
      193 MOVE                             R17 R15
      194 LOADK                            R18 K43 [27]
      195 GETIMPORT                        R16 K38 [string.sub]
      197 CALL                             R16 2 1
      198 GETIMPORT                        R17 K45 [string.gsub]
      200 MOVE                             R18 R16
      201 LOADK                            R19 K46 ["^docs/en%-us/"]
      202 LOADK                            R20 K47 ["docs/"]
      203 CALL                             R17 3 1
      204 MOVE                             R16 R17
      205 GETUPVAL                         R17 3
      206 GETTABLEKS                       R17 R17 K48 ["composeUrl"]
      208 GETUPVAL                         R18 4
      209 MOVE                             R19 R16
      210 CALL                             R17 2 1
      211 MOVE                             R14 R17
      212 JUMP                             ; [+2]
      213 GETTABLEKS                       R14 R8 K4 ["url"]
      215 SETTABLEKS                       R14 R13 K49 ["Link"]
      217 GETTABLEKS                       R14 R8 K50 ["launchTutorialOnClick"]
      219 JUMPIFEQKNIL                     R14 ; [+5]
      221 GETTABLEKS                       R14 R8 K50 ["launchTutorialOnClick"]
      223 SETTABLEKS                       R14 R13 K51 ["LaunchTutorialOnClick"]
      225 FASTCALL2                        TABLE_INSERT R3 R13 ; [+5]
      227 MOVE                             R15 R3
      228 MOVE                             R16 R13
      229 GETIMPORT                        R14 K54 [table.insert]
      231 CALL                             R14 2 0
      232 FORGLOOP                         R4 2 [inext] ; [-224]
      234 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Models"]
       20 GETTABLEKS                       R3 R3 K10 ["GetKnowledgeFeedsResponse"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["SharedFlags"]
       36 GETTABLEKS                       R5 R5 K13 ["getFFlagIsLuobuBuild"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R1 K14 ["RobloxAPI"]
       41 GETTABLEKS                       R5 R5 K15 ["Url"]
       43 GETTABLEKS                       R6 R5 K16 ["new"]
       45 CALL                             R6 0 1
       46 GETTABLEKS                       R6 R6 K17 ["CREATOR_HUB_URL"]
       48 DUPCLOSURE                       R7 K18 [PROTO_0]
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R6
       51 NEWTABLE                         R8 0 3
       53 LOADK                            R9 K19 ["^https://www%.youtube%.com/"]
       54 LOADK                            R10 K20 ["^https://youtu%.be/"]
       55 LOADK                            R11 K21 ["^https://devforum%.roblox%.com/"]
       56 SETLIST                          R8 R9 3 [1]
       58 DUPCLOSURE                       R9 K22 [PROTO_1]
       59 CAPTURE                          VAL R8
       60 DUPCLOSURE                       R10 K23 [PROTO_2]
       61 DUPCLOSURE                       R11 K24 [PROTO_3]
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R6
       67 RETURN                           R11 1
