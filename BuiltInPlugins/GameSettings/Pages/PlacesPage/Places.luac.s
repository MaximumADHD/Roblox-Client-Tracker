PROTO_0:
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

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R4 K2 ["gameId"]
        7 GETTABLEKS                       R4 R1 K3 ["placesController"]
        9 NEWTABLE                         R5 0 1
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R4
       13 CAPTURE                          VAL R3
       14 SETLIST                          R5 R6 1 [1]
       16 RETURN                           R5 1

PROTO_2:
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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R1 K1 ["placesController"]
        5 GETTABLEKS                       R5 R2 K2 ["EditAsset"]
        7 GETTABLEKS                       R4 R5 K3 ["editPlaceId"]
        9 GETTABLEKS                       R7 R2 K4 ["Settings"]
       11 GETTABLEKS                       R6 R7 K5 ["Changed"]
       13 GETTABLEKS                       R5 R6 K6 ["places"]
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

PROTO_8:
        0 GETTABLEKS                       R3 R1 K0 ["Settings"]
        2 GETTABLEKS                       R2 R3 K1 ["Errors"]
        4 DUPTABLE                         R3 K7 [{"Places", "EditPlaceId", "PlaceNameError", "PlacePlayerCountError", "PlaceCustomSocialSlotCountError"}]
        5 MOVE                             R4 R0
        6 LOADK                            R5 K8 ["places"]
        7 CALL                             R4 1 1
        8 SETTABLEKS                       R4 R3 K2 ["Places"]
       10 GETTABLEKS                       R5 R1 K9 ["EditAsset"]
       12 GETTABLEKS                       R4 R5 K10 ["editPlaceId"]
       14 SETTABLEKS                       R4 R3 K3 ["EditPlaceId"]
       16 GETTABLEKS                       R4 R2 K11 ["placeName"]
       18 SETTABLEKS                       R4 R3 K4 ["PlaceNameError"]
       20 GETTABLEKS                       R4 R2 K12 ["placePlayerCount"]
       22 SETTABLEKS                       R4 R3 K5 ["PlacePlayerCountError"]
       24 GETTABLEKS                       R4 R2 K13 ["placeCustomSocialSlotsCount"]
       26 SETTABLEKS                       R4 R3 K6 ["PlaceCustomSocialSlotCountError"]
       28 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R3 K2 [utf8.len]
        2 MOVE                             R4 R2
        3 CALL                             R3 1 1
        4 JUMPIFNOTEQKN                    R3 K3 [0] ; [+10]
        6 GETUPVAL                         R4 0
        7 GETUPVAL                         R5 1
        8 DUPTABLE                         R6 K5 [{"placeName"}]
        9 LOADK                            R7 K6 ["Empty"]
       10 SETTABLEKS                       R7 R6 K4 ["placeName"]
       12 CALL                             R5 1 -1
       13 CALL                             R4 -1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R4 2
       16 MOVE                             R5 R0
       17 NEWTABLE                         R6 1 0
       19 DUPTABLE                         R7 K8 [{"name"}]
       20 SETTABLEKS                       R2 R7 K7 ["name"]
       22 SETTABLE                         R7 R6 R1
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 0
       25 GETUPVAL                         R6 3
       26 LOADK                            R7 K9 ["places"]
       27 MOVE                             R8 R4
       28 CALL                             R6 2 -1
       29 CALL                             R5 -1 0
       30 GETUPVAL                         R5 0
       31 GETUPVAL                         R6 4
       32 LOADK                            R7 K4 ["placeName"]
       33 CALL                             R6 1 -1
       34 CALL                             R5 -1 0
       35 LOADN                            R5 50
       36 JUMPIFNOTLT                      R5 R3 ; [+9]
       38 GETUPVAL                         R5 0
       39 GETUPVAL                         R6 1
       40 DUPTABLE                         R7 K5 [{"placeName"}]
       41 LOADK                            R8 K10 ["TooLong"]
       42 SETTABLEKS                       R8 R7 K4 ["placeName"]
       44 CALL                             R6 1 -1
       45 CALL                             R5 -1 0
       46 RETURN                           R0 0

PROTO_12:
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
       48 JUMPIF                           R6 ; [+54]
       49 JUMPIF                           R5 ; [+9]
       50 GETUPVAL                         R8 0
       51 GETUPVAL                         R9 4
       52 DUPTABLE                         R10 K10 [{"placePlayerCount"}]
       53 LOADK                            R11 K11 ["Error"]
       54 SETTABLEKS                       R11 R10 K0 ["placePlayerCount"]
       56 CALL                             R9 1 -1
       57 CALL                             R8 -1 0
       58 JUMP                             ; [+32]
       59 JUMPIFNOTEQKN                    R5 K12 [1] ; [+6]
       61 LOADN                            R8 0
       62 SETUPVAL                         R8 5
       63 LOADN                            R8 0
       64 SETUPVAL                         R8 6
       65 JUMP                             ; [+25]
       66 LOADN                            R8 1
       67 JUMPIFNOTLT                      R8 R5 ; [+15]
       69 LOADN                            R8 100
       70 JUMPIFNOTLE                      R5 R8 ; [+12]
       72 LOADN                            R8 1
       73 SETUPVAL                         R8 5
       74 SUBK                             R9 R5 K12 [1]
       75 FASTCALL2K                       MATH_MIN R9 K13 ; [+4]
       77 LOADK                            R10 K13 [20]
       78 GETIMPORT                        R8 K16 [math.min]
       80 CALL                             R8 2 1
       81 SETUPVAL                         R8 6
       82 JUMP                             ; [+8]
       83 LOADN                            R8 1
       84 SETUPVAL                         R8 5
       85 MULK                             R9 R5 K17 [0.2]
       86 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       87 GETIMPORT                        R8 K19 [math.floor]
       89 CALL                             R8 1 1
       90 SETUPVAL                         R8 6
       91 JUMPIFNOTEQKS                    R4 K20 ["Custom"] ; [+108]
       93 JUMPIF                           R6 ; [+106]
       94 GETUPVAL                         R8 0
       95 GETUPVAL                         R9 4
       96 DUPTABLE                         R10 K21 [{"placeCustomSocialSlotsCount"}]
       97 LOADK                            R11 K11 ["Error"]
       98 SETTABLEKS                       R11 R10 K1 ["placeCustomSocialSlotsCount"]
      100 CALL                             R9 1 -1
      101 CALL                             R8 -1 0
      102 RETURN                           R0 0
      103 JUMPIFNOTEQKN                    R5 K12 [1] ; [+6]
      105 LOADN                            R8 0
      106 SETUPVAL                         R8 5
      107 LOADN                            R8 0
      108 SETUPVAL                         R8 6
      109 JUMP                             ; [+25]
      110 LOADN                            R8 1
      111 JUMPIFNOTLT                      R8 R5 ; [+15]
      113 LOADN                            R8 100
      114 JUMPIFNOTLE                      R5 R8 ; [+12]
      116 LOADN                            R8 1
      117 SETUPVAL                         R8 5
      118 SUBK                             R9 R5 K12 [1]
      119 FASTCALL2K                       MATH_MIN R9 K13 ; [+4]
      121 LOADK                            R10 K13 [20]
      122 GETIMPORT                        R8 K16 [math.min]
      124 CALL                             R8 2 1
      125 SETUPVAL                         R8 6
      126 JUMP                             ; [+8]
      127 LOADN                            R8 1
      128 SETUPVAL                         R8 5
      129 MULK                             R9 R5 K17 [0.2]
      130 FASTCALL1                        MATH_FLOOR R9 ; [+2]
      131 GETIMPORT                        R8 K19 [math.floor]
      133 CALL                             R8 1 1
      134 SETUPVAL                         R8 6
      135 LOADN                            R8 1
      136 JUMPIFLT                         R5 R8 ; [+4]
      138 GETUPVAL                         R8 7
      139 JUMPIFNOTLT                      R8 R5 ; [+10]
      141 GETUPVAL                         R8 0
      142 GETUPVAL                         R9 4
      143 DUPTABLE                         R10 K10 [{"placePlayerCount"}]
      144 LOADK                            R11 K11 ["Error"]
      145 SETTABLEKS                       R11 R10 K0 ["placePlayerCount"]
      147 CALL                             R9 1 -1
      148 CALL                             R8 -1 0
      149 JUMP                             ; [+5]
      150 GETUPVAL                         R8 0
      151 GETUPVAL                         R9 1
      152 LOADK                            R10 K0 ["placePlayerCount"]
      153 CALL                             R9 1 -1
      154 CALL                             R8 -1 0
      155 JUMPIFNOT                        R5 ; [+39]
      156 LOADN                            R8 100
      157 JUMPIFNOTLE                      R5 R8 ; [+10]
      159 SUBK                             R9 R5 K12 [1]
      160 FASTCALL2K                       MATH_MIN R9 K13 ; [+4]
      162 LOADK                            R10 K13 [20]
      163 GETIMPORT                        R8 K16 [math.min]
      165 CALL                             R8 2 1
      166 JUMPIFLT                         R8 R6 ; [+17]
      168 LOADN                            R8 100
      169 JUMPIFNOTLT                      R8 R5 ; [+8]
      171 MULK                             R9 R5 K17 [0.2]
      172 FASTCALL1                        MATH_FLOOR R9 ; [+2]
      173 GETIMPORT                        R8 K19 [math.floor]
      175 CALL                             R8 1 1
      176 JUMPIFLT                         R8 R6 ; [+7]
      178 LOADN                            R8 1
      179 JUMPIFNOTLT                      R8 R5 ; [+15]
      181 LOADN                            R8 1
      182 JUMPIFNOTLT                      R6 R8 ; [+12]
      184 JUMPIFNOTEQKS                    R4 K20 ["Custom"] ; [+15]
      186 GETUPVAL                         R8 0
      187 GETUPVAL                         R9 4
      188 DUPTABLE                         R10 K21 [{"placeCustomSocialSlotsCount"}]
      189 LOADK                            R11 K11 ["Error"]
      190 SETTABLEKS                       R11 R10 K1 ["placeCustomSocialSlotsCount"]
      192 CALL                             R9 1 -1
      193 CALL                             R8 -1 0
      194 RETURN                           R0 0
      195 GETUPVAL                         R8 0
      196 GETUPVAL                         R9 1
      197 LOADK                            R10 K1 ["placeCustomSocialSlotsCount"]
      198 CALL                             R9 1 -1
      199 CALL                             R8 -1 0
      200 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["AddNewPlace"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_19:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_18]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETUPVAL                         R2 1
        7 LOADB                            R3 1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOTEQ                      R0 R2 ; [+6]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["dispatchSetEditPlaceId"]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOTEQ                      R0 R2 ; [+7]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["dispatchSetEditPlaceId"]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 2
       11 CALL                             R2 0 1
       12 JUMPIFNOTEQ                      R0 R2 ; [+6]
       14 GETUPVAL                         R2 3
       15 MOVE                             R4 R1
       16 NAMECALL                         R2 R2 K1 ["ShowPlaceVersionHistoryDialog"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["Stylizer"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["new"]
        5 CALL                             R3 0 1
        6 LOADK                            R6 K2 ["General"]
        7 LOADK                            R7 K3 ["ButtonCreate"]
        8 NAMECALL                         R4 R1 K4 ["getText"]
       10 CALL                             R4 3 1
       11 GETUPVAL                         R5 1
       12 MOVE                             R6 R4
       13 GETTABLEKS                       R9 R2 K5 ["fontStyle"]
       15 GETTABLEKS                       R8 R9 K6 ["Header"]
       17 GETTABLEKS                       R7 R8 K7 ["TextSize"]
       19 GETTABLEKS                       R10 R2 K5 ["fontStyle"]
       21 GETTABLEKS                       R9 R10 K6 ["Header"]
       23 GETTABLEKS                       R8 R9 K8 ["Font"]
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
       59 GETUPVAL                         R12 3
       60 GETTABLEKS                       R11 R12 K17 ["createElement"]
       62 GETUPVAL                         R12 4
       63 DUPTABLE                         R13 K23 [{"Style", "Text", "Size", "LayoutOrder", "OnClick"}]
       64 LOADK                            R14 K24 ["GameSettingsPrimaryButton"]
       65 SETTABLEKS                       R14 R13 K18 ["Style"]
       67 SETTABLEKS                       R4 R13 K19 ["Text"]
       69 GETIMPORT                        R14 K26 [UDim2.new]
       71 LOADN                            R15 0
       72 GETTABLEKS                       R17 R5 K27 ["X"]
       74 GETTABLEKS                       R19 R2 K28 ["createButton"]
       76 GETTABLEKS                       R18 R19 K29 ["PaddingX"]
       78 ADD                              R16 R17 R18
       79 LOADN                            R17 0
       80 GETTABLEKS                       R19 R5 K30 ["Y"]
       82 GETTABLEKS                       R21 R2 K28 ["createButton"]
       84 GETTABLEKS                       R20 R21 K31 ["PaddingY"]
       86 ADD                              R18 R19 R20
       87 CALL                             R14 4 1
       88 SETTABLEKS                       R14 R13 K20 ["Size"]
       90 NAMECALL                         R14 R3 K32 ["getNextOrder"]
       92 CALL                             R14 1 1
       93 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
       95 NEWCLOSURE                       R14 P0
       96 CAPTURE                          UPVAL U5
       97 CAPTURE                          VAL R6
       98 SETTABLEKS                       R14 R13 K22 ["OnClick"]
      100 NEWTABLE                         R14 0 1
      102 GETUPVAL                         R16 3
      103 GETTABLEKS                       R15 R16 K17 ["createElement"]
      105 GETUPVAL                         R16 6
      106 DUPTABLE                         R17 K34 [{"Cursor"}]
      107 LOADK                            R18 K35 ["PointingHand"]
      108 SETTABLEKS                       R18 R17 K33 ["Cursor"]
      110 CALL                             R15 2 -1
      111 SETLIST                          R14 R15 -1 [1]
      113 CALL                             R11 3 1
      114 SETTABLEKS                       R11 R10 K14 ["CreateButton"]
      116 GETUPVAL                         R12 7
      117 JUMPIFNOT                        R12 ; [+43]
      118 GETUPVAL                         R12 3
      119 GETTABLEKS                       R11 R12 K17 ["createElement"]
      121 GETUPVAL                         R12 8
      122 DUPTABLE                         R13 K41 [{"LayoutOrder", "Headers", "Data", "MenuItems", "OnItemClicked", "NextPageFunc"}]
      123 NAMECALL                         R14 R3 K32 ["getNextOrder"]
      125 CALL                             R14 1 1
      126 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
      128 SETTABLEKS                       R7 R13 K36 ["Headers"]
      130 SETTABLEKS                       R9 R13 K37 ["Data"]
      132 NEWTABLE                         R14 0 1
      134 DUPTABLE                         R15 K43 [{"Key", "Text"}]
      135 GETUPVAL                         R16 9
      136 CALL                             R16 0 1
      137 SETTABLEKS                       R16 R15 K42 ["Key"]
      139 LOADK                            R18 K10 ["Places"]
      140 LOADK                            R19 K44 ["ConfigurePlace"]
      141 NAMECALL                         R16 R1 K4 ["getText"]
      143 CALL                             R16 3 1
      144 SETTABLEKS                       R16 R15 K19 ["Text"]
      146 SETLIST                          R14 R15 1 [1]
      148 SETTABLEKS                       R14 R13 K38 ["MenuItems"]
      150 NEWCLOSURE                       R14 P1
      151 CAPTURE                          UPVAL U9
      152 CAPTURE                          VAL R0
      153 SETTABLEKS                       R14 R13 K39 ["OnItemClicked"]
      155 NEWCLOSURE                       R14 P2
      156 CAPTURE                          VAL R6
      157 SETTABLEKS                       R14 R13 K40 ["NextPageFunc"]
      159 CALL                             R11 2 1
      160 JUMP                             ; [+56]
      161 GETUPVAL                         R12 3
      162 GETTABLEKS                       R11 R12 K17 ["createElement"]
      164 GETUPVAL                         R12 8
      165 DUPTABLE                         R13 K41 [{"LayoutOrder", "Headers", "Data", "MenuItems", "OnItemClicked", "NextPageFunc"}]
      166 NAMECALL                         R14 R3 K32 ["getNextOrder"]
      168 CALL                             R14 1 1
      169 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
      171 SETTABLEKS                       R7 R13 K36 ["Headers"]
      173 SETTABLEKS                       R9 R13 K37 ["Data"]
      175 NEWTABLE                         R14 0 2
      177 DUPTABLE                         R15 K43 [{"Key", "Text"}]
      178 GETUPVAL                         R16 9
      179 CALL                             R16 0 1
      180 SETTABLEKS                       R16 R15 K42 ["Key"]
      182 LOADK                            R18 K10 ["Places"]
      183 LOADK                            R19 K44 ["ConfigurePlace"]
      184 NAMECALL                         R16 R1 K4 ["getText"]
      186 CALL                             R16 3 1
      187 SETTABLEKS                       R16 R15 K19 ["Text"]
      189 DUPTABLE                         R16 K43 [{"Key", "Text"}]
      190 GETUPVAL                         R17 10
      191 CALL                             R17 0 1
      192 SETTABLEKS                       R17 R16 K42 ["Key"]
      194 LOADK                            R19 K10 ["Places"]
      195 LOADK                            R20 K45 ["VersionHistory"]
      196 NAMECALL                         R17 R1 K4 ["getText"]
      198 CALL                             R17 3 1
      199 SETTABLEKS                       R17 R16 K19 ["Text"]
      201 SETLIST                          R14 R15 2 [1]
      203 SETTABLEKS                       R14 R13 K38 ["MenuItems"]
      205 NEWCLOSURE                       R14 P3
      206 CAPTURE                          UPVAL U9
      207 CAPTURE                          VAL R0
      208 CAPTURE                          UPVAL U10
      209 CAPTURE                          UPVAL U11
      210 SETTABLEKS                       R14 R13 K39 ["OnItemClicked"]
      212 NEWCLOSURE                       R14 P4
      213 CAPTURE                          VAL R6
      214 SETTABLEKS                       R14 R13 K40 ["NextPageFunc"]
      216 CALL                             R11 2 1
      217 SETTABLEKS                       R11 R10 K15 ["PlacesTable"]
      219 RETURN                           R10 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["dispatchDiscardChanges"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["dispatchDiscardErrors"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K2 ["dispatchSetEditPlaceId"]
       11 LOADN                            R1 0
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 0
        5 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 GETUPVAL                         R5 3
        5 GETUPVAL                         R6 4
        6 CALL                             R1 5 0
        7 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 GETUPVAL                         R5 4
        5 GETTABLEKS                       R6 R0 K0 ["Id"]
        7 CALL                             R1 5 0
        8 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 MOVE                             R5 R0
        5 GETUPVAL                         R6 4
        6 CALL                             R1 5 0
        7 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R2 R2 K0 ["GetTermsOfUseUrl"]
        4 CALL                             R2 1 -1
        5 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R4 R0 K0 ["Id"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ShowPlaceVersionHistoryDialog"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R2 R0 K0 ["Stylizer"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["new"]
        5 CALL                             R3 0 1
        6 LOADK                            R6 K2 ["Places"]
        7 LOADK                            R7 K3 ["MaxPlayersSubText"]
        8 NAMECALL                         R4 R1 K4 ["getText"]
       10 CALL                             R4 3 1
       11 GETUPVAL                         R5 1
       12 MOVE                             R6 R4
       13 GETTABLEKS                       R9 R2 K5 ["fontStyle"]
       15 GETTABLEKS                       R8 R9 K6 ["Subtext"]
       17 GETTABLEKS                       R7 R8 K7 ["TextSize"]
       19 GETTABLEKS                       R10 R2 K5 ["fontStyle"]
       21 GETTABLEKS                       R9 R10 K6 ["Subtext"]
       23 GETTABLEKS                       R8 R9 K8 ["Font"]
       25 CALL                             R5 3 1
       26 LOADK                            R8 K9 ["General"]
       27 LOADK                            R9 K10 ["ButtonView"]
       28 NAMECALL                         R6 R1 K4 ["getText"]
       30 CALL                             R6 3 1
       31 GETIMPORT                        R7 K12 [Vector2.new]
       33 LOADK                            R8 K13 [∞]
       34 GETTABLEKS                       R10 R2 K14 ["button"]
       36 GETTABLEKS                       R9 R10 K15 ["height"]
       38 CALL                             R7 2 1
       39 GETUPVAL                         R8 1
       40 MOVE                             R9 R6
       41 GETTABLEKS                       R12 R2 K5 ["fontStyle"]
       43 GETTABLEKS                       R11 R12 K16 ["Header"]
       45 GETTABLEKS                       R10 R11 K7 ["TextSize"]
       47 GETTABLEKS                       R13 R2 K5 ["fontStyle"]
       49 GETTABLEKS                       R12 R13 K16 ["Header"]
       51 GETTABLEKS                       R11 R12 K8 ["Font"]
       53 MOVE                             R12 R7
       54 CALL                             R8 4 1
       55 GETTABLEKS                       R10 R8 K17 ["X"]
       57 GETTABLEKS                       R12 R2 K14 ["button"]
       59 GETTABLEKS                       R11 R12 K18 ["width"]
       61 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
       63 GETIMPORT                        R9 K21 [math.max]
       65 CALL                             R9 2 1
       66 GETTABLEKS                       R12 R2 K14 ["button"]
       68 GETTABLEKS                       R11 R12 K15 ["height"]
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
      118 JUMPIFNOT                        R19 ; [+13]
      119 LOADK                            R21 K2 ["Places"]
      120 LOADK                            R22 K30 ["NumberError"]
      121 DUPTABLE                         R23 K33 [{"minRange", "maxRange"}]
      122 LOADN                            R24 1
      123 SETTABLEKS                       R24 R23 K31 ["minRange"]
      125 GETUPVAL                         R24 3
      126 SETTABLEKS                       R24 R23 K32 ["maxRange"]
      128 NAMECALL                         R19 R1 K4 ["getText"]
      130 CALL                             R19 4 1
      131 MOVE                             R18 R19
      132 GETTABLEKS                       R19 R14 K34 ["allowCopying"]
      134 GETTABLEKS                       R20 R14 K35 ["socialSlotType"]
      136 GETTABLEKS                       R21 R14 K36 ["customSocialSlotsCount"]
      138 LOADNIL                          R22
      139 GETTABLEKS                       R23 R0 K37 ["PlaceCustomSocialSlotCountError"]
      141 JUMPIFNOT                        R23 ; [+49]
      142 FASTCALL1                        TONUMBER R21 ; [+3]
      143 MOVE                             R24 R21
      144 GETIMPORT                        R23 K39 [tonumber]
      146 CALL                             R23 1 1
      147 JUMPIF                           R23 ; [+13]
      148 FASTCALL1                        TONUMBER R17 ; [+3]
      149 MOVE                             R24 R17
      150 GETIMPORT                        R23 K39 [tonumber]
      152 CALL                             R23 1 1
      153 JUMPIF                           R23 ; [+7]
      154 LOADK                            R25 K2 ["Places"]
      155 LOADK                            R26 K40 ["SocialSlotInvalidError"]
      156 NAMECALL                         R23 R1 K4 ["getText"]
      158 CALL                             R23 3 1
      159 MOVE                             R22 R23
      160 JUMP                             ; [+30]
      161 LOADN                            R23 0
      162 JUMPIFNOTLT                      R23 R17 ; [+15]
      164 LOADN                            R23 2
      165 JUMPIFNOTLE                      R17 R23 ; [+12]
      167 LOADK                            R25 K2 ["Places"]
      168 LOADK                            R26 K41 ["SocialSlotAllowedError"]
      169 DUPTABLE                         R27 K43 [{"socialSlot"}]
      170 GETUPVAL                         R28 4
      171 SETTABLEKS                       R28 R27 K42 ["socialSlot"]
      173 NAMECALL                         R23 R1 K4 ["getText"]
      175 CALL                             R23 4 1
      176 MOVE                             R22 R23
      177 JUMP                             ; [+13]
      178 LOADK                            R25 K2 ["Places"]
      179 LOADK                            R26 K44 ["SocialSlotError"]
      180 DUPTABLE                         R27 K33 [{"minRange", "maxRange"}]
      181 GETUPVAL                         R28 5
      182 SETTABLEKS                       R28 R27 K31 ["minRange"]
      184 GETUPVAL                         R28 4
      185 SETTABLEKS                       R28 R27 K32 ["maxRange"]
      187 NAMECALL                         R23 R1 K4 ["getText"]
      189 CALL                             R23 4 1
      190 MOVE                             R22 R23
      191 GETTABLEKS                       R23 R0 K45 ["dispatchUpdateServerSizeAndServerSlots"]
      193 GETTABLEKS                       R24 R0 K46 ["dispatchSetPlaceName"]
      195 GETTABLEKS                       R25 R0 K47 ["dispatchSetAllowCopyingEnabled"]
      197 LOADK                            R28 K9 ["General"]
      198 LOADK                            R29 K48 ["AllowCopyingDesc"]
      199 NAMECALL                         R26 R1 K4 ["getText"]
      201 CALL                             R26 3 1
      202 GETUPVAL                         R27 6
      203 MOVE                             R29 R26
      204 GETTABLEKS                       R32 R2 K5 ["fontStyle"]
      206 GETTABLEKS                       R31 R32 K6 ["Subtext"]
      208 GETTABLEKS                       R30 R31 K7 ["TextSize"]
      210 GETTABLEKS                       R33 R2 K5 ["fontStyle"]
      212 GETTABLEKS                       R32 R33 K6 ["Subtext"]
      214 GETTABLEKS                       R31 R32 K8 ["Font"]
      216 GETIMPORT                        R32 K12 [Vector2.new]
      218 GETTABLEKS                       R34 R2 K49 ["radioButton"]
      220 GETTABLEKS                       R33 R34 K50 ["descriptionWidth"]
      222 LOADK                            R34 K13 [∞]
      223 CALL                             R32 2 -1
      224 NAMECALL                         R27 R27 K51 ["GetTextSize"]
      226 CALL                             R27 -1 1
      227 DUPTABLE                         R28 K58 [{"HeaderFrame", "Name", "MaxPlayers", "ServerFill", "AllowCopying", "VersionHistory"}]
      228 GETUPVAL                         R30 7
      229 GETTABLEKS                       R29 R30 K59 ["createElement"]
      231 GETUPVAL                         R30 8
      232 DUPTABLE                         R31 K65 [{"LayoutOrder", "BackgroundTransparency", "axis", "minimumSize", "contentPadding"}]
      233 NAMECALL                         R32 R3 K66 ["getNextOrder"]
      235 CALL                             R32 1 1
      236 SETTABLEKS                       R32 R31 K60 ["LayoutOrder"]
      238 LOADN                            R32 1
      239 SETTABLEKS                       R32 R31 K61 ["BackgroundTransparency"]
      241 GETUPVAL                         R34 8
      242 GETTABLEKS                       R33 R34 K67 ["Axis"]
      244 GETTABLEKS                       R32 R33 K68 ["Vertical"]
      246 SETTABLEKS                       R32 R31 K62 ["axis"]
      248 GETIMPORT                        R32 K24 [UDim2.new]
      250 LOADN                            R33 1
      251 LOADN                            R34 0
      252 LOADN                            R35 0
      253 LOADN                            R36 0
      254 CALL                             R32 4 1
      255 SETTABLEKS                       R32 R31 K63 ["minimumSize"]
      257 GETIMPORT                        R32 K70 [UDim.new]
      259 LOADN                            R33 0
      260 GETTABLEKS                       R35 R2 K71 ["settingsPage"]
      262 GETTABLEKS                       R34 R35 K72 ["headerPadding"]
      264 CALL                             R32 2 1
      265 SETTABLEKS                       R32 R31 K64 ["contentPadding"]
      267 NEWTABLE                         R32 2 1
      269 GETUPVAL                         R35 7
      270 GETTABLEKS                       R34 R35 K59 ["createElement"]
      272 LOADK                            R35 K73 ["ImageButton"]
      273 NEWTABLE                         R36 8 0
      275 GETIMPORT                        R37 K24 [UDim2.new]
      277 LOADN                            R38 0
      278 GETTABLEKS                       R40 R2 K74 ["backButton"]
      280 GETTABLEKS                       R39 R40 K75 ["size"]
      282 LOADN                            R40 0
      283 GETTABLEKS                       R42 R2 K74 ["backButton"]
      285 GETTABLEKS                       R41 R42 K75 ["size"]
      287 CALL                             R37 4 1
      288 SETTABLEKS                       R37 R36 K76 ["Size"]
      290 LOADN                            R37 0
      291 SETTABLEKS                       R37 R36 K60 ["LayoutOrder"]
      293 GETTABLEKS                       R38 R2 K74 ["backButton"]
      295 GETTABLEKS                       R37 R38 K77 ["image"]
      297 SETTABLEKS                       R37 R36 K78 ["Image"]
      299 LOADN                            R37 1
      300 SETTABLEKS                       R37 R36 K61 ["BackgroundTransparency"]
      302 GETUPVAL                         R39 7
      303 GETTABLEKS                       R38 R39 K79 ["Event"]
      305 GETTABLEKS                       R37 R38 K80 ["Activated"]
      307 NEWCLOSURE                       R38 P0
      308 CAPTURE                          VAL R0
      309 SETTABLE                         R38 R36 R37
      310 NEWTABLE                         R37 0 1
      312 GETUPVAL                         R39 7
      313 GETTABLEKS                       R38 R39 K59 ["createElement"]
      315 GETUPVAL                         R39 9
      316 DUPTABLE                         R40 K82 [{"Cursor"}]
      317 LOADK                            R41 K83 ["PointingHand"]
      318 SETTABLEKS                       R41 R40 K81 ["Cursor"]
      320 CALL                             R38 2 -1
      321 SETLIST                          R37 R38 -1 [1]
      323 CALL                             R34 3 1
      324 SETTABLEKS                       R34 R32 K84 ["BackButton"]
      326 GETUPVAL                         R34 7
      327 GETTABLEKS                       R33 R34 K59 ["createElement"]
      329 GETUPVAL                         R34 10
      330 DUPTABLE                         R35 K85 [{"LayoutOrder"}]
      331 LOADN                            R36 1
      332 SETTABLEKS                       R36 R35 K60 ["LayoutOrder"]
      334 CALL                             R33 2 1
      335 SETLIST                          R32 R33 1 [1]
      337 GETUPVAL                         R35 7
      338 GETTABLEKS                       R34 R35 K59 ["createElement"]
      340 GETUPVAL                         R35 11
      341 DUPTABLE                         R36 K87 [{"Title", "LayoutOrder"}]
      342 LOADK                            R39 K2 ["Places"]
      343 LOADK                            R40 K88 ["ConfigurePlace"]
      344 NAMECALL                         R37 R1 K4 ["getText"]
      346 CALL                             R37 3 1
      347 SETTABLEKS                       R37 R36 K86 ["Title"]
      349 LOADN                            R37 2
      350 SETTABLEKS                       R37 R36 K60 ["LayoutOrder"]
      352 CALL                             R34 2 1
      353 SETTABLEKS                       R34 R32 K16 ["Header"]
      355 CALL                             R29 3 1
      356 SETTABLEKS                       R29 R28 K52 ["HeaderFrame"]
      358 GETUPVAL                         R30 7
      359 GETTABLEKS                       R29 R30 K59 ["createElement"]
      361 GETUPVAL                         R30 12
      362 DUPTABLE                         R31 K89 [{"LayoutOrder", "Title"}]
      363 NAMECALL                         R32 R3 K66 ["getNextOrder"]
      365 CALL                             R32 1 1
      366 SETTABLEKS                       R32 R31 K60 ["LayoutOrder"]
      368 LOADK                            R34 K9 ["General"]
      369 LOADK                            R35 K90 ["TitleName"]
      370 NAMECALL                         R32 R1 K4 ["getText"]
      372 CALL                             R32 3 1
      373 SETTABLEKS                       R32 R31 K86 ["Title"]
      375 DUPTABLE                         R32 K92 [{"TextBox"}]
      376 GETUPVAL                         R34 7
      377 GETTABLEKS                       R33 R34 K59 ["createElement"]
      379 GETUPVAL                         R34 13
      380 DUPTABLE                         R35 K97 [{"ErrorText", "MaxLength", "OnTextChanged", "Text"}]
      381 SETTABLEKS                       R16 R35 K93 ["ErrorText"]
      383 LOADN                            R36 50
      384 SETTABLEKS                       R36 R35 K94 ["MaxLength"]
      386 NEWCLOSURE                       R36 P1
      387 CAPTURE                          VAL R24
      388 CAPTURE                          VAL R12
      389 CAPTURE                          VAL R13
      390 SETTABLEKS                       R36 R35 K95 ["OnTextChanged"]
      392 SETTABLEKS                       R15 R35 K96 ["Text"]
      394 CALL                             R33 2 1
      395 SETTABLEKS                       R33 R32 K91 ["TextBox"]
      397 CALL                             R29 3 1
      398 SETTABLEKS                       R29 R28 K53 ["Name"]
      400 GETUPVAL                         R30 7
      401 GETTABLEKS                       R29 R30 K59 ["createElement"]
      403 GETUPVAL                         R30 12
      404 DUPTABLE                         R31 K89 [{"LayoutOrder", "Title"}]
      405 NAMECALL                         R32 R3 K66 ["getNextOrder"]
      407 CALL                             R32 1 1
      408 SETTABLEKS                       R32 R31 K60 ["LayoutOrder"]
      410 LOADK                            R34 K2 ["Places"]
      411 LOADK                            R35 K54 ["MaxPlayers"]
      412 NAMECALL                         R32 R1 K4 ["getText"]
      414 CALL                             R32 3 1
      415 SETTABLEKS                       R32 R31 K86 ["Title"]
      417 DUPTABLE                         R32 K99 [{"HeaderLayout", "TextBox", "MaxPlayersSubText"}]
      418 GETUPVAL                         R34 7
      419 GETTABLEKS                       R33 R34 K59 ["createElement"]
      421 LOADK                            R34 K100 ["UIListLayout"]
      422 DUPTABLE                         R35 K104 [{"FillDirection", "HorizontalAlignment", "SortOrder"}]
      423 GETIMPORT                        R36 K106 [Enum.FillDirection.Vertical]
      425 SETTABLEKS                       R36 R35 K101 ["FillDirection"]
      427 GETIMPORT                        R36 K108 [Enum.HorizontalAlignment.Left]
      429 SETTABLEKS                       R36 R35 K102 ["HorizontalAlignment"]
      431 GETIMPORT                        R36 K109 [Enum.SortOrder.LayoutOrder]
      433 SETTABLEKS                       R36 R35 K103 ["SortOrder"]
      435 CALL                             R33 2 1
      436 SETTABLEKS                       R33 R32 K98 ["HeaderLayout"]
      438 GETUPVAL                         R34 7
      439 GETTABLEKS                       R33 R34 K59 ["createElement"]
      441 GETUPVAL                         R34 13
      442 DUPTABLE                         R35 K111 [{"LayoutOrder", "Text", "ErrorText", "OnTextChanged", "Width"}]
      443 LOADN                            R36 1
      444 SETTABLEKS                       R36 R35 K60 ["LayoutOrder"]
      446 SETTABLEKS                       R17 R35 K96 ["Text"]
      448 SETTABLEKS                       R18 R35 K93 ["ErrorText"]
      450 NEWCLOSURE                       R36 P2
      451 CAPTURE                          VAL R23
      452 CAPTURE                          VAL R12
      453 CAPTURE                          VAL R13
      454 CAPTURE                          VAL R21
      455 CAPTURE                          VAL R20
      456 SETTABLEKS                       R36 R35 K95 ["OnTextChanged"]
      458 GETTABLEKS                       R38 R2 K112 ["placePage"]
      460 GETTABLEKS                       R37 R38 K113 ["textBox"]
      462 GETTABLEKS                       R36 R37 K114 ["length"]
      464 SETTABLEKS                       R36 R35 K110 ["Width"]
      466 CALL                             R33 2 1
      467 SETTABLEKS                       R33 R32 K91 ["TextBox"]
      469 NOT                              R33 R18
      470 JUMPIFNOT                        R33 ; [+45]
      471 GETUPVAL                         R34 7
      472 GETTABLEKS                       R33 R34 K59 ["createElement"]
      474 LOADK                            R34 K115 ["TextLabel"]
      475 GETUPVAL                         R37 14
      476 GETTABLEKS                       R36 R37 K116 ["Dictionary"]
      478 GETTABLEKS                       R35 R36 K117 ["join"]
      480 GETTABLEKS                       R37 R2 K5 ["fontStyle"]
      482 GETTABLEKS                       R36 R37 K6 ["Subtext"]
      484 DUPTABLE                         R37 K121 [{"Size", "LayoutOrder", "BackgroundTransparency", "Text", "TextYAlignment", "TextXAlignment", "TextWrapped"}]
      485 GETIMPORT                        R38 K24 [UDim2.new]
      487 LOADN                            R39 1
      488 LOADN                            R40 0
      489 LOADN                            R41 0
      490 GETTABLEKS                       R42 R5 K22 ["Y"]
      492 CALL                             R38 4 1
      493 SETTABLEKS                       R38 R37 K76 ["Size"]
      495 LOADN                            R38 2
      496 SETTABLEKS                       R38 R37 K60 ["LayoutOrder"]
      498 LOADN                            R38 1
      499 SETTABLEKS                       R38 R37 K61 ["BackgroundTransparency"]
      501 SETTABLEKS                       R4 R37 K96 ["Text"]
      503 GETIMPORT                        R38 K123 [Enum.TextYAlignment.Center]
      505 SETTABLEKS                       R38 R37 K118 ["TextYAlignment"]
      507 GETIMPORT                        R38 K124 [Enum.TextXAlignment.Left]
      509 SETTABLEKS                       R38 R37 K119 ["TextXAlignment"]
      511 LOADB                            R38 1
      512 SETTABLEKS                       R38 R37 K120 ["TextWrapped"]
      514 CALL                             R35 2 -1
      515 CALL                             R33 -1 1
      516 SETTABLEKS                       R33 R32 K3 ["MaxPlayersSubText"]
      518 CALL                             R29 3 1
      519 SETTABLEKS                       R29 R28 K54 ["MaxPlayers"]
      521 GETUPVAL                         R30 7
      522 GETTABLEKS                       R29 R30 K59 ["createElement"]
      524 GETUPVAL                         R30 15
      525 DUPTABLE                         R31 K131 [{"LayoutOrder", "Enabled", "CustomSocialSlotsCount", "Selected", "ErrorMessage", "OnSocialSlotTypeChanged", "OnCustomSocialSlotsCountChanged"}]
      526 NAMECALL                         R32 R3 K66 ["getNextOrder"]
      528 CALL                             R32 1 1
      529 SETTABLEKS                       R32 R31 K60 ["LayoutOrder"]
      531 LOADB                            R32 1
      532 SETTABLEKS                       R32 R31 K125 ["Enabled"]
      534 SETTABLEKS                       R21 R31 K126 ["CustomSocialSlotsCount"]
      536 SETTABLEKS                       R20 R31 K127 ["Selected"]
      538 SETTABLEKS                       R22 R31 K128 ["ErrorMessage"]
      540 NEWCLOSURE                       R32 P3
      541 CAPTURE                          VAL R23
      542 CAPTURE                          VAL R12
      543 CAPTURE                          VAL R13
      544 CAPTURE                          VAL R17
      545 CAPTURE                          VAL R21
      546 SETTABLEKS                       R32 R31 K129 ["OnSocialSlotTypeChanged"]
      548 NEWCLOSURE                       R32 P4
      549 CAPTURE                          VAL R23
      550 CAPTURE                          VAL R12
      551 CAPTURE                          VAL R13
      552 CAPTURE                          VAL R17
      553 CAPTURE                          VAL R20
      554 SETTABLEKS                       R32 R31 K130 ["OnCustomSocialSlotsCountChanged"]
      556 CALL                             R29 2 1
      557 SETTABLEKS                       R29 R28 K55 ["ServerFill"]
      559 GETUPVAL                         R30 7
      560 GETTABLEKS                       R29 R30 K59 ["createElement"]
      562 GETUPVAL                         R30 16
      563 DUPTABLE                         R31 K134 [{"Title", "Buttons", "Enabled", "LayoutOrder", "Selected", "SelectionChanged"}]
      564 LOADK                            R34 K9 ["General"]
      565 LOADK                            R35 K135 ["TitleAllowCopying"]
      566 NAMECALL                         R32 R1 K4 ["getText"]
      568 CALL                             R32 3 1
      569 SETTABLEKS                       R32 R31 K86 ["Title"]
      571 NEWTABLE                         R32 0 2
      573 DUPTABLE                         R33 K138 [{"Id", "Title", "Children"}]
      574 LOADB                            R34 1
      575 SETTABLEKS                       R34 R33 K136 ["Id"]
      577 LOADK                            R36 K9 ["General"]
      578 LOADK                            R37 K139 ["SettingOn"]
      579 NAMECALL                         R34 R1 K4 ["getText"]
      581 CALL                             R34 3 1
      582 SETTABLEKS                       R34 R33 K86 ["Title"]
      584 DUPTABLE                         R34 K141 [{"LinkText"}]
      585 GETUPVAL                         R36 7
      586 GETTABLEKS                       R35 R36 K59 ["createElement"]
      588 GETUPVAL                         R36 17
      589 DUPTABLE                         R37 K143 [{"Text", "Size", "TextWrapped", "TextXAlignment", "TextYAlignment", "OnClick"}]
      590 SETTABLEKS                       R26 R37 K96 ["Text"]
      592 GETIMPORT                        R38 K24 [UDim2.new]
      594 LOADN                            R39 0
      595 GETTABLEKS                       R40 R27 K17 ["X"]
      597 LOADN                            R41 0
      598 GETTABLEKS                       R42 R27 K22 ["Y"]
      600 CALL                             R38 4 1
      601 SETTABLEKS                       R38 R37 K76 ["Size"]
      603 LOADB                            R38 1
      604 SETTABLEKS                       R38 R37 K120 ["TextWrapped"]
      606 GETIMPORT                        R38 K124 [Enum.TextXAlignment.Left]
      608 SETTABLEKS                       R38 R37 K119 ["TextXAlignment"]
      610 GETIMPORT                        R38 K145 [Enum.TextYAlignment.Top]
      612 SETTABLEKS                       R38 R37 K118 ["TextYAlignment"]
      614 DUPCLOSURE                       R38 K146 [PROTO_30]
      615 CAPTURE                          UPVAL U18
      616 CAPTURE                          UPVAL U19
      617 SETTABLEKS                       R38 R37 K142 ["OnClick"]
      619 CALL                             R35 2 1
      620 SETTABLEKS                       R35 R34 K140 ["LinkText"]
      622 SETTABLEKS                       R34 R33 K137 ["Children"]
      624 DUPTABLE                         R34 K147 [{"Id", "Title"}]
      625 LOADB                            R35 0
      626 SETTABLEKS                       R35 R34 K136 ["Id"]
      628 LOADK                            R37 K9 ["General"]
      629 LOADK                            R38 K148 ["SettingOff"]
      630 NAMECALL                         R35 R1 K4 ["getText"]
      632 CALL                             R35 3 1
      633 SETTABLEKS                       R35 R34 K86 ["Title"]
      635 SETLIST                          R32 R33 2 [1]
      637 SETTABLEKS                       R32 R31 K132 ["Buttons"]
      639 LOADB                            R32 1
      640 SETTABLEKS                       R32 R31 K125 ["Enabled"]
      642 NAMECALL                         R32 R3 K66 ["getNextOrder"]
      644 CALL                             R32 1 1
      645 SETTABLEKS                       R32 R31 K60 ["LayoutOrder"]
      647 SETTABLEKS                       R19 R31 K127 ["Selected"]
      649 NEWCLOSURE                       R32 P6
      650 CAPTURE                          VAL R25
      651 CAPTURE                          VAL R12
      652 CAPTURE                          VAL R13
      653 SETTABLEKS                       R32 R31 K133 ["SelectionChanged"]
      655 CALL                             R29 2 1
      656 SETTABLEKS                       R29 R28 K56 ["AllowCopying"]
      658 GETUPVAL                         R30 20
      659 NOT                              R29 R30
      660 JUMPIFNOT                        R29 ; [+57]
      661 GETUPVAL                         R30 7
      662 GETTABLEKS                       R29 R30 K59 ["createElement"]
      664 GETUPVAL                         R30 12
      665 DUPTABLE                         R31 K89 [{"LayoutOrder", "Title"}]
      666 NAMECALL                         R32 R3 K66 ["getNextOrder"]
      668 CALL                             R32 1 1
      669 SETTABLEKS                       R32 R31 K60 ["LayoutOrder"]
      671 LOADK                            R34 K2 ["Places"]
      672 LOADK                            R35 K57 ["VersionHistory"]
      673 NAMECALL                         R32 R1 K4 ["getText"]
      675 CALL                             R32 3 1
      676 SETTABLEKS                       R32 R31 K86 ["Title"]
      678 DUPTABLE                         R32 K150 [{"ViewButton"}]
      679 GETUPVAL                         R34 7
      680 GETTABLEKS                       R33 R34 K59 ["createElement"]
      682 GETUPVAL                         R34 21
      683 DUPTABLE                         R35 K152 [{"Style", "Text", "Size", "LayoutOrder", "OnClick"}]
      684 LOADK                            R36 K153 ["GameSettingsButton"]
      685 SETTABLEKS                       R36 R35 K151 ["Style"]
      687 SETTABLEKS                       R6 R35 K96 ["Text"]
      689 SETTABLEKS                       R11 R35 K76 ["Size"]
      691 NAMECALL                         R36 R3 K66 ["getNextOrder"]
      693 CALL                             R36 1 1
      694 SETTABLEKS                       R36 R35 K60 ["LayoutOrder"]
      696 NEWCLOSURE                       R36 P7
      697 CAPTURE                          UPVAL U19
      698 CAPTURE                          VAL R13
      699 SETTABLEKS                       R36 R35 K142 ["OnClick"]
      701 NEWTABLE                         R36 0 1
      703 GETUPVAL                         R38 7
      704 GETTABLEKS                       R37 R38 K59 ["createElement"]
      706 GETUPVAL                         R38 9
      707 DUPTABLE                         R39 K82 [{"Cursor"}]
      708 LOADK                            R40 K83 ["PointingHand"]
      709 SETTABLEKS                       R40 R39 K81 ["Cursor"]
      711 CALL                             R37 2 -1
      712 SETLIST                          R36 R37 -1 [1]
      714 CALL                             R33 3 1
      715 SETTABLEKS                       R33 R32 K149 ["ViewButton"]
      717 CALL                             R29 3 1
      718 SETTABLEKS                       R29 R28 K57 ["VersionHistory"]
      720 RETURN                           R28 1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 RETURN                           R0 1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 RETURN                           R0 1

PROTO_36:
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
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R5 R6 K4 ["createElement"]
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

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Settings"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_38:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 GETTABLEKS                       R5 R0 K0 ["Settings"]
        7 GETTABLEKS                       R4 R5 K1 ["Errors"]
        9 DUPTABLE                         R5 K7 [{"Places", "EditPlaceId", "PlaceNameError", "PlacePlayerCountError", "PlaceCustomSocialSlotCountError"}]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R7 R0 K0 ["Settings"]
       13 LOADK                            R8 K8 ["places"]
       14 CALL                             R6 2 1
       15 SETTABLEKS                       R6 R5 K2 ["Places"]
       17 GETTABLEKS                       R7 R0 K9 ["EditAsset"]
       19 GETTABLEKS                       R6 R7 K10 ["editPlaceId"]
       21 SETTABLEKS                       R6 R5 K3 ["EditPlaceId"]
       23 GETTABLEKS                       R6 R4 K11 ["placeName"]
       25 SETTABLEKS                       R6 R5 K4 ["PlaceNameError"]
       27 GETTABLEKS                       R6 R4 K12 ["placePlayerCount"]
       29 SETTABLEKS                       R6 R5 K5 ["PlacePlayerCountError"]
       31 GETTABLEKS                       R6 R4 K13 ["placeCustomSocialSlotsCount"]
       33 SETTABLEKS                       R6 R5 K6 ["PlaceCustomSocialSlotCountError"]
       35 MOVE                             R3 R5
       36 RETURN                           R3 1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_40:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_41:
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["FitFrame"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["Src"]
       20 GETTABLEKS                       R4 R5 K8 ["Util"]
       22 GETTABLEKS                       R3 R4 K9 ["KeyProvider"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K10 ["getEditKeyName"]
       27 GETTABLEKS                       R4 R2 K11 ["getVersionHistoryKeyName"]
       29 GETIMPORT                        R6 K1 [script]
       31 GETTABLEKS                       R5 R6 K2 ["Parent"]
       33 GETIMPORT                        R6 K4 [require]
       35 GETTABLEKS                       R8 R0 K5 ["Packages"]
       37 GETTABLEKS                       R7 R8 K12 ["Roact"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K4 [require]
       42 GETTABLEKS                       R9 R0 K5 ["Packages"]
       44 GETTABLEKS                       R8 R9 K13 ["RoactRodux"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K4 [require]
       49 GETTABLEKS                       R10 R0 K5 ["Packages"]
       51 GETTABLEKS                       R9 R10 K14 ["Cryo"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K4 [require]
       56 GETTABLEKS                       R11 R0 K5 ["Packages"]
       58 GETTABLEKS                       R10 R11 K15 ["Framework"]
       60 CALL                             R9 1 1
       61 GETTABLEKS                       R10 R9 K16 ["ContextServices"]
       63 GETTABLEKS                       R11 R10 K17 ["withContext"]
       65 GETTABLEKS                       R12 R9 K8 ["Util"]
       67 GETTABLEKS                       R13 R12 K18 ["deepJoin"]
       69 GETTABLEKS                       R14 R1 K19 ["FitFrameOnAxis"]
       71 GETTABLEKS                       R15 R12 K20 ["GetTextSize"]
       73 GETTABLEKS                       R16 R12 K21 ["LayoutOrderIterator"]
       75 GETTABLEKS                       R17 R9 K22 ["UI"]
       77 GETTABLEKS                       R18 R17 K23 ["Button"]
       79 GETTABLEKS                       R19 R17 K24 ["HoverArea"]
       81 GETTABLEKS                       R20 R17 K25 ["Separator"]
       83 GETTABLEKS                       R21 R17 K26 ["LinkText"]
       85 GETTABLEKS                       R22 R17 K27 ["TextInput"]
       87 GETTABLEKS                       R23 R17 K28 ["TitledFrame"]
       89 GETIMPORT                        R24 K4 [require]
       91 GETTABLEKS                       R27 R0 K7 ["Src"]
       93 GETTABLEKS                       R26 R27 K29 ["Components"]
       95 GETTABLEKS                       R25 R26 K30 ["Header"]
       97 CALL                             R24 1 1
       98 GETIMPORT                        R25 K4 [require]
      100 GETTABLEKS                       R27 R5 K29 ["Components"]
      102 GETTABLEKS                       R26 R27 K31 ["ServerFill"]
      104 CALL                             R25 1 1
      105 GETIMPORT                        R26 K4 [require]
      107 GETTABLEKS                       R29 R0 K7 ["Src"]
      109 GETTABLEKS                       R28 R29 K29 ["Components"]
      111 GETTABLEKS                       R27 R28 K32 ["TableWithMenu"]
      113 CALL                             R26 1 1
      114 GETIMPORT                        R27 K4 [require]
      116 GETTABLEKS                       R30 R0 K7 ["Src"]
      118 GETTABLEKS                       R29 R30 K29 ["Components"]
      120 GETTABLEKS                       R28 R29 K33 ["RadioButtonSet"]
      122 CALL                             R27 1 1
      123 GETIMPORT                        R28 K4 [require]
      125 GETTABLEKS                       R32 R0 K7 ["Src"]
      127 GETTABLEKS                       R31 R32 K29 ["Components"]
      129 GETTABLEKS                       R30 R31 K34 ["SettingsPages"]
      131 GETTABLEKS                       R29 R30 K35 ["SettingsPage"]
      133 CALL                             R28 1 1
      134 GETIMPORT                        R29 K4 [require]
      136 GETTABLEKS                       R32 R0 K7 ["Src"]
      138 GETTABLEKS                       R31 R32 K36 ["Actions"]
      140 GETTABLEKS                       R30 R31 K37 ["AddChange"]
      142 CALL                             R29 1 1
      143 GETIMPORT                        R30 K4 [require]
      145 GETTABLEKS                       R33 R0 K7 ["Src"]
      147 GETTABLEKS                       R32 R33 K36 ["Actions"]
      149 GETTABLEKS                       R31 R32 K38 ["AddErrors"]
      151 CALL                             R30 1 1
      152 GETIMPORT                        R31 K4 [require]
      154 GETTABLEKS                       R34 R0 K7 ["Src"]
      156 GETTABLEKS                       R33 R34 K36 ["Actions"]
      158 GETTABLEKS                       R32 R33 K39 ["DiscardChanges"]
      160 CALL                             R31 1 1
      161 GETIMPORT                        R32 K4 [require]
      163 GETTABLEKS                       R35 R0 K7 ["Src"]
      165 GETTABLEKS                       R34 R35 K36 ["Actions"]
      167 GETTABLEKS                       R33 R34 K40 ["DiscardError"]
      169 CALL                             R32 1 1
      170 GETIMPORT                        R33 K4 [require]
      172 GETTABLEKS                       R36 R0 K7 ["Src"]
      174 GETTABLEKS                       R35 R36 K36 ["Actions"]
      176 GETTABLEKS                       R34 R35 K41 ["DiscardErrors"]
      178 CALL                             R33 1 1
      179 GETIMPORT                        R34 K4 [require]
      181 GETTABLEKS                       R37 R0 K7 ["Src"]
      183 GETTABLEKS                       R36 R37 K36 ["Actions"]
      185 GETTABLEKS                       R35 R36 K42 ["SetEditPlaceId"]
      187 CALL                             R34 1 1
      188 GETIMPORT                        R35 K4 [require]
      190 GETTABLEKS                       R37 R5 K43 ["Thunks"]
      192 GETTABLEKS                       R36 R37 K44 ["ReloadPlaces"]
      194 CALL                             R35 1 1
      195 GETTABLEKS                       R36 R6 K45 ["PureComponent"]
      197 GETIMPORT                        R39 K1 [script]
      199 GETTABLEKS                       R38 R39 K46 ["Name"]
      201 NAMECALL                         R36 R36 K47 ["extend"]
      203 CALL                             R36 2 1
      204 GETIMPORT                        R38 K1 [script]
      206 GETTABLEKS                       R37 R38 K46 ["Name"]
      208 GETIMPORT                        R38 K49 [game]
      210 LOADK                            R40 K50 ["StudioPlaceConfigurationMaxPlayerCount"]
      211 LOADN                            R41 200
      212 NAMECALL                         R38 R38 K51 ["DefineFastInt"]
      214 CALL                             R38 3 1
      215 GETIMPORT                        R39 K49 [game]
      217 LOADK                            R41 K52 ["EnablePlaceVersionHistory"]
      218 NAMECALL                         R39 R39 K53 ["GetFastFlag"]
      220 CALL                             R39 2 1
      221 LOADN                            R40 0
      222 LOADNIL                          R41
      223 LOADN                            R42 100
      224 JUMPIFNOTLT                      R42 R38 ; [+8]
      226 MULK                             R43 R38 K54 [0.2]
      227 FASTCALL1                        MATH_FLOOR R43 ; [+2]
      228 GETIMPORT                        R42 K57 [math.floor]
      230 CALL                             R42 1 1
      231 MOVE                             R41 R42
      232 JUMP                             ; [+8]
      233 LOADN                            R43 20
      234 SUBK                             R44 R38 K58 [1]
      235 FASTCALL2                        MATH_MIN R43 R44 ; [+3]
      237 GETIMPORT                        R42 K60 [math.min]
      239 CALL                             R42 2 1
      240 MOVE                             R41 R42
      241 GETIMPORT                        R42 K49 [game]
      243 LOADK                            R44 K61 ["AssetManagerService"]
      244 NAMECALL                         R42 R42 K62 ["GetService"]
      246 CALL                             R42 2 1
      247 GETIMPORT                        R43 K49 [game]
      249 LOADK                            R45 K63 ["StudioService"]
      250 NAMECALL                         R43 R43 K62 ["GetService"]
      252 CALL                             R43 2 1
      253 GETIMPORT                        R44 K49 [game]
      255 LOADK                            R46 K64 ["TextService"]
      256 NAMECALL                         R44 R44 K62 ["GetService"]
      258 CALL                             R44 2 1
      259 GETIMPORT                        R45 K49 [game]
      261 LOADK                            R47 K65 ["GuiService"]
      262 NAMECALL                         R45 R45 K62 ["GetService"]
      264 CALL                             R45 2 1
      265 DUPTABLE                         R46 K67 [{"Empty"}]
      266 LOADK                            R47 K68 ["ErrorNameEmpty"]
      267 SETTABLEKS                       R47 R46 K66 ["Empty"]
      269 DUPCLOSURE                       R47 K69 [PROTO_1]
      270 DUPCLOSURE                       R48 K70 [PROTO_7]
      271 DUPCLOSURE                       R49 K71 [PROTO_8]
      272 NEWCLOSURE                       R50 P3
      273 CAPTURE                          VAL R35
      274 CAPTURE                          VAL R34
      275 CAPTURE                          VAL R30
      276 CAPTURE                          VAL R13
      277 CAPTURE                          VAL R29
      278 CAPTURE                          VAL R32
      279 CAPTURE                          REF R40
      280 CAPTURE                          REF R41
      281 CAPTURE                          VAL R38
      282 CAPTURE                          VAL R31
      283 CAPTURE                          VAL R33
      284 DUPCLOSURE                       R51 K72 [PROTO_17]
      285 DUPCLOSURE                       R52 K73 [PROTO_24]
      286 CAPTURE                          VAL R16
      287 CAPTURE                          VAL R15
      288 CAPTURE                          VAL R51
      289 CAPTURE                          VAL R6
      290 CAPTURE                          VAL R18
      291 CAPTURE                          VAL R42
      292 CAPTURE                          VAL R19
      293 CAPTURE                          VAL R39
      294 CAPTURE                          VAL R26
      295 CAPTURE                          VAL R3
      296 CAPTURE                          VAL R4
      297 CAPTURE                          VAL R43
      298 NEWCLOSURE                       R53 P6
      299 CAPTURE                          VAL R16
      300 CAPTURE                          VAL R15
      301 CAPTURE                          VAL R46
      302 CAPTURE                          VAL R38
      303 CAPTURE                          REF R41
      304 CAPTURE                          REF R40
      305 CAPTURE                          VAL R44
      306 CAPTURE                          VAL R6
      307 CAPTURE                          VAL R14
      308 CAPTURE                          VAL R19
      309 CAPTURE                          VAL R20
      310 CAPTURE                          VAL R24
      311 CAPTURE                          VAL R23
      312 CAPTURE                          VAL R22
      313 CAPTURE                          VAL R8
      314 CAPTURE                          VAL R25
      315 CAPTURE                          VAL R27
      316 CAPTURE                          VAL R21
      317 CAPTURE                          VAL R45
      318 CAPTURE                          VAL R43
      319 CAPTURE                          VAL R39
      320 CAPTURE                          VAL R18
      321 DUPCLOSURE                       R54 K74 [PROTO_36]
      322 CAPTURE                          VAL R52
      323 CAPTURE                          VAL R53
      324 CAPTURE                          VAL R6
      325 CAPTURE                          VAL R28
      326 CAPTURE                          VAL R47
      327 CAPTURE                          VAL R48
      328 CAPTURE                          VAL R37
      329 SETTABLEKS                       R54 R36 K75 ["render"]
      331 MOVE                             R54 R11
      332 DUPTABLE                         R55 K78 [{"Localization", "Stylizer"}]
      333 GETTABLEKS                       R56 R10 K76 ["Localization"]
      335 SETTABLEKS                       R56 R55 K76 ["Localization"]
      337 GETTABLEKS                       R56 R10 K77 ["Stylizer"]
      339 SETTABLEKS                       R56 R55 K77 ["Stylizer"]
      341 CALL                             R54 1 1
      342 MOVE                             R55 R36
      343 CALL                             R54 1 1
      344 MOVE                             R36 R54
      345 GETIMPORT                        R54 K4 [require]
      347 GETTABLEKS                       R57 R0 K7 ["Src"]
      349 GETTABLEKS                       R56 R57 K79 ["Networking"]
      351 GETTABLEKS                       R55 R56 K80 ["settingFromState"]
      353 CALL                             R54 1 1
      354 GETTABLEKS                       R55 R7 K81 ["connect"]
      356 DUPCLOSURE                       R56 K82 [PROTO_38]
      357 CAPTURE                          VAL R54
      358 DUPCLOSURE                       R57 K83 [PROTO_41]
      359 CAPTURE                          VAL R29
      360 CAPTURE                          VAL R50
      361 CALL                             R55 2 1
      362 MOVE                             R56 R36
      363 CALL                             R55 1 1
      364 MOVE                             R36 R55
      365 SETTABLEKS                       R37 R36 K84 ["LocalizationId"]
      367 CLOSEUPVALS                      R40
      368 RETURN                           R36 1
