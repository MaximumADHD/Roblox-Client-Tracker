PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["showDialog"]
        2 GETUPVAL                         R4 0
        3 DUPTABLE                         R5 K7 [{["Size"], ["Title"] = "", ["Header"], ["Body"], ["Buttons"]}]
        4 GETIMPORT                        R6 K10 [Vector2.new]
        6 LOADN                            R7 500
        7 LOADN                            R8 145
        8 CALL                             R6 2 1
        9 SETTABLEKS                       R6 R5 K1 ["Size"]
       11 LOADK                            R8 K11 ["Places"]
       12 LOADK                            R9 K12 ["VersionHistoryMovedHeader"]
       13 NAMECALL                         R6 R1 K13 ["getText"]
       15 CALL                             R6 3 1
       16 SETTABLEKS                       R6 R5 K4 ["Header"]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K14 ["createElement"]
       21 LOADK                            R7 K15 ["TextLabel"]
       22 GETUPVAL                         R8 2
       23 GETTABLEKS                       R8 R8 K16 ["Dictionary"]
       25 GETTABLEKS                       R8 R8 K17 ["join"]
       27 GETTABLEKS                       R9 R2 K18 ["fontStyle"]
       29 GETTABLEKS                       R9 R9 K19 ["Normal"]
       31 DUPTABLE                         R10 K27 [{["TextWrapped"] = True, ["RichText"] = True, ["AutomaticSize"], ["Size"], ["BackgroundTransparency"] = 1, ["Text"]}]
       32 GETIMPORT                        R11 K30 [Enum.AutomaticSize.Y]
       34 SETTABLEKS                       R11 R10 K23 ["AutomaticSize"]
       36 GETIMPORT                        R11 K32 [UDim2.new]
       38 LOADN                            R12 1
       39 LOADN                            R13 0
       40 LOADN                            R14 0
       41 LOADN                            R15 0
       42 CALL                             R11 4 1
       43 SETTABLEKS                       R11 R10 K1 ["Size"]
       45 LOADK                            R13 K11 ["Places"]
       46 LOADK                            R14 K33 ["VersionHistoryMovedBody"]
       47 DUPTABLE                         R15 K35 [{"location"}]
       48 LOADK                            R17 K36 [" <b>%* > %*</b>"]
       49 LOADK                            R21 K11 ["Places"]
       50 LOADK                            R22 K37 ["Window"]
       51 NAMECALL                         R19 R1 K13 ["getText"]
       53 CALL                             R19 3 1
       54 LOADK                            R22 K11 ["Places"]
       55 LOADK                            R23 K38 ["VersionHistory"]
       56 NAMECALL                         R20 R1 K13 ["getText"]
       58 CALL                             R20 3 1
       59 NAMECALL                         R17 R17 K39 ["format"]
       61 CALL                             R17 3 1
       62 MOVE                             R16 R17
       63 SETTABLEKS                       R16 R15 K34 ["location"]
       65 NAMECALL                         R11 R1 K13 ["getText"]
       67 CALL                             R11 4 1
       68 SETTABLEKS                       R11 R10 K26 ["Text"]
       70 CALL                             R8 2 -1
       71 CALL                             R6 -1 1
       72 SETTABLEKS                       R6 R5 K5 ["Body"]
       74 NEWTABLE                         R6 0 1
       76 LOADK                            R9 K40 ["General"]
       77 LOADK                            R10 K41 ["ReplyOK"]
       78 NAMECALL                         R7 R1 K13 ["getText"]
       80 CALL                             R7 3 -1
       81 SETLIST                          R6 R7 -1 [1]
       83 SETTABLEKS                       R6 R5 K6 ["Buttons"]
       85 CALL                             R3 2 0
       86 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getPlaces"]
        4 CALL                             R1 2 1
        5 NAMECALL                         R1 R1 K1 ["await"]
        7 CALL                             R1 1 3
        8 SETTABLEKS                       R1 R0 K2 ["places"]
       10 SETTABLEKS                       R2 R0 K3 ["placesPageCursor"]
       12 SETTABLEKS                       R3 R0 K4 ["placesIndex"]
       14 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R3 K2 ["gameId"]
        7 GETTABLEKS                       R4 R1 K3 ["placesController"]
        9 NEWTABLE                         R5 0 1
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R4
       13 CAPTURE                          VAL R3
       14 SETLIST                          R5 R6 1 [1]
       16 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 JUMPIFEQKNIL                     R0 ; [+11]
        5 GETTABLEKS                       R1 R0 K0 ["name"]
        7 JUMPIFNOT                        R1 ; [+7]
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R4 R0 K0 ["name"]
       12 NAMECALL                         R1 R1 K1 ["setName"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 JUMPIFEQKNIL                     R0 ; [+11]
        5 GETTABLEKS                       R1 R0 K0 ["maxPlayerCount"]
        7 JUMPIFNOT                        R1 ; [+7]
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R4 R0 K0 ["maxPlayerCount"]
       12 NAMECALL                         R1 R1 K1 ["setMaxPlayerCount"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 JUMPIFEQKNIL                     R0 ; [+12]
        5 GETTABLEKS                       R1 R0 K0 ["allowCopying"]
        7 JUMPIFEQKNIL                     R1 ; [+8]
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R4 R0 K0 ["allowCopying"]
       13 NAMECALL                         R1 R1 K1 ["setAllowCopying"]
       15 CALL                             R1 3 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 JUMPIFEQKNIL                     R0 ; [+11]
        5 GETTABLEKS                       R1 R0 K0 ["socialSlotType"]
        7 JUMPIFNOT                        R1 ; [+7]
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R4 R0 K0 ["socialSlotType"]
       12 NAMECALL                         R1 R1 K1 ["setSocialSlotType"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 JUMPIFEQKNIL                     R0 ; [+11]
        5 GETTABLEKS                       R1 R0 K0 ["customSocialSlotsCount"]
        7 JUMPIFNOT                        R1 ; [+7]
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R4 R0 K0 ["customSocialSlotsCount"]
       12 NAMECALL                         R1 R1 K1 ["setCustomSocialSlotsCount"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_8:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R1 K1 ["placesController"]
        5 GETTABLEKS                       R4 R2 K2 ["EditAsset"]
        7 GETTABLEKS                       R4 R4 K3 ["editPlaceId"]
        9 GETTABLEKS                       R5 R2 K4 ["Settings"]
       11 GETTABLEKS                       R5 R5 K5 ["Changed"]
       13 GETTABLEKS                       R5 R5 K6 ["places"]
       15 JUMPIF                           R5 ; [+2]
       16 NEWTABLE                         R5 0 0
       18 NEWTABLE                         R6 0 5
       20 NEWCLOSURE                       R7 P0
       21 CAPTURE                          VAL R5
       22 CAPTURE                          VAL R4
       23 CAPTURE                          VAL R3
       24 NEWCLOSURE                       R8 P1
       25 CAPTURE                          VAL R5
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R3
       28 NEWCLOSURE                       R9 P2
       29 CAPTURE                          VAL R5
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R3
       32 NEWCLOSURE                       R10 P3
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 NEWCLOSURE                       R11 P4
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R3
       40 SETLIST                          R6 R7 5 [1]
       42 RETURN                           R6 1

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["Settings"]
        2 GETTABLEKS                       R2 R2 K1 ["Errors"]
        4 DUPTABLE                         R3 K7 [{"Places", "EditPlaceId", "PlaceNameError", "PlacePlayerCountError", "PlaceCustomSocialSlotCountError"}]
        5 MOVE                             R4 R0
        6 LOADK                            R5 K8 ["places"]
        7 CALL                             R4 1 1
        8 SETTABLEKS                       R4 R3 K2 ["Places"]
       10 GETTABLEKS                       R4 R1 K9 ["EditAsset"]
       12 GETTABLEKS                       R4 R4 K10 ["editPlaceId"]
       14 SETTABLEKS                       R4 R3 K3 ["EditPlaceId"]
       16 GETTABLEKS                       R4 R2 K11 ["placeName"]
       18 SETTABLEKS                       R4 R3 K4 ["PlaceNameError"]
       20 GETTABLEKS                       R4 R2 K12 ["placePlayerCount"]
       22 SETTABLEKS                       R4 R3 K5 ["PlacePlayerCountError"]
       24 GETTABLEKS                       R4 R2 K13 ["placeCustomSocialSlotsCount"]
       26 SETTABLEKS                       R4 R3 K6 ["PlaceCustomSocialSlotCountError"]
       28 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R3 K2 [utf8.len]
        2 MOVE                             R4 R2
        3 CALL                             R3 1 1
        4 JUMPIFNOTEQKN                    R3 K3 [0] ; [+7]
        6 GETUPVAL                         R4 0
        7 GETUPVAL                         R5 1
        8 DUPTABLE                         R6 K6 [{["placeName"] = "Empty"}]
        9 CALL                             R5 1 -1
       10 CALL                             R4 -1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 2
       13 MOVE                             R5 R0
       14 NEWTABLE                         R6 1 0
       16 DUPTABLE                         R7 K8 [{"name"}]
       17 SETTABLEKS                       R2 R7 K7 ["name"]
       19 SETTABLE                         R7 R6 R1
       20 CALL                             R4 2 1
       21 GETUPVAL                         R5 0
       22 GETUPVAL                         R6 3
       23 LOADK                            R7 K9 ["places"]
       24 MOVE                             R8 R4
       25 CALL                             R6 2 -1
       26 CALL                             R5 -1 0
       27 GETUPVAL                         R5 0
       28 GETUPVAL                         R6 4
       29 LOADK                            R7 K4 ["placeName"]
       30 CALL                             R6 1 -1
       31 CALL                             R5 -1 0
       32 LOADN                            R5 50
       33 JUMPIFNOTLT                      R5 R3 ; [+6]
       35 GETUPVAL                         R5 0
       36 GETUPVAL                         R6 1
       37 DUPTABLE                         R7 K11 [{["placeName"] = "TooLong"}]
       38 CALL                             R6 1 -1
       39 CALL                             R5 -1 0
       40 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 LOADK                            R7 K0 ["placePlayerCount"]
        3 CALL                             R6 1 -1
        4 CALL                             R5 -1 0
        5 GETUPVAL                         R5 0
        6 GETUPVAL                         R6 1
        7 LOADK                            R7 K1 ["placeCustomSocialSlotsCount"]
        8 CALL                             R6 1 -1
        9 CALL                             R5 -1 0
       10 FASTCALL1                        TONUMBER R2 ; [+3]
       11 MOVE                             R6 R2
       12 GETIMPORT                        R5 K3 [tonumber]
       14 CALL                             R5 1 1
       15 FASTCALL1                        TONUMBER R3 ; [+3]
       16 MOVE                             R7 R3
       17 GETIMPORT                        R6 K3 [tonumber]
       19 CALL                             R6 1 1
       20 GETUPVAL                         R7 2
       21 MOVE                             R8 R0
       22 NEWTABLE                         R9 1 0
       24 DUPTABLE                         R10 K7 [{"maxPlayerCount", "customSocialSlotsCount", "socialSlotType"}]
       25 JUMPIF                           R5 ; [+2]
       26 LOADK                            R11 K8 [""]
       27 JUMP                             ; [+1]
       28 MOVE                             R11 R5
       29 SETTABLEKS                       R11 R10 K4 ["maxPlayerCount"]
       31 JUMPIF                           R6 ; [+2]
       32 LOADK                            R11 K8 [""]
       33 JUMP                             ; [+1]
       34 MOVE                             R11 R6
       35 SETTABLEKS                       R11 R10 K5 ["customSocialSlotsCount"]
       37 SETTABLEKS                       R4 R10 K6 ["socialSlotType"]
       39 SETTABLE                         R10 R9 R1
       40 CALL                             R7 2 1
       41 GETUPVAL                         R8 0
       42 GETUPVAL                         R9 3
       43 LOADK                            R10 K9 ["places"]
       44 MOVE                             R11 R7
       45 CALL                             R9 2 -1
       46 CALL                             R8 -1 0
       47 JUMPIFNOT                        R5 ; [+1]
       48 JUMPIF                           R6 ; [+48]
       49 JUMPIF                           R5 ; [+6]
       50 GETUPVAL                         R8 0
       51 GETUPVAL                         R9 4
       52 DUPTABLE                         R10 K11 [{[1] = "Error"}]
       53 CALL                             R9 1 -1
       54 CALL                             R8 -1 0
       55 JUMP                             ; [+32]
       56 JUMPIFNOTEQKN                    R5 K12 [1] ; [+6]
       58 LOADN                            R8 0
       59 SETUPVAL                         R8 5
       60 LOADN                            R8 0
       61 SETUPVAL                         R8 6
       62 JUMP                             ; [+25]
       63 LOADN                            R8 1
       64 JUMPIFNOTLT                      R8 R5 ; [+15]
       66 LOADN                            R8 100
       67 JUMPIFNOTLE                      R5 R8 ; [+12]
       69 LOADN                            R8 1
       70 SETUPVAL                         R8 5
       71 SUBK                             R9 R5 K12 [1]
       72 FASTCALL2K                       MATH_MIN R9 K13 ; [+4]
       74 LOADK                            R10 K13 [20]
       75 GETIMPORT                        R8 K16 [math.min]
       77 CALL                             R8 2 1
       78 SETUPVAL                         R8 6
       79 JUMP                             ; [+8]
       80 LOADN                            R8 1
       81 SETUPVAL                         R8 5
       82 MULK                             R9 R5 K17 [0.2]
       83 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       84 GETIMPORT                        R8 K19 [math.floor]
       86 CALL                             R8 1 1
       87 SETUPVAL                         R8 6
       88 JUMPIFNOTEQKS                    R4 K20 ["Custom"] ; [+99]
       90 JUMPIF                           R6 ; [+97]
       91 GETUPVAL                         R8 0
       92 GETUPVAL                         R9 4
       93 DUPTABLE                         R10 K21 [{["placeCustomSocialSlotsCount"] = "Error"}]
       94 CALL                             R9 1 -1
       95 CALL                             R8 -1 0
       96 RETURN                           R0 0
       97 JUMPIFNOTEQKN                    R5 K12 [1] ; [+6]
       99 LOADN                            R8 0
      100 SETUPVAL                         R8 5
      101 LOADN                            R8 0
      102 SETUPVAL                         R8 6
      103 JUMP                             ; [+25]
      104 LOADN                            R8 1
      105 JUMPIFNOTLT                      R8 R5 ; [+15]
      107 LOADN                            R8 100
      108 JUMPIFNOTLE                      R5 R8 ; [+12]
      110 LOADN                            R8 1
      111 SETUPVAL                         R8 5
      112 SUBK                             R9 R5 K12 [1]
      113 FASTCALL2K                       MATH_MIN R9 K13 ; [+4]
      115 LOADK                            R10 K13 [20]
      116 GETIMPORT                        R8 K16 [math.min]
      118 CALL                             R8 2 1
      119 SETUPVAL                         R8 6
      120 JUMP                             ; [+8]
      121 LOADN                            R8 1
      122 SETUPVAL                         R8 5
      123 MULK                             R9 R5 K17 [0.2]
      124 FASTCALL1                        MATH_FLOOR R9 ; [+2]
      125 GETIMPORT                        R8 K19 [math.floor]
      127 CALL                             R8 1 1
      128 SETUPVAL                         R8 6
      129 LOADN                            R8 1
      130 JUMPIFLT                         R5 R8 ; [+4]
      132 GETUPVAL                         R8 7
      133 JUMPIFNOTLT                      R8 R5 ; [+7]
      135 GETUPVAL                         R8 0
      136 GETUPVAL                         R9 4
      137 DUPTABLE                         R10 K11 [{[1] = "Error"}]
      138 CALL                             R9 1 -1
      139 CALL                             R8 -1 0
      140 JUMP                             ; [+5]
      141 GETUPVAL                         R8 0
      142 GETUPVAL                         R9 1
      143 LOADK                            R10 K0 ["placePlayerCount"]
      144 CALL                             R9 1 -1
      145 CALL                             R8 -1 0
      146 JUMPIFNOT                        R5 ; [+36]
      147 LOADN                            R8 100
      148 JUMPIFNOTLE                      R5 R8 ; [+10]
      150 SUBK                             R9 R5 K12 [1]
      151 FASTCALL2K                       MATH_MIN R9 K13 ; [+4]
      153 LOADK                            R10 K13 [20]
      154 GETIMPORT                        R8 K16 [math.min]
      156 CALL                             R8 2 1
      157 JUMPIFLT                         R8 R6 ; [+17]
      159 LOADN                            R8 100
      160 JUMPIFNOTLT                      R8 R5 ; [+8]
      162 MULK                             R9 R5 K17 [0.2]
      163 FASTCALL1                        MATH_FLOOR R9 ; [+2]
      164 GETIMPORT                        R8 K19 [math.floor]
      166 CALL                             R8 1 1
      167 JUMPIFLT                         R8 R6 ; [+7]
      169 LOADN                            R8 1
      170 JUMPIFNOTLT                      R8 R5 ; [+12]
      172 LOADN                            R8 1
      173 JUMPIFNOTLT                      R6 R8 ; [+9]
      175 JUMPIFNOTEQKS                    R4 K20 ["Custom"] ; [+12]
      177 GETUPVAL                         R8 0
      178 GETUPVAL                         R9 4
      179 DUPTABLE                         R10 K21 [{["placeCustomSocialSlotsCount"] = "Error"}]
      180 CALL                             R9 1 -1
      181 CALL                             R8 -1 0
      182 RETURN                           R0 0
      183 GETUPVAL                         R8 0
      184 GETUPVAL                         R9 1
      185 LOADK                            R10 K1 ["placeCustomSocialSlotsCount"]
      186 CALL                             R9 1 -1
      187 CALL                             R8 -1 0
      188 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 NEWTABLE                         R5 1 0
        4 DUPTABLE                         R6 K1 [{"allowCopying"}]
        5 SETTABLEKS                       R2 R6 K0 ["allowCopying"]
        7 SETTABLE                         R6 R5 R1
        8 CALL                             R3 2 1
        9 GETUPVAL                         R4 1
       10 GETUPVAL                         R5 2
       11 LOADK                            R6 K2 ["places"]
       12 MOVE                             R7 R3
       13 CALL                             R5 2 -1
       14 CALL                             R4 -1 0
       15 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R2 K7 [{"dispatchReloadPlaces", "dispatchSetEditPlaceId", "dispatchSetPlaceName", "dispatchUpdateServerSizeAndServerSlots", "dispatchSetAllowCopyingEnabled", "dispatchDiscardChanges", "dispatchDiscardErrors"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R3 R2 K0 ["dispatchReloadPlaces"]
        6 NEWCLOSURE                       R3 P1
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R3 R2 K1 ["dispatchSetEditPlaceId"]
       11 NEWCLOSURE                       R3 P2
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 SETTABLEKS                       R3 R2 K2 ["dispatchSetPlaceName"]
       19 NEWCLOSURE                       R3 P3
       20 CAPTURE                          VAL R1
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          UPVAL U7
       27 CAPTURE                          UPVAL U8
       28 SETTABLEKS                       R3 R2 K3 ["dispatchUpdateServerSizeAndServerSlots"]
       30 NEWCLOSURE                       R3 P4
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R1
       33 CAPTURE                          UPVAL U4
       34 SETTABLEKS                       R3 R2 K4 ["dispatchSetAllowCopyingEnabled"]
       36 NEWCLOSURE                       R3 P5
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U9
       39 SETTABLEKS                       R3 R2 K5 ["dispatchDiscardChanges"]
       41 NEWCLOSURE                       R3 P6
       42 CAPTURE                          VAL R1
       43 CAPTURE                          UPVAL U10
       44 SETTABLEKS                       R3 R2 K6 ["dispatchDiscardErrors"]
       46 RETURN                           R2 1

PROTO_18:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 DUPTABLE                         R7 K4 [{"index", "row"}]
        8 GETTABLEKS                       R9 R6 K2 ["index"]
       10 ADDK                             R8 R9 K5 [1]
       11 SETTABLEKS                       R8 R7 K2 ["index"]
       13 NEWTABLE                         R8 0 3
       15 GETTABLEKS                       R9 R6 K6 ["currentSavedVersion"]
       17 GETTABLEKS                       R10 R6 K7 ["name"]
       19 GETTABLEKS                       R11 R6 K8 ["maxPlayerCount"]
       21 SETLIST                          R8 R9 3 [1]
       23 SETTABLEKS                       R8 R7 K3 ["row"]
       25 GETTABLEKS                       R8 R6 K9 ["id"]
       27 SETTABLE                         R7 R1 R8
       28 FORGLOOP                         R2 2 ; [-22]
       30 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["AddNewPlace"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_20:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_19]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETUPVAL                         R2 1
        7 LOADB                            R3 1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOTEQ                      R0 R2 ; [+7]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["dispatchSetEditPlaceId"]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 2
       11 CALL                             R2 0 1
       12 JUMPIFNOTEQ                      R0 R2 ; [+16]
       14 GETUPVAL                         R2 3
       15 JUMPIFNOT                        R2 ; [+8]
       16 GETUPVAL                         R2 4
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K1 ["Dialog"]
       20 GETUPVAL                         R4 5
       21 GETUPVAL                         R5 6
       22 CALL                             R2 3 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 7
       25 MOVE                             R4 R1
       26 NAMECALL                         R2 R2 K2 ["ShowPlaceVersionHistoryDialog"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["Stylizer"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["new"]
        5 CALL                             R3 0 1
        6 LOADK                            R6 K2 ["General"]
        7 LOADK                            R7 K3 ["ButtonCreate"]
        8 NAMECALL                         R4 R1 K4 ["getText"]
       10 CALL                             R4 3 1
       11 GETUPVAL                         R5 1
       12 MOVE                             R6 R4
       13 GETTABLEKS                       R7 R2 K5 ["fontStyle"]
       15 GETTABLEKS                       R7 R7 K6 ["Header"]
       17 GETTABLEKS                       R7 R7 K7 ["TextSize"]
       19 GETTABLEKS                       R8 R2 K5 ["fontStyle"]
       21 GETTABLEKS                       R8 R8 K6 ["Header"]
       23 GETTABLEKS                       R8 R8 K8 ["Font"]
       25 CALL                             R5 3 1
       26 GETTABLEKS                       R6 R0 K9 ["dispatchReloadPlaces"]
       28 NEWTABLE                         R7 0 3
       30 LOADK                            R10 K10 ["Places"]
       31 LOADK                            R11 K11 ["PlaceVersion"]
       32 NAMECALL                         R8 R1 K4 ["getText"]
       34 CALL                             R8 3 1
       35 LOADK                            R11 K10 ["Places"]
       36 LOADK                            R12 K12 ["PlaceName"]
       37 NAMECALL                         R9 R1 K4 ["getText"]
       39 CALL                             R9 3 1
       40 LOADK                            R12 K10 ["Places"]
       41 LOADK                            R13 K13 ["MaxPlayers"]
       42 NAMECALL                         R10 R1 K4 ["getText"]
       44 CALL                             R10 3 -1
       45 SETLIST                          R7 R8 -1 [1]
       47 GETTABLEKS                       R9 R0 K10 ["Places"]
       49 JUMPIFNOT                        R9 ; [+3]
       50 GETTABLEKS                       R8 R0 K10 ["Places"]
       52 JUMPIF                           R8 ; [+2]
       53 NEWTABLE                         R8 0 0
       55 GETUPVAL                         R9 2
       56 MOVE                             R10 R8
       57 CALL                             R9 1 1
       58 DUPTABLE                         R10 K16 [{"CreateButton", "PlacesTable"}]
       59 GETUPVAL                         R11 3
       60 GETTABLEKS                       R11 R11 K17 ["createElement"]
       62 GETUPVAL                         R12 4
       63 DUPTABLE                         R13 K24 [{["Style"] = "GameSettingsPrimaryButton", ["Text"], ["Size"], ["LayoutOrder"], ["OnClick"]}]
       64 SETTABLEKS                       R4 R13 K20 ["Text"]
       66 GETIMPORT                        R14 K26 [UDim2.new]
       68 LOADN                            R15 0
       69 GETTABLEKS                       R17 R5 K27 ["X"]
       71 GETTABLEKS                       R18 R2 K28 ["createButton"]
       73 GETTABLEKS                       R18 R18 K29 ["PaddingX"]
       75 ADD                              R16 R17 R18
       76 LOADN                            R17 0
       77 GETTABLEKS                       R19 R5 K30 ["Y"]
       79 GETTABLEKS                       R20 R2 K28 ["createButton"]
       81 GETTABLEKS                       R20 R20 K31 ["PaddingY"]
       83 ADD                              R18 R19 R20
       84 CALL                             R14 4 1
       85 SETTABLEKS                       R14 R13 K21 ["Size"]
       87 NAMECALL                         R14 R3 K32 ["getNextOrder"]
       89 CALL                             R14 1 1
       90 SETTABLEKS                       R14 R13 K22 ["LayoutOrder"]
       92 NEWCLOSURE                       R14 P0
       93 CAPTURE                          UPVAL U5
       94 CAPTURE                          VAL R6
       95 SETTABLEKS                       R14 R13 K23 ["OnClick"]
       97 NEWTABLE                         R14 0 1
       99 GETUPVAL                         R15 3
      100 GETTABLEKS                       R15 R15 K17 ["createElement"]
      102 GETUPVAL                         R16 6
      103 DUPTABLE                         R17 K35 [{["Cursor"] = "PointingHand"}]
      104 CALL                             R15 2 -1
      105 SETLIST                          R14 R15 -1 [1]
      107 CALL                             R11 3 1
      108 SETTABLEKS                       R11 R10 K14 ["CreateButton"]
      110 GETUPVAL                         R11 3
      111 GETTABLEKS                       R11 R11 K17 ["createElement"]
      113 GETUPVAL                         R12 7
      114 DUPTABLE                         R13 K41 [{"LayoutOrder", "Headers", "Data", "MenuItems", "OnItemClicked", "NextPageFunc"}]
      115 NAMECALL                         R14 R3 K32 ["getNextOrder"]
      117 CALL                             R14 1 1
      118 SETTABLEKS                       R14 R13 K22 ["LayoutOrder"]
      120 SETTABLEKS                       R7 R13 K36 ["Headers"]
      122 SETTABLEKS                       R9 R13 K37 ["Data"]
      124 NEWTABLE                         R14 0 2
      126 DUPTABLE                         R15 K43 [{"Key", "Text"}]
      127 GETUPVAL                         R16 8
      128 CALL                             R16 0 1
      129 SETTABLEKS                       R16 R15 K42 ["Key"]
      131 LOADK                            R18 K10 ["Places"]
      132 LOADK                            R19 K44 ["ConfigurePlace"]
      133 NAMECALL                         R16 R1 K4 ["getText"]
      135 CALL                             R16 3 1
      136 SETTABLEKS                       R16 R15 K20 ["Text"]
      138 DUPTABLE                         R16 K43 [{"Key", "Text"}]
      139 GETUPVAL                         R17 9
      140 CALL                             R17 0 1
      141 SETTABLEKS                       R17 R16 K42 ["Key"]
      143 LOADK                            R19 K10 ["Places"]
      144 LOADK                            R20 K45 ["VersionHistory"]
      145 NAMECALL                         R17 R1 K4 ["getText"]
      147 CALL                             R17 3 1
      148 SETTABLEKS                       R17 R16 K20 ["Text"]
      150 SETLIST                          R14 R15 2 [1]
      152 SETTABLEKS                       R14 R13 K38 ["MenuItems"]
      154 NEWCLOSURE                       R14 P1
      155 CAPTURE                          UPVAL U8
      156 CAPTURE                          VAL R0
      157 CAPTURE                          UPVAL U9
      158 CAPTURE                          UPVAL U10
      159 CAPTURE                          UPVAL U11
      160 CAPTURE                          VAL R1
      161 CAPTURE                          VAL R2
      162 CAPTURE                          UPVAL U12
      163 SETTABLEKS                       R14 R13 K39 ["OnItemClicked"]
      165 NEWCLOSURE                       R14 P2
      166 CAPTURE                          VAL R6
      167 SETTABLEKS                       R14 R13 K40 ["NextPageFunc"]
      169 CALL                             R11 2 1
      170 SETTABLEKS                       R11 R10 K15 ["PlacesTable"]
      172 RETURN                           R10 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["dispatchDiscardChanges"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["dispatchDiscardErrors"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K2 ["dispatchSetEditPlaceId"]
       11 LOADN                            R1 0
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 GETUPVAL                         R5 3
        5 GETUPVAL                         R6 4
        6 CALL                             R1 5 0
        7 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 GETUPVAL                         R5 4
        5 GETTABLEKS                       R6 R0 K0 ["Id"]
        7 CALL                             R1 5 0
        8 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 MOVE                             R5 R0
        5 GETUPVAL                         R6 4
        6 CALL                             R1 5 0
        7 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R2 R2 K0 ["GetTermsOfUseUrl"]
        4 CALL                             R2 1 -1
        5 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R4 R0 K0 ["Id"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["Dialog"]
        6 GETUPVAL                         R2 3
        7 GETUPVAL                         R3 4
        8 CALL                             R0 3 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 5
       11 GETUPVAL                         R2 6
       12 NAMECALL                         R0 R0 K1 ["ShowPlaceVersionHistoryDialog"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_32:
        0 GETTABLEKS                       R2 R0 K0 ["Stylizer"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["new"]
        5 CALL                             R3 0 1
        6 LOADK                            R6 K2 ["Places"]
        7 LOADK                            R7 K3 ["MaxPlayersSubText"]
        8 NAMECALL                         R4 R1 K4 ["getText"]
       10 CALL                             R4 3 1
       11 GETUPVAL                         R5 1
       12 MOVE                             R6 R4
       13 GETTABLEKS                       R7 R2 K5 ["fontStyle"]
       15 GETTABLEKS                       R7 R7 K6 ["Subtext"]
       17 GETTABLEKS                       R7 R7 K7 ["TextSize"]
       19 GETTABLEKS                       R8 R2 K5 ["fontStyle"]
       21 GETTABLEKS                       R8 R8 K6 ["Subtext"]
       23 GETTABLEKS                       R8 R8 K8 ["Font"]
       25 CALL                             R5 3 1
       26 LOADK                            R8 K9 ["General"]
       27 LOADK                            R9 K10 ["ButtonView"]
       28 NAMECALL                         R6 R1 K4 ["getText"]
       30 CALL                             R6 3 1
       31 GETIMPORT                        R7 K12 [Vector2.new]
       33 LOADK                            R8 K13 [∞]
       34 GETTABLEKS                       R9 R2 K14 ["button"]
       36 GETTABLEKS                       R9 R9 K15 ["height"]
       38 CALL                             R7 2 1
       39 GETUPVAL                         R8 1
       40 MOVE                             R9 R6
       41 GETTABLEKS                       R10 R2 K5 ["fontStyle"]
       43 GETTABLEKS                       R10 R10 K16 ["Header"]
       45 GETTABLEKS                       R10 R10 K7 ["TextSize"]
       47 GETTABLEKS                       R11 R2 K5 ["fontStyle"]
       49 GETTABLEKS                       R11 R11 K16 ["Header"]
       51 GETTABLEKS                       R11 R11 K8 ["Font"]
       53 MOVE                             R12 R7
       54 CALL                             R8 4 1
       55 GETTABLEKS                       R10 R8 K17 ["X"]
       57 GETTABLEKS                       R11 R2 K14 ["button"]
       59 GETTABLEKS                       R11 R11 K18 ["width"]
       61 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
       63 GETIMPORT                        R9 K21 [math.max]
       65 CALL                             R9 2 1
       66 GETTABLEKS                       R11 R2 K14 ["button"]
       68 GETTABLEKS                       R11 R11 K15 ["height"]
       70 GETTABLEKS                       R12 R8 K22 ["Y"]
       72 SUB                              R10 R11 R12
       73 GETIMPORT                        R11 K24 [UDim2.new]
       75 LOADN                            R12 0
       76 MOVE                             R13 R9
       77 LOADN                            R14 0
       78 GETTABLEKS                       R16 R8 K22 ["Y"]
       80 ADD                              R15 R16 R10
       81 CALL                             R11 4 1
       82 GETTABLEKS                       R12 R0 K2 ["Places"]
       84 JUMPIF                           R12 ; [+2]
       85 NEWTABLE                         R12 0 0
       87 GETTABLEKS                       R13 R0 K25 ["EditPlaceId"]
       89 GETTABLE                         R14 R12 R13
       90 JUMPIF                           R14 ; [+2]
       91 NEWTABLE                         R14 0 0
       93 GETTABLEKS                       R15 R14 K26 ["name"]
       95 LOADNIL                          R16
       96 GETTABLEKS                       R17 R0 K27 ["PlaceNameError"]
       98 JUMPIFNOT                        R17 ; [+14]
       99 GETUPVAL                         R18 2
      100 GETTABLEKS                       R19 R0 K27 ["PlaceNameError"]
      102 GETTABLE                         R17 R18 R19
      103 JUMPIFNOT                        R17 ; [+9]
      104 LOADK                            R19 K9 ["General"]
      105 GETUPVAL                         R21 2
      106 GETTABLEKS                       R22 R0 K27 ["PlaceNameError"]
      108 GETTABLE                         R20 R21 R22
      109 NAMECALL                         R17 R1 K4 ["getText"]
      111 CALL                             R17 3 1
      112 MOVE                             R16 R17
      113 GETTABLEKS                       R17 R14 K28 ["maxPlayerCount"]
      115 LOADNIL                          R18
      116 GETTABLEKS                       R19 R0 K29 ["PlacePlayerCountError"]
      118 JUMPIFNOT                        R19 ; [+10]
      119 LOADK                            R21 K2 ["Places"]
      120 LOADK                            R22 K30 ["NumberError"]
      121 DUPTABLE                         R23 K34 [{["minRange"] = 1, ["maxRange"]}]
      122 GETUPVAL                         R24 3
      123 SETTABLEKS                       R24 R23 K33 ["maxRange"]
      125 NAMECALL                         R19 R1 K4 ["getText"]
      127 CALL                             R19 4 1
      128 MOVE                             R18 R19
      129 GETTABLEKS                       R19 R14 K35 ["allowCopying"]
      131 GETTABLEKS                       R20 R14 K36 ["socialSlotType"]
      133 GETTABLEKS                       R21 R14 K37 ["customSocialSlotsCount"]
      135 LOADNIL                          R22
      136 GETTABLEKS                       R23 R0 K38 ["PlaceCustomSocialSlotCountError"]
      138 JUMPIFNOT                        R23 ; [+49]
      139 FASTCALL1                        TONUMBER R21 ; [+3]
      140 MOVE                             R24 R21
      141 GETIMPORT                        R23 K40 [tonumber]
      143 CALL                             R23 1 1
      144 JUMPIF                           R23 ; [+13]
      145 FASTCALL1                        TONUMBER R17 ; [+3]
      146 MOVE                             R24 R17
      147 GETIMPORT                        R23 K40 [tonumber]
      149 CALL                             R23 1 1
      150 JUMPIF                           R23 ; [+7]
      151 LOADK                            R25 K2 ["Places"]
      152 LOADK                            R26 K41 ["SocialSlotInvalidError"]
      153 NAMECALL                         R23 R1 K4 ["getText"]
      155 CALL                             R23 3 1
      156 MOVE                             R22 R23
      157 JUMP                             ; [+30]
      158 LOADN                            R23 0
      159 JUMPIFNOTLT                      R23 R17 ; [+15]
      161 LOADN                            R23 2
      162 JUMPIFNOTLE                      R17 R23 ; [+12]
      164 LOADK                            R25 K2 ["Places"]
      165 LOADK                            R26 K42 ["SocialSlotAllowedError"]
      166 DUPTABLE                         R27 K44 [{"socialSlot"}]
      167 GETUPVAL                         R28 4
      168 SETTABLEKS                       R28 R27 K43 ["socialSlot"]
      170 NAMECALL                         R23 R1 K4 ["getText"]
      172 CALL                             R23 4 1
      173 MOVE                             R22 R23
      174 JUMP                             ; [+13]
      175 LOADK                            R25 K2 ["Places"]
      176 LOADK                            R26 K45 ["SocialSlotError"]
      177 DUPTABLE                         R27 K46 [{"minRange", "maxRange"}]
      178 GETUPVAL                         R28 5
      179 SETTABLEKS                       R28 R27 K31 ["minRange"]
      181 GETUPVAL                         R28 4
      182 SETTABLEKS                       R28 R27 K33 ["maxRange"]
      184 NAMECALL                         R23 R1 K4 ["getText"]
      186 CALL                             R23 4 1
      187 MOVE                             R22 R23
      188 GETTABLEKS                       R23 R0 K47 ["dispatchUpdateServerSizeAndServerSlots"]
      190 GETTABLEKS                       R24 R0 K48 ["dispatchSetPlaceName"]
      192 GETTABLEKS                       R25 R0 K49 ["dispatchSetAllowCopyingEnabled"]
      194 LOADK                            R28 K9 ["General"]
      195 LOADK                            R29 K50 ["AllowCopyingDesc"]
      196 NAMECALL                         R26 R1 K4 ["getText"]
      198 CALL                             R26 3 1
      199 GETUPVAL                         R27 6
      200 MOVE                             R29 R26
      201 GETTABLEKS                       R30 R2 K5 ["fontStyle"]
      203 GETTABLEKS                       R30 R30 K6 ["Subtext"]
      205 GETTABLEKS                       R30 R30 K7 ["TextSize"]
      207 GETTABLEKS                       R31 R2 K5 ["fontStyle"]
      209 GETTABLEKS                       R31 R31 K6 ["Subtext"]
      211 GETTABLEKS                       R31 R31 K8 ["Font"]
      213 GETIMPORT                        R32 K12 [Vector2.new]
      215 GETTABLEKS                       R33 R2 K51 ["radioButton"]
      217 GETTABLEKS                       R33 R33 K52 ["descriptionWidth"]
      219 LOADK                            R34 K13 [∞]
      220 CALL                             R32 2 -1
      221 NAMECALL                         R27 R27 K53 ["GetTextSize"]
      223 CALL                             R27 -1 1
      224 DUPTABLE                         R28 K60 [{"HeaderFrame", "Name", "MaxPlayers", "ServerFill", "AllowCopying", "VersionHistory"}]
      225 GETUPVAL                         R29 7
      226 GETTABLEKS                       R29 R29 K61 ["createElement"]
      228 GETUPVAL                         R30 8
      229 DUPTABLE                         R31 K67 [{["LayoutOrder"], ["BackgroundTransparency"] = 1, ["axis"], ["minimumSize"], ["contentPadding"]}]
      230 NAMECALL                         R32 R3 K68 ["getNextOrder"]
      232 CALL                             R32 1 1
      233 SETTABLEKS                       R32 R31 K62 ["LayoutOrder"]
      235 GETUPVAL                         R32 8
      236 GETTABLEKS                       R32 R32 K69 ["Axis"]
      238 GETTABLEKS                       R32 R32 K70 ["Vertical"]
      240 SETTABLEKS                       R32 R31 K64 ["axis"]
      242 GETIMPORT                        R32 K24 [UDim2.new]
      244 LOADN                            R33 1
      245 LOADN                            R34 0
      246 LOADN                            R35 0
      247 LOADN                            R36 0
      248 CALL                             R32 4 1
      249 SETTABLEKS                       R32 R31 K65 ["minimumSize"]
      251 GETIMPORT                        R32 K72 [UDim.new]
      253 LOADN                            R33 0
      254 GETTABLEKS                       R34 R2 K73 ["settingsPage"]
      256 GETTABLEKS                       R34 R34 K74 ["headerPadding"]
      258 CALL                             R32 2 1
      259 SETTABLEKS                       R32 R31 K66 ["contentPadding"]
      261 NEWTABLE                         R32 2 1
      263 GETUPVAL                         R34 7
      264 GETTABLEKS                       R34 R34 K61 ["createElement"]
      266 LOADK                            R35 K75 ["ImageButton"]
      267 NEWTABLE                         R36 8 0
      269 GETIMPORT                        R37 K24 [UDim2.new]
      271 LOADN                            R38 0
      272 GETTABLEKS                       R39 R2 K76 ["backButton"]
      274 GETTABLEKS                       R39 R39 K77 ["size"]
      276 LOADN                            R40 0
      277 GETTABLEKS                       R41 R2 K76 ["backButton"]
      279 GETTABLEKS                       R41 R41 K77 ["size"]
      281 CALL                             R37 4 1
      282 SETTABLEKS                       R37 R36 K78 ["Size"]
      284 LOADN                            R37 0
      285 SETTABLEKS                       R37 R36 K62 ["LayoutOrder"]
      287 GETTABLEKS                       R37 R2 K76 ["backButton"]
      289 GETTABLEKS                       R37 R37 K79 ["image"]
      291 SETTABLEKS                       R37 R36 K80 ["Image"]
      293 LOADN                            R37 1
      294 SETTABLEKS                       R37 R36 K63 ["BackgroundTransparency"]
      296 GETUPVAL                         R37 7
      297 GETTABLEKS                       R37 R37 K81 ["Event"]
      299 GETTABLEKS                       R37 R37 K82 ["Activated"]
      301 NEWCLOSURE                       R38 P0
      302 CAPTURE                          VAL R0
      303 SETTABLE                         R38 R36 R37
      304 NEWTABLE                         R37 0 1
      306 GETUPVAL                         R38 7
      307 GETTABLEKS                       R38 R38 K61 ["createElement"]
      309 GETUPVAL                         R39 9
      310 DUPTABLE                         R40 K85 [{["Cursor"] = "PointingHand"}]
      311 CALL                             R38 2 -1
      312 SETLIST                          R37 R38 -1 [1]
      314 CALL                             R34 3 1
      315 SETTABLEKS                       R34 R32 K86 ["BackButton"]
      317 GETUPVAL                         R33 7
      318 GETTABLEKS                       R33 R33 K61 ["createElement"]
      320 GETUPVAL                         R34 10
      321 DUPTABLE                         R35 K87 [{["LayoutOrder"] = 1}]
      322 CALL                             R33 2 1
      323 SETLIST                          R32 R33 1 [1]
      325 GETUPVAL                         R34 7
      326 GETTABLEKS                       R34 R34 K61 ["createElement"]
      328 GETUPVAL                         R35 11
      329 DUPTABLE                         R36 K90 [{["Title"], ["LayoutOrder"] = 2}]
      330 LOADK                            R39 K2 ["Places"]
      331 LOADK                            R40 K91 ["ConfigurePlace"]
      332 NAMECALL                         R37 R1 K4 ["getText"]
      334 CALL                             R37 3 1
      335 SETTABLEKS                       R37 R36 K88 ["Title"]
      337 CALL                             R34 2 1
      338 SETTABLEKS                       R34 R32 K16 ["Header"]
      340 CALL                             R29 3 1
      341 SETTABLEKS                       R29 R28 K54 ["HeaderFrame"]
      343 GETUPVAL                         R29 7
      344 GETTABLEKS                       R29 R29 K61 ["createElement"]
      346 GETUPVAL                         R30 12
      347 DUPTABLE                         R31 K92 [{"LayoutOrder", "Title"}]
      348 NAMECALL                         R32 R3 K68 ["getNextOrder"]
      350 CALL                             R32 1 1
      351 SETTABLEKS                       R32 R31 K62 ["LayoutOrder"]
      353 LOADK                            R34 K9 ["General"]
      354 LOADK                            R35 K93 ["TitleName"]
      355 NAMECALL                         R32 R1 K4 ["getText"]
      357 CALL                             R32 3 1
      358 SETTABLEKS                       R32 R31 K88 ["Title"]
      360 DUPTABLE                         R32 K95 [{"TextBox"}]
      361 GETUPVAL                         R33 7
      362 GETTABLEKS                       R33 R33 K61 ["createElement"]
      364 GETUPVAL                         R34 13
      365 DUPTABLE                         R35 K101 [{["ErrorText"], ["MaxLength"] = 50, ["OnTextChanged"], ["Text"]}]
      366 SETTABLEKS                       R16 R35 K96 ["ErrorText"]
      368 NEWCLOSURE                       R36 P1
      369 CAPTURE                          VAL R24
      370 CAPTURE                          VAL R12
      371 CAPTURE                          VAL R13
      372 SETTABLEKS                       R36 R35 K99 ["OnTextChanged"]
      374 SETTABLEKS                       R15 R35 K100 ["Text"]
      376 CALL                             R33 2 1
      377 SETTABLEKS                       R33 R32 K94 ["TextBox"]
      379 CALL                             R29 3 1
      380 SETTABLEKS                       R29 R28 K55 ["Name"]
      382 GETUPVAL                         R29 7
      383 GETTABLEKS                       R29 R29 K61 ["createElement"]
      385 GETUPVAL                         R30 12
      386 DUPTABLE                         R31 K92 [{"LayoutOrder", "Title"}]
      387 NAMECALL                         R32 R3 K68 ["getNextOrder"]
      389 CALL                             R32 1 1
      390 SETTABLEKS                       R32 R31 K62 ["LayoutOrder"]
      392 LOADK                            R34 K2 ["Places"]
      393 LOADK                            R35 K56 ["MaxPlayers"]
      394 NAMECALL                         R32 R1 K4 ["getText"]
      396 CALL                             R32 3 1
      397 SETTABLEKS                       R32 R31 K88 ["Title"]
      399 DUPTABLE                         R32 K103 [{"HeaderLayout", "TextBox", "MaxPlayersSubText"}]
      400 GETUPVAL                         R33 7
      401 GETTABLEKS                       R33 R33 K61 ["createElement"]
      403 LOADK                            R34 K104 ["UIListLayout"]
      404 DUPTABLE                         R35 K108 [{"FillDirection", "HorizontalAlignment", "SortOrder"}]
      405 GETIMPORT                        R36 K110 [Enum.FillDirection.Vertical]
      407 SETTABLEKS                       R36 R35 K105 ["FillDirection"]
      409 GETIMPORT                        R36 K112 [Enum.HorizontalAlignment.Left]
      411 SETTABLEKS                       R36 R35 K106 ["HorizontalAlignment"]
      413 GETIMPORT                        R36 K113 [Enum.SortOrder.LayoutOrder]
      415 SETTABLEKS                       R36 R35 K107 ["SortOrder"]
      417 CALL                             R33 2 1
      418 SETTABLEKS                       R33 R32 K102 ["HeaderLayout"]
      420 GETUPVAL                         R33 7
      421 GETTABLEKS                       R33 R33 K61 ["createElement"]
      423 GETUPVAL                         R34 13
      424 DUPTABLE                         R35 K115 [{["LayoutOrder"] = 1, ["Text"], ["ErrorText"], ["OnTextChanged"], ["Width"]}]
      425 SETTABLEKS                       R17 R35 K100 ["Text"]
      427 SETTABLEKS                       R18 R35 K96 ["ErrorText"]
      429 NEWCLOSURE                       R36 P2
      430 CAPTURE                          VAL R23
      431 CAPTURE                          VAL R12
      432 CAPTURE                          VAL R13
      433 CAPTURE                          VAL R21
      434 CAPTURE                          VAL R20
      435 SETTABLEKS                       R36 R35 K99 ["OnTextChanged"]
      437 GETTABLEKS                       R36 R2 K116 ["placePage"]
      439 GETTABLEKS                       R36 R36 K117 ["textBox"]
      441 GETTABLEKS                       R36 R36 K118 ["length"]
      443 SETTABLEKS                       R36 R35 K114 ["Width"]
      445 CALL                             R33 2 1
      446 SETTABLEKS                       R33 R32 K94 ["TextBox"]
      448 NOT                              R33 R18
      449 JUMPIFNOT                        R33 ; [+36]
      450 GETUPVAL                         R33 7
      451 GETTABLEKS                       R33 R33 K61 ["createElement"]
      453 LOADK                            R34 K119 ["TextLabel"]
      454 GETUPVAL                         R35 14
      455 GETTABLEKS                       R35 R35 K120 ["Dictionary"]
      457 GETTABLEKS                       R35 R35 K121 ["join"]
      459 GETTABLEKS                       R36 R2 K5 ["fontStyle"]
      461 GETTABLEKS                       R36 R36 K6 ["Subtext"]
      463 DUPTABLE                         R37 K126 [{["Size"], ["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["Text"], ["TextYAlignment"], ["TextXAlignment"], ["TextWrapped"] = True}]
      464 GETIMPORT                        R38 K24 [UDim2.new]
      466 LOADN                            R39 1
      467 LOADN                            R40 0
      468 LOADN                            R41 0
      469 GETTABLEKS                       R42 R5 K22 ["Y"]
      471 CALL                             R38 4 1
      472 SETTABLEKS                       R38 R37 K78 ["Size"]
      474 SETTABLEKS                       R4 R37 K100 ["Text"]
      476 GETIMPORT                        R38 K128 [Enum.TextYAlignment.Center]
      478 SETTABLEKS                       R38 R37 K122 ["TextYAlignment"]
      480 GETIMPORT                        R38 K129 [Enum.TextXAlignment.Left]
      482 SETTABLEKS                       R38 R37 K123 ["TextXAlignment"]
      484 CALL                             R35 2 -1
      485 CALL                             R33 -1 1
      486 SETTABLEKS                       R33 R32 K3 ["MaxPlayersSubText"]
      488 CALL                             R29 3 1
      489 SETTABLEKS                       R29 R28 K56 ["MaxPlayers"]
      491 GETUPVAL                         R29 7
      492 GETTABLEKS                       R29 R29 K61 ["createElement"]
      494 GETUPVAL                         R30 15
      495 DUPTABLE                         R31 K136 [{["LayoutOrder"], ["Enabled"] = True, ["CustomSocialSlotsCount"], ["Selected"], ["ErrorMessage"], ["OnSocialSlotTypeChanged"], ["OnCustomSocialSlotsCountChanged"]}]
      496 NAMECALL                         R32 R3 K68 ["getNextOrder"]
      498 CALL                             R32 1 1
      499 SETTABLEKS                       R32 R31 K62 ["LayoutOrder"]
      501 SETTABLEKS                       R21 R31 K131 ["CustomSocialSlotsCount"]
      503 SETTABLEKS                       R20 R31 K132 ["Selected"]
      505 SETTABLEKS                       R22 R31 K133 ["ErrorMessage"]
      507 NEWCLOSURE                       R32 P3
      508 CAPTURE                          VAL R23
      509 CAPTURE                          VAL R12
      510 CAPTURE                          VAL R13
      511 CAPTURE                          VAL R17
      512 CAPTURE                          VAL R21
      513 SETTABLEKS                       R32 R31 K134 ["OnSocialSlotTypeChanged"]
      515 NEWCLOSURE                       R32 P4
      516 CAPTURE                          VAL R23
      517 CAPTURE                          VAL R12
      518 CAPTURE                          VAL R13
      519 CAPTURE                          VAL R17
      520 CAPTURE                          VAL R20
      521 SETTABLEKS                       R32 R31 K135 ["OnCustomSocialSlotsCountChanged"]
      523 CALL                             R29 2 1
      524 SETTABLEKS                       R29 R28 K57 ["ServerFill"]
      526 GETUPVAL                         R29 7
      527 GETTABLEKS                       R29 R29 K61 ["createElement"]
      529 GETUPVAL                         R30 16
      530 DUPTABLE                         R31 K139 [{["Title"], ["Buttons"], ["Enabled"] = True, ["LayoutOrder"], ["Selected"], ["SelectionChanged"]}]
      531 LOADK                            R34 K9 ["General"]
      532 LOADK                            R35 K140 ["TitleAllowCopying"]
      533 NAMECALL                         R32 R1 K4 ["getText"]
      535 CALL                             R32 3 1
      536 SETTABLEKS                       R32 R31 K88 ["Title"]
      538 NEWTABLE                         R32 0 2
      540 DUPTABLE                         R33 K143 [{["Id"] = True, ["Title"], ["Children"]}]
      541 LOADK                            R36 K9 ["General"]
      542 LOADK                            R37 K144 ["SettingOn"]
      543 NAMECALL                         R34 R1 K4 ["getText"]
      545 CALL                             R34 3 1
      546 SETTABLEKS                       R34 R33 K88 ["Title"]
      548 DUPTABLE                         R34 K146 [{"LinkText"}]
      549 GETUPVAL                         R35 7
      550 GETTABLEKS                       R35 R35 K61 ["createElement"]
      552 GETUPVAL                         R36 17
      553 DUPTABLE                         R37 K148 [{["Text"], ["Size"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"], ["OnClick"]}]
      554 SETTABLEKS                       R26 R37 K100 ["Text"]
      556 GETIMPORT                        R38 K24 [UDim2.new]
      558 LOADN                            R39 0
      559 GETTABLEKS                       R40 R27 K17 ["X"]
      561 LOADN                            R41 0
      562 GETTABLEKS                       R42 R27 K22 ["Y"]
      564 CALL                             R38 4 1
      565 SETTABLEKS                       R38 R37 K78 ["Size"]
      567 GETIMPORT                        R38 K129 [Enum.TextXAlignment.Left]
      569 SETTABLEKS                       R38 R37 K123 ["TextXAlignment"]
      571 GETIMPORT                        R38 K150 [Enum.TextYAlignment.Top]
      573 SETTABLEKS                       R38 R37 K122 ["TextYAlignment"]
      575 DUPCLOSURE                       R38 K151 [PROTO_29]
      576 CAPTURE                          UPVAL U18
      577 CAPTURE                          UPVAL U19
      578 SETTABLEKS                       R38 R37 K147 ["OnClick"]
      580 CALL                             R35 2 1
      581 SETTABLEKS                       R35 R34 K145 ["LinkText"]
      583 SETTABLEKS                       R34 R33 K142 ["Children"]
      585 DUPTABLE                         R34 K153 [{["Id"] = False, ["Title"]}]
      586 LOADK                            R37 K9 ["General"]
      587 LOADK                            R38 K154 ["SettingOff"]
      588 NAMECALL                         R35 R1 K4 ["getText"]
      590 CALL                             R35 3 1
      591 SETTABLEKS                       R35 R34 K88 ["Title"]
      593 SETLIST                          R32 R33 2 [1]
      595 SETTABLEKS                       R32 R31 K137 ["Buttons"]
      597 NAMECALL                         R32 R3 K68 ["getNextOrder"]
      599 CALL                             R32 1 1
      600 SETTABLEKS                       R32 R31 K62 ["LayoutOrder"]
      602 SETTABLEKS                       R19 R31 K132 ["Selected"]
      604 NEWCLOSURE                       R32 P6
      605 CAPTURE                          VAL R25
      606 CAPTURE                          VAL R12
      607 CAPTURE                          VAL R13
      608 SETTABLEKS                       R32 R31 K138 ["SelectionChanged"]
      610 CALL                             R29 2 1
      611 SETTABLEKS                       R29 R28 K58 ["AllowCopying"]
      613 GETUPVAL                         R29 7
      614 GETTABLEKS                       R29 R29 K61 ["createElement"]
      616 GETUPVAL                         R30 12
      617 DUPTABLE                         R31 K92 [{"LayoutOrder", "Title"}]
      618 NAMECALL                         R32 R3 K68 ["getNextOrder"]
      620 CALL                             R32 1 1
      621 SETTABLEKS                       R32 R31 K62 ["LayoutOrder"]
      623 LOADK                            R34 K2 ["Places"]
      624 LOADK                            R35 K59 ["VersionHistory"]
      625 NAMECALL                         R32 R1 K4 ["getText"]
      627 CALL                             R32 3 1
      628 SETTABLEKS                       R32 R31 K88 ["Title"]
      630 DUPTABLE                         R32 K156 [{"ViewButton"}]
      631 GETUPVAL                         R33 7
      632 GETTABLEKS                       R33 R33 K61 ["createElement"]
      634 GETUPVAL                         R34 20
      635 DUPTABLE                         R35 K159 [{["Style"] = "GameSettingsButton", ["Text"], ["Size"], ["LayoutOrder"], ["OnClick"]}]
      636 SETTABLEKS                       R6 R35 K100 ["Text"]
      638 SETTABLEKS                       R11 R35 K78 ["Size"]
      640 NAMECALL                         R36 R3 K68 ["getNextOrder"]
      642 CALL                             R36 1 1
      643 SETTABLEKS                       R36 R35 K62 ["LayoutOrder"]
      645 NEWCLOSURE                       R36 P7
      646 CAPTURE                          UPVAL U21
      647 CAPTURE                          UPVAL U22
      648 CAPTURE                          VAL R0
      649 CAPTURE                          VAL R1
      650 CAPTURE                          VAL R2
      651 CAPTURE                          UPVAL U19
      652 CAPTURE                          VAL R13
      653 SETTABLEKS                       R36 R35 K147 ["OnClick"]
      655 NEWTABLE                         R36 0 1
      657 GETUPVAL                         R37 7
      658 GETTABLEKS                       R37 R37 K61 ["createElement"]
      660 GETUPVAL                         R38 9
      661 DUPTABLE                         R39 K85 [{["Cursor"] = "PointingHand"}]
      662 CALL                             R37 2 -1
      663 SETLIST                          R36 R37 -1 [1]
      665 CALL                             R33 3 1
      666 SETTABLEKS                       R33 R32 K155 ["ViewButton"]
      668 CALL                             R29 3 1
      669 SETTABLEKS                       R29 R28 K59 ["VersionHistory"]
      671 RETURN                           R28 1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 RETURN                           R0 1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 RETURN                           R0 1

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["EditPlaceId"]
        6 LOADNIL                          R4
        7 JUMPIFNOTEQKN                    R3 K3 [0] ; [+6]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 JUMP                             ; [+4]
       14 NEWCLOSURE                       R4 P1
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R2
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K4 ["createElement"]
       21 GETUPVAL                         R6 3
       22 DUPTABLE                         R7 K11 [{"SettingsLoadJobs", "SettingsSaveJobs", "Title", "PageId", "CreateChildren", "ShowHeader"}]
       23 GETUPVAL                         R8 4
       24 SETTABLEKS                       R8 R7 K5 ["SettingsLoadJobs"]
       26 GETUPVAL                         R8 5
       27 SETTABLEKS                       R8 R7 K6 ["SettingsSaveJobs"]
       29 LOADK                            R10 K12 ["General"]
       30 LOADK                            R12 K13 ["Category"]
       31 GETUPVAL                         R13 6
       32 CONCAT                           R11 R12 R13
       33 NAMECALL                         R8 R2 K14 ["getText"]
       35 CALL                             R8 3 1
       36 SETTABLEKS                       R8 R7 K7 ["Title"]
       38 GETUPVAL                         R8 6
       39 SETTABLEKS                       R8 R7 K8 ["PageId"]
       41 SETTABLEKS                       R4 R7 K9 ["CreateChildren"]
       43 JUMPIFEQKN                       R3 K3 [0] ; [+2]
       45 LOADB                            R8 0 +1
       46 LOADB                            R8 1
       47 SETTABLEKS                       R8 R7 K10 ["ShowHeader"]
       49 CALL                             R5 2 -1
       50 RETURN                           R5 -1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Settings"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_37:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 GETTABLEKS                       R4 R0 K0 ["Settings"]
        7 GETTABLEKS                       R4 R4 K1 ["Errors"]
        9 DUPTABLE                         R5 K7 [{"Places", "EditPlaceId", "PlaceNameError", "PlacePlayerCountError", "PlaceCustomSocialSlotCountError"}]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R7 R0 K0 ["Settings"]
       13 LOADK                            R8 K8 ["places"]
       14 CALL                             R6 2 1
       15 SETTABLEKS                       R6 R5 K2 ["Places"]
       17 GETTABLEKS                       R6 R0 K9 ["EditAsset"]
       19 GETTABLEKS                       R6 R6 K10 ["editPlaceId"]
       21 SETTABLEKS                       R6 R5 K3 ["EditPlaceId"]
       23 GETTABLEKS                       R6 R4 K11 ["placeName"]
       25 SETTABLEKS                       R6 R5 K4 ["PlaceNameError"]
       27 GETTABLEKS                       R6 R4 K12 ["placePlayerCount"]
       29 SETTABLEKS                       R6 R5 K5 ["PlacePlayerCountError"]
       31 GETTABLEKS                       R6 R4 K13 ["placeCustomSocialSlotsCount"]
       33 SETTABLEKS                       R6 R5 K6 ["PlaceCustomSocialSlotCountError"]
       35 MOVE                             R3 R5
       36 RETURN                           R3 1

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_39:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_40:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 MOVE                             R4 R0
        6 CALL                             R2 2 1
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["FitFrame"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["KeyProvider"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K10 ["getEditKeyName"]
       27 GETTABLEKS                       R4 R2 K11 ["getVersionHistoryKeyName"]
       29 GETIMPORT                        R5 K1 [script]
       31 GETTABLEKS                       R5 R5 K2 ["Parent"]
       33 GETIMPORT                        R6 K4 [require]
       35 GETTABLEKS                       R7 R0 K5 ["Packages"]
       37 GETTABLEKS                       R7 R7 K12 ["Roact"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K4 [require]
       42 GETTABLEKS                       R8 R0 K5 ["Packages"]
       44 GETTABLEKS                       R8 R8 K13 ["RoactRodux"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K4 [require]
       49 GETTABLEKS                       R9 R0 K5 ["Packages"]
       51 GETTABLEKS                       R9 R9 K14 ["Cryo"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K4 [require]
       56 GETTABLEKS                       R10 R0 K5 ["Packages"]
       58 GETTABLEKS                       R10 R10 K15 ["Framework"]
       60 CALL                             R9 1 1
       61 GETTABLEKS                       R10 R9 K16 ["ContextServices"]
       63 GETTABLEKS                       R11 R10 K17 ["withContext"]
       65 GETIMPORT                        R12 K4 [require]
       67 GETTABLEKS                       R13 R0 K7 ["Src"]
       69 GETTABLEKS                       R13 R13 K16 ["ContextServices"]
       71 GETTABLEKS                       R13 R13 K18 ["Dialog"]
       73 CALL                             R12 1 1
       74 GETTABLEKS                       R13 R9 K8 ["Util"]
       76 GETTABLEKS                       R14 R13 K19 ["deepJoin"]
       78 GETTABLEKS                       R15 R1 K20 ["FitFrameOnAxis"]
       80 GETTABLEKS                       R16 R13 K21 ["GetTextSize"]
       82 GETTABLEKS                       R17 R13 K22 ["LayoutOrderIterator"]
       84 GETTABLEKS                       R18 R9 K23 ["UI"]
       86 GETTABLEKS                       R19 R18 K24 ["Button"]
       88 GETTABLEKS                       R20 R18 K25 ["HoverArea"]
       90 GETTABLEKS                       R21 R18 K26 ["Separator"]
       92 GETTABLEKS                       R22 R18 K27 ["LinkText"]
       94 GETTABLEKS                       R23 R18 K28 ["TextInput"]
       96 GETTABLEKS                       R24 R18 K29 ["TitledFrame"]
       98 GETIMPORT                        R25 K4 [require]
      100 GETTABLEKS                       R26 R0 K7 ["Src"]
      102 GETTABLEKS                       R26 R26 K30 ["Components"]
      104 GETTABLEKS                       R26 R26 K31 ["Header"]
      106 CALL                             R25 1 1
      107 GETIMPORT                        R26 K4 [require]
      109 GETTABLEKS                       R27 R5 K30 ["Components"]
      111 GETTABLEKS                       R27 R27 K32 ["ServerFill"]
      113 CALL                             R26 1 1
      114 GETIMPORT                        R27 K4 [require]
      116 GETTABLEKS                       R28 R0 K7 ["Src"]
      118 GETTABLEKS                       R28 R28 K30 ["Components"]
      120 GETTABLEKS                       R28 R28 K33 ["TableWithMenu"]
      122 CALL                             R27 1 1
      123 GETIMPORT                        R28 K4 [require]
      125 GETTABLEKS                       R29 R0 K7 ["Src"]
      127 GETTABLEKS                       R29 R29 K30 ["Components"]
      129 GETTABLEKS                       R29 R29 K34 ["RadioButtonSet"]
      131 CALL                             R28 1 1
      132 GETIMPORT                        R29 K4 [require]
      134 GETTABLEKS                       R30 R0 K7 ["Src"]
      136 GETTABLEKS                       R30 R30 K30 ["Components"]
      138 GETTABLEKS                       R30 R30 K35 ["SettingsPages"]
      140 GETTABLEKS                       R30 R30 K36 ["SettingsPage"]
      142 CALL                             R29 1 1
      143 GETIMPORT                        R30 K4 [require]
      145 GETTABLEKS                       R31 R0 K7 ["Src"]
      147 GETTABLEKS                       R31 R31 K30 ["Components"]
      149 GETTABLEKS                       R31 R31 K18 ["Dialog"]
      151 GETTABLEKS                       R31 R31 K37 ["SimpleDialog"]
      153 CALL                             R30 1 1
      154 GETIMPORT                        R31 K4 [require]
      156 GETTABLEKS                       R32 R0 K7 ["Src"]
      158 GETTABLEKS                       R32 R32 K38 ["Actions"]
      160 GETTABLEKS                       R32 R32 K39 ["AddChange"]
      162 CALL                             R31 1 1
      163 GETIMPORT                        R32 K4 [require]
      165 GETTABLEKS                       R33 R0 K7 ["Src"]
      167 GETTABLEKS                       R33 R33 K38 ["Actions"]
      169 GETTABLEKS                       R33 R33 K40 ["AddErrors"]
      171 CALL                             R32 1 1
      172 GETIMPORT                        R33 K4 [require]
      174 GETTABLEKS                       R34 R0 K7 ["Src"]
      176 GETTABLEKS                       R34 R34 K38 ["Actions"]
      178 GETTABLEKS                       R34 R34 K41 ["DiscardChanges"]
      180 CALL                             R33 1 1
      181 GETIMPORT                        R34 K4 [require]
      183 GETTABLEKS                       R35 R0 K7 ["Src"]
      185 GETTABLEKS                       R35 R35 K38 ["Actions"]
      187 GETTABLEKS                       R35 R35 K42 ["DiscardError"]
      189 CALL                             R34 1 1
      190 GETIMPORT                        R35 K4 [require]
      192 GETTABLEKS                       R36 R0 K7 ["Src"]
      194 GETTABLEKS                       R36 R36 K38 ["Actions"]
      196 GETTABLEKS                       R36 R36 K43 ["DiscardErrors"]
      198 CALL                             R35 1 1
      199 GETIMPORT                        R36 K4 [require]
      201 GETTABLEKS                       R37 R0 K7 ["Src"]
      203 GETTABLEKS                       R37 R37 K38 ["Actions"]
      205 GETTABLEKS                       R37 R37 K44 ["SetEditPlaceId"]
      207 CALL                             R36 1 1
      208 GETIMPORT                        R37 K4 [require]
      210 GETTABLEKS                       R38 R5 K45 ["Thunks"]
      212 GETTABLEKS                       R38 R38 K46 ["ReloadPlaces"]
      214 CALL                             R37 1 1
      215 GETTABLEKS                       R38 R6 K47 ["PureComponent"]
      217 GETIMPORT                        R40 K1 [script]
      219 GETTABLEKS                       R40 R40 K48 ["Name"]
      221 NAMECALL                         R38 R38 K49 ["extend"]
      223 CALL                             R38 2 1
      224 GETIMPORT                        R39 K1 [script]
      226 GETTABLEKS                       R39 R39 K48 ["Name"]
      228 GETIMPORT                        R40 K51 [game]
      230 LOADK                            R42 K52 ["StudioPlaceConfigurationMaxPlayerCount"]
      231 LOADN                            R43 200
      232 NAMECALL                         R40 R40 K53 ["DefineFastInt"]
      234 CALL                             R40 3 1
      235 GETIMPORT                        R41 K51 [game]
      237 LOADK                            R43 K54 ["PlaceVersionHistory"]
      238 NAMECALL                         R41 R41 K55 ["GetEngineFeature"]
      240 CALL                             R41 2 1
      241 LOADN                            R42 0
      242 LOADNIL                          R43
      243 LOADN                            R44 100
      244 JUMPIFNOTLT                      R44 R40 ; [+8]
      246 MULK                             R45 R40 K56 [0.2]
      247 FASTCALL1                        MATH_FLOOR R45 ; [+2]
      248 GETIMPORT                        R44 K59 [math.floor]
      250 CALL                             R44 1 1
      251 MOVE                             R43 R44
      252 JUMP                             ; [+8]
      253 LOADN                            R45 20
      254 SUBK                             R46 R40 K60 [1]
      255 FASTCALL2                        MATH_MIN R45 R46 ; [+3]
      257 GETIMPORT                        R44 K62 [math.min]
      259 CALL                             R44 2 1
      260 MOVE                             R43 R44
      261 GETIMPORT                        R44 K51 [game]
      263 LOADK                            R46 K63 ["AssetManagerService"]
      264 NAMECALL                         R44 R44 K64 ["GetService"]
      266 CALL                             R44 2 1
      267 GETIMPORT                        R45 K51 [game]
      269 LOADK                            R47 K65 ["StudioService"]
      270 NAMECALL                         R45 R45 K64 ["GetService"]
      272 CALL                             R45 2 1
      273 GETIMPORT                        R46 K51 [game]
      275 LOADK                            R48 K66 ["TextService"]
      276 NAMECALL                         R46 R46 K64 ["GetService"]
      278 CALL                             R46 2 1
      279 GETIMPORT                        R47 K51 [game]
      281 LOADK                            R49 K67 ["GuiService"]
      282 NAMECALL                         R47 R47 K64 ["GetService"]
      284 CALL                             R47 2 1
      285 DUPTABLE                         R48 K70 [{["Empty"] = "ErrorNameEmpty"}]
      286 DUPCLOSURE                       R49 K71 [PROTO_0]
      287 CAPTURE                          VAL R30
      288 CAPTURE                          VAL R6
      289 CAPTURE                          VAL R8
      290 DUPCLOSURE                       R50 K72 [PROTO_2]
      291 DUPCLOSURE                       R51 K73 [PROTO_8]
      292 DUPCLOSURE                       R52 K74 [PROTO_9]
      293 NEWCLOSURE                       R53 P4
      294 CAPTURE                          VAL R37
      295 CAPTURE                          VAL R36
      296 CAPTURE                          VAL R32
      297 CAPTURE                          VAL R14
      298 CAPTURE                          VAL R31
      299 CAPTURE                          VAL R34
      300 CAPTURE                          REF R42
      301 CAPTURE                          REF R43
      302 CAPTURE                          VAL R40
      303 CAPTURE                          VAL R33
      304 CAPTURE                          VAL R35
      305 DUPCLOSURE                       R54 K75 [PROTO_18]
      306 DUPCLOSURE                       R55 K76 [PROTO_23]
      307 CAPTURE                          VAL R17
      308 CAPTURE                          VAL R16
      309 CAPTURE                          VAL R54
      310 CAPTURE                          VAL R6
      311 CAPTURE                          VAL R19
      312 CAPTURE                          VAL R44
      313 CAPTURE                          VAL R20
      314 CAPTURE                          VAL R27
      315 CAPTURE                          VAL R3
      316 CAPTURE                          VAL R4
      317 CAPTURE                          VAL R41
      318 CAPTURE                          VAL R49
      319 CAPTURE                          VAL R45
      320 NEWCLOSURE                       R56 P7
      321 CAPTURE                          VAL R17
      322 CAPTURE                          VAL R16
      323 CAPTURE                          VAL R48
      324 CAPTURE                          VAL R40
      325 CAPTURE                          REF R43
      326 CAPTURE                          REF R42
      327 CAPTURE                          VAL R46
      328 CAPTURE                          VAL R6
      329 CAPTURE                          VAL R15
      330 CAPTURE                          VAL R20
      331 CAPTURE                          VAL R21
      332 CAPTURE                          VAL R25
      333 CAPTURE                          VAL R24
      334 CAPTURE                          VAL R23
      335 CAPTURE                          VAL R8
      336 CAPTURE                          VAL R26
      337 CAPTURE                          VAL R28
      338 CAPTURE                          VAL R22
      339 CAPTURE                          VAL R47
      340 CAPTURE                          VAL R45
      341 CAPTURE                          VAL R19
      342 CAPTURE                          VAL R41
      343 CAPTURE                          VAL R49
      344 DUPCLOSURE                       R57 K77 [PROTO_35]
      345 CAPTURE                          VAL R55
      346 CAPTURE                          VAL R56
      347 CAPTURE                          VAL R6
      348 CAPTURE                          VAL R29
      349 CAPTURE                          VAL R50
      350 CAPTURE                          VAL R51
      351 CAPTURE                          VAL R39
      352 SETTABLEKS                       R57 R38 K78 ["render"]
      354 MOVE                             R57 R11
      355 DUPTABLE                         R58 K81 [{"Localization", "Stylizer", "Dialog"}]
      356 GETTABLEKS                       R59 R10 K79 ["Localization"]
      358 SETTABLEKS                       R59 R58 K79 ["Localization"]
      360 GETTABLEKS                       R59 R10 K80 ["Stylizer"]
      362 SETTABLEKS                       R59 R58 K80 ["Stylizer"]
      364 SETTABLEKS                       R12 R58 K18 ["Dialog"]
      366 CALL                             R57 1 1
      367 MOVE                             R58 R38
      368 CALL                             R57 1 1
      369 MOVE                             R38 R57
      370 GETIMPORT                        R57 K4 [require]
      372 GETTABLEKS                       R58 R0 K7 ["Src"]
      374 GETTABLEKS                       R58 R58 K82 ["Networking"]
      376 GETTABLEKS                       R58 R58 K83 ["settingFromState"]
      378 CALL                             R57 1 1
      379 GETTABLEKS                       R58 R7 K84 ["connect"]
      381 DUPCLOSURE                       R59 K85 [PROTO_37]
      382 CAPTURE                          VAL R57
      383 DUPCLOSURE                       R60 K86 [PROTO_40]
      384 CAPTURE                          VAL R31
      385 CAPTURE                          VAL R53
      386 CALL                             R58 2 1
      387 MOVE                             R59 R38
      388 CALL                             R58 1 1
      389 MOVE                             R38 R58
      390 SETTABLEKS                       R39 R38 K87 ["LocalizationId"]
      392 CLOSEUPVALS                      R42
      393 RETURN                           R38 1
