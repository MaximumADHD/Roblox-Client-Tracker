PROTO_0:
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

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [ipairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_INEXT                   R3
        7 GETTABLEKS                       R9 R7 K2 ["thumbnails"]
        9 JUMPIFNOT                        R9 ; [+12]
       10 GETTABLEKS                       R10 R7 K2 ["thumbnails"]
       12 GETTABLEKS                       R9 R10 K3 ["studio"]
       14 JUMPIFNOT                        R9 ; [+7]
       15 GETTABLEKS                       R10 R7 K2 ["thumbnails"]
       17 GETTABLEKS                       R9 R10 K3 ["studio"]
       19 GETTABLEKS                       R8 R9 K4 ["url"]
       21 JUMPIF                           R8 ; [+1]
       22 LOADNIL                          R8
       23 JUMPIF                           R8 ; [+17]
       24 GETTABLEKS                       R10 R7 K2 ["thumbnails"]
       26 JUMPIFNOT                        R10 ; [+12]
       27 GETTABLEKS                       R11 R7 K2 ["thumbnails"]
       29 GETTABLEKS                       R10 R11 K5 ["default"]
       31 JUMPIFNOT                        R10 ; [+7]
       32 GETTABLEKS                       R11 R7 K2 ["thumbnails"]
       34 GETTABLEKS                       R10 R11 K5 ["default"]
       36 GETTABLEKS                       R9 R10 K4 ["url"]
       38 JUMPIF                           R9 ; [+1]
       39 LOADNIL                          R9
       40 MOVE                             R8 R9
       41 JUMPIF                           R8 ; [+1]
       42 LOADK                            R8 K6 ["rbxasset://textures/StartPage/KnowledgeFeedDefaultThumbnail.png"]
       43 GETTABLEKS                       R10 R7 K8 ["title"]
       45 ORK                              R9 R10 K7 [""]
       46 GETTABLEKS                       R10 R7 K9 ["titleKey"]
       48 JUMPIFNOT                        R10 ; [+17]
       49 GETTABLEKS                       R11 R7 K9 ["titleKey"]
       51 FASTCALL1                        STRING_LEN R11 ; [+2]
       52 GETIMPORT                        R10 K12 [string.len]
       54 CALL                             R10 1 1
       55 LOADN                            R11 0
       56 JUMPIFNOTLT                      R11 R10 ; [+9]
       58 JUMPIFNOT                        R1 ; [+7]
       59 LOADK                            R12 K13 ["DiscoverStudioPlaceholder"]
       60 GETTABLEKS                       R13 R7 K9 ["titleKey"]
       62 NAMECALL                         R10 R1 K14 ["getText"]
       64 CALL                             R10 3 1
       65 MOVE                             R9 R10
       66 GETTABLEKS                       R11 R7 K15 ["description"]
       68 ORK                              R10 R11 K7 [""]
       69 GETTABLEKS                       R11 R7 K16 ["descriptionKey"]
       71 JUMPIFNOT                        R11 ; [+17]
       72 GETTABLEKS                       R12 R7 K16 ["descriptionKey"]
       74 FASTCALL1                        STRING_LEN R12 ; [+2]
       75 GETIMPORT                        R11 K12 [string.len]
       77 CALL                             R11 1 1
       78 LOADN                            R12 0
       79 JUMPIFNOTLT                      R12 R11 ; [+9]
       81 JUMPIFNOT                        R1 ; [+7]
       82 LOADK                            R13 K13 ["DiscoverStudioPlaceholder"]
       83 GETTABLEKS                       R14 R7 K16 ["descriptionKey"]
       85 NAMECALL                         R11 R1 K14 ["getText"]
       87 CALL                             R11 3 1
       88 MOVE                             R10 R11
       89 GETUPVAL                         R11 0
       90 GETTABLEKS                       R12 R7 K17 ["id"]
       92 CALL                             R11 1 1
       93 DUPTABLE                         R12 K25 [{"Id", "ContentId", "Name", "Description", "UniverseId", "RootPlaceId", "Difficulty"}]
       94 SETTABLEKS                       R11 R12 K18 ["Id"]
       96 GETTABLEKS                       R14 R7 K17 ["id"]
       98 FASTCALL1                        TOSTRING R14 ; [+2]
       99 GETIMPORT                        R13 K27 [tostring]
      101 CALL                             R13 1 1
      102 SETTABLEKS                       R13 R12 K19 ["ContentId"]
      104 SETTABLEKS                       R9 R12 K20 ["Name"]
      106 SETTABLEKS                       R10 R12 K21 ["Description"]
      108 GETTABLEKS                       R14 R7 K28 ["universeId"]
      110 FASTCALL1                        TONUMBER R14 ; [+2]
      111 GETIMPORT                        R13 K30 [tonumber]
      113 CALL                             R13 1 1
      114 SETTABLEKS                       R13 R12 K22 ["UniverseId"]
      116 GETTABLEKS                       R14 R7 K31 ["placeId"]
      118 FASTCALL1                        TONUMBER R14 ; [+2]
      119 GETIMPORT                        R13 K30 [tonumber]
      121 CALL                             R13 1 1
      122 SETTABLEKS                       R13 R12 K23 ["RootPlaceId"]
      124 GETTABLEKS                       R13 R7 K32 ["difficulty"]
      126 SETTABLEKS                       R13 R12 K24 ["Difficulty"]
      128 GETTABLEKS                       R13 R7 K33 ["categories"]
      130 JUMPIFNOT                        R13 ; [+10]
      131 GETTABLEKS                       R14 R7 K33 ["categories"]
      133 LENGTH                           R13 R14
      134 LOADN                            R14 0
      135 JUMPIFNOTLT                      R14 R13 ; [+5]
      137 GETTABLEKS                       R13 R7 K33 ["categories"]
      139 SETTABLEKS                       R13 R12 K34 ["Categories"]
      141 JUMPIFNOT                        R8 ; [+13]
      142 LOADN                            R15 1
      143 LOADN                            R16 11
      144 FASTCALL3                        STRING_SUB R8 R15 R16
      146 MOVE                             R14 R8
      147 GETIMPORT                        R13 K36 [string.sub]
      149 CALL                             R13 3 1
      150 JUMPIFNOTEQKS                    R13 K37 ["rbxasset://"] ; [+4]
      152 SETTABLEKS                       R8 R12 K38 ["ImageUrl"]
      154 JUMP                             ; [+2]
      155 SETTABLEKS                       R8 R12 K39 ["CDNUrl"]
      157 GETTABLEKS                       R13 R7 K4 ["url"]
      159 JUMPIFNOT                        R13 ; [+8]
      160 GETTABLEKS                       R13 R7 K4 ["url"]
      162 JUMPIFEQKS                       R13 K7 [""] ; [+5]
      164 GETTABLEKS                       R13 R7 K4 ["url"]
      166 SETTABLEKS                       R13 R12 K40 ["Link"]
      168 GETTABLEKS                       R13 R7 K41 ["launchTutorialOnClick"]
      170 JUMPIFEQKNIL                     R13 ; [+5]
      172 GETTABLEKS                       R13 R7 K41 ["launchTutorialOnClick"]
      174 SETTABLEKS                       R13 R12 K42 ["LaunchTutorialOnClick"]
      176 FASTCALL2                        TABLE_INSERT R2 R12 ; [+5]
      178 MOVE                             R14 R2
      179 MOVE                             R15 R12
      180 GETIMPORT                        R13 K45 [table.insert]
      182 CALL                             R13 2 0
      183 FORGLOOP                         R3 2 [inext] ; [-177]
      185 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Models"]
       13 GETTABLEKS                       R2 R3 K8 ["GetKnowledgeFeedsResponse"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Types"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 DUPCLOSURE                       R4 K11 [PROTO_1]
       25 CAPTURE                          VAL R3
       26 RETURN                           R4 1
