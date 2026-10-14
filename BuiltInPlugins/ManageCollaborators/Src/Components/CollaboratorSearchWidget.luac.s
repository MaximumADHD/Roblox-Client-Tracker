PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Frame"]
        2 LOADK                            R3 K1 ["UIListLayout"]
        3 DUPTABLE                         R4 K5 [{"SortOrder", "Padding", "HorizontalAlignment"}]
        4 GETIMPORT                        R5 K8 [Enum.SortOrder.LayoutOrder]
        6 SETTABLEKS                       R5 R4 K2 ["SortOrder"]
        8 GETIMPORT                        R5 K11 [UDim.new]
       10 LOADN                            R6 0
       11 MOVE                             R7 R0
       12 CALL                             R5 2 1
       13 SETTABLEKS                       R5 R4 K3 ["Padding"]
       15 GETIMPORT                        R5 K13 [Enum.HorizontalAlignment.Center]
       17 SETTABLEKS                       R5 R4 K4 ["HorizontalAlignment"]
       19 CALL                             R1 3 -1
       20 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createBinding"]
        3 LOADK                            R2 K1 [""]
        4 CALL                             R1 1 2
        5 SETTABLEKS                       R1 R0 K2 ["searchbarText"]
        7 SETTABLEKS                       R2 R0 K3 ["updateSearchbarText"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["createBinding"]
       12 LOADNIL                          R2
       13 CALL                             R1 1 2
       14 SETTABLEKS                       R1 R0 K4 ["searchbarFocusedTimestampMilliseconds"]
       16 SETTABLEKS                       R2 R0 K5 ["updateSearchbarFocusedTimestampMilliseconds"]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K0 ["createBinding"]
       21 LOADNIL                          R2
       22 CALL                             R1 1 2
       23 SETTABLEKS                       R1 R0 K6 ["searchbarTextFirstChangedTimestampMilliseconds"]
       25 SETTABLEKS                       R2 R0 K7 ["updateSearchbarTextFirstChangedTimestampMilliseconds"]
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K0 ["createBinding"]
       30 LOADNIL                          R2
       31 CALL                             R1 1 2
       32 SETTABLEKS                       R1 R0 K8 ["numCharsInSearchbarOnFocus"]
       34 SETTABLEKS                       R2 R0 K9 ["updateNumCharsInSearchbarOnFocus"]
       36 GETUPVAL                         R1 1
       37 GETTABLEKS                       R1 R1 K10 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       39 JUMPIFNOT                        R1 ; [+3]
       40 DUPTABLE                         R1 K13 [{["countryBlockedError"] = False}]
       41 SETTABLEKS                       R1 R0 K14 ["state"]
       43 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["SearchData"]
        4 GETTABLEKS                       R3 R2 K2 ["CachedSearchResults"]
        6 GETTABLEKS                       R4 R2 K3 ["SearchText"]
        8 LOADB                            R5 1
        9 GETTABLEKS                       R6 R2 K4 ["LocalUserGroups"]
       11 GETUPVAL                         R7 0
       12 JUMPIFEQ                         R6 R7 ; [+20]
       14 LOADB                            R5 1
       15 GETTABLEKS                       R6 R2 K5 ["LocalUserFriends"]
       17 GETUPVAL                         R7 0
       18 JUMPIFEQ                         R6 R7 ; [+14]
       20 LOADB                            R5 1
       21 GETTABLE                         R6 R3 R4
       22 GETUPVAL                         R7 0
       23 JUMPIFEQ                         R6 R7 ; [+9]
       25 LOADB                            R5 0
       26 GETTABLE                         R6 R3 R4
       27 JUMPIFNOTEQKNIL                  R6 ; [+5]
       29 JUMPIFNOTEQKS                    R4 K6 [""] ; [+2]
       31 LOADB                            R5 0 +1
       32 LOADB                            R5 1
       33 RETURN                           R5 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["ownerType"]
        4 GETTABLEKS                       R4 R2 K2 ["ownerFriends"]
        6 GETIMPORT                        R5 K6 [Enum.CreatorType.User]
        8 JUMPIFNOTEQ                      R3 R5 ; [+12]
       10 GETIMPORT                        R5 K8 [ipairs]
       12 MOVE                             R6 R4
       13 CALL                             R5 1 3
       14 FORGPREP_INEXT                   R5
       15 JUMPIFNOTEQ                      R9 R1 ; [+3]
       17 LOADB                            R10 1
       18 RETURN                           R10 1
       19 FORGLOOP                         R5 2 [inext] ; [-5]
       21 LOADB                            R5 0
       22 RETURN                           R5 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K4 ["fflagManageCollaboratorsAgeGatingTelemetry"]
        8 JUMPIFNOT                        R0 ; [+24]
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R2 3
       11 DUPTABLE                         R3 K12 [{["userId"], ["telemetryType"] = "load", ["upsellEntrySurface"] = "manage_collaborators_search_country_blocked", ["placeId"], ["universeId"]}]
       12 GETUPVAL                         R4 4
       13 NAMECALL                         R4 R4 K13 ["GetUserId"]
       15 CALL                             R4 1 1
       16 SETTABLEKS                       R4 R3 K5 ["userId"]
       18 GETIMPORT                        R4 K15 [game]
       20 GETTABLEKS                       R4 R4 K16 ["PlaceId"]
       22 SETTABLEKS                       R4 R3 K10 ["placeId"]
       24 GETIMPORT                        R4 K15 [game]
       26 GETTABLEKS                       R4 R4 K17 ["GameId"]
       28 SETTABLEKS                       R4 R3 K11 ["universeId"]
       30 NAMECALL                         R0 R0 K18 ["logRobloxTelemetryEvent"]
       32 CALL                             R0 3 0
       33 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K4 ["fflagManageCollaboratorsAgeGatingTelemetry"]
        8 JUMPIFNOT                        R0 ; [+24]
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R2 3
       11 DUPTABLE                         R3 K12 [{["userId"], ["telemetryType"] = "load", ["upsellEntrySurface"] = "manage_collaborators_search_country_blocked", ["placeId"], ["universeId"]}]
       12 GETUPVAL                         R4 4
       13 NAMECALL                         R4 R4 K13 ["GetUserId"]
       15 CALL                             R4 1 1
       16 SETTABLEKS                       R4 R3 K5 ["userId"]
       18 GETIMPORT                        R4 K15 [game]
       20 GETTABLEKS                       R4 R4 K16 ["PlaceId"]
       22 SETTABLEKS                       R4 R3 K10 ["placeId"]
       24 GETIMPORT                        R4 K15 [game]
       26 GETTABLEKS                       R4 R4 K17 ["GameId"]
       28 SETTABLEKS                       R4 R3 K11 ["universeId"]
       30 NAMECALL                         R0 R0 K18 ["logRobloxTelemetryEvent"]
       32 CALL                             R0 3 0
       33 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+17]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["CheckAndAddPlayTester"]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["Id"]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K2 ["Name"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          UPVAL U7
       17 CALL                             R0 3 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R0 1
       20 GETTABLEKS                       R0 R0 K3 ["CheckAndAddUserCollaborator"]
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R1 R1 K1 ["Id"]
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R2 R2 K2 ["Name"]
       28 GETUPVAL                         R3 8
       29 NEWCLOSURE                       R4 P1
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U7
       35 CALL                             R0 4 0
       36 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["ActiveTab"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R5 R2 K2 ["IsGroupGame"]
        7 CALL                             R4 1 1
        8 MOVE                             R5 R4
        9 JUMPIFNOT                        R5 ; [+7]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K3 ["AUDIENCE_TAB_EARLY_TESTERS"]
       13 JUMPIFEQ                         R3 R6 ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 JUMPIFNOT                        R5 ; [+7]
       18 GETTABLEKS                       R8 R1 K4 ["Id"]
       20 NAMECALL                         R6 R0 K5 ["isFriend"]
       22 CALL                             R6 2 1
       23 JUMPIF                           R6 ; [+1]
       24 RETURN                           R0 0
       25 LOADNIL                          R6
       26 JUMPIF                           R5 ; [+9]
       27 GETTABLEKS                       R9 R1 K4 ["Id"]
       29 NAMECALL                         R7 R0 K5 ["isFriend"]
       31 CALL                             R7 2 1
       32 JUMPIFNOT                        R7 ; [+2]
       33 GETUPVAL                         R6 2
       34 JUMP                             ; [+1]
       35 GETUPVAL                         R6 3
       36 GETUPVAL                         R7 4
       37 GETTABLEKS                       R7 R7 K6 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       39 JUMPIFNOT                        R7 ; [+16]
       40 GETIMPORT                        R7 K9 [coroutine.wrap]
       42 NEWCLOSURE                       R8 P0
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          UPVAL U7
       51 CAPTURE                          REF R6
       52 CALL                             R7 1 1
       53 CALL                             R7 0 0
       54 CLOSEUPVALS                      R6
       55 RETURN                           R0 0
       56 JUMPIFNOT                        R5 ; [+8]
       57 GETTABLEKS                       R7 R2 K10 ["AddPlayTester"]
       59 GETTABLEKS                       R8 R1 K4 ["Id"]
       61 GETTABLEKS                       R9 R1 K11 ["Name"]
       63 CALL                             R7 2 0
       64 JUMP                             ; [+8]
       65 GETTABLEKS                       R7 R2 K12 ["AddUserCollaborator"]
       67 GETTABLEKS                       R8 R1 K4 ["Id"]
       69 GETTABLEKS                       R9 R1 K11 ["Name"]
       71 MOVE                             R10 R6
       72 CALL                             R7 3 0
       73 CLOSEUPVALS                      R6
       74 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fflagFixMCSearchWidgetErrors"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 2
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R1 2
       10 NAMECALL                         R1 R1 K1 ["lower"]
       12 CALL                             R1 1 1
       13 GETIMPORT                        R2 K4 [string.match]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K5 ["SubjectNameKey"]
       18 GETTABLE                         R3 R0 R4
       19 NAMECALL                         R3 R3 K1 ["lower"]
       21 CALL                             R3 1 1
       22 LOADK                            R5 K6 ["^"]
       23 MOVE                             R6 R1
       24 CONCAT                           R4 R5 R6
       25 CALL                             R2 2 1
       26 GETIMPORT                        R3 K4 [string.match]
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R5 R5 K7 ["SubjectDisplayNameKey"]
       31 GETTABLE                         R4 R0 R5
       32 NAMECALL                         R4 R4 K1 ["lower"]
       34 CALL                             R4 1 1
       35 LOADK                            R6 K6 ["^"]
       36 MOVE                             R7 R1
       37 CONCAT                           R5 R6 R7
       38 CALL                             R3 2 1
       39 OR                               R4 R2 R3
       40 RETURN                           R4 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["SearchData"]
        4 GETTABLEKS                       R3 R1 K2 ["UserCollaborators"]
        6 GETTABLEKS                       R4 R1 K3 ["GroupCollaborators"]
        8 GETTABLEKS                       R5 R2 K4 ["CachedSearchResults"]
       10 GETTABLEKS                       R6 R2 K5 ["SearchText"]
       12 NEWTABLE                         R7 0 0
       14 GETIMPORT                        R8 K7 [ipairs]
       16 MOVE                             R9 R3
       17 CALL                             R8 1 3
       18 FORGPREP_INEXT                   R8
       19 LOADB                            R13 1
       20 SETTABLE                         R13 R7 R12
       21 FORGLOOP                         R8 2 [inext] ; [-3]
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          VAL R7
       25 NEWTABLE                         R9 0 0
       27 GETIMPORT                        R10 K7 [ipairs]
       29 MOVE                             R11 R4
       30 CALL                             R10 1 3
       31 FORGPREP_INEXT                   R10
       32 LOADB                            R15 1
       33 SETTABLE                         R15 R9 R14
       34 FORGLOOP                         R10 2 [inext] ; [-3]
       36 NEWCLOSURE                       R10 P1
       37 CAPTURE                          VAL R9
       38 DUPTABLE                         R11 K10 [{"Users", "Groups"}]
       39 NEWTABLE                         R12 0 0
       41 SETTABLEKS                       R12 R11 K8 ["Users"]
       43 NEWTABLE                         R12 0 0
       45 SETTABLEKS                       R12 R11 K9 ["Groups"]
       47 LOADNIL                          R12
       48 LOADNIL                          R13
       49 GETUPVAL                         R14 0
       50 JUMPIFNOT                        R14 ; [+43]
       51 GETTABLEKS                       R14 R2 K11 ["LikelyCollaborators"]
       53 NEWTABLE                         R15 0 0
       55 NEWCLOSURE                       R12 P2
       56 CAPTURE                          VAL R15
       57 NEWTABLE                         R13 0 0
       59 NEWCLOSURE                       R16 P3
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          UPVAL U2
       62 CAPTURE                          VAL R6
       63 CAPTURE                          UPVAL U3
       64 GETIMPORT                        R17 K7 [ipairs]
       66 MOVE                             R18 R14
       67 CALL                             R17 1 3
       68 FORGPREP_INEXT                   R17
       69 GETUPVAL                         R23 3
       70 GETTABLEKS                       R23 R23 K12 ["SubjectIdKey"]
       72 GETTABLE                         R22 R21 R23
       73 MOVE                             R23 R16
       74 MOVE                             R24 R21
       75 CALL                             R23 1 1
       76 JUMPIFNOT                        R23 ; [+15]
       77 GETTABLE                         R24 R7 R22
       78 JUMPIFNOTEQKNIL                  R24 ; [+2]
       80 LOADB                            R23 0 +1
       81 LOADB                            R23 1
       82 JUMPIF                           R23 ; [+9]
       83 FASTCALL2                        TABLE_INSERT R13 R21 ; [+5]
       85 MOVE                             R24 R13
       86 MOVE                             R25 R21
       87 GETIMPORT                        R23 K15 [table.insert]
       89 CALL                             R23 2 0
       90 LOADB                            R23 1
       91 SETTABLE                         R23 R15 R22
       92 FORGLOOP                         R17 2 [inext] ; [-24]
       94 GETTABLE                         R14 R5 R6
       95 JUMPIFNOT                        R14 ; [+90]
       96 GETTABLE                         R14 R5 R6
       97 GETUPVAL                         R15 4
       98 JUMPIFEQ                         R14 R15 ; [+87]
      100 GETTABLE                         R15 R5 R6
      101 GETUPVAL                         R16 3
      102 GETTABLEKS                       R16 R16 K16 ["UserSubjectKey"]
      104 GETTABLE                         R14 R15 R16
      105 GETTABLE                         R16 R5 R6
      106 GETUPVAL                         R17 3
      107 GETTABLEKS                       R17 R17 K17 ["GroupSubjectKey"]
      109 GETTABLE                         R15 R16 R17
      110 NEWTABLE                         R16 0 0
      112 GETIMPORT                        R17 K19 [pairs]
      114 MOVE                             R18 R14
      115 CALL                             R17 1 3
      116 FORGPREP_NEXT                    R17
      117 GETUPVAL                         R23 3
      118 GETTABLEKS                       R23 R23 K12 ["SubjectIdKey"]
      120 GETTABLE                         R22 R21 R23
      121 GETUPVAL                         R23 0
      122 JUMPIFNOT                        R23 ; [+18]
      123 GETTABLE                         R24 R7 R22
      124 JUMPIFNOTEQKNIL                  R24 ; [+2]
      126 LOADB                            R23 0 +1
      127 LOADB                            R23 1
      128 JUMPIF                           R23 ; [+25]
      129 MOVE                             R23 R12
      130 MOVE                             R24 R22
      131 CALL                             R23 1 1
      132 JUMPIF                           R23 ; [+21]
      133 FASTCALL2                        TABLE_INSERT R16 R21 ; [+5]
      135 MOVE                             R24 R16
      136 MOVE                             R25 R21
      137 GETIMPORT                        R23 K15 [table.insert]
      139 CALL                             R23 2 0
      140 JUMP                             ; [+13]
      141 GETTABLE                         R24 R7 R22
      142 JUMPIFNOTEQKNIL                  R24 ; [+2]
      144 LOADB                            R23 0 +1
      145 LOADB                            R23 1
      146 JUMPIF                           R23 ; [+7]
      147 FASTCALL2                        TABLE_INSERT R16 R21 ; [+5]
      149 MOVE                             R24 R16
      150 MOVE                             R25 R21
      151 GETIMPORT                        R23 K15 [table.insert]
      153 CALL                             R23 2 0
      154 FORGLOOP                         R17 2 ; [-38]
      156 NEWTABLE                         R17 0 0
      158 GETIMPORT                        R18 K19 [pairs]
      160 MOVE                             R19 R15
      161 CALL                             R18 1 3
      162 FORGPREP_NEXT                    R18
      163 GETUPVAL                         R24 3
      164 GETTABLEKS                       R24 R24 K20 ["GroupIdKey"]
      166 GETTABLE                         R23 R22 R24
      167 GETTABLE                         R25 R9 R23
      168 JUMPIFNOTEQKNIL                  R25 ; [+2]
      170 LOADB                            R24 0 +1
      171 LOADB                            R24 1
      172 JUMPIF                           R24 ; [+7]
      173 FASTCALL2                        TABLE_INSERT R17 R22 ; [+5]
      175 MOVE                             R25 R17
      176 MOVE                             R26 R22
      177 GETIMPORT                        R24 K15 [table.insert]
      179 CALL                             R24 2 0
      180 FORGLOOP                         R18 2 ; [-18]
      182 SETTABLEKS                       R16 R11 K8 ["Users"]
      184 SETTABLEKS                       R17 R11 K9 ["Groups"]
      186 GETUPVAL                         R14 0
      187 JUMPIFNOT                        R14 ; [+11]
      188 GETUPVAL                         R14 5
      189 GETTABLEKS                       R14 R14 K21 ["List"]
      191 GETTABLEKS                       R14 R14 K22 ["join"]
      193 MOVE                             R15 R13
      194 GETTABLEKS                       R16 R11 K8 ["Users"]
      196 CALL                             R14 2 1
      197 SETTABLEKS                       R14 R11 K8 ["Users"]
      199 GETUPVAL                         R14 6
      200 GETTABLEKS                       R15 R1 K23 ["IsGroupGame"]
      202 CALL                             R14 1 1
      203 JUMPIFNOT                        R14 ; [+9]
      204 GETTABLEKS                       R15 R1 K24 ["ActiveTab"]
      206 GETUPVAL                         R16 7
      207 GETTABLEKS                       R16 R16 K25 ["AUDIENCE_TAB_EARLY_TESTERS"]
      209 JUMPIFEQ                         R15 R16 ; [+2]
      211 LOADB                            R14 0 +1
      212 LOADB                            R14 1
      213 JUMPIFNOT                        R14 ; [+27]
      214 NEWTABLE                         R15 0 0
      216 GETTABLEKS                       R16 R11 K8 ["Users"]
      218 LOADNIL                          R17
      219 LOADNIL                          R18
      220 FORGPREP                         R16
      221 GETUPVAL                         R22 3
      222 GETTABLEKS                       R22 R22 K12 ["SubjectIdKey"]
      224 GETTABLE                         R21 R20 R22
      225 MOVE                             R24 R21
      226 NAMECALL                         R22 R0 K26 ["isFriend"]
      228 CALL                             R22 2 1
      229 JUMPIFNOT                        R22 ; [+7]
      230 FASTCALL2                        TABLE_INSERT R15 R20 ; [+5]
      232 MOVE                             R23 R15
      233 MOVE                             R24 R20
      234 GETIMPORT                        R22 K15 [table.insert]
      236 CALL                             R22 2 0
      237 FORGLOOP                         R16 2 ; [-17]
      239 SETTABLEKS                       R15 R11 K8 ["Users"]
      241 RETURN                           R11 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["SearchData"]
        4 GETTABLEKS                       R3 R1 K2 ["IsGroupGame"]
        6 GETTABLEKS                       R4 R2 K3 ["SearchText"]
        8 GETUPVAL                         R5 0
        9 JUMPIF                           R5 ; [+5]
       10 JUMPIFNOTEQKS                    R4 K4 [""] ; [+4]
       12 NEWTABLE                         R5 0 0
       14 RETURN                           R5 1
       15 NAMECALL                         R5 R0 K5 ["getMatches"]
       17 CALL                             R5 1 1
       18 NEWTABLE                         R6 0 0
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R7 R7 K6 ["MaxSearchResultsPerSubjectTypeUsers"]
       23 GETUPVAL                         R8 1
       24 GETTABLEKS                       R8 R8 K7 ["MaxSearchResultsPerSubjectTypeGroups"]
       26 GETUPVAL                         R10 1
       27 GETTABLEKS                       R10 R10 K6 ["MaxSearchResultsPerSubjectTypeUsers"]
       29 GETTABLEKS                       R12 R5 K8 ["Users"]
       31 LENGTH                           R11 R12
       32 SUB                              R9 R10 R11
       33 GETUPVAL                         R11 1
       34 GETTABLEKS                       R11 R11 K7 ["MaxSearchResultsPerSubjectTypeGroups"]
       36 GETTABLEKS                       R13 R5 K9 ["Groups"]
       38 LENGTH                           R12 R13
       39 SUB                              R10 R11 R12
       40 LOADN                            R11 0
       41 JUMPIFNOTLT                      R11 R10 ; [+10]
       43 LOADB                            R11 0
       44 LOADN                            R12 0
       45 JUMPIFNOTLT                      R12 R10 ; [+5]
       47 GETUPVAL                         R12 1
       48 GETTABLEKS                       R12 R12 K6 ["MaxSearchResultsPerSubjectTypeUsers"]
       50 ADD                              R11 R12 R10
       51 MOVE                             R7 R11
       52 LOADN                            R11 0
       53 JUMPIFNOTLT                      R11 R9 ; [+10]
       55 LOADB                            R11 0
       56 LOADN                            R12 0
       57 JUMPIFNOTLT                      R12 R9 ; [+5]
       59 GETUPVAL                         R12 1
       60 GETTABLEKS                       R12 R12 K7 ["MaxSearchResultsPerSubjectTypeGroups"]
       62 ADD                              R11 R12 R9
       63 MOVE                             R8 R11
       64 GETTABLEKS                       R12 R5 K8 ["Users"]
       66 LENGTH                           R11 R12
       67 LOADN                            R12 0
       68 JUMPIFNOTLT                      R12 R11 ; [+134]
       70 NEWTABLE                         R11 1 0
       72 NEWTABLE                         R12 0 0
       74 GETIMPORT                        R13 K11 [pairs]
       76 GETTABLEKS                       R14 R5 K8 ["Users"]
       78 CALL                             R13 1 3
       79 FORGPREP_NEXT                    R13
       80 LENGTH                           R20 R11
       81 LENGTH                           R21 R12
       82 ADD                              R19 R20 R21
       83 ADDK                             R18 R19 K12 [1]
       84 JUMPIFLT                         R7 R18 ; [+100]
       86 GETUPVAL                         R19 1
       87 GETTABLEKS                       R19 R19 K13 ["SubjectIdKey"]
       89 GETTABLE                         R18 R17 R19
       90 DUPTABLE                         R19 K17 [{"Icon", "Name", "Key"}]
       91 GETUPVAL                         R20 2
       92 GETTABLEKS                       R20 R20 K18 ["createElement"]
       94 GETUPVAL                         R21 3
       95 DUPTABLE                         R22 K21 [{"Id", "Size"}]
       96 SETTABLEKS                       R18 R22 K19 ["Id"]
       98 GETIMPORT                        R23 K24 [UDim2.new]
      100 LOADN                            R24 1
      101 LOADN                            R25 0
      102 LOADN                            R26 1
      103 LOADN                            R27 0
      104 CALL                             R23 4 1
      105 SETTABLEKS                       R23 R22 K20 ["Size"]
      107 CALL                             R20 2 1
      108 SETTABLEKS                       R20 R19 K14 ["Icon"]
      110 GETUPVAL                         R21 1
      111 GETTABLEKS                       R21 R21 K25 ["SubjectNameKey"]
      113 GETTABLE                         R20 R17 R21
      114 SETTABLEKS                       R20 R19 K15 ["Name"]
      116 DUPTABLE                         R20 K31 [{"Type", "Id", "Name", "DisplayName", "IsEligible", "EligibilityText", "IsPrefetched"}]
      117 GETUPVAL                         R21 1
      118 GETTABLEKS                       R21 R21 K32 ["UserSubjectKey"]
      120 SETTABLEKS                       R21 R20 K26 ["Type"]
      122 SETTABLEKS                       R18 R20 K19 ["Id"]
      124 GETUPVAL                         R22 1
      125 GETTABLEKS                       R22 R22 K25 ["SubjectNameKey"]
      127 GETTABLE                         R21 R17 R22
      128 SETTABLEKS                       R21 R20 K15 ["Name"]
      130 GETUPVAL                         R22 1
      131 GETTABLEKS                       R22 R22 K33 ["SubjectDisplayNameKey"]
      133 GETTABLE                         R21 R17 R22
      134 SETTABLEKS                       R21 R20 K27 ["DisplayName"]
      136 GETUPVAL                         R22 1
      137 GETTABLEKS                       R22 R22 K34 ["IsEligibleKey"]
      139 GETTABLE                         R21 R17 R22
      140 SETTABLEKS                       R21 R20 K28 ["IsEligible"]
      142 GETUPVAL                         R22 1
      143 GETTABLEKS                       R22 R22 K35 ["EligibilityTextKey"]
      145 GETTABLE                         R21 R17 R22
      146 SETTABLEKS                       R21 R20 K29 ["EligibilityText"]
      148 GETUPVAL                         R22 0
      149 JUMPIFNOT                        R22 ; [+5]
      150 GETUPVAL                         R22 1
      151 GETTABLEKS                       R22 R22 K36 ["IsPrefetchedKey"]
      153 GETTABLE                         R21 R17 R22
      154 JUMP                             ; [+1]
      155 LOADNIL                          R21
      156 SETTABLEKS                       R21 R20 K30 ["IsPrefetched"]
      158 SETTABLEKS                       R20 R19 K16 ["Key"]
      160 MOVE                             R22 R18
      161 NAMECALL                         R20 R0 K37 ["isFriend"]
      163 CALL                             R20 2 1
      164 JUMPIFNOT                        R20 ; [+11]
      165 LOADB                            R20 1
      166 SETTABLEKS                       R20 R19 K38 ["IsFriend"]
      168 FASTCALL2                        TABLE_INSERT R11 R19 ; [+5]
      170 MOVE                             R21 R11
      171 MOVE                             R22 R19
      172 GETIMPORT                        R20 K41 [table.insert]
      174 CALL                             R20 2 0
      175 JUMP                             ; [+7]
      176 FASTCALL2                        TABLE_INSERT R12 R19 ; [+5]
      178 MOVE                             R21 R12
      179 MOVE                             R22 R19
      180 GETIMPORT                        R20 K41 [table.insert]
      182 CALL                             R20 2 0
      183 FORGLOOP                         R13 2 ; [-104]
      185 MOVE                             R13 R12
      186 LOADNIL                          R14
      187 LOADNIL                          R15
      188 FORGPREP                         R13
      189 FASTCALL2                        TABLE_INSERT R11 R17 ; [+5]
      191 MOVE                             R19 R11
      192 MOVE                             R20 R17
      193 GETIMPORT                        R18 K41 [table.insert]
      195 CALL                             R18 2 0
      196 FORGLOOP                         R13 2 ; [-8]
      198 LOADN                            R13 0
      199 SETTABLEKS                       R13 R11 K42 ["LayoutOrder"]
      201 GETUPVAL                         R13 4
      202 SETTABLE                         R11 R6 R13
      203 GETUPVAL                         R11 5
      204 MOVE                             R12 R3
      205 CALL                             R11 1 1
      206 JUMPIFNOT                        R11 ; [+9]
      207 GETTABLEKS                       R12 R1 K43 ["ActiveTab"]
      209 GETUPVAL                         R13 6
      210 GETTABLEKS                       R13 R13 K44 ["AUDIENCE_TAB_EARLY_TESTERS"]
      212 JUMPIFEQ                         R12 R13 ; [+2]
      214 LOADB                            R11 0 +1
      215 LOADB                            R11 1
      216 GETTABLEKS                       R13 R5 K9 ["Groups"]
      218 LENGTH                           R12 R13
      219 LOADN                            R13 0
      220 JUMPIFNOTLT                      R13 R12 ; [+78]
      222 JUMPIF                           R3 ; [+76]
      223 JUMPIF                           R11 ; [+75]
      224 NEWTABLE                         R12 1 0
      226 GETIMPORT                        R13 K11 [pairs]
      228 GETTABLEKS                       R14 R5 K9 ["Groups"]
      230 CALL                             R13 1 3
      231 FORGPREP_NEXT                    R13
      232 LENGTH                           R19 R12
      233 ADDK                             R18 R19 K12 [1]
      234 JUMPIFLT                         R8 R18 ; [+59]
      236 DUPTABLE                         R20 K17 [{"Icon", "Name", "Key"}]
      237 GETUPVAL                         R21 2
      238 GETTABLEKS                       R21 R21 K18 ["createElement"]
      240 GETUPVAL                         R22 7
      241 DUPTABLE                         R23 K21 [{"Id", "Size"}]
      242 GETUPVAL                         R25 1
      243 GETTABLEKS                       R25 R25 K45 ["GroupIdKey"]
      245 GETTABLE                         R24 R17 R25
      246 SETTABLEKS                       R24 R23 K19 ["Id"]
      248 GETIMPORT                        R24 K24 [UDim2.new]
      250 LOADN                            R25 1
      251 LOADN                            R26 0
      252 LOADN                            R27 1
      253 LOADN                            R28 0
      254 CALL                             R24 4 1
      255 SETTABLEKS                       R24 R23 K20 ["Size"]
      257 CALL                             R21 2 1
      258 SETTABLEKS                       R21 R20 K14 ["Icon"]
      260 GETUPVAL                         R22 1
      261 GETTABLEKS                       R22 R22 K46 ["GroupNameKey"]
      263 GETTABLE                         R21 R17 R22
      264 SETTABLEKS                       R21 R20 K15 ["Name"]
      266 DUPTABLE                         R21 K48 [{["Type"], ["Id"], ["Name"], ["IsEligible"] = True}]
      267 GETUPVAL                         R22 1
      268 GETTABLEKS                       R22 R22 K49 ["GroupSubjectKey"]
      270 SETTABLEKS                       R22 R21 K26 ["Type"]
      272 GETUPVAL                         R23 1
      273 GETTABLEKS                       R23 R23 K45 ["GroupIdKey"]
      275 GETTABLE                         R22 R17 R23
      276 SETTABLEKS                       R22 R21 K19 ["Id"]
      278 GETUPVAL                         R23 1
      279 GETTABLEKS                       R23 R23 K46 ["GroupNameKey"]
      281 GETTABLE                         R22 R17 R23
      282 SETTABLEKS                       R22 R21 K15 ["Name"]
      284 SETTABLEKS                       R21 R20 K16 ["Key"]
      286 FASTCALL2                        TABLE_INSERT R12 R20 ; [+4]
      288 MOVE                             R19 R12
      289 GETIMPORT                        R18 K41 [table.insert]
      291 CALL                             R18 2 0
      292 FORGLOOP                         R13 2 ; [-61]
      294 LOADN                            R13 0
      295 SETTABLEKS                       R13 R12 K42 ["LayoutOrder"]
      297 GETUPVAL                         R13 8
      298 SETTABLE                         R12 R6 R13
      299 RETURN                           R6 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADB                            R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateSearchbarText"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["state"]
        8 GETTABLEKS                       R1 R1 K2 ["searchbarTextFirstChangedTimestampMilliseconds"]
       10 JUMPIFNOTEQKNIL                  R1 ; [+10]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K3 ["updateSearchbarTextFirstChangedTimestampMilliseconds"]
       15 GETIMPORT                        R2 K6 [DateTime.now]
       17 CALL                             R2 0 1
       18 GETTABLEKS                       R2 R2 K7 ["UnixTimestampMillis"]
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 1
       22 MOVE                             R2 R0
       23 LOADB                            R3 0
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fflagManageCollaboratorsOwnerCountryBlocked"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["state"]
        7 GETTABLEKS                       R0 R0 K2 ["countryBlockedError"]
        9 JUMPIFNOT                        R0 ; [+5]
       10 GETUPVAL                         R0 1
       11 DUPTABLE                         R2 K4 [{["countryBlockedError"] = False}]
       12 NAMECALL                         R0 R0 K5 ["setState"]
       14 CALL                             R0 2 0
       15 GETUPVAL                         R0 1
       16 GETTABLEKS                       R0 R0 K6 ["updateSearchbarFocusedTimestampMilliseconds"]
       18 GETIMPORT                        R1 K9 [DateTime.now]
       20 CALL                             R1 0 1
       21 GETTABLEKS                       R1 R1 K10 ["UnixTimestampMillis"]
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 1
       25 GETTABLEKS                       R0 R0 K11 ["updateNumCharsInSearchbarOnFocus"]
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K12 ["searchbarText"]
       30 NAMECALL                         R2 R2 K13 ["getValue"]
       32 CALL                             R2 1 1
       33 LENGTH                           R1 R2
       34 CALL                             R0 1 0
       35 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R0 K0 ["Type"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["UserSubjectKey"]
       10 JUMPIFEQ                         R2 R3 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R4 R0 K2 ["Id"]
       17 NAMECALL                         R2 R2 K3 ["isFriend"]
       19 CALL                             R2 2 1
       20 GETTABLEKS                       R4 R0 K0 ["Type"]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R5 R5 K4 ["GroupSubjectKey"]
       25 JUMPIFEQ                         R4 R5 ; [+2]
       27 LOADB                            R3 0 +1
       28 LOADB                            R3 1
       29 DUPTABLE                         R4 K17 [{"numCharsInSearchbarOnItemClick", "numCharsInSearchbarOnFocus", "searchbarFocusedTimestampMilliseconds", "searchbarTextFirstChangedTimestampMilliseconds", "itemClickedTimestampMilliseconds", "numCharsInItemDisplayName", "numCharsInItemName", "isUser", "isFriend", "isGroup", "isGroupOwned", "isPrefetched", "userId"}]
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K18 ["searchbarText"]
       33 NAMECALL                         R6 R6 K19 ["getValue"]
       35 CALL                             R6 1 1
       36 LENGTH                           R5 R6
       37 SETTABLEKS                       R5 R4 K5 ["numCharsInSearchbarOnItemClick"]
       39 GETUPVAL                         R5 3
       40 GETTABLEKS                       R5 R5 K6 ["numCharsInSearchbarOnFocus"]
       42 NAMECALL                         R5 R5 K19 ["getValue"]
       44 CALL                             R5 1 1
       45 SETTABLEKS                       R5 R4 K6 ["numCharsInSearchbarOnFocus"]
       47 GETUPVAL                         R5 3
       48 GETTABLEKS                       R5 R5 K7 ["searchbarFocusedTimestampMilliseconds"]
       50 NAMECALL                         R5 R5 K19 ["getValue"]
       52 CALL                             R5 1 1
       53 SETTABLEKS                       R5 R4 K7 ["searchbarFocusedTimestampMilliseconds"]
       55 GETUPVAL                         R5 3
       56 GETTABLEKS                       R5 R5 K8 ["searchbarTextFirstChangedTimestampMilliseconds"]
       58 NAMECALL                         R5 R5 K19 ["getValue"]
       60 CALL                             R5 1 1
       61 SETTABLEKS                       R5 R4 K8 ["searchbarTextFirstChangedTimestampMilliseconds"]
       63 GETIMPORT                        R5 K22 [DateTime.now]
       65 CALL                             R5 0 1
       66 GETTABLEKS                       R5 R5 K23 ["UnixTimestampMillis"]
       68 SETTABLEKS                       R5 R4 K9 ["itemClickedTimestampMilliseconds"]
       70 GETTABLEKS                       R6 R0 K24 ["DisplayName"]
       72 JUMPIFNOT                        R6 ; [+4]
       73 GETTABLEKS                       R6 R0 K24 ["DisplayName"]
       75 LENGTH                           R5 R6
       76 JUMP                             ; [+1]
       77 LOADNIL                          R5
       78 SETTABLEKS                       R5 R4 K10 ["numCharsInItemDisplayName"]
       80 GETTABLEKS                       R6 R0 K25 ["Name"]
       82 LENGTH                           R5 R6
       83 SETTABLEKS                       R5 R4 K11 ["numCharsInItemName"]
       85 SETTABLEKS                       R1 R4 K12 ["isUser"]
       87 SETTABLEKS                       R2 R4 K3 ["isFriend"]
       89 SETTABLEKS                       R3 R4 K13 ["isGroup"]
       91 GETUPVAL                         R5 4
       92 SETTABLEKS                       R5 R4 K14 ["isGroupOwned"]
       94 GETUPVAL                         R6 5
       95 JUMPIFNOT                        R6 ; [+5]
       96 GETTABLEKS                       R6 R0 K26 ["IsPrefetched"]
       98 JUMPIFNOT                        R6 ; [+2]
       99 LOADB                            R5 1
      100 JUMP                             ; [+1]
      101 LOADB                            R5 0
      102 SETTABLEKS                       R5 R4 K15 ["isPrefetched"]
      104 GETUPVAL                         R5 6
      105 NAMECALL                         R5 R5 K27 ["GetUserId"]
      107 CALL                             R5 1 1
      108 SETTABLEKS                       R5 R4 K16 ["userId"]
      110 GETUPVAL                         R5 7
      111 GETTABLEKS                       R5 R5 K28 ["LoadFriends"]
      113 CALL                             R5 0 0
      114 JUMPIFNOT                        R1 ; [+15]
      115 GETTABLEKS                       R5 R0 K29 ["IsEligible"]
      117 JUMPIFNOT                        R5 ; [+12]
      118 GETUPVAL                         R5 3
      119 MOVE                             R7 R0
      120 NAMECALL                         R5 R5 K30 ["addUserFromSearch"]
      122 CALL                             R5 2 0
      123 GETUPVAL                         R5 8
      124 GETUPVAL                         R6 9
      125 GETTABLEKS                       R7 R0 K2 ["Id"]
      127 MOVE                             R8 R4
      128 CALL                             R5 3 0
      129 RETURN                           R0 0
      130 JUMPIFNOT                        R3 ; [+12]
      131 GETUPVAL                         R5 10
      132 GETTABLEKS                       R6 R0 K2 ["Id"]
      134 GETUPVAL                         R7 11
      135 CALL                             R5 2 0
      136 GETUPVAL                         R5 8
      137 GETUPVAL                         R6 12
      138 GETTABLEKS                       R7 R0 K2 ["Id"]
      140 MOVE                             R8 R4
      141 CALL                             R5 3 0
      142 RETURN                           R0 0
      143 LOADB                            R6 0
      144 FASTCALL1                        ASSERT R6 ; [+2]
      145 GETIMPORT                        R5 K32 [assert]
      147 CALL                             R5 1 0
      148 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Writable"]
        6 GETTABLEKS                       R4 R1 K3 ["UserCollaborators"]
        8 GETTABLEKS                       R5 R1 K4 ["AddGroupCollaborator"]
       10 GETTABLEKS                       R6 R1 K5 ["SearchCollaborators"]
       12 GETTABLEKS                       R7 R1 K6 ["AddSearchItemLog"]
       14 GETTABLEKS                       R8 R1 K7 ["IsGroupGame"]
       16 GETTABLEKS                       R9 R1 K8 ["Is17PlusGame"]
       18 GETTABLEKS                       R10 R1 K9 ["Stylizer"]
       20 GETTABLEKS                       R11 R1 K10 ["Localization"]
       22 NAMECALL                         R12 R0 K11 ["getResults"]
       24 CALL                             R12 1 1
       25 NAMECALL                         R13 R0 K12 ["isLoading"]
       27 CALL                             R13 1 1
       28 LENGTH                           R14 R4
       29 GETIMPORT                        R15 K14 [game]
       31 LOADK                            R17 K15 ["TeamCreateMaxCollaborators"]
       32 NAMECALL                         R15 R15 K16 ["GetFastInt"]
       34 CALL                             R15 2 1
       35 JUMPIFLE                         R15 R14 ; [+2]
       37 LOADB                            R16 0 +1
       38 LOADB                            R16 1
       39 GETUPVAL                         R17 0
       40 CALL                             R17 0 1
       41 GETUPVAL                         R18 1
       42 MOVE                             R19 R8
       43 CALL                             R18 1 1
       44 MOVE                             R19 R18
       45 JUMPIFNOT                        R19 ; [+9]
       46 GETTABLEKS                       R20 R1 K17 ["ActiveTab"]
       48 GETUPVAL                         R21 2
       49 GETTABLEKS                       R21 R21 K18 ["AUDIENCE_TAB_EARLY_TESTERS"]
       51 JUMPIFEQ                         R20 R21 ; [+2]
       53 LOADB                            R19 0 +1
       54 LOADB                            R19 1
       55 MOVE                             R20 R19
       56 JUMPIFNOT                        R20 ; [+7]
       57 GETTABLEKS                       R22 R1 K20 ["PendingPlayTesterCount"]
       59 ORK                              R21 R22 K19 [0]
       60 JUMPIFLE                         R17 R21 ; [+2]
       62 LOADB                            R20 0 +1
       63 LOADB                            R20 1
       64 LOADK                            R23 K21 ["SearchBar"]
       65 LOADK                            R24 K22 ["TooManyResultsText"]
       66 DUPTABLE                         R25 K24 [{"maxNumCollaborators"}]
       67 SETTABLEKS                       R15 R25 K23 ["maxNumCollaborators"]
       69 NAMECALL                         R21 R11 K25 ["getText"]
       71 CALL                             R21 4 1
       72 LOADK                            R24 K26 ["AudienceTabs"]
       73 LOADK                            R25 K27 ["EarlyTesterLimitReached"]
       74 DUPTABLE                         R26 K29 [{"maxNumPlayTesters"}]
       75 SETTABLEKS                       R17 R26 K28 ["maxNumPlayTesters"]
       77 NAMECALL                         R22 R11 K25 ["getText"]
       79 CALL                             R22 4 1
       80 GETUPVAL                         R23 3
       81 JUMPIFNOT                        R23 ; [+2]
       82 GETTABLEKS                       R23 R1 K30 ["SearchDisabled"]
       84 GETUPVAL                         R25 4
       85 GETTABLEKS                       R25 R25 K31 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       87 JUMPIFNOT                        R25 ; [+11]
       88 GETTABLEKS                       R25 R0 K32 ["state"]
       90 GETTABLEKS                       R25 R25 K33 ["countryBlockedError"]
       92 JUMPIFNOT                        R25 ; [+6]
       93 LOADK                            R26 K21 ["SearchBar"]
       94 LOADK                            R27 K34 ["CountryBlockedError"]
       95 NAMECALL                         R24 R11 K25 ["getText"]
       97 CALL                             R24 3 1
       98 JUMP                             ; [+1]
       99 LOADNIL                          R24
      100 JUMPIFNOT                        R8 ; [+6]
      101 LOADK                            R27 K21 ["SearchBar"]
      102 LOADK                            R28 K35 ["AgeWarningGroups"]
      103 NAMECALL                         R25 R11 K25 ["getText"]
      105 CALL                             R25 3 1
      106 JUMP                             ; [+13]
      107 GETUPVAL                         R26 5
      108 JUMPIFNOT                        R26 ; [+6]
      109 LOADK                            R27 K21 ["SearchBar"]
      110 LOADK                            R28 K36 ["AgeWarningConnectionUsers"]
      111 NAMECALL                         R25 R11 K25 ["getText"]
      113 CALL                             R25 3 1
      114 JUMP                             ; [+5]
      115 LOADK                            R27 K21 ["SearchBar"]
      116 LOADK                            R28 K37 ["AgeWarningUsers"]
      117 NAMECALL                         R25 R11 K25 ["getText"]
      119 CALL                             R25 3 1
      120 JUMPIFNOT                        R19 ; [+6]
      121 LOADK                            R28 K26 ["AudienceTabs"]
      122 LOADK                            R29 K38 ["SearchFriends"]
      123 NAMECALL                         R26 R11 K25 ["getText"]
      125 CALL                             R26 3 1
      126 JUMP                             ; [+5]
      127 LOADK                            R28 K39 ["Subtitle"]
      128 LOADK                            R29 K5 ["SearchCollaborators"]
      129 NAMECALL                         R26 R11 K25 ["getText"]
      131 CALL                             R26 3 1
      132 JUMPIFNOT                        R19 ; [+6]
      133 LOADK                            R29 K26 ["AudienceTabs"]
      134 LOADK                            R30 K40 ["AddFriendsAsEarlyTesters"]
      135 NAMECALL                         R27 R11 K25 ["getText"]
      137 CALL                             R27 3 1
      138 JUMP                             ; [+12]
      139 JUMPIFNOT                        R8 ; [+6]
      140 LOADK                            R29 K21 ["SearchBar"]
      141 LOADK                            R30 K41 ["AddUsers"]
      142 NAMECALL                         R27 R11 K25 ["getText"]
      144 CALL                             R27 3 1
      145 JUMP                             ; [+5]
      146 LOADK                            R29 K21 ["SearchBar"]
      147 LOADK                            R30 K42 ["AddUsersGroups"]
      148 NAMECALL                         R27 R11 K25 ["getText"]
      150 CALL                             R27 3 1
      151 GETTABLEKS                       R28 R1 K43 ["HeaderText"]
      153 JUMPIF                           R28 ; [+4]
      154 JUMPIFNOT                        R18 ; [+2]
      155 MOVE                             R28 R26
      156 JUMPIF                           R28 ; [+1]
      157 LOADNIL                          R28
      158 GETUPVAL                         R29 6
      159 GETTABLEKS                       R29 R29 K44 ["createElement"]
      161 GETUPVAL                         R30 7
      162 DUPTABLE                         R31 K59 [{["LayoutOrder"] = 2, ["Enabled"], ["HeaderHeight"], ["ItemHeight"], ["ErrorText"], ["ErrorSubtitle"], ["DefaultText"], ["NoResultsText"], ["LoadingMore"], ["IsGroupGame"], ["onSearchRequested"], ["onTextChanged"], ["onTextBoxFocused"], ["OnItemClicked"], ["Results"], ["Is17PlusGame"]}]
      163 MOVE                             R32 R3
      164 JUMPIFNOT                        R32 ; [+5]
      165 NOT                              R32 R16
      166 JUMPIFNOT                        R32 ; [+3]
      167 NOT                              R32 R20
      168 JUMPIFNOT                        R32 ; [+1]
      169 NOT                              R32 R23
      170 SETTABLEKS                       R32 R31 K46 ["Enabled"]
      172 GETTABLEKS                       R32 R10 K60 ["searchBar"]
      174 GETTABLEKS                       R32 R32 K61 ["headerHeight"]
      176 SETTABLEKS                       R32 R31 K47 ["HeaderHeight"]
      178 GETTABLEKS                       R32 R10 K60 ["searchBar"]
      180 GETTABLEKS                       R32 R32 K62 ["itemHeight"]
      182 SETTABLEKS                       R32 R31 K48 ["ItemHeight"]
      184 JUMPIFNOT                        R20 ; [+2]
      185 MOVE                             R32 R22
      186 JUMPIF                           R32 ; [+4]
      187 JUMPIFNOT                        R16 ; [+2]
      188 MOVE                             R32 R21
      189 JUMPIF                           R32 ; [+1]
      190 LOADNIL                          R32
      191 SETTABLEKS                       R32 R31 K49 ["ErrorText"]
      193 ORK                              R32 R24 K63 []
      194 SETTABLEKS                       R32 R31 K50 ["ErrorSubtitle"]
      196 GETTABLEKS                       R33 R1 K51 ["DefaultText"]
      198 OR                               R32 R33 R27
      199 SETTABLEKS                       R32 R31 K51 ["DefaultText"]
      201 LOADK                            R34 K21 ["SearchBar"]
      202 LOADK                            R35 K52 ["NoResultsText"]
      203 NAMECALL                         R32 R11 K25 ["getText"]
      205 CALL                             R32 3 1
      206 SETTABLEKS                       R32 R31 K52 ["NoResultsText"]
      208 SETTABLEKS                       R13 R31 K53 ["LoadingMore"]
      210 SETTABLEKS                       R8 R31 K7 ["IsGroupGame"]
      212 NEWCLOSURE                       R32 P0
      213 CAPTURE                          VAL R6
      214 SETTABLEKS                       R32 R31 K54 ["onSearchRequested"]
      216 NEWCLOSURE                       R32 P1
      217 CAPTURE                          VAL R0
      218 CAPTURE                          VAL R6
      219 SETTABLEKS                       R32 R31 K55 ["onTextChanged"]
      221 NEWCLOSURE                       R32 P2
      222 CAPTURE                          UPVAL U4
      223 CAPTURE                          VAL R0
      224 SETTABLEKS                       R32 R31 K56 ["onTextBoxFocused"]
      226 NEWCLOSURE                       R32 P3
      227 CAPTURE                          UPVAL U3
      228 CAPTURE                          VAL R23
      229 CAPTURE                          UPVAL U8
      230 CAPTURE                          VAL R0
      231 CAPTURE                          VAL R8
      232 CAPTURE                          UPVAL U9
      233 CAPTURE                          UPVAL U10
      234 CAPTURE                          VAL R1
      235 CAPTURE                          VAL R7
      236 CAPTURE                          UPVAL U11
      237 CAPTURE                          VAL R5
      238 CAPTURE                          UPVAL U12
      239 CAPTURE                          UPVAL U13
      240 SETTABLEKS                       R32 R31 K57 ["OnItemClicked"]
      242 GETUPVAL                         R33 3
      243 JUMPIFNOT                        R33 ; [+4]
      244 JUMPIFNOT                        R23 ; [+3]
      245 NEWTABLE                         R32 0 0
      247 JUMP                             ; [+1]
      248 MOVE                             R32 R12
      249 SETTABLEKS                       R32 R31 K58 ["Results"]
      251 SETTABLEKS                       R9 R31 K8 ["Is17PlusGame"]
      253 CALL                             R29 2 1
      254 GETUPVAL                         R30 6
      255 GETTABLEKS                       R30 R30 K44 ["createElement"]
      257 JUMPIFEQKNIL                     R28 ; [+3]
      259 GETUPVAL                         R31 14
      260 JUMP                             ; [+1]
      261 GETUPVAL                         R31 15
      262 DUPTABLE                         R32 K66 [{["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      263 SETTABLEKS                       R2 R32 K1 ["LayoutOrder"]
      265 DUPTABLE                         R33 K71 [{"Padding", "SearchCaption", "AgeWarningFrame", "Searchbar"}]
      266 GETUPVAL                         R34 6
      267 GETTABLEKS                       R34 R34 K44 ["createElement"]
      269 LOADK                            R35 K72 ["UIPadding"]
      270 DUPTABLE                         R36 K76 [{"PaddingTop", "PaddingLeft", "PaddingRight"}]
      271 GETTABLEKS                       R37 R10 K77 ["searchWidget"]
      273 GETTABLEKS                       R37 R37 K78 ["paddingTop"]
      275 SETTABLEKS                       R37 R36 K73 ["PaddingTop"]
      277 GETTABLEKS                       R37 R10 K77 ["searchWidget"]
      279 GETTABLEKS                       R37 R37 K79 ["paddingHorizontal"]
      281 SETTABLEKS                       R37 R36 K74 ["PaddingLeft"]
      283 GETTABLEKS                       R37 R10 K77 ["searchWidget"]
      285 GETTABLEKS                       R37 R37 K79 ["paddingHorizontal"]
      287 SETTABLEKS                       R37 R36 K75 ["PaddingRight"]
      289 CALL                             R34 2 1
      290 SETTABLEKS                       R34 R33 K67 ["Padding"]
      292 LOADB                            R34 0
      293 JUMPIFEQKNIL                     R28 ; [+32]
      295 GETUPVAL                         R34 6
      296 GETTABLEKS                       R34 R34 K44 ["createElement"]
      298 LOADK                            R35 K80 ["TextLabel"]
      299 GETUPVAL                         R36 16
      300 GETTABLEKS                       R36 R36 K81 ["Dictionary"]
      302 GETTABLEKS                       R36 R36 K82 ["join"]
      304 GETTABLEKS                       R37 R10 K83 ["fontStyle"]
      306 GETTABLEKS                       R37 R37 K84 ["Subtext"]
      308 DUPTABLE                         R38 K88 [{["LayoutOrder"] = 0, ["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"]}]
      309 GETIMPORT                        R39 K91 [UDim2.new]
      311 LOADN                            R40 1
      312 LOADN                            R41 0
      313 LOADN                            R42 0
      314 LOADN                            R43 14
      315 CALL                             R39 4 1
      316 SETTABLEKS                       R39 R38 K85 ["Size"]
      318 SETTABLEKS                       R28 R38 K86 ["Text"]
      320 GETIMPORT                        R39 K94 [Enum.TextXAlignment.Left]
      322 SETTABLEKS                       R39 R38 K87 ["TextXAlignment"]
      324 CALL                             R36 2 -1
      325 CALL                             R34 -1 1
      326 SETTABLEKS                       R34 R33 K68 ["SearchCaption"]
      328 MOVE                             R34 R9
      329 JUMPIFNOT                        R34 ; [+47]
      330 GETUPVAL                         R34 6
      331 GETTABLEKS                       R34 R34 K44 ["createElement"]
      333 LOADK                            R35 K95 ["Frame"]
      334 DUPTABLE                         R36 K97 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["Size"], ["BorderSizePixel"] = 0}]
      335 GETIMPORT                        R37 K91 [UDim2.new]
      337 LOADN                            R38 1
      338 LOADN                            R39 0
      339 LOADN                            R40 0
      340 GETTABLEKS                       R41 R10 K77 ["searchWidget"]
      342 GETTABLEKS                       R41 R41 K98 ["ageWarning"]
      344 GETTABLEKS                       R41 R41 K99 ["Height"]
      346 CALL                             R37 4 1
      347 SETTABLEKS                       R37 R36 K85 ["Size"]
      349 DUPTABLE                         R37 K101 [{"AgeWarning"}]
      350 GETUPVAL                         R38 6
      351 GETTABLEKS                       R38 R38 K44 ["createElement"]
      353 LOADK                            R39 K80 ["TextLabel"]
      354 GETUPVAL                         R40 16
      355 GETTABLEKS                       R40 R40 K81 ["Dictionary"]
      357 GETTABLEKS                       R40 R40 K82 ["join"]
      359 GETTABLEKS                       R41 R10 K77 ["searchWidget"]
      361 GETTABLEKS                       R41 R41 K98 ["ageWarning"]
      363 GETTABLEKS                       R41 R41 K83 ["fontStyle"]
      365 DUPTABLE                         R42 K102 [{"Text", "TextXAlignment"}]
      366 SETTABLEKS                       R25 R42 K86 ["Text"]
      368 GETIMPORT                        R43 K94 [Enum.TextXAlignment.Left]
      370 SETTABLEKS                       R43 R42 K87 ["TextXAlignment"]
      372 CALL                             R40 2 -1
      373 CALL                             R38 -1 1
      374 SETTABLEKS                       R38 R37 K100 ["AgeWarning"]
      376 CALL                             R34 3 1
      377 SETTABLEKS                       R34 R33 K69 ["AgeWarningFrame"]
      379 SETTABLEKS                       R29 R33 K70 ["Searchbar"]
      381 CALL                             R30 3 -1
      382 RETURN                           R30 -1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 2
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 CALL                             R4 1 2
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 GETUPVAL                         R8 2
        9 JUMPIFNOT                        R8 ; [+19]
       10 GETUPVAL                         R8 3
       11 GETTABLEKS                       R8 R8 K0 ["List"]
       13 GETTABLEKS                       R8 R8 K1 ["join"]
       15 MOVE                             R9 R2
       16 MOVE                             R10 R3
       17 CALL                             R8 2 1
       18 MOVE                             R6 R8
       19 GETUPVAL                         R8 3
       20 GETTABLEKS                       R8 R8 K0 ["List"]
       22 GETTABLEKS                       R8 R8 K1 ["join"]
       24 MOVE                             R9 R4
       25 MOVE                             R10 R5
       26 CALL                             R8 2 1
       27 MOVE                             R7 R8
       28 JUMP                             ; [+18]
       29 GETUPVAL                         R8 3
       30 GETTABLEKS                       R8 R8 K2 ["Dictionary"]
       32 GETTABLEKS                       R8 R8 K1 ["join"]
       34 MOVE                             R9 R2
       35 MOVE                             R10 R3
       36 CALL                             R8 2 1
       37 MOVE                             R6 R8
       38 GETUPVAL                         R8 3
       39 GETTABLEKS                       R8 R8 K2 ["Dictionary"]
       41 GETTABLEKS                       R8 R8 K1 ["join"]
       43 MOVE                             R9 R4
       44 MOVE                             R10 R5
       45 CALL                             R8 2 1
       46 MOVE                             R7 R8
       47 GETUPVAL                         R8 4
       48 GETTABLEKS                       R8 R8 K3 ["fflagAddPlayTesterPermission"]
       50 JUMPIFNOT                        R8 ; [+17]
       51 GETUPVAL                         R8 5
       52 GETUPVAL                         R9 6
       53 MOVE                             R10 R0
       54 CALL                             R9 1 -1
       55 CALL                             R8 -1 1
       56 JUMPIFNOT                        R8 ; [+11]
       57 GETTABLEKS                       R8 R1 K4 ["ActiveTab"]
       59 GETUPVAL                         R9 7
       60 GETTABLEKS                       R9 R9 K5 ["AUDIENCE_TAB_EARLY_TESTERS"]
       62 JUMPIFNOTEQ                      R8 R9 ; [+5]
       64 GETUPVAL                         R8 8
       65 MOVE                             R9 R0
       66 CALL                             R8 1 1
       67 MOVE                             R6 R8
       68 DUPTABLE                         R8 K14 [{"IsGroupGame", "Is17PlusGame", "UserCollaborators", "GroupCollaborators", "SearchData", "ownerType", "ownerFriends", "PendingPlayTesterCount"}]
       69 GETUPVAL                         R9 6
       70 MOVE                             R10 R0
       71 CALL                             R9 1 1
       72 SETTABLEKS                       R9 R8 K6 ["IsGroupGame"]
       74 GETUPVAL                         R9 9
       75 MOVE                             R10 R0
       76 CALL                             R9 1 1
       77 SETTABLEKS                       R9 R8 K7 ["Is17PlusGame"]
       79 SETTABLEKS                       R6 R8 K8 ["UserCollaborators"]
       81 SETTABLEKS                       R7 R8 K9 ["GroupCollaborators"]
       83 GETTABLEKS                       R9 R0 K15 ["CollaboratorSearch"]
       85 SETTABLEKS                       R9 R8 K10 ["SearchData"]
       87 GETTABLEKS                       R9 R0 K16 ["GameOwnerMetadata"]
       89 GETTABLEKS                       R9 R9 K17 ["creatorType"]
       91 SETTABLEKS                       R9 R8 K11 ["ownerType"]
       93 GETTABLEKS                       R9 R0 K16 ["GameOwnerMetadata"]
       95 GETTABLEKS                       R9 R9 K18 ["creatorFriends"]
       97 SETTABLEKS                       R9 R8 K12 ["ownerFriends"]
       99 GETUPVAL                         R10 4
      100 GETTABLEKS                       R10 R10 K3 ["fflagAddPlayTesterPermission"]
      102 JUMPIFNOT                        R10 ; [+4]
      103 GETUPVAL                         R9 10
      104 MOVE                             R10 R0
      105 CALL                             R9 1 1
      106 JUMP                             ; [+1]
      107 LOADNIL                          R9
      108 SETTABLEKS                       R9 R8 K13 ["PendingPlayTesterCount"]
      110 RETURN                           R8 1

PROTO_20:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_21:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_22:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_23:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["LoadFriends"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R3 0
        1 NEWTABLE                         R4 0 1
        3 GETUPVAL                         R5 1
        4 SETLIST                          R4 R5 1 [1]
        6 CALL                             R3 1 -1
        7 NAMECALL                         R1 R0 K0 ["dispatch"]
        9 CALL                             R1 -1 0
       10 NAMECALL                         R2 R0 K1 ["getState"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R2 R2 K2 ["CanCollaborateResponses"]
       15 GETUPVAL                         R3 1
       16 GETTABLE                         R1 R2 R3
       17 JUMPIFNOT                        R1 ; [+10]
       18 GETTABLEKS                       R2 R1 K3 ["error"]
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K4 ["AgeVerificationCountryBlocked"]
       23 JUMPIFNOTEQ                      R2 R3 ; [+4]
       25 GETUPVAL                         R2 3
       26 CALL                             R2 0 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R4 4
       29 GETUPVAL                         R5 1
       30 GETUPVAL                         R6 5
       31 GETUPVAL                         R7 6
       32 CALL                             R4 3 -1
       33 NAMECALL                         R2 R0 K0 ["dispatch"]
       35 CALL                             R2 -1 0
       36 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R4 0
        1 NEWCLOSURE                       R5 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R3
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 CALL                             R4 1 0
       10 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R3 0
        1 NEWTABLE                         R4 0 1
        3 GETUPVAL                         R5 1
        4 SETLIST                          R4 R5 1 [1]
        6 CALL                             R3 1 -1
        7 NAMECALL                         R1 R0 K0 ["dispatch"]
        9 CALL                             R1 -1 0
       10 NAMECALL                         R2 R0 K1 ["getState"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R2 R2 K2 ["CanCollaborateResponses"]
       15 GETUPVAL                         R3 1
       16 GETTABLE                         R1 R2 R3
       17 JUMPIFNOT                        R1 ; [+10]
       18 GETTABLEKS                       R2 R1 K3 ["error"]
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K4 ["AgeVerificationCountryBlocked"]
       23 JUMPIFNOTEQ                      R2 R3 ; [+4]
       25 GETUPVAL                         R2 3
       26 CALL                             R2 0 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R4 4
       29 GETUPVAL                         R5 1
       30 GETUPVAL                         R6 5
       31 CALL                             R4 2 -1
       32 NAMECALL                         R2 R0 K0 ["dispatch"]
       34 CALL                             R2 -1 0
       35 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R1
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

PROTO_29:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_30:
        0 DUPTABLE                         R1 K8 [{"AddUserCollaborator", "AddPlayTester", "AddGroupCollaborator", "SearchCollaborators", "LoadFriends", "CheckAndAddUserCollaborator", "CheckAndAddPlayTester", "AddSearchItemLog"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["AddUserCollaborator"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["AddPlayTester"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["AddGroupCollaborator"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["SearchCollaborators"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["LoadFriends"]
       26 GETUPVAL                         R3 5
       27 GETTABLEKS                       R3 R3 K9 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       29 JUMPIFNOT                        R3 ; [+6]
       30 NEWCLOSURE                       R2 P5
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          UPVAL U7
       34 CAPTURE                          UPVAL U0
       35 JUMP                             ; [+1]
       36 LOADNIL                          R2
       37 SETTABLEKS                       R2 R1 K5 ["CheckAndAddUserCollaborator"]
       39 GETUPVAL                         R3 5
       40 GETTABLEKS                       R3 R3 K9 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       42 JUMPIFNOT                        R3 ; [+6]
       43 NEWCLOSURE                       R2 P6
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          UPVAL U7
       47 CAPTURE                          UPVAL U1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R2
       50 SETTABLEKS                       R2 R1 K6 ["CheckAndAddPlayTester"]
       52 NEWCLOSURE                       R2 P7
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U8
       55 SETTABLEKS                       R2 R1 K7 ["AddSearchItemLog"]
       57 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Cryo"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R5 K9 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K10 ["Style"]
       39 GETTABLEKS                       R5 R5 K11 ["Stylizer"]
       41 GETTABLEKS                       R6 R4 K12 ["ContextServices"]
       43 GETTABLEKS                       R7 R6 K13 ["withContext"]
       45 GETTABLEKS                       R8 R6 K14 ["Localization"]
       47 GETIMPORT                        R9 K4 [require]
       49 GETTABLEKS                       R10 R0 K15 ["Bin"]
       51 GETTABLEKS                       R10 R10 K16 ["defineLuaFlags"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K4 [require]
       56 GETTABLEKS                       R11 R0 K17 ["Src"]
       58 GETTABLEKS                       R11 R11 K18 ["Enums"]
       60 GETTABLEKS                       R11 R11 K19 ["CanCollaborateError"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K4 [require]
       65 GETTABLEKS                       R12 R0 K17 ["Src"]
       67 GETTABLEKS                       R12 R12 K20 ["Thunks"]
       69 GETTABLEKS                       R12 R12 K21 ["FetchCanCollaborateResponses"]
       71 CALL                             R11 1 1
       72 GETTABLEKS                       R12 R9 K22 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
       74 JUMPIF                           R12 ; [+2]
       75 GETTABLEKS                       R12 R9 K23 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       77 GETIMPORT                        R13 K4 [require]
       79 GETTABLEKS                       R14 R0 K17 ["Src"]
       81 GETTABLEKS                       R14 R14 K24 ["Util"]
       83 GETTABLEKS                       R14 R14 K25 ["PermissionsConstants"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K4 [require]
       88 GETTABLEKS                       R15 R0 K17 ["Src"]
       90 GETTABLEKS                       R15 R15 K26 ["Keys"]
       92 GETTABLEKS                       R15 R15 K27 ["loadingInProgress"]
       94 CALL                             R14 1 1
       95 GETTABLEKS                       R15 R13 K28 ["PlayKey"]
       97 GETTABLEKS                       R16 R13 K29 ["EditKey"]
       99 GETIMPORT                        R17 K4 [require]
      101 GETTABLEKS                       R18 R0 K17 ["Src"]
      103 GETTABLEKS                       R18 R18 K24 ["Util"]
      105 GETTABLEKS                       R18 R18 K30 ["Constants"]
      107 CALL                             R17 1 1
      108 GETTABLEKS                       R18 R17 K31 ["COLLABORATORTYPE_USER"]
      110 GETTABLEKS                       R19 R17 K32 ["COLLABORATORTYPE_GROUP"]
      112 GETIMPORT                        R20 K4 [require]
      114 GETTABLEKS                       R21 R0 K17 ["Src"]
      116 GETTABLEKS                       R21 R21 K33 ["Components"]
      118 GETTABLEKS                       R21 R21 K34 ["Thumbnails"]
      120 GETTABLEKS                       R21 R21 K35 ["UserHeadshotThumbnail"]
      122 CALL                             R20 1 1
      123 GETIMPORT                        R21 K4 [require]
      125 GETTABLEKS                       R22 R0 K17 ["Src"]
      127 GETTABLEKS                       R22 R22 K33 ["Components"]
      129 GETTABLEKS                       R22 R22 K34 ["Thumbnails"]
      131 GETTABLEKS                       R22 R22 K36 ["GroupIconThumbnail"]
      133 CALL                             R21 1 1
      134 GETIMPORT                        R22 K4 [require]
      136 GETTABLEKS                       R23 R0 K17 ["Src"]
      138 GETTABLEKS                       R23 R23 K33 ["Components"]
      140 GETTABLEKS                       R23 R23 K37 ["SearchBar"]
      142 CALL                             R22 1 1
      143 GETIMPORT                        R23 K4 [require]
      145 GETTABLEKS                       R24 R0 K17 ["Src"]
      147 GETTABLEKS                       R24 R24 K24 ["Util"]
      149 GETTABLEKS                       R24 R24 K38 ["CreateFitToContent"]
      151 CALL                             R23 1 1
      152 GETIMPORT                        R24 K4 [require]
      154 GETTABLEKS                       R25 R0 K17 ["Src"]
      156 GETTABLEKS                       R25 R25 K39 ["Selectors"]
      158 GETTABLEKS                       R25 R25 K40 ["GetUserCollaborators"]
      160 CALL                             R24 1 1
      161 GETIMPORT                        R25 K4 [require]
      163 GETTABLEKS                       R26 R0 K17 ["Src"]
      165 GETTABLEKS                       R26 R26 K39 ["Selectors"]
      167 GETTABLEKS                       R26 R26 K41 ["GetGroupCollaborators"]
      169 CALL                             R25 1 1
      170 GETIMPORT                        R26 K4 [require]
      172 GETTABLEKS                       R27 R0 K17 ["Src"]
      174 GETTABLEKS                       R27 R27 K39 ["Selectors"]
      176 GETTABLEKS                       R27 R27 K42 ["GetAllPlayTesterIds"]
      178 CALL                             R26 1 1
      179 GETIMPORT                        R27 K4 [require]
      181 GETTABLEKS                       R28 R0 K17 ["Src"]
      183 GETTABLEKS                       R28 R28 K39 ["Selectors"]
      185 GETTABLEKS                       R28 R28 K43 ["GetPendingPlayTesterCount"]
      187 CALL                             R27 1 1
      188 GETIMPORT                        R28 K4 [require]
      190 GETTABLEKS                       R29 R0 K17 ["Src"]
      192 GETTABLEKS                       R29 R29 K20 ["Thunks"]
      194 GETTABLEKS                       R29 R29 K44 ["AddUserCollaborator"]
      196 CALL                             R28 1 1
      197 GETIMPORT                        R29 K4 [require]
      199 GETTABLEKS                       R30 R0 K17 ["Src"]
      201 GETTABLEKS                       R30 R30 K20 ["Thunks"]
      203 GETTABLEKS                       R30 R30 K45 ["AddGroupCollaborator"]
      205 CALL                             R29 1 1
      206 GETIMPORT                        R30 K4 [require]
      208 GETTABLEKS                       R31 R0 K17 ["Src"]
      210 GETTABLEKS                       R31 R31 K20 ["Thunks"]
      212 GETTABLEKS                       R31 R31 K46 ["AddPlayTester"]
      214 CALL                             R30 1 1
      215 GETIMPORT                        R31 K4 [require]
      217 GETTABLEKS                       R32 R0 K17 ["Src"]
      219 GETTABLEKS                       R32 R32 K20 ["Thunks"]
      221 GETTABLEKS                       R32 R32 K47 ["SearchCollaborators"]
      223 CALL                             R31 1 1
      224 GETIMPORT                        R32 K4 [require]
      226 GETTABLEKS                       R33 R0 K17 ["Src"]
      228 GETTABLEKS                       R33 R33 K20 ["Thunks"]
      230 GETTABLEKS                       R33 R33 K48 ["PermissionsLoader"]
      232 CALL                             R32 1 1
      233 GETIMPORT                        R33 K4 [require]
      235 GETTABLEKS                       R34 R0 K17 ["Src"]
      237 GETTABLEKS                       R34 R34 K20 ["Thunks"]
      239 GETTABLEKS                       R34 R34 K49 ["AddSearchItemLog"]
      241 CALL                             R33 1 1
      242 GETIMPORT                        R34 K4 [require]
      244 GETTABLEKS                       R35 R0 K17 ["Src"]
      246 GETTABLEKS                       R35 R35 K39 ["Selectors"]
      248 GETTABLEKS                       R35 R35 K50 ["IsGroupGame"]
      250 CALL                             R34 1 1
      251 GETIMPORT                        R35 K4 [require]
      253 GETTABLEKS                       R36 R0 K17 ["Src"]
      255 GETTABLEKS                       R36 R36 K39 ["Selectors"]
      257 GETTABLEKS                       R36 R36 K51 ["IsGame17Plus"]
      259 CALL                             R35 1 1
      260 GETIMPORT                        R36 K4 [require]
      262 GETTABLEKS                       R37 R0 K17 ["Src"]
      264 GETTABLEKS                       R37 R37 K24 ["Util"]
      266 GETTABLEKS                       R37 R37 K52 ["ShouldShowAudienceTabs"]
      268 CALL                             R36 1 1
      269 GETIMPORT                        R37 K4 [require]
      271 GETTABLEKS                       R38 R0 K17 ["Src"]
      273 GETTABLEKS                       R38 R38 K24 ["Util"]
      275 GETTABLEKS                       R38 R38 K53 ["GetPlayTesterPermissionMaxCount"]
      277 CALL                             R37 1 1
      278 GETIMPORT                        R38 K55 [game]
      280 LOADK                            R40 K56 ["StudioFriendToConnection"]
      281 NAMECALL                         R38 R38 K57 ["GetFastFlag"]
      283 CALL                             R38 2 1
      284 DUPCLOSURE                       R39 K58 [PROTO_0]
      285 CAPTURE                          VAL R23
      286 MOVE                             R40 R39
      287 LOADN                            R41 32
      288 CALL                             R40 1 1
      289 MOVE                             R41 R39
      290 LOADN                            R42 8
      291 CALL                             R41 1 1
      292 GETIMPORT                        R42 K55 [game]
      294 LOADK                            R44 K59 ["StudioService"]
      295 NAMECALL                         R42 R42 K60 ["GetService"]
      297 CALL                             R42 2 1
      298 GETIMPORT                        R43 K4 [require]
      300 GETTABLEKS                       R44 R0 K5 ["Packages"]
      302 GETTABLEKS                       R44 R44 K61 ["TelemetryProtocol"]
      304 CALL                             R43 1 1
      305 GETIMPORT                        R44 K4 [require]
      307 GETTABLEKS                       R45 R0 K17 ["Src"]
      309 GETTABLEKS                       R45 R45 K24 ["Util"]
      311 GETTABLEKS                       R45 R45 K62 ["Telemetry"]
      313 GETTABLEKS                       R45 R45 K63 ["SafetyUpsellBannerShownEvent"]
      315 CALL                             R44 1 1
      316 GETTABLEKS                       R45 R43 K64 ["new"]
      318 CALL                             R45 0 1
      319 GETIMPORT                        R46 K4 [require]
      321 GETTABLEKS                       R47 R0 K17 ["Src"]
      323 GETTABLEKS                       R47 R47 K24 ["Util"]
      325 GETTABLEKS                       R47 R47 K65 ["IsLikelyCollaboratorPrefetchEnabled"]
      327 CALL                             R46 1 1
      328 MOVE                             R47 R46
      329 CALL                             R47 0 1
      330 GETIMPORT                        R48 K4 [require]
      332 GETTABLEKS                       R49 R0 K17 ["Src"]
      334 GETTABLEKS                       R49 R49 K24 ["Util"]
      336 GETTABLEKS                       R49 R49 K66 ["likelyCollaboratorMatchesSearch"]
      338 CALL                             R48 1 1
      339 GETTABLEKS                       R49 R1 K67 ["PureComponent"]
      341 LOADK                            R51 K68 ["CollaboratorSearchWidget"]
      342 NAMECALL                         R49 R49 K69 ["extend"]
      344 CALL                             R49 2 1
      345 DUPCLOSURE                       R50 K70 [PROTO_1]
      346 CAPTURE                          VAL R1
      347 CAPTURE                          VAL R9
      348 SETTABLEKS                       R50 R49 K71 ["init"]
      350 DUPCLOSURE                       R50 K72 [PROTO_2]
      351 CAPTURE                          VAL R14
      352 SETTABLEKS                       R50 R49 K73 ["isLoading"]
      354 DUPCLOSURE                       R50 K74 [PROTO_3]
      355 SETTABLEKS                       R50 R49 K75 ["isFriend"]
      357 DUPCLOSURE                       R50 K76 [PROTO_7]
      358 CAPTURE                          VAL R36
      359 CAPTURE                          VAL R17
      360 CAPTURE                          VAL R16
      361 CAPTURE                          VAL R15
      362 CAPTURE                          VAL R9
      363 CAPTURE                          VAL R45
      364 CAPTURE                          VAL R44
      365 CAPTURE                          VAL R42
      366 SETTABLEKS                       R50 R49 K77 ["addUserFromSearch"]
      368 DUPCLOSURE                       R50 K78 [PROTO_12]
      369 CAPTURE                          VAL R47
      370 CAPTURE                          VAL R9
      371 CAPTURE                          VAL R48
      372 CAPTURE                          VAL R13
      373 CAPTURE                          VAL R14
      374 CAPTURE                          VAL R3
      375 CAPTURE                          VAL R36
      376 CAPTURE                          VAL R17
      377 SETTABLEKS                       R50 R49 K79 ["getMatches"]
      379 DUPCLOSURE                       R50 K80 [PROTO_13]
      380 CAPTURE                          VAL R47
      381 CAPTURE                          VAL R13
      382 CAPTURE                          VAL R1
      383 CAPTURE                          VAL R20
      384 CAPTURE                          VAL R18
      385 CAPTURE                          VAL R36
      386 CAPTURE                          VAL R17
      387 CAPTURE                          VAL R21
      388 CAPTURE                          VAL R19
      389 SETTABLEKS                       R50 R49 K81 ["getResults"]
      391 DUPCLOSURE                       R50 K82 [PROTO_18]
      392 CAPTURE                          VAL R37
      393 CAPTURE                          VAL R36
      394 CAPTURE                          VAL R17
      395 CAPTURE                          VAL R12
      396 CAPTURE                          VAL R9
      397 CAPTURE                          VAL R38
      398 CAPTURE                          VAL R1
      399 CAPTURE                          VAL R22
      400 CAPTURE                          VAL R13
      401 CAPTURE                          VAL R47
      402 CAPTURE                          VAL R42
      403 CAPTURE                          VAL R18
      404 CAPTURE                          VAL R15
      405 CAPTURE                          VAL R19
      406 CAPTURE                          VAL R41
      407 CAPTURE                          VAL R40
      408 CAPTURE                          VAL R3
      409 SETTABLEKS                       R50 R49 K83 ["render"]
      411 MOVE                             R50 R7
      412 DUPTABLE                         R51 K85 [{"Stylizer", "Localization", "Mouse"}]
      413 SETTABLEKS                       R5 R51 K11 ["Stylizer"]
      415 SETTABLEKS                       R8 R51 K14 ["Localization"]
      417 GETTABLEKS                       R52 R6 K84 ["Mouse"]
      419 SETTABLEKS                       R52 R51 K84 ["Mouse"]
      421 CALL                             R50 1 1
      422 MOVE                             R51 R49
      423 CALL                             R50 1 1
      424 MOVE                             R49 R50
      425 GETTABLEKS                       R50 R2 K86 ["connect"]
      427 DUPCLOSURE                       R51 K87 [PROTO_19]
      428 CAPTURE                          VAL R24
      429 CAPTURE                          VAL R25
      430 CAPTURE                          VAL R47
      431 CAPTURE                          VAL R3
      432 CAPTURE                          VAL R9
      433 CAPTURE                          VAL R36
      434 CAPTURE                          VAL R34
      435 CAPTURE                          VAL R17
      436 CAPTURE                          VAL R26
      437 CAPTURE                          VAL R35
      438 CAPTURE                          VAL R27
      439 DUPCLOSURE                       R52 K88 [PROTO_30]
      440 CAPTURE                          VAL R28
      441 CAPTURE                          VAL R30
      442 CAPTURE                          VAL R29
      443 CAPTURE                          VAL R31
      444 CAPTURE                          VAL R32
      445 CAPTURE                          VAL R9
      446 CAPTURE                          VAL R11
      447 CAPTURE                          VAL R10
      448 CAPTURE                          VAL R33
      449 CALL                             R50 2 1
      450 MOVE                             R51 R49
      451 CALL                             R50 1 1
      452 MOVE                             R49 R50
      453 RETURN                           R49 1
