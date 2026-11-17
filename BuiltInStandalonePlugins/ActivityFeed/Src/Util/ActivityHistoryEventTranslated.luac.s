PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ContentProvider"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETTABLEKS                       R1 R0 K4 ["BaseUrl"]
        8 SETUPVAL                         R1 0
        9 GETIMPORT                        R1 K7 [string.gsub]
       11 GETUPVAL                         R2 0
       12 LOADK                            R3 K8 ["www"]
       13 LOADK                            R4 K9 ["create"]
       14 CALL                             R1 3 1
       15 SETUPVAL                         R1 1
       16 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R2 K0 [""]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K2 [tostring]
        5 CALL                             R3 1 1
        6 LOADK                            R4 K0 [""]
        7 CONCAT                           R1 R2 R4
        8 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R2 K0 [""]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K2 [tostring]
        5 CALL                             R3 1 1
        6 LOADK                            R4 K0 [""]
        7 CONCAT                           R1 R2 R4
        8 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R2 K0 [""]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K2 [tostring]
        5 CALL                             R3 1 1
        6 LOADK                            R4 K0 [""]
        7 CONCAT                           R1 R2 R4
        8 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [string.lower]
        2 FASTCALL1                        TOSTRING R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K4 [tostring]
        6 CALL                             R2 1 1
        7 CALL                             R1 1 1
        8 JUMPIFNOTEQKS                    R1 K5 ["true"] ; [+3]
       10 LOADB                            R1 1
       11 RETURN                           R1 1
       12 LOADB                            R1 0
       13 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R2 K2 [table.concat]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_6:
        0 JUMPIFEQKNIL                     R1 ; [+8]
        2 FASTCALL1                        STRING_LEN R1 ; [+3]
        3 MOVE                             R3 R1
        4 GETIMPORT                        R2 K2 [string.len]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKN                    R2 K3 [0] ; [+3]
        9 LOADNIL                          R2
       10 RETURN                           R2 1
       11 MOVE                             R3 R0
       12 LOADK                            R4 K4 ["://"]
       13 MOVE                             R5 R1
       14 CONCAT                           R2 R3 R5
       15 RETURN                           R2 1

PROTO_7:
        0 GETGLOBAL                        R3 K0 ["getLink"]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R2
        4 CALL                             R3 2 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 RETURN                           R1 1
        8 LOADK                            R5 K1 ["["]
        9 MOVE                             R6 R1
       10 LOADK                            R7 K2 ["]"]
       11 LOADK                            R8 K3 ["("]
       12 MOVE                             R9 R3
       13 LOADK                            R10 K4 [")"]
       14 CONCAT                           R4 R5 R10
       15 RETURN                           R4 1

PROTO_8:
        0 LOADK                            R2 K0 ["\\"]
        1 MOVE                             R3 R0
        2 CONCAT                           R1 R2 R3
        3 RETURN                           R1 1

PROTO_9:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["[%-=!|<>#%*_~`%[%]%(%)]"]
        4 DUPCLOSURE                       R4 K4 [PROTO_8]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_10:
        0 LOADK                            R3 K0 ["."]
        1 LOADN                            R4 1
        2 LOADB                            R5 1
        3 NAMECALL                         R1 R0 K1 ["find"]
        5 CALL                             R1 4 1
        6 JUMPIFNOTEQKNIL                  R1 ; [+7]
        8 NEWTABLE                         R2 0 1
       10 MOVE                             R3 R0
       11 SETLIST                          R2 R3 1 [1]
       13 RETURN                           R2 1
       14 LOADN                            R4 1
       15 SUBK                             R5 R1 K2 [1]
       16 NAMECALL                         R2 R0 K3 ["sub"]
       18 CALL                             R2 3 1
       19 ADDK                             R5 R1 K2 [1]
       20 LENGTH                           R6 R0
       21 NAMECALL                         R3 R0 K3 ["sub"]
       23 CALL                             R3 3 1
       24 NEWTABLE                         R4 0 2
       26 MOVE                             R5 R2
       27 MOVE                             R6 R3
       28 SETLIST                          R4 R5 2 [1]
       30 RETURN                           R4 1

PROTO_11:
        0 JUMPIFNOTEQKS                    R0 K0 ["Universe"] ; [+4]
        2 GETTABLEKS                       R2 R1 K1 ["universeId"]
        4 RETURN                           R2 1
        5 JUMPIFNOTEQKS                    R0 K2 ["Place"] ; [+5]
        7 GETTABLEKS                       R3 R1 K4 ["placeId"]
        9 ORK                              R2 R3 K3 [0]
       10 RETURN                           R2 1
       11 GETTABLEKS                       R3 R1 K5 ["resourceId"]
       13 ORK                              R2 R3 K3 [0]
       14 RETURN                           R2 1

PROTO_12:
        0 GETIMPORT                        R0 K2 [DateTime.fromUnixTimestampMillis]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 LOADK                            R2 K3 ["MMM D, h:mm a"]
        5 GETUPVAL                         R3 1
        6 NAMECALL                         R0 R0 K4 ["FormatLocalTime"]
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_13:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R2 K1 [pcall]
        6 CALL                             R2 1 2
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R3 1
        9 LOADK                            R4 K2 ["🤷🏻‍♀️"]
       10 RETURN                           R4 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETTABLEN                        R3 R2 1
        4 JUMPIFEQKNIL                     R3 ; [+4]
        6 GETTABLEN                        R3 R2 2
        7 JUMPIFNOTEQKNIL                  R3 ; [+3]
        9 LOADK                            R3 K0 [""]
       10 RETURN                           R3 1
       11 JUMPIFEQKNIL                     R1 ; [+16]
       13 GETIMPORT                        R3 K2 [pairs]
       15 MOVE                             R4 R1
       16 CALL                             R3 1 3
       17 FORGPREP_NEXT                    R3
       18 GETIMPORT                        R8 K5 [string.gsub]
       20 MOVE                             R9 R7
       21 LOADK                            R10 K6 ["[%-=!|<>#%*_~`%[%]%(%)]"]
       22 DUPCLOSURE                       R11 K7 [PROTO_8]
       23 CALL                             R8 3 1
       24 SETTABLE                         R8 R1 R6
       25 FORGLOOP                         R3 2 ; [-8]
       27 JUMP                             ; [+2]
       28 NEWTABLE                         R1 0 0
       30 GETUPVAL                         R3 1
       31 GETTABLEN                        R5 R2 1
       32 GETTABLEN                        R6 R2 2
       33 MOVE                             R7 R1
       34 NAMECALL                         R3 R3 K8 ["getText"]
       36 CALL                             R3 4 -1
       37 RETURN                           R3 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["localizeNumber"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_16:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["HttpService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K4 ["PlayableDevices"]
        9 NAMECALL                         R1 R0 K5 ["JSONDecode"]
       11 CALL                             R1 2 1
       12 NEWTABLE                         R2 0 0
       14 GETIMPORT                        R3 K7 [pairs]
       16 MOVE                             R4 R1
       17 CALL                             R3 1 3
       18 FORGPREP_NEXT                    R3
       19 GETUPVAL                         R9 1
       20 GETTABLE                         R8 R9 R7
       21 JUMPIFEQKNIL                     R8 ; [+27]
       23 GETUPVAL                         R9 2
       24 GETUPVAL                         R11 1
       25 GETTABLE                         R10 R11 R7
       26 GETTABLE                         R8 R9 R10
       27 JUMPIFEQKNIL                     R8 ; [+21]
       29 GETUPVAL                         R11 3
       30 GETUPVAL                         R13 2
       31 GETUPVAL                         R15 1
       32 GETTABLE                         R14 R15 R7
       33 GETTABLE                         R12 R13 R14
       34 CALL                             R11 1 1
       35 LOADK                            R12 K8 [""]
       36 FASTCALL1                        TOSTRING R11 ; [+3]
       37 MOVE                             R14 R11
       38 GETIMPORT                        R13 K10 [tostring]
       40 CALL                             R13 1 1
       41 LOADK                            R14 K8 [""]
       42 CONCAT                           R10 R12 R14
       43 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       45 MOVE                             R9 R2
       46 GETIMPORT                        R8 K13 [table.insert]
       48 CALL                             R8 2 0
       49 FORGLOOP                         R3 2 ; [-31]
       51 LENGTH                           R3 R2
       52 LOADN                            R4 0
       53 JUMPIFNOTLT                      R4 R3 ; [+14]
       55 GETUPVAL                         R3 3
       56 LOADK                            R4 K14 ["Description.MonetizationSettingsPlayableDevices"]
       57 DUPTABLE                         R5 K16 [{"playableDevices"}]
       58 GETGLOBAL                        R6 K17 ["joinStrings"]
       60 MOVE                             R7 R2
       61 LOADK                            R8 K18 [", "]
       62 CALL                             R6 2 1
       63 SETTABLEKS                       R6 R5 K15 ["playableDevices"]
       65 CALL                             R3 2 1
       66 SETUPVAL                         R3 4
       67 RETURN                           R0 0
       68 GETUPVAL                         R3 3
       69 LOADK                            R4 K19 ["Description.MonetizationSettingsPlayableDevicesEmpty"]
       70 CALL                             R3 1 1
       71 SETUPVAL                         R3 4
       72 RETURN                           R0 0

PROTO_17:
        0 LOADK                            R1 K0 [""]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          REF R1
        7 FASTPCALL                        pcall 1 ; [+2]
        8 GETIMPORT                        R2 K2 [pcall]
       10 CALL                             R2 1 2
       11 CLOSEUPVALS                      R1
       12 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K1 ["metaData"]
        3 GETTABLEKS                       R3 R4 K0 ["Playability"]
        5 JUMPIFNOTEQKS                    R3 K2 ["Public"] ; [+5]
        7 GETUPVAL                         R2 1
        8 LOADK                            R3 K3 ["Description.ActionPublic"]
        9 CALL                             R2 1 1
       10 JUMPIF                           R2 ; [+14]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K1 ["metaData"]
       14 GETTABLEKS                       R3 R4 K0 ["Playability"]
       16 JUMPIFNOTEQKS                    R3 K4 ["Private"] ; [+5]
       18 GETUPVAL                         R2 1
       19 LOADK                            R3 K5 ["Description.ActionPrivate"]
       20 CALL                             R2 1 1
       21 JUMPIF                           R2 ; [+3]
       22 GETUPVAL                         R2 1
       23 LOADK                            R3 K6 ["Description.ActionFriends"]
       24 CALL                             R2 1 1
       25 LOADK                            R3 K7 [""]
       26 FASTCALL1                        TOSTRING R2 ; [+3]
       27 MOVE                             R5 R2
       28 GETIMPORT                        R4 K9 [tostring]
       30 CALL                             R4 1 1
       31 LOADK                            R5 K7 [""]
       32 CONCAT                           R1 R3 R5
       33 RETURN                           R1 1

PROTO_19:
        0 NEWTABLE                         R2 0 0
        2 LOADK                            R3 K0 [""]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETTABLEKS                       R4 R0 K1 ["NumberOfScripts"]
        6 JUMPIF                           R4 ; [+1]
        7 LOADN                            R4 0
        8 JUMPIFNOTEQKN                    R4 K2 [1] ; [+6]
       10 GETUPVAL                         R5 0
       11 LOADK                            R6 K3 ["Description.DraftCommitScriptsSingle"]
       12 CALL                             R5 1 1
       13 MOVE                             R3 R5
       14 JUMP                             ; [+7]
       15 GETUPVAL                         R5 0
       16 LOADK                            R6 K4 ["Description.DraftCommitScriptsMultiple"]
       17 DUPTABLE                         R7 K6 [{"numberOfScripts"}]
       18 SETTABLEKS                       R4 R7 K5 ["numberOfScripts"]
       20 CALL                             R5 2 1
       21 MOVE                             R3 R5
       22 NEWTABLE                         R7 0 2
       24 MOVE                             R8 R3
       25 LOADK                            R9 K7 ["TextLabel"]
       26 SETLIST                          R7 R8 2 [1]
       28 FASTCALL2                        TABLE_INSERT R2 R7 ; [+4]
       30 MOVE                             R6 R2
       31 GETIMPORT                        R5 K10 [table.insert]
       33 CALL                             R5 2 0
       34 JUMPIFNOT                        R0 ; [+3]
       35 GETTABLEKS                       R5 R0 K11 ["Scripts"]
       37 JUMPIF                           R5 ; [+2]
       38 NEWTABLE                         R5 0 0
       40 GETTABLEKS                       R6 R1 K12 ["showMoreScripts"]
       42 JUMPIF                           R6 ; [+84]
       43 LENGTH                           R7 R5
       44 LOADN                            R8 3
       45 JUMPIFNOTLT                      R8 R7 ; [+81]
       47 LOADN                            R9 1
       48 LOADN                            R7 3
       49 LOADN                            R8 1
       50 FORNPREP                         R7
       51 JUMPIFNOTEQKN                    R9 K13 [3] ; [+43]
       53 NEWTABLE                         R12 0 5
       55 GETTABLE                         R14 R5 R9
       56 GETTABLEKS                       R14 R14 K14 ["Name"]
       58 FASTCALL1                        TOSTRING R14 ; [+2]
       59 GETIMPORT                        R13 K16 [tostring]
       61 CALL                             R13 1 1
       62 LOADK                            R14 K17 ["TextButton"]
       63 LOADK                            R15 K0 [""]
       64 GETGLOBAL                        R16 K18 ["getLink"]
       66 LOADK                            R17 K19 ["explorer"]
       67 GETTABLE                         R19 R5 R9
       68 GETTABLEKS                       R19 R19 K20 ["UniqueId"]
       70 FASTCALL1                        TOSTRING R19 ; [+2]
       71 GETIMPORT                        R18 K16 [tostring]
       73 CALL                             R18 1 1
       74 CALL                             R16 2 1
       75 NEWTABLE                         R17 0 3
       77 LOADK                            R19 K21 [" ..."]
       78 GETUPVAL                         R20 0
       79 LOADK                            R21 K22 ["Description.More"]
       80 CALL                             R20 1 1
       81 CONCAT                           R18 R19 R20
       82 LOADK                            R19 K17 ["TextButton"]
       83 LOADK                            R20 K23 ["scripts"]
       84 SETLIST                          R17 R18 3 [1]
       86 SETLIST                          R12 R13 5 [1]
       88 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       90 MOVE                             R11 R2
       91 GETIMPORT                        R10 K10 [table.insert]
       93 CALL                             R10 2 0
       94 JUMP                             ; [+30]
       95 NEWTABLE                         R12 0 4
       97 GETTABLE                         R14 R5 R9
       98 GETTABLEKS                       R14 R14 K14 ["Name"]
      100 FASTCALL1                        TOSTRING R14 ; [+2]
      101 GETIMPORT                        R13 K16 [tostring]
      103 CALL                             R13 1 1
      104 LOADK                            R14 K17 ["TextButton"]
      105 LOADK                            R15 K0 [""]
      106 GETGLOBAL                        R16 K18 ["getLink"]
      108 LOADK                            R17 K19 ["explorer"]
      109 GETTABLE                         R19 R5 R9
      110 GETTABLEKS                       R19 R19 K20 ["UniqueId"]
      112 FASTCALL1                        TOSTRING R19 ; [+2]
      113 GETIMPORT                        R18 K16 [tostring]
      115 CALL                             R18 1 1
      116 CALL                             R16 2 -1
      117 SETLIST                          R12 R13 -1 [1]
      119 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      121 MOVE                             R11 R2
      122 GETIMPORT                        R10 K10 [table.insert]
      124 CALL                             R10 2 0
      125 FORNLOOP                         R7
      126 JUMP                             ; [+95]
      127 LENGTH                           R7 R5
      128 JUMPIFNOTLT                      R7 R4 ; [+58]
      130 LENGTH                           R8 R5
      131 SUB                              R7 R4 R8
      132 LOADN                            R10 1
      133 LENGTH                           R8 R5
      134 LOADN                            R9 1
      135 FORNPREP                         R8
      136 NEWTABLE                         R13 0 4
      138 GETTABLE                         R15 R5 R10
      139 GETTABLEKS                       R15 R15 K14 ["Name"]
      141 FASTCALL1                        TOSTRING R15 ; [+2]
      142 GETIMPORT                        R14 K16 [tostring]
      144 CALL                             R14 1 1
      145 LOADK                            R15 K17 ["TextButton"]
      146 LOADK                            R16 K0 [""]
      147 GETGLOBAL                        R17 K18 ["getLink"]
      149 LOADK                            R18 K19 ["explorer"]
      150 GETTABLE                         R20 R5 R10
      151 GETTABLEKS                       R20 R20 K20 ["UniqueId"]
      153 FASTCALL1                        TOSTRING R20 ; [+2]
      154 GETIMPORT                        R19 K16 [tostring]
      156 CALL                             R19 1 1
      157 CALL                             R17 2 -1
      158 SETLIST                          R13 R14 -1 [1]
      160 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
      162 MOVE                             R12 R2
      163 GETIMPORT                        R11 K10 [table.insert]
      165 CALL                             R11 2 0
      166 FORNLOOP                         R8
      167 NEWTABLE                         R10 0 2
      169 LOADK                            R12 K24 ["• "]
      170 GETUPVAL                         R13 0
      171 LOADK                            R14 K25 ["Description.DraftCommitXMoreScripts"]
      172 DUPTABLE                         R15 K27 [{"missingScripts"}]
      173 SETTABLEKS                       R7 R15 K26 ["missingScripts"]
      175 CALL                             R13 2 1
      176 CONCAT                           R11 R12 R13
      177 LOADK                            R12 K7 ["TextLabel"]
      178 SETLIST                          R10 R11 2 [1]
      180 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
      182 MOVE                             R9 R2
      183 GETIMPORT                        R8 K10 [table.insert]
      185 CALL                             R8 2 0
      186 JUMP                             ; [+35]
      187 LOADN                            R9 1
      188 LENGTH                           R7 R5
      189 LOADN                            R8 1
      190 FORNPREP                         R7
      191 NEWTABLE                         R12 0 4
      193 GETTABLE                         R14 R5 R9
      194 GETTABLEKS                       R14 R14 K14 ["Name"]
      196 FASTCALL1                        TOSTRING R14 ; [+2]
      197 GETIMPORT                        R13 K16 [tostring]
      199 CALL                             R13 1 1
      200 LOADK                            R14 K17 ["TextButton"]
      201 LOADK                            R15 K0 [""]
      202 GETGLOBAL                        R16 K18 ["getLink"]
      204 LOADK                            R17 K19 ["explorer"]
      205 GETTABLE                         R19 R5 R9
      206 GETTABLEKS                       R19 R19 K20 ["UniqueId"]
      208 FASTCALL1                        TOSTRING R19 ; [+2]
      209 GETIMPORT                        R18 K16 [tostring]
      211 CALL                             R18 1 1
      212 CALL                             R16 2 -1
      213 SETLIST                          R12 R13 -1 [1]
      215 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      217 MOVE                             R11 R2
      218 GETIMPORT                        R10 K10 [table.insert]
      220 CALL                             R10 2 0
      221 FORNLOOP                         R7
      222 JUMPIFNOT                        R0 ; [+3]
      223 GETTABLEKS                       R7 R0 K28 ["CommitMessage"]
      225 JUMPIF                           R7 ; [+1]
      226 LOADK                            R7 K0 [""]
      227 JUMPIFNOTEQKS                    R7 K0 [""] ; [+2]
      229 RETURN                           R2 1
      230 LOADK                            R8 K29 ["\""]
      231 MOVE                             R9 R7
      232 LOADK                            R10 K29 ["\""]
      233 CONCAT                           R7 R8 R10
      234 NEWTABLE                         R10 0 3
      236 MOVE                             R11 R7
      237 LOADK                            R12 K7 ["TextLabel"]
      238 LOADK                            R13 K30 ["SecondaryText"]
      239 SETLIST                          R10 R11 3 [1]
      241 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
      243 MOVE                             R9 R2
      244 GETIMPORT                        R8 K10 [table.insert]
      246 CALL                             R8 2 0
      247 RETURN                           R2 1

PROTO_20:
        0 GETIMPORT                        R3 K1 [game]
        2 LOADK                            R5 K2 ["HttpService"]
        3 NAMECALL                         R3 R3 K3 ["GetService"]
        5 CALL                             R3 2 1
        6 GETTABLEKS                       R6 R0 K4 ["Permissions"]
        8 NAMECALL                         R4 R3 K5 ["JSONDecode"]
       10 CALL                             R4 2 1
       11 NEWTABLE                         R5 0 0
       13 GETIMPORT                        R6 K7 [pairs]
       15 MOVE                             R7 R4
       16 CALL                             R6 1 3
       17 FORGPREP_NEXT                    R6
       18 GETUPVAL                         R14 0
       19 LOADK                            R16 K8 ["Permission."]
       20 MOVE                             R17 R10
       21 CONCAT                           R15 R16 R17
       22 CALL                             R14 1 1
       23 LOADK                            R15 K9 [""]
       24 FASTCALL1                        TOSTRING R14 ; [+3]
       25 MOVE                             R17 R14
       26 GETIMPORT                        R16 K11 [tostring]
       28 CALL                             R16 1 1
       29 LOADK                            R17 K9 [""]
       30 CONCAT                           R13 R15 R17
       31 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       33 MOVE                             R12 R5
       34 GETIMPORT                        R11 K14 [table.insert]
       36 CALL                             R11 2 0
       37 FORGLOOP                         R6 2 ; [-20]
       39 GETUPVAL                         R6 0
       40 LENGTH                           R8 R4
       41 LOADN                            R9 0
       42 JUMPIFNOTLT                      R9 R8 ; [+3]
       44 MOVE                             R7 R1
       45 JUMP                             ; [+1]
       46 MOVE                             R7 R2
       47 DUPTABLE                         R8 K19 [{"roleName", "groupName", "universeName", "permissions"}]
       48 GETTABLEKS                       R9 R0 K20 ["RoleName"]
       50 SETTABLEKS                       R9 R8 K15 ["roleName"]
       52 GETTABLEKS                       R9 R0 K21 ["GroupName"]
       54 SETTABLEKS                       R9 R8 K16 ["groupName"]
       56 GETTABLEKS                       R9 R0 K22 ["UniverseName"]
       58 SETTABLEKS                       R9 R8 K17 ["universeName"]
       60 GETGLOBAL                        R9 K23 ["joinStrings"]
       62 MOVE                             R10 R5
       63 LOADK                            R11 K24 [", "]
       64 CALL                             R9 2 1
       65 SETTABLEKS                       R9 R8 K18 ["permissions"]
       67 CALL                             R6 2 -1
       68 RETURN                           R6 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["metaData"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 1
        6 RETURN                           R1 1

PROTO_22:
        0 NAMECALL                         R3 R1 K0 ["getLocale"]
        2 CALL                             R3 1 1
        3 GETUPVAL                         R5 0
        4 LOADK                            R6 K1 ["dashboard/creations/experiences/"]
        5 GETTABLEKS                       R8 R2 K2 ["universeId"]
        7 FASTCALL1                        TOSTRING R8 ; [+2]
        8 GETIMPORT                        R7 K4 [tostring]
       10 CALL                             R7 1 1
       11 CONCAT                           R4 R5 R7
       12 GETUPVAL                         R6 0
       13 LOADK                            R7 K1 ["dashboard/creations/experiences/"]
       14 GETTABLEKS                       R9 R2 K2 ["universeId"]
       16 FASTCALL1                        TOSTRING R9 ; [+2]
       17 GETIMPORT                        R8 K4 [tostring]
       19 CALL                             R8 1 1
       20 LOADK                            R9 K5 ["/places/"]
       21 GETTABLEKS                       R11 R2 K6 ["placeId"]
       23 FASTCALL1                        TOSTRING R11 ; [+2]
       24 GETIMPORT                        R10 K4 [tostring]
       26 CALL                             R10 1 1
       27 CONCAT                           R5 R6 R10
       28 GETUPVAL                         R7 0
       29 LOADK                            R8 K1 ["dashboard/creations/experiences/"]
       30 GETTABLEKS                       R10 R2 K2 ["universeId"]
       32 FASTCALL1                        TOSTRING R10 ; [+2]
       33 GETIMPORT                        R9 K4 [tostring]
       35 CALL                             R9 1 1
       36 LOADK                            R10 K7 ["/badges/"]
       37 GETTABLEKS                       R12 R2 K8 ["resourceId"]
       39 FASTCALL1                        TOSTRING R12 ; [+2]
       40 GETIMPORT                        R11 K4 [tostring]
       42 CALL                             R11 1 1
       43 LOADK                            R12 K9 ["/overview"]
       44 CONCAT                           R6 R7 R12
       45 GETUPVAL                         R8 0
       46 LOADK                            R9 K1 ["dashboard/creations/experiences/"]
       47 GETTABLEKS                       R11 R2 K2 ["universeId"]
       49 FASTCALL1                        TOSTRING R11 ; [+2]
       50 GETIMPORT                        R10 K4 [tostring]
       52 CALL                             R10 1 1
       53 LOADK                            R11 K10 ["/developer-products/"]
       54 GETTABLEKS                       R13 R2 K8 ["resourceId"]
       56 FASTCALL1                        TOSTRING R13 ; [+2]
       57 GETIMPORT                        R12 K4 [tostring]
       59 CALL                             R12 1 1
       60 LOADK                            R13 K11 ["/configure"]
       61 CONCAT                           R7 R8 R13
       62 GETUPVAL                         R9 0
       63 LOADK                            R10 K1 ["dashboard/creations/experiences/"]
       64 GETTABLEKS                       R12 R2 K2 ["universeId"]
       66 FASTCALL1                        TOSTRING R12 ; [+2]
       67 GETIMPORT                        R11 K4 [tostring]
       69 CALL                             R11 1 1
       70 LOADK                            R12 K12 ["/passes/"]
       71 GETTABLEKS                       R14 R2 K8 ["resourceId"]
       73 FASTCALL1                        TOSTRING R14 ; [+2]
       74 GETIMPORT                        R13 K4 [tostring]
       76 CALL                             R13 1 1
       77 LOADK                            R14 K11 ["/configure"]
       78 CONCAT                           R8 R9 R14
       79 GETUPVAL                         R10 1
       80 LOADK                            R11 K13 ["users/"]
       81 GETTABLEKS                       R13 R2 K14 ["userId"]
       83 FASTCALL1                        TOSTRING R13 ; [+2]
       84 GETIMPORT                        R12 K4 [tostring]
       86 CALL                             R12 1 1
       87 LOADK                            R13 K15 ["/profile"]
       88 CONCAT                           R9 R10 R13
       89 GETUPVAL                         R11 1
       90 LOADK                            R12 K13 ["users/"]
       91 GETTABLEKS                       R14 R2 K8 ["resourceId"]
       93 FASTCALL1                        TOSTRING R14 ; [+2]
       94 GETIMPORT                        R13 K4 [tostring]
       96 CALL                             R13 1 1
       97 LOADK                            R14 K15 ["/profile"]
       98 CONCAT                           R10 R11 R14
       99 GETUPVAL                         R12 1
      100 LOADK                            R13 K16 ["groups/"]
      101 GETTABLEKS                       R15 R2 K8 ["resourceId"]
      103 FASTCALL1                        TOSTRING R15 ; [+2]
      104 GETIMPORT                        R14 K4 [tostring]
      106 CALL                             R14 1 1
      107 CONCAT                           R11 R12 R14
      108 NEWCLOSURE                       R12 P0
      109 CAPTURE                          UPVAL U2
      110 CAPTURE                          VAL R1
      111 NEWCLOSURE                       R13 P1
      112 CAPTURE                          VAL R1
      113 NEWCLOSURE                       R14 P2
      114 CAPTURE                          UPVAL U3
      115 CAPTURE                          UPVAL U4
      116 CAPTURE                          VAL R12
      117 NEWCLOSURE                       R15 P3
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R12
      120 NEWCLOSURE                       R16 P4
      121 CAPTURE                          VAL R12
      122 NEWCLOSURE                       R17 P5
      123 CAPTURE                          VAL R12
      124 GETTABLEKS                       R18 R2 K17 ["eventType"]
      126 JUMPIFNOTEQKN                    R18 K18 [0] ; [+53]
      128 DUPTABLE                         R18 K32 [{["id"], ["eventType"] = "Init", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
      129 GETTABLEKS                       R19 R2 K19 ["id"]
      131 SETTABLEKS                       R19 R18 K19 ["id"]
      133 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
      135 NEWCLOSURE                       R22 P6
      136 CAPTURE                          VAL R20
      137 CAPTURE                          VAL R3
      138 FASTPCALL                        pcall 1 ; [+2]
      139 GETIMPORT                        R21 K35 [pcall]
      141 CALL                             R21 1 2
      142 JUMPIFNOT                        R21 ; [+2]
      143 MOVE                             R19 R22
      144 JUMP                             ; [+1]
      145 LOADK                            R19 K36 ["🤷🏻‍♀️"]
      146 SETTABLEKS                       R19 R18 K23 ["date"]
      148 MOVE                             R19 R12
      149 LOADK                            R20 K37 ["Description.Init"]
      150 CALL                             R19 1 1
      151 SETTABLEKS                       R19 R18 K24 ["translation"]
      153 GETTABLEKS                       R19 R2 K14 ["userId"]
      155 SETTABLEKS                       R19 R18 K25 ["actorId"]
      157 MOVE                             R19 R0
      158 GETTABLEKS                       R20 R2 K14 ["userId"]
      160 CALL                             R19 1 1
      161 SETTABLEKS                       R19 R18 K26 ["actorName"]
      163 GETTABLEKS                       R19 R2 K2 ["universeId"]
      165 SETTABLEKS                       R19 R18 K29 ["iconId"]
      167 GETTABLEKS                       R19 R2 K2 ["universeId"]
      169 SETTABLEKS                       R19 R18 K2 ["universeId"]
      171 GETTABLEKS                       R19 R2 K30 ["headerText"]
      173 SETTABLEKS                       R19 R18 K30 ["headerText"]
      175 GETTABLEKS                       R19 R2 K31 ["footerText"]
      177 SETTABLEKS                       R19 R18 K31 ["footerText"]
      179 RETURN                           R18 1
      180 GETTABLEKS                       R18 R2 K17 ["eventType"]
      182 JUMPIFNOTEQKN                    R18 K38 [1] ; [+80]
      184 DUPTABLE                         R18 K41 [{["id"], ["eventType"] = "ArchivedExperience", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
      185 GETTABLEKS                       R19 R2 K19 ["id"]
      187 SETTABLEKS                       R19 R18 K19 ["id"]
      189 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
      191 NEWCLOSURE                       R22 P6
      192 CAPTURE                          VAL R20
      193 CAPTURE                          VAL R3
      194 FASTPCALL                        pcall 1 ; [+2]
      195 GETIMPORT                        R21 K35 [pcall]
      197 CALL                             R21 1 2
      198 JUMPIFNOT                        R21 ; [+2]
      199 MOVE                             R19 R22
      200 JUMP                             ; [+1]
      201 LOADK                            R19 K36 ["🤷🏻‍♀️"]
      202 SETTABLEKS                       R19 R18 K23 ["date"]
      204 GETTABLEKS                       R22 R2 K42 ["metaData"]
      206 JUMPIFNOT                        R22 ; [+5]
      207 GETTABLEKS                       R22 R2 K42 ["metaData"]
      209 GETTABLEKS                       R21 R22 K43 ["Action"]
      211 JUMPIF                           R21 ; [+1]
      212 LOADK                            R21 K44 [""]
      213 GETIMPORT                        R22 K47 [string.lower]
      215 FASTCALL1                        TOSTRING R21 ; [+3]
      216 MOVE                             R24 R21
      217 GETIMPORT                        R23 K4 [tostring]
      219 CALL                             R23 1 1
      220 CALL                             R22 1 1
      221 JUMPIFNOTEQKS                    R22 K48 ["true"] ; [+3]
      223 LOADB                            R20 1
      224 JUMP                             ; [+1]
      225 LOADB                            R20 0
      226 JUMPIFNOT                        R20 ; [+4]
      227 MOVE                             R19 R12
      228 LOADK                            R20 K49 ["Description.ArchivedExperience"]
      229 CALL                             R19 1 1
      230 JUMPIF                           R19 ; [+3]
      231 MOVE                             R19 R12
      232 LOADK                            R20 K50 ["Description.RestoredExperience"]
      233 CALL                             R19 1 1
      234 SETTABLEKS                       R19 R18 K24 ["translation"]
      236 GETTABLEKS                       R19 R2 K14 ["userId"]
      238 SETTABLEKS                       R19 R18 K25 ["actorId"]
      240 MOVE                             R19 R0
      241 GETTABLEKS                       R20 R2 K14 ["userId"]
      243 CALL                             R19 1 1
      244 SETTABLEKS                       R19 R18 K26 ["actorName"]
      246 GETTABLEKS                       R19 R2 K2 ["universeId"]
      248 SETTABLEKS                       R19 R18 K29 ["iconId"]
      250 GETTABLEKS                       R19 R2 K2 ["universeId"]
      252 SETTABLEKS                       R19 R18 K2 ["universeId"]
      254 GETTABLEKS                       R19 R2 K30 ["headerText"]
      256 SETTABLEKS                       R19 R18 K30 ["headerText"]
      258 GETTABLEKS                       R19 R2 K31 ["footerText"]
      260 SETTABLEKS                       R19 R18 K31 ["footerText"]
      262 RETURN                           R18 1
      263 GETTABLEKS                       R18 R2 K17 ["eventType"]
      265 JUMPIFNOTEQKN                    R18 K51 [2] ; [+99]
      267 DUPTABLE                         R18 K54 [{["id"], ["eventType"] = "PlayabilityChanged", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
      268 GETTABLEKS                       R19 R2 K19 ["id"]
      270 SETTABLEKS                       R19 R18 K19 ["id"]
      272 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
      274 NEWCLOSURE                       R22 P6
      275 CAPTURE                          VAL R20
      276 CAPTURE                          VAL R3
      277 FASTPCALL                        pcall 1 ; [+2]
      278 GETIMPORT                        R21 K35 [pcall]
      280 CALL                             R21 1 2
      281 JUMPIFNOT                        R21 ; [+2]
      282 MOVE                             R19 R22
      283 JUMP                             ; [+1]
      284 LOADK                            R19 K36 ["🤷🏻‍♀️"]
      285 SETTABLEKS                       R19 R18 K23 ["date"]
      287 MOVE                             R19 R12
      288 LOADK                            R20 K55 ["Description.PlayabilityChanged"]
      289 DUPTABLE                         R21 K57 [{"playability"}]
      290 GETTABLEKS                       R23 R2 K42 ["metaData"]
      292 GETTABLEKS                       R26 R2 K42 ["metaData"]
      294 GETTABLEKS                       R25 R26 K58 ["Playability"]
      296 JUMPIFNOTEQKS                    R25 K59 ["Public"] ; [+5]
      298 MOVE                             R24 R12
      299 LOADK                            R25 K60 ["Description.ActionPublic"]
      300 CALL                             R24 1 1
      301 JUMPIF                           R24 ; [+13]
      302 GETTABLEKS                       R26 R2 K42 ["metaData"]
      304 GETTABLEKS                       R25 R26 K58 ["Playability"]
      306 JUMPIFNOTEQKS                    R25 K61 ["Private"] ; [+5]
      308 MOVE                             R24 R12
      309 LOADK                            R25 K62 ["Description.ActionPrivate"]
      310 CALL                             R24 1 1
      311 JUMPIF                           R24 ; [+3]
      312 MOVE                             R24 R12
      313 LOADK                            R25 K63 ["Description.ActionFriends"]
      314 CALL                             R24 1 1
      315 LOADK                            R25 K44 [""]
      316 FASTCALL1                        TOSTRING R24 ; [+3]
      317 MOVE                             R27 R24
      318 GETIMPORT                        R26 K4 [tostring]
      320 CALL                             R26 1 1
      321 LOADK                            R27 K44 [""]
      322 CONCAT                           R22 R25 R27
      323 SETTABLEKS                       R22 R21 K56 ["playability"]
      325 CALL                             R19 2 1
      326 SETTABLEKS                       R19 R18 K24 ["translation"]
      328 GETTABLEKS                       R19 R2 K14 ["userId"]
      330 SETTABLEKS                       R19 R18 K25 ["actorId"]
      332 MOVE                             R19 R0
      333 GETTABLEKS                       R20 R2 K14 ["userId"]
      335 CALL                             R19 1 1
      336 SETTABLEKS                       R19 R18 K26 ["actorName"]
      338 GETTABLEKS                       R19 R2 K2 ["universeId"]
      340 SETTABLEKS                       R19 R18 K29 ["iconId"]
      342 GETTABLEKS                       R19 R2 K2 ["universeId"]
      344 SETTABLEKS                       R19 R18 K2 ["universeId"]
      346 GETTABLEKS                       R19 R2 K30 ["headerText"]
      348 SETTABLEKS                       R19 R18 K30 ["headerText"]
      350 GETTABLEKS                       R19 R2 K31 ["footerText"]
      352 SETTABLEKS                       R19 R18 K31 ["footerText"]
      354 LOADK                            R20 K44 [""]
      355 FASTCALL1                        TOSTRING R4 ; [+3]
      356 MOVE                             R22 R4
      357 GETIMPORT                        R21 K4 [tostring]
      359 CALL                             R21 1 1
      360 LOADK                            R22 K11 ["/configure"]
      361 CONCAT                           R19 R20 R22
      362 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
      364 RETURN                           R18 1
      365 GETTABLEKS                       R18 R2 K17 ["eventType"]
      367 JUMPIFNOTEQKN                    R18 K64 [3] ; [+83]
      369 DUPTABLE                         R18 K66 [{["id"], ["eventType"] = "NotificationStringCreated", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
      370 GETTABLEKS                       R19 R2 K19 ["id"]
      372 SETTABLEKS                       R19 R18 K19 ["id"]
      374 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
      376 NEWCLOSURE                       R22 P6
      377 CAPTURE                          VAL R20
      378 CAPTURE                          VAL R3
      379 FASTPCALL                        pcall 1 ; [+2]
      380 GETIMPORT                        R21 K35 [pcall]
      382 CALL                             R21 1 2
      383 JUMPIFNOT                        R21 ; [+2]
      384 MOVE                             R19 R22
      385 JUMP                             ; [+1]
      386 LOADK                            R19 K36 ["🤷🏻‍♀️"]
      387 SETTABLEKS                       R19 R18 K23 ["date"]
      389 MOVE                             R19 R12
      390 LOADK                            R20 K67 ["Description.NotificationStringCreated"]
      391 DUPTABLE                         R21 K69 [{"stringName"}]
      392 GETTABLEKS                       R24 R2 K42 ["metaData"]
      394 JUMPIFNOT                        R24 ; [+5]
      395 GETTABLEKS                       R24 R2 K42 ["metaData"]
      397 GETTABLEKS                       R23 R24 K70 ["StringName"]
      399 JUMPIF                           R23 ; [+1]
      400 LOADK                            R23 K44 [""]
      401 LOADK                            R24 K44 [""]
      402 FASTCALL1                        TOSTRING R23 ; [+3]
      403 MOVE                             R26 R23
      404 GETIMPORT                        R25 K4 [tostring]
      406 CALL                             R25 1 1
      407 LOADK                            R26 K44 [""]
      408 CONCAT                           R22 R24 R26
      409 SETTABLEKS                       R22 R21 K68 ["stringName"]
      411 CALL                             R19 2 1
      412 SETTABLEKS                       R19 R18 K24 ["translation"]
      414 GETTABLEKS                       R19 R2 K14 ["userId"]
      416 SETTABLEKS                       R19 R18 K25 ["actorId"]
      418 MOVE                             R19 R0
      419 GETTABLEKS                       R20 R2 K14 ["userId"]
      421 CALL                             R19 1 1
      422 SETTABLEKS                       R19 R18 K26 ["actorName"]
      424 GETTABLEKS                       R19 R2 K2 ["universeId"]
      426 SETTABLEKS                       R19 R18 K29 ["iconId"]
      428 GETTABLEKS                       R19 R2 K2 ["universeId"]
      430 SETTABLEKS                       R19 R18 K2 ["universeId"]
      432 GETTABLEKS                       R19 R2 K30 ["headerText"]
      434 SETTABLEKS                       R19 R18 K30 ["headerText"]
      436 GETTABLEKS                       R19 R2 K31 ["footerText"]
      438 SETTABLEKS                       R19 R18 K31 ["footerText"]
      440 LOADK                            R20 K44 [""]
      441 FASTCALL1                        TOSTRING R4 ; [+3]
      442 MOVE                             R22 R4
      443 GETIMPORT                        R21 K4 [tostring]
      445 CALL                             R21 1 1
      446 LOADK                            R22 K71 ["/notifications"]
      447 CONCAT                           R19 R20 R22
      448 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
      450 RETURN                           R18 1
      451 GETTABLEKS                       R18 R2 K17 ["eventType"]
      453 JUMPIFNOTEQKN                    R18 K72 [4] ; [+83]
      455 DUPTABLE                         R18 K74 [{["id"], ["eventType"] = "NotificationStringDeleted", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
      456 GETTABLEKS                       R19 R2 K19 ["id"]
      458 SETTABLEKS                       R19 R18 K19 ["id"]
      460 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
      462 NEWCLOSURE                       R22 P6
      463 CAPTURE                          VAL R20
      464 CAPTURE                          VAL R3
      465 FASTPCALL                        pcall 1 ; [+2]
      466 GETIMPORT                        R21 K35 [pcall]
      468 CALL                             R21 1 2
      469 JUMPIFNOT                        R21 ; [+2]
      470 MOVE                             R19 R22
      471 JUMP                             ; [+1]
      472 LOADK                            R19 K36 ["🤷🏻‍♀️"]
      473 SETTABLEKS                       R19 R18 K23 ["date"]
      475 MOVE                             R19 R12
      476 LOADK                            R20 K75 ["Description.NotificationStringDeleted"]
      477 DUPTABLE                         R21 K69 [{"stringName"}]
      478 GETTABLEKS                       R24 R2 K42 ["metaData"]
      480 JUMPIFNOT                        R24 ; [+5]
      481 GETTABLEKS                       R24 R2 K42 ["metaData"]
      483 GETTABLEKS                       R23 R24 K70 ["StringName"]
      485 JUMPIF                           R23 ; [+1]
      486 LOADK                            R23 K44 [""]
      487 LOADK                            R24 K44 [""]
      488 FASTCALL1                        TOSTRING R23 ; [+3]
      489 MOVE                             R26 R23
      490 GETIMPORT                        R25 K4 [tostring]
      492 CALL                             R25 1 1
      493 LOADK                            R26 K44 [""]
      494 CONCAT                           R22 R24 R26
      495 SETTABLEKS                       R22 R21 K68 ["stringName"]
      497 CALL                             R19 2 1
      498 SETTABLEKS                       R19 R18 K24 ["translation"]
      500 GETTABLEKS                       R19 R2 K14 ["userId"]
      502 SETTABLEKS                       R19 R18 K25 ["actorId"]
      504 MOVE                             R19 R0
      505 GETTABLEKS                       R20 R2 K14 ["userId"]
      507 CALL                             R19 1 1
      508 SETTABLEKS                       R19 R18 K26 ["actorName"]
      510 GETTABLEKS                       R19 R2 K2 ["universeId"]
      512 SETTABLEKS                       R19 R18 K29 ["iconId"]
      514 GETTABLEKS                       R19 R2 K2 ["universeId"]
      516 SETTABLEKS                       R19 R18 K2 ["universeId"]
      518 GETTABLEKS                       R19 R2 K30 ["headerText"]
      520 SETTABLEKS                       R19 R18 K30 ["headerText"]
      522 GETTABLEKS                       R19 R2 K31 ["footerText"]
      524 SETTABLEKS                       R19 R18 K31 ["footerText"]
      526 LOADK                            R20 K44 [""]
      527 FASTCALL1                        TOSTRING R4 ; [+3]
      528 MOVE                             R22 R4
      529 GETIMPORT                        R21 K4 [tostring]
      531 CALL                             R21 1 1
      532 LOADK                            R22 K71 ["/notifications"]
      533 CONCAT                           R19 R20 R22
      534 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
      536 RETURN                           R18 1
      537 GETTABLEKS                       R18 R2 K17 ["eventType"]
      539 JUMPIFNOTEQKN                    R18 K76 [5] ; [+83]
      541 DUPTABLE                         R18 K78 [{["id"], ["eventType"] = "NotificationStringUpdated", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
      542 GETTABLEKS                       R19 R2 K19 ["id"]
      544 SETTABLEKS                       R19 R18 K19 ["id"]
      546 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
      548 NEWCLOSURE                       R22 P6
      549 CAPTURE                          VAL R20
      550 CAPTURE                          VAL R3
      551 FASTPCALL                        pcall 1 ; [+2]
      552 GETIMPORT                        R21 K35 [pcall]
      554 CALL                             R21 1 2
      555 JUMPIFNOT                        R21 ; [+2]
      556 MOVE                             R19 R22
      557 JUMP                             ; [+1]
      558 LOADK                            R19 K36 ["🤷🏻‍♀️"]
      559 SETTABLEKS                       R19 R18 K23 ["date"]
      561 MOVE                             R19 R12
      562 LOADK                            R20 K79 ["Description.NotificationStringUpdated"]
      563 DUPTABLE                         R21 K69 [{"stringName"}]
      564 GETTABLEKS                       R24 R2 K42 ["metaData"]
      566 JUMPIFNOT                        R24 ; [+5]
      567 GETTABLEKS                       R24 R2 K42 ["metaData"]
      569 GETTABLEKS                       R23 R24 K70 ["StringName"]
      571 JUMPIF                           R23 ; [+1]
      572 LOADK                            R23 K44 [""]
      573 LOADK                            R24 K44 [""]
      574 FASTCALL1                        TOSTRING R23 ; [+3]
      575 MOVE                             R26 R23
      576 GETIMPORT                        R25 K4 [tostring]
      578 CALL                             R25 1 1
      579 LOADK                            R26 K44 [""]
      580 CONCAT                           R22 R24 R26
      581 SETTABLEKS                       R22 R21 K68 ["stringName"]
      583 CALL                             R19 2 1
      584 SETTABLEKS                       R19 R18 K24 ["translation"]
      586 GETTABLEKS                       R19 R2 K14 ["userId"]
      588 SETTABLEKS                       R19 R18 K25 ["actorId"]
      590 MOVE                             R19 R0
      591 GETTABLEKS                       R20 R2 K14 ["userId"]
      593 CALL                             R19 1 1
      594 SETTABLEKS                       R19 R18 K26 ["actorName"]
      596 GETTABLEKS                       R19 R2 K2 ["universeId"]
      598 SETTABLEKS                       R19 R18 K29 ["iconId"]
      600 GETTABLEKS                       R19 R2 K2 ["universeId"]
      602 SETTABLEKS                       R19 R18 K2 ["universeId"]
      604 GETTABLEKS                       R19 R2 K30 ["headerText"]
      606 SETTABLEKS                       R19 R18 K30 ["headerText"]
      608 GETTABLEKS                       R19 R2 K31 ["footerText"]
      610 SETTABLEKS                       R19 R18 K31 ["footerText"]
      612 LOADK                            R20 K44 [""]
      613 FASTCALL1                        TOSTRING R4 ; [+3]
      614 MOVE                             R22 R4
      615 GETIMPORT                        R21 K4 [tostring]
      617 CALL                             R21 1 1
      618 LOADK                            R22 K71 ["/notifications"]
      619 CONCAT                           R19 R20 R22
      620 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
      622 RETURN                           R18 1
      623 GETTABLEKS                       R18 R2 K17 ["eventType"]
      625 JUMPIFNOTEQKN                    R18 K80 [6] ; [+73]
      627 DUPTABLE                         R18 K82 [{["id"], ["eventType"] = "AvatarSettingsAvatarType", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
      628 GETTABLEKS                       R19 R2 K19 ["id"]
      630 SETTABLEKS                       R19 R18 K19 ["id"]
      632 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
      634 NEWCLOSURE                       R22 P6
      635 CAPTURE                          VAL R20
      636 CAPTURE                          VAL R3
      637 FASTPCALL                        pcall 1 ; [+2]
      638 GETIMPORT                        R21 K35 [pcall]
      640 CALL                             R21 1 2
      641 JUMPIFNOT                        R21 ; [+2]
      642 MOVE                             R19 R22
      643 JUMP                             ; [+1]
      644 LOADK                            R19 K36 ["🤷🏻‍♀️"]
      645 SETTABLEKS                       R19 R18 K23 ["date"]
      647 MOVE                             R19 R12
      648 LOADK                            R20 K83 ["Description.AvatarSettingsAvatarType"]
      649 DUPTABLE                         R21 K85 [{"avatarType"}]
      650 GETTABLEKS                       R24 R2 K42 ["metaData"]
      652 JUMPIFNOT                        R24 ; [+5]
      653 GETTABLEKS                       R24 R2 K42 ["metaData"]
      655 GETTABLEKS                       R23 R24 K86 ["AvatarType"]
      657 JUMPIF                           R23 ; [+1]
      658 LOADK                            R23 K44 [""]
      659 LOADK                            R24 K44 [""]
      660 FASTCALL1                        TOSTRING R23 ; [+3]
      661 MOVE                             R26 R23
      662 GETIMPORT                        R25 K4 [tostring]
      664 CALL                             R25 1 1
      665 LOADK                            R26 K44 [""]
      666 CONCAT                           R22 R24 R26
      667 SETTABLEKS                       R22 R21 K84 ["avatarType"]
      669 CALL                             R19 2 1
      670 SETTABLEKS                       R19 R18 K24 ["translation"]
      672 GETTABLEKS                       R19 R2 K14 ["userId"]
      674 SETTABLEKS                       R19 R18 K25 ["actorId"]
      676 MOVE                             R19 R0
      677 GETTABLEKS                       R20 R2 K14 ["userId"]
      679 CALL                             R19 1 1
      680 SETTABLEKS                       R19 R18 K26 ["actorName"]
      682 GETTABLEKS                       R19 R2 K2 ["universeId"]
      684 SETTABLEKS                       R19 R18 K29 ["iconId"]
      686 GETTABLEKS                       R19 R2 K2 ["universeId"]
      688 SETTABLEKS                       R19 R18 K2 ["universeId"]
      690 GETTABLEKS                       R19 R2 K30 ["headerText"]
      692 SETTABLEKS                       R19 R18 K30 ["headerText"]
      694 GETTABLEKS                       R19 R2 K31 ["footerText"]
      696 SETTABLEKS                       R19 R18 K31 ["footerText"]
      698 RETURN                           R18 1
      699 GETTABLEKS                       R18 R2 K17 ["eventType"]
      701 JUMPIFNOTEQKN                    R18 K87 [7] ; [+73]
      703 DUPTABLE                         R18 K89 [{["id"], ["eventType"] = "AvatarSettingsAnimation", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
      704 GETTABLEKS                       R19 R2 K19 ["id"]
      706 SETTABLEKS                       R19 R18 K19 ["id"]
      708 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
      710 NEWCLOSURE                       R22 P6
      711 CAPTURE                          VAL R20
      712 CAPTURE                          VAL R3
      713 FASTPCALL                        pcall 1 ; [+2]
      714 GETIMPORT                        R21 K35 [pcall]
      716 CALL                             R21 1 2
      717 JUMPIFNOT                        R21 ; [+2]
      718 MOVE                             R19 R22
      719 JUMP                             ; [+1]
      720 LOADK                            R19 K36 ["🤷🏻‍♀️"]
      721 SETTABLEKS                       R19 R18 K23 ["date"]
      723 MOVE                             R19 R12
      724 LOADK                            R20 K90 ["Description.AvatarSettingsAnimation"]
      725 DUPTABLE                         R21 K92 [{"animation"}]
      726 GETTABLEKS                       R24 R2 K42 ["metaData"]
      728 JUMPIFNOT                        R24 ; [+5]
      729 GETTABLEKS                       R24 R2 K42 ["metaData"]
      731 GETTABLEKS                       R23 R24 K93 ["Animation"]
      733 JUMPIF                           R23 ; [+1]
      734 LOADK                            R23 K44 [""]
      735 LOADK                            R24 K44 [""]
      736 FASTCALL1                        TOSTRING R23 ; [+3]
      737 MOVE                             R26 R23
      738 GETIMPORT                        R25 K4 [tostring]
      740 CALL                             R25 1 1
      741 LOADK                            R26 K44 [""]
      742 CONCAT                           R22 R24 R26
      743 SETTABLEKS                       R22 R21 K91 ["animation"]
      745 CALL                             R19 2 1
      746 SETTABLEKS                       R19 R18 K24 ["translation"]
      748 GETTABLEKS                       R19 R2 K14 ["userId"]
      750 SETTABLEKS                       R19 R18 K25 ["actorId"]
      752 MOVE                             R19 R0
      753 GETTABLEKS                       R20 R2 K14 ["userId"]
      755 CALL                             R19 1 1
      756 SETTABLEKS                       R19 R18 K26 ["actorName"]
      758 GETTABLEKS                       R19 R2 K2 ["universeId"]
      760 SETTABLEKS                       R19 R18 K29 ["iconId"]
      762 GETTABLEKS                       R19 R2 K2 ["universeId"]
      764 SETTABLEKS                       R19 R18 K2 ["universeId"]
      766 GETTABLEKS                       R19 R2 K30 ["headerText"]
      768 SETTABLEKS                       R19 R18 K30 ["headerText"]
      770 GETTABLEKS                       R19 R2 K31 ["footerText"]
      772 SETTABLEKS                       R19 R18 K31 ["footerText"]
      774 RETURN                           R18 1
      775 GETTABLEKS                       R18 R2 K17 ["eventType"]
      777 JUMPIFNOTEQKN                    R18 K94 [8] ; [+73]
      779 DUPTABLE                         R18 K96 [{["id"], ["eventType"] = "AvatarSettingsCollision", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
      780 GETTABLEKS                       R19 R2 K19 ["id"]
      782 SETTABLEKS                       R19 R18 K19 ["id"]
      784 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
      786 NEWCLOSURE                       R22 P6
      787 CAPTURE                          VAL R20
      788 CAPTURE                          VAL R3
      789 FASTPCALL                        pcall 1 ; [+2]
      790 GETIMPORT                        R21 K35 [pcall]
      792 CALL                             R21 1 2
      793 JUMPIFNOT                        R21 ; [+2]
      794 MOVE                             R19 R22
      795 JUMP                             ; [+1]
      796 LOADK                            R19 K36 ["🤷🏻‍♀️"]
      797 SETTABLEKS                       R19 R18 K23 ["date"]
      799 MOVE                             R19 R12
      800 LOADK                            R20 K97 ["Description.AvatarSettingsCollision"]
      801 DUPTABLE                         R21 K99 [{"collision"}]
      802 GETTABLEKS                       R24 R2 K42 ["metaData"]
      804 JUMPIFNOT                        R24 ; [+5]
      805 GETTABLEKS                       R24 R2 K42 ["metaData"]
      807 GETTABLEKS                       R23 R24 K100 ["Collision"]
      809 JUMPIF                           R23 ; [+1]
      810 LOADK                            R23 K44 [""]
      811 LOADK                            R24 K44 [""]
      812 FASTCALL1                        TOSTRING R23 ; [+3]
      813 MOVE                             R26 R23
      814 GETIMPORT                        R25 K4 [tostring]
      816 CALL                             R25 1 1
      817 LOADK                            R26 K44 [""]
      818 CONCAT                           R22 R24 R26
      819 SETTABLEKS                       R22 R21 K98 ["collision"]
      821 CALL                             R19 2 1
      822 SETTABLEKS                       R19 R18 K24 ["translation"]
      824 GETTABLEKS                       R19 R2 K14 ["userId"]
      826 SETTABLEKS                       R19 R18 K25 ["actorId"]
      828 MOVE                             R19 R0
      829 GETTABLEKS                       R20 R2 K14 ["userId"]
      831 CALL                             R19 1 1
      832 SETTABLEKS                       R19 R18 K26 ["actorName"]
      834 GETTABLEKS                       R19 R2 K2 ["universeId"]
      836 SETTABLEKS                       R19 R18 K29 ["iconId"]
      838 GETTABLEKS                       R19 R2 K2 ["universeId"]
      840 SETTABLEKS                       R19 R18 K2 ["universeId"]
      842 GETTABLEKS                       R19 R2 K30 ["headerText"]
      844 SETTABLEKS                       R19 R18 K30 ["headerText"]
      846 GETTABLEKS                       R19 R2 K31 ["footerText"]
      848 SETTABLEKS                       R19 R18 K31 ["footerText"]
      850 RETURN                           R18 1
      851 GETTABLEKS                       R18 R2 K17 ["eventType"]
      853 JUMPIFNOTEQKN                    R18 K101 [9] ; [+73]
      855 DUPTABLE                         R18 K103 [{["id"], ["eventType"] = "AvatarSettingsScaleHeight", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
      856 GETTABLEKS                       R19 R2 K19 ["id"]
      858 SETTABLEKS                       R19 R18 K19 ["id"]
      860 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
      862 NEWCLOSURE                       R22 P6
      863 CAPTURE                          VAL R20
      864 CAPTURE                          VAL R3
      865 FASTPCALL                        pcall 1 ; [+2]
      866 GETIMPORT                        R21 K35 [pcall]
      868 CALL                             R21 1 2
      869 JUMPIFNOT                        R21 ; [+2]
      870 MOVE                             R19 R22
      871 JUMP                             ; [+1]
      872 LOADK                            R19 K36 ["🤷🏻‍♀️"]
      873 SETTABLEKS                       R19 R18 K23 ["date"]
      875 MOVE                             R19 R12
      876 LOADK                            R20 K104 ["Description.AvatarSettingsScaleHeight"]
      877 DUPTABLE                         R21 K106 [{"scale"}]
      878 GETTABLEKS                       R24 R2 K42 ["metaData"]
      880 JUMPIFNOT                        R24 ; [+5]
      881 GETTABLEKS                       R24 R2 K42 ["metaData"]
      883 GETTABLEKS                       R23 R24 K107 ["Scale"]
      885 JUMPIF                           R23 ; [+1]
      886 LOADK                            R23 K44 [""]
      887 LOADK                            R24 K44 [""]
      888 FASTCALL1                        TOSTRING R23 ; [+3]
      889 MOVE                             R26 R23
      890 GETIMPORT                        R25 K4 [tostring]
      892 CALL                             R25 1 1
      893 LOADK                            R26 K44 [""]
      894 CONCAT                           R22 R24 R26
      895 SETTABLEKS                       R22 R21 K105 ["scale"]
      897 CALL                             R19 2 1
      898 SETTABLEKS                       R19 R18 K24 ["translation"]
      900 GETTABLEKS                       R19 R2 K14 ["userId"]
      902 SETTABLEKS                       R19 R18 K25 ["actorId"]
      904 MOVE                             R19 R0
      905 GETTABLEKS                       R20 R2 K14 ["userId"]
      907 CALL                             R19 1 1
      908 SETTABLEKS                       R19 R18 K26 ["actorName"]
      910 GETTABLEKS                       R19 R2 K2 ["universeId"]
      912 SETTABLEKS                       R19 R18 K29 ["iconId"]
      914 GETTABLEKS                       R19 R2 K2 ["universeId"]
      916 SETTABLEKS                       R19 R18 K2 ["universeId"]
      918 GETTABLEKS                       R19 R2 K30 ["headerText"]
      920 SETTABLEKS                       R19 R18 K30 ["headerText"]
      922 GETTABLEKS                       R19 R2 K31 ["footerText"]
      924 SETTABLEKS                       R19 R18 K31 ["footerText"]
      926 RETURN                           R18 1
      927 GETTABLEKS                       R18 R2 K17 ["eventType"]
      929 JUMPIFNOTEQKN                    R18 K108 [10] ; [+73]
      931 DUPTABLE                         R18 K110 [{["id"], ["eventType"] = "AvatarSettingsScaleWidth", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
      932 GETTABLEKS                       R19 R2 K19 ["id"]
      934 SETTABLEKS                       R19 R18 K19 ["id"]
      936 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
      938 NEWCLOSURE                       R22 P6
      939 CAPTURE                          VAL R20
      940 CAPTURE                          VAL R3
      941 FASTPCALL                        pcall 1 ; [+2]
      942 GETIMPORT                        R21 K35 [pcall]
      944 CALL                             R21 1 2
      945 JUMPIFNOT                        R21 ; [+2]
      946 MOVE                             R19 R22
      947 JUMP                             ; [+1]
      948 LOADK                            R19 K36 ["🤷🏻‍♀️"]
      949 SETTABLEKS                       R19 R18 K23 ["date"]
      951 MOVE                             R19 R12
      952 LOADK                            R20 K111 ["Description.AvatarSettingsScaleWidth"]
      953 DUPTABLE                         R21 K106 [{"scale"}]
      954 GETTABLEKS                       R24 R2 K42 ["metaData"]
      956 JUMPIFNOT                        R24 ; [+5]
      957 GETTABLEKS                       R24 R2 K42 ["metaData"]
      959 GETTABLEKS                       R23 R24 K107 ["Scale"]
      961 JUMPIF                           R23 ; [+1]
      962 LOADK                            R23 K44 [""]
      963 LOADK                            R24 K44 [""]
      964 FASTCALL1                        TOSTRING R23 ; [+3]
      965 MOVE                             R26 R23
      966 GETIMPORT                        R25 K4 [tostring]
      968 CALL                             R25 1 1
      969 LOADK                            R26 K44 [""]
      970 CONCAT                           R22 R24 R26
      971 SETTABLEKS                       R22 R21 K105 ["scale"]
      973 CALL                             R19 2 1
      974 SETTABLEKS                       R19 R18 K24 ["translation"]
      976 GETTABLEKS                       R19 R2 K14 ["userId"]
      978 SETTABLEKS                       R19 R18 K25 ["actorId"]
      980 MOVE                             R19 R0
      981 GETTABLEKS                       R20 R2 K14 ["userId"]
      983 CALL                             R19 1 1
      984 SETTABLEKS                       R19 R18 K26 ["actorName"]
      986 GETTABLEKS                       R19 R2 K2 ["universeId"]
      988 SETTABLEKS                       R19 R18 K29 ["iconId"]
      990 GETTABLEKS                       R19 R2 K2 ["universeId"]
      992 SETTABLEKS                       R19 R18 K2 ["universeId"]
      994 GETTABLEKS                       R19 R2 K30 ["headerText"]
      996 SETTABLEKS                       R19 R18 K30 ["headerText"]
      998 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1000 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1002 RETURN                           R18 1
     1003 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1005 JUMPIFNOTEQKN                    R18 K112 [11] ; [+73]
     1007 DUPTABLE                         R18 K114 [{["id"], ["eventType"] = "AvatarSettingsScaleHead", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     1008 GETTABLEKS                       R19 R2 K19 ["id"]
     1010 SETTABLEKS                       R19 R18 K19 ["id"]
     1012 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     1014 NEWCLOSURE                       R22 P6
     1015 CAPTURE                          VAL R20
     1016 CAPTURE                          VAL R3
     1017 FASTPCALL                        pcall 1 ; [+2]
     1018 GETIMPORT                        R21 K35 [pcall]
     1020 CALL                             R21 1 2
     1021 JUMPIFNOT                        R21 ; [+2]
     1022 MOVE                             R19 R22
     1023 JUMP                             ; [+1]
     1024 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     1025 SETTABLEKS                       R19 R18 K23 ["date"]
     1027 MOVE                             R19 R12
     1028 LOADK                            R20 K115 ["Description.AvatarSettingsScaleHead"]
     1029 DUPTABLE                         R21 K106 [{"scale"}]
     1030 GETTABLEKS                       R24 R2 K42 ["metaData"]
     1032 JUMPIFNOT                        R24 ; [+5]
     1033 GETTABLEKS                       R24 R2 K42 ["metaData"]
     1035 GETTABLEKS                       R23 R24 K107 ["Scale"]
     1037 JUMPIF                           R23 ; [+1]
     1038 LOADK                            R23 K44 [""]
     1039 LOADK                            R24 K44 [""]
     1040 FASTCALL1                        TOSTRING R23 ; [+3]
     1041 MOVE                             R26 R23
     1042 GETIMPORT                        R25 K4 [tostring]
     1044 CALL                             R25 1 1
     1045 LOADK                            R26 K44 [""]
     1046 CONCAT                           R22 R24 R26
     1047 SETTABLEKS                       R22 R21 K105 ["scale"]
     1049 CALL                             R19 2 1
     1050 SETTABLEKS                       R19 R18 K24 ["translation"]
     1052 GETTABLEKS                       R19 R2 K14 ["userId"]
     1054 SETTABLEKS                       R19 R18 K25 ["actorId"]
     1056 MOVE                             R19 R0
     1057 GETTABLEKS                       R20 R2 K14 ["userId"]
     1059 CALL                             R19 1 1
     1060 SETTABLEKS                       R19 R18 K26 ["actorName"]
     1062 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1064 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1066 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1068 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1070 GETTABLEKS                       R19 R2 K30 ["headerText"]
     1072 SETTABLEKS                       R19 R18 K30 ["headerText"]
     1074 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1076 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1078 RETURN                           R18 1
     1079 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1081 JUMPIFNOTEQKN                    R18 K116 [12] ; [+73]
     1083 DUPTABLE                         R18 K118 [{["id"], ["eventType"] = "AvatarSettingsScaleBodyType", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     1084 GETTABLEKS                       R19 R2 K19 ["id"]
     1086 SETTABLEKS                       R19 R18 K19 ["id"]
     1088 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     1090 NEWCLOSURE                       R22 P6
     1091 CAPTURE                          VAL R20
     1092 CAPTURE                          VAL R3
     1093 FASTPCALL                        pcall 1 ; [+2]
     1094 GETIMPORT                        R21 K35 [pcall]
     1096 CALL                             R21 1 2
     1097 JUMPIFNOT                        R21 ; [+2]
     1098 MOVE                             R19 R22
     1099 JUMP                             ; [+1]
     1100 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     1101 SETTABLEKS                       R19 R18 K23 ["date"]
     1103 MOVE                             R19 R12
     1104 LOADK                            R20 K119 ["Description.AvatarSettingsScaleBodyType"]
     1105 DUPTABLE                         R21 K106 [{"scale"}]
     1106 GETTABLEKS                       R24 R2 K42 ["metaData"]
     1108 JUMPIFNOT                        R24 ; [+5]
     1109 GETTABLEKS                       R24 R2 K42 ["metaData"]
     1111 GETTABLEKS                       R23 R24 K107 ["Scale"]
     1113 JUMPIF                           R23 ; [+1]
     1114 LOADK                            R23 K44 [""]
     1115 LOADK                            R24 K44 [""]
     1116 FASTCALL1                        TOSTRING R23 ; [+3]
     1117 MOVE                             R26 R23
     1118 GETIMPORT                        R25 K4 [tostring]
     1120 CALL                             R25 1 1
     1121 LOADK                            R26 K44 [""]
     1122 CONCAT                           R22 R24 R26
     1123 SETTABLEKS                       R22 R21 K105 ["scale"]
     1125 CALL                             R19 2 1
     1126 SETTABLEKS                       R19 R18 K24 ["translation"]
     1128 GETTABLEKS                       R19 R2 K14 ["userId"]
     1130 SETTABLEKS                       R19 R18 K25 ["actorId"]
     1132 MOVE                             R19 R0
     1133 GETTABLEKS                       R20 R2 K14 ["userId"]
     1135 CALL                             R19 1 1
     1136 SETTABLEKS                       R19 R18 K26 ["actorName"]
     1138 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1140 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1142 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1144 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1146 GETTABLEKS                       R19 R2 K30 ["headerText"]
     1148 SETTABLEKS                       R19 R18 K30 ["headerText"]
     1150 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1152 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1154 RETURN                           R18 1
     1155 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1157 JUMPIFNOTEQKN                    R18 K120 [13] ; [+73]
     1159 DUPTABLE                         R18 K122 [{["id"], ["eventType"] = "AvatarSettingsScaleProportions", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     1160 GETTABLEKS                       R19 R2 K19 ["id"]
     1162 SETTABLEKS                       R19 R18 K19 ["id"]
     1164 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     1166 NEWCLOSURE                       R22 P6
     1167 CAPTURE                          VAL R20
     1168 CAPTURE                          VAL R3
     1169 FASTPCALL                        pcall 1 ; [+2]
     1170 GETIMPORT                        R21 K35 [pcall]
     1172 CALL                             R21 1 2
     1173 JUMPIFNOT                        R21 ; [+2]
     1174 MOVE                             R19 R22
     1175 JUMP                             ; [+1]
     1176 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     1177 SETTABLEKS                       R19 R18 K23 ["date"]
     1179 MOVE                             R19 R12
     1180 LOADK                            R20 K123 ["Description.AvatarSettingsScaleProportions"]
     1181 DUPTABLE                         R21 K106 [{"scale"}]
     1182 GETTABLEKS                       R24 R2 K42 ["metaData"]
     1184 JUMPIFNOT                        R24 ; [+5]
     1185 GETTABLEKS                       R24 R2 K42 ["metaData"]
     1187 GETTABLEKS                       R23 R24 K107 ["Scale"]
     1189 JUMPIF                           R23 ; [+1]
     1190 LOADK                            R23 K44 [""]
     1191 LOADK                            R24 K44 [""]
     1192 FASTCALL1                        TOSTRING R23 ; [+3]
     1193 MOVE                             R26 R23
     1194 GETIMPORT                        R25 K4 [tostring]
     1196 CALL                             R25 1 1
     1197 LOADK                            R26 K44 [""]
     1198 CONCAT                           R22 R24 R26
     1199 SETTABLEKS                       R22 R21 K105 ["scale"]
     1201 CALL                             R19 2 1
     1202 SETTABLEKS                       R19 R18 K24 ["translation"]
     1204 GETTABLEKS                       R19 R2 K14 ["userId"]
     1206 SETTABLEKS                       R19 R18 K25 ["actorId"]
     1208 MOVE                             R19 R0
     1209 GETTABLEKS                       R20 R2 K14 ["userId"]
     1211 CALL                             R19 1 1
     1212 SETTABLEKS                       R19 R18 K26 ["actorName"]
     1214 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1216 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1218 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1220 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1222 GETTABLEKS                       R19 R2 K30 ["headerText"]
     1224 SETTABLEKS                       R19 R18 K30 ["headerText"]
     1226 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1228 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1230 RETURN                           R18 1
     1231 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1233 JUMPIFNOTEQKN                    R18 K124 [14] ; [+53]
     1235 DUPTABLE                         R18 K126 [{["id"], ["eventType"] = "AvatarSettingsBodyParts", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     1236 GETTABLEKS                       R19 R2 K19 ["id"]
     1238 SETTABLEKS                       R19 R18 K19 ["id"]
     1240 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     1242 NEWCLOSURE                       R22 P6
     1243 CAPTURE                          VAL R20
     1244 CAPTURE                          VAL R3
     1245 FASTPCALL                        pcall 1 ; [+2]
     1246 GETIMPORT                        R21 K35 [pcall]
     1248 CALL                             R21 1 2
     1249 JUMPIFNOT                        R21 ; [+2]
     1250 MOVE                             R19 R22
     1251 JUMP                             ; [+1]
     1252 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     1253 SETTABLEKS                       R19 R18 K23 ["date"]
     1255 MOVE                             R19 R12
     1256 LOADK                            R20 K127 ["Description.AvatarSettingsBodyParts"]
     1257 CALL                             R19 1 1
     1258 SETTABLEKS                       R19 R18 K24 ["translation"]
     1260 GETTABLEKS                       R19 R2 K14 ["userId"]
     1262 SETTABLEKS                       R19 R18 K25 ["actorId"]
     1264 MOVE                             R19 R0
     1265 GETTABLEKS                       R20 R2 K14 ["userId"]
     1267 CALL                             R19 1 1
     1268 SETTABLEKS                       R19 R18 K26 ["actorName"]
     1270 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1272 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1274 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1276 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1278 GETTABLEKS                       R19 R2 K30 ["headerText"]
     1280 SETTABLEKS                       R19 R18 K30 ["headerText"]
     1282 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1284 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1286 RETURN                           R18 1
     1287 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1289 JUMPIFNOTEQKN                    R18 K128 [15] ; [+53]
     1291 DUPTABLE                         R18 K130 [{["id"], ["eventType"] = "AvatarSettingsClothing", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     1292 GETTABLEKS                       R19 R2 K19 ["id"]
     1294 SETTABLEKS                       R19 R18 K19 ["id"]
     1296 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     1298 NEWCLOSURE                       R22 P6
     1299 CAPTURE                          VAL R20
     1300 CAPTURE                          VAL R3
     1301 FASTPCALL                        pcall 1 ; [+2]
     1302 GETIMPORT                        R21 K35 [pcall]
     1304 CALL                             R21 1 2
     1305 JUMPIFNOT                        R21 ; [+2]
     1306 MOVE                             R19 R22
     1307 JUMP                             ; [+1]
     1308 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     1309 SETTABLEKS                       R19 R18 K23 ["date"]
     1311 MOVE                             R19 R12
     1312 LOADK                            R20 K131 ["Description.AvatarSettingsClothing"]
     1313 CALL                             R19 1 1
     1314 SETTABLEKS                       R19 R18 K24 ["translation"]
     1316 GETTABLEKS                       R19 R2 K14 ["userId"]
     1318 SETTABLEKS                       R19 R18 K25 ["actorId"]
     1320 MOVE                             R19 R0
     1321 GETTABLEKS                       R20 R2 K14 ["userId"]
     1323 CALL                             R19 1 1
     1324 SETTABLEKS                       R19 R18 K26 ["actorName"]
     1326 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1328 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1330 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1332 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1334 GETTABLEKS                       R19 R2 K30 ["headerText"]
     1336 SETTABLEKS                       R19 R18 K30 ["headerText"]
     1338 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1340 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1342 RETURN                           R18 1
     1343 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1345 JUMPIFNOTEQKN                    R18 K132 [16] ; [+102]
     1347 DUPTABLE                         R18 K134 [{["id"], ["eventType"] = "ExperienceName", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     1348 GETTABLEKS                       R19 R2 K19 ["id"]
     1350 SETTABLEKS                       R19 R18 K19 ["id"]
     1352 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     1354 NEWCLOSURE                       R22 P6
     1355 CAPTURE                          VAL R20
     1356 CAPTURE                          VAL R3
     1357 FASTPCALL                        pcall 1 ; [+2]
     1358 GETIMPORT                        R21 K35 [pcall]
     1360 CALL                             R21 1 2
     1361 JUMPIFNOT                        R21 ; [+2]
     1362 MOVE                             R19 R22
     1363 JUMP                             ; [+1]
     1364 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     1365 SETTABLEKS                       R19 R18 K23 ["date"]
     1367 MOVE                             R19 R12
     1368 LOADK                            R20 K135 ["Description.ExperienceName"]
     1369 DUPTABLE                         R21 K138 [{"newName", "oldName"}]
     1370 GETTABLEKS                       R24 R2 K42 ["metaData"]
     1372 JUMPIFNOT                        R24 ; [+5]
     1373 GETTABLEKS                       R24 R2 K42 ["metaData"]
     1375 GETTABLEKS                       R23 R24 K139 ["NewName"]
     1377 JUMPIF                           R23 ; [+1]
     1378 LOADK                            R23 K44 [""]
     1379 LOADK                            R24 K44 [""]
     1380 FASTCALL1                        TOSTRING R23 ; [+3]
     1381 MOVE                             R26 R23
     1382 GETIMPORT                        R25 K4 [tostring]
     1384 CALL                             R25 1 1
     1385 LOADK                            R26 K44 [""]
     1386 CONCAT                           R22 R24 R26
     1387 SETTABLEKS                       R22 R21 K136 ["newName"]
     1389 GETTABLEKS                       R24 R2 K42 ["metaData"]
     1391 JUMPIFNOT                        R24 ; [+5]
     1392 GETTABLEKS                       R24 R2 K42 ["metaData"]
     1394 GETTABLEKS                       R23 R24 K140 ["OldName"]
     1396 JUMPIF                           R23 ; [+1]
     1397 LOADK                            R23 K44 [""]
     1398 LOADK                            R24 K44 [""]
     1399 FASTCALL1                        TOSTRING R23 ; [+3]
     1400 MOVE                             R26 R23
     1401 GETIMPORT                        R25 K4 [tostring]
     1403 CALL                             R25 1 1
     1404 LOADK                            R26 K44 [""]
     1405 CONCAT                           R22 R24 R26
     1406 SETTABLEKS                       R22 R21 K137 ["oldName"]
     1408 CALL                             R19 2 1
     1409 SETTABLEKS                       R19 R18 K24 ["translation"]
     1411 GETTABLEKS                       R19 R2 K14 ["userId"]
     1413 SETTABLEKS                       R19 R18 K25 ["actorId"]
     1415 MOVE                             R19 R0
     1416 GETTABLEKS                       R20 R2 K14 ["userId"]
     1418 CALL                             R19 1 1
     1419 SETTABLEKS                       R19 R18 K26 ["actorName"]
     1421 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1423 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1425 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1427 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1429 GETTABLEKS                       R19 R2 K30 ["headerText"]
     1431 SETTABLEKS                       R19 R18 K30 ["headerText"]
     1433 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1435 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1437 LOADK                            R20 K44 [""]
     1438 FASTCALL1                        TOSTRING R4 ; [+3]
     1439 MOVE                             R22 R4
     1440 GETIMPORT                        R21 K4 [tostring]
     1442 CALL                             R21 1 1
     1443 LOADK                            R22 K11 ["/configure"]
     1444 CONCAT                           R19 R20 R22
     1445 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     1447 RETURN                           R18 1
     1448 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1450 JUMPIFNOTEQKN                    R18 K141 [17] ; [+63]
     1452 DUPTABLE                         R18 K143 [{["id"], ["eventType"] = "ExperienceDescription", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     1453 GETTABLEKS                       R19 R2 K19 ["id"]
     1455 SETTABLEKS                       R19 R18 K19 ["id"]
     1457 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     1459 NEWCLOSURE                       R22 P6
     1460 CAPTURE                          VAL R20
     1461 CAPTURE                          VAL R3
     1462 FASTPCALL                        pcall 1 ; [+2]
     1463 GETIMPORT                        R21 K35 [pcall]
     1465 CALL                             R21 1 2
     1466 JUMPIFNOT                        R21 ; [+2]
     1467 MOVE                             R19 R22
     1468 JUMP                             ; [+1]
     1469 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     1470 SETTABLEKS                       R19 R18 K23 ["date"]
     1472 MOVE                             R19 R12
     1473 LOADK                            R20 K144 ["Description.ExperienceDescription"]
     1474 CALL                             R19 1 1
     1475 SETTABLEKS                       R19 R18 K24 ["translation"]
     1477 GETTABLEKS                       R19 R2 K14 ["userId"]
     1479 SETTABLEKS                       R19 R18 K25 ["actorId"]
     1481 MOVE                             R19 R0
     1482 GETTABLEKS                       R20 R2 K14 ["userId"]
     1484 CALL                             R19 1 1
     1485 SETTABLEKS                       R19 R18 K26 ["actorName"]
     1487 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1489 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1491 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1493 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1495 GETTABLEKS                       R19 R2 K30 ["headerText"]
     1497 SETTABLEKS                       R19 R18 K30 ["headerText"]
     1499 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1501 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1503 LOADK                            R20 K44 [""]
     1504 FASTCALL1                        TOSTRING R4 ; [+3]
     1505 MOVE                             R22 R4
     1506 GETIMPORT                        R21 K4 [tostring]
     1508 CALL                             R21 1 1
     1509 LOADK                            R22 K11 ["/configure"]
     1510 CONCAT                           R19 R20 R22
     1511 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     1513 RETURN                           R18 1
     1514 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1516 JUMPIFNOTEQKN                    R18 K145 [18] ; [+83]
     1518 DUPTABLE                         R18 K147 [{["id"], ["eventType"] = "ExperienceGenre", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     1519 GETTABLEKS                       R19 R2 K19 ["id"]
     1521 SETTABLEKS                       R19 R18 K19 ["id"]
     1523 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     1525 NEWCLOSURE                       R22 P6
     1526 CAPTURE                          VAL R20
     1527 CAPTURE                          VAL R3
     1528 FASTPCALL                        pcall 1 ; [+2]
     1529 GETIMPORT                        R21 K35 [pcall]
     1531 CALL                             R21 1 2
     1532 JUMPIFNOT                        R21 ; [+2]
     1533 MOVE                             R19 R22
     1534 JUMP                             ; [+1]
     1535 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     1536 SETTABLEKS                       R19 R18 K23 ["date"]
     1538 MOVE                             R19 R12
     1539 LOADK                            R20 K148 ["Description.ExperienceGenre"]
     1540 DUPTABLE                         R21 K150 [{"genre"}]
     1541 GETTABLEKS                       R24 R2 K42 ["metaData"]
     1543 JUMPIFNOT                        R24 ; [+5]
     1544 GETTABLEKS                       R24 R2 K42 ["metaData"]
     1546 GETTABLEKS                       R23 R24 K151 ["Genre"]
     1548 JUMPIF                           R23 ; [+1]
     1549 LOADK                            R23 K44 [""]
     1550 LOADK                            R24 K44 [""]
     1551 FASTCALL1                        TOSTRING R23 ; [+3]
     1552 MOVE                             R26 R23
     1553 GETIMPORT                        R25 K4 [tostring]
     1555 CALL                             R25 1 1
     1556 LOADK                            R26 K44 [""]
     1557 CONCAT                           R22 R24 R26
     1558 SETTABLEKS                       R22 R21 K149 ["genre"]
     1560 CALL                             R19 2 1
     1561 SETTABLEKS                       R19 R18 K24 ["translation"]
     1563 GETTABLEKS                       R19 R2 K14 ["userId"]
     1565 SETTABLEKS                       R19 R18 K25 ["actorId"]
     1567 MOVE                             R19 R0
     1568 GETTABLEKS                       R20 R2 K14 ["userId"]
     1570 CALL                             R19 1 1
     1571 SETTABLEKS                       R19 R18 K26 ["actorName"]
     1573 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1575 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1577 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1579 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1581 GETTABLEKS                       R19 R2 K30 ["headerText"]
     1583 SETTABLEKS                       R19 R18 K30 ["headerText"]
     1585 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1587 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1589 LOADK                            R20 K44 [""]
     1590 FASTCALL1                        TOSTRING R4 ; [+3]
     1591 MOVE                             R22 R4
     1592 GETIMPORT                        R21 K4 [tostring]
     1594 CALL                             R21 1 1
     1595 LOADK                            R22 K11 ["/configure"]
     1596 CONCAT                           R19 R20 R22
     1597 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     1599 RETURN                           R18 1
     1600 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1602 JUMPIFNOTEQKN                    R18 K152 [19] ; [+94]
     1604 DUPTABLE                         R18 K154 [{["id"], ["eventType"] = "SecuritySettingsHTTPRequests", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     1605 GETTABLEKS                       R19 R2 K19 ["id"]
     1607 SETTABLEKS                       R19 R18 K19 ["id"]
     1609 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     1611 NEWCLOSURE                       R22 P6
     1612 CAPTURE                          VAL R20
     1613 CAPTURE                          VAL R3
     1614 FASTPCALL                        pcall 1 ; [+2]
     1615 GETIMPORT                        R21 K35 [pcall]
     1617 CALL                             R21 1 2
     1618 JUMPIFNOT                        R21 ; [+2]
     1619 MOVE                             R19 R22
     1620 JUMP                             ; [+1]
     1621 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     1622 SETTABLEKS                       R19 R18 K23 ["date"]
     1624 MOVE                             R19 R12
     1625 LOADK                            R20 K155 ["Description.SecuritySettingsHTTPRequests"]
     1626 DUPTABLE                         R21 K157 [{"action"}]
     1627 GETTABLEKS                       R26 R2 K42 ["metaData"]
     1629 JUMPIFNOT                        R26 ; [+5]
     1630 GETTABLEKS                       R26 R2 K42 ["metaData"]
     1632 GETTABLEKS                       R25 R26 K43 ["Action"]
     1634 JUMPIF                           R25 ; [+1]
     1635 LOADK                            R25 K44 [""]
     1636 GETIMPORT                        R26 K47 [string.lower]
     1638 FASTCALL1                        TOSTRING R25 ; [+3]
     1639 MOVE                             R28 R25
     1640 GETIMPORT                        R27 K4 [tostring]
     1642 CALL                             R27 1 1
     1643 CALL                             R26 1 1
     1644 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     1646 LOADB                            R24 1
     1647 JUMP                             ; [+1]
     1648 LOADB                            R24 0
     1649 JUMPIFNOT                        R24 ; [+4]
     1650 MOVE                             R23 R12
     1651 LOADK                            R24 K158 ["Description.ActionEnabled"]
     1652 CALL                             R23 1 1
     1653 JUMPIF                           R23 ; [+3]
     1654 MOVE                             R23 R12
     1655 LOADK                            R24 K159 ["Description.ActionDisabled"]
     1656 CALL                             R23 1 1
     1657 LOADK                            R24 K44 [""]
     1658 FASTCALL1                        TOSTRING R23 ; [+3]
     1659 MOVE                             R26 R23
     1660 GETIMPORT                        R25 K4 [tostring]
     1662 CALL                             R25 1 1
     1663 LOADK                            R26 K44 [""]
     1664 CONCAT                           R22 R24 R26
     1665 SETTABLEKS                       R22 R21 K156 ["action"]
     1667 CALL                             R19 2 1
     1668 SETTABLEKS                       R19 R18 K24 ["translation"]
     1670 GETTABLEKS                       R19 R2 K14 ["userId"]
     1672 SETTABLEKS                       R19 R18 K25 ["actorId"]
     1674 MOVE                             R19 R0
     1675 GETTABLEKS                       R20 R2 K14 ["userId"]
     1677 CALL                             R19 1 1
     1678 SETTABLEKS                       R19 R18 K26 ["actorName"]
     1680 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1682 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1684 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1686 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1688 GETTABLEKS                       R19 R2 K30 ["headerText"]
     1690 SETTABLEKS                       R19 R18 K30 ["headerText"]
     1692 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1694 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1696 RETURN                           R18 1
     1697 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1699 JUMPIFNOTEQKN                    R18 K160 [20] ; [+104]
     1701 DUPTABLE                         R18 K162 [{["id"], ["eventType"] = "SecuritySettingsStudioAccessToAPI", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     1702 GETTABLEKS                       R19 R2 K19 ["id"]
     1704 SETTABLEKS                       R19 R18 K19 ["id"]
     1706 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     1708 NEWCLOSURE                       R22 P6
     1709 CAPTURE                          VAL R20
     1710 CAPTURE                          VAL R3
     1711 FASTPCALL                        pcall 1 ; [+2]
     1712 GETIMPORT                        R21 K35 [pcall]
     1714 CALL                             R21 1 2
     1715 JUMPIFNOT                        R21 ; [+2]
     1716 MOVE                             R19 R22
     1717 JUMP                             ; [+1]
     1718 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     1719 SETTABLEKS                       R19 R18 K23 ["date"]
     1721 MOVE                             R19 R12
     1722 LOADK                            R20 K163 ["Description.SecuritySettingsStudioAccessToAPI"]
     1723 DUPTABLE                         R21 K157 [{"action"}]
     1724 GETTABLEKS                       R26 R2 K42 ["metaData"]
     1726 JUMPIFNOT                        R26 ; [+5]
     1727 GETTABLEKS                       R26 R2 K42 ["metaData"]
     1729 GETTABLEKS                       R25 R26 K43 ["Action"]
     1731 JUMPIF                           R25 ; [+1]
     1732 LOADK                            R25 K44 [""]
     1733 GETIMPORT                        R26 K47 [string.lower]
     1735 FASTCALL1                        TOSTRING R25 ; [+3]
     1736 MOVE                             R28 R25
     1737 GETIMPORT                        R27 K4 [tostring]
     1739 CALL                             R27 1 1
     1740 CALL                             R26 1 1
     1741 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     1743 LOADB                            R24 1
     1744 JUMP                             ; [+1]
     1745 LOADB                            R24 0
     1746 JUMPIFNOT                        R24 ; [+4]
     1747 MOVE                             R23 R12
     1748 LOADK                            R24 K158 ["Description.ActionEnabled"]
     1749 CALL                             R23 1 1
     1750 JUMPIF                           R23 ; [+3]
     1751 MOVE                             R23 R12
     1752 LOADK                            R24 K159 ["Description.ActionDisabled"]
     1753 CALL                             R23 1 1
     1754 LOADK                            R24 K44 [""]
     1755 FASTCALL1                        TOSTRING R23 ; [+3]
     1756 MOVE                             R26 R23
     1757 GETIMPORT                        R25 K4 [tostring]
     1759 CALL                             R25 1 1
     1760 LOADK                            R26 K44 [""]
     1761 CONCAT                           R22 R24 R26
     1762 SETTABLEKS                       R22 R21 K156 ["action"]
     1764 CALL                             R19 2 1
     1765 SETTABLEKS                       R19 R18 K24 ["translation"]
     1767 GETTABLEKS                       R19 R2 K14 ["userId"]
     1769 SETTABLEKS                       R19 R18 K25 ["actorId"]
     1771 MOVE                             R19 R0
     1772 GETTABLEKS                       R20 R2 K14 ["userId"]
     1774 CALL                             R19 1 1
     1775 SETTABLEKS                       R19 R18 K26 ["actorName"]
     1777 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1779 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1781 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1783 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1785 GETTABLEKS                       R19 R2 K30 ["headerText"]
     1787 SETTABLEKS                       R19 R18 K30 ["headerText"]
     1789 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1791 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1793 LOADK                            R20 K44 [""]
     1794 FASTCALL1                        TOSTRING R4 ; [+3]
     1795 MOVE                             R22 R4
     1796 GETIMPORT                        R21 K4 [tostring]
     1798 CALL                             R21 1 1
     1799 LOADK                            R22 K11 ["/configure"]
     1800 CONCAT                           R19 R20 R22
     1801 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     1803 RETURN                           R18 1
     1804 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1806 JUMPIFNOTEQKN                    R18 K164 [21] ; [+94]
     1808 DUPTABLE                         R18 K166 [{["id"], ["eventType"] = "SecuritySettingsThirdPartySales", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     1809 GETTABLEKS                       R19 R2 K19 ["id"]
     1811 SETTABLEKS                       R19 R18 K19 ["id"]
     1813 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     1815 NEWCLOSURE                       R22 P6
     1816 CAPTURE                          VAL R20
     1817 CAPTURE                          VAL R3
     1818 FASTPCALL                        pcall 1 ; [+2]
     1819 GETIMPORT                        R21 K35 [pcall]
     1821 CALL                             R21 1 2
     1822 JUMPIFNOT                        R21 ; [+2]
     1823 MOVE                             R19 R22
     1824 JUMP                             ; [+1]
     1825 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     1826 SETTABLEKS                       R19 R18 K23 ["date"]
     1828 MOVE                             R19 R12
     1829 LOADK                            R20 K167 ["Description.SecuritySettingsThirdPartySales"]
     1830 DUPTABLE                         R21 K157 [{"action"}]
     1831 GETTABLEKS                       R26 R2 K42 ["metaData"]
     1833 JUMPIFNOT                        R26 ; [+5]
     1834 GETTABLEKS                       R26 R2 K42 ["metaData"]
     1836 GETTABLEKS                       R25 R26 K43 ["Action"]
     1838 JUMPIF                           R25 ; [+1]
     1839 LOADK                            R25 K44 [""]
     1840 GETIMPORT                        R26 K47 [string.lower]
     1842 FASTCALL1                        TOSTRING R25 ; [+3]
     1843 MOVE                             R28 R25
     1844 GETIMPORT                        R27 K4 [tostring]
     1846 CALL                             R27 1 1
     1847 CALL                             R26 1 1
     1848 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     1850 LOADB                            R24 1
     1851 JUMP                             ; [+1]
     1852 LOADB                            R24 0
     1853 JUMPIFNOT                        R24 ; [+4]
     1854 MOVE                             R23 R12
     1855 LOADK                            R24 K158 ["Description.ActionEnabled"]
     1856 CALL                             R23 1 1
     1857 JUMPIF                           R23 ; [+3]
     1858 MOVE                             R23 R12
     1859 LOADK                            R24 K159 ["Description.ActionDisabled"]
     1860 CALL                             R23 1 1
     1861 LOADK                            R24 K44 [""]
     1862 FASTCALL1                        TOSTRING R23 ; [+3]
     1863 MOVE                             R26 R23
     1864 GETIMPORT                        R25 K4 [tostring]
     1866 CALL                             R25 1 1
     1867 LOADK                            R26 K44 [""]
     1868 CONCAT                           R22 R24 R26
     1869 SETTABLEKS                       R22 R21 K156 ["action"]
     1871 CALL                             R19 2 1
     1872 SETTABLEKS                       R19 R18 K24 ["translation"]
     1874 GETTABLEKS                       R19 R2 K14 ["userId"]
     1876 SETTABLEKS                       R19 R18 K25 ["actorId"]
     1878 MOVE                             R19 R0
     1879 GETTABLEKS                       R20 R2 K14 ["userId"]
     1881 CALL                             R19 1 1
     1882 SETTABLEKS                       R19 R18 K26 ["actorName"]
     1884 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1886 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1888 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1890 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1892 GETTABLEKS                       R19 R2 K30 ["headerText"]
     1894 SETTABLEKS                       R19 R18 K30 ["headerText"]
     1896 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1898 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1900 RETURN                           R18 1
     1901 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1903 JUMPIFNOTEQKN                    R18 K168 [22] ; [+94]
     1905 DUPTABLE                         R18 K170 [{["id"], ["eventType"] = "SecuritySettingsThirdPartyTeleports", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     1906 GETTABLEKS                       R19 R2 K19 ["id"]
     1908 SETTABLEKS                       R19 R18 K19 ["id"]
     1910 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     1912 NEWCLOSURE                       R22 P6
     1913 CAPTURE                          VAL R20
     1914 CAPTURE                          VAL R3
     1915 FASTPCALL                        pcall 1 ; [+2]
     1916 GETIMPORT                        R21 K35 [pcall]
     1918 CALL                             R21 1 2
     1919 JUMPIFNOT                        R21 ; [+2]
     1920 MOVE                             R19 R22
     1921 JUMP                             ; [+1]
     1922 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     1923 SETTABLEKS                       R19 R18 K23 ["date"]
     1925 MOVE                             R19 R12
     1926 LOADK                            R20 K171 ["Description.SecuritySettingsThirdPartyTeleports"]
     1927 DUPTABLE                         R21 K157 [{"action"}]
     1928 GETTABLEKS                       R26 R2 K42 ["metaData"]
     1930 JUMPIFNOT                        R26 ; [+5]
     1931 GETTABLEKS                       R26 R2 K42 ["metaData"]
     1933 GETTABLEKS                       R25 R26 K43 ["Action"]
     1935 JUMPIF                           R25 ; [+1]
     1936 LOADK                            R25 K44 [""]
     1937 GETIMPORT                        R26 K47 [string.lower]
     1939 FASTCALL1                        TOSTRING R25 ; [+3]
     1940 MOVE                             R28 R25
     1941 GETIMPORT                        R27 K4 [tostring]
     1943 CALL                             R27 1 1
     1944 CALL                             R26 1 1
     1945 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     1947 LOADB                            R24 1
     1948 JUMP                             ; [+1]
     1949 LOADB                            R24 0
     1950 JUMPIFNOT                        R24 ; [+4]
     1951 MOVE                             R23 R12
     1952 LOADK                            R24 K158 ["Description.ActionEnabled"]
     1953 CALL                             R23 1 1
     1954 JUMPIF                           R23 ; [+3]
     1955 MOVE                             R23 R12
     1956 LOADK                            R24 K159 ["Description.ActionDisabled"]
     1957 CALL                             R23 1 1
     1958 LOADK                            R24 K44 [""]
     1959 FASTCALL1                        TOSTRING R23 ; [+3]
     1960 MOVE                             R26 R23
     1961 GETIMPORT                        R25 K4 [tostring]
     1963 CALL                             R25 1 1
     1964 LOADK                            R26 K44 [""]
     1965 CONCAT                           R22 R24 R26
     1966 SETTABLEKS                       R22 R21 K156 ["action"]
     1968 CALL                             R19 2 1
     1969 SETTABLEKS                       R19 R18 K24 ["translation"]
     1971 GETTABLEKS                       R19 R2 K14 ["userId"]
     1973 SETTABLEKS                       R19 R18 K25 ["actorId"]
     1975 MOVE                             R19 R0
     1976 GETTABLEKS                       R20 R2 K14 ["userId"]
     1978 CALL                             R19 1 1
     1979 SETTABLEKS                       R19 R18 K26 ["actorName"]
     1981 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1983 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1985 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1987 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1989 GETTABLEKS                       R19 R2 K30 ["headerText"]
     1991 SETTABLEKS                       R19 R18 K30 ["headerText"]
     1993 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1995 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1997 RETURN                           R18 1
     1998 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2000 JUMPIFNOTEQKN                    R18 K172 [23] ; [+53]
     2002 DUPTABLE                         R18 K174 [{["id"], ["eventType"] = "ExperienceShutDown", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     2003 GETTABLEKS                       R19 R2 K19 ["id"]
     2005 SETTABLEKS                       R19 R18 K19 ["id"]
     2007 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     2009 NEWCLOSURE                       R22 P6
     2010 CAPTURE                          VAL R20
     2011 CAPTURE                          VAL R3
     2012 FASTPCALL                        pcall 1 ; [+2]
     2013 GETIMPORT                        R21 K35 [pcall]
     2015 CALL                             R21 1 2
     2016 JUMPIFNOT                        R21 ; [+2]
     2017 MOVE                             R19 R22
     2018 JUMP                             ; [+1]
     2019 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     2020 SETTABLEKS                       R19 R18 K23 ["date"]
     2022 MOVE                             R19 R12
     2023 LOADK                            R20 K175 ["Description.ExperienceShutDown"]
     2024 CALL                             R19 1 1
     2025 SETTABLEKS                       R19 R18 K24 ["translation"]
     2027 GETTABLEKS                       R19 R2 K14 ["userId"]
     2029 SETTABLEKS                       R19 R18 K25 ["actorId"]
     2031 MOVE                             R19 R0
     2032 GETTABLEKS                       R20 R2 K14 ["userId"]
     2034 CALL                             R19 1 1
     2035 SETTABLEKS                       R19 R18 K26 ["actorName"]
     2037 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2039 SETTABLEKS                       R19 R18 K29 ["iconId"]
     2041 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2043 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2045 GETTABLEKS                       R19 R2 K30 ["headerText"]
     2047 SETTABLEKS                       R19 R18 K30 ["headerText"]
     2049 GETTABLEKS                       R19 R2 K31 ["footerText"]
     2051 SETTABLEKS                       R19 R18 K31 ["footerText"]
     2053 RETURN                           R18 1
     2054 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2056 JUMPIFNOTEQKN                    R18 K176 [24] ; [+83]
     2058 DUPTABLE                         R18 K178 [{["id"], ["eventType"] = "SocialLinksAdded", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     2059 GETTABLEKS                       R19 R2 K19 ["id"]
     2061 SETTABLEKS                       R19 R18 K19 ["id"]
     2063 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     2065 NEWCLOSURE                       R22 P6
     2066 CAPTURE                          VAL R20
     2067 CAPTURE                          VAL R3
     2068 FASTPCALL                        pcall 1 ; [+2]
     2069 GETIMPORT                        R21 K35 [pcall]
     2071 CALL                             R21 1 2
     2072 JUMPIFNOT                        R21 ; [+2]
     2073 MOVE                             R19 R22
     2074 JUMP                             ; [+1]
     2075 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     2076 SETTABLEKS                       R19 R18 K23 ["date"]
     2078 MOVE                             R19 R12
     2079 LOADK                            R20 K179 ["Description.SocialLinksAdded"]
     2080 DUPTABLE                         R21 K181 [{"channel"}]
     2081 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2083 JUMPIFNOT                        R24 ; [+5]
     2084 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2086 GETTABLEKS                       R23 R24 K182 ["Channel"]
     2088 JUMPIF                           R23 ; [+1]
     2089 LOADK                            R23 K44 [""]
     2090 LOADK                            R24 K44 [""]
     2091 FASTCALL1                        TOSTRING R23 ; [+3]
     2092 MOVE                             R26 R23
     2093 GETIMPORT                        R25 K4 [tostring]
     2095 CALL                             R25 1 1
     2096 LOADK                            R26 K44 [""]
     2097 CONCAT                           R22 R24 R26
     2098 SETTABLEKS                       R22 R21 K180 ["channel"]
     2100 CALL                             R19 2 1
     2101 SETTABLEKS                       R19 R18 K24 ["translation"]
     2103 GETTABLEKS                       R19 R2 K14 ["userId"]
     2105 SETTABLEKS                       R19 R18 K25 ["actorId"]
     2107 MOVE                             R19 R0
     2108 GETTABLEKS                       R20 R2 K14 ["userId"]
     2110 CALL                             R19 1 1
     2111 SETTABLEKS                       R19 R18 K26 ["actorName"]
     2113 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2115 SETTABLEKS                       R19 R18 K29 ["iconId"]
     2117 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2119 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2121 GETTABLEKS                       R19 R2 K30 ["headerText"]
     2123 SETTABLEKS                       R19 R18 K30 ["headerText"]
     2125 GETTABLEKS                       R19 R2 K31 ["footerText"]
     2127 SETTABLEKS                       R19 R18 K31 ["footerText"]
     2129 LOADK                            R20 K44 [""]
     2130 FASTCALL1                        TOSTRING R4 ; [+3]
     2131 MOVE                             R22 R4
     2132 GETIMPORT                        R21 K4 [tostring]
     2134 CALL                             R21 1 1
     2135 LOADK                            R22 K183 ["/social-links"]
     2136 CONCAT                           R19 R20 R22
     2137 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     2139 RETURN                           R18 1
     2140 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2142 JUMPIFNOTEQKN                    R18 K184 [25] ; [+83]
     2144 DUPTABLE                         R18 K186 [{["id"], ["eventType"] = "SocialLinksRemoved", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     2145 GETTABLEKS                       R19 R2 K19 ["id"]
     2147 SETTABLEKS                       R19 R18 K19 ["id"]
     2149 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     2151 NEWCLOSURE                       R22 P6
     2152 CAPTURE                          VAL R20
     2153 CAPTURE                          VAL R3
     2154 FASTPCALL                        pcall 1 ; [+2]
     2155 GETIMPORT                        R21 K35 [pcall]
     2157 CALL                             R21 1 2
     2158 JUMPIFNOT                        R21 ; [+2]
     2159 MOVE                             R19 R22
     2160 JUMP                             ; [+1]
     2161 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     2162 SETTABLEKS                       R19 R18 K23 ["date"]
     2164 MOVE                             R19 R12
     2165 LOADK                            R20 K187 ["Description.SocialLinksRemoved"]
     2166 DUPTABLE                         R21 K181 [{"channel"}]
     2167 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2169 JUMPIFNOT                        R24 ; [+5]
     2170 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2172 GETTABLEKS                       R23 R24 K182 ["Channel"]
     2174 JUMPIF                           R23 ; [+1]
     2175 LOADK                            R23 K44 [""]
     2176 LOADK                            R24 K44 [""]
     2177 FASTCALL1                        TOSTRING R23 ; [+3]
     2178 MOVE                             R26 R23
     2179 GETIMPORT                        R25 K4 [tostring]
     2181 CALL                             R25 1 1
     2182 LOADK                            R26 K44 [""]
     2183 CONCAT                           R22 R24 R26
     2184 SETTABLEKS                       R22 R21 K180 ["channel"]
     2186 CALL                             R19 2 1
     2187 SETTABLEKS                       R19 R18 K24 ["translation"]
     2189 GETTABLEKS                       R19 R2 K14 ["userId"]
     2191 SETTABLEKS                       R19 R18 K25 ["actorId"]
     2193 MOVE                             R19 R0
     2194 GETTABLEKS                       R20 R2 K14 ["userId"]
     2196 CALL                             R19 1 1
     2197 SETTABLEKS                       R19 R18 K26 ["actorName"]
     2199 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2201 SETTABLEKS                       R19 R18 K29 ["iconId"]
     2203 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2205 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2207 GETTABLEKS                       R19 R2 K30 ["headerText"]
     2209 SETTABLEKS                       R19 R18 K30 ["headerText"]
     2211 GETTABLEKS                       R19 R2 K31 ["footerText"]
     2213 SETTABLEKS                       R19 R18 K31 ["footerText"]
     2215 LOADK                            R20 K44 [""]
     2216 FASTCALL1                        TOSTRING R4 ; [+3]
     2217 MOVE                             R22 R4
     2218 GETIMPORT                        R21 K4 [tostring]
     2220 CALL                             R21 1 1
     2221 LOADK                            R22 K183 ["/social-links"]
     2222 CONCAT                           R19 R20 R22
     2223 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     2225 RETURN                           R18 1
     2226 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2228 JUMPIFNOTEQKN                    R18 K188 [26] ; [+83]
     2230 DUPTABLE                         R18 K190 [{["id"], ["eventType"] = "SocialLinksUpdated", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     2231 GETTABLEKS                       R19 R2 K19 ["id"]
     2233 SETTABLEKS                       R19 R18 K19 ["id"]
     2235 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     2237 NEWCLOSURE                       R22 P6
     2238 CAPTURE                          VAL R20
     2239 CAPTURE                          VAL R3
     2240 FASTPCALL                        pcall 1 ; [+2]
     2241 GETIMPORT                        R21 K35 [pcall]
     2243 CALL                             R21 1 2
     2244 JUMPIFNOT                        R21 ; [+2]
     2245 MOVE                             R19 R22
     2246 JUMP                             ; [+1]
     2247 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     2248 SETTABLEKS                       R19 R18 K23 ["date"]
     2250 MOVE                             R19 R12
     2251 LOADK                            R20 K191 ["Description.SocialLinksUpdated"]
     2252 DUPTABLE                         R21 K181 [{"channel"}]
     2253 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2255 JUMPIFNOT                        R24 ; [+5]
     2256 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2258 GETTABLEKS                       R23 R24 K182 ["Channel"]
     2260 JUMPIF                           R23 ; [+1]
     2261 LOADK                            R23 K44 [""]
     2262 LOADK                            R24 K44 [""]
     2263 FASTCALL1                        TOSTRING R23 ; [+3]
     2264 MOVE                             R26 R23
     2265 GETIMPORT                        R25 K4 [tostring]
     2267 CALL                             R25 1 1
     2268 LOADK                            R26 K44 [""]
     2269 CONCAT                           R22 R24 R26
     2270 SETTABLEKS                       R22 R21 K180 ["channel"]
     2272 CALL                             R19 2 1
     2273 SETTABLEKS                       R19 R18 K24 ["translation"]
     2275 GETTABLEKS                       R19 R2 K14 ["userId"]
     2277 SETTABLEKS                       R19 R18 K25 ["actorId"]
     2279 MOVE                             R19 R0
     2280 GETTABLEKS                       R20 R2 K14 ["userId"]
     2282 CALL                             R19 1 1
     2283 SETTABLEKS                       R19 R18 K26 ["actorName"]
     2285 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2287 SETTABLEKS                       R19 R18 K29 ["iconId"]
     2289 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2291 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2293 GETTABLEKS                       R19 R2 K30 ["headerText"]
     2295 SETTABLEKS                       R19 R18 K30 ["headerText"]
     2297 GETTABLEKS                       R19 R2 K31 ["footerText"]
     2299 SETTABLEKS                       R19 R18 K31 ["footerText"]
     2301 LOADK                            R20 K44 [""]
     2302 FASTCALL1                        TOSTRING R4 ; [+3]
     2303 MOVE                             R22 R4
     2304 GETIMPORT                        R21 K4 [tostring]
     2306 CALL                             R21 1 1
     2307 LOADK                            R22 K183 ["/social-links"]
     2308 CONCAT                           R19 R20 R22
     2309 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     2311 RETURN                           R18 1
     2312 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2314 JUMPIFNOTEQKN                    R18 K192 [27] ; [+94]
     2316 DUPTABLE                         R18 K194 [{["id"], ["eventType"] = "SpatialVoice", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     2317 GETTABLEKS                       R19 R2 K19 ["id"]
     2319 SETTABLEKS                       R19 R18 K19 ["id"]
     2321 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     2323 NEWCLOSURE                       R22 P6
     2324 CAPTURE                          VAL R20
     2325 CAPTURE                          VAL R3
     2326 FASTPCALL                        pcall 1 ; [+2]
     2327 GETIMPORT                        R21 K35 [pcall]
     2329 CALL                             R21 1 2
     2330 JUMPIFNOT                        R21 ; [+2]
     2331 MOVE                             R19 R22
     2332 JUMP                             ; [+1]
     2333 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     2334 SETTABLEKS                       R19 R18 K23 ["date"]
     2336 MOVE                             R19 R12
     2337 LOADK                            R20 K195 ["Description.SpatialVoice"]
     2338 DUPTABLE                         R21 K157 [{"action"}]
     2339 GETTABLEKS                       R26 R2 K42 ["metaData"]
     2341 JUMPIFNOT                        R26 ; [+5]
     2342 GETTABLEKS                       R26 R2 K42 ["metaData"]
     2344 GETTABLEKS                       R25 R26 K43 ["Action"]
     2346 JUMPIF                           R25 ; [+1]
     2347 LOADK                            R25 K44 [""]
     2348 GETIMPORT                        R26 K47 [string.lower]
     2350 FASTCALL1                        TOSTRING R25 ; [+3]
     2351 MOVE                             R28 R25
     2352 GETIMPORT                        R27 K4 [tostring]
     2354 CALL                             R27 1 1
     2355 CALL                             R26 1 1
     2356 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     2358 LOADB                            R24 1
     2359 JUMP                             ; [+1]
     2360 LOADB                            R24 0
     2361 JUMPIFNOT                        R24 ; [+4]
     2362 MOVE                             R23 R12
     2363 LOADK                            R24 K158 ["Description.ActionEnabled"]
     2364 CALL                             R23 1 1
     2365 JUMPIF                           R23 ; [+3]
     2366 MOVE                             R23 R12
     2367 LOADK                            R24 K159 ["Description.ActionDisabled"]
     2368 CALL                             R23 1 1
     2369 LOADK                            R24 K44 [""]
     2370 FASTCALL1                        TOSTRING R23 ; [+3]
     2371 MOVE                             R26 R23
     2372 GETIMPORT                        R25 K4 [tostring]
     2374 CALL                             R25 1 1
     2375 LOADK                            R26 K44 [""]
     2376 CONCAT                           R22 R24 R26
     2377 SETTABLEKS                       R22 R21 K156 ["action"]
     2379 CALL                             R19 2 1
     2380 SETTABLEKS                       R19 R18 K24 ["translation"]
     2382 GETTABLEKS                       R19 R2 K14 ["userId"]
     2384 SETTABLEKS                       R19 R18 K25 ["actorId"]
     2386 MOVE                             R19 R0
     2387 GETTABLEKS                       R20 R2 K14 ["userId"]
     2389 CALL                             R19 1 1
     2390 SETTABLEKS                       R19 R18 K26 ["actorName"]
     2392 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2394 SETTABLEKS                       R19 R18 K29 ["iconId"]
     2396 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2398 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2400 GETTABLEKS                       R19 R2 K30 ["headerText"]
     2402 SETTABLEKS                       R19 R18 K30 ["headerText"]
     2404 GETTABLEKS                       R19 R2 K31 ["footerText"]
     2406 SETTABLEKS                       R19 R18 K31 ["footerText"]
     2408 RETURN                           R18 1
     2409 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2411 JUMPIFNOTEQKN                    R18 K196 [28] ; [+73]
     2413 DUPTABLE                         R18 K198 [{["id"], ["eventType"] = "WorldSettingsWorkSpaceGravity", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     2414 GETTABLEKS                       R19 R2 K19 ["id"]
     2416 SETTABLEKS                       R19 R18 K19 ["id"]
     2418 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     2420 NEWCLOSURE                       R22 P6
     2421 CAPTURE                          VAL R20
     2422 CAPTURE                          VAL R3
     2423 FASTPCALL                        pcall 1 ; [+2]
     2424 GETIMPORT                        R21 K35 [pcall]
     2426 CALL                             R21 1 2
     2427 JUMPIFNOT                        R21 ; [+2]
     2428 MOVE                             R19 R22
     2429 JUMP                             ; [+1]
     2430 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     2431 SETTABLEKS                       R19 R18 K23 ["date"]
     2433 MOVE                             R19 R12
     2434 LOADK                            R20 K199 ["Description.WorldSettingsWorkSpaceGravity"]
     2435 DUPTABLE                         R21 K201 [{"gravity"}]
     2436 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2438 JUMPIFNOT                        R24 ; [+5]
     2439 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2441 GETTABLEKS                       R23 R24 K202 ["Gravity"]
     2443 JUMPIF                           R23 ; [+1]
     2444 LOADK                            R23 K44 [""]
     2445 LOADK                            R24 K44 [""]
     2446 FASTCALL1                        TOSTRING R23 ; [+3]
     2447 MOVE                             R26 R23
     2448 GETIMPORT                        R25 K4 [tostring]
     2450 CALL                             R25 1 1
     2451 LOADK                            R26 K44 [""]
     2452 CONCAT                           R22 R24 R26
     2453 SETTABLEKS                       R22 R21 K200 ["gravity"]
     2455 CALL                             R19 2 1
     2456 SETTABLEKS                       R19 R18 K24 ["translation"]
     2458 GETTABLEKS                       R19 R2 K14 ["userId"]
     2460 SETTABLEKS                       R19 R18 K25 ["actorId"]
     2462 MOVE                             R19 R0
     2463 GETTABLEKS                       R20 R2 K14 ["userId"]
     2465 CALL                             R19 1 1
     2466 SETTABLEKS                       R19 R18 K26 ["actorName"]
     2468 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2470 SETTABLEKS                       R19 R18 K29 ["iconId"]
     2472 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2474 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2476 GETTABLEKS                       R19 R2 K30 ["headerText"]
     2478 SETTABLEKS                       R19 R18 K30 ["headerText"]
     2480 GETTABLEKS                       R19 R2 K31 ["footerText"]
     2482 SETTABLEKS                       R19 R18 K31 ["footerText"]
     2484 RETURN                           R18 1
     2485 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2487 JUMPIFNOTEQKN                    R18 K203 [29] ; [+73]
     2489 DUPTABLE                         R18 K205 [{["id"], ["eventType"] = "WorldSettingsJumpHeight", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     2490 GETTABLEKS                       R19 R2 K19 ["id"]
     2492 SETTABLEKS                       R19 R18 K19 ["id"]
     2494 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     2496 NEWCLOSURE                       R22 P6
     2497 CAPTURE                          VAL R20
     2498 CAPTURE                          VAL R3
     2499 FASTPCALL                        pcall 1 ; [+2]
     2500 GETIMPORT                        R21 K35 [pcall]
     2502 CALL                             R21 1 2
     2503 JUMPIFNOT                        R21 ; [+2]
     2504 MOVE                             R19 R22
     2505 JUMP                             ; [+1]
     2506 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     2507 SETTABLEKS                       R19 R18 K23 ["date"]
     2509 MOVE                             R19 R12
     2510 LOADK                            R20 K206 ["Description.WorldSettingsJumpHeight"]
     2511 DUPTABLE                         R21 K208 [{"jumpHeight"}]
     2512 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2514 JUMPIFNOT                        R24 ; [+5]
     2515 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2517 GETTABLEKS                       R23 R24 K209 ["JumpHeight"]
     2519 JUMPIF                           R23 ; [+1]
     2520 LOADK                            R23 K44 [""]
     2521 LOADK                            R24 K44 [""]
     2522 FASTCALL1                        TOSTRING R23 ; [+3]
     2523 MOVE                             R26 R23
     2524 GETIMPORT                        R25 K4 [tostring]
     2526 CALL                             R25 1 1
     2527 LOADK                            R26 K44 [""]
     2528 CONCAT                           R22 R24 R26
     2529 SETTABLEKS                       R22 R21 K207 ["jumpHeight"]
     2531 CALL                             R19 2 1
     2532 SETTABLEKS                       R19 R18 K24 ["translation"]
     2534 GETTABLEKS                       R19 R2 K14 ["userId"]
     2536 SETTABLEKS                       R19 R18 K25 ["actorId"]
     2538 MOVE                             R19 R0
     2539 GETTABLEKS                       R20 R2 K14 ["userId"]
     2541 CALL                             R19 1 1
     2542 SETTABLEKS                       R19 R18 K26 ["actorName"]
     2544 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2546 SETTABLEKS                       R19 R18 K29 ["iconId"]
     2548 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2550 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2552 GETTABLEKS                       R19 R2 K30 ["headerText"]
     2554 SETTABLEKS                       R19 R18 K30 ["headerText"]
     2556 GETTABLEKS                       R19 R2 K31 ["footerText"]
     2558 SETTABLEKS                       R19 R18 K31 ["footerText"]
     2560 RETURN                           R18 1
     2561 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2563 JUMPIFNOTEQKN                    R18 K210 [30] ; [+73]
     2565 DUPTABLE                         R18 K212 [{["id"], ["eventType"] = "WorldSettingsJumpPower", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     2566 GETTABLEKS                       R19 R2 K19 ["id"]
     2568 SETTABLEKS                       R19 R18 K19 ["id"]
     2570 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     2572 NEWCLOSURE                       R22 P6
     2573 CAPTURE                          VAL R20
     2574 CAPTURE                          VAL R3
     2575 FASTPCALL                        pcall 1 ; [+2]
     2576 GETIMPORT                        R21 K35 [pcall]
     2578 CALL                             R21 1 2
     2579 JUMPIFNOT                        R21 ; [+2]
     2580 MOVE                             R19 R22
     2581 JUMP                             ; [+1]
     2582 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     2583 SETTABLEKS                       R19 R18 K23 ["date"]
     2585 MOVE                             R19 R12
     2586 LOADK                            R20 K213 ["Description.WorldSettingsJumpPower"]
     2587 DUPTABLE                         R21 K215 [{"jumpPower"}]
     2588 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2590 JUMPIFNOT                        R24 ; [+5]
     2591 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2593 GETTABLEKS                       R23 R24 K216 ["JumpPower"]
     2595 JUMPIF                           R23 ; [+1]
     2596 LOADK                            R23 K44 [""]
     2597 LOADK                            R24 K44 [""]
     2598 FASTCALL1                        TOSTRING R23 ; [+3]
     2599 MOVE                             R26 R23
     2600 GETIMPORT                        R25 K4 [tostring]
     2602 CALL                             R25 1 1
     2603 LOADK                            R26 K44 [""]
     2604 CONCAT                           R22 R24 R26
     2605 SETTABLEKS                       R22 R21 K214 ["jumpPower"]
     2607 CALL                             R19 2 1
     2608 SETTABLEKS                       R19 R18 K24 ["translation"]
     2610 GETTABLEKS                       R19 R2 K14 ["userId"]
     2612 SETTABLEKS                       R19 R18 K25 ["actorId"]
     2614 MOVE                             R19 R0
     2615 GETTABLEKS                       R20 R2 K14 ["userId"]
     2617 CALL                             R19 1 1
     2618 SETTABLEKS                       R19 R18 K26 ["actorName"]
     2620 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2622 SETTABLEKS                       R19 R18 K29 ["iconId"]
     2624 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2626 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2628 GETTABLEKS                       R19 R2 K30 ["headerText"]
     2630 SETTABLEKS                       R19 R18 K30 ["headerText"]
     2632 GETTABLEKS                       R19 R2 K31 ["footerText"]
     2634 SETTABLEKS                       R19 R18 K31 ["footerText"]
     2636 RETURN                           R18 1
     2637 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2639 JUMPIFNOTEQKN                    R18 K217 [31] ; [+73]
     2641 DUPTABLE                         R18 K219 [{["id"], ["eventType"] = "WorldSettingsWalkSpeed", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     2642 GETTABLEKS                       R19 R2 K19 ["id"]
     2644 SETTABLEKS                       R19 R18 K19 ["id"]
     2646 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     2648 NEWCLOSURE                       R22 P6
     2649 CAPTURE                          VAL R20
     2650 CAPTURE                          VAL R3
     2651 FASTPCALL                        pcall 1 ; [+2]
     2652 GETIMPORT                        R21 K35 [pcall]
     2654 CALL                             R21 1 2
     2655 JUMPIFNOT                        R21 ; [+2]
     2656 MOVE                             R19 R22
     2657 JUMP                             ; [+1]
     2658 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     2659 SETTABLEKS                       R19 R18 K23 ["date"]
     2661 MOVE                             R19 R12
     2662 LOADK                            R20 K220 ["Description.WorldSettingsWalkSpeed"]
     2663 DUPTABLE                         R21 K222 [{"walkSpeed"}]
     2664 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2666 JUMPIFNOT                        R24 ; [+5]
     2667 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2669 GETTABLEKS                       R23 R24 K223 ["WalkSpeed"]
     2671 JUMPIF                           R23 ; [+1]
     2672 LOADK                            R23 K44 [""]
     2673 LOADK                            R24 K44 [""]
     2674 FASTCALL1                        TOSTRING R23 ; [+3]
     2675 MOVE                             R26 R23
     2676 GETIMPORT                        R25 K4 [tostring]
     2678 CALL                             R25 1 1
     2679 LOADK                            R26 K44 [""]
     2680 CONCAT                           R22 R24 R26
     2681 SETTABLEKS                       R22 R21 K221 ["walkSpeed"]
     2683 CALL                             R19 2 1
     2684 SETTABLEKS                       R19 R18 K24 ["translation"]
     2686 GETTABLEKS                       R19 R2 K14 ["userId"]
     2688 SETTABLEKS                       R19 R18 K25 ["actorId"]
     2690 MOVE                             R19 R0
     2691 GETTABLEKS                       R20 R2 K14 ["userId"]
     2693 CALL                             R19 1 1
     2694 SETTABLEKS                       R19 R18 K26 ["actorName"]
     2696 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2698 SETTABLEKS                       R19 R18 K29 ["iconId"]
     2700 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2702 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2704 GETTABLEKS                       R19 R2 K30 ["headerText"]
     2706 SETTABLEKS                       R19 R18 K30 ["headerText"]
     2708 GETTABLEKS                       R19 R2 K31 ["footerText"]
     2710 SETTABLEKS                       R19 R18 K31 ["footerText"]
     2712 RETURN                           R18 1
     2713 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2715 JUMPIFNOTEQKN                    R18 K224 [32] ; [+73]
     2717 DUPTABLE                         R18 K226 [{["id"], ["eventType"] = "WorldSettingsMaxSlopeAngle", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     2718 GETTABLEKS                       R19 R2 K19 ["id"]
     2720 SETTABLEKS                       R19 R18 K19 ["id"]
     2722 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     2724 NEWCLOSURE                       R22 P6
     2725 CAPTURE                          VAL R20
     2726 CAPTURE                          VAL R3
     2727 FASTPCALL                        pcall 1 ; [+2]
     2728 GETIMPORT                        R21 K35 [pcall]
     2730 CALL                             R21 1 2
     2731 JUMPIFNOT                        R21 ; [+2]
     2732 MOVE                             R19 R22
     2733 JUMP                             ; [+1]
     2734 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     2735 SETTABLEKS                       R19 R18 K23 ["date"]
     2737 MOVE                             R19 R12
     2738 LOADK                            R20 K227 ["Description.WorldSettingsMaxSlopeAngle"]
     2739 DUPTABLE                         R21 K229 [{"maxSlopeAngle"}]
     2740 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2742 JUMPIFNOT                        R24 ; [+5]
     2743 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2745 GETTABLEKS                       R23 R24 K230 ["MaxSlopeAngle"]
     2747 JUMPIF                           R23 ; [+1]
     2748 LOADK                            R23 K44 [""]
     2749 LOADK                            R24 K44 [""]
     2750 FASTCALL1                        TOSTRING R23 ; [+3]
     2751 MOVE                             R26 R23
     2752 GETIMPORT                        R25 K4 [tostring]
     2754 CALL                             R25 1 1
     2755 LOADK                            R26 K44 [""]
     2756 CONCAT                           R22 R24 R26
     2757 SETTABLEKS                       R22 R21 K228 ["maxSlopeAngle"]
     2759 CALL                             R19 2 1
     2760 SETTABLEKS                       R19 R18 K24 ["translation"]
     2762 GETTABLEKS                       R19 R2 K14 ["userId"]
     2764 SETTABLEKS                       R19 R18 K25 ["actorId"]
     2766 MOVE                             R19 R0
     2767 GETTABLEKS                       R20 R2 K14 ["userId"]
     2769 CALL                             R19 1 1
     2770 SETTABLEKS                       R19 R18 K26 ["actorName"]
     2772 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2774 SETTABLEKS                       R19 R18 K29 ["iconId"]
     2776 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2778 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2780 GETTABLEKS                       R19 R2 K30 ["headerText"]
     2782 SETTABLEKS                       R19 R18 K30 ["headerText"]
     2784 GETTABLEKS                       R19 R2 K31 ["footerText"]
     2786 SETTABLEKS                       R19 R18 K31 ["footerText"]
     2788 RETURN                           R18 1
     2789 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2791 JUMPIFNOTEQKN                    R18 K231 [33] ; [+83]
     2793 DUPTABLE                         R18 K233 [{["id"], ["eventType"] = "SentUpdate", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     2794 GETTABLEKS                       R19 R2 K19 ["id"]
     2796 SETTABLEKS                       R19 R18 K19 ["id"]
     2798 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     2800 NEWCLOSURE                       R22 P6
     2801 CAPTURE                          VAL R20
     2802 CAPTURE                          VAL R3
     2803 FASTPCALL                        pcall 1 ; [+2]
     2804 GETIMPORT                        R21 K35 [pcall]
     2806 CALL                             R21 1 2
     2807 JUMPIFNOT                        R21 ; [+2]
     2808 MOVE                             R19 R22
     2809 JUMP                             ; [+1]
     2810 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     2811 SETTABLEKS                       R19 R18 K23 ["date"]
     2813 MOVE                             R19 R12
     2814 LOADK                            R20 K234 ["Description.SentUpdate"]
     2815 DUPTABLE                         R21 K236 [{"update"}]
     2816 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2818 JUMPIFNOT                        R24 ; [+5]
     2819 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2821 GETTABLEKS                       R23 R24 K237 ["Update"]
     2823 JUMPIF                           R23 ; [+1]
     2824 LOADK                            R23 K44 [""]
     2825 LOADK                            R24 K44 [""]
     2826 FASTCALL1                        TOSTRING R23 ; [+3]
     2827 MOVE                             R26 R23
     2828 GETIMPORT                        R25 K4 [tostring]
     2830 CALL                             R25 1 1
     2831 LOADK                            R26 K44 [""]
     2832 CONCAT                           R22 R24 R26
     2833 SETTABLEKS                       R22 R21 K235 ["update"]
     2835 CALL                             R19 2 1
     2836 SETTABLEKS                       R19 R18 K24 ["translation"]
     2838 GETTABLEKS                       R19 R2 K14 ["userId"]
     2840 SETTABLEKS                       R19 R18 K25 ["actorId"]
     2842 MOVE                             R19 R0
     2843 GETTABLEKS                       R20 R2 K14 ["userId"]
     2845 CALL                             R19 1 1
     2846 SETTABLEKS                       R19 R18 K26 ["actorName"]
     2848 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2850 SETTABLEKS                       R19 R18 K29 ["iconId"]
     2852 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2854 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2856 GETTABLEKS                       R19 R2 K30 ["headerText"]
     2858 SETTABLEKS                       R19 R18 K30 ["headerText"]
     2860 GETTABLEKS                       R19 R2 K31 ["footerText"]
     2862 SETTABLEKS                       R19 R18 K31 ["footerText"]
     2864 LOADK                            R20 K44 [""]
     2865 FASTCALL1                        TOSTRING R4 ; [+3]
     2866 MOVE                             R22 R4
     2867 GETIMPORT                        R21 K4 [tostring]
     2869 CALL                             R21 1 1
     2870 LOADK                            R22 K238 ["/updates"]
     2871 CONCAT                           R19 R20 R22
     2872 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     2874 RETURN                           R18 1
     2875 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2877 JUMPIFNOTEQKN                    R18 K239 [34] ; [+123]
     2879 DUPTABLE                         R18 K241 [{["id"], ["eventType"] = "SupportedLanguages", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     2880 GETTABLEKS                       R19 R2 K19 ["id"]
     2882 SETTABLEKS                       R19 R18 K19 ["id"]
     2884 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     2886 NEWCLOSURE                       R22 P6
     2887 CAPTURE                          VAL R20
     2888 CAPTURE                          VAL R3
     2889 FASTPCALL                        pcall 1 ; [+2]
     2890 GETIMPORT                        R21 K35 [pcall]
     2892 CALL                             R21 1 2
     2893 JUMPIFNOT                        R21 ; [+2]
     2894 MOVE                             R19 R22
     2895 JUMP                             ; [+1]
     2896 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     2897 SETTABLEKS                       R19 R18 K23 ["date"]
     2899 MOVE                             R19 R12
     2900 LOADK                            R20 K242 ["Description.SupportedLanguages"]
     2901 DUPTABLE                         R21 K244 [{"language", "action"}]
     2902 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2904 JUMPIFNOT                        R24 ; [+5]
     2905 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2907 GETTABLEKS                       R23 R24 K245 ["Language"]
     2909 JUMPIF                           R23 ; [+1]
     2910 LOADK                            R23 K44 [""]
     2911 LOADK                            R24 K44 [""]
     2912 FASTCALL1                        TOSTRING R23 ; [+3]
     2913 MOVE                             R26 R23
     2914 GETIMPORT                        R25 K4 [tostring]
     2916 CALL                             R25 1 1
     2917 LOADK                            R26 K44 [""]
     2918 CONCAT                           R22 R24 R26
     2919 SETTABLEKS                       R22 R21 K243 ["language"]
     2921 GETTABLEKS                       R26 R2 K42 ["metaData"]
     2923 JUMPIFNOT                        R26 ; [+5]
     2924 GETTABLEKS                       R26 R2 K42 ["metaData"]
     2926 GETTABLEKS                       R25 R26 K43 ["Action"]
     2928 JUMPIF                           R25 ; [+1]
     2929 LOADK                            R25 K44 [""]
     2930 GETIMPORT                        R26 K47 [string.lower]
     2932 FASTCALL1                        TOSTRING R25 ; [+3]
     2933 MOVE                             R28 R25
     2934 GETIMPORT                        R27 K4 [tostring]
     2936 CALL                             R27 1 1
     2937 CALL                             R26 1 1
     2938 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     2940 LOADB                            R24 1
     2941 JUMP                             ; [+1]
     2942 LOADB                            R24 0
     2943 JUMPIFNOT                        R24 ; [+4]
     2944 MOVE                             R23 R12
     2945 LOADK                            R24 K246 ["Description.ActionAdded"]
     2946 CALL                             R23 1 1
     2947 JUMPIF                           R23 ; [+3]
     2948 MOVE                             R23 R12
     2949 LOADK                            R24 K247 ["Description.ActionRemoved"]
     2950 CALL                             R23 1 1
     2951 LOADK                            R24 K44 [""]
     2952 FASTCALL1                        TOSTRING R23 ; [+3]
     2953 MOVE                             R26 R23
     2954 GETIMPORT                        R25 K4 [tostring]
     2956 CALL                             R25 1 1
     2957 LOADK                            R26 K44 [""]
     2958 CONCAT                           R22 R24 R26
     2959 SETTABLEKS                       R22 R21 K156 ["action"]
     2961 CALL                             R19 2 1
     2962 SETTABLEKS                       R19 R18 K24 ["translation"]
     2964 GETTABLEKS                       R19 R2 K14 ["userId"]
     2966 SETTABLEKS                       R19 R18 K25 ["actorId"]
     2968 MOVE                             R19 R0
     2969 GETTABLEKS                       R20 R2 K14 ["userId"]
     2971 CALL                             R19 1 1
     2972 SETTABLEKS                       R19 R18 K26 ["actorName"]
     2974 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2976 SETTABLEKS                       R19 R18 K29 ["iconId"]
     2978 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2980 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2982 GETTABLEKS                       R19 R2 K30 ["headerText"]
     2984 SETTABLEKS                       R19 R18 K30 ["headerText"]
     2986 GETTABLEKS                       R19 R2 K31 ["footerText"]
     2988 SETTABLEKS                       R19 R18 K31 ["footerText"]
     2990 LOADK                            R20 K44 [""]
     2991 FASTCALL1                        TOSTRING R4 ; [+3]
     2992 MOVE                             R22 R4
     2993 GETIMPORT                        R21 K4 [tostring]
     2995 CALL                             R21 1 1
     2996 LOADK                            R22 K248 ["/localization"]
     2997 CONCAT                           R19 R20 R22
     2998 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     3000 RETURN                           R18 1
     3001 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3003 JUMPIFNOTEQKN                    R18 K249 [35] ; [+123]
     3005 DUPTABLE                         R18 K251 [{["id"], ["eventType"] = "AutoTranslationExperienceInformation", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     3006 GETTABLEKS                       R19 R2 K19 ["id"]
     3008 SETTABLEKS                       R19 R18 K19 ["id"]
     3010 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     3012 NEWCLOSURE                       R22 P6
     3013 CAPTURE                          VAL R20
     3014 CAPTURE                          VAL R3
     3015 FASTPCALL                        pcall 1 ; [+2]
     3016 GETIMPORT                        R21 K35 [pcall]
     3018 CALL                             R21 1 2
     3019 JUMPIFNOT                        R21 ; [+2]
     3020 MOVE                             R19 R22
     3021 JUMP                             ; [+1]
     3022 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     3023 SETTABLEKS                       R19 R18 K23 ["date"]
     3025 MOVE                             R19 R12
     3026 LOADK                            R20 K252 ["Description.AutoTranslationExperienceInformation"]
     3027 DUPTABLE                         R21 K244 [{"language", "action"}]
     3028 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3030 JUMPIFNOT                        R24 ; [+5]
     3031 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3033 GETTABLEKS                       R23 R24 K245 ["Language"]
     3035 JUMPIF                           R23 ; [+1]
     3036 LOADK                            R23 K44 [""]
     3037 LOADK                            R24 K44 [""]
     3038 FASTCALL1                        TOSTRING R23 ; [+3]
     3039 MOVE                             R26 R23
     3040 GETIMPORT                        R25 K4 [tostring]
     3042 CALL                             R25 1 1
     3043 LOADK                            R26 K44 [""]
     3044 CONCAT                           R22 R24 R26
     3045 SETTABLEKS                       R22 R21 K243 ["language"]
     3047 GETTABLEKS                       R26 R2 K42 ["metaData"]
     3049 JUMPIFNOT                        R26 ; [+5]
     3050 GETTABLEKS                       R26 R2 K42 ["metaData"]
     3052 GETTABLEKS                       R25 R26 K43 ["Action"]
     3054 JUMPIF                           R25 ; [+1]
     3055 LOADK                            R25 K44 [""]
     3056 GETIMPORT                        R26 K47 [string.lower]
     3058 FASTCALL1                        TOSTRING R25 ; [+3]
     3059 MOVE                             R28 R25
     3060 GETIMPORT                        R27 K4 [tostring]
     3062 CALL                             R27 1 1
     3063 CALL                             R26 1 1
     3064 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     3066 LOADB                            R24 1
     3067 JUMP                             ; [+1]
     3068 LOADB                            R24 0
     3069 JUMPIFNOT                        R24 ; [+4]
     3070 MOVE                             R23 R12
     3071 LOADK                            R24 K158 ["Description.ActionEnabled"]
     3072 CALL                             R23 1 1
     3073 JUMPIF                           R23 ; [+3]
     3074 MOVE                             R23 R12
     3075 LOADK                            R24 K159 ["Description.ActionDisabled"]
     3076 CALL                             R23 1 1
     3077 LOADK                            R24 K44 [""]
     3078 FASTCALL1                        TOSTRING R23 ; [+3]
     3079 MOVE                             R26 R23
     3080 GETIMPORT                        R25 K4 [tostring]
     3082 CALL                             R25 1 1
     3083 LOADK                            R26 K44 [""]
     3084 CONCAT                           R22 R24 R26
     3085 SETTABLEKS                       R22 R21 K156 ["action"]
     3087 CALL                             R19 2 1
     3088 SETTABLEKS                       R19 R18 K24 ["translation"]
     3090 GETTABLEKS                       R19 R2 K14 ["userId"]
     3092 SETTABLEKS                       R19 R18 K25 ["actorId"]
     3094 MOVE                             R19 R0
     3095 GETTABLEKS                       R20 R2 K14 ["userId"]
     3097 CALL                             R19 1 1
     3098 SETTABLEKS                       R19 R18 K26 ["actorName"]
     3100 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3102 SETTABLEKS                       R19 R18 K29 ["iconId"]
     3104 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3106 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3108 GETTABLEKS                       R19 R2 K30 ["headerText"]
     3110 SETTABLEKS                       R19 R18 K30 ["headerText"]
     3112 GETTABLEKS                       R19 R2 K31 ["footerText"]
     3114 SETTABLEKS                       R19 R18 K31 ["footerText"]
     3116 LOADK                            R20 K44 [""]
     3117 FASTCALL1                        TOSTRING R4 ; [+3]
     3118 MOVE                             R22 R4
     3119 GETIMPORT                        R21 K4 [tostring]
     3121 CALL                             R21 1 1
     3122 LOADK                            R22 K248 ["/localization"]
     3123 CONCAT                           R19 R20 R22
     3124 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     3126 RETURN                           R18 1
     3127 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3129 JUMPIFNOTEQKN                    R18 K253 [36] ; [+123]
     3131 DUPTABLE                         R18 K255 [{["id"], ["eventType"] = "AutoTranslationExperienceStringsAndProducts", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     3132 GETTABLEKS                       R19 R2 K19 ["id"]
     3134 SETTABLEKS                       R19 R18 K19 ["id"]
     3136 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     3138 NEWCLOSURE                       R22 P6
     3139 CAPTURE                          VAL R20
     3140 CAPTURE                          VAL R3
     3141 FASTPCALL                        pcall 1 ; [+2]
     3142 GETIMPORT                        R21 K35 [pcall]
     3144 CALL                             R21 1 2
     3145 JUMPIFNOT                        R21 ; [+2]
     3146 MOVE                             R19 R22
     3147 JUMP                             ; [+1]
     3148 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     3149 SETTABLEKS                       R19 R18 K23 ["date"]
     3151 MOVE                             R19 R12
     3152 LOADK                            R20 K256 ["Description.AutoTranslationExperienceStringsAndProducts"]
     3153 DUPTABLE                         R21 K244 [{"language", "action"}]
     3154 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3156 JUMPIFNOT                        R24 ; [+5]
     3157 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3159 GETTABLEKS                       R23 R24 K245 ["Language"]
     3161 JUMPIF                           R23 ; [+1]
     3162 LOADK                            R23 K44 [""]
     3163 LOADK                            R24 K44 [""]
     3164 FASTCALL1                        TOSTRING R23 ; [+3]
     3165 MOVE                             R26 R23
     3166 GETIMPORT                        R25 K4 [tostring]
     3168 CALL                             R25 1 1
     3169 LOADK                            R26 K44 [""]
     3170 CONCAT                           R22 R24 R26
     3171 SETTABLEKS                       R22 R21 K243 ["language"]
     3173 GETTABLEKS                       R26 R2 K42 ["metaData"]
     3175 JUMPIFNOT                        R26 ; [+5]
     3176 GETTABLEKS                       R26 R2 K42 ["metaData"]
     3178 GETTABLEKS                       R25 R26 K43 ["Action"]
     3180 JUMPIF                           R25 ; [+1]
     3181 LOADK                            R25 K44 [""]
     3182 GETIMPORT                        R26 K47 [string.lower]
     3184 FASTCALL1                        TOSTRING R25 ; [+3]
     3185 MOVE                             R28 R25
     3186 GETIMPORT                        R27 K4 [tostring]
     3188 CALL                             R27 1 1
     3189 CALL                             R26 1 1
     3190 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     3192 LOADB                            R24 1
     3193 JUMP                             ; [+1]
     3194 LOADB                            R24 0
     3195 JUMPIFNOT                        R24 ; [+4]
     3196 MOVE                             R23 R12
     3197 LOADK                            R24 K158 ["Description.ActionEnabled"]
     3198 CALL                             R23 1 1
     3199 JUMPIF                           R23 ; [+3]
     3200 MOVE                             R23 R12
     3201 LOADK                            R24 K159 ["Description.ActionDisabled"]
     3202 CALL                             R23 1 1
     3203 LOADK                            R24 K44 [""]
     3204 FASTCALL1                        TOSTRING R23 ; [+3]
     3205 MOVE                             R26 R23
     3206 GETIMPORT                        R25 K4 [tostring]
     3208 CALL                             R25 1 1
     3209 LOADK                            R26 K44 [""]
     3210 CONCAT                           R22 R24 R26
     3211 SETTABLEKS                       R22 R21 K156 ["action"]
     3213 CALL                             R19 2 1
     3214 SETTABLEKS                       R19 R18 K24 ["translation"]
     3216 GETTABLEKS                       R19 R2 K14 ["userId"]
     3218 SETTABLEKS                       R19 R18 K25 ["actorId"]
     3220 MOVE                             R19 R0
     3221 GETTABLEKS                       R20 R2 K14 ["userId"]
     3223 CALL                             R19 1 1
     3224 SETTABLEKS                       R19 R18 K26 ["actorName"]
     3226 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3228 SETTABLEKS                       R19 R18 K29 ["iconId"]
     3230 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3232 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3234 GETTABLEKS                       R19 R2 K30 ["headerText"]
     3236 SETTABLEKS                       R19 R18 K30 ["headerText"]
     3238 GETTABLEKS                       R19 R2 K31 ["footerText"]
     3240 SETTABLEKS                       R19 R18 K31 ["footerText"]
     3242 LOADK                            R20 K44 [""]
     3243 FASTCALL1                        TOSTRING R4 ; [+3]
     3244 MOVE                             R22 R4
     3245 GETIMPORT                        R21 K4 [tostring]
     3247 CALL                             R21 1 1
     3248 LOADK                            R22 K248 ["/localization"]
     3249 CONCAT                           R19 R20 R22
     3250 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     3252 RETURN                           R18 1
     3253 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3255 JUMPIFNOTEQKN                    R18 K257 [37] ; [+104]
     3257 DUPTABLE                         R18 K259 [{["id"], ["eventType"] = "LocalizationSettingsAutomaticTextCapture", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     3258 GETTABLEKS                       R19 R2 K19 ["id"]
     3260 SETTABLEKS                       R19 R18 K19 ["id"]
     3262 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     3264 NEWCLOSURE                       R22 P6
     3265 CAPTURE                          VAL R20
     3266 CAPTURE                          VAL R3
     3267 FASTPCALL                        pcall 1 ; [+2]
     3268 GETIMPORT                        R21 K35 [pcall]
     3270 CALL                             R21 1 2
     3271 JUMPIFNOT                        R21 ; [+2]
     3272 MOVE                             R19 R22
     3273 JUMP                             ; [+1]
     3274 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     3275 SETTABLEKS                       R19 R18 K23 ["date"]
     3277 MOVE                             R19 R12
     3278 LOADK                            R20 K260 ["Description.LocalizationSettingsAutomaticTextCapture"]
     3279 DUPTABLE                         R21 K157 [{"action"}]
     3280 GETTABLEKS                       R26 R2 K42 ["metaData"]
     3282 JUMPIFNOT                        R26 ; [+5]
     3283 GETTABLEKS                       R26 R2 K42 ["metaData"]
     3285 GETTABLEKS                       R25 R26 K43 ["Action"]
     3287 JUMPIF                           R25 ; [+1]
     3288 LOADK                            R25 K44 [""]
     3289 GETIMPORT                        R26 K47 [string.lower]
     3291 FASTCALL1                        TOSTRING R25 ; [+3]
     3292 MOVE                             R28 R25
     3293 GETIMPORT                        R27 K4 [tostring]
     3295 CALL                             R27 1 1
     3296 CALL                             R26 1 1
     3297 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     3299 LOADB                            R24 1
     3300 JUMP                             ; [+1]
     3301 LOADB                            R24 0
     3302 JUMPIFNOT                        R24 ; [+4]
     3303 MOVE                             R23 R12
     3304 LOADK                            R24 K158 ["Description.ActionEnabled"]
     3305 CALL                             R23 1 1
     3306 JUMPIF                           R23 ; [+3]
     3307 MOVE                             R23 R12
     3308 LOADK                            R24 K159 ["Description.ActionDisabled"]
     3309 CALL                             R23 1 1
     3310 LOADK                            R24 K44 [""]
     3311 FASTCALL1                        TOSTRING R23 ; [+3]
     3312 MOVE                             R26 R23
     3313 GETIMPORT                        R25 K4 [tostring]
     3315 CALL                             R25 1 1
     3316 LOADK                            R26 K44 [""]
     3317 CONCAT                           R22 R24 R26
     3318 SETTABLEKS                       R22 R21 K156 ["action"]
     3320 CALL                             R19 2 1
     3321 SETTABLEKS                       R19 R18 K24 ["translation"]
     3323 GETTABLEKS                       R19 R2 K14 ["userId"]
     3325 SETTABLEKS                       R19 R18 K25 ["actorId"]
     3327 MOVE                             R19 R0
     3328 GETTABLEKS                       R20 R2 K14 ["userId"]
     3330 CALL                             R19 1 1
     3331 SETTABLEKS                       R19 R18 K26 ["actorName"]
     3333 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3335 SETTABLEKS                       R19 R18 K29 ["iconId"]
     3337 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3339 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3341 GETTABLEKS                       R19 R2 K30 ["headerText"]
     3343 SETTABLEKS                       R19 R18 K30 ["headerText"]
     3345 GETTABLEKS                       R19 R2 K31 ["footerText"]
     3347 SETTABLEKS                       R19 R18 K31 ["footerText"]
     3349 LOADK                            R20 K44 [""]
     3350 FASTCALL1                        TOSTRING R4 ; [+3]
     3351 MOVE                             R22 R4
     3352 GETIMPORT                        R21 K4 [tostring]
     3354 CALL                             R21 1 1
     3355 LOADK                            R22 K248 ["/localization"]
     3356 CONCAT                           R19 R20 R22
     3357 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     3359 RETURN                           R18 1
     3360 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3362 JUMPIFNOTEQKN                    R18 K261 [38] ; [+104]
     3364 DUPTABLE                         R18 K263 [{["id"], ["eventType"] = "LocalizationSettingsUserTranslatedContent", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     3365 GETTABLEKS                       R19 R2 K19 ["id"]
     3367 SETTABLEKS                       R19 R18 K19 ["id"]
     3369 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     3371 NEWCLOSURE                       R22 P6
     3372 CAPTURE                          VAL R20
     3373 CAPTURE                          VAL R3
     3374 FASTPCALL                        pcall 1 ; [+2]
     3375 GETIMPORT                        R21 K35 [pcall]
     3377 CALL                             R21 1 2
     3378 JUMPIFNOT                        R21 ; [+2]
     3379 MOVE                             R19 R22
     3380 JUMP                             ; [+1]
     3381 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     3382 SETTABLEKS                       R19 R18 K23 ["date"]
     3384 MOVE                             R19 R12
     3385 LOADK                            R20 K264 ["Description.LocalizationSettingsUserTranslatedContent"]
     3386 DUPTABLE                         R21 K157 [{"action"}]
     3387 GETTABLEKS                       R26 R2 K42 ["metaData"]
     3389 JUMPIFNOT                        R26 ; [+5]
     3390 GETTABLEKS                       R26 R2 K42 ["metaData"]
     3392 GETTABLEKS                       R25 R26 K43 ["Action"]
     3394 JUMPIF                           R25 ; [+1]
     3395 LOADK                            R25 K44 [""]
     3396 GETIMPORT                        R26 K47 [string.lower]
     3398 FASTCALL1                        TOSTRING R25 ; [+3]
     3399 MOVE                             R28 R25
     3400 GETIMPORT                        R27 K4 [tostring]
     3402 CALL                             R27 1 1
     3403 CALL                             R26 1 1
     3404 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     3406 LOADB                            R24 1
     3407 JUMP                             ; [+1]
     3408 LOADB                            R24 0
     3409 JUMPIFNOT                        R24 ; [+4]
     3410 MOVE                             R23 R12
     3411 LOADK                            R24 K158 ["Description.ActionEnabled"]
     3412 CALL                             R23 1 1
     3413 JUMPIF                           R23 ; [+3]
     3414 MOVE                             R23 R12
     3415 LOADK                            R24 K159 ["Description.ActionDisabled"]
     3416 CALL                             R23 1 1
     3417 LOADK                            R24 K44 [""]
     3418 FASTCALL1                        TOSTRING R23 ; [+3]
     3419 MOVE                             R26 R23
     3420 GETIMPORT                        R25 K4 [tostring]
     3422 CALL                             R25 1 1
     3423 LOADK                            R26 K44 [""]
     3424 CONCAT                           R22 R24 R26
     3425 SETTABLEKS                       R22 R21 K156 ["action"]
     3427 CALL                             R19 2 1
     3428 SETTABLEKS                       R19 R18 K24 ["translation"]
     3430 GETTABLEKS                       R19 R2 K14 ["userId"]
     3432 SETTABLEKS                       R19 R18 K25 ["actorId"]
     3434 MOVE                             R19 R0
     3435 GETTABLEKS                       R20 R2 K14 ["userId"]
     3437 CALL                             R19 1 1
     3438 SETTABLEKS                       R19 R18 K26 ["actorName"]
     3440 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3442 SETTABLEKS                       R19 R18 K29 ["iconId"]
     3444 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3446 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3448 GETTABLEKS                       R19 R2 K30 ["headerText"]
     3450 SETTABLEKS                       R19 R18 K30 ["headerText"]
     3452 GETTABLEKS                       R19 R2 K31 ["footerText"]
     3454 SETTABLEKS                       R19 R18 K31 ["footerText"]
     3456 LOADK                            R20 K44 [""]
     3457 FASTCALL1                        TOSTRING R4 ; [+3]
     3458 MOVE                             R22 R4
     3459 GETIMPORT                        R21 K4 [tostring]
     3461 CALL                             R21 1 1
     3462 LOADK                            R22 K248 ["/localization"]
     3463 CONCAT                           R19 R20 R22
     3464 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     3466 RETURN                           R18 1
     3467 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3469 JUMPIFNOTEQKN                    R18 K265 [39] ; [+48]
     3471 DUPTABLE                         R18 K267 [{["id"], ["eventType"] = "ClearUnmodifiedAutoCaptureEntries", ["eventCategory"] = "Unknown", ["date"], ["translation"] = "", ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     3472 GETTABLEKS                       R19 R2 K19 ["id"]
     3474 SETTABLEKS                       R19 R18 K19 ["id"]
     3476 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     3478 NEWCLOSURE                       R22 P6
     3479 CAPTURE                          VAL R20
     3480 CAPTURE                          VAL R3
     3481 FASTPCALL                        pcall 1 ; [+2]
     3482 GETIMPORT                        R21 K35 [pcall]
     3484 CALL                             R21 1 2
     3485 JUMPIFNOT                        R21 ; [+2]
     3486 MOVE                             R19 R22
     3487 JUMP                             ; [+1]
     3488 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     3489 SETTABLEKS                       R19 R18 K23 ["date"]
     3491 GETTABLEKS                       R19 R2 K14 ["userId"]
     3493 SETTABLEKS                       R19 R18 K25 ["actorId"]
     3495 MOVE                             R19 R0
     3496 GETTABLEKS                       R20 R2 K14 ["userId"]
     3498 CALL                             R19 1 1
     3499 SETTABLEKS                       R19 R18 K26 ["actorName"]
     3501 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3503 SETTABLEKS                       R19 R18 K29 ["iconId"]
     3505 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3507 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3509 GETTABLEKS                       R19 R2 K30 ["headerText"]
     3511 SETTABLEKS                       R19 R18 K30 ["headerText"]
     3513 GETTABLEKS                       R19 R2 K31 ["footerText"]
     3515 SETTABLEKS                       R19 R18 K31 ["footerText"]
     3517 RETURN                           R18 1
     3518 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3520 JUMPIFNOTEQKN                    R18 K268 [40] ; [+48]
     3522 DUPTABLE                         R18 K270 [{["id"], ["eventType"] = "AnalyticsReport", ["eventCategory"] = "Unknown", ["date"], ["translation"] = "", ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     3523 GETTABLEKS                       R19 R2 K19 ["id"]
     3525 SETTABLEKS                       R19 R18 K19 ["id"]
     3527 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     3529 NEWCLOSURE                       R22 P6
     3530 CAPTURE                          VAL R20
     3531 CAPTURE                          VAL R3
     3532 FASTPCALL                        pcall 1 ; [+2]
     3533 GETIMPORT                        R21 K35 [pcall]
     3535 CALL                             R21 1 2
     3536 JUMPIFNOT                        R21 ; [+2]
     3537 MOVE                             R19 R22
     3538 JUMP                             ; [+1]
     3539 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     3540 SETTABLEKS                       R19 R18 K23 ["date"]
     3542 GETTABLEKS                       R19 R2 K14 ["userId"]
     3544 SETTABLEKS                       R19 R18 K25 ["actorId"]
     3546 MOVE                             R19 R0
     3547 GETTABLEKS                       R20 R2 K14 ["userId"]
     3549 CALL                             R19 1 1
     3550 SETTABLEKS                       R19 R18 K26 ["actorName"]
     3552 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3554 SETTABLEKS                       R19 R18 K29 ["iconId"]
     3556 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3558 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3560 GETTABLEKS                       R19 R2 K30 ["headerText"]
     3562 SETTABLEKS                       R19 R18 K30 ["headerText"]
     3564 GETTABLEKS                       R19 R2 K31 ["footerText"]
     3566 SETTABLEKS                       R19 R18 K31 ["footerText"]
     3568 RETURN                           R18 1
     3569 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3571 JUMPIFNOTEQKN                    R18 K271 [41] ; [+119]
     3573 DUPTABLE                         R18 K274 [{["id"], ["eventType"] = "TranslationIconAdded", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     3574 GETTABLEKS                       R19 R2 K19 ["id"]
     3576 SETTABLEKS                       R19 R18 K19 ["id"]
     3578 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     3580 NEWCLOSURE                       R22 P6
     3581 CAPTURE                          VAL R20
     3582 CAPTURE                          VAL R3
     3583 FASTPCALL                        pcall 1 ; [+2]
     3584 GETIMPORT                        R21 K35 [pcall]
     3586 CALL                             R21 1 2
     3587 JUMPIFNOT                        R21 ; [+2]
     3588 MOVE                             R19 R22
     3589 JUMP                             ; [+1]
     3590 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     3591 SETTABLEKS                       R19 R18 K23 ["date"]
     3593 MOVE                             R19 R12
     3594 LOADK                            R20 K275 ["Description.TranslationIconAdded"]
     3595 DUPTABLE                         R21 K277 [{"language", "iconName"}]
     3596 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3598 JUMPIFNOT                        R24 ; [+5]
     3599 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3601 GETTABLEKS                       R23 R24 K245 ["Language"]
     3603 JUMPIF                           R23 ; [+1]
     3604 LOADK                            R23 K44 [""]
     3605 LOADK                            R24 K44 [""]
     3606 FASTCALL1                        TOSTRING R23 ; [+3]
     3607 MOVE                             R26 R23
     3608 GETIMPORT                        R25 K4 [tostring]
     3610 CALL                             R25 1 1
     3611 LOADK                            R26 K44 [""]
     3612 CONCAT                           R22 R24 R26
     3613 SETTABLEKS                       R22 R21 K243 ["language"]
     3615 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3617 JUMPIFNOT                        R24 ; [+5]
     3618 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3620 GETTABLEKS                       R23 R24 K278 ["IconName"]
     3622 JUMPIF                           R23 ; [+1]
     3623 LOADK                            R23 K44 [""]
     3624 LOADK                            R24 K44 [""]
     3625 FASTCALL1                        TOSTRING R23 ; [+3]
     3626 MOVE                             R26 R23
     3627 GETIMPORT                        R25 K4 [tostring]
     3629 CALL                             R25 1 1
     3630 LOADK                            R26 K44 [""]
     3631 CONCAT                           R22 R24 R26
     3632 SETTABLEKS                       R22 R21 K276 ["iconName"]
     3634 CALL                             R19 2 1
     3635 SETTABLEKS                       R19 R18 K24 ["translation"]
     3637 GETTABLEKS                       R19 R2 K14 ["userId"]
     3639 SETTABLEKS                       R19 R18 K25 ["actorId"]
     3641 MOVE                             R19 R0
     3642 GETTABLEKS                       R20 R2 K14 ["userId"]
     3644 CALL                             R19 1 1
     3645 SETTABLEKS                       R19 R18 K26 ["actorName"]
     3647 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3649 SETTABLEKS                       R19 R18 K29 ["iconId"]
     3651 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3653 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3655 GETTABLEKS                       R19 R2 K30 ["headerText"]
     3657 SETTABLEKS                       R19 R18 K30 ["headerText"]
     3659 GETTABLEKS                       R19 R2 K31 ["footerText"]
     3661 SETTABLEKS                       R19 R18 K31 ["footerText"]
     3663 LOADK                            R20 K44 [""]
     3664 FASTCALL1                        TOSTRING R4 ; [+3]
     3665 MOVE                             R22 R4
     3666 GETIMPORT                        R21 K4 [tostring]
     3668 CALL                             R21 1 1
     3669 LOADK                            R22 K279 ["/localization/translation"]
     3670 CONCAT                           R19 R20 R22
     3671 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     3673 LOADK                            R20 K44 [""]
     3674 GETUPVAL                         R22 1
     3675 FASTCALL1                        TOSTRING R22 ; [+2]
     3676 GETIMPORT                        R21 K4 [tostring]
     3678 CALL                             R21 1 1
     3679 LOADK                            R22 K280 ["catalog/"]
     3680 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     3682 FASTCALL1                        TOSTRING R24 ; [+2]
     3683 GETIMPORT                        R23 K4 [tostring]
     3685 CALL                             R23 1 1
     3686 LOADK                            R24 K44 [""]
     3687 CONCAT                           R19 R20 R24
     3688 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     3690 RETURN                           R18 1
     3691 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3693 JUMPIFNOTEQKN                    R18 K281 [42] ; [+119]
     3695 DUPTABLE                         R18 K283 [{["id"], ["eventType"] = "TranslationIconDeleted", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     3696 GETTABLEKS                       R19 R2 K19 ["id"]
     3698 SETTABLEKS                       R19 R18 K19 ["id"]
     3700 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     3702 NEWCLOSURE                       R22 P6
     3703 CAPTURE                          VAL R20
     3704 CAPTURE                          VAL R3
     3705 FASTPCALL                        pcall 1 ; [+2]
     3706 GETIMPORT                        R21 K35 [pcall]
     3708 CALL                             R21 1 2
     3709 JUMPIFNOT                        R21 ; [+2]
     3710 MOVE                             R19 R22
     3711 JUMP                             ; [+1]
     3712 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     3713 SETTABLEKS                       R19 R18 K23 ["date"]
     3715 MOVE                             R19 R12
     3716 LOADK                            R20 K284 ["Description.TranslationIconDeleted"]
     3717 DUPTABLE                         R21 K277 [{"language", "iconName"}]
     3718 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3720 JUMPIFNOT                        R24 ; [+5]
     3721 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3723 GETTABLEKS                       R23 R24 K245 ["Language"]
     3725 JUMPIF                           R23 ; [+1]
     3726 LOADK                            R23 K44 [""]
     3727 LOADK                            R24 K44 [""]
     3728 FASTCALL1                        TOSTRING R23 ; [+3]
     3729 MOVE                             R26 R23
     3730 GETIMPORT                        R25 K4 [tostring]
     3732 CALL                             R25 1 1
     3733 LOADK                            R26 K44 [""]
     3734 CONCAT                           R22 R24 R26
     3735 SETTABLEKS                       R22 R21 K243 ["language"]
     3737 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3739 JUMPIFNOT                        R24 ; [+5]
     3740 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3742 GETTABLEKS                       R23 R24 K278 ["IconName"]
     3744 JUMPIF                           R23 ; [+1]
     3745 LOADK                            R23 K44 [""]
     3746 LOADK                            R24 K44 [""]
     3747 FASTCALL1                        TOSTRING R23 ; [+3]
     3748 MOVE                             R26 R23
     3749 GETIMPORT                        R25 K4 [tostring]
     3751 CALL                             R25 1 1
     3752 LOADK                            R26 K44 [""]
     3753 CONCAT                           R22 R24 R26
     3754 SETTABLEKS                       R22 R21 K276 ["iconName"]
     3756 CALL                             R19 2 1
     3757 SETTABLEKS                       R19 R18 K24 ["translation"]
     3759 GETTABLEKS                       R19 R2 K14 ["userId"]
     3761 SETTABLEKS                       R19 R18 K25 ["actorId"]
     3763 MOVE                             R19 R0
     3764 GETTABLEKS                       R20 R2 K14 ["userId"]
     3766 CALL                             R19 1 1
     3767 SETTABLEKS                       R19 R18 K26 ["actorName"]
     3769 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3771 SETTABLEKS                       R19 R18 K29 ["iconId"]
     3773 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3775 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3777 GETTABLEKS                       R19 R2 K30 ["headerText"]
     3779 SETTABLEKS                       R19 R18 K30 ["headerText"]
     3781 GETTABLEKS                       R19 R2 K31 ["footerText"]
     3783 SETTABLEKS                       R19 R18 K31 ["footerText"]
     3785 LOADK                            R20 K44 [""]
     3786 FASTCALL1                        TOSTRING R4 ; [+3]
     3787 MOVE                             R22 R4
     3788 GETIMPORT                        R21 K4 [tostring]
     3790 CALL                             R21 1 1
     3791 LOADK                            R22 K279 ["/localization/translation"]
     3792 CONCAT                           R19 R20 R22
     3793 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     3795 LOADK                            R20 K44 [""]
     3796 GETUPVAL                         R22 1
     3797 FASTCALL1                        TOSTRING R22 ; [+2]
     3798 GETIMPORT                        R21 K4 [tostring]
     3800 CALL                             R21 1 1
     3801 LOADK                            R22 K280 ["catalog/"]
     3802 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     3804 FASTCALL1                        TOSTRING R24 ; [+2]
     3805 GETIMPORT                        R23 K4 [tostring]
     3807 CALL                             R23 1 1
     3808 LOADK                            R24 K44 [""]
     3809 CONCAT                           R19 R20 R24
     3810 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     3812 RETURN                           R18 1
     3813 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3815 JUMPIFNOTEQKN                    R18 K285 [43] ; [+83]
     3817 DUPTABLE                         R18 K287 [{["id"], ["eventType"] = "TranslationExperienceName", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     3818 GETTABLEKS                       R19 R2 K19 ["id"]
     3820 SETTABLEKS                       R19 R18 K19 ["id"]
     3822 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     3824 NEWCLOSURE                       R22 P6
     3825 CAPTURE                          VAL R20
     3826 CAPTURE                          VAL R3
     3827 FASTPCALL                        pcall 1 ; [+2]
     3828 GETIMPORT                        R21 K35 [pcall]
     3830 CALL                             R21 1 2
     3831 JUMPIFNOT                        R21 ; [+2]
     3832 MOVE                             R19 R22
     3833 JUMP                             ; [+1]
     3834 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     3835 SETTABLEKS                       R19 R18 K23 ["date"]
     3837 MOVE                             R19 R12
     3838 LOADK                            R20 K288 ["Description.TranslationExperienceName"]
     3839 DUPTABLE                         R21 K289 [{"language"}]
     3840 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3842 JUMPIFNOT                        R24 ; [+5]
     3843 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3845 GETTABLEKS                       R23 R24 K245 ["Language"]
     3847 JUMPIF                           R23 ; [+1]
     3848 LOADK                            R23 K44 [""]
     3849 LOADK                            R24 K44 [""]
     3850 FASTCALL1                        TOSTRING R23 ; [+3]
     3851 MOVE                             R26 R23
     3852 GETIMPORT                        R25 K4 [tostring]
     3854 CALL                             R25 1 1
     3855 LOADK                            R26 K44 [""]
     3856 CONCAT                           R22 R24 R26
     3857 SETTABLEKS                       R22 R21 K243 ["language"]
     3859 CALL                             R19 2 1
     3860 SETTABLEKS                       R19 R18 K24 ["translation"]
     3862 GETTABLEKS                       R19 R2 K14 ["userId"]
     3864 SETTABLEKS                       R19 R18 K25 ["actorId"]
     3866 MOVE                             R19 R0
     3867 GETTABLEKS                       R20 R2 K14 ["userId"]
     3869 CALL                             R19 1 1
     3870 SETTABLEKS                       R19 R18 K26 ["actorName"]
     3872 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3874 SETTABLEKS                       R19 R18 K29 ["iconId"]
     3876 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3878 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3880 GETTABLEKS                       R19 R2 K30 ["headerText"]
     3882 SETTABLEKS                       R19 R18 K30 ["headerText"]
     3884 GETTABLEKS                       R19 R2 K31 ["footerText"]
     3886 SETTABLEKS                       R19 R18 K31 ["footerText"]
     3888 LOADK                            R20 K44 [""]
     3889 FASTCALL1                        TOSTRING R4 ; [+3]
     3890 MOVE                             R22 R4
     3891 GETIMPORT                        R21 K4 [tostring]
     3893 CALL                             R21 1 1
     3894 LOADK                            R22 K279 ["/localization/translation"]
     3895 CONCAT                           R19 R20 R22
     3896 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     3898 RETURN                           R18 1
     3899 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3901 JUMPIFNOTEQKN                    R18 K290 [44] ; [+83]
     3903 DUPTABLE                         R18 K292 [{["id"], ["eventType"] = "TranslationExperienceDescription", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     3904 GETTABLEKS                       R19 R2 K19 ["id"]
     3906 SETTABLEKS                       R19 R18 K19 ["id"]
     3908 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     3910 NEWCLOSURE                       R22 P6
     3911 CAPTURE                          VAL R20
     3912 CAPTURE                          VAL R3
     3913 FASTPCALL                        pcall 1 ; [+2]
     3914 GETIMPORT                        R21 K35 [pcall]
     3916 CALL                             R21 1 2
     3917 JUMPIFNOT                        R21 ; [+2]
     3918 MOVE                             R19 R22
     3919 JUMP                             ; [+1]
     3920 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     3921 SETTABLEKS                       R19 R18 K23 ["date"]
     3923 MOVE                             R19 R12
     3924 LOADK                            R20 K293 ["Description.TranslationExperienceDescription"]
     3925 DUPTABLE                         R21 K289 [{"language"}]
     3926 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3928 JUMPIFNOT                        R24 ; [+5]
     3929 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3931 GETTABLEKS                       R23 R24 K245 ["Language"]
     3933 JUMPIF                           R23 ; [+1]
     3934 LOADK                            R23 K44 [""]
     3935 LOADK                            R24 K44 [""]
     3936 FASTCALL1                        TOSTRING R23 ; [+3]
     3937 MOVE                             R26 R23
     3938 GETIMPORT                        R25 K4 [tostring]
     3940 CALL                             R25 1 1
     3941 LOADK                            R26 K44 [""]
     3942 CONCAT                           R22 R24 R26
     3943 SETTABLEKS                       R22 R21 K243 ["language"]
     3945 CALL                             R19 2 1
     3946 SETTABLEKS                       R19 R18 K24 ["translation"]
     3948 GETTABLEKS                       R19 R2 K14 ["userId"]
     3950 SETTABLEKS                       R19 R18 K25 ["actorId"]
     3952 MOVE                             R19 R0
     3953 GETTABLEKS                       R20 R2 K14 ["userId"]
     3955 CALL                             R19 1 1
     3956 SETTABLEKS                       R19 R18 K26 ["actorName"]
     3958 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3960 SETTABLEKS                       R19 R18 K29 ["iconId"]
     3962 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3964 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3966 GETTABLEKS                       R19 R2 K30 ["headerText"]
     3968 SETTABLEKS                       R19 R18 K30 ["headerText"]
     3970 GETTABLEKS                       R19 R2 K31 ["footerText"]
     3972 SETTABLEKS                       R19 R18 K31 ["footerText"]
     3974 LOADK                            R20 K44 [""]
     3975 FASTCALL1                        TOSTRING R4 ; [+3]
     3976 MOVE                             R22 R4
     3977 GETIMPORT                        R21 K4 [tostring]
     3979 CALL                             R21 1 1
     3980 LOADK                            R22 K279 ["/localization/translation"]
     3981 CONCAT                           R19 R20 R22
     3982 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     3984 RETURN                           R18 1
     3985 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3987 JUMPIFNOTEQKN                    R18 K294 [45] ; [+102]
     3989 DUPTABLE                         R18 K296 [{["id"], ["eventType"] = "TranslationThumbnailAltText", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     3990 GETTABLEKS                       R19 R2 K19 ["id"]
     3992 SETTABLEKS                       R19 R18 K19 ["id"]
     3994 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     3996 NEWCLOSURE                       R22 P6
     3997 CAPTURE                          VAL R20
     3998 CAPTURE                          VAL R3
     3999 FASTPCALL                        pcall 1 ; [+2]
     4000 GETIMPORT                        R21 K35 [pcall]
     4002 CALL                             R21 1 2
     4003 JUMPIFNOT                        R21 ; [+2]
     4004 MOVE                             R19 R22
     4005 JUMP                             ; [+1]
     4006 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     4007 SETTABLEKS                       R19 R18 K23 ["date"]
     4009 MOVE                             R19 R12
     4010 LOADK                            R20 K297 ["Description.TranslationThumbnailAltText"]
     4011 DUPTABLE                         R21 K299 [{"language", "thumbnailName"}]
     4012 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4014 JUMPIFNOT                        R24 ; [+5]
     4015 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4017 GETTABLEKS                       R23 R24 K245 ["Language"]
     4019 JUMPIF                           R23 ; [+1]
     4020 LOADK                            R23 K44 [""]
     4021 LOADK                            R24 K44 [""]
     4022 FASTCALL1                        TOSTRING R23 ; [+3]
     4023 MOVE                             R26 R23
     4024 GETIMPORT                        R25 K4 [tostring]
     4026 CALL                             R25 1 1
     4027 LOADK                            R26 K44 [""]
     4028 CONCAT                           R22 R24 R26
     4029 SETTABLEKS                       R22 R21 K243 ["language"]
     4031 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4033 JUMPIFNOT                        R24 ; [+5]
     4034 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4036 GETTABLEKS                       R23 R24 K300 ["ThumbnailName"]
     4038 JUMPIF                           R23 ; [+1]
     4039 LOADK                            R23 K44 [""]
     4040 LOADK                            R24 K44 [""]
     4041 FASTCALL1                        TOSTRING R23 ; [+3]
     4042 MOVE                             R26 R23
     4043 GETIMPORT                        R25 K4 [tostring]
     4045 CALL                             R25 1 1
     4046 LOADK                            R26 K44 [""]
     4047 CONCAT                           R22 R24 R26
     4048 SETTABLEKS                       R22 R21 K298 ["thumbnailName"]
     4050 CALL                             R19 2 1
     4051 SETTABLEKS                       R19 R18 K24 ["translation"]
     4053 GETTABLEKS                       R19 R2 K14 ["userId"]
     4055 SETTABLEKS                       R19 R18 K25 ["actorId"]
     4057 MOVE                             R19 R0
     4058 GETTABLEKS                       R20 R2 K14 ["userId"]
     4060 CALL                             R19 1 1
     4061 SETTABLEKS                       R19 R18 K26 ["actorName"]
     4063 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4065 SETTABLEKS                       R19 R18 K29 ["iconId"]
     4067 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4069 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4071 GETTABLEKS                       R19 R2 K30 ["headerText"]
     4073 SETTABLEKS                       R19 R18 K30 ["headerText"]
     4075 GETTABLEKS                       R19 R2 K31 ["footerText"]
     4077 SETTABLEKS                       R19 R18 K31 ["footerText"]
     4079 LOADK                            R20 K44 [""]
     4080 FASTCALL1                        TOSTRING R4 ; [+3]
     4081 MOVE                             R22 R4
     4082 GETIMPORT                        R21 K4 [tostring]
     4084 CALL                             R21 1 1
     4085 LOADK                            R22 K279 ["/localization/translation"]
     4086 CONCAT                           R19 R20 R22
     4087 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     4089 RETURN                           R18 1
     4090 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4092 JUMPIFNOTEQKN                    R18 K301 [46] ; [+102]
     4094 DUPTABLE                         R18 K303 [{["id"], ["eventType"] = "TranslationThumbnailAdded", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     4095 GETTABLEKS                       R19 R2 K19 ["id"]
     4097 SETTABLEKS                       R19 R18 K19 ["id"]
     4099 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     4101 NEWCLOSURE                       R22 P6
     4102 CAPTURE                          VAL R20
     4103 CAPTURE                          VAL R3
     4104 FASTPCALL                        pcall 1 ; [+2]
     4105 GETIMPORT                        R21 K35 [pcall]
     4107 CALL                             R21 1 2
     4108 JUMPIFNOT                        R21 ; [+2]
     4109 MOVE                             R19 R22
     4110 JUMP                             ; [+1]
     4111 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     4112 SETTABLEKS                       R19 R18 K23 ["date"]
     4114 MOVE                             R19 R12
     4115 LOADK                            R20 K304 ["Description.TranslationThumbnailAdded"]
     4116 DUPTABLE                         R21 K299 [{"language", "thumbnailName"}]
     4117 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4119 JUMPIFNOT                        R24 ; [+5]
     4120 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4122 GETTABLEKS                       R23 R24 K245 ["Language"]
     4124 JUMPIF                           R23 ; [+1]
     4125 LOADK                            R23 K44 [""]
     4126 LOADK                            R24 K44 [""]
     4127 FASTCALL1                        TOSTRING R23 ; [+3]
     4128 MOVE                             R26 R23
     4129 GETIMPORT                        R25 K4 [tostring]
     4131 CALL                             R25 1 1
     4132 LOADK                            R26 K44 [""]
     4133 CONCAT                           R22 R24 R26
     4134 SETTABLEKS                       R22 R21 K243 ["language"]
     4136 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4138 JUMPIFNOT                        R24 ; [+5]
     4139 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4141 GETTABLEKS                       R23 R24 K300 ["ThumbnailName"]
     4143 JUMPIF                           R23 ; [+1]
     4144 LOADK                            R23 K44 [""]
     4145 LOADK                            R24 K44 [""]
     4146 FASTCALL1                        TOSTRING R23 ; [+3]
     4147 MOVE                             R26 R23
     4148 GETIMPORT                        R25 K4 [tostring]
     4150 CALL                             R25 1 1
     4151 LOADK                            R26 K44 [""]
     4152 CONCAT                           R22 R24 R26
     4153 SETTABLEKS                       R22 R21 K298 ["thumbnailName"]
     4155 CALL                             R19 2 1
     4156 SETTABLEKS                       R19 R18 K24 ["translation"]
     4158 GETTABLEKS                       R19 R2 K14 ["userId"]
     4160 SETTABLEKS                       R19 R18 K25 ["actorId"]
     4162 MOVE                             R19 R0
     4163 GETTABLEKS                       R20 R2 K14 ["userId"]
     4165 CALL                             R19 1 1
     4166 SETTABLEKS                       R19 R18 K26 ["actorName"]
     4168 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4170 SETTABLEKS                       R19 R18 K29 ["iconId"]
     4172 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4174 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4176 GETTABLEKS                       R19 R2 K30 ["headerText"]
     4178 SETTABLEKS                       R19 R18 K30 ["headerText"]
     4180 GETTABLEKS                       R19 R2 K31 ["footerText"]
     4182 SETTABLEKS                       R19 R18 K31 ["footerText"]
     4184 LOADK                            R20 K44 [""]
     4185 FASTCALL1                        TOSTRING R4 ; [+3]
     4186 MOVE                             R22 R4
     4187 GETIMPORT                        R21 K4 [tostring]
     4189 CALL                             R21 1 1
     4190 LOADK                            R22 K279 ["/localization/translation"]
     4191 CONCAT                           R19 R20 R22
     4192 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     4194 RETURN                           R18 1
     4195 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4197 JUMPIFNOTEQKN                    R18 K305 [47] ; [+102]
     4199 DUPTABLE                         R18 K307 [{["id"], ["eventType"] = "TranslationThumbnailDeleted", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     4200 GETTABLEKS                       R19 R2 K19 ["id"]
     4202 SETTABLEKS                       R19 R18 K19 ["id"]
     4204 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     4206 NEWCLOSURE                       R22 P6
     4207 CAPTURE                          VAL R20
     4208 CAPTURE                          VAL R3
     4209 FASTPCALL                        pcall 1 ; [+2]
     4210 GETIMPORT                        R21 K35 [pcall]
     4212 CALL                             R21 1 2
     4213 JUMPIFNOT                        R21 ; [+2]
     4214 MOVE                             R19 R22
     4215 JUMP                             ; [+1]
     4216 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     4217 SETTABLEKS                       R19 R18 K23 ["date"]
     4219 MOVE                             R19 R12
     4220 LOADK                            R20 K308 ["Description.TranslationThumbnailDeleted"]
     4221 DUPTABLE                         R21 K299 [{"language", "thumbnailName"}]
     4222 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4224 JUMPIFNOT                        R24 ; [+5]
     4225 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4227 GETTABLEKS                       R23 R24 K245 ["Language"]
     4229 JUMPIF                           R23 ; [+1]
     4230 LOADK                            R23 K44 [""]
     4231 LOADK                            R24 K44 [""]
     4232 FASTCALL1                        TOSTRING R23 ; [+3]
     4233 MOVE                             R26 R23
     4234 GETIMPORT                        R25 K4 [tostring]
     4236 CALL                             R25 1 1
     4237 LOADK                            R26 K44 [""]
     4238 CONCAT                           R22 R24 R26
     4239 SETTABLEKS                       R22 R21 K243 ["language"]
     4241 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4243 JUMPIFNOT                        R24 ; [+5]
     4244 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4246 GETTABLEKS                       R23 R24 K300 ["ThumbnailName"]
     4248 JUMPIF                           R23 ; [+1]
     4249 LOADK                            R23 K44 [""]
     4250 LOADK                            R24 K44 [""]
     4251 FASTCALL1                        TOSTRING R23 ; [+3]
     4252 MOVE                             R26 R23
     4253 GETIMPORT                        R25 K4 [tostring]
     4255 CALL                             R25 1 1
     4256 LOADK                            R26 K44 [""]
     4257 CONCAT                           R22 R24 R26
     4258 SETTABLEKS                       R22 R21 K298 ["thumbnailName"]
     4260 CALL                             R19 2 1
     4261 SETTABLEKS                       R19 R18 K24 ["translation"]
     4263 GETTABLEKS                       R19 R2 K14 ["userId"]
     4265 SETTABLEKS                       R19 R18 K25 ["actorId"]
     4267 MOVE                             R19 R0
     4268 GETTABLEKS                       R20 R2 K14 ["userId"]
     4270 CALL                             R19 1 1
     4271 SETTABLEKS                       R19 R18 K26 ["actorName"]
     4273 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4275 SETTABLEKS                       R19 R18 K29 ["iconId"]
     4277 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4279 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4281 GETTABLEKS                       R19 R2 K30 ["headerText"]
     4283 SETTABLEKS                       R19 R18 K30 ["headerText"]
     4285 GETTABLEKS                       R19 R2 K31 ["footerText"]
     4287 SETTABLEKS                       R19 R18 K31 ["footerText"]
     4289 LOADK                            R20 K44 [""]
     4290 FASTCALL1                        TOSTRING R4 ; [+3]
     4291 MOVE                             R22 R4
     4292 GETIMPORT                        R21 K4 [tostring]
     4294 CALL                             R21 1 1
     4295 LOADK                            R22 K279 ["/localization/translation"]
     4296 CONCAT                           R19 R20 R22
     4297 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     4299 RETURN                           R18 1
     4300 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4302 JUMPIFNOTEQKN                    R18 K309 [48] ; [+48]
     4304 DUPTABLE                         R18 K311 [{["id"], ["eventType"] = "TranslationThumbnailOrder", ["eventCategory"] = "Unknown", ["date"], ["translation"] = "", ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     4305 GETTABLEKS                       R19 R2 K19 ["id"]
     4307 SETTABLEKS                       R19 R18 K19 ["id"]
     4309 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     4311 NEWCLOSURE                       R22 P6
     4312 CAPTURE                          VAL R20
     4313 CAPTURE                          VAL R3
     4314 FASTPCALL                        pcall 1 ; [+2]
     4315 GETIMPORT                        R21 K35 [pcall]
     4317 CALL                             R21 1 2
     4318 JUMPIFNOT                        R21 ; [+2]
     4319 MOVE                             R19 R22
     4320 JUMP                             ; [+1]
     4321 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     4322 SETTABLEKS                       R19 R18 K23 ["date"]
     4324 GETTABLEKS                       R19 R2 K14 ["userId"]
     4326 SETTABLEKS                       R19 R18 K25 ["actorId"]
     4328 MOVE                             R19 R0
     4329 GETTABLEKS                       R20 R2 K14 ["userId"]
     4331 CALL                             R19 1 1
     4332 SETTABLEKS                       R19 R18 K26 ["actorName"]
     4334 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4336 SETTABLEKS                       R19 R18 K29 ["iconId"]
     4338 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4340 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4342 GETTABLEKS                       R19 R2 K30 ["headerText"]
     4344 SETTABLEKS                       R19 R18 K30 ["headerText"]
     4346 GETTABLEKS                       R19 R2 K31 ["footerText"]
     4348 SETTABLEKS                       R19 R18 K31 ["footerText"]
     4350 RETURN                           R18 1
     4351 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4353 JUMPIFNOTEQKN                    R18 K312 [49] ; [+102]
     4355 DUPTABLE                         R18 K314 [{["id"], ["eventType"] = "TranslationStringAdded", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     4356 GETTABLEKS                       R19 R2 K19 ["id"]
     4358 SETTABLEKS                       R19 R18 K19 ["id"]
     4360 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     4362 NEWCLOSURE                       R22 P6
     4363 CAPTURE                          VAL R20
     4364 CAPTURE                          VAL R3
     4365 FASTPCALL                        pcall 1 ; [+2]
     4366 GETIMPORT                        R21 K35 [pcall]
     4368 CALL                             R21 1 2
     4369 JUMPIFNOT                        R21 ; [+2]
     4370 MOVE                             R19 R22
     4371 JUMP                             ; [+1]
     4372 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     4373 SETTABLEKS                       R19 R18 K23 ["date"]
     4375 MOVE                             R19 R12
     4376 LOADK                            R20 K315 ["Description.TranslationStringAdded"]
     4377 DUPTABLE                         R21 K317 [{"stringKey", "language"}]
     4378 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4380 JUMPIFNOT                        R24 ; [+5]
     4381 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4383 GETTABLEKS                       R23 R24 K318 ["StringKey"]
     4385 JUMPIF                           R23 ; [+1]
     4386 LOADK                            R23 K44 [""]
     4387 LOADK                            R24 K44 [""]
     4388 FASTCALL1                        TOSTRING R23 ; [+3]
     4389 MOVE                             R26 R23
     4390 GETIMPORT                        R25 K4 [tostring]
     4392 CALL                             R25 1 1
     4393 LOADK                            R26 K44 [""]
     4394 CONCAT                           R22 R24 R26
     4395 SETTABLEKS                       R22 R21 K316 ["stringKey"]
     4397 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4399 JUMPIFNOT                        R24 ; [+5]
     4400 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4402 GETTABLEKS                       R23 R24 K245 ["Language"]
     4404 JUMPIF                           R23 ; [+1]
     4405 LOADK                            R23 K44 [""]
     4406 LOADK                            R24 K44 [""]
     4407 FASTCALL1                        TOSTRING R23 ; [+3]
     4408 MOVE                             R26 R23
     4409 GETIMPORT                        R25 K4 [tostring]
     4411 CALL                             R25 1 1
     4412 LOADK                            R26 K44 [""]
     4413 CONCAT                           R22 R24 R26
     4414 SETTABLEKS                       R22 R21 K243 ["language"]
     4416 CALL                             R19 2 1
     4417 SETTABLEKS                       R19 R18 K24 ["translation"]
     4419 GETTABLEKS                       R19 R2 K14 ["userId"]
     4421 SETTABLEKS                       R19 R18 K25 ["actorId"]
     4423 MOVE                             R19 R0
     4424 GETTABLEKS                       R20 R2 K14 ["userId"]
     4426 CALL                             R19 1 1
     4427 SETTABLEKS                       R19 R18 K26 ["actorName"]
     4429 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4431 SETTABLEKS                       R19 R18 K29 ["iconId"]
     4433 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4435 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4437 GETTABLEKS                       R19 R2 K30 ["headerText"]
     4439 SETTABLEKS                       R19 R18 K30 ["headerText"]
     4441 GETTABLEKS                       R19 R2 K31 ["footerText"]
     4443 SETTABLEKS                       R19 R18 K31 ["footerText"]
     4445 LOADK                            R20 K44 [""]
     4446 FASTCALL1                        TOSTRING R4 ; [+3]
     4447 MOVE                             R22 R4
     4448 GETIMPORT                        R21 K4 [tostring]
     4450 CALL                             R21 1 1
     4451 LOADK                            R22 K279 ["/localization/translation"]
     4452 CONCAT                           R19 R20 R22
     4453 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     4455 RETURN                           R18 1
     4456 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4458 JUMPIFNOTEQKN                    R18 K319 [50] ; [+102]
     4460 DUPTABLE                         R18 K321 [{["id"], ["eventType"] = "TranslationStringDeleted", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     4461 GETTABLEKS                       R19 R2 K19 ["id"]
     4463 SETTABLEKS                       R19 R18 K19 ["id"]
     4465 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     4467 NEWCLOSURE                       R22 P6
     4468 CAPTURE                          VAL R20
     4469 CAPTURE                          VAL R3
     4470 FASTPCALL                        pcall 1 ; [+2]
     4471 GETIMPORT                        R21 K35 [pcall]
     4473 CALL                             R21 1 2
     4474 JUMPIFNOT                        R21 ; [+2]
     4475 MOVE                             R19 R22
     4476 JUMP                             ; [+1]
     4477 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     4478 SETTABLEKS                       R19 R18 K23 ["date"]
     4480 MOVE                             R19 R12
     4481 LOADK                            R20 K322 ["Description.TranslationStringDeleted"]
     4482 DUPTABLE                         R21 K317 [{"stringKey", "language"}]
     4483 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4485 JUMPIFNOT                        R24 ; [+5]
     4486 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4488 GETTABLEKS                       R23 R24 K318 ["StringKey"]
     4490 JUMPIF                           R23 ; [+1]
     4491 LOADK                            R23 K44 [""]
     4492 LOADK                            R24 K44 [""]
     4493 FASTCALL1                        TOSTRING R23 ; [+3]
     4494 MOVE                             R26 R23
     4495 GETIMPORT                        R25 K4 [tostring]
     4497 CALL                             R25 1 1
     4498 LOADK                            R26 K44 [""]
     4499 CONCAT                           R22 R24 R26
     4500 SETTABLEKS                       R22 R21 K316 ["stringKey"]
     4502 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4504 JUMPIFNOT                        R24 ; [+5]
     4505 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4507 GETTABLEKS                       R23 R24 K245 ["Language"]
     4509 JUMPIF                           R23 ; [+1]
     4510 LOADK                            R23 K44 [""]
     4511 LOADK                            R24 K44 [""]
     4512 FASTCALL1                        TOSTRING R23 ; [+3]
     4513 MOVE                             R26 R23
     4514 GETIMPORT                        R25 K4 [tostring]
     4516 CALL                             R25 1 1
     4517 LOADK                            R26 K44 [""]
     4518 CONCAT                           R22 R24 R26
     4519 SETTABLEKS                       R22 R21 K243 ["language"]
     4521 CALL                             R19 2 1
     4522 SETTABLEKS                       R19 R18 K24 ["translation"]
     4524 GETTABLEKS                       R19 R2 K14 ["userId"]
     4526 SETTABLEKS                       R19 R18 K25 ["actorId"]
     4528 MOVE                             R19 R0
     4529 GETTABLEKS                       R20 R2 K14 ["userId"]
     4531 CALL                             R19 1 1
     4532 SETTABLEKS                       R19 R18 K26 ["actorName"]
     4534 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4536 SETTABLEKS                       R19 R18 K29 ["iconId"]
     4538 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4540 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4542 GETTABLEKS                       R19 R2 K30 ["headerText"]
     4544 SETTABLEKS                       R19 R18 K30 ["headerText"]
     4546 GETTABLEKS                       R19 R2 K31 ["footerText"]
     4548 SETTABLEKS                       R19 R18 K31 ["footerText"]
     4550 LOADK                            R20 K44 [""]
     4551 FASTCALL1                        TOSTRING R4 ; [+3]
     4552 MOVE                             R22 R4
     4553 GETIMPORT                        R21 K4 [tostring]
     4555 CALL                             R21 1 1
     4556 LOADK                            R22 K279 ["/localization/translation"]
     4557 CONCAT                           R19 R20 R22
     4558 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     4560 RETURN                           R18 1
     4561 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4563 JUMPIFNOTEQKN                    R18 K323 [51] ; [+102]
     4565 DUPTABLE                         R18 K325 [{["id"], ["eventType"] = "TranslationStringUpdated", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     4566 GETTABLEKS                       R19 R2 K19 ["id"]
     4568 SETTABLEKS                       R19 R18 K19 ["id"]
     4570 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     4572 NEWCLOSURE                       R22 P6
     4573 CAPTURE                          VAL R20
     4574 CAPTURE                          VAL R3
     4575 FASTPCALL                        pcall 1 ; [+2]
     4576 GETIMPORT                        R21 K35 [pcall]
     4578 CALL                             R21 1 2
     4579 JUMPIFNOT                        R21 ; [+2]
     4580 MOVE                             R19 R22
     4581 JUMP                             ; [+1]
     4582 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     4583 SETTABLEKS                       R19 R18 K23 ["date"]
     4585 MOVE                             R19 R12
     4586 LOADK                            R20 K326 ["Description.TranslationStringUpdated"]
     4587 DUPTABLE                         R21 K317 [{"stringKey", "language"}]
     4588 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4590 JUMPIFNOT                        R24 ; [+5]
     4591 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4593 GETTABLEKS                       R23 R24 K318 ["StringKey"]
     4595 JUMPIF                           R23 ; [+1]
     4596 LOADK                            R23 K44 [""]
     4597 LOADK                            R24 K44 [""]
     4598 FASTCALL1                        TOSTRING R23 ; [+3]
     4599 MOVE                             R26 R23
     4600 GETIMPORT                        R25 K4 [tostring]
     4602 CALL                             R25 1 1
     4603 LOADK                            R26 K44 [""]
     4604 CONCAT                           R22 R24 R26
     4605 SETTABLEKS                       R22 R21 K316 ["stringKey"]
     4607 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4609 JUMPIFNOT                        R24 ; [+5]
     4610 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4612 GETTABLEKS                       R23 R24 K245 ["Language"]
     4614 JUMPIF                           R23 ; [+1]
     4615 LOADK                            R23 K44 [""]
     4616 LOADK                            R24 K44 [""]
     4617 FASTCALL1                        TOSTRING R23 ; [+3]
     4618 MOVE                             R26 R23
     4619 GETIMPORT                        R25 K4 [tostring]
     4621 CALL                             R25 1 1
     4622 LOADK                            R26 K44 [""]
     4623 CONCAT                           R22 R24 R26
     4624 SETTABLEKS                       R22 R21 K243 ["language"]
     4626 CALL                             R19 2 1
     4627 SETTABLEKS                       R19 R18 K24 ["translation"]
     4629 GETTABLEKS                       R19 R2 K14 ["userId"]
     4631 SETTABLEKS                       R19 R18 K25 ["actorId"]
     4633 MOVE                             R19 R0
     4634 GETTABLEKS                       R20 R2 K14 ["userId"]
     4636 CALL                             R19 1 1
     4637 SETTABLEKS                       R19 R18 K26 ["actorName"]
     4639 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4641 SETTABLEKS                       R19 R18 K29 ["iconId"]
     4643 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4645 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4647 GETTABLEKS                       R19 R2 K30 ["headerText"]
     4649 SETTABLEKS                       R19 R18 K30 ["headerText"]
     4651 GETTABLEKS                       R19 R2 K31 ["footerText"]
     4653 SETTABLEKS                       R19 R18 K31 ["footerText"]
     4655 LOADK                            R20 K44 [""]
     4656 FASTCALL1                        TOSTRING R4 ; [+3]
     4657 MOVE                             R22 R4
     4658 GETIMPORT                        R21 K4 [tostring]
     4660 CALL                             R21 1 1
     4661 LOADK                            R22 K279 ["/localization/translation"]
     4662 CONCAT                           R19 R20 R22
     4663 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     4665 RETURN                           R18 1
     4666 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4668 JUMPIFNOTEQKN                    R18 K327 [52] ; [+120]
     4670 DUPTABLE                         R18 K330 [{["id"], ["eventType"] = "TranslationBadgeIconDeleted", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Badge", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     4671 GETTABLEKS                       R19 R2 K19 ["id"]
     4673 SETTABLEKS                       R19 R18 K19 ["id"]
     4675 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     4677 NEWCLOSURE                       R22 P6
     4678 CAPTURE                          VAL R20
     4679 CAPTURE                          VAL R3
     4680 FASTPCALL                        pcall 1 ; [+2]
     4681 GETIMPORT                        R21 K35 [pcall]
     4683 CALL                             R21 1 2
     4684 JUMPIFNOT                        R21 ; [+2]
     4685 MOVE                             R19 R22
     4686 JUMP                             ; [+1]
     4687 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     4688 SETTABLEKS                       R19 R18 K23 ["date"]
     4690 MOVE                             R19 R12
     4691 LOADK                            R20 K331 ["Description.TranslationBadgeIconDeleted"]
     4692 DUPTABLE                         R21 K333 [{"language", "badgeName"}]
     4693 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4695 JUMPIFNOT                        R24 ; [+5]
     4696 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4698 GETTABLEKS                       R23 R24 K245 ["Language"]
     4700 JUMPIF                           R23 ; [+1]
     4701 LOADK                            R23 K44 [""]
     4702 LOADK                            R24 K44 [""]
     4703 FASTCALL1                        TOSTRING R23 ; [+3]
     4704 MOVE                             R26 R23
     4705 GETIMPORT                        R25 K4 [tostring]
     4707 CALL                             R25 1 1
     4708 LOADK                            R26 K44 [""]
     4709 CONCAT                           R22 R24 R26
     4710 SETTABLEKS                       R22 R21 K243 ["language"]
     4712 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4714 JUMPIFNOT                        R24 ; [+5]
     4715 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4717 GETTABLEKS                       R23 R24 K334 ["BadgeName"]
     4719 JUMPIF                           R23 ; [+1]
     4720 LOADK                            R23 K44 [""]
     4721 LOADK                            R24 K44 [""]
     4722 FASTCALL1                        TOSTRING R23 ; [+3]
     4723 MOVE                             R26 R23
     4724 GETIMPORT                        R25 K4 [tostring]
     4726 CALL                             R25 1 1
     4727 LOADK                            R26 K44 [""]
     4728 CONCAT                           R22 R24 R26
     4729 SETTABLEKS                       R22 R21 K332 ["badgeName"]
     4731 CALL                             R19 2 1
     4732 SETTABLEKS                       R19 R18 K24 ["translation"]
     4734 GETTABLEKS                       R19 R2 K14 ["userId"]
     4736 SETTABLEKS                       R19 R18 K25 ["actorId"]
     4738 MOVE                             R19 R0
     4739 GETTABLEKS                       R20 R2 K14 ["userId"]
     4741 CALL                             R19 1 1
     4742 SETTABLEKS                       R19 R18 K26 ["actorName"]
     4744 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     4746 ORK                              R19 R20 K18 [0]
     4747 SETTABLEKS                       R19 R18 K29 ["iconId"]
     4749 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4751 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4753 GETTABLEKS                       R19 R2 K30 ["headerText"]
     4755 SETTABLEKS                       R19 R18 K30 ["headerText"]
     4757 GETTABLEKS                       R19 R2 K31 ["footerText"]
     4759 SETTABLEKS                       R19 R18 K31 ["footerText"]
     4761 LOADK                            R20 K44 [""]
     4762 FASTCALL1                        TOSTRING R4 ; [+3]
     4763 MOVE                             R22 R4
     4764 GETIMPORT                        R21 K4 [tostring]
     4766 CALL                             R21 1 1
     4767 LOADK                            R22 K279 ["/localization/translation"]
     4768 CONCAT                           R19 R20 R22
     4769 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     4771 LOADK                            R20 K44 [""]
     4772 GETUPVAL                         R22 1
     4773 FASTCALL1                        TOSTRING R22 ; [+2]
     4774 GETIMPORT                        R21 K4 [tostring]
     4776 CALL                             R21 1 1
     4777 LOADK                            R22 K335 ["badges/"]
     4778 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     4780 FASTCALL1                        TOSTRING R24 ; [+2]
     4781 GETIMPORT                        R23 K4 [tostring]
     4783 CALL                             R23 1 1
     4784 LOADK                            R24 K44 [""]
     4785 CONCAT                           R19 R20 R24
     4786 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     4788 RETURN                           R18 1
     4789 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4791 JUMPIFNOTEQKN                    R18 K336 [53] ; [+120]
     4793 DUPTABLE                         R18 K338 [{["id"], ["eventType"] = "TranslationBadgeDescription", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Badge", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     4794 GETTABLEKS                       R19 R2 K19 ["id"]
     4796 SETTABLEKS                       R19 R18 K19 ["id"]
     4798 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     4800 NEWCLOSURE                       R22 P6
     4801 CAPTURE                          VAL R20
     4802 CAPTURE                          VAL R3
     4803 FASTPCALL                        pcall 1 ; [+2]
     4804 GETIMPORT                        R21 K35 [pcall]
     4806 CALL                             R21 1 2
     4807 JUMPIFNOT                        R21 ; [+2]
     4808 MOVE                             R19 R22
     4809 JUMP                             ; [+1]
     4810 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     4811 SETTABLEKS                       R19 R18 K23 ["date"]
     4813 MOVE                             R19 R12
     4814 LOADK                            R20 K339 ["Description.TranslationBadgeDescription"]
     4815 DUPTABLE                         R21 K333 [{"language", "badgeName"}]
     4816 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4818 JUMPIFNOT                        R24 ; [+5]
     4819 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4821 GETTABLEKS                       R23 R24 K245 ["Language"]
     4823 JUMPIF                           R23 ; [+1]
     4824 LOADK                            R23 K44 [""]
     4825 LOADK                            R24 K44 [""]
     4826 FASTCALL1                        TOSTRING R23 ; [+3]
     4827 MOVE                             R26 R23
     4828 GETIMPORT                        R25 K4 [tostring]
     4830 CALL                             R25 1 1
     4831 LOADK                            R26 K44 [""]
     4832 CONCAT                           R22 R24 R26
     4833 SETTABLEKS                       R22 R21 K243 ["language"]
     4835 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4837 JUMPIFNOT                        R24 ; [+5]
     4838 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4840 GETTABLEKS                       R23 R24 K334 ["BadgeName"]
     4842 JUMPIF                           R23 ; [+1]
     4843 LOADK                            R23 K44 [""]
     4844 LOADK                            R24 K44 [""]
     4845 FASTCALL1                        TOSTRING R23 ; [+3]
     4846 MOVE                             R26 R23
     4847 GETIMPORT                        R25 K4 [tostring]
     4849 CALL                             R25 1 1
     4850 LOADK                            R26 K44 [""]
     4851 CONCAT                           R22 R24 R26
     4852 SETTABLEKS                       R22 R21 K332 ["badgeName"]
     4854 CALL                             R19 2 1
     4855 SETTABLEKS                       R19 R18 K24 ["translation"]
     4857 GETTABLEKS                       R19 R2 K14 ["userId"]
     4859 SETTABLEKS                       R19 R18 K25 ["actorId"]
     4861 MOVE                             R19 R0
     4862 GETTABLEKS                       R20 R2 K14 ["userId"]
     4864 CALL                             R19 1 1
     4865 SETTABLEKS                       R19 R18 K26 ["actorName"]
     4867 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     4869 ORK                              R19 R20 K18 [0]
     4870 SETTABLEKS                       R19 R18 K29 ["iconId"]
     4872 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4874 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4876 GETTABLEKS                       R19 R2 K30 ["headerText"]
     4878 SETTABLEKS                       R19 R18 K30 ["headerText"]
     4880 GETTABLEKS                       R19 R2 K31 ["footerText"]
     4882 SETTABLEKS                       R19 R18 K31 ["footerText"]
     4884 LOADK                            R20 K44 [""]
     4885 FASTCALL1                        TOSTRING R4 ; [+3]
     4886 MOVE                             R22 R4
     4887 GETIMPORT                        R21 K4 [tostring]
     4889 CALL                             R21 1 1
     4890 LOADK                            R22 K279 ["/localization/translation"]
     4891 CONCAT                           R19 R20 R22
     4892 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     4894 LOADK                            R20 K44 [""]
     4895 GETUPVAL                         R22 1
     4896 FASTCALL1                        TOSTRING R22 ; [+2]
     4897 GETIMPORT                        R21 K4 [tostring]
     4899 CALL                             R21 1 1
     4900 LOADK                            R22 K335 ["badges/"]
     4901 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     4903 FASTCALL1                        TOSTRING R24 ; [+2]
     4904 GETIMPORT                        R23 K4 [tostring]
     4906 CALL                             R23 1 1
     4907 LOADK                            R24 K44 [""]
     4908 CONCAT                           R19 R20 R24
     4909 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     4911 RETURN                           R18 1
     4912 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4914 JUMPIFNOTEQKN                    R18 K340 [54] ; [+120]
     4916 DUPTABLE                         R18 K342 [{["id"], ["eventType"] = "TranslationBadgeIconAdded", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Badge", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     4917 GETTABLEKS                       R19 R2 K19 ["id"]
     4919 SETTABLEKS                       R19 R18 K19 ["id"]
     4921 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     4923 NEWCLOSURE                       R22 P6
     4924 CAPTURE                          VAL R20
     4925 CAPTURE                          VAL R3
     4926 FASTPCALL                        pcall 1 ; [+2]
     4927 GETIMPORT                        R21 K35 [pcall]
     4929 CALL                             R21 1 2
     4930 JUMPIFNOT                        R21 ; [+2]
     4931 MOVE                             R19 R22
     4932 JUMP                             ; [+1]
     4933 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     4934 SETTABLEKS                       R19 R18 K23 ["date"]
     4936 MOVE                             R19 R12
     4937 LOADK                            R20 K343 ["Description.TranslationBadgeIconAdded"]
     4938 DUPTABLE                         R21 K333 [{"language", "badgeName"}]
     4939 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4941 JUMPIFNOT                        R24 ; [+5]
     4942 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4944 GETTABLEKS                       R23 R24 K245 ["Language"]
     4946 JUMPIF                           R23 ; [+1]
     4947 LOADK                            R23 K44 [""]
     4948 LOADK                            R24 K44 [""]
     4949 FASTCALL1                        TOSTRING R23 ; [+3]
     4950 MOVE                             R26 R23
     4951 GETIMPORT                        R25 K4 [tostring]
     4953 CALL                             R25 1 1
     4954 LOADK                            R26 K44 [""]
     4955 CONCAT                           R22 R24 R26
     4956 SETTABLEKS                       R22 R21 K243 ["language"]
     4958 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4960 JUMPIFNOT                        R24 ; [+5]
     4961 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4963 GETTABLEKS                       R23 R24 K334 ["BadgeName"]
     4965 JUMPIF                           R23 ; [+1]
     4966 LOADK                            R23 K44 [""]
     4967 LOADK                            R24 K44 [""]
     4968 FASTCALL1                        TOSTRING R23 ; [+3]
     4969 MOVE                             R26 R23
     4970 GETIMPORT                        R25 K4 [tostring]
     4972 CALL                             R25 1 1
     4973 LOADK                            R26 K44 [""]
     4974 CONCAT                           R22 R24 R26
     4975 SETTABLEKS                       R22 R21 K332 ["badgeName"]
     4977 CALL                             R19 2 1
     4978 SETTABLEKS                       R19 R18 K24 ["translation"]
     4980 GETTABLEKS                       R19 R2 K14 ["userId"]
     4982 SETTABLEKS                       R19 R18 K25 ["actorId"]
     4984 MOVE                             R19 R0
     4985 GETTABLEKS                       R20 R2 K14 ["userId"]
     4987 CALL                             R19 1 1
     4988 SETTABLEKS                       R19 R18 K26 ["actorName"]
     4990 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     4992 ORK                              R19 R20 K18 [0]
     4993 SETTABLEKS                       R19 R18 K29 ["iconId"]
     4995 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4997 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4999 GETTABLEKS                       R19 R2 K30 ["headerText"]
     5001 SETTABLEKS                       R19 R18 K30 ["headerText"]
     5003 GETTABLEKS                       R19 R2 K31 ["footerText"]
     5005 SETTABLEKS                       R19 R18 K31 ["footerText"]
     5007 LOADK                            R20 K44 [""]
     5008 FASTCALL1                        TOSTRING R4 ; [+3]
     5009 MOVE                             R22 R4
     5010 GETIMPORT                        R21 K4 [tostring]
     5012 CALL                             R21 1 1
     5013 LOADK                            R22 K279 ["/localization/translation"]
     5014 CONCAT                           R19 R20 R22
     5015 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     5017 LOADK                            R20 K44 [""]
     5018 GETUPVAL                         R22 1
     5019 FASTCALL1                        TOSTRING R22 ; [+2]
     5020 GETIMPORT                        R21 K4 [tostring]
     5022 CALL                             R21 1 1
     5023 LOADK                            R22 K335 ["badges/"]
     5024 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     5026 FASTCALL1                        TOSTRING R24 ; [+2]
     5027 GETIMPORT                        R23 K4 [tostring]
     5029 CALL                             R23 1 1
     5030 LOADK                            R24 K44 [""]
     5031 CONCAT                           R19 R20 R24
     5032 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     5034 RETURN                           R18 1
     5035 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5037 JUMPIFNOTEQKN                    R18 K344 [55] ; [+120]
     5039 DUPTABLE                         R18 K346 [{["id"], ["eventType"] = "TranslationBadgeName", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Badge", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     5040 GETTABLEKS                       R19 R2 K19 ["id"]
     5042 SETTABLEKS                       R19 R18 K19 ["id"]
     5044 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     5046 NEWCLOSURE                       R22 P6
     5047 CAPTURE                          VAL R20
     5048 CAPTURE                          VAL R3
     5049 FASTPCALL                        pcall 1 ; [+2]
     5050 GETIMPORT                        R21 K35 [pcall]
     5052 CALL                             R21 1 2
     5053 JUMPIFNOT                        R21 ; [+2]
     5054 MOVE                             R19 R22
     5055 JUMP                             ; [+1]
     5056 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     5057 SETTABLEKS                       R19 R18 K23 ["date"]
     5059 MOVE                             R19 R12
     5060 LOADK                            R20 K347 ["Description.TranslationBadgeName"]
     5061 DUPTABLE                         R21 K333 [{"language", "badgeName"}]
     5062 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5064 JUMPIFNOT                        R24 ; [+5]
     5065 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5067 GETTABLEKS                       R23 R24 K245 ["Language"]
     5069 JUMPIF                           R23 ; [+1]
     5070 LOADK                            R23 K44 [""]
     5071 LOADK                            R24 K44 [""]
     5072 FASTCALL1                        TOSTRING R23 ; [+3]
     5073 MOVE                             R26 R23
     5074 GETIMPORT                        R25 K4 [tostring]
     5076 CALL                             R25 1 1
     5077 LOADK                            R26 K44 [""]
     5078 CONCAT                           R22 R24 R26
     5079 SETTABLEKS                       R22 R21 K243 ["language"]
     5081 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5083 JUMPIFNOT                        R24 ; [+5]
     5084 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5086 GETTABLEKS                       R23 R24 K334 ["BadgeName"]
     5088 JUMPIF                           R23 ; [+1]
     5089 LOADK                            R23 K44 [""]
     5090 LOADK                            R24 K44 [""]
     5091 FASTCALL1                        TOSTRING R23 ; [+3]
     5092 MOVE                             R26 R23
     5093 GETIMPORT                        R25 K4 [tostring]
     5095 CALL                             R25 1 1
     5096 LOADK                            R26 K44 [""]
     5097 CONCAT                           R22 R24 R26
     5098 SETTABLEKS                       R22 R21 K332 ["badgeName"]
     5100 CALL                             R19 2 1
     5101 SETTABLEKS                       R19 R18 K24 ["translation"]
     5103 GETTABLEKS                       R19 R2 K14 ["userId"]
     5105 SETTABLEKS                       R19 R18 K25 ["actorId"]
     5107 MOVE                             R19 R0
     5108 GETTABLEKS                       R20 R2 K14 ["userId"]
     5110 CALL                             R19 1 1
     5111 SETTABLEKS                       R19 R18 K26 ["actorName"]
     5113 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5115 ORK                              R19 R20 K18 [0]
     5116 SETTABLEKS                       R19 R18 K29 ["iconId"]
     5118 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5120 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5122 GETTABLEKS                       R19 R2 K30 ["headerText"]
     5124 SETTABLEKS                       R19 R18 K30 ["headerText"]
     5126 GETTABLEKS                       R19 R2 K31 ["footerText"]
     5128 SETTABLEKS                       R19 R18 K31 ["footerText"]
     5130 LOADK                            R20 K44 [""]
     5131 FASTCALL1                        TOSTRING R4 ; [+3]
     5132 MOVE                             R22 R4
     5133 GETIMPORT                        R21 K4 [tostring]
     5135 CALL                             R21 1 1
     5136 LOADK                            R22 K279 ["/localization/translation"]
     5137 CONCAT                           R19 R20 R22
     5138 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     5140 LOADK                            R20 K44 [""]
     5141 GETUPVAL                         R22 1
     5142 FASTCALL1                        TOSTRING R22 ; [+2]
     5143 GETIMPORT                        R21 K4 [tostring]
     5145 CALL                             R21 1 1
     5146 LOADK                            R22 K335 ["badges/"]
     5147 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     5149 FASTCALL1                        TOSTRING R24 ; [+2]
     5150 GETIMPORT                        R23 K4 [tostring]
     5152 CALL                             R23 1 1
     5153 LOADK                            R24 K44 [""]
     5154 CONCAT                           R19 R20 R24
     5155 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     5157 RETURN                           R18 1
     5158 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5160 JUMPIFNOTEQKN                    R18 K348 [56] ; [+120]
     5162 DUPTABLE                         R18 K351 [{["id"], ["eventType"] = "TranslationDeveloperProductIconDeleted", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "DeveloperProduct", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     5163 GETTABLEKS                       R19 R2 K19 ["id"]
     5165 SETTABLEKS                       R19 R18 K19 ["id"]
     5167 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     5169 NEWCLOSURE                       R22 P6
     5170 CAPTURE                          VAL R20
     5171 CAPTURE                          VAL R3
     5172 FASTPCALL                        pcall 1 ; [+2]
     5173 GETIMPORT                        R21 K35 [pcall]
     5175 CALL                             R21 1 2
     5176 JUMPIFNOT                        R21 ; [+2]
     5177 MOVE                             R19 R22
     5178 JUMP                             ; [+1]
     5179 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     5180 SETTABLEKS                       R19 R18 K23 ["date"]
     5182 MOVE                             R19 R12
     5183 LOADK                            R20 K352 ["Description.TranslationDeveloperProductIconDeleted"]
     5184 DUPTABLE                         R21 K354 [{"language", "productName"}]
     5185 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5187 JUMPIFNOT                        R24 ; [+5]
     5188 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5190 GETTABLEKS                       R23 R24 K245 ["Language"]
     5192 JUMPIF                           R23 ; [+1]
     5193 LOADK                            R23 K44 [""]
     5194 LOADK                            R24 K44 [""]
     5195 FASTCALL1                        TOSTRING R23 ; [+3]
     5196 MOVE                             R26 R23
     5197 GETIMPORT                        R25 K4 [tostring]
     5199 CALL                             R25 1 1
     5200 LOADK                            R26 K44 [""]
     5201 CONCAT                           R22 R24 R26
     5202 SETTABLEKS                       R22 R21 K243 ["language"]
     5204 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5206 JUMPIFNOT                        R24 ; [+5]
     5207 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5209 GETTABLEKS                       R23 R24 K355 ["ProductName"]
     5211 JUMPIF                           R23 ; [+1]
     5212 LOADK                            R23 K44 [""]
     5213 LOADK                            R24 K44 [""]
     5214 FASTCALL1                        TOSTRING R23 ; [+3]
     5215 MOVE                             R26 R23
     5216 GETIMPORT                        R25 K4 [tostring]
     5218 CALL                             R25 1 1
     5219 LOADK                            R26 K44 [""]
     5220 CONCAT                           R22 R24 R26
     5221 SETTABLEKS                       R22 R21 K353 ["productName"]
     5223 CALL                             R19 2 1
     5224 SETTABLEKS                       R19 R18 K24 ["translation"]
     5226 GETTABLEKS                       R19 R2 K14 ["userId"]
     5228 SETTABLEKS                       R19 R18 K25 ["actorId"]
     5230 MOVE                             R19 R0
     5231 GETTABLEKS                       R20 R2 K14 ["userId"]
     5233 CALL                             R19 1 1
     5234 SETTABLEKS                       R19 R18 K26 ["actorName"]
     5236 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5238 ORK                              R19 R20 K18 [0]
     5239 SETTABLEKS                       R19 R18 K29 ["iconId"]
     5241 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5243 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5245 GETTABLEKS                       R19 R2 K30 ["headerText"]
     5247 SETTABLEKS                       R19 R18 K30 ["headerText"]
     5249 GETTABLEKS                       R19 R2 K31 ["footerText"]
     5251 SETTABLEKS                       R19 R18 K31 ["footerText"]
     5253 LOADK                            R20 K44 [""]
     5254 FASTCALL1                        TOSTRING R4 ; [+3]
     5255 MOVE                             R22 R4
     5256 GETIMPORT                        R21 K4 [tostring]
     5258 CALL                             R21 1 1
     5259 LOADK                            R22 K279 ["/localization/translation"]
     5260 CONCAT                           R19 R20 R22
     5261 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     5263 LOADK                            R20 K44 [""]
     5264 GETUPVAL                         R22 1
     5265 FASTCALL1                        TOSTRING R22 ; [+2]
     5266 GETIMPORT                        R21 K4 [tostring]
     5268 CALL                             R21 1 1
     5269 LOADK                            R22 K356 ["developer-products/"]
     5270 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     5272 FASTCALL1                        TOSTRING R24 ; [+2]
     5273 GETIMPORT                        R23 K4 [tostring]
     5275 CALL                             R23 1 1
     5276 LOADK                            R24 K44 [""]
     5277 CONCAT                           R19 R20 R24
     5278 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     5280 RETURN                           R18 1
     5281 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5283 JUMPIFNOTEQKN                    R18 K357 [57] ; [+120]
     5285 DUPTABLE                         R18 K359 [{["id"], ["eventType"] = "TranslationDeveloperProductDescription", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "DeveloperProduct", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     5286 GETTABLEKS                       R19 R2 K19 ["id"]
     5288 SETTABLEKS                       R19 R18 K19 ["id"]
     5290 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     5292 NEWCLOSURE                       R22 P6
     5293 CAPTURE                          VAL R20
     5294 CAPTURE                          VAL R3
     5295 FASTPCALL                        pcall 1 ; [+2]
     5296 GETIMPORT                        R21 K35 [pcall]
     5298 CALL                             R21 1 2
     5299 JUMPIFNOT                        R21 ; [+2]
     5300 MOVE                             R19 R22
     5301 JUMP                             ; [+1]
     5302 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     5303 SETTABLEKS                       R19 R18 K23 ["date"]
     5305 MOVE                             R19 R12
     5306 LOADK                            R20 K360 ["Description.TranslationDeveloperProductDescription"]
     5307 DUPTABLE                         R21 K354 [{"language", "productName"}]
     5308 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5310 JUMPIFNOT                        R24 ; [+5]
     5311 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5313 GETTABLEKS                       R23 R24 K245 ["Language"]
     5315 JUMPIF                           R23 ; [+1]
     5316 LOADK                            R23 K44 [""]
     5317 LOADK                            R24 K44 [""]
     5318 FASTCALL1                        TOSTRING R23 ; [+3]
     5319 MOVE                             R26 R23
     5320 GETIMPORT                        R25 K4 [tostring]
     5322 CALL                             R25 1 1
     5323 LOADK                            R26 K44 [""]
     5324 CONCAT                           R22 R24 R26
     5325 SETTABLEKS                       R22 R21 K243 ["language"]
     5327 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5329 JUMPIFNOT                        R24 ; [+5]
     5330 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5332 GETTABLEKS                       R23 R24 K355 ["ProductName"]
     5334 JUMPIF                           R23 ; [+1]
     5335 LOADK                            R23 K44 [""]
     5336 LOADK                            R24 K44 [""]
     5337 FASTCALL1                        TOSTRING R23 ; [+3]
     5338 MOVE                             R26 R23
     5339 GETIMPORT                        R25 K4 [tostring]
     5341 CALL                             R25 1 1
     5342 LOADK                            R26 K44 [""]
     5343 CONCAT                           R22 R24 R26
     5344 SETTABLEKS                       R22 R21 K353 ["productName"]
     5346 CALL                             R19 2 1
     5347 SETTABLEKS                       R19 R18 K24 ["translation"]
     5349 GETTABLEKS                       R19 R2 K14 ["userId"]
     5351 SETTABLEKS                       R19 R18 K25 ["actorId"]
     5353 MOVE                             R19 R0
     5354 GETTABLEKS                       R20 R2 K14 ["userId"]
     5356 CALL                             R19 1 1
     5357 SETTABLEKS                       R19 R18 K26 ["actorName"]
     5359 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5361 ORK                              R19 R20 K18 [0]
     5362 SETTABLEKS                       R19 R18 K29 ["iconId"]
     5364 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5366 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5368 GETTABLEKS                       R19 R2 K30 ["headerText"]
     5370 SETTABLEKS                       R19 R18 K30 ["headerText"]
     5372 GETTABLEKS                       R19 R2 K31 ["footerText"]
     5374 SETTABLEKS                       R19 R18 K31 ["footerText"]
     5376 LOADK                            R20 K44 [""]
     5377 FASTCALL1                        TOSTRING R4 ; [+3]
     5378 MOVE                             R22 R4
     5379 GETIMPORT                        R21 K4 [tostring]
     5381 CALL                             R21 1 1
     5382 LOADK                            R22 K279 ["/localization/translation"]
     5383 CONCAT                           R19 R20 R22
     5384 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     5386 LOADK                            R20 K44 [""]
     5387 GETUPVAL                         R22 1
     5388 FASTCALL1                        TOSTRING R22 ; [+2]
     5389 GETIMPORT                        R21 K4 [tostring]
     5391 CALL                             R21 1 1
     5392 LOADK                            R22 K356 ["developer-products/"]
     5393 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     5395 FASTCALL1                        TOSTRING R24 ; [+2]
     5396 GETIMPORT                        R23 K4 [tostring]
     5398 CALL                             R23 1 1
     5399 LOADK                            R24 K44 [""]
     5400 CONCAT                           R19 R20 R24
     5401 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     5403 RETURN                           R18 1
     5404 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5406 JUMPIFNOTEQKN                    R18 K361 [58] ; [+120]
     5408 DUPTABLE                         R18 K363 [{["id"], ["eventType"] = "TranslationDeveloperProductIconAdded", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "DeveloperProduct", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     5409 GETTABLEKS                       R19 R2 K19 ["id"]
     5411 SETTABLEKS                       R19 R18 K19 ["id"]
     5413 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     5415 NEWCLOSURE                       R22 P6
     5416 CAPTURE                          VAL R20
     5417 CAPTURE                          VAL R3
     5418 FASTPCALL                        pcall 1 ; [+2]
     5419 GETIMPORT                        R21 K35 [pcall]
     5421 CALL                             R21 1 2
     5422 JUMPIFNOT                        R21 ; [+2]
     5423 MOVE                             R19 R22
     5424 JUMP                             ; [+1]
     5425 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     5426 SETTABLEKS                       R19 R18 K23 ["date"]
     5428 MOVE                             R19 R12
     5429 LOADK                            R20 K364 ["Description.TranslationDeveloperProductIconAdded"]
     5430 DUPTABLE                         R21 K354 [{"language", "productName"}]
     5431 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5433 JUMPIFNOT                        R24 ; [+5]
     5434 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5436 GETTABLEKS                       R23 R24 K245 ["Language"]
     5438 JUMPIF                           R23 ; [+1]
     5439 LOADK                            R23 K44 [""]
     5440 LOADK                            R24 K44 [""]
     5441 FASTCALL1                        TOSTRING R23 ; [+3]
     5442 MOVE                             R26 R23
     5443 GETIMPORT                        R25 K4 [tostring]
     5445 CALL                             R25 1 1
     5446 LOADK                            R26 K44 [""]
     5447 CONCAT                           R22 R24 R26
     5448 SETTABLEKS                       R22 R21 K243 ["language"]
     5450 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5452 JUMPIFNOT                        R24 ; [+5]
     5453 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5455 GETTABLEKS                       R23 R24 K355 ["ProductName"]
     5457 JUMPIF                           R23 ; [+1]
     5458 LOADK                            R23 K44 [""]
     5459 LOADK                            R24 K44 [""]
     5460 FASTCALL1                        TOSTRING R23 ; [+3]
     5461 MOVE                             R26 R23
     5462 GETIMPORT                        R25 K4 [tostring]
     5464 CALL                             R25 1 1
     5465 LOADK                            R26 K44 [""]
     5466 CONCAT                           R22 R24 R26
     5467 SETTABLEKS                       R22 R21 K353 ["productName"]
     5469 CALL                             R19 2 1
     5470 SETTABLEKS                       R19 R18 K24 ["translation"]
     5472 GETTABLEKS                       R19 R2 K14 ["userId"]
     5474 SETTABLEKS                       R19 R18 K25 ["actorId"]
     5476 MOVE                             R19 R0
     5477 GETTABLEKS                       R20 R2 K14 ["userId"]
     5479 CALL                             R19 1 1
     5480 SETTABLEKS                       R19 R18 K26 ["actorName"]
     5482 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5484 ORK                              R19 R20 K18 [0]
     5485 SETTABLEKS                       R19 R18 K29 ["iconId"]
     5487 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5489 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5491 GETTABLEKS                       R19 R2 K30 ["headerText"]
     5493 SETTABLEKS                       R19 R18 K30 ["headerText"]
     5495 GETTABLEKS                       R19 R2 K31 ["footerText"]
     5497 SETTABLEKS                       R19 R18 K31 ["footerText"]
     5499 LOADK                            R20 K44 [""]
     5500 FASTCALL1                        TOSTRING R4 ; [+3]
     5501 MOVE                             R22 R4
     5502 GETIMPORT                        R21 K4 [tostring]
     5504 CALL                             R21 1 1
     5505 LOADK                            R22 K279 ["/localization/translation"]
     5506 CONCAT                           R19 R20 R22
     5507 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     5509 LOADK                            R20 K44 [""]
     5510 GETUPVAL                         R22 1
     5511 FASTCALL1                        TOSTRING R22 ; [+2]
     5512 GETIMPORT                        R21 K4 [tostring]
     5514 CALL                             R21 1 1
     5515 LOADK                            R22 K356 ["developer-products/"]
     5516 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     5518 FASTCALL1                        TOSTRING R24 ; [+2]
     5519 GETIMPORT                        R23 K4 [tostring]
     5521 CALL                             R23 1 1
     5522 LOADK                            R24 K44 [""]
     5523 CONCAT                           R19 R20 R24
     5524 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     5526 RETURN                           R18 1
     5527 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5529 JUMPIFNOTEQKN                    R18 K365 [59] ; [+120]
     5531 DUPTABLE                         R18 K367 [{["id"], ["eventType"] = "TranslationDeveloperProductName", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "DeveloperProduct", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     5532 GETTABLEKS                       R19 R2 K19 ["id"]
     5534 SETTABLEKS                       R19 R18 K19 ["id"]
     5536 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     5538 NEWCLOSURE                       R22 P6
     5539 CAPTURE                          VAL R20
     5540 CAPTURE                          VAL R3
     5541 FASTPCALL                        pcall 1 ; [+2]
     5542 GETIMPORT                        R21 K35 [pcall]
     5544 CALL                             R21 1 2
     5545 JUMPIFNOT                        R21 ; [+2]
     5546 MOVE                             R19 R22
     5547 JUMP                             ; [+1]
     5548 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     5549 SETTABLEKS                       R19 R18 K23 ["date"]
     5551 MOVE                             R19 R12
     5552 LOADK                            R20 K368 ["Description.TranslationDeveloperProductName"]
     5553 DUPTABLE                         R21 K354 [{"language", "productName"}]
     5554 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5556 JUMPIFNOT                        R24 ; [+5]
     5557 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5559 GETTABLEKS                       R23 R24 K245 ["Language"]
     5561 JUMPIF                           R23 ; [+1]
     5562 LOADK                            R23 K44 [""]
     5563 LOADK                            R24 K44 [""]
     5564 FASTCALL1                        TOSTRING R23 ; [+3]
     5565 MOVE                             R26 R23
     5566 GETIMPORT                        R25 K4 [tostring]
     5568 CALL                             R25 1 1
     5569 LOADK                            R26 K44 [""]
     5570 CONCAT                           R22 R24 R26
     5571 SETTABLEKS                       R22 R21 K243 ["language"]
     5573 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5575 JUMPIFNOT                        R24 ; [+5]
     5576 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5578 GETTABLEKS                       R23 R24 K355 ["ProductName"]
     5580 JUMPIF                           R23 ; [+1]
     5581 LOADK                            R23 K44 [""]
     5582 LOADK                            R24 K44 [""]
     5583 FASTCALL1                        TOSTRING R23 ; [+3]
     5584 MOVE                             R26 R23
     5585 GETIMPORT                        R25 K4 [tostring]
     5587 CALL                             R25 1 1
     5588 LOADK                            R26 K44 [""]
     5589 CONCAT                           R22 R24 R26
     5590 SETTABLEKS                       R22 R21 K353 ["productName"]
     5592 CALL                             R19 2 1
     5593 SETTABLEKS                       R19 R18 K24 ["translation"]
     5595 GETTABLEKS                       R19 R2 K14 ["userId"]
     5597 SETTABLEKS                       R19 R18 K25 ["actorId"]
     5599 MOVE                             R19 R0
     5600 GETTABLEKS                       R20 R2 K14 ["userId"]
     5602 CALL                             R19 1 1
     5603 SETTABLEKS                       R19 R18 K26 ["actorName"]
     5605 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5607 ORK                              R19 R20 K18 [0]
     5608 SETTABLEKS                       R19 R18 K29 ["iconId"]
     5610 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5612 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5614 GETTABLEKS                       R19 R2 K30 ["headerText"]
     5616 SETTABLEKS                       R19 R18 K30 ["headerText"]
     5618 GETTABLEKS                       R19 R2 K31 ["footerText"]
     5620 SETTABLEKS                       R19 R18 K31 ["footerText"]
     5622 LOADK                            R20 K44 [""]
     5623 FASTCALL1                        TOSTRING R4 ; [+3]
     5624 MOVE                             R22 R4
     5625 GETIMPORT                        R21 K4 [tostring]
     5627 CALL                             R21 1 1
     5628 LOADK                            R22 K279 ["/localization/translation"]
     5629 CONCAT                           R19 R20 R22
     5630 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     5632 LOADK                            R20 K44 [""]
     5633 GETUPVAL                         R22 1
     5634 FASTCALL1                        TOSTRING R22 ; [+2]
     5635 GETIMPORT                        R21 K4 [tostring]
     5637 CALL                             R21 1 1
     5638 LOADK                            R22 K356 ["developer-products/"]
     5639 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     5641 FASTCALL1                        TOSTRING R24 ; [+2]
     5642 GETIMPORT                        R23 K4 [tostring]
     5644 CALL                             R23 1 1
     5645 LOADK                            R24 K44 [""]
     5646 CONCAT                           R19 R20 R24
     5647 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     5649 RETURN                           R18 1
     5650 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5652 JUMPIFNOTEQKN                    R18 K369 [60] ; [+120]
     5654 DUPTABLE                         R18 K372 [{["id"], ["eventType"] = "TranslationGamePassIconDeleted", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "GamePass", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     5655 GETTABLEKS                       R19 R2 K19 ["id"]
     5657 SETTABLEKS                       R19 R18 K19 ["id"]
     5659 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     5661 NEWCLOSURE                       R22 P6
     5662 CAPTURE                          VAL R20
     5663 CAPTURE                          VAL R3
     5664 FASTPCALL                        pcall 1 ; [+2]
     5665 GETIMPORT                        R21 K35 [pcall]
     5667 CALL                             R21 1 2
     5668 JUMPIFNOT                        R21 ; [+2]
     5669 MOVE                             R19 R22
     5670 JUMP                             ; [+1]
     5671 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     5672 SETTABLEKS                       R19 R18 K23 ["date"]
     5674 MOVE                             R19 R12
     5675 LOADK                            R20 K373 ["Description.TranslationGamePassIconDeleted"]
     5676 DUPTABLE                         R21 K375 [{"language", "passName"}]
     5677 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5679 JUMPIFNOT                        R24 ; [+5]
     5680 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5682 GETTABLEKS                       R23 R24 K245 ["Language"]
     5684 JUMPIF                           R23 ; [+1]
     5685 LOADK                            R23 K44 [""]
     5686 LOADK                            R24 K44 [""]
     5687 FASTCALL1                        TOSTRING R23 ; [+3]
     5688 MOVE                             R26 R23
     5689 GETIMPORT                        R25 K4 [tostring]
     5691 CALL                             R25 1 1
     5692 LOADK                            R26 K44 [""]
     5693 CONCAT                           R22 R24 R26
     5694 SETTABLEKS                       R22 R21 K243 ["language"]
     5696 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5698 JUMPIFNOT                        R24 ; [+5]
     5699 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5701 GETTABLEKS                       R23 R24 K376 ["PassName"]
     5703 JUMPIF                           R23 ; [+1]
     5704 LOADK                            R23 K44 [""]
     5705 LOADK                            R24 K44 [""]
     5706 FASTCALL1                        TOSTRING R23 ; [+3]
     5707 MOVE                             R26 R23
     5708 GETIMPORT                        R25 K4 [tostring]
     5710 CALL                             R25 1 1
     5711 LOADK                            R26 K44 [""]
     5712 CONCAT                           R22 R24 R26
     5713 SETTABLEKS                       R22 R21 K374 ["passName"]
     5715 CALL                             R19 2 1
     5716 SETTABLEKS                       R19 R18 K24 ["translation"]
     5718 GETTABLEKS                       R19 R2 K14 ["userId"]
     5720 SETTABLEKS                       R19 R18 K25 ["actorId"]
     5722 MOVE                             R19 R0
     5723 GETTABLEKS                       R20 R2 K14 ["userId"]
     5725 CALL                             R19 1 1
     5726 SETTABLEKS                       R19 R18 K26 ["actorName"]
     5728 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5730 ORK                              R19 R20 K18 [0]
     5731 SETTABLEKS                       R19 R18 K29 ["iconId"]
     5733 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5735 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5737 GETTABLEKS                       R19 R2 K30 ["headerText"]
     5739 SETTABLEKS                       R19 R18 K30 ["headerText"]
     5741 GETTABLEKS                       R19 R2 K31 ["footerText"]
     5743 SETTABLEKS                       R19 R18 K31 ["footerText"]
     5745 LOADK                            R20 K44 [""]
     5746 FASTCALL1                        TOSTRING R4 ; [+3]
     5747 MOVE                             R22 R4
     5748 GETIMPORT                        R21 K4 [tostring]
     5750 CALL                             R21 1 1
     5751 LOADK                            R22 K279 ["/localization/translation"]
     5752 CONCAT                           R19 R20 R22
     5753 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     5755 LOADK                            R20 K44 [""]
     5756 GETUPVAL                         R22 1
     5757 FASTCALL1                        TOSTRING R22 ; [+2]
     5758 GETIMPORT                        R21 K4 [tostring]
     5760 CALL                             R21 1 1
     5761 LOADK                            R22 K377 ["game-pass/"]
     5762 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     5764 FASTCALL1                        TOSTRING R24 ; [+2]
     5765 GETIMPORT                        R23 K4 [tostring]
     5767 CALL                             R23 1 1
     5768 LOADK                            R24 K44 [""]
     5769 CONCAT                           R19 R20 R24
     5770 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     5772 RETURN                           R18 1
     5773 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5775 JUMPIFNOTEQKN                    R18 K378 [61] ; [+120]
     5777 DUPTABLE                         R18 K380 [{["id"], ["eventType"] = "TranslationGamePassDescription", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "GamePass", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     5778 GETTABLEKS                       R19 R2 K19 ["id"]
     5780 SETTABLEKS                       R19 R18 K19 ["id"]
     5782 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     5784 NEWCLOSURE                       R22 P6
     5785 CAPTURE                          VAL R20
     5786 CAPTURE                          VAL R3
     5787 FASTPCALL                        pcall 1 ; [+2]
     5788 GETIMPORT                        R21 K35 [pcall]
     5790 CALL                             R21 1 2
     5791 JUMPIFNOT                        R21 ; [+2]
     5792 MOVE                             R19 R22
     5793 JUMP                             ; [+1]
     5794 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     5795 SETTABLEKS                       R19 R18 K23 ["date"]
     5797 MOVE                             R19 R12
     5798 LOADK                            R20 K381 ["Description.TranslationGamePassDescription"]
     5799 DUPTABLE                         R21 K375 [{"language", "passName"}]
     5800 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5802 JUMPIFNOT                        R24 ; [+5]
     5803 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5805 GETTABLEKS                       R23 R24 K245 ["Language"]
     5807 JUMPIF                           R23 ; [+1]
     5808 LOADK                            R23 K44 [""]
     5809 LOADK                            R24 K44 [""]
     5810 FASTCALL1                        TOSTRING R23 ; [+3]
     5811 MOVE                             R26 R23
     5812 GETIMPORT                        R25 K4 [tostring]
     5814 CALL                             R25 1 1
     5815 LOADK                            R26 K44 [""]
     5816 CONCAT                           R22 R24 R26
     5817 SETTABLEKS                       R22 R21 K243 ["language"]
     5819 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5821 JUMPIFNOT                        R24 ; [+5]
     5822 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5824 GETTABLEKS                       R23 R24 K376 ["PassName"]
     5826 JUMPIF                           R23 ; [+1]
     5827 LOADK                            R23 K44 [""]
     5828 LOADK                            R24 K44 [""]
     5829 FASTCALL1                        TOSTRING R23 ; [+3]
     5830 MOVE                             R26 R23
     5831 GETIMPORT                        R25 K4 [tostring]
     5833 CALL                             R25 1 1
     5834 LOADK                            R26 K44 [""]
     5835 CONCAT                           R22 R24 R26
     5836 SETTABLEKS                       R22 R21 K374 ["passName"]
     5838 CALL                             R19 2 1
     5839 SETTABLEKS                       R19 R18 K24 ["translation"]
     5841 GETTABLEKS                       R19 R2 K14 ["userId"]
     5843 SETTABLEKS                       R19 R18 K25 ["actorId"]
     5845 MOVE                             R19 R0
     5846 GETTABLEKS                       R20 R2 K14 ["userId"]
     5848 CALL                             R19 1 1
     5849 SETTABLEKS                       R19 R18 K26 ["actorName"]
     5851 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5853 ORK                              R19 R20 K18 [0]
     5854 SETTABLEKS                       R19 R18 K29 ["iconId"]
     5856 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5858 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5860 GETTABLEKS                       R19 R2 K30 ["headerText"]
     5862 SETTABLEKS                       R19 R18 K30 ["headerText"]
     5864 GETTABLEKS                       R19 R2 K31 ["footerText"]
     5866 SETTABLEKS                       R19 R18 K31 ["footerText"]
     5868 LOADK                            R20 K44 [""]
     5869 FASTCALL1                        TOSTRING R4 ; [+3]
     5870 MOVE                             R22 R4
     5871 GETIMPORT                        R21 K4 [tostring]
     5873 CALL                             R21 1 1
     5874 LOADK                            R22 K279 ["/localization/translation"]
     5875 CONCAT                           R19 R20 R22
     5876 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     5878 LOADK                            R20 K44 [""]
     5879 GETUPVAL                         R22 1
     5880 FASTCALL1                        TOSTRING R22 ; [+2]
     5881 GETIMPORT                        R21 K4 [tostring]
     5883 CALL                             R21 1 1
     5884 LOADK                            R22 K377 ["game-pass/"]
     5885 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     5887 FASTCALL1                        TOSTRING R24 ; [+2]
     5888 GETIMPORT                        R23 K4 [tostring]
     5890 CALL                             R23 1 1
     5891 LOADK                            R24 K44 [""]
     5892 CONCAT                           R19 R20 R24
     5893 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     5895 RETURN                           R18 1
     5896 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5898 JUMPIFNOTEQKN                    R18 K382 [62] ; [+120]
     5900 DUPTABLE                         R18 K384 [{["id"], ["eventType"] = "TranslationGamePassIconAdded", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "GamePass", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     5901 GETTABLEKS                       R19 R2 K19 ["id"]
     5903 SETTABLEKS                       R19 R18 K19 ["id"]
     5905 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     5907 NEWCLOSURE                       R22 P6
     5908 CAPTURE                          VAL R20
     5909 CAPTURE                          VAL R3
     5910 FASTPCALL                        pcall 1 ; [+2]
     5911 GETIMPORT                        R21 K35 [pcall]
     5913 CALL                             R21 1 2
     5914 JUMPIFNOT                        R21 ; [+2]
     5915 MOVE                             R19 R22
     5916 JUMP                             ; [+1]
     5917 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     5918 SETTABLEKS                       R19 R18 K23 ["date"]
     5920 MOVE                             R19 R12
     5921 LOADK                            R20 K385 ["Description.TranslationGamePassIconAdded"]
     5922 DUPTABLE                         R21 K375 [{"language", "passName"}]
     5923 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5925 JUMPIFNOT                        R24 ; [+5]
     5926 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5928 GETTABLEKS                       R23 R24 K245 ["Language"]
     5930 JUMPIF                           R23 ; [+1]
     5931 LOADK                            R23 K44 [""]
     5932 LOADK                            R24 K44 [""]
     5933 FASTCALL1                        TOSTRING R23 ; [+3]
     5934 MOVE                             R26 R23
     5935 GETIMPORT                        R25 K4 [tostring]
     5937 CALL                             R25 1 1
     5938 LOADK                            R26 K44 [""]
     5939 CONCAT                           R22 R24 R26
     5940 SETTABLEKS                       R22 R21 K243 ["language"]
     5942 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5944 JUMPIFNOT                        R24 ; [+5]
     5945 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5947 GETTABLEKS                       R23 R24 K376 ["PassName"]
     5949 JUMPIF                           R23 ; [+1]
     5950 LOADK                            R23 K44 [""]
     5951 LOADK                            R24 K44 [""]
     5952 FASTCALL1                        TOSTRING R23 ; [+3]
     5953 MOVE                             R26 R23
     5954 GETIMPORT                        R25 K4 [tostring]
     5956 CALL                             R25 1 1
     5957 LOADK                            R26 K44 [""]
     5958 CONCAT                           R22 R24 R26
     5959 SETTABLEKS                       R22 R21 K374 ["passName"]
     5961 CALL                             R19 2 1
     5962 SETTABLEKS                       R19 R18 K24 ["translation"]
     5964 GETTABLEKS                       R19 R2 K14 ["userId"]
     5966 SETTABLEKS                       R19 R18 K25 ["actorId"]
     5968 MOVE                             R19 R0
     5969 GETTABLEKS                       R20 R2 K14 ["userId"]
     5971 CALL                             R19 1 1
     5972 SETTABLEKS                       R19 R18 K26 ["actorName"]
     5974 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5976 ORK                              R19 R20 K18 [0]
     5977 SETTABLEKS                       R19 R18 K29 ["iconId"]
     5979 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5981 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5983 GETTABLEKS                       R19 R2 K30 ["headerText"]
     5985 SETTABLEKS                       R19 R18 K30 ["headerText"]
     5987 GETTABLEKS                       R19 R2 K31 ["footerText"]
     5989 SETTABLEKS                       R19 R18 K31 ["footerText"]
     5991 LOADK                            R20 K44 [""]
     5992 FASTCALL1                        TOSTRING R4 ; [+3]
     5993 MOVE                             R22 R4
     5994 GETIMPORT                        R21 K4 [tostring]
     5996 CALL                             R21 1 1
     5997 LOADK                            R22 K279 ["/localization/translation"]
     5998 CONCAT                           R19 R20 R22
     5999 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     6001 LOADK                            R20 K44 [""]
     6002 GETUPVAL                         R22 1
     6003 FASTCALL1                        TOSTRING R22 ; [+2]
     6004 GETIMPORT                        R21 K4 [tostring]
     6006 CALL                             R21 1 1
     6007 LOADK                            R22 K377 ["game-pass/"]
     6008 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     6010 FASTCALL1                        TOSTRING R24 ; [+2]
     6011 GETIMPORT                        R23 K4 [tostring]
     6013 CALL                             R23 1 1
     6014 LOADK                            R24 K44 [""]
     6015 CONCAT                           R19 R20 R24
     6016 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     6018 RETURN                           R18 1
     6019 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6021 JUMPIFNOTEQKN                    R18 K386 [63] ; [+120]
     6023 DUPTABLE                         R18 K388 [{["id"], ["eventType"] = "TranslationGamePassName", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "GamePass", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     6024 GETTABLEKS                       R19 R2 K19 ["id"]
     6026 SETTABLEKS                       R19 R18 K19 ["id"]
     6028 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     6030 NEWCLOSURE                       R22 P6
     6031 CAPTURE                          VAL R20
     6032 CAPTURE                          VAL R3
     6033 FASTPCALL                        pcall 1 ; [+2]
     6034 GETIMPORT                        R21 K35 [pcall]
     6036 CALL                             R21 1 2
     6037 JUMPIFNOT                        R21 ; [+2]
     6038 MOVE                             R19 R22
     6039 JUMP                             ; [+1]
     6040 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     6041 SETTABLEKS                       R19 R18 K23 ["date"]
     6043 MOVE                             R19 R12
     6044 LOADK                            R20 K389 ["Description.TranslationGamePassName"]
     6045 DUPTABLE                         R21 K375 [{"language", "passName"}]
     6046 GETTABLEKS                       R24 R2 K42 ["metaData"]
     6048 JUMPIFNOT                        R24 ; [+5]
     6049 GETTABLEKS                       R24 R2 K42 ["metaData"]
     6051 GETTABLEKS                       R23 R24 K245 ["Language"]
     6053 JUMPIF                           R23 ; [+1]
     6054 LOADK                            R23 K44 [""]
     6055 LOADK                            R24 K44 [""]
     6056 FASTCALL1                        TOSTRING R23 ; [+3]
     6057 MOVE                             R26 R23
     6058 GETIMPORT                        R25 K4 [tostring]
     6060 CALL                             R25 1 1
     6061 LOADK                            R26 K44 [""]
     6062 CONCAT                           R22 R24 R26
     6063 SETTABLEKS                       R22 R21 K243 ["language"]
     6065 GETTABLEKS                       R24 R2 K42 ["metaData"]
     6067 JUMPIFNOT                        R24 ; [+5]
     6068 GETTABLEKS                       R24 R2 K42 ["metaData"]
     6070 GETTABLEKS                       R23 R24 K376 ["PassName"]
     6072 JUMPIF                           R23 ; [+1]
     6073 LOADK                            R23 K44 [""]
     6074 LOADK                            R24 K44 [""]
     6075 FASTCALL1                        TOSTRING R23 ; [+3]
     6076 MOVE                             R26 R23
     6077 GETIMPORT                        R25 K4 [tostring]
     6079 CALL                             R25 1 1
     6080 LOADK                            R26 K44 [""]
     6081 CONCAT                           R22 R24 R26
     6082 SETTABLEKS                       R22 R21 K374 ["passName"]
     6084 CALL                             R19 2 1
     6085 SETTABLEKS                       R19 R18 K24 ["translation"]
     6087 GETTABLEKS                       R19 R2 K14 ["userId"]
     6089 SETTABLEKS                       R19 R18 K25 ["actorId"]
     6091 MOVE                             R19 R0
     6092 GETTABLEKS                       R20 R2 K14 ["userId"]
     6094 CALL                             R19 1 1
     6095 SETTABLEKS                       R19 R18 K26 ["actorName"]
     6097 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     6099 ORK                              R19 R20 K18 [0]
     6100 SETTABLEKS                       R19 R18 K29 ["iconId"]
     6102 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6104 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6106 GETTABLEKS                       R19 R2 K30 ["headerText"]
     6108 SETTABLEKS                       R19 R18 K30 ["headerText"]
     6110 GETTABLEKS                       R19 R2 K31 ["footerText"]
     6112 SETTABLEKS                       R19 R18 K31 ["footerText"]
     6114 LOADK                            R20 K44 [""]
     6115 FASTCALL1                        TOSTRING R4 ; [+3]
     6116 MOVE                             R22 R4
     6117 GETIMPORT                        R21 K4 [tostring]
     6119 CALL                             R21 1 1
     6120 LOADK                            R22 K279 ["/localization/translation"]
     6121 CONCAT                           R19 R20 R22
     6122 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     6124 LOADK                            R20 K44 [""]
     6125 GETUPVAL                         R22 1
     6126 FASTCALL1                        TOSTRING R22 ; [+2]
     6127 GETIMPORT                        R21 K4 [tostring]
     6129 CALL                             R21 1 1
     6130 LOADK                            R22 K377 ["game-pass/"]
     6131 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     6133 FASTCALL1                        TOSTRING R24 ; [+2]
     6134 GETIMPORT                        R23 K4 [tostring]
     6136 CALL                             R23 1 1
     6137 LOADK                            R24 K44 [""]
     6138 CONCAT                           R19 R20 R24
     6139 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     6141 RETURN                           R18 1
     6142 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6144 JUMPIFNOTEQKN                    R18 K390 [64] ; [+86]
     6146 DUPTABLE                         R18 K393 [{["id"], ["eventType"] = "UserTranslator", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "User", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     6147 GETTABLEKS                       R19 R2 K19 ["id"]
     6149 SETTABLEKS                       R19 R18 K19 ["id"]
     6151 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     6153 NEWCLOSURE                       R22 P6
     6154 CAPTURE                          VAL R20
     6155 CAPTURE                          VAL R3
     6156 FASTPCALL                        pcall 1 ; [+2]
     6157 GETIMPORT                        R21 K35 [pcall]
     6159 CALL                             R21 1 2
     6160 JUMPIFNOT                        R21 ; [+2]
     6161 MOVE                             R19 R22
     6162 JUMP                             ; [+1]
     6163 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     6164 SETTABLEKS                       R19 R18 K23 ["date"]
     6166 MOVE                             R19 R12
     6167 LOADK                            R20 K394 ["Description.UserTranslator"]
     6168 DUPTABLE                         R21 K396 [{"userName"}]
     6169 MOVE                             R23 R0
     6170 GETTABLEKS                       R25 R2 K8 ["resourceId"]
     6172 JUMPIFNOT                        R25 ; [+3]
     6173 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     6175 JUMPIF                           R24 ; [+1]
     6176 LOADN                            R24 -1
     6177 CALL                             R23 1 1
     6178 LOADK                            R24 K44 [""]
     6179 FASTCALL1                        TOSTRING R23 ; [+3]
     6180 MOVE                             R26 R23
     6181 GETIMPORT                        R25 K4 [tostring]
     6183 CALL                             R25 1 1
     6184 LOADK                            R26 K44 [""]
     6185 CONCAT                           R22 R24 R26
     6186 SETTABLEKS                       R22 R21 K395 ["userName"]
     6188 CALL                             R19 2 1
     6189 SETTABLEKS                       R19 R18 K24 ["translation"]
     6191 GETTABLEKS                       R19 R2 K14 ["userId"]
     6193 SETTABLEKS                       R19 R18 K25 ["actorId"]
     6195 MOVE                             R19 R0
     6196 GETTABLEKS                       R20 R2 K14 ["userId"]
     6198 CALL                             R19 1 1
     6199 SETTABLEKS                       R19 R18 K26 ["actorName"]
     6201 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     6203 ORK                              R19 R20 K18 [0]
     6204 SETTABLEKS                       R19 R18 K29 ["iconId"]
     6206 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6208 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6210 GETTABLEKS                       R19 R2 K30 ["headerText"]
     6212 SETTABLEKS                       R19 R18 K30 ["headerText"]
     6214 GETTABLEKS                       R19 R2 K31 ["footerText"]
     6216 SETTABLEKS                       R19 R18 K31 ["footerText"]
     6218 LOADK                            R20 K44 [""]
     6219 FASTCALL1                        TOSTRING R4 ; [+3]
     6220 MOVE                             R22 R4
     6221 GETIMPORT                        R21 K4 [tostring]
     6223 CALL                             R21 1 1
     6224 LOADK                            R22 K248 ["/localization"]
     6225 CONCAT                           R19 R20 R22
     6226 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     6228 SETTABLEKS                       R10 R18 K273 ["viewOnRobloxLink"]
     6230 RETURN                           R18 1
     6231 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6233 JUMPIFNOTEQKN                    R18 K397 [65] ; [+86]
     6235 DUPTABLE                         R18 K400 [{["id"], ["eventType"] = "GroupTranslator", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     6236 GETTABLEKS                       R19 R2 K19 ["id"]
     6238 SETTABLEKS                       R19 R18 K19 ["id"]
     6240 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     6242 NEWCLOSURE                       R22 P6
     6243 CAPTURE                          VAL R20
     6244 CAPTURE                          VAL R3
     6245 FASTPCALL                        pcall 1 ; [+2]
     6246 GETIMPORT                        R21 K35 [pcall]
     6248 CALL                             R21 1 2
     6249 JUMPIFNOT                        R21 ; [+2]
     6250 MOVE                             R19 R22
     6251 JUMP                             ; [+1]
     6252 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     6253 SETTABLEKS                       R19 R18 K23 ["date"]
     6255 MOVE                             R19 R12
     6256 LOADK                            R20 K401 ["Description.GroupTranslator"]
     6257 DUPTABLE                         R21 K403 [{"groupName"}]
     6258 GETTABLEKS                       R24 R2 K42 ["metaData"]
     6260 JUMPIFNOT                        R24 ; [+5]
     6261 GETTABLEKS                       R24 R2 K42 ["metaData"]
     6263 GETTABLEKS                       R23 R24 K404 ["GroupName"]
     6265 JUMPIF                           R23 ; [+1]
     6266 LOADK                            R23 K44 [""]
     6267 LOADK                            R24 K44 [""]
     6268 FASTCALL1                        TOSTRING R23 ; [+3]
     6269 MOVE                             R26 R23
     6270 GETIMPORT                        R25 K4 [tostring]
     6272 CALL                             R25 1 1
     6273 LOADK                            R26 K44 [""]
     6274 CONCAT                           R22 R24 R26
     6275 SETTABLEKS                       R22 R21 K402 ["groupName"]
     6277 CALL                             R19 2 1
     6278 SETTABLEKS                       R19 R18 K24 ["translation"]
     6280 GETTABLEKS                       R19 R2 K14 ["userId"]
     6282 SETTABLEKS                       R19 R18 K25 ["actorId"]
     6284 MOVE                             R19 R0
     6285 GETTABLEKS                       R20 R2 K14 ["userId"]
     6287 CALL                             R19 1 1
     6288 SETTABLEKS                       R19 R18 K26 ["actorName"]
     6290 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     6292 ORK                              R19 R20 K18 [0]
     6293 SETTABLEKS                       R19 R18 K29 ["iconId"]
     6295 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6297 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6299 GETTABLEKS                       R19 R2 K30 ["headerText"]
     6301 SETTABLEKS                       R19 R18 K30 ["headerText"]
     6303 GETTABLEKS                       R19 R2 K31 ["footerText"]
     6305 SETTABLEKS                       R19 R18 K31 ["footerText"]
     6307 LOADK                            R20 K44 [""]
     6308 FASTCALL1                        TOSTRING R4 ; [+3]
     6309 MOVE                             R22 R4
     6310 GETIMPORT                        R21 K4 [tostring]
     6312 CALL                             R21 1 1
     6313 LOADK                            R22 K248 ["/localization"]
     6314 CONCAT                           R19 R20 R22
     6315 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     6317 SETTABLEKS                       R11 R18 K273 ["viewOnRobloxLink"]
     6319 RETURN                           R18 1
     6320 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6322 JUMPIFNOTEQKN                    R18 K405 [66] ; [+94]
     6324 DUPTABLE                         R18 K408 [{["id"], ["eventType"] = "ExperienceAdvertisement", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     6325 GETTABLEKS                       R19 R2 K19 ["id"]
     6327 SETTABLEKS                       R19 R18 K19 ["id"]
     6329 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     6331 NEWCLOSURE                       R22 P6
     6332 CAPTURE                          VAL R20
     6333 CAPTURE                          VAL R3
     6334 FASTPCALL                        pcall 1 ; [+2]
     6335 GETIMPORT                        R21 K35 [pcall]
     6337 CALL                             R21 1 2
     6338 JUMPIFNOT                        R21 ; [+2]
     6339 MOVE                             R19 R22
     6340 JUMP                             ; [+1]
     6341 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     6342 SETTABLEKS                       R19 R18 K23 ["date"]
     6344 MOVE                             R19 R12
     6345 LOADK                            R20 K409 ["Description.ExperienceAdvertisement"]
     6346 DUPTABLE                         R21 K157 [{"action"}]
     6347 GETTABLEKS                       R26 R2 K42 ["metaData"]
     6349 JUMPIFNOT                        R26 ; [+5]
     6350 GETTABLEKS                       R26 R2 K42 ["metaData"]
     6352 GETTABLEKS                       R25 R26 K43 ["Action"]
     6354 JUMPIF                           R25 ; [+1]
     6355 LOADK                            R25 K44 [""]
     6356 GETIMPORT                        R26 K47 [string.lower]
     6358 FASTCALL1                        TOSTRING R25 ; [+3]
     6359 MOVE                             R28 R25
     6360 GETIMPORT                        R27 K4 [tostring]
     6362 CALL                             R27 1 1
     6363 CALL                             R26 1 1
     6364 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     6366 LOADB                            R24 1
     6367 JUMP                             ; [+1]
     6368 LOADB                            R24 0
     6369 JUMPIFNOT                        R24 ; [+4]
     6370 MOVE                             R23 R12
     6371 LOADK                            R24 K410 ["Description.ActionCreated"]
     6372 CALL                             R23 1 1
     6373 JUMPIF                           R23 ; [+3]
     6374 MOVE                             R23 R12
     6375 LOADK                            R24 K247 ["Description.ActionRemoved"]
     6376 CALL                             R23 1 1
     6377 LOADK                            R24 K44 [""]
     6378 FASTCALL1                        TOSTRING R23 ; [+3]
     6379 MOVE                             R26 R23
     6380 GETIMPORT                        R25 K4 [tostring]
     6382 CALL                             R25 1 1
     6383 LOADK                            R26 K44 [""]
     6384 CONCAT                           R22 R24 R26
     6385 SETTABLEKS                       R22 R21 K156 ["action"]
     6387 CALL                             R19 2 1
     6388 SETTABLEKS                       R19 R18 K24 ["translation"]
     6390 GETTABLEKS                       R19 R2 K14 ["userId"]
     6392 SETTABLEKS                       R19 R18 K25 ["actorId"]
     6394 MOVE                             R19 R0
     6395 GETTABLEKS                       R20 R2 K14 ["userId"]
     6397 CALL                             R19 1 1
     6398 SETTABLEKS                       R19 R18 K26 ["actorName"]
     6400 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6402 SETTABLEKS                       R19 R18 K29 ["iconId"]
     6404 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6406 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6408 GETTABLEKS                       R19 R2 K30 ["headerText"]
     6410 SETTABLEKS                       R19 R18 K30 ["headerText"]
     6412 GETTABLEKS                       R19 R2 K31 ["footerText"]
     6414 SETTABLEKS                       R19 R18 K31 ["footerText"]
     6416 RETURN                           R18 1
     6417 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6419 JUMPIFNOTEQKN                    R18 K411 [67] ; [+104]
     6421 DUPTABLE                         R18 K413 [{["id"], ["eventType"] = "MonetizationSettingsAccessType", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     6422 GETTABLEKS                       R19 R2 K19 ["id"]
     6424 SETTABLEKS                       R19 R18 K19 ["id"]
     6426 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     6428 NEWCLOSURE                       R22 P6
     6429 CAPTURE                          VAL R20
     6430 CAPTURE                          VAL R3
     6431 FASTPCALL                        pcall 1 ; [+2]
     6432 GETIMPORT                        R21 K35 [pcall]
     6434 CALL                             R21 1 2
     6435 JUMPIFNOT                        R21 ; [+2]
     6436 MOVE                             R19 R22
     6437 JUMP                             ; [+1]
     6438 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     6439 SETTABLEKS                       R19 R18 K23 ["date"]
     6441 MOVE                             R19 R12
     6442 LOADK                            R20 K414 ["Description.MonetizationSettingsAccessType"]
     6443 DUPTABLE                         R21 K157 [{"action"}]
     6444 GETTABLEKS                       R26 R2 K42 ["metaData"]
     6446 JUMPIFNOT                        R26 ; [+5]
     6447 GETTABLEKS                       R26 R2 K42 ["metaData"]
     6449 GETTABLEKS                       R25 R26 K43 ["Action"]
     6451 JUMPIF                           R25 ; [+1]
     6452 LOADK                            R25 K44 [""]
     6453 GETIMPORT                        R26 K47 [string.lower]
     6455 FASTCALL1                        TOSTRING R25 ; [+3]
     6456 MOVE                             R28 R25
     6457 GETIMPORT                        R27 K4 [tostring]
     6459 CALL                             R27 1 1
     6460 CALL                             R26 1 1
     6461 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     6463 LOADB                            R24 1
     6464 JUMP                             ; [+1]
     6465 LOADB                            R24 0
     6466 JUMPIFNOT                        R24 ; [+4]
     6467 MOVE                             R23 R12
     6468 LOADK                            R24 K63 ["Description.ActionFriends"]
     6469 CALL                             R23 1 1
     6470 JUMPIF                           R23 ; [+3]
     6471 MOVE                             R23 R12
     6472 LOADK                            R24 K60 ["Description.ActionPublic"]
     6473 CALL                             R23 1 1
     6474 LOADK                            R24 K44 [""]
     6475 FASTCALL1                        TOSTRING R23 ; [+3]
     6476 MOVE                             R26 R23
     6477 GETIMPORT                        R25 K4 [tostring]
     6479 CALL                             R25 1 1
     6480 LOADK                            R26 K44 [""]
     6481 CONCAT                           R22 R24 R26
     6482 SETTABLEKS                       R22 R21 K156 ["action"]
     6484 CALL                             R19 2 1
     6485 SETTABLEKS                       R19 R18 K24 ["translation"]
     6487 GETTABLEKS                       R19 R2 K14 ["userId"]
     6489 SETTABLEKS                       R19 R18 K25 ["actorId"]
     6491 MOVE                             R19 R0
     6492 GETTABLEKS                       R20 R2 K14 ["userId"]
     6494 CALL                             R19 1 1
     6495 SETTABLEKS                       R19 R18 K26 ["actorName"]
     6497 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6499 SETTABLEKS                       R19 R18 K29 ["iconId"]
     6501 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6503 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6505 GETTABLEKS                       R19 R2 K30 ["headerText"]
     6507 SETTABLEKS                       R19 R18 K30 ["headerText"]
     6509 GETTABLEKS                       R19 R2 K31 ["footerText"]
     6511 SETTABLEKS                       R19 R18 K31 ["footerText"]
     6513 LOADK                            R20 K44 [""]
     6514 FASTCALL1                        TOSTRING R4 ; [+3]
     6515 MOVE                             R22 R4
     6516 GETIMPORT                        R21 K4 [tostring]
     6518 CALL                             R21 1 1
     6519 LOADK                            R22 K415 ["/access"]
     6520 CONCAT                           R19 R20 R22
     6521 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     6523 RETURN                           R18 1
     6524 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6526 JUMPIFNOTEQKN                    R18 K416 [68] ; [+104]
     6528 DUPTABLE                         R18 K418 [{["id"], ["eventType"] = "MonetizationSettingsRequiresRobux", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     6529 GETTABLEKS                       R19 R2 K19 ["id"]
     6531 SETTABLEKS                       R19 R18 K19 ["id"]
     6533 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     6535 NEWCLOSURE                       R22 P6
     6536 CAPTURE                          VAL R20
     6537 CAPTURE                          VAL R3
     6538 FASTPCALL                        pcall 1 ; [+2]
     6539 GETIMPORT                        R21 K35 [pcall]
     6541 CALL                             R21 1 2
     6542 JUMPIFNOT                        R21 ; [+2]
     6543 MOVE                             R19 R22
     6544 JUMP                             ; [+1]
     6545 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     6546 SETTABLEKS                       R19 R18 K23 ["date"]
     6548 MOVE                             R19 R12
     6549 LOADK                            R20 K419 ["Description.MonetizationSettingsRequiresRobux"]
     6550 DUPTABLE                         R21 K157 [{"action"}]
     6551 GETTABLEKS                       R26 R2 K42 ["metaData"]
     6553 JUMPIFNOT                        R26 ; [+5]
     6554 GETTABLEKS                       R26 R2 K42 ["metaData"]
     6556 GETTABLEKS                       R25 R26 K43 ["Action"]
     6558 JUMPIF                           R25 ; [+1]
     6559 LOADK                            R25 K44 [""]
     6560 GETIMPORT                        R26 K47 [string.lower]
     6562 FASTCALL1                        TOSTRING R25 ; [+3]
     6563 MOVE                             R28 R25
     6564 GETIMPORT                        R27 K4 [tostring]
     6566 CALL                             R27 1 1
     6567 CALL                             R26 1 1
     6568 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     6570 LOADB                            R24 1
     6571 JUMP                             ; [+1]
     6572 LOADB                            R24 0
     6573 JUMPIFNOT                        R24 ; [+4]
     6574 MOVE                             R23 R12
     6575 LOADK                            R24 K158 ["Description.ActionEnabled"]
     6576 CALL                             R23 1 1
     6577 JUMPIF                           R23 ; [+3]
     6578 MOVE                             R23 R12
     6579 LOADK                            R24 K159 ["Description.ActionDisabled"]
     6580 CALL                             R23 1 1
     6581 LOADK                            R24 K44 [""]
     6582 FASTCALL1                        TOSTRING R23 ; [+3]
     6583 MOVE                             R26 R23
     6584 GETIMPORT                        R25 K4 [tostring]
     6586 CALL                             R25 1 1
     6587 LOADK                            R26 K44 [""]
     6588 CONCAT                           R22 R24 R26
     6589 SETTABLEKS                       R22 R21 K156 ["action"]
     6591 CALL                             R19 2 1
     6592 SETTABLEKS                       R19 R18 K24 ["translation"]
     6594 GETTABLEKS                       R19 R2 K14 ["userId"]
     6596 SETTABLEKS                       R19 R18 K25 ["actorId"]
     6598 MOVE                             R19 R0
     6599 GETTABLEKS                       R20 R2 K14 ["userId"]
     6601 CALL                             R19 1 1
     6602 SETTABLEKS                       R19 R18 K26 ["actorName"]
     6604 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6606 SETTABLEKS                       R19 R18 K29 ["iconId"]
     6608 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6610 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6612 GETTABLEKS                       R19 R2 K30 ["headerText"]
     6614 SETTABLEKS                       R19 R18 K30 ["headerText"]
     6616 GETTABLEKS                       R19 R2 K31 ["footerText"]
     6618 SETTABLEKS                       R19 R18 K31 ["footerText"]
     6620 LOADK                            R20 K44 [""]
     6621 FASTCALL1                        TOSTRING R4 ; [+3]
     6622 MOVE                             R22 R4
     6623 GETIMPORT                        R21 K4 [tostring]
     6625 CALL                             R21 1 1
     6626 LOADK                            R22 K415 ["/access"]
     6627 CONCAT                           R19 R20 R22
     6628 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     6630 RETURN                           R18 1
     6631 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6633 JUMPIFNOTEQKN                    R18 K420 [69] ; [+83]
     6635 DUPTABLE                         R18 K422 [{["id"], ["eventType"] = "MonetizationSettingsRobuxPrice", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     6636 GETTABLEKS                       R19 R2 K19 ["id"]
     6638 SETTABLEKS                       R19 R18 K19 ["id"]
     6640 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     6642 NEWCLOSURE                       R22 P6
     6643 CAPTURE                          VAL R20
     6644 CAPTURE                          VAL R3
     6645 FASTPCALL                        pcall 1 ; [+2]
     6646 GETIMPORT                        R21 K35 [pcall]
     6648 CALL                             R21 1 2
     6649 JUMPIFNOT                        R21 ; [+2]
     6650 MOVE                             R19 R22
     6651 JUMP                             ; [+1]
     6652 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     6653 SETTABLEKS                       R19 R18 K23 ["date"]
     6655 MOVE                             R19 R12
     6656 LOADK                            R20 K423 ["Description.MonetizationSettingsRobuxPrice"]
     6657 DUPTABLE                         R21 K425 [{"price"}]
     6658 GETTABLEKS                       R24 R2 K42 ["metaData"]
     6660 JUMPIFNOT                        R24 ; [+5]
     6661 GETTABLEKS                       R24 R2 K42 ["metaData"]
     6663 GETTABLEKS                       R23 R24 K426 ["Price"]
     6665 JUMPIF                           R23 ; [+1]
     6666 LOADK                            R23 K44 [""]
     6667 LOADK                            R24 K44 [""]
     6668 FASTCALL1                        TOSTRING R23 ; [+3]
     6669 MOVE                             R26 R23
     6670 GETIMPORT                        R25 K4 [tostring]
     6672 CALL                             R25 1 1
     6673 LOADK                            R26 K44 [""]
     6674 CONCAT                           R22 R24 R26
     6675 SETTABLEKS                       R22 R21 K424 ["price"]
     6677 CALL                             R19 2 1
     6678 SETTABLEKS                       R19 R18 K24 ["translation"]
     6680 GETTABLEKS                       R19 R2 K14 ["userId"]
     6682 SETTABLEKS                       R19 R18 K25 ["actorId"]
     6684 MOVE                             R19 R0
     6685 GETTABLEKS                       R20 R2 K14 ["userId"]
     6687 CALL                             R19 1 1
     6688 SETTABLEKS                       R19 R18 K26 ["actorName"]
     6690 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6692 SETTABLEKS                       R19 R18 K29 ["iconId"]
     6694 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6696 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6698 GETTABLEKS                       R19 R2 K30 ["headerText"]
     6700 SETTABLEKS                       R19 R18 K30 ["headerText"]
     6702 GETTABLEKS                       R19 R2 K31 ["footerText"]
     6704 SETTABLEKS                       R19 R18 K31 ["footerText"]
     6706 LOADK                            R20 K44 [""]
     6707 FASTCALL1                        TOSTRING R4 ; [+3]
     6708 MOVE                             R22 R4
     6709 GETIMPORT                        R21 K4 [tostring]
     6711 CALL                             R21 1 1
     6712 LOADK                            R22 K415 ["/access"]
     6713 CONCAT                           R19 R20 R22
     6714 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     6716 RETURN                           R18 1
     6717 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6719 JUMPIFNOTEQKN                    R18 K427 [70] ; [+75]
     6721 DUPTABLE                         R18 K429 [{["id"], ["eventType"] = "MonetizationSettingsPlayableDevices", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     6722 GETTABLEKS                       R19 R2 K19 ["id"]
     6724 SETTABLEKS                       R19 R18 K19 ["id"]
     6726 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     6728 NEWCLOSURE                       R22 P6
     6729 CAPTURE                          VAL R20
     6730 CAPTURE                          VAL R3
     6731 FASTPCALL                        pcall 1 ; [+2]
     6732 GETIMPORT                        R21 K35 [pcall]
     6734 CALL                             R21 1 2
     6735 JUMPIFNOT                        R21 ; [+2]
     6736 MOVE                             R19 R22
     6737 JUMP                             ; [+1]
     6738 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     6739 SETTABLEKS                       R19 R18 K23 ["date"]
     6741 GETTABLEKS                       R20 R2 K42 ["metaData"]
     6743 LOADK                            R21 K44 [""]
     6744 NEWCLOSURE                       R23 P7
     6745 CAPTURE                          VAL R20
     6746 CAPTURE                          UPVAL U3
     6747 CAPTURE                          UPVAL U4
     6748 CAPTURE                          VAL R12
     6749 CAPTURE                          REF R21
     6750 FASTPCALL                        pcall 1 ; [+2]
     6751 GETIMPORT                        R22 K35 [pcall]
     6753 CALL                             R22 1 2
     6754 MOVE                             R19 R21
     6755 CLOSEUPVALS                      R21
     6756 SETTABLEKS                       R19 R18 K24 ["translation"]
     6758 GETTABLEKS                       R19 R2 K14 ["userId"]
     6760 SETTABLEKS                       R19 R18 K25 ["actorId"]
     6762 MOVE                             R19 R0
     6763 GETTABLEKS                       R20 R2 K14 ["userId"]
     6765 CALL                             R19 1 1
     6766 SETTABLEKS                       R19 R18 K26 ["actorName"]
     6768 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6770 SETTABLEKS                       R19 R18 K29 ["iconId"]
     6772 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6774 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6776 GETTABLEKS                       R19 R2 K30 ["headerText"]
     6778 SETTABLEKS                       R19 R18 K30 ["headerText"]
     6780 GETTABLEKS                       R19 R2 K31 ["footerText"]
     6782 SETTABLEKS                       R19 R18 K31 ["footerText"]
     6784 LOADK                            R20 K44 [""]
     6785 FASTCALL1                        TOSTRING R4 ; [+3]
     6786 MOVE                             R22 R4
     6787 GETIMPORT                        R21 K4 [tostring]
     6789 CALL                             R21 1 1
     6790 LOADK                            R22 K415 ["/access"]
     6791 CONCAT                           R19 R20 R22
     6792 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     6794 RETURN                           R18 1
     6795 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6797 JUMPIFNOTEQKN                    R18 K430 [71] ; [+104]
     6799 DUPTABLE                         R18 K432 [{["id"], ["eventType"] = "MonetizationSettingsAllowPrivateServers", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     6800 GETTABLEKS                       R19 R2 K19 ["id"]
     6802 SETTABLEKS                       R19 R18 K19 ["id"]
     6804 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     6806 NEWCLOSURE                       R22 P6
     6807 CAPTURE                          VAL R20
     6808 CAPTURE                          VAL R3
     6809 FASTPCALL                        pcall 1 ; [+2]
     6810 GETIMPORT                        R21 K35 [pcall]
     6812 CALL                             R21 1 2
     6813 JUMPIFNOT                        R21 ; [+2]
     6814 MOVE                             R19 R22
     6815 JUMP                             ; [+1]
     6816 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     6817 SETTABLEKS                       R19 R18 K23 ["date"]
     6819 MOVE                             R19 R12
     6820 LOADK                            R20 K433 ["Description.MonetizationSettingsAllowPrivateServers"]
     6821 DUPTABLE                         R21 K157 [{"action"}]
     6822 GETTABLEKS                       R26 R2 K42 ["metaData"]
     6824 JUMPIFNOT                        R26 ; [+5]
     6825 GETTABLEKS                       R26 R2 K42 ["metaData"]
     6827 GETTABLEKS                       R25 R26 K43 ["Action"]
     6829 JUMPIF                           R25 ; [+1]
     6830 LOADK                            R25 K44 [""]
     6831 GETIMPORT                        R26 K47 [string.lower]
     6833 FASTCALL1                        TOSTRING R25 ; [+3]
     6834 MOVE                             R28 R25
     6835 GETIMPORT                        R27 K4 [tostring]
     6837 CALL                             R27 1 1
     6838 CALL                             R26 1 1
     6839 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     6841 LOADB                            R24 1
     6842 JUMP                             ; [+1]
     6843 LOADB                            R24 0
     6844 JUMPIFNOT                        R24 ; [+4]
     6845 MOVE                             R23 R12
     6846 LOADK                            R24 K158 ["Description.ActionEnabled"]
     6847 CALL                             R23 1 1
     6848 JUMPIF                           R23 ; [+3]
     6849 MOVE                             R23 R12
     6850 LOADK                            R24 K159 ["Description.ActionDisabled"]
     6851 CALL                             R23 1 1
     6852 LOADK                            R24 K44 [""]
     6853 FASTCALL1                        TOSTRING R23 ; [+3]
     6854 MOVE                             R26 R23
     6855 GETIMPORT                        R25 K4 [tostring]
     6857 CALL                             R25 1 1
     6858 LOADK                            R26 K44 [""]
     6859 CONCAT                           R22 R24 R26
     6860 SETTABLEKS                       R22 R21 K156 ["action"]
     6862 CALL                             R19 2 1
     6863 SETTABLEKS                       R19 R18 K24 ["translation"]
     6865 GETTABLEKS                       R19 R2 K14 ["userId"]
     6867 SETTABLEKS                       R19 R18 K25 ["actorId"]
     6869 MOVE                             R19 R0
     6870 GETTABLEKS                       R20 R2 K14 ["userId"]
     6872 CALL                             R19 1 1
     6873 SETTABLEKS                       R19 R18 K26 ["actorName"]
     6875 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6877 SETTABLEKS                       R19 R18 K29 ["iconId"]
     6879 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6881 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6883 GETTABLEKS                       R19 R2 K30 ["headerText"]
     6885 SETTABLEKS                       R19 R18 K30 ["headerText"]
     6887 GETTABLEKS                       R19 R2 K31 ["footerText"]
     6889 SETTABLEKS                       R19 R18 K31 ["footerText"]
     6891 LOADK                            R20 K44 [""]
     6892 FASTCALL1                        TOSTRING R4 ; [+3]
     6893 MOVE                             R22 R4
     6894 GETIMPORT                        R21 K4 [tostring]
     6896 CALL                             R21 1 1
     6897 LOADK                            R22 K415 ["/access"]
     6898 CONCAT                           R19 R20 R22
     6899 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     6901 RETURN                           R18 1
     6902 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6904 JUMPIFNOTEQKN                    R18 K434 [72] ; [+83]
     6906 DUPTABLE                         R18 K436 [{["id"], ["eventType"] = "MonetizationSettingsPrivateServerPrice", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     6907 GETTABLEKS                       R19 R2 K19 ["id"]
     6909 SETTABLEKS                       R19 R18 K19 ["id"]
     6911 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     6913 NEWCLOSURE                       R22 P6
     6914 CAPTURE                          VAL R20
     6915 CAPTURE                          VAL R3
     6916 FASTPCALL                        pcall 1 ; [+2]
     6917 GETIMPORT                        R21 K35 [pcall]
     6919 CALL                             R21 1 2
     6920 JUMPIFNOT                        R21 ; [+2]
     6921 MOVE                             R19 R22
     6922 JUMP                             ; [+1]
     6923 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     6924 SETTABLEKS                       R19 R18 K23 ["date"]
     6926 MOVE                             R19 R12
     6927 LOADK                            R20 K437 ["Description.MonetizationSettingsPrivateServerPrice"]
     6928 DUPTABLE                         R21 K425 [{"price"}]
     6929 GETTABLEKS                       R24 R2 K42 ["metaData"]
     6931 JUMPIFNOT                        R24 ; [+5]
     6932 GETTABLEKS                       R24 R2 K42 ["metaData"]
     6934 GETTABLEKS                       R23 R24 K426 ["Price"]
     6936 JUMPIF                           R23 ; [+1]
     6937 LOADK                            R23 K44 [""]
     6938 LOADK                            R24 K44 [""]
     6939 FASTCALL1                        TOSTRING R23 ; [+3]
     6940 MOVE                             R26 R23
     6941 GETIMPORT                        R25 K4 [tostring]
     6943 CALL                             R25 1 1
     6944 LOADK                            R26 K44 [""]
     6945 CONCAT                           R22 R24 R26
     6946 SETTABLEKS                       R22 R21 K424 ["price"]
     6948 CALL                             R19 2 1
     6949 SETTABLEKS                       R19 R18 K24 ["translation"]
     6951 GETTABLEKS                       R19 R2 K14 ["userId"]
     6953 SETTABLEKS                       R19 R18 K25 ["actorId"]
     6955 MOVE                             R19 R0
     6956 GETTABLEKS                       R20 R2 K14 ["userId"]
     6958 CALL                             R19 1 1
     6959 SETTABLEKS                       R19 R18 K26 ["actorName"]
     6961 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6963 SETTABLEKS                       R19 R18 K29 ["iconId"]
     6965 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6967 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6969 GETTABLEKS                       R19 R2 K30 ["headerText"]
     6971 SETTABLEKS                       R19 R18 K30 ["headerText"]
     6973 GETTABLEKS                       R19 R2 K31 ["footerText"]
     6975 SETTABLEKS                       R19 R18 K31 ["footerText"]
     6977 LOADK                            R20 K44 [""]
     6978 FASTCALL1                        TOSTRING R4 ; [+3]
     6979 MOVE                             R22 R4
     6980 GETIMPORT                        R21 K4 [tostring]
     6982 CALL                             R21 1 1
     6983 LOADK                            R22 K415 ["/access"]
     6984 CONCAT                           R19 R20 R22
     6985 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     6987 RETURN                           R18 1
     6988 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6990 JUMPIFNOTEQKN                    R18 K438 [73] ; [+130]
     6992 DUPTABLE                         R18 K440 [{["id"], ["eventType"] = "ExperienceSponsor", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewOnRobloxLink"]}]
     6993 GETTABLEKS                       R19 R2 K19 ["id"]
     6995 SETTABLEKS                       R19 R18 K19 ["id"]
     6997 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     6999 NEWCLOSURE                       R22 P6
     7000 CAPTURE                          VAL R20
     7001 CAPTURE                          VAL R3
     7002 FASTPCALL                        pcall 1 ; [+2]
     7003 GETIMPORT                        R21 K35 [pcall]
     7005 CALL                             R21 1 2
     7006 JUMPIFNOT                        R21 ; [+2]
     7007 MOVE                             R19 R22
     7008 JUMP                             ; [+1]
     7009 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     7010 SETTABLEKS                       R19 R18 K23 ["date"]
     7012 MOVE                             R19 R12
     7013 LOADK                            R20 K441 ["Description.ExperienceSponsor"]
     7014 DUPTABLE                         R21 K443 [{"adName", "action"}]
     7015 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7017 JUMPIFNOT                        R24 ; [+5]
     7018 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7020 GETTABLEKS                       R23 R24 K444 ["AdName"]
     7022 JUMPIF                           R23 ; [+1]
     7023 LOADK                            R23 K44 [""]
     7024 LOADK                            R24 K44 [""]
     7025 FASTCALL1                        TOSTRING R23 ; [+3]
     7026 MOVE                             R26 R23
     7027 GETIMPORT                        R25 K4 [tostring]
     7029 CALL                             R25 1 1
     7030 LOADK                            R26 K44 [""]
     7031 CONCAT                           R22 R24 R26
     7032 SETTABLEKS                       R22 R21 K442 ["adName"]
     7034 GETTABLEKS                       R26 R2 K42 ["metaData"]
     7036 JUMPIFNOT                        R26 ; [+5]
     7037 GETTABLEKS                       R26 R2 K42 ["metaData"]
     7039 GETTABLEKS                       R25 R26 K43 ["Action"]
     7041 JUMPIF                           R25 ; [+1]
     7042 LOADK                            R25 K44 [""]
     7043 GETIMPORT                        R26 K47 [string.lower]
     7045 FASTCALL1                        TOSTRING R25 ; [+3]
     7046 MOVE                             R28 R25
     7047 GETIMPORT                        R27 K4 [tostring]
     7049 CALL                             R27 1 1
     7050 CALL                             R26 1 1
     7051 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     7053 LOADB                            R24 1
     7054 JUMP                             ; [+1]
     7055 LOADB                            R24 0
     7056 JUMPIFNOT                        R24 ; [+4]
     7057 MOVE                             R23 R12
     7058 LOADK                            R24 K445 ["Description.ActionLaunched"]
     7059 CALL                             R23 1 1
     7060 JUMPIF                           R23 ; [+3]
     7061 MOVE                             R23 R12
     7062 LOADK                            R24 K446 ["Description.ActionDiscontinued"]
     7063 CALL                             R23 1 1
     7064 LOADK                            R24 K44 [""]
     7065 FASTCALL1                        TOSTRING R23 ; [+3]
     7066 MOVE                             R26 R23
     7067 GETIMPORT                        R25 K4 [tostring]
     7069 CALL                             R25 1 1
     7070 LOADK                            R26 K44 [""]
     7071 CONCAT                           R22 R24 R26
     7072 SETTABLEKS                       R22 R21 K156 ["action"]
     7074 CALL                             R19 2 1
     7075 SETTABLEKS                       R19 R18 K24 ["translation"]
     7077 GETTABLEKS                       R19 R2 K14 ["userId"]
     7079 SETTABLEKS                       R19 R18 K25 ["actorId"]
     7081 MOVE                             R19 R0
     7082 GETTABLEKS                       R20 R2 K14 ["userId"]
     7084 CALL                             R19 1 1
     7085 SETTABLEKS                       R19 R18 K26 ["actorName"]
     7087 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7089 SETTABLEKS                       R19 R18 K29 ["iconId"]
     7091 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7093 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7095 GETTABLEKS                       R19 R2 K30 ["headerText"]
     7097 SETTABLEKS                       R19 R18 K30 ["headerText"]
     7099 GETTABLEKS                       R19 R2 K31 ["footerText"]
     7101 SETTABLEKS                       R19 R18 K31 ["footerText"]
     7103 LOADK                            R20 K44 [""]
     7104 GETUPVAL                         R22 1
     7105 FASTCALL1                        TOSTRING R22 ; [+2]
     7106 GETIMPORT                        R21 K4 [tostring]
     7108 CALL                             R21 1 1
     7109 LOADK                            R22 K447 ["sponsorships/list?universeId="]
     7110 GETTABLEKS                       R24 R2 K2 ["universeId"]
     7112 FASTCALL1                        TOSTRING R24 ; [+2]
     7113 GETIMPORT                        R23 K4 [tostring]
     7115 CALL                             R23 1 1
     7116 LOADK                            R24 K44 [""]
     7117 CONCAT                           R19 R20 R24
     7118 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     7120 RETURN                           R18 1
     7121 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7123 JUMPIFNOTEQKN                    R18 K448 [74] ; [+127]
     7125 DUPTABLE                         R18 K449 [{["id"], ["eventType"] = "BadgeName", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Badge", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     7126 GETTABLEKS                       R19 R2 K19 ["id"]
     7128 SETTABLEKS                       R19 R18 K19 ["id"]
     7130 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     7132 NEWCLOSURE                       R22 P6
     7133 CAPTURE                          VAL R20
     7134 CAPTURE                          VAL R3
     7135 FASTPCALL                        pcall 1 ; [+2]
     7136 GETIMPORT                        R21 K35 [pcall]
     7138 CALL                             R21 1 2
     7139 JUMPIFNOT                        R21 ; [+2]
     7140 MOVE                             R19 R22
     7141 JUMP                             ; [+1]
     7142 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     7143 SETTABLEKS                       R19 R18 K23 ["date"]
     7145 MOVE                             R19 R12
     7146 LOADK                            R20 K450 ["Description.BadgeName"]
     7147 DUPTABLE                         R21 K138 [{"newName", "oldName"}]
     7148 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7150 JUMPIFNOT                        R24 ; [+5]
     7151 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7153 GETTABLEKS                       R23 R24 K139 ["NewName"]
     7155 JUMPIF                           R23 ; [+1]
     7156 LOADK                            R23 K44 [""]
     7157 LOADK                            R24 K44 [""]
     7158 FASTCALL1                        TOSTRING R23 ; [+3]
     7159 MOVE                             R26 R23
     7160 GETIMPORT                        R25 K4 [tostring]
     7162 CALL                             R25 1 1
     7163 LOADK                            R26 K44 [""]
     7164 CONCAT                           R22 R24 R26
     7165 SETTABLEKS                       R22 R21 K136 ["newName"]
     7167 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7169 JUMPIFNOT                        R24 ; [+5]
     7170 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7172 GETTABLEKS                       R23 R24 K140 ["OldName"]
     7174 JUMPIF                           R23 ; [+1]
     7175 LOADK                            R23 K44 [""]
     7176 LOADK                            R24 K44 [""]
     7177 FASTCALL1                        TOSTRING R23 ; [+3]
     7178 MOVE                             R26 R23
     7179 GETIMPORT                        R25 K4 [tostring]
     7181 CALL                             R25 1 1
     7182 LOADK                            R26 K44 [""]
     7183 CONCAT                           R22 R24 R26
     7184 SETTABLEKS                       R22 R21 K137 ["oldName"]
     7186 CALL                             R19 2 1
     7187 SETTABLEKS                       R19 R18 K24 ["translation"]
     7189 GETTABLEKS                       R19 R2 K14 ["userId"]
     7191 SETTABLEKS                       R19 R18 K25 ["actorId"]
     7193 MOVE                             R19 R0
     7194 GETTABLEKS                       R20 R2 K14 ["userId"]
     7196 CALL                             R19 1 1
     7197 SETTABLEKS                       R19 R18 K26 ["actorName"]
     7199 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     7201 ORK                              R19 R20 K18 [0]
     7202 SETTABLEKS                       R19 R18 K29 ["iconId"]
     7204 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7206 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7208 GETTABLEKS                       R19 R2 K30 ["headerText"]
     7210 SETTABLEKS                       R19 R18 K30 ["headerText"]
     7212 GETTABLEKS                       R19 R2 K31 ["footerText"]
     7214 SETTABLEKS                       R19 R18 K31 ["footerText"]
     7216 LOADK                            R20 K44 [""]
     7217 FASTCALL1                        TOSTRING R4 ; [+3]
     7218 MOVE                             R22 R4
     7219 GETIMPORT                        R21 K4 [tostring]
     7221 CALL                             R21 1 1
     7222 LOADK                            R22 K7 ["/badges/"]
     7223 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     7225 FASTCALL1                        TOSTRING R24 ; [+2]
     7226 GETIMPORT                        R23 K4 [tostring]
     7228 CALL                             R23 1 1
     7229 LOADK                            R24 K11 ["/configure"]
     7230 CONCAT                           R19 R20 R24
     7231 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     7233 LOADK                            R20 K44 [""]
     7234 GETUPVAL                         R22 1
     7235 FASTCALL1                        TOSTRING R22 ; [+2]
     7236 GETIMPORT                        R21 K4 [tostring]
     7238 CALL                             R21 1 1
     7239 LOADK                            R22 K335 ["badges/"]
     7240 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     7242 FASTCALL1                        TOSTRING R24 ; [+2]
     7243 GETIMPORT                        R23 K4 [tostring]
     7245 CALL                             R23 1 1
     7246 LOADK                            R24 K44 [""]
     7247 CONCAT                           R19 R20 R24
     7248 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     7250 RETURN                           R18 1
     7251 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7253 JUMPIFNOTEQKN                    R18 K451 [75] ; [+88]
     7255 DUPTABLE                         R18 K453 [{["id"], ["eventType"] = "BadgeDescription", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Badge", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     7256 GETTABLEKS                       R19 R2 K19 ["id"]
     7258 SETTABLEKS                       R19 R18 K19 ["id"]
     7260 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     7262 NEWCLOSURE                       R22 P6
     7263 CAPTURE                          VAL R20
     7264 CAPTURE                          VAL R3
     7265 FASTPCALL                        pcall 1 ; [+2]
     7266 GETIMPORT                        R21 K35 [pcall]
     7268 CALL                             R21 1 2
     7269 JUMPIFNOT                        R21 ; [+2]
     7270 MOVE                             R19 R22
     7271 JUMP                             ; [+1]
     7272 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     7273 SETTABLEKS                       R19 R18 K23 ["date"]
     7275 MOVE                             R19 R12
     7276 LOADK                            R20 K454 ["Description.BadgeDescription"]
     7277 CALL                             R19 1 1
     7278 SETTABLEKS                       R19 R18 K24 ["translation"]
     7280 GETTABLEKS                       R19 R2 K14 ["userId"]
     7282 SETTABLEKS                       R19 R18 K25 ["actorId"]
     7284 MOVE                             R19 R0
     7285 GETTABLEKS                       R20 R2 K14 ["userId"]
     7287 CALL                             R19 1 1
     7288 SETTABLEKS                       R19 R18 K26 ["actorName"]
     7290 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     7292 ORK                              R19 R20 K18 [0]
     7293 SETTABLEKS                       R19 R18 K29 ["iconId"]
     7295 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7297 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7299 GETTABLEKS                       R19 R2 K30 ["headerText"]
     7301 SETTABLEKS                       R19 R18 K30 ["headerText"]
     7303 GETTABLEKS                       R19 R2 K31 ["footerText"]
     7305 SETTABLEKS                       R19 R18 K31 ["footerText"]
     7307 LOADK                            R20 K44 [""]
     7308 FASTCALL1                        TOSTRING R4 ; [+3]
     7309 MOVE                             R22 R4
     7310 GETIMPORT                        R21 K4 [tostring]
     7312 CALL                             R21 1 1
     7313 LOADK                            R22 K7 ["/badges/"]
     7314 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     7316 FASTCALL1                        TOSTRING R24 ; [+2]
     7317 GETIMPORT                        R23 K4 [tostring]
     7319 CALL                             R23 1 1
     7320 LOADK                            R24 K11 ["/configure"]
     7321 CONCAT                           R19 R20 R24
     7322 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     7324 LOADK                            R20 K44 [""]
     7325 GETUPVAL                         R22 1
     7326 FASTCALL1                        TOSTRING R22 ; [+2]
     7327 GETIMPORT                        R21 K4 [tostring]
     7329 CALL                             R21 1 1
     7330 LOADK                            R22 K335 ["badges/"]
     7331 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     7333 FASTCALL1                        TOSTRING R24 ; [+2]
     7334 GETIMPORT                        R23 K4 [tostring]
     7336 CALL                             R23 1 1
     7337 LOADK                            R24 K44 [""]
     7338 CONCAT                           R19 R20 R24
     7339 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     7341 RETURN                           R18 1
     7342 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7344 JUMPIFNOTEQKN                    R18 K455 [76] ; [+88]
     7346 DUPTABLE                         R18 K457 [{["id"], ["eventType"] = "BadgeIcon", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Badge", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     7347 GETTABLEKS                       R19 R2 K19 ["id"]
     7349 SETTABLEKS                       R19 R18 K19 ["id"]
     7351 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     7353 NEWCLOSURE                       R22 P6
     7354 CAPTURE                          VAL R20
     7355 CAPTURE                          VAL R3
     7356 FASTPCALL                        pcall 1 ; [+2]
     7357 GETIMPORT                        R21 K35 [pcall]
     7359 CALL                             R21 1 2
     7360 JUMPIFNOT                        R21 ; [+2]
     7361 MOVE                             R19 R22
     7362 JUMP                             ; [+1]
     7363 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     7364 SETTABLEKS                       R19 R18 K23 ["date"]
     7366 MOVE                             R19 R12
     7367 LOADK                            R20 K458 ["Description.BadgeIcon"]
     7368 CALL                             R19 1 1
     7369 SETTABLEKS                       R19 R18 K24 ["translation"]
     7371 GETTABLEKS                       R19 R2 K14 ["userId"]
     7373 SETTABLEKS                       R19 R18 K25 ["actorId"]
     7375 MOVE                             R19 R0
     7376 GETTABLEKS                       R20 R2 K14 ["userId"]
     7378 CALL                             R19 1 1
     7379 SETTABLEKS                       R19 R18 K26 ["actorName"]
     7381 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     7383 ORK                              R19 R20 K18 [0]
     7384 SETTABLEKS                       R19 R18 K29 ["iconId"]
     7386 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7388 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7390 GETTABLEKS                       R19 R2 K30 ["headerText"]
     7392 SETTABLEKS                       R19 R18 K30 ["headerText"]
     7394 GETTABLEKS                       R19 R2 K31 ["footerText"]
     7396 SETTABLEKS                       R19 R18 K31 ["footerText"]
     7398 LOADK                            R20 K44 [""]
     7399 FASTCALL1                        TOSTRING R4 ; [+3]
     7400 MOVE                             R22 R4
     7401 GETIMPORT                        R21 K4 [tostring]
     7403 CALL                             R21 1 1
     7404 LOADK                            R22 K7 ["/badges/"]
     7405 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     7407 FASTCALL1                        TOSTRING R24 ; [+2]
     7408 GETIMPORT                        R23 K4 [tostring]
     7410 CALL                             R23 1 1
     7411 LOADK                            R24 K11 ["/configure"]
     7412 CONCAT                           R19 R20 R24
     7413 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     7415 LOADK                            R20 K44 [""]
     7416 GETUPVAL                         R22 1
     7417 FASTCALL1                        TOSTRING R22 ; [+2]
     7418 GETIMPORT                        R21 K4 [tostring]
     7420 CALL                             R21 1 1
     7421 LOADK                            R22 K335 ["badges/"]
     7422 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     7424 FASTCALL1                        TOSTRING R24 ; [+2]
     7425 GETIMPORT                        R23 K4 [tostring]
     7427 CALL                             R23 1 1
     7428 LOADK                            R24 K44 [""]
     7429 CONCAT                           R19 R20 R24
     7430 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     7432 RETURN                           R18 1
     7433 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7435 JUMPIFNOTEQKN                    R18 K459 [77] ; [+88]
     7437 DUPTABLE                         R18 K461 [{["id"], ["eventType"] = "BadgeCreate", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Badge", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     7438 GETTABLEKS                       R19 R2 K19 ["id"]
     7440 SETTABLEKS                       R19 R18 K19 ["id"]
     7442 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     7444 NEWCLOSURE                       R22 P6
     7445 CAPTURE                          VAL R20
     7446 CAPTURE                          VAL R3
     7447 FASTPCALL                        pcall 1 ; [+2]
     7448 GETIMPORT                        R21 K35 [pcall]
     7450 CALL                             R21 1 2
     7451 JUMPIFNOT                        R21 ; [+2]
     7452 MOVE                             R19 R22
     7453 JUMP                             ; [+1]
     7454 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     7455 SETTABLEKS                       R19 R18 K23 ["date"]
     7457 MOVE                             R19 R12
     7458 LOADK                            R20 K462 ["Description.BadgeCreate"]
     7459 CALL                             R19 1 1
     7460 SETTABLEKS                       R19 R18 K24 ["translation"]
     7462 GETTABLEKS                       R19 R2 K14 ["userId"]
     7464 SETTABLEKS                       R19 R18 K25 ["actorId"]
     7466 MOVE                             R19 R0
     7467 GETTABLEKS                       R20 R2 K14 ["userId"]
     7469 CALL                             R19 1 1
     7470 SETTABLEKS                       R19 R18 K26 ["actorName"]
     7472 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     7474 ORK                              R19 R20 K18 [0]
     7475 SETTABLEKS                       R19 R18 K29 ["iconId"]
     7477 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7479 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7481 GETTABLEKS                       R19 R2 K30 ["headerText"]
     7483 SETTABLEKS                       R19 R18 K30 ["headerText"]
     7485 GETTABLEKS                       R19 R2 K31 ["footerText"]
     7487 SETTABLEKS                       R19 R18 K31 ["footerText"]
     7489 LOADK                            R20 K44 [""]
     7490 FASTCALL1                        TOSTRING R4 ; [+3]
     7491 MOVE                             R22 R4
     7492 GETIMPORT                        R21 K4 [tostring]
     7494 CALL                             R21 1 1
     7495 LOADK                            R22 K7 ["/badges/"]
     7496 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     7498 FASTCALL1                        TOSTRING R24 ; [+2]
     7499 GETIMPORT                        R23 K4 [tostring]
     7501 CALL                             R23 1 1
     7502 LOADK                            R24 K9 ["/overview"]
     7503 CONCAT                           R19 R20 R24
     7504 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     7506 LOADK                            R20 K44 [""]
     7507 GETUPVAL                         R22 1
     7508 FASTCALL1                        TOSTRING R22 ; [+2]
     7509 GETIMPORT                        R21 K4 [tostring]
     7511 CALL                             R21 1 1
     7512 LOADK                            R22 K335 ["badges/"]
     7513 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     7515 FASTCALL1                        TOSTRING R24 ; [+2]
     7516 GETIMPORT                        R23 K4 [tostring]
     7518 CALL                             R23 1 1
     7519 LOADK                            R24 K44 [""]
     7520 CONCAT                           R19 R20 R24
     7521 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     7523 RETURN                           R18 1
     7524 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7526 JUMPIFNOTEQKN                    R18 K463 [78] ; [+127]
     7528 DUPTABLE                         R18 K465 [{["id"], ["eventType"] = "DeveloperProductName", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "DeveloperProduct", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     7529 GETTABLEKS                       R19 R2 K19 ["id"]
     7531 SETTABLEKS                       R19 R18 K19 ["id"]
     7533 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     7535 NEWCLOSURE                       R22 P6
     7536 CAPTURE                          VAL R20
     7537 CAPTURE                          VAL R3
     7538 FASTPCALL                        pcall 1 ; [+2]
     7539 GETIMPORT                        R21 K35 [pcall]
     7541 CALL                             R21 1 2
     7542 JUMPIFNOT                        R21 ; [+2]
     7543 MOVE                             R19 R22
     7544 JUMP                             ; [+1]
     7545 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     7546 SETTABLEKS                       R19 R18 K23 ["date"]
     7548 MOVE                             R19 R12
     7549 LOADK                            R20 K466 ["Description.DeveloperProductName"]
     7550 DUPTABLE                         R21 K138 [{"newName", "oldName"}]
     7551 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7553 JUMPIFNOT                        R24 ; [+5]
     7554 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7556 GETTABLEKS                       R23 R24 K139 ["NewName"]
     7558 JUMPIF                           R23 ; [+1]
     7559 LOADK                            R23 K44 [""]
     7560 LOADK                            R24 K44 [""]
     7561 FASTCALL1                        TOSTRING R23 ; [+3]
     7562 MOVE                             R26 R23
     7563 GETIMPORT                        R25 K4 [tostring]
     7565 CALL                             R25 1 1
     7566 LOADK                            R26 K44 [""]
     7567 CONCAT                           R22 R24 R26
     7568 SETTABLEKS                       R22 R21 K136 ["newName"]
     7570 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7572 JUMPIFNOT                        R24 ; [+5]
     7573 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7575 GETTABLEKS                       R23 R24 K140 ["OldName"]
     7577 JUMPIF                           R23 ; [+1]
     7578 LOADK                            R23 K44 [""]
     7579 LOADK                            R24 K44 [""]
     7580 FASTCALL1                        TOSTRING R23 ; [+3]
     7581 MOVE                             R26 R23
     7582 GETIMPORT                        R25 K4 [tostring]
     7584 CALL                             R25 1 1
     7585 LOADK                            R26 K44 [""]
     7586 CONCAT                           R22 R24 R26
     7587 SETTABLEKS                       R22 R21 K137 ["oldName"]
     7589 CALL                             R19 2 1
     7590 SETTABLEKS                       R19 R18 K24 ["translation"]
     7592 GETTABLEKS                       R19 R2 K14 ["userId"]
     7594 SETTABLEKS                       R19 R18 K25 ["actorId"]
     7596 MOVE                             R19 R0
     7597 GETTABLEKS                       R20 R2 K14 ["userId"]
     7599 CALL                             R19 1 1
     7600 SETTABLEKS                       R19 R18 K26 ["actorName"]
     7602 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     7604 ORK                              R19 R20 K18 [0]
     7605 SETTABLEKS                       R19 R18 K29 ["iconId"]
     7607 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7609 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7611 GETTABLEKS                       R19 R2 K30 ["headerText"]
     7613 SETTABLEKS                       R19 R18 K30 ["headerText"]
     7615 GETTABLEKS                       R19 R2 K31 ["footerText"]
     7617 SETTABLEKS                       R19 R18 K31 ["footerText"]
     7619 LOADK                            R20 K44 [""]
     7620 FASTCALL1                        TOSTRING R4 ; [+3]
     7621 MOVE                             R22 R4
     7622 GETIMPORT                        R21 K4 [tostring]
     7624 CALL                             R21 1 1
     7625 LOADK                            R22 K10 ["/developer-products/"]
     7626 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     7628 FASTCALL1                        TOSTRING R24 ; [+2]
     7629 GETIMPORT                        R23 K4 [tostring]
     7631 CALL                             R23 1 1
     7632 LOADK                            R24 K11 ["/configure"]
     7633 CONCAT                           R19 R20 R24
     7634 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     7636 LOADK                            R20 K44 [""]
     7637 GETUPVAL                         R22 1
     7638 FASTCALL1                        TOSTRING R22 ; [+2]
     7639 GETIMPORT                        R21 K4 [tostring]
     7641 CALL                             R21 1 1
     7642 LOADK                            R22 K356 ["developer-products/"]
     7643 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     7645 FASTCALL1                        TOSTRING R24 ; [+2]
     7646 GETIMPORT                        R23 K4 [tostring]
     7648 CALL                             R23 1 1
     7649 LOADK                            R24 K44 [""]
     7650 CONCAT                           R19 R20 R24
     7651 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     7653 RETURN                           R18 1
     7654 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7656 JUMPIFNOTEQKN                    R18 K467 [79] ; [+88]
     7658 DUPTABLE                         R18 K469 [{["id"], ["eventType"] = "DeveloperProductDescription", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "DeveloperProduct", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     7659 GETTABLEKS                       R19 R2 K19 ["id"]
     7661 SETTABLEKS                       R19 R18 K19 ["id"]
     7663 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     7665 NEWCLOSURE                       R22 P6
     7666 CAPTURE                          VAL R20
     7667 CAPTURE                          VAL R3
     7668 FASTPCALL                        pcall 1 ; [+2]
     7669 GETIMPORT                        R21 K35 [pcall]
     7671 CALL                             R21 1 2
     7672 JUMPIFNOT                        R21 ; [+2]
     7673 MOVE                             R19 R22
     7674 JUMP                             ; [+1]
     7675 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     7676 SETTABLEKS                       R19 R18 K23 ["date"]
     7678 MOVE                             R19 R12
     7679 LOADK                            R20 K470 ["Description.DeveloperProductDescription"]
     7680 CALL                             R19 1 1
     7681 SETTABLEKS                       R19 R18 K24 ["translation"]
     7683 GETTABLEKS                       R19 R2 K14 ["userId"]
     7685 SETTABLEKS                       R19 R18 K25 ["actorId"]
     7687 MOVE                             R19 R0
     7688 GETTABLEKS                       R20 R2 K14 ["userId"]
     7690 CALL                             R19 1 1
     7691 SETTABLEKS                       R19 R18 K26 ["actorName"]
     7693 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     7695 ORK                              R19 R20 K18 [0]
     7696 SETTABLEKS                       R19 R18 K29 ["iconId"]
     7698 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7700 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7702 GETTABLEKS                       R19 R2 K30 ["headerText"]
     7704 SETTABLEKS                       R19 R18 K30 ["headerText"]
     7706 GETTABLEKS                       R19 R2 K31 ["footerText"]
     7708 SETTABLEKS                       R19 R18 K31 ["footerText"]
     7710 LOADK                            R20 K44 [""]
     7711 FASTCALL1                        TOSTRING R4 ; [+3]
     7712 MOVE                             R22 R4
     7713 GETIMPORT                        R21 K4 [tostring]
     7715 CALL                             R21 1 1
     7716 LOADK                            R22 K10 ["/developer-products/"]
     7717 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     7719 FASTCALL1                        TOSTRING R24 ; [+2]
     7720 GETIMPORT                        R23 K4 [tostring]
     7722 CALL                             R23 1 1
     7723 LOADK                            R24 K11 ["/configure"]
     7724 CONCAT                           R19 R20 R24
     7725 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     7727 LOADK                            R20 K44 [""]
     7728 GETUPVAL                         R22 1
     7729 FASTCALL1                        TOSTRING R22 ; [+2]
     7730 GETIMPORT                        R21 K4 [tostring]
     7732 CALL                             R21 1 1
     7733 LOADK                            R22 K356 ["developer-products/"]
     7734 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     7736 FASTCALL1                        TOSTRING R24 ; [+2]
     7737 GETIMPORT                        R23 K4 [tostring]
     7739 CALL                             R23 1 1
     7740 LOADK                            R24 K44 [""]
     7741 CONCAT                           R19 R20 R24
     7742 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     7744 RETURN                           R18 1
     7745 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7747 JUMPIFNOTEQKN                    R18 K471 [80] ; [+88]
     7749 DUPTABLE                         R18 K473 [{["id"], ["eventType"] = "DeveloperProductIcon", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "DeveloperProduct", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     7750 GETTABLEKS                       R19 R2 K19 ["id"]
     7752 SETTABLEKS                       R19 R18 K19 ["id"]
     7754 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     7756 NEWCLOSURE                       R22 P6
     7757 CAPTURE                          VAL R20
     7758 CAPTURE                          VAL R3
     7759 FASTPCALL                        pcall 1 ; [+2]
     7760 GETIMPORT                        R21 K35 [pcall]
     7762 CALL                             R21 1 2
     7763 JUMPIFNOT                        R21 ; [+2]
     7764 MOVE                             R19 R22
     7765 JUMP                             ; [+1]
     7766 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     7767 SETTABLEKS                       R19 R18 K23 ["date"]
     7769 MOVE                             R19 R12
     7770 LOADK                            R20 K474 ["Description.DeveloperProductIcon"]
     7771 CALL                             R19 1 1
     7772 SETTABLEKS                       R19 R18 K24 ["translation"]
     7774 GETTABLEKS                       R19 R2 K14 ["userId"]
     7776 SETTABLEKS                       R19 R18 K25 ["actorId"]
     7778 MOVE                             R19 R0
     7779 GETTABLEKS                       R20 R2 K14 ["userId"]
     7781 CALL                             R19 1 1
     7782 SETTABLEKS                       R19 R18 K26 ["actorName"]
     7784 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     7786 ORK                              R19 R20 K18 [0]
     7787 SETTABLEKS                       R19 R18 K29 ["iconId"]
     7789 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7791 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7793 GETTABLEKS                       R19 R2 K30 ["headerText"]
     7795 SETTABLEKS                       R19 R18 K30 ["headerText"]
     7797 GETTABLEKS                       R19 R2 K31 ["footerText"]
     7799 SETTABLEKS                       R19 R18 K31 ["footerText"]
     7801 LOADK                            R20 K44 [""]
     7802 FASTCALL1                        TOSTRING R4 ; [+3]
     7803 MOVE                             R22 R4
     7804 GETIMPORT                        R21 K4 [tostring]
     7806 CALL                             R21 1 1
     7807 LOADK                            R22 K10 ["/developer-products/"]
     7808 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     7810 FASTCALL1                        TOSTRING R24 ; [+2]
     7811 GETIMPORT                        R23 K4 [tostring]
     7813 CALL                             R23 1 1
     7814 LOADK                            R24 K11 ["/configure"]
     7815 CONCAT                           R19 R20 R24
     7816 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     7818 LOADK                            R20 K44 [""]
     7819 GETUPVAL                         R22 1
     7820 FASTCALL1                        TOSTRING R22 ; [+2]
     7821 GETIMPORT                        R21 K4 [tostring]
     7823 CALL                             R21 1 1
     7824 LOADK                            R22 K356 ["developer-products/"]
     7825 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     7827 FASTCALL1                        TOSTRING R24 ; [+2]
     7828 GETIMPORT                        R23 K4 [tostring]
     7830 CALL                             R23 1 1
     7831 LOADK                            R24 K44 [""]
     7832 CONCAT                           R19 R20 R24
     7833 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     7835 RETURN                           R18 1
     7836 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7838 JUMPIFNOTEQKN                    R18 K475 [81] ; [+108]
     7840 DUPTABLE                         R18 K477 [{["id"], ["eventType"] = "DeveloperProductPrice", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "DeveloperProduct", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     7841 GETTABLEKS                       R19 R2 K19 ["id"]
     7843 SETTABLEKS                       R19 R18 K19 ["id"]
     7845 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     7847 NEWCLOSURE                       R22 P6
     7848 CAPTURE                          VAL R20
     7849 CAPTURE                          VAL R3
     7850 FASTPCALL                        pcall 1 ; [+2]
     7851 GETIMPORT                        R21 K35 [pcall]
     7853 CALL                             R21 1 2
     7854 JUMPIFNOT                        R21 ; [+2]
     7855 MOVE                             R19 R22
     7856 JUMP                             ; [+1]
     7857 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     7858 SETTABLEKS                       R19 R18 K23 ["date"]
     7860 MOVE                             R19 R12
     7861 LOADK                            R20 K478 ["Description.DeveloperProductPrice"]
     7862 DUPTABLE                         R21 K425 [{"price"}]
     7863 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7865 JUMPIFNOT                        R24 ; [+5]
     7866 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7868 GETTABLEKS                       R23 R24 K426 ["Price"]
     7870 JUMPIF                           R23 ; [+1]
     7871 LOADK                            R23 K44 [""]
     7872 LOADK                            R24 K44 [""]
     7873 FASTCALL1                        TOSTRING R23 ; [+3]
     7874 MOVE                             R26 R23
     7875 GETIMPORT                        R25 K4 [tostring]
     7877 CALL                             R25 1 1
     7878 LOADK                            R26 K44 [""]
     7879 CONCAT                           R22 R24 R26
     7880 SETTABLEKS                       R22 R21 K424 ["price"]
     7882 CALL                             R19 2 1
     7883 SETTABLEKS                       R19 R18 K24 ["translation"]
     7885 GETTABLEKS                       R19 R2 K14 ["userId"]
     7887 SETTABLEKS                       R19 R18 K25 ["actorId"]
     7889 MOVE                             R19 R0
     7890 GETTABLEKS                       R20 R2 K14 ["userId"]
     7892 CALL                             R19 1 1
     7893 SETTABLEKS                       R19 R18 K26 ["actorName"]
     7895 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     7897 ORK                              R19 R20 K18 [0]
     7898 SETTABLEKS                       R19 R18 K29 ["iconId"]
     7900 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7902 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7904 GETTABLEKS                       R19 R2 K30 ["headerText"]
     7906 SETTABLEKS                       R19 R18 K30 ["headerText"]
     7908 GETTABLEKS                       R19 R2 K31 ["footerText"]
     7910 SETTABLEKS                       R19 R18 K31 ["footerText"]
     7912 LOADK                            R20 K44 [""]
     7913 FASTCALL1                        TOSTRING R4 ; [+3]
     7914 MOVE                             R22 R4
     7915 GETIMPORT                        R21 K4 [tostring]
     7917 CALL                             R21 1 1
     7918 LOADK                            R22 K10 ["/developer-products/"]
     7919 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     7921 FASTCALL1                        TOSTRING R24 ; [+2]
     7922 GETIMPORT                        R23 K4 [tostring]
     7924 CALL                             R23 1 1
     7925 LOADK                            R24 K11 ["/configure"]
     7926 CONCAT                           R19 R20 R24
     7927 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     7929 LOADK                            R20 K44 [""]
     7930 GETUPVAL                         R22 1
     7931 FASTCALL1                        TOSTRING R22 ; [+2]
     7932 GETIMPORT                        R21 K4 [tostring]
     7934 CALL                             R21 1 1
     7935 LOADK                            R22 K356 ["developer-products/"]
     7936 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     7938 FASTCALL1                        TOSTRING R24 ; [+2]
     7939 GETIMPORT                        R23 K4 [tostring]
     7941 CALL                             R23 1 1
     7942 LOADK                            R24 K44 [""]
     7943 CONCAT                           R19 R20 R24
     7944 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     7946 RETURN                           R18 1
     7947 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7949 JUMPIFNOTEQKN                    R18 K479 [82] ; [+88]
     7951 DUPTABLE                         R18 K481 [{["id"], ["eventType"] = "DeveloperProductCreate", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "DeveloperProduct", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     7952 GETTABLEKS                       R19 R2 K19 ["id"]
     7954 SETTABLEKS                       R19 R18 K19 ["id"]
     7956 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     7958 NEWCLOSURE                       R22 P6
     7959 CAPTURE                          VAL R20
     7960 CAPTURE                          VAL R3
     7961 FASTPCALL                        pcall 1 ; [+2]
     7962 GETIMPORT                        R21 K35 [pcall]
     7964 CALL                             R21 1 2
     7965 JUMPIFNOT                        R21 ; [+2]
     7966 MOVE                             R19 R22
     7967 JUMP                             ; [+1]
     7968 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     7969 SETTABLEKS                       R19 R18 K23 ["date"]
     7971 MOVE                             R19 R12
     7972 LOADK                            R20 K482 ["Description.DeveloperProductCreate"]
     7973 CALL                             R19 1 1
     7974 SETTABLEKS                       R19 R18 K24 ["translation"]
     7976 GETTABLEKS                       R19 R2 K14 ["userId"]
     7978 SETTABLEKS                       R19 R18 K25 ["actorId"]
     7980 MOVE                             R19 R0
     7981 GETTABLEKS                       R20 R2 K14 ["userId"]
     7983 CALL                             R19 1 1
     7984 SETTABLEKS                       R19 R18 K26 ["actorName"]
     7986 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     7988 ORK                              R19 R20 K18 [0]
     7989 SETTABLEKS                       R19 R18 K29 ["iconId"]
     7991 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7993 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7995 GETTABLEKS                       R19 R2 K30 ["headerText"]
     7997 SETTABLEKS                       R19 R18 K30 ["headerText"]
     7999 GETTABLEKS                       R19 R2 K31 ["footerText"]
     8001 SETTABLEKS                       R19 R18 K31 ["footerText"]
     8003 LOADK                            R20 K44 [""]
     8004 FASTCALL1                        TOSTRING R4 ; [+3]
     8005 MOVE                             R22 R4
     8006 GETIMPORT                        R21 K4 [tostring]
     8008 CALL                             R21 1 1
     8009 LOADK                            R22 K10 ["/developer-products/"]
     8010 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     8012 FASTCALL1                        TOSTRING R24 ; [+2]
     8013 GETIMPORT                        R23 K4 [tostring]
     8015 CALL                             R23 1 1
     8016 LOADK                            R24 K11 ["/configure"]
     8017 CONCAT                           R19 R20 R24
     8018 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     8020 LOADK                            R20 K44 [""]
     8021 GETUPVAL                         R22 1
     8022 FASTCALL1                        TOSTRING R22 ; [+2]
     8023 GETIMPORT                        R21 K4 [tostring]
     8025 CALL                             R21 1 1
     8026 LOADK                            R22 K356 ["developer-products/"]
     8027 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     8029 FASTCALL1                        TOSTRING R24 ; [+2]
     8030 GETIMPORT                        R23 K4 [tostring]
     8032 CALL                             R23 1 1
     8033 LOADK                            R24 K44 [""]
     8034 CONCAT                           R19 R20 R24
     8035 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     8037 RETURN                           R18 1
     8038 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8040 JUMPIFNOTEQKN                    R18 K483 [83] ; [+127]
     8042 DUPTABLE                         R18 K485 [{["id"], ["eventType"] = "GamePassName", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "GamePass", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     8043 GETTABLEKS                       R19 R2 K19 ["id"]
     8045 SETTABLEKS                       R19 R18 K19 ["id"]
     8047 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     8049 NEWCLOSURE                       R22 P6
     8050 CAPTURE                          VAL R20
     8051 CAPTURE                          VAL R3
     8052 FASTPCALL                        pcall 1 ; [+2]
     8053 GETIMPORT                        R21 K35 [pcall]
     8055 CALL                             R21 1 2
     8056 JUMPIFNOT                        R21 ; [+2]
     8057 MOVE                             R19 R22
     8058 JUMP                             ; [+1]
     8059 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     8060 SETTABLEKS                       R19 R18 K23 ["date"]
     8062 MOVE                             R19 R12
     8063 LOADK                            R20 K486 ["Description.GamePassName"]
     8064 DUPTABLE                         R21 K138 [{"newName", "oldName"}]
     8065 GETTABLEKS                       R24 R2 K42 ["metaData"]
     8067 JUMPIFNOT                        R24 ; [+5]
     8068 GETTABLEKS                       R24 R2 K42 ["metaData"]
     8070 GETTABLEKS                       R23 R24 K139 ["NewName"]
     8072 JUMPIF                           R23 ; [+1]
     8073 LOADK                            R23 K44 [""]
     8074 LOADK                            R24 K44 [""]
     8075 FASTCALL1                        TOSTRING R23 ; [+3]
     8076 MOVE                             R26 R23
     8077 GETIMPORT                        R25 K4 [tostring]
     8079 CALL                             R25 1 1
     8080 LOADK                            R26 K44 [""]
     8081 CONCAT                           R22 R24 R26
     8082 SETTABLEKS                       R22 R21 K136 ["newName"]
     8084 GETTABLEKS                       R24 R2 K42 ["metaData"]
     8086 JUMPIFNOT                        R24 ; [+5]
     8087 GETTABLEKS                       R24 R2 K42 ["metaData"]
     8089 GETTABLEKS                       R23 R24 K140 ["OldName"]
     8091 JUMPIF                           R23 ; [+1]
     8092 LOADK                            R23 K44 [""]
     8093 LOADK                            R24 K44 [""]
     8094 FASTCALL1                        TOSTRING R23 ; [+3]
     8095 MOVE                             R26 R23
     8096 GETIMPORT                        R25 K4 [tostring]
     8098 CALL                             R25 1 1
     8099 LOADK                            R26 K44 [""]
     8100 CONCAT                           R22 R24 R26
     8101 SETTABLEKS                       R22 R21 K137 ["oldName"]
     8103 CALL                             R19 2 1
     8104 SETTABLEKS                       R19 R18 K24 ["translation"]
     8106 GETTABLEKS                       R19 R2 K14 ["userId"]
     8108 SETTABLEKS                       R19 R18 K25 ["actorId"]
     8110 MOVE                             R19 R0
     8111 GETTABLEKS                       R20 R2 K14 ["userId"]
     8113 CALL                             R19 1 1
     8114 SETTABLEKS                       R19 R18 K26 ["actorName"]
     8116 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8118 ORK                              R19 R20 K18 [0]
     8119 SETTABLEKS                       R19 R18 K29 ["iconId"]
     8121 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8123 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8125 GETTABLEKS                       R19 R2 K30 ["headerText"]
     8127 SETTABLEKS                       R19 R18 K30 ["headerText"]
     8129 GETTABLEKS                       R19 R2 K31 ["footerText"]
     8131 SETTABLEKS                       R19 R18 K31 ["footerText"]
     8133 LOADK                            R20 K44 [""]
     8134 FASTCALL1                        TOSTRING R4 ; [+3]
     8135 MOVE                             R22 R4
     8136 GETIMPORT                        R21 K4 [tostring]
     8138 CALL                             R21 1 1
     8139 LOADK                            R22 K12 ["/passes/"]
     8140 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     8142 FASTCALL1                        TOSTRING R24 ; [+2]
     8143 GETIMPORT                        R23 K4 [tostring]
     8145 CALL                             R23 1 1
     8146 LOADK                            R24 K11 ["/configure"]
     8147 CONCAT                           R19 R20 R24
     8148 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     8150 LOADK                            R20 K44 [""]
     8151 GETUPVAL                         R22 1
     8152 FASTCALL1                        TOSTRING R22 ; [+2]
     8153 GETIMPORT                        R21 K4 [tostring]
     8155 CALL                             R21 1 1
     8156 LOADK                            R22 K377 ["game-pass/"]
     8157 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     8159 FASTCALL1                        TOSTRING R24 ; [+2]
     8160 GETIMPORT                        R23 K4 [tostring]
     8162 CALL                             R23 1 1
     8163 LOADK                            R24 K44 [""]
     8164 CONCAT                           R19 R20 R24
     8165 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     8167 RETURN                           R18 1
     8168 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8170 JUMPIFNOTEQKN                    R18 K487 [84] ; [+88]
     8172 DUPTABLE                         R18 K489 [{["id"], ["eventType"] = "GamePassDescription", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "GamePass", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     8173 GETTABLEKS                       R19 R2 K19 ["id"]
     8175 SETTABLEKS                       R19 R18 K19 ["id"]
     8177 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     8179 NEWCLOSURE                       R22 P6
     8180 CAPTURE                          VAL R20
     8181 CAPTURE                          VAL R3
     8182 FASTPCALL                        pcall 1 ; [+2]
     8183 GETIMPORT                        R21 K35 [pcall]
     8185 CALL                             R21 1 2
     8186 JUMPIFNOT                        R21 ; [+2]
     8187 MOVE                             R19 R22
     8188 JUMP                             ; [+1]
     8189 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     8190 SETTABLEKS                       R19 R18 K23 ["date"]
     8192 MOVE                             R19 R12
     8193 LOADK                            R20 K490 ["Description.GamePassDescription"]
     8194 CALL                             R19 1 1
     8195 SETTABLEKS                       R19 R18 K24 ["translation"]
     8197 GETTABLEKS                       R19 R2 K14 ["userId"]
     8199 SETTABLEKS                       R19 R18 K25 ["actorId"]
     8201 MOVE                             R19 R0
     8202 GETTABLEKS                       R20 R2 K14 ["userId"]
     8204 CALL                             R19 1 1
     8205 SETTABLEKS                       R19 R18 K26 ["actorName"]
     8207 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8209 ORK                              R19 R20 K18 [0]
     8210 SETTABLEKS                       R19 R18 K29 ["iconId"]
     8212 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8214 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8216 GETTABLEKS                       R19 R2 K30 ["headerText"]
     8218 SETTABLEKS                       R19 R18 K30 ["headerText"]
     8220 GETTABLEKS                       R19 R2 K31 ["footerText"]
     8222 SETTABLEKS                       R19 R18 K31 ["footerText"]
     8224 LOADK                            R20 K44 [""]
     8225 FASTCALL1                        TOSTRING R4 ; [+3]
     8226 MOVE                             R22 R4
     8227 GETIMPORT                        R21 K4 [tostring]
     8229 CALL                             R21 1 1
     8230 LOADK                            R22 K12 ["/passes/"]
     8231 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     8233 FASTCALL1                        TOSTRING R24 ; [+2]
     8234 GETIMPORT                        R23 K4 [tostring]
     8236 CALL                             R23 1 1
     8237 LOADK                            R24 K11 ["/configure"]
     8238 CONCAT                           R19 R20 R24
     8239 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     8241 LOADK                            R20 K44 [""]
     8242 GETUPVAL                         R22 1
     8243 FASTCALL1                        TOSTRING R22 ; [+2]
     8244 GETIMPORT                        R21 K4 [tostring]
     8246 CALL                             R21 1 1
     8247 LOADK                            R22 K377 ["game-pass/"]
     8248 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     8250 FASTCALL1                        TOSTRING R24 ; [+2]
     8251 GETIMPORT                        R23 K4 [tostring]
     8253 CALL                             R23 1 1
     8254 LOADK                            R24 K44 [""]
     8255 CONCAT                           R19 R20 R24
     8256 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     8258 RETURN                           R18 1
     8259 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8261 JUMPIFNOTEQKN                    R18 K491 [85] ; [+88]
     8263 DUPTABLE                         R18 K493 [{["id"], ["eventType"] = "GamePassIcon", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "GamePass", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     8264 GETTABLEKS                       R19 R2 K19 ["id"]
     8266 SETTABLEKS                       R19 R18 K19 ["id"]
     8268 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     8270 NEWCLOSURE                       R22 P6
     8271 CAPTURE                          VAL R20
     8272 CAPTURE                          VAL R3
     8273 FASTPCALL                        pcall 1 ; [+2]
     8274 GETIMPORT                        R21 K35 [pcall]
     8276 CALL                             R21 1 2
     8277 JUMPIFNOT                        R21 ; [+2]
     8278 MOVE                             R19 R22
     8279 JUMP                             ; [+1]
     8280 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     8281 SETTABLEKS                       R19 R18 K23 ["date"]
     8283 MOVE                             R19 R12
     8284 LOADK                            R20 K494 ["Description.GamePassIcon"]
     8285 CALL                             R19 1 1
     8286 SETTABLEKS                       R19 R18 K24 ["translation"]
     8288 GETTABLEKS                       R19 R2 K14 ["userId"]
     8290 SETTABLEKS                       R19 R18 K25 ["actorId"]
     8292 MOVE                             R19 R0
     8293 GETTABLEKS                       R20 R2 K14 ["userId"]
     8295 CALL                             R19 1 1
     8296 SETTABLEKS                       R19 R18 K26 ["actorName"]
     8298 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8300 ORK                              R19 R20 K18 [0]
     8301 SETTABLEKS                       R19 R18 K29 ["iconId"]
     8303 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8305 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8307 GETTABLEKS                       R19 R2 K30 ["headerText"]
     8309 SETTABLEKS                       R19 R18 K30 ["headerText"]
     8311 GETTABLEKS                       R19 R2 K31 ["footerText"]
     8313 SETTABLEKS                       R19 R18 K31 ["footerText"]
     8315 LOADK                            R20 K44 [""]
     8316 FASTCALL1                        TOSTRING R4 ; [+3]
     8317 MOVE                             R22 R4
     8318 GETIMPORT                        R21 K4 [tostring]
     8320 CALL                             R21 1 1
     8321 LOADK                            R22 K12 ["/passes/"]
     8322 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     8324 FASTCALL1                        TOSTRING R24 ; [+2]
     8325 GETIMPORT                        R23 K4 [tostring]
     8327 CALL                             R23 1 1
     8328 LOADK                            R24 K11 ["/configure"]
     8329 CONCAT                           R19 R20 R24
     8330 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     8332 LOADK                            R20 K44 [""]
     8333 GETUPVAL                         R22 1
     8334 FASTCALL1                        TOSTRING R22 ; [+2]
     8335 GETIMPORT                        R21 K4 [tostring]
     8337 CALL                             R21 1 1
     8338 LOADK                            R22 K377 ["game-pass/"]
     8339 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     8341 FASTCALL1                        TOSTRING R24 ; [+2]
     8342 GETIMPORT                        R23 K4 [tostring]
     8344 CALL                             R23 1 1
     8345 LOADK                            R24 K44 [""]
     8346 CONCAT                           R19 R20 R24
     8347 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     8349 RETURN                           R18 1
     8350 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8352 JUMPIFNOTEQKN                    R18 K495 [86] ; [+108]
     8354 DUPTABLE                         R18 K497 [{["id"], ["eventType"] = "GamePassPrice", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "GamePass", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     8355 GETTABLEKS                       R19 R2 K19 ["id"]
     8357 SETTABLEKS                       R19 R18 K19 ["id"]
     8359 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     8361 NEWCLOSURE                       R22 P6
     8362 CAPTURE                          VAL R20
     8363 CAPTURE                          VAL R3
     8364 FASTPCALL                        pcall 1 ; [+2]
     8365 GETIMPORT                        R21 K35 [pcall]
     8367 CALL                             R21 1 2
     8368 JUMPIFNOT                        R21 ; [+2]
     8369 MOVE                             R19 R22
     8370 JUMP                             ; [+1]
     8371 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     8372 SETTABLEKS                       R19 R18 K23 ["date"]
     8374 MOVE                             R19 R12
     8375 LOADK                            R20 K498 ["Description.GamePassPrice"]
     8376 DUPTABLE                         R21 K425 [{"price"}]
     8377 GETTABLEKS                       R24 R2 K42 ["metaData"]
     8379 JUMPIFNOT                        R24 ; [+5]
     8380 GETTABLEKS                       R24 R2 K42 ["metaData"]
     8382 GETTABLEKS                       R23 R24 K426 ["Price"]
     8384 JUMPIF                           R23 ; [+1]
     8385 LOADK                            R23 K44 [""]
     8386 LOADK                            R24 K44 [""]
     8387 FASTCALL1                        TOSTRING R23 ; [+3]
     8388 MOVE                             R26 R23
     8389 GETIMPORT                        R25 K4 [tostring]
     8391 CALL                             R25 1 1
     8392 LOADK                            R26 K44 [""]
     8393 CONCAT                           R22 R24 R26
     8394 SETTABLEKS                       R22 R21 K424 ["price"]
     8396 CALL                             R19 2 1
     8397 SETTABLEKS                       R19 R18 K24 ["translation"]
     8399 GETTABLEKS                       R19 R2 K14 ["userId"]
     8401 SETTABLEKS                       R19 R18 K25 ["actorId"]
     8403 MOVE                             R19 R0
     8404 GETTABLEKS                       R20 R2 K14 ["userId"]
     8406 CALL                             R19 1 1
     8407 SETTABLEKS                       R19 R18 K26 ["actorName"]
     8409 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8411 ORK                              R19 R20 K18 [0]
     8412 SETTABLEKS                       R19 R18 K29 ["iconId"]
     8414 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8416 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8418 GETTABLEKS                       R19 R2 K30 ["headerText"]
     8420 SETTABLEKS                       R19 R18 K30 ["headerText"]
     8422 GETTABLEKS                       R19 R2 K31 ["footerText"]
     8424 SETTABLEKS                       R19 R18 K31 ["footerText"]
     8426 LOADK                            R20 K44 [""]
     8427 FASTCALL1                        TOSTRING R4 ; [+3]
     8428 MOVE                             R22 R4
     8429 GETIMPORT                        R21 K4 [tostring]
     8431 CALL                             R21 1 1
     8432 LOADK                            R22 K12 ["/passes/"]
     8433 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     8435 FASTCALL1                        TOSTRING R24 ; [+2]
     8436 GETIMPORT                        R23 K4 [tostring]
     8438 CALL                             R23 1 1
     8439 LOADK                            R24 K499 ["/sales"]
     8440 CONCAT                           R19 R20 R24
     8441 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     8443 LOADK                            R20 K44 [""]
     8444 GETUPVAL                         R22 1
     8445 FASTCALL1                        TOSTRING R22 ; [+2]
     8446 GETIMPORT                        R21 K4 [tostring]
     8448 CALL                             R21 1 1
     8449 LOADK                            R22 K377 ["game-pass/"]
     8450 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     8452 FASTCALL1                        TOSTRING R24 ; [+2]
     8453 GETIMPORT                        R23 K4 [tostring]
     8455 CALL                             R23 1 1
     8456 LOADK                            R24 K44 [""]
     8457 CONCAT                           R19 R20 R24
     8458 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     8460 RETURN                           R18 1
     8461 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8463 JUMPIFNOTEQKN                    R18 K500 [87] ; [+88]
     8465 DUPTABLE                         R18 K502 [{["id"], ["eventType"] = "GamePassCreate", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "GamePass", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     8466 GETTABLEKS                       R19 R2 K19 ["id"]
     8468 SETTABLEKS                       R19 R18 K19 ["id"]
     8470 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     8472 NEWCLOSURE                       R22 P6
     8473 CAPTURE                          VAL R20
     8474 CAPTURE                          VAL R3
     8475 FASTPCALL                        pcall 1 ; [+2]
     8476 GETIMPORT                        R21 K35 [pcall]
     8478 CALL                             R21 1 2
     8479 JUMPIFNOT                        R21 ; [+2]
     8480 MOVE                             R19 R22
     8481 JUMP                             ; [+1]
     8482 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     8483 SETTABLEKS                       R19 R18 K23 ["date"]
     8485 MOVE                             R19 R12
     8486 LOADK                            R20 K503 ["Description.GamePassCreate"]
     8487 CALL                             R19 1 1
     8488 SETTABLEKS                       R19 R18 K24 ["translation"]
     8490 GETTABLEKS                       R19 R2 K14 ["userId"]
     8492 SETTABLEKS                       R19 R18 K25 ["actorId"]
     8494 MOVE                             R19 R0
     8495 GETTABLEKS                       R20 R2 K14 ["userId"]
     8497 CALL                             R19 1 1
     8498 SETTABLEKS                       R19 R18 K26 ["actorName"]
     8500 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8502 ORK                              R19 R20 K18 [0]
     8503 SETTABLEKS                       R19 R18 K29 ["iconId"]
     8505 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8507 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8509 GETTABLEKS                       R19 R2 K30 ["headerText"]
     8511 SETTABLEKS                       R19 R18 K30 ["headerText"]
     8513 GETTABLEKS                       R19 R2 K31 ["footerText"]
     8515 SETTABLEKS                       R19 R18 K31 ["footerText"]
     8517 LOADK                            R20 K44 [""]
     8518 FASTCALL1                        TOSTRING R4 ; [+3]
     8519 MOVE                             R22 R4
     8520 GETIMPORT                        R21 K4 [tostring]
     8522 CALL                             R21 1 1
     8523 LOADK                            R22 K12 ["/passes/"]
     8524 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     8526 FASTCALL1                        TOSTRING R24 ; [+2]
     8527 GETIMPORT                        R23 K4 [tostring]
     8529 CALL                             R23 1 1
     8530 LOADK                            R24 K11 ["/configure"]
     8531 CONCAT                           R19 R20 R24
     8532 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     8534 LOADK                            R20 K44 [""]
     8535 GETUPVAL                         R22 1
     8536 FASTCALL1                        TOSTRING R22 ; [+2]
     8537 GETIMPORT                        R21 K4 [tostring]
     8539 CALL                             R21 1 1
     8540 LOADK                            R22 K377 ["game-pass/"]
     8541 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     8543 FASTCALL1                        TOSTRING R24 ; [+2]
     8544 GETIMPORT                        R23 K4 [tostring]
     8546 CALL                             R23 1 1
     8547 LOADK                            R24 K44 [""]
     8548 CONCAT                           R19 R20 R24
     8549 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     8551 RETURN                           R18 1
     8552 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8554 JUMPIFNOTEQKN                    R18 K504 [88] ; [+99]
     8556 DUPTABLE                         R18 K507 [{["id"], ["eventType"] = "PermissionsUserAdded", ["eventCategory"] = "Permissions", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "User", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewOnRobloxLink"]}]
     8557 GETTABLEKS                       R19 R2 K19 ["id"]
     8559 SETTABLEKS                       R19 R18 K19 ["id"]
     8561 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     8563 NEWCLOSURE                       R22 P6
     8564 CAPTURE                          VAL R20
     8565 CAPTURE                          VAL R3
     8566 FASTPCALL                        pcall 1 ; [+2]
     8567 GETIMPORT                        R21 K35 [pcall]
     8569 CALL                             R21 1 2
     8570 JUMPIFNOT                        R21 ; [+2]
     8571 MOVE                             R19 R22
     8572 JUMP                             ; [+1]
     8573 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     8574 SETTABLEKS                       R19 R18 K23 ["date"]
     8576 MOVE                             R19 R12
     8577 LOADK                            R20 K508 ["Description.PermissionsUserAdded"]
     8578 DUPTABLE                         R21 K510 [{"userName", "role"}]
     8579 MOVE                             R23 R0
     8580 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     8582 CALL                             R23 1 1
     8583 LOADK                            R24 K44 [""]
     8584 FASTCALL1                        TOSTRING R23 ; [+3]
     8585 MOVE                             R26 R23
     8586 GETIMPORT                        R25 K4 [tostring]
     8588 CALL                             R25 1 1
     8589 LOADK                            R26 K44 [""]
     8590 CONCAT                           R22 R24 R26
     8591 SETTABLEKS                       R22 R21 K395 ["userName"]
     8593 GETTABLEKS                       R25 R2 K42 ["metaData"]
     8595 JUMPIFNOT                        R25 ; [+5]
     8596 GETTABLEKS                       R25 R2 K42 ["metaData"]
     8598 GETTABLEKS                       R24 R25 K43 ["Action"]
     8600 JUMPIF                           R24 ; [+1]
     8601 LOADK                            R24 K44 [""]
     8602 JUMPIFNOTEQKS                    R24 K511 ["Edit"] ; [+5]
     8604 MOVE                             R23 R12
     8605 LOADK                            R24 K512 ["Action.Edit"]
     8606 CALL                             R23 1 1
     8607 JUMPIF                           R23 ; [+3]
     8608 MOVE                             R23 R12
     8609 LOADK                            R24 K513 ["Action.Play"]
     8610 CALL                             R23 1 1
     8611 LOADK                            R24 K44 [""]
     8612 FASTCALL1                        TOSTRING R23 ; [+3]
     8613 MOVE                             R26 R23
     8614 GETIMPORT                        R25 K4 [tostring]
     8616 CALL                             R25 1 1
     8617 LOADK                            R26 K44 [""]
     8618 CONCAT                           R22 R24 R26
     8619 SETTABLEKS                       R22 R21 K509 ["role"]
     8621 CALL                             R19 2 1
     8622 SETTABLEKS                       R19 R18 K24 ["translation"]
     8624 GETTABLEKS                       R19 R2 K14 ["userId"]
     8626 SETTABLEKS                       R19 R18 K25 ["actorId"]
     8628 MOVE                             R19 R0
     8629 GETTABLEKS                       R20 R2 K14 ["userId"]
     8631 CALL                             R19 1 1
     8632 SETTABLEKS                       R19 R18 K26 ["actorName"]
     8634 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8636 ORK                              R19 R20 K18 [0]
     8637 SETTABLEKS                       R19 R18 K29 ["iconId"]
     8639 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8641 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8643 GETTABLEKS                       R19 R2 K30 ["headerText"]
     8645 SETTABLEKS                       R19 R18 K30 ["headerText"]
     8647 GETTABLEKS                       R19 R2 K31 ["footerText"]
     8649 SETTABLEKS                       R19 R18 K31 ["footerText"]
     8651 SETTABLEKS                       R10 R18 K273 ["viewOnRobloxLink"]
     8653 RETURN                           R18 1
     8654 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8656 JUMPIFNOTEQKN                    R18 K514 [89] ; [+138]
     8658 DUPTABLE                         R18 K516 [{["id"], ["eventType"] = "PermissionsGroupAdded", ["eventCategory"] = "Permissions", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewOnRobloxLink"]}]
     8659 GETTABLEKS                       R19 R2 K19 ["id"]
     8661 SETTABLEKS                       R19 R18 K19 ["id"]
     8663 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     8665 NEWCLOSURE                       R22 P6
     8666 CAPTURE                          VAL R20
     8667 CAPTURE                          VAL R3
     8668 FASTPCALL                        pcall 1 ; [+2]
     8669 GETIMPORT                        R21 K35 [pcall]
     8671 CALL                             R21 1 2
     8672 JUMPIFNOT                        R21 ; [+2]
     8673 MOVE                             R19 R22
     8674 JUMP                             ; [+1]
     8675 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     8676 SETTABLEKS                       R19 R18 K23 ["date"]
     8678 MOVE                             R19 R12
     8679 LOADK                            R20 K517 ["Description.PermissionsGroupAdded"]
     8680 DUPTABLE                         R21 K519 [{"groupRole", "groupName", "role"}]
     8681 GETTABLEKS                       R24 R2 K42 ["metaData"]
     8683 JUMPIFNOT                        R24 ; [+5]
     8684 GETTABLEKS                       R24 R2 K42 ["metaData"]
     8686 GETTABLEKS                       R23 R24 K520 ["RolesetName"]
     8688 JUMPIF                           R23 ; [+1]
     8689 LOADK                            R23 K44 [""]
     8690 LOADK                            R24 K44 [""]
     8691 FASTCALL1                        TOSTRING R23 ; [+3]
     8692 MOVE                             R26 R23
     8693 GETIMPORT                        R25 K4 [tostring]
     8695 CALL                             R25 1 1
     8696 LOADK                            R26 K44 [""]
     8697 CONCAT                           R22 R24 R26
     8698 SETTABLEKS                       R22 R21 K518 ["groupRole"]
     8700 GETTABLEKS                       R24 R2 K42 ["metaData"]
     8702 JUMPIFNOT                        R24 ; [+5]
     8703 GETTABLEKS                       R24 R2 K42 ["metaData"]
     8705 GETTABLEKS                       R23 R24 K404 ["GroupName"]
     8707 JUMPIF                           R23 ; [+1]
     8708 LOADK                            R23 K44 [""]
     8709 LOADK                            R24 K44 [""]
     8710 FASTCALL1                        TOSTRING R23 ; [+3]
     8711 MOVE                             R26 R23
     8712 GETIMPORT                        R25 K4 [tostring]
     8714 CALL                             R25 1 1
     8715 LOADK                            R26 K44 [""]
     8716 CONCAT                           R22 R24 R26
     8717 SETTABLEKS                       R22 R21 K402 ["groupName"]
     8719 GETTABLEKS                       R25 R2 K42 ["metaData"]
     8721 JUMPIFNOT                        R25 ; [+5]
     8722 GETTABLEKS                       R25 R2 K42 ["metaData"]
     8724 GETTABLEKS                       R24 R25 K43 ["Action"]
     8726 JUMPIF                           R24 ; [+1]
     8727 LOADK                            R24 K44 [""]
     8728 JUMPIFNOTEQKS                    R24 K511 ["Edit"] ; [+5]
     8730 MOVE                             R23 R12
     8731 LOADK                            R24 K512 ["Action.Edit"]
     8732 CALL                             R23 1 1
     8733 JUMPIF                           R23 ; [+3]
     8734 MOVE                             R23 R12
     8735 LOADK                            R24 K513 ["Action.Play"]
     8736 CALL                             R23 1 1
     8737 LOADK                            R24 K44 [""]
     8738 FASTCALL1                        TOSTRING R23 ; [+3]
     8739 MOVE                             R26 R23
     8740 GETIMPORT                        R25 K4 [tostring]
     8742 CALL                             R25 1 1
     8743 LOADK                            R26 K44 [""]
     8744 CONCAT                           R22 R24 R26
     8745 SETTABLEKS                       R22 R21 K509 ["role"]
     8747 CALL                             R19 2 1
     8748 SETTABLEKS                       R19 R18 K24 ["translation"]
     8750 GETTABLEKS                       R19 R2 K14 ["userId"]
     8752 SETTABLEKS                       R19 R18 K25 ["actorId"]
     8754 MOVE                             R19 R0
     8755 GETTABLEKS                       R20 R2 K14 ["userId"]
     8757 CALL                             R19 1 1
     8758 SETTABLEKS                       R19 R18 K26 ["actorName"]
     8760 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8762 ORK                              R19 R20 K18 [0]
     8763 SETTABLEKS                       R19 R18 K29 ["iconId"]
     8765 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8767 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8769 GETTABLEKS                       R19 R2 K30 ["headerText"]
     8771 SETTABLEKS                       R19 R18 K30 ["headerText"]
     8773 GETTABLEKS                       R19 R2 K31 ["footerText"]
     8775 SETTABLEKS                       R19 R18 K31 ["footerText"]
     8777 LOADK                            R20 K44 [""]
     8778 GETUPVAL                         R22 1
     8779 FASTCALL1                        TOSTRING R22 ; [+2]
     8780 GETIMPORT                        R21 K4 [tostring]
     8782 CALL                             R21 1 1
     8783 LOADK                            R22 K16 ["groups/"]
     8784 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     8786 FASTCALL1                        TOSTRING R24 ; [+2]
     8787 GETIMPORT                        R23 K4 [tostring]
     8789 CALL                             R23 1 1
     8790 LOADK                            R24 K44 [""]
     8791 CONCAT                           R19 R20 R24
     8792 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     8794 RETURN                           R18 1
     8795 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8797 JUMPIFNOTEQKN                    R18 K521 [90] ; [+127]
     8799 DUPTABLE                         R18 K523 [{["id"], ["eventType"] = "PermissionsUserChanged", ["eventCategory"] = "Permissions", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "User", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewOnRobloxLink"]}]
     8800 GETTABLEKS                       R19 R2 K19 ["id"]
     8802 SETTABLEKS                       R19 R18 K19 ["id"]
     8804 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     8806 NEWCLOSURE                       R22 P6
     8807 CAPTURE                          VAL R20
     8808 CAPTURE                          VAL R3
     8809 FASTPCALL                        pcall 1 ; [+2]
     8810 GETIMPORT                        R21 K35 [pcall]
     8812 CALL                             R21 1 2
     8813 JUMPIFNOT                        R21 ; [+2]
     8814 MOVE                             R19 R22
     8815 JUMP                             ; [+1]
     8816 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     8817 SETTABLEKS                       R19 R18 K23 ["date"]
     8819 MOVE                             R19 R12
     8820 LOADK                            R20 K524 ["Description.PermissionsUserChanged"]
     8821 DUPTABLE                         R21 K527 [{"userName", "oldRole", "newRole"}]
     8822 MOVE                             R23 R0
     8823 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     8825 CALL                             R23 1 1
     8826 LOADK                            R24 K44 [""]
     8827 FASTCALL1                        TOSTRING R23 ; [+3]
     8828 MOVE                             R26 R23
     8829 GETIMPORT                        R25 K4 [tostring]
     8831 CALL                             R25 1 1
     8832 LOADK                            R26 K44 [""]
     8833 CONCAT                           R22 R24 R26
     8834 SETTABLEKS                       R22 R21 K395 ["userName"]
     8836 GETTABLEKS                       R25 R2 K42 ["metaData"]
     8838 JUMPIFNOT                        R25 ; [+5]
     8839 GETTABLEKS                       R25 R2 K42 ["metaData"]
     8841 GETTABLEKS                       R24 R25 K43 ["Action"]
     8843 JUMPIF                           R24 ; [+1]
     8844 LOADK                            R24 K44 [""]
     8845 JUMPIFNOTEQKS                    R24 K511 ["Edit"] ; [+5]
     8847 MOVE                             R23 R12
     8848 LOADK                            R24 K513 ["Action.Play"]
     8849 CALL                             R23 1 1
     8850 JUMPIF                           R23 ; [+3]
     8851 MOVE                             R23 R12
     8852 LOADK                            R24 K512 ["Action.Edit"]
     8853 CALL                             R23 1 1
     8854 LOADK                            R24 K44 [""]
     8855 FASTCALL1                        TOSTRING R23 ; [+3]
     8856 MOVE                             R26 R23
     8857 GETIMPORT                        R25 K4 [tostring]
     8859 CALL                             R25 1 1
     8860 LOADK                            R26 K44 [""]
     8861 CONCAT                           R22 R24 R26
     8862 SETTABLEKS                       R22 R21 K525 ["oldRole"]
     8864 GETTABLEKS                       R25 R2 K42 ["metaData"]
     8866 JUMPIFNOT                        R25 ; [+5]
     8867 GETTABLEKS                       R25 R2 K42 ["metaData"]
     8869 GETTABLEKS                       R24 R25 K43 ["Action"]
     8871 JUMPIF                           R24 ; [+1]
     8872 LOADK                            R24 K44 [""]
     8873 JUMPIFNOTEQKS                    R24 K511 ["Edit"] ; [+5]
     8875 MOVE                             R23 R12
     8876 LOADK                            R24 K512 ["Action.Edit"]
     8877 CALL                             R23 1 1
     8878 JUMPIF                           R23 ; [+3]
     8879 MOVE                             R23 R12
     8880 LOADK                            R24 K513 ["Action.Play"]
     8881 CALL                             R23 1 1
     8882 LOADK                            R24 K44 [""]
     8883 FASTCALL1                        TOSTRING R23 ; [+3]
     8884 MOVE                             R26 R23
     8885 GETIMPORT                        R25 K4 [tostring]
     8887 CALL                             R25 1 1
     8888 LOADK                            R26 K44 [""]
     8889 CONCAT                           R22 R24 R26
     8890 SETTABLEKS                       R22 R21 K526 ["newRole"]
     8892 CALL                             R19 2 1
     8893 SETTABLEKS                       R19 R18 K24 ["translation"]
     8895 GETTABLEKS                       R19 R2 K14 ["userId"]
     8897 SETTABLEKS                       R19 R18 K25 ["actorId"]
     8899 MOVE                             R19 R0
     8900 GETTABLEKS                       R20 R2 K14 ["userId"]
     8902 CALL                             R19 1 1
     8903 SETTABLEKS                       R19 R18 K26 ["actorName"]
     8905 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8907 ORK                              R19 R20 K18 [0]
     8908 SETTABLEKS                       R19 R18 K29 ["iconId"]
     8910 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8912 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8914 GETTABLEKS                       R19 R2 K30 ["headerText"]
     8916 SETTABLEKS                       R19 R18 K30 ["headerText"]
     8918 GETTABLEKS                       R19 R2 K31 ["footerText"]
     8920 SETTABLEKS                       R19 R18 K31 ["footerText"]
     8922 SETTABLEKS                       R10 R18 K273 ["viewOnRobloxLink"]
     8924 RETURN                           R18 1
     8925 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8927 JUMPIFNOTEQKN                    R18 K528 [91] ; [+99]
     8929 DUPTABLE                         R18 K530 [{["id"], ["eventType"] = "PermissionsUserRemoved", ["eventCategory"] = "Permissions", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "User", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewOnRobloxLink"]}]
     8930 GETTABLEKS                       R19 R2 K19 ["id"]
     8932 SETTABLEKS                       R19 R18 K19 ["id"]
     8934 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     8936 NEWCLOSURE                       R22 P6
     8937 CAPTURE                          VAL R20
     8938 CAPTURE                          VAL R3
     8939 FASTPCALL                        pcall 1 ; [+2]
     8940 GETIMPORT                        R21 K35 [pcall]
     8942 CALL                             R21 1 2
     8943 JUMPIFNOT                        R21 ; [+2]
     8944 MOVE                             R19 R22
     8945 JUMP                             ; [+1]
     8946 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     8947 SETTABLEKS                       R19 R18 K23 ["date"]
     8949 MOVE                             R19 R12
     8950 LOADK                            R20 K531 ["Description.PermissionsUserRemoved"]
     8951 DUPTABLE                         R21 K510 [{"userName", "role"}]
     8952 MOVE                             R23 R0
     8953 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     8955 CALL                             R23 1 1
     8956 LOADK                            R24 K44 [""]
     8957 FASTCALL1                        TOSTRING R23 ; [+3]
     8958 MOVE                             R26 R23
     8959 GETIMPORT                        R25 K4 [tostring]
     8961 CALL                             R25 1 1
     8962 LOADK                            R26 K44 [""]
     8963 CONCAT                           R22 R24 R26
     8964 SETTABLEKS                       R22 R21 K395 ["userName"]
     8966 GETTABLEKS                       R25 R2 K42 ["metaData"]
     8968 JUMPIFNOT                        R25 ; [+5]
     8969 GETTABLEKS                       R25 R2 K42 ["metaData"]
     8971 GETTABLEKS                       R24 R25 K43 ["Action"]
     8973 JUMPIF                           R24 ; [+1]
     8974 LOADK                            R24 K44 [""]
     8975 JUMPIFNOTEQKS                    R24 K511 ["Edit"] ; [+5]
     8977 MOVE                             R23 R12
     8978 LOADK                            R24 K532 ["Description.RoleEditor"]
     8979 CALL                             R23 1 1
     8980 JUMPIF                           R23 ; [+3]
     8981 MOVE                             R23 R12
     8982 LOADK                            R24 K533 ["Description.RolePlayer"]
     8983 CALL                             R23 1 1
     8984 LOADK                            R24 K44 [""]
     8985 FASTCALL1                        TOSTRING R23 ; [+3]
     8986 MOVE                             R26 R23
     8987 GETIMPORT                        R25 K4 [tostring]
     8989 CALL                             R25 1 1
     8990 LOADK                            R26 K44 [""]
     8991 CONCAT                           R22 R24 R26
     8992 SETTABLEKS                       R22 R21 K509 ["role"]
     8994 CALL                             R19 2 1
     8995 SETTABLEKS                       R19 R18 K24 ["translation"]
     8997 GETTABLEKS                       R19 R2 K14 ["userId"]
     8999 SETTABLEKS                       R19 R18 K25 ["actorId"]
     9001 MOVE                             R19 R0
     9002 GETTABLEKS                       R20 R2 K14 ["userId"]
     9004 CALL                             R19 1 1
     9005 SETTABLEKS                       R19 R18 K26 ["actorName"]
     9007 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9009 ORK                              R19 R20 K18 [0]
     9010 SETTABLEKS                       R19 R18 K29 ["iconId"]
     9012 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9014 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9016 GETTABLEKS                       R19 R2 K30 ["headerText"]
     9018 SETTABLEKS                       R19 R18 K30 ["headerText"]
     9020 GETTABLEKS                       R19 R2 K31 ["footerText"]
     9022 SETTABLEKS                       R19 R18 K31 ["footerText"]
     9024 SETTABLEKS                       R10 R18 K273 ["viewOnRobloxLink"]
     9026 RETURN                           R18 1
     9027 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9029 JUMPIFNOTEQKN                    R18 K534 [92] ; [+166]
     9031 DUPTABLE                         R18 K536 [{["id"], ["eventType"] = "PermissionsGroupChanged", ["eventCategory"] = "Permissions", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewOnRobloxLink"]}]
     9032 GETTABLEKS                       R19 R2 K19 ["id"]
     9034 SETTABLEKS                       R19 R18 K19 ["id"]
     9036 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     9038 NEWCLOSURE                       R22 P6
     9039 CAPTURE                          VAL R20
     9040 CAPTURE                          VAL R3
     9041 FASTPCALL                        pcall 1 ; [+2]
     9042 GETIMPORT                        R21 K35 [pcall]
     9044 CALL                             R21 1 2
     9045 JUMPIFNOT                        R21 ; [+2]
     9046 MOVE                             R19 R22
     9047 JUMP                             ; [+1]
     9048 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     9049 SETTABLEKS                       R19 R18 K23 ["date"]
     9051 MOVE                             R19 R12
     9052 LOADK                            R20 K537 ["Description.PermissionsGroupChanged"]
     9053 DUPTABLE                         R21 K538 [{"groupRole", "groupName", "oldRole", "newRole"}]
     9054 GETTABLEKS                       R24 R2 K42 ["metaData"]
     9056 JUMPIFNOT                        R24 ; [+5]
     9057 GETTABLEKS                       R24 R2 K42 ["metaData"]
     9059 GETTABLEKS                       R23 R24 K520 ["RolesetName"]
     9061 JUMPIF                           R23 ; [+1]
     9062 LOADK                            R23 K44 [""]
     9063 LOADK                            R24 K44 [""]
     9064 FASTCALL1                        TOSTRING R23 ; [+3]
     9065 MOVE                             R26 R23
     9066 GETIMPORT                        R25 K4 [tostring]
     9068 CALL                             R25 1 1
     9069 LOADK                            R26 K44 [""]
     9070 CONCAT                           R22 R24 R26
     9071 SETTABLEKS                       R22 R21 K518 ["groupRole"]
     9073 GETTABLEKS                       R24 R2 K42 ["metaData"]
     9075 JUMPIFNOT                        R24 ; [+5]
     9076 GETTABLEKS                       R24 R2 K42 ["metaData"]
     9078 GETTABLEKS                       R23 R24 K404 ["GroupName"]
     9080 JUMPIF                           R23 ; [+1]
     9081 LOADK                            R23 K44 [""]
     9082 LOADK                            R24 K44 [""]
     9083 FASTCALL1                        TOSTRING R23 ; [+3]
     9084 MOVE                             R26 R23
     9085 GETIMPORT                        R25 K4 [tostring]
     9087 CALL                             R25 1 1
     9088 LOADK                            R26 K44 [""]
     9089 CONCAT                           R22 R24 R26
     9090 SETTABLEKS                       R22 R21 K402 ["groupName"]
     9092 GETTABLEKS                       R25 R2 K42 ["metaData"]
     9094 JUMPIFNOT                        R25 ; [+5]
     9095 GETTABLEKS                       R25 R2 K42 ["metaData"]
     9097 GETTABLEKS                       R24 R25 K43 ["Action"]
     9099 JUMPIF                           R24 ; [+1]
     9100 LOADK                            R24 K44 [""]
     9101 JUMPIFNOTEQKS                    R24 K511 ["Edit"] ; [+5]
     9103 MOVE                             R23 R12
     9104 LOADK                            R24 K513 ["Action.Play"]
     9105 CALL                             R23 1 1
     9106 JUMPIF                           R23 ; [+3]
     9107 MOVE                             R23 R12
     9108 LOADK                            R24 K512 ["Action.Edit"]
     9109 CALL                             R23 1 1
     9110 LOADK                            R24 K44 [""]
     9111 FASTCALL1                        TOSTRING R23 ; [+3]
     9112 MOVE                             R26 R23
     9113 GETIMPORT                        R25 K4 [tostring]
     9115 CALL                             R25 1 1
     9116 LOADK                            R26 K44 [""]
     9117 CONCAT                           R22 R24 R26
     9118 SETTABLEKS                       R22 R21 K525 ["oldRole"]
     9120 GETTABLEKS                       R25 R2 K42 ["metaData"]
     9122 JUMPIFNOT                        R25 ; [+5]
     9123 GETTABLEKS                       R25 R2 K42 ["metaData"]
     9125 GETTABLEKS                       R24 R25 K43 ["Action"]
     9127 JUMPIF                           R24 ; [+1]
     9128 LOADK                            R24 K44 [""]
     9129 JUMPIFNOTEQKS                    R24 K511 ["Edit"] ; [+5]
     9131 MOVE                             R23 R12
     9132 LOADK                            R24 K512 ["Action.Edit"]
     9133 CALL                             R23 1 1
     9134 JUMPIF                           R23 ; [+3]
     9135 MOVE                             R23 R12
     9136 LOADK                            R24 K513 ["Action.Play"]
     9137 CALL                             R23 1 1
     9138 LOADK                            R24 K44 [""]
     9139 FASTCALL1                        TOSTRING R23 ; [+3]
     9140 MOVE                             R26 R23
     9141 GETIMPORT                        R25 K4 [tostring]
     9143 CALL                             R25 1 1
     9144 LOADK                            R26 K44 [""]
     9145 CONCAT                           R22 R24 R26
     9146 SETTABLEKS                       R22 R21 K526 ["newRole"]
     9148 CALL                             R19 2 1
     9149 SETTABLEKS                       R19 R18 K24 ["translation"]
     9151 GETTABLEKS                       R19 R2 K14 ["userId"]
     9153 SETTABLEKS                       R19 R18 K25 ["actorId"]
     9155 MOVE                             R19 R0
     9156 GETTABLEKS                       R20 R2 K14 ["userId"]
     9158 CALL                             R19 1 1
     9159 SETTABLEKS                       R19 R18 K26 ["actorName"]
     9161 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9163 ORK                              R19 R20 K18 [0]
     9164 SETTABLEKS                       R19 R18 K29 ["iconId"]
     9166 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9168 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9170 GETTABLEKS                       R19 R2 K30 ["headerText"]
     9172 SETTABLEKS                       R19 R18 K30 ["headerText"]
     9174 GETTABLEKS                       R19 R2 K31 ["footerText"]
     9176 SETTABLEKS                       R19 R18 K31 ["footerText"]
     9178 LOADK                            R20 K44 [""]
     9179 GETUPVAL                         R22 1
     9180 FASTCALL1                        TOSTRING R22 ; [+2]
     9181 GETIMPORT                        R21 K4 [tostring]
     9183 CALL                             R21 1 1
     9184 LOADK                            R22 K16 ["groups/"]
     9185 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     9187 FASTCALL1                        TOSTRING R24 ; [+2]
     9188 GETIMPORT                        R23 K4 [tostring]
     9190 CALL                             R23 1 1
     9191 LOADK                            R24 K44 [""]
     9192 CONCAT                           R19 R20 R24
     9193 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     9195 RETURN                           R18 1
     9196 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9198 JUMPIFNOTEQKN                    R18 K539 [93] ; [+138]
     9200 DUPTABLE                         R18 K541 [{["id"], ["eventType"] = "PermissionsGroupRemoved", ["eventCategory"] = "Permissions", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewOnRobloxLink"]}]
     9201 GETTABLEKS                       R19 R2 K19 ["id"]
     9203 SETTABLEKS                       R19 R18 K19 ["id"]
     9205 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     9207 NEWCLOSURE                       R22 P6
     9208 CAPTURE                          VAL R20
     9209 CAPTURE                          VAL R3
     9210 FASTPCALL                        pcall 1 ; [+2]
     9211 GETIMPORT                        R21 K35 [pcall]
     9213 CALL                             R21 1 2
     9214 JUMPIFNOT                        R21 ; [+2]
     9215 MOVE                             R19 R22
     9216 JUMP                             ; [+1]
     9217 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     9218 SETTABLEKS                       R19 R18 K23 ["date"]
     9220 MOVE                             R19 R12
     9221 LOADK                            R20 K542 ["Description.PermissionsGroupRemoved"]
     9222 DUPTABLE                         R21 K519 [{"groupRole", "groupName", "role"}]
     9223 GETTABLEKS                       R24 R2 K42 ["metaData"]
     9225 JUMPIFNOT                        R24 ; [+5]
     9226 GETTABLEKS                       R24 R2 K42 ["metaData"]
     9228 GETTABLEKS                       R23 R24 K520 ["RolesetName"]
     9230 JUMPIF                           R23 ; [+1]
     9231 LOADK                            R23 K44 [""]
     9232 LOADK                            R24 K44 [""]
     9233 FASTCALL1                        TOSTRING R23 ; [+3]
     9234 MOVE                             R26 R23
     9235 GETIMPORT                        R25 K4 [tostring]
     9237 CALL                             R25 1 1
     9238 LOADK                            R26 K44 [""]
     9239 CONCAT                           R22 R24 R26
     9240 SETTABLEKS                       R22 R21 K518 ["groupRole"]
     9242 GETTABLEKS                       R24 R2 K42 ["metaData"]
     9244 JUMPIFNOT                        R24 ; [+5]
     9245 GETTABLEKS                       R24 R2 K42 ["metaData"]
     9247 GETTABLEKS                       R23 R24 K404 ["GroupName"]
     9249 JUMPIF                           R23 ; [+1]
     9250 LOADK                            R23 K44 [""]
     9251 LOADK                            R24 K44 [""]
     9252 FASTCALL1                        TOSTRING R23 ; [+3]
     9253 MOVE                             R26 R23
     9254 GETIMPORT                        R25 K4 [tostring]
     9256 CALL                             R25 1 1
     9257 LOADK                            R26 K44 [""]
     9258 CONCAT                           R22 R24 R26
     9259 SETTABLEKS                       R22 R21 K402 ["groupName"]
     9261 GETTABLEKS                       R25 R2 K42 ["metaData"]
     9263 JUMPIFNOT                        R25 ; [+5]
     9264 GETTABLEKS                       R25 R2 K42 ["metaData"]
     9266 GETTABLEKS                       R24 R25 K43 ["Action"]
     9268 JUMPIF                           R24 ; [+1]
     9269 LOADK                            R24 K44 [""]
     9270 JUMPIFNOTEQKS                    R24 K511 ["Edit"] ; [+5]
     9272 MOVE                             R23 R12
     9273 LOADK                            R24 K532 ["Description.RoleEditor"]
     9274 CALL                             R23 1 1
     9275 JUMPIF                           R23 ; [+3]
     9276 MOVE                             R23 R12
     9277 LOADK                            R24 K533 ["Description.RolePlayer"]
     9278 CALL                             R23 1 1
     9279 LOADK                            R24 K44 [""]
     9280 FASTCALL1                        TOSTRING R23 ; [+3]
     9281 MOVE                             R26 R23
     9282 GETIMPORT                        R25 K4 [tostring]
     9284 CALL                             R25 1 1
     9285 LOADK                            R26 K44 [""]
     9286 CONCAT                           R22 R24 R26
     9287 SETTABLEKS                       R22 R21 K509 ["role"]
     9289 CALL                             R19 2 1
     9290 SETTABLEKS                       R19 R18 K24 ["translation"]
     9292 GETTABLEKS                       R19 R2 K14 ["userId"]
     9294 SETTABLEKS                       R19 R18 K25 ["actorId"]
     9296 MOVE                             R19 R0
     9297 GETTABLEKS                       R20 R2 K14 ["userId"]
     9299 CALL                             R19 1 1
     9300 SETTABLEKS                       R19 R18 K26 ["actorName"]
     9302 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9304 ORK                              R19 R20 K18 [0]
     9305 SETTABLEKS                       R19 R18 K29 ["iconId"]
     9307 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9309 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9311 GETTABLEKS                       R19 R2 K30 ["headerText"]
     9313 SETTABLEKS                       R19 R18 K30 ["headerText"]
     9315 GETTABLEKS                       R19 R2 K31 ["footerText"]
     9317 SETTABLEKS                       R19 R18 K31 ["footerText"]
     9319 LOADK                            R20 K44 [""]
     9320 GETUPVAL                         R22 1
     9321 FASTCALL1                        TOSTRING R22 ; [+2]
     9322 GETIMPORT                        R21 K4 [tostring]
     9324 CALL                             R21 1 1
     9325 LOADK                            R22 K16 ["groups/"]
     9326 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     9328 FASTCALL1                        TOSTRING R24 ; [+2]
     9329 GETIMPORT                        R23 K4 [tostring]
     9331 CALL                             R23 1 1
     9332 LOADK                            R24 K44 [""]
     9333 CONCAT                           R19 R20 R24
     9334 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     9336 RETURN                           R18 1
     9337 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9339 JUMPIFNOTEQKN                    R18 K543 [94] ; [+111]
     9341 DUPTABLE                         R18 K545 [{["id"], ["eventType"] = "TeamCreate", ["eventCategory"] = "Permissions", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "User", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewOnRobloxLink"]}]
     9342 GETTABLEKS                       R19 R2 K19 ["id"]
     9344 SETTABLEKS                       R19 R18 K19 ["id"]
     9346 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     9348 NEWCLOSURE                       R22 P6
     9349 CAPTURE                          VAL R20
     9350 CAPTURE                          VAL R3
     9351 FASTPCALL                        pcall 1 ; [+2]
     9352 GETIMPORT                        R21 K35 [pcall]
     9354 CALL                             R21 1 2
     9355 JUMPIFNOT                        R21 ; [+2]
     9356 MOVE                             R19 R22
     9357 JUMP                             ; [+1]
     9358 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     9359 SETTABLEKS                       R19 R18 K23 ["date"]
     9361 MOVE                             R19 R12
     9362 LOADK                            R20 K546 ["Description.TeamCreate"]
     9363 DUPTABLE                         R21 K547 [{"userName", "action"}]
     9364 MOVE                             R23 R0
     9365 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     9367 CALL                             R23 1 1
     9368 LOADK                            R24 K44 [""]
     9369 FASTCALL1                        TOSTRING R23 ; [+3]
     9370 MOVE                             R26 R23
     9371 GETIMPORT                        R25 K4 [tostring]
     9373 CALL                             R25 1 1
     9374 LOADK                            R26 K44 [""]
     9375 CONCAT                           R22 R24 R26
     9376 SETTABLEKS                       R22 R21 K395 ["userName"]
     9378 GETTABLEKS                       R26 R2 K42 ["metaData"]
     9380 JUMPIFNOT                        R26 ; [+5]
     9381 GETTABLEKS                       R26 R2 K42 ["metaData"]
     9383 GETTABLEKS                       R25 R26 K43 ["Action"]
     9385 JUMPIF                           R25 ; [+1]
     9386 LOADK                            R25 K44 [""]
     9387 GETIMPORT                        R26 K47 [string.lower]
     9389 FASTCALL1                        TOSTRING R25 ; [+3]
     9390 MOVE                             R28 R25
     9391 GETIMPORT                        R27 K4 [tostring]
     9393 CALL                             R27 1 1
     9394 CALL                             R26 1 1
     9395 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     9397 LOADB                            R24 1
     9398 JUMP                             ; [+1]
     9399 LOADB                            R24 0
     9400 JUMPIFNOT                        R24 ; [+4]
     9401 MOVE                             R23 R12
     9402 LOADK                            R24 K548 ["Description.ActionJoined"]
     9403 CALL                             R23 1 1
     9404 JUMPIF                           R23 ; [+3]
     9405 MOVE                             R23 R12
     9406 LOADK                            R24 K549 ["Description.ActionLeft"]
     9407 CALL                             R23 1 1
     9408 LOADK                            R24 K44 [""]
     9409 FASTCALL1                        TOSTRING R23 ; [+3]
     9410 MOVE                             R26 R23
     9411 GETIMPORT                        R25 K4 [tostring]
     9413 CALL                             R25 1 1
     9414 LOADK                            R26 K44 [""]
     9415 CONCAT                           R22 R24 R26
     9416 SETTABLEKS                       R22 R21 K156 ["action"]
     9418 CALL                             R19 2 1
     9419 SETTABLEKS                       R19 R18 K24 ["translation"]
     9421 GETTABLEKS                       R19 R2 K14 ["userId"]
     9423 SETTABLEKS                       R19 R18 K25 ["actorId"]
     9425 MOVE                             R19 R0
     9426 GETTABLEKS                       R20 R2 K14 ["userId"]
     9428 CALL                             R19 1 1
     9429 SETTABLEKS                       R19 R18 K26 ["actorName"]
     9431 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9433 ORK                              R19 R20 K18 [0]
     9434 SETTABLEKS                       R19 R18 K29 ["iconId"]
     9436 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9438 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9440 GETTABLEKS                       R19 R2 K30 ["headerText"]
     9442 SETTABLEKS                       R19 R18 K30 ["headerText"]
     9444 GETTABLEKS                       R19 R2 K31 ["footerText"]
     9446 SETTABLEKS                       R19 R18 K31 ["footerText"]
     9448 SETTABLEKS                       R9 R18 K273 ["viewOnRobloxLink"]
     9450 RETURN                           R18 1
     9451 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9453 JUMPIFNOTEQKN                    R18 K550 [95] ; [+88]
     9455 DUPTABLE                         R18 K553 [{["id"], ["eventType"] = "PlaceIconAutoGenerated", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     9456 GETTABLEKS                       R19 R2 K19 ["id"]
     9458 SETTABLEKS                       R19 R18 K19 ["id"]
     9460 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     9462 NEWCLOSURE                       R22 P6
     9463 CAPTURE                          VAL R20
     9464 CAPTURE                          VAL R3
     9465 FASTPCALL                        pcall 1 ; [+2]
     9466 GETIMPORT                        R21 K35 [pcall]
     9468 CALL                             R21 1 2
     9469 JUMPIFNOT                        R21 ; [+2]
     9470 MOVE                             R19 R22
     9471 JUMP                             ; [+1]
     9472 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     9473 SETTABLEKS                       R19 R18 K23 ["date"]
     9475 MOVE                             R19 R12
     9476 LOADK                            R20 K554 ["Description.PlaceIconAutoGenerated"]
     9477 CALL                             R19 1 1
     9478 SETTABLEKS                       R19 R18 K24 ["translation"]
     9480 GETTABLEKS                       R19 R2 K14 ["userId"]
     9482 SETTABLEKS                       R19 R18 K25 ["actorId"]
     9484 MOVE                             R19 R0
     9485 GETTABLEKS                       R20 R2 K14 ["userId"]
     9487 CALL                             R19 1 1
     9488 SETTABLEKS                       R19 R18 K26 ["actorName"]
     9490 GETTABLEKS                       R20 R2 K6 ["placeId"]
     9492 ORK                              R19 R20 K18 [0]
     9493 SETTABLEKS                       R19 R18 K29 ["iconId"]
     9495 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9497 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9499 GETTABLEKS                       R19 R2 K30 ["headerText"]
     9501 SETTABLEKS                       R19 R18 K30 ["headerText"]
     9503 GETTABLEKS                       R19 R2 K31 ["footerText"]
     9505 SETTABLEKS                       R19 R18 K31 ["footerText"]
     9507 LOADK                            R20 K44 [""]
     9508 FASTCALL1                        TOSTRING R4 ; [+3]
     9509 MOVE                             R22 R4
     9510 GETIMPORT                        R21 K4 [tostring]
     9512 CALL                             R21 1 1
     9513 LOADK                            R22 K5 ["/places/"]
     9514 GETTABLEKS                       R24 R2 K6 ["placeId"]
     9516 FASTCALL1                        TOSTRING R24 ; [+2]
     9517 GETIMPORT                        R23 K4 [tostring]
     9519 CALL                             R23 1 1
     9520 LOADK                            R24 K555 ["/icon"]
     9521 CONCAT                           R19 R20 R24
     9522 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     9524 LOADK                            R20 K44 [""]
     9525 GETUPVAL                         R22 1
     9526 FASTCALL1                        TOSTRING R22 ; [+2]
     9527 GETIMPORT                        R21 K4 [tostring]
     9529 CALL                             R21 1 1
     9530 LOADK                            R22 K556 ["games/"]
     9531 GETTABLEKS                       R24 R2 K6 ["placeId"]
     9533 FASTCALL1                        TOSTRING R24 ; [+2]
     9534 GETIMPORT                        R23 K4 [tostring]
     9536 CALL                             R23 1 1
     9537 LOADK                            R24 K44 [""]
     9538 CONCAT                           R19 R20 R24
     9539 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     9541 RETURN                           R18 1
     9542 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9544 JUMPIFNOTEQKN                    R18 K557 [96] ; [+88]
     9546 DUPTABLE                         R18 K559 [{["id"], ["eventType"] = "PlaceIconChanged", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     9547 GETTABLEKS                       R19 R2 K19 ["id"]
     9549 SETTABLEKS                       R19 R18 K19 ["id"]
     9551 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     9553 NEWCLOSURE                       R22 P6
     9554 CAPTURE                          VAL R20
     9555 CAPTURE                          VAL R3
     9556 FASTPCALL                        pcall 1 ; [+2]
     9557 GETIMPORT                        R21 K35 [pcall]
     9559 CALL                             R21 1 2
     9560 JUMPIFNOT                        R21 ; [+2]
     9561 MOVE                             R19 R22
     9562 JUMP                             ; [+1]
     9563 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     9564 SETTABLEKS                       R19 R18 K23 ["date"]
     9566 MOVE                             R19 R12
     9567 LOADK                            R20 K560 ["Description.PlaceIconChanged"]
     9568 CALL                             R19 1 1
     9569 SETTABLEKS                       R19 R18 K24 ["translation"]
     9571 GETTABLEKS                       R19 R2 K14 ["userId"]
     9573 SETTABLEKS                       R19 R18 K25 ["actorId"]
     9575 MOVE                             R19 R0
     9576 GETTABLEKS                       R20 R2 K14 ["userId"]
     9578 CALL                             R19 1 1
     9579 SETTABLEKS                       R19 R18 K26 ["actorName"]
     9581 GETTABLEKS                       R20 R2 K6 ["placeId"]
     9583 ORK                              R19 R20 K18 [0]
     9584 SETTABLEKS                       R19 R18 K29 ["iconId"]
     9586 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9588 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9590 GETTABLEKS                       R19 R2 K30 ["headerText"]
     9592 SETTABLEKS                       R19 R18 K30 ["headerText"]
     9594 GETTABLEKS                       R19 R2 K31 ["footerText"]
     9596 SETTABLEKS                       R19 R18 K31 ["footerText"]
     9598 LOADK                            R20 K44 [""]
     9599 FASTCALL1                        TOSTRING R4 ; [+3]
     9600 MOVE                             R22 R4
     9601 GETIMPORT                        R21 K4 [tostring]
     9603 CALL                             R21 1 1
     9604 LOADK                            R22 K5 ["/places/"]
     9605 GETTABLEKS                       R24 R2 K6 ["placeId"]
     9607 FASTCALL1                        TOSTRING R24 ; [+2]
     9608 GETIMPORT                        R23 K4 [tostring]
     9610 CALL                             R23 1 1
     9611 LOADK                            R24 K555 ["/icon"]
     9612 CONCAT                           R19 R20 R24
     9613 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     9615 LOADK                            R20 K44 [""]
     9616 GETUPVAL                         R22 1
     9617 FASTCALL1                        TOSTRING R22 ; [+2]
     9618 GETIMPORT                        R21 K4 [tostring]
     9620 CALL                             R21 1 1
     9621 LOADK                            R22 K556 ["games/"]
     9622 GETTABLEKS                       R24 R2 K6 ["placeId"]
     9624 FASTCALL1                        TOSTRING R24 ; [+2]
     9625 GETIMPORT                        R23 K4 [tostring]
     9627 CALL                             R23 1 1
     9628 LOADK                            R24 K44 [""]
     9629 CONCAT                           R19 R20 R24
     9630 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     9632 RETURN                           R18 1
     9633 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9635 JUMPIFNOTEQKN                    R18 K561 [97] ; [+88]
     9637 DUPTABLE                         R18 K563 [{["id"], ["eventType"] = "PlaceIconRemoved", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     9638 GETTABLEKS                       R19 R2 K19 ["id"]
     9640 SETTABLEKS                       R19 R18 K19 ["id"]
     9642 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     9644 NEWCLOSURE                       R22 P6
     9645 CAPTURE                          VAL R20
     9646 CAPTURE                          VAL R3
     9647 FASTPCALL                        pcall 1 ; [+2]
     9648 GETIMPORT                        R21 K35 [pcall]
     9650 CALL                             R21 1 2
     9651 JUMPIFNOT                        R21 ; [+2]
     9652 MOVE                             R19 R22
     9653 JUMP                             ; [+1]
     9654 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     9655 SETTABLEKS                       R19 R18 K23 ["date"]
     9657 MOVE                             R19 R12
     9658 LOADK                            R20 K564 ["Description.PlaceIconRemoved"]
     9659 CALL                             R19 1 1
     9660 SETTABLEKS                       R19 R18 K24 ["translation"]
     9662 GETTABLEKS                       R19 R2 K14 ["userId"]
     9664 SETTABLEKS                       R19 R18 K25 ["actorId"]
     9666 MOVE                             R19 R0
     9667 GETTABLEKS                       R20 R2 K14 ["userId"]
     9669 CALL                             R19 1 1
     9670 SETTABLEKS                       R19 R18 K26 ["actorName"]
     9672 GETTABLEKS                       R20 R2 K6 ["placeId"]
     9674 ORK                              R19 R20 K18 [0]
     9675 SETTABLEKS                       R19 R18 K29 ["iconId"]
     9677 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9679 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9681 GETTABLEKS                       R19 R2 K30 ["headerText"]
     9683 SETTABLEKS                       R19 R18 K30 ["headerText"]
     9685 GETTABLEKS                       R19 R2 K31 ["footerText"]
     9687 SETTABLEKS                       R19 R18 K31 ["footerText"]
     9689 LOADK                            R20 K44 [""]
     9690 FASTCALL1                        TOSTRING R4 ; [+3]
     9691 MOVE                             R22 R4
     9692 GETIMPORT                        R21 K4 [tostring]
     9694 CALL                             R21 1 1
     9695 LOADK                            R22 K5 ["/places/"]
     9696 GETTABLEKS                       R24 R2 K6 ["placeId"]
     9698 FASTCALL1                        TOSTRING R24 ; [+2]
     9699 GETIMPORT                        R23 K4 [tostring]
     9701 CALL                             R23 1 1
     9702 LOADK                            R24 K555 ["/icon"]
     9703 CONCAT                           R19 R20 R24
     9704 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     9706 LOADK                            R20 K44 [""]
     9707 GETUPVAL                         R22 1
     9708 FASTCALL1                        TOSTRING R22 ; [+2]
     9709 GETIMPORT                        R21 K4 [tostring]
     9711 CALL                             R21 1 1
     9712 LOADK                            R22 K556 ["games/"]
     9713 GETTABLEKS                       R24 R2 K6 ["placeId"]
     9715 FASTCALL1                        TOSTRING R24 ; [+2]
     9716 GETIMPORT                        R23 K4 [tostring]
     9718 CALL                             R23 1 1
     9719 LOADK                            R24 K44 [""]
     9720 CONCAT                           R19 R20 R24
     9721 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     9723 RETURN                           R18 1
     9724 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9726 JUMPIFNOTEQKN                    R18 K565 [98] ; [+88]
     9728 DUPTABLE                         R18 K567 [{["id"], ["eventType"] = "PlaceGearGenresOnlyAllowFromExperiencesGenre", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     9729 GETTABLEKS                       R19 R2 K19 ["id"]
     9731 SETTABLEKS                       R19 R18 K19 ["id"]
     9733 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     9735 NEWCLOSURE                       R22 P6
     9736 CAPTURE                          VAL R20
     9737 CAPTURE                          VAL R3
     9738 FASTPCALL                        pcall 1 ; [+2]
     9739 GETIMPORT                        R21 K35 [pcall]
     9741 CALL                             R21 1 2
     9742 JUMPIFNOT                        R21 ; [+2]
     9743 MOVE                             R19 R22
     9744 JUMP                             ; [+1]
     9745 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     9746 SETTABLEKS                       R19 R18 K23 ["date"]
     9748 MOVE                             R19 R12
     9749 LOADK                            R20 K568 ["Description.PlaceGearGenresOnlyAllowFromExperiencesGenre"]
     9750 CALL                             R19 1 1
     9751 SETTABLEKS                       R19 R18 K24 ["translation"]
     9753 GETTABLEKS                       R19 R2 K14 ["userId"]
     9755 SETTABLEKS                       R19 R18 K25 ["actorId"]
     9757 MOVE                             R19 R0
     9758 GETTABLEKS                       R20 R2 K14 ["userId"]
     9760 CALL                             R19 1 1
     9761 SETTABLEKS                       R19 R18 K26 ["actorName"]
     9763 GETTABLEKS                       R20 R2 K6 ["placeId"]
     9765 ORK                              R19 R20 K18 [0]
     9766 SETTABLEKS                       R19 R18 K29 ["iconId"]
     9768 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9770 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9772 GETTABLEKS                       R19 R2 K30 ["headerText"]
     9774 SETTABLEKS                       R19 R18 K30 ["headerText"]
     9776 GETTABLEKS                       R19 R2 K31 ["footerText"]
     9778 SETTABLEKS                       R19 R18 K31 ["footerText"]
     9780 LOADK                            R20 K44 [""]
     9781 FASTCALL1                        TOSTRING R4 ; [+3]
     9782 MOVE                             R22 R4
     9783 GETIMPORT                        R21 K4 [tostring]
     9785 CALL                             R21 1 1
     9786 LOADK                            R22 K5 ["/places/"]
     9787 GETTABLEKS                       R24 R2 K6 ["placeId"]
     9789 FASTCALL1                        TOSTRING R24 ; [+2]
     9790 GETIMPORT                        R23 K4 [tostring]
     9792 CALL                             R23 1 1
     9793 LOADK                            R24 K569 ["/permissions"]
     9794 CONCAT                           R19 R20 R24
     9795 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     9797 LOADK                            R20 K44 [""]
     9798 GETUPVAL                         R22 1
     9799 FASTCALL1                        TOSTRING R22 ; [+2]
     9800 GETIMPORT                        R21 K4 [tostring]
     9802 CALL                             R21 1 1
     9803 LOADK                            R22 K556 ["games/"]
     9804 GETTABLEKS                       R24 R2 K6 ["placeId"]
     9806 FASTCALL1                        TOSTRING R24 ; [+2]
     9807 GETIMPORT                        R23 K4 [tostring]
     9809 CALL                             R23 1 1
     9810 LOADK                            R24 K44 [""]
     9811 CONCAT                           R19 R20 R24
     9812 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     9814 RETURN                           R18 1
     9815 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9817 JUMPIFNOTEQKN                    R18 K570 [99] ; [+88]
     9819 DUPTABLE                         R18 K572 [{["id"], ["eventType"] = "PlaceGearGenresAllowAllGearGenres", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     9820 GETTABLEKS                       R19 R2 K19 ["id"]
     9822 SETTABLEKS                       R19 R18 K19 ["id"]
     9824 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     9826 NEWCLOSURE                       R22 P6
     9827 CAPTURE                          VAL R20
     9828 CAPTURE                          VAL R3
     9829 FASTPCALL                        pcall 1 ; [+2]
     9830 GETIMPORT                        R21 K35 [pcall]
     9832 CALL                             R21 1 2
     9833 JUMPIFNOT                        R21 ; [+2]
     9834 MOVE                             R19 R22
     9835 JUMP                             ; [+1]
     9836 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     9837 SETTABLEKS                       R19 R18 K23 ["date"]
     9839 MOVE                             R19 R12
     9840 LOADK                            R20 K573 ["Description.PlaceGearGenresAllowAllGearGenres"]
     9841 CALL                             R19 1 1
     9842 SETTABLEKS                       R19 R18 K24 ["translation"]
     9844 GETTABLEKS                       R19 R2 K14 ["userId"]
     9846 SETTABLEKS                       R19 R18 K25 ["actorId"]
     9848 MOVE                             R19 R0
     9849 GETTABLEKS                       R20 R2 K14 ["userId"]
     9851 CALL                             R19 1 1
     9852 SETTABLEKS                       R19 R18 K26 ["actorName"]
     9854 GETTABLEKS                       R20 R2 K6 ["placeId"]
     9856 ORK                              R19 R20 K18 [0]
     9857 SETTABLEKS                       R19 R18 K29 ["iconId"]
     9859 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9861 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9863 GETTABLEKS                       R19 R2 K30 ["headerText"]
     9865 SETTABLEKS                       R19 R18 K30 ["headerText"]
     9867 GETTABLEKS                       R19 R2 K31 ["footerText"]
     9869 SETTABLEKS                       R19 R18 K31 ["footerText"]
     9871 LOADK                            R20 K44 [""]
     9872 FASTCALL1                        TOSTRING R4 ; [+3]
     9873 MOVE                             R22 R4
     9874 GETIMPORT                        R21 K4 [tostring]
     9876 CALL                             R21 1 1
     9877 LOADK                            R22 K5 ["/places/"]
     9878 GETTABLEKS                       R24 R2 K6 ["placeId"]
     9880 FASTCALL1                        TOSTRING R24 ; [+2]
     9881 GETIMPORT                        R23 K4 [tostring]
     9883 CALL                             R23 1 1
     9884 LOADK                            R24 K569 ["/permissions"]
     9885 CONCAT                           R19 R20 R24
     9886 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     9888 LOADK                            R20 K44 [""]
     9889 GETUPVAL                         R22 1
     9890 FASTCALL1                        TOSTRING R22 ; [+2]
     9891 GETIMPORT                        R21 K4 [tostring]
     9893 CALL                             R21 1 1
     9894 LOADK                            R22 K556 ["games/"]
     9895 GETTABLEKS                       R24 R2 K6 ["placeId"]
     9897 FASTCALL1                        TOSTRING R24 ; [+2]
     9898 GETIMPORT                        R23 K4 [tostring]
     9900 CALL                             R23 1 1
     9901 LOADK                            R24 K44 [""]
     9902 CONCAT                           R19 R20 R24
     9903 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     9905 RETURN                           R18 1
     9906 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9908 JUMPIFNOTEQKN                    R18 K574 [100] ; [+111]
     9910 DUPTABLE                         R18 K576 [{["id"], ["eventType"] = "PlaceGearTypes", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     9911 GETTABLEKS                       R19 R2 K19 ["id"]
     9913 SETTABLEKS                       R19 R18 K19 ["id"]
     9915 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     9917 NEWCLOSURE                       R22 P6
     9918 CAPTURE                          VAL R20
     9919 CAPTURE                          VAL R3
     9920 FASTPCALL                        pcall 1 ; [+2]
     9921 GETIMPORT                        R21 K35 [pcall]
     9923 CALL                             R21 1 2
     9924 JUMPIFNOT                        R21 ; [+2]
     9925 MOVE                             R19 R22
     9926 JUMP                             ; [+1]
     9927 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     9928 SETTABLEKS                       R19 R18 K23 ["date"]
     9930 MOVE                             R19 R12
     9931 LOADK                            R20 K577 ["Description.PlaceGearTypes"]
     9932 DUPTABLE                         R21 K579 [{"gearTypes"}]
     9933 GETGLOBAL                        R23 K580 ["joinStrings"]
     9935 GETTABLEKS                       R25 R2 K42 ["metaData"]
     9937 JUMPIFNOT                        R25 ; [+5]
     9938 GETTABLEKS                       R25 R2 K42 ["metaData"]
     9940 GETTABLEKS                       R24 R25 K581 ["GearTypes"]
     9942 JUMPIF                           R24 ; [+1]
     9943 LOADK                            R24 K44 [""]
     9944 CALL                             R23 1 1
     9945 LOADK                            R24 K44 [""]
     9946 FASTCALL1                        TOSTRING R23 ; [+3]
     9947 MOVE                             R26 R23
     9948 GETIMPORT                        R25 K4 [tostring]
     9950 CALL                             R25 1 1
     9951 LOADK                            R26 K44 [""]
     9952 CONCAT                           R22 R24 R26
     9953 SETTABLEKS                       R22 R21 K578 ["gearTypes"]
     9955 CALL                             R19 2 1
     9956 SETTABLEKS                       R19 R18 K24 ["translation"]
     9958 GETTABLEKS                       R19 R2 K14 ["userId"]
     9960 SETTABLEKS                       R19 R18 K25 ["actorId"]
     9962 MOVE                             R19 R0
     9963 GETTABLEKS                       R20 R2 K14 ["userId"]
     9965 CALL                             R19 1 1
     9966 SETTABLEKS                       R19 R18 K26 ["actorName"]
     9968 GETTABLEKS                       R20 R2 K6 ["placeId"]
     9970 ORK                              R19 R20 K18 [0]
     9971 SETTABLEKS                       R19 R18 K29 ["iconId"]
     9973 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9975 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9977 GETTABLEKS                       R19 R2 K30 ["headerText"]
     9979 SETTABLEKS                       R19 R18 K30 ["headerText"]
     9981 GETTABLEKS                       R19 R2 K31 ["footerText"]
     9983 SETTABLEKS                       R19 R18 K31 ["footerText"]
     9985 LOADK                            R20 K44 [""]
     9986 FASTCALL1                        TOSTRING R4 ; [+3]
     9987 MOVE                             R22 R4
     9988 GETIMPORT                        R21 K4 [tostring]
     9990 CALL                             R21 1 1
     9991 LOADK                            R22 K5 ["/places/"]
     9992 GETTABLEKS                       R24 R2 K6 ["placeId"]
     9994 FASTCALL1                        TOSTRING R24 ; [+2]
     9995 GETIMPORT                        R23 K4 [tostring]
     9997 CALL                             R23 1 1
     9998 LOADK                            R24 K569 ["/permissions"]
     9999 CONCAT                           R19 R20 R24
    10000 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    10002 LOADK                            R20 K44 [""]
    10003 GETUPVAL                         R22 1
    10004 FASTCALL1                        TOSTRING R22 ; [+2]
    10005 GETIMPORT                        R21 K4 [tostring]
    10007 CALL                             R21 1 1
    10008 LOADK                            R22 K556 ["games/"]
    10009 GETTABLEKS                       R24 R2 K6 ["placeId"]
    10011 FASTCALL1                        TOSTRING R24 ; [+2]
    10012 GETIMPORT                        R23 K4 [tostring]
    10014 CALL                             R23 1 1
    10015 LOADK                            R24 K44 [""]
    10016 CONCAT                           R19 R20 R24
    10017 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    10019 RETURN                           R18 1
    10020 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10022 JUMPIFNOTEQKN                    R18 K582 [101] ; [+148]
    10024 DUPTABLE                         R18 K584 [{["id"], ["eventType"] = "PlaceDownloadPermission", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    10025 GETTABLEKS                       R19 R2 K19 ["id"]
    10027 SETTABLEKS                       R19 R18 K19 ["id"]
    10029 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    10031 NEWCLOSURE                       R22 P6
    10032 CAPTURE                          VAL R20
    10033 CAPTURE                          VAL R3
    10034 FASTPCALL                        pcall 1 ; [+2]
    10035 GETIMPORT                        R21 K35 [pcall]
    10037 CALL                             R21 1 2
    10038 JUMPIFNOT                        R21 ; [+2]
    10039 MOVE                             R19 R22
    10040 JUMP                             ; [+1]
    10041 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    10042 SETTABLEKS                       R19 R18 K23 ["date"]
    10044 MOVE                             R19 R12
    10045 LOADK                            R20 K585 ["Description.PlaceDownloadPermission"]
    10046 DUPTABLE                         R21 K587 [{"action", "placeName"}]
    10047 GETTABLEKS                       R26 R2 K42 ["metaData"]
    10049 JUMPIFNOT                        R26 ; [+5]
    10050 GETTABLEKS                       R26 R2 K42 ["metaData"]
    10052 GETTABLEKS                       R25 R26 K43 ["Action"]
    10054 JUMPIF                           R25 ; [+1]
    10055 LOADK                            R25 K44 [""]
    10056 GETIMPORT                        R26 K47 [string.lower]
    10058 FASTCALL1                        TOSTRING R25 ; [+3]
    10059 MOVE                             R28 R25
    10060 GETIMPORT                        R27 K4 [tostring]
    10062 CALL                             R27 1 1
    10063 CALL                             R26 1 1
    10064 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
    10066 LOADB                            R24 1
    10067 JUMP                             ; [+1]
    10068 LOADB                            R24 0
    10069 JUMPIFNOT                        R24 ; [+4]
    10070 MOVE                             R23 R12
    10071 LOADK                            R24 K158 ["Description.ActionEnabled"]
    10072 CALL                             R23 1 1
    10073 JUMPIF                           R23 ; [+3]
    10074 MOVE                             R23 R12
    10075 LOADK                            R24 K159 ["Description.ActionDisabled"]
    10076 CALL                             R23 1 1
    10077 LOADK                            R24 K44 [""]
    10078 FASTCALL1                        TOSTRING R23 ; [+3]
    10079 MOVE                             R26 R23
    10080 GETIMPORT                        R25 K4 [tostring]
    10082 CALL                             R25 1 1
    10083 LOADK                            R26 K44 [""]
    10084 CONCAT                           R22 R24 R26
    10085 SETTABLEKS                       R22 R21 K156 ["action"]
    10087 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10089 JUMPIFNOT                        R24 ; [+5]
    10090 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10092 GETTABLEKS                       R23 R24 K588 ["PlaceName"]
    10094 JUMPIF                           R23 ; [+1]
    10095 LOADK                            R23 K44 [""]
    10096 LOADK                            R24 K44 [""]
    10097 FASTCALL1                        TOSTRING R23 ; [+3]
    10098 MOVE                             R26 R23
    10099 GETIMPORT                        R25 K4 [tostring]
    10101 CALL                             R25 1 1
    10102 LOADK                            R26 K44 [""]
    10103 CONCAT                           R22 R24 R26
    10104 SETTABLEKS                       R22 R21 K586 ["placeName"]
    10106 CALL                             R19 2 1
    10107 SETTABLEKS                       R19 R18 K24 ["translation"]
    10109 GETTABLEKS                       R19 R2 K14 ["userId"]
    10111 SETTABLEKS                       R19 R18 K25 ["actorId"]
    10113 MOVE                             R19 R0
    10114 GETTABLEKS                       R20 R2 K14 ["userId"]
    10116 CALL                             R19 1 1
    10117 SETTABLEKS                       R19 R18 K26 ["actorName"]
    10119 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10121 ORK                              R19 R20 K18 [0]
    10122 SETTABLEKS                       R19 R18 K29 ["iconId"]
    10124 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10126 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10128 GETTABLEKS                       R19 R2 K30 ["headerText"]
    10130 SETTABLEKS                       R19 R18 K30 ["headerText"]
    10132 GETTABLEKS                       R19 R2 K31 ["footerText"]
    10134 SETTABLEKS                       R19 R18 K31 ["footerText"]
    10136 LOADK                            R20 K44 [""]
    10137 FASTCALL1                        TOSTRING R4 ; [+3]
    10138 MOVE                             R22 R4
    10139 GETIMPORT                        R21 K4 [tostring]
    10141 CALL                             R21 1 1
    10142 LOADK                            R22 K5 ["/places/"]
    10143 GETTABLEKS                       R24 R2 K6 ["placeId"]
    10145 FASTCALL1                        TOSTRING R24 ; [+2]
    10146 GETIMPORT                        R23 K4 [tostring]
    10148 CALL                             R23 1 1
    10149 LOADK                            R24 K569 ["/permissions"]
    10150 CONCAT                           R19 R20 R24
    10151 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    10153 LOADK                            R20 K44 [""]
    10154 GETUPVAL                         R22 1
    10155 FASTCALL1                        TOSTRING R22 ; [+2]
    10156 GETIMPORT                        R21 K4 [tostring]
    10158 CALL                             R21 1 1
    10159 LOADK                            R22 K556 ["games/"]
    10160 GETTABLEKS                       R24 R2 K6 ["placeId"]
    10162 FASTCALL1                        TOSTRING R24 ; [+2]
    10163 GETIMPORT                        R23 K4 [tostring]
    10165 CALL                             R23 1 1
    10166 LOADK                            R24 K44 [""]
    10167 CONCAT                           R19 R20 R24
    10168 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    10170 RETURN                           R18 1
    10171 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10173 JUMPIFNOTEQKN                    R18 K589 [102] ; [+108]
    10175 DUPTABLE                         R18 K591 [{["id"], ["eventType"] = "PlaceGenre", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    10176 GETTABLEKS                       R19 R2 K19 ["id"]
    10178 SETTABLEKS                       R19 R18 K19 ["id"]
    10180 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    10182 NEWCLOSURE                       R22 P6
    10183 CAPTURE                          VAL R20
    10184 CAPTURE                          VAL R3
    10185 FASTPCALL                        pcall 1 ; [+2]
    10186 GETIMPORT                        R21 K35 [pcall]
    10188 CALL                             R21 1 2
    10189 JUMPIFNOT                        R21 ; [+2]
    10190 MOVE                             R19 R22
    10191 JUMP                             ; [+1]
    10192 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    10193 SETTABLEKS                       R19 R18 K23 ["date"]
    10195 MOVE                             R19 R12
    10196 LOADK                            R20 K592 ["Description.PlaceGenre"]
    10197 DUPTABLE                         R21 K150 [{"genre"}]
    10198 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10200 JUMPIFNOT                        R24 ; [+5]
    10201 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10203 GETTABLEKS                       R23 R24 K151 ["Genre"]
    10205 JUMPIF                           R23 ; [+1]
    10206 LOADK                            R23 K44 [""]
    10207 LOADK                            R24 K44 [""]
    10208 FASTCALL1                        TOSTRING R23 ; [+3]
    10209 MOVE                             R26 R23
    10210 GETIMPORT                        R25 K4 [tostring]
    10212 CALL                             R25 1 1
    10213 LOADK                            R26 K44 [""]
    10214 CONCAT                           R22 R24 R26
    10215 SETTABLEKS                       R22 R21 K149 ["genre"]
    10217 CALL                             R19 2 1
    10218 SETTABLEKS                       R19 R18 K24 ["translation"]
    10220 GETTABLEKS                       R19 R2 K14 ["userId"]
    10222 SETTABLEKS                       R19 R18 K25 ["actorId"]
    10224 MOVE                             R19 R0
    10225 GETTABLEKS                       R20 R2 K14 ["userId"]
    10227 CALL                             R19 1 1
    10228 SETTABLEKS                       R19 R18 K26 ["actorName"]
    10230 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10232 ORK                              R19 R20 K18 [0]
    10233 SETTABLEKS                       R19 R18 K29 ["iconId"]
    10235 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10237 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10239 GETTABLEKS                       R19 R2 K30 ["headerText"]
    10241 SETTABLEKS                       R19 R18 K30 ["headerText"]
    10243 GETTABLEKS                       R19 R2 K31 ["footerText"]
    10245 SETTABLEKS                       R19 R18 K31 ["footerText"]
    10247 LOADK                            R20 K44 [""]
    10248 FASTCALL1                        TOSTRING R4 ; [+3]
    10249 MOVE                             R22 R4
    10250 GETIMPORT                        R21 K4 [tostring]
    10252 CALL                             R21 1 1
    10253 LOADK                            R22 K5 ["/places/"]
    10254 GETTABLEKS                       R24 R2 K6 ["placeId"]
    10256 FASTCALL1                        TOSTRING R24 ; [+2]
    10257 GETIMPORT                        R23 K4 [tostring]
    10259 CALL                             R23 1 1
    10260 LOADK                            R24 K11 ["/configure"]
    10261 CONCAT                           R19 R20 R24
    10262 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    10264 LOADK                            R20 K44 [""]
    10265 GETUPVAL                         R22 1
    10266 FASTCALL1                        TOSTRING R22 ; [+2]
    10267 GETIMPORT                        R21 K4 [tostring]
    10269 CALL                             R21 1 1
    10270 LOADK                            R22 K556 ["games/"]
    10271 GETTABLEKS                       R24 R2 K6 ["placeId"]
    10273 FASTCALL1                        TOSTRING R24 ; [+2]
    10274 GETIMPORT                        R23 K4 [tostring]
    10276 CALL                             R23 1 1
    10277 LOADK                            R24 K44 [""]
    10278 CONCAT                           R19 R20 R24
    10279 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    10281 RETURN                           R18 1
    10282 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10284 JUMPIFNOTEQKN                    R18 K593 [103] ; [+127]
    10286 DUPTABLE                         R18 K594 [{["id"], ["eventType"] = "PlaceName", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    10287 GETTABLEKS                       R19 R2 K19 ["id"]
    10289 SETTABLEKS                       R19 R18 K19 ["id"]
    10291 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    10293 NEWCLOSURE                       R22 P6
    10294 CAPTURE                          VAL R20
    10295 CAPTURE                          VAL R3
    10296 FASTPCALL                        pcall 1 ; [+2]
    10297 GETIMPORT                        R21 K35 [pcall]
    10299 CALL                             R21 1 2
    10300 JUMPIFNOT                        R21 ; [+2]
    10301 MOVE                             R19 R22
    10302 JUMP                             ; [+1]
    10303 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    10304 SETTABLEKS                       R19 R18 K23 ["date"]
    10306 MOVE                             R19 R12
    10307 LOADK                            R20 K595 ["Description.PlaceName"]
    10308 DUPTABLE                         R21 K138 [{"newName", "oldName"}]
    10309 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10311 JUMPIFNOT                        R24 ; [+5]
    10312 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10314 GETTABLEKS                       R23 R24 K139 ["NewName"]
    10316 JUMPIF                           R23 ; [+1]
    10317 LOADK                            R23 K44 [""]
    10318 LOADK                            R24 K44 [""]
    10319 FASTCALL1                        TOSTRING R23 ; [+3]
    10320 MOVE                             R26 R23
    10321 GETIMPORT                        R25 K4 [tostring]
    10323 CALL                             R25 1 1
    10324 LOADK                            R26 K44 [""]
    10325 CONCAT                           R22 R24 R26
    10326 SETTABLEKS                       R22 R21 K136 ["newName"]
    10328 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10330 JUMPIFNOT                        R24 ; [+5]
    10331 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10333 GETTABLEKS                       R23 R24 K140 ["OldName"]
    10335 JUMPIF                           R23 ; [+1]
    10336 LOADK                            R23 K44 [""]
    10337 LOADK                            R24 K44 [""]
    10338 FASTCALL1                        TOSTRING R23 ; [+3]
    10339 MOVE                             R26 R23
    10340 GETIMPORT                        R25 K4 [tostring]
    10342 CALL                             R25 1 1
    10343 LOADK                            R26 K44 [""]
    10344 CONCAT                           R22 R24 R26
    10345 SETTABLEKS                       R22 R21 K137 ["oldName"]
    10347 CALL                             R19 2 1
    10348 SETTABLEKS                       R19 R18 K24 ["translation"]
    10350 GETTABLEKS                       R19 R2 K14 ["userId"]
    10352 SETTABLEKS                       R19 R18 K25 ["actorId"]
    10354 MOVE                             R19 R0
    10355 GETTABLEKS                       R20 R2 K14 ["userId"]
    10357 CALL                             R19 1 1
    10358 SETTABLEKS                       R19 R18 K26 ["actorName"]
    10360 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10362 ORK                              R19 R20 K18 [0]
    10363 SETTABLEKS                       R19 R18 K29 ["iconId"]
    10365 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10367 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10369 GETTABLEKS                       R19 R2 K30 ["headerText"]
    10371 SETTABLEKS                       R19 R18 K30 ["headerText"]
    10373 GETTABLEKS                       R19 R2 K31 ["footerText"]
    10375 SETTABLEKS                       R19 R18 K31 ["footerText"]
    10377 LOADK                            R20 K44 [""]
    10378 FASTCALL1                        TOSTRING R4 ; [+3]
    10379 MOVE                             R22 R4
    10380 GETIMPORT                        R21 K4 [tostring]
    10382 CALL                             R21 1 1
    10383 LOADK                            R22 K5 ["/places/"]
    10384 GETTABLEKS                       R24 R2 K6 ["placeId"]
    10386 FASTCALL1                        TOSTRING R24 ; [+2]
    10387 GETIMPORT                        R23 K4 [tostring]
    10389 CALL                             R23 1 1
    10390 LOADK                            R24 K11 ["/configure"]
    10391 CONCAT                           R19 R20 R24
    10392 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    10394 LOADK                            R20 K44 [""]
    10395 GETUPVAL                         R22 1
    10396 FASTCALL1                        TOSTRING R22 ; [+2]
    10397 GETIMPORT                        R21 K4 [tostring]
    10399 CALL                             R21 1 1
    10400 LOADK                            R22 K556 ["games/"]
    10401 GETTABLEKS                       R24 R2 K6 ["placeId"]
    10403 FASTCALL1                        TOSTRING R24 ; [+2]
    10404 GETIMPORT                        R23 K4 [tostring]
    10406 CALL                             R23 1 1
    10407 LOADK                            R24 K44 [""]
    10408 CONCAT                           R19 R20 R24
    10409 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    10411 RETURN                           R18 1
    10412 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10414 JUMPIFNOTEQKN                    R18 K596 [104] ; [+108]
    10416 DUPTABLE                         R18 K598 [{["id"], ["eventType"] = "PlaceDescription", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    10417 GETTABLEKS                       R19 R2 K19 ["id"]
    10419 SETTABLEKS                       R19 R18 K19 ["id"]
    10421 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    10423 NEWCLOSURE                       R22 P6
    10424 CAPTURE                          VAL R20
    10425 CAPTURE                          VAL R3
    10426 FASTPCALL                        pcall 1 ; [+2]
    10427 GETIMPORT                        R21 K35 [pcall]
    10429 CALL                             R21 1 2
    10430 JUMPIFNOT                        R21 ; [+2]
    10431 MOVE                             R19 R22
    10432 JUMP                             ; [+1]
    10433 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    10434 SETTABLEKS                       R19 R18 K23 ["date"]
    10436 MOVE                             R19 R12
    10437 LOADK                            R20 K599 ["Description.PlaceDescription"]
    10438 DUPTABLE                         R21 K600 [{"placeName"}]
    10439 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10441 JUMPIFNOT                        R24 ; [+5]
    10442 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10444 GETTABLEKS                       R23 R24 K588 ["PlaceName"]
    10446 JUMPIF                           R23 ; [+1]
    10447 LOADK                            R23 K44 [""]
    10448 LOADK                            R24 K44 [""]
    10449 FASTCALL1                        TOSTRING R23 ; [+3]
    10450 MOVE                             R26 R23
    10451 GETIMPORT                        R25 K4 [tostring]
    10453 CALL                             R25 1 1
    10454 LOADK                            R26 K44 [""]
    10455 CONCAT                           R22 R24 R26
    10456 SETTABLEKS                       R22 R21 K586 ["placeName"]
    10458 CALL                             R19 2 1
    10459 SETTABLEKS                       R19 R18 K24 ["translation"]
    10461 GETTABLEKS                       R19 R2 K14 ["userId"]
    10463 SETTABLEKS                       R19 R18 K25 ["actorId"]
    10465 MOVE                             R19 R0
    10466 GETTABLEKS                       R20 R2 K14 ["userId"]
    10468 CALL                             R19 1 1
    10469 SETTABLEKS                       R19 R18 K26 ["actorName"]
    10471 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10473 ORK                              R19 R20 K18 [0]
    10474 SETTABLEKS                       R19 R18 K29 ["iconId"]
    10476 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10478 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10480 GETTABLEKS                       R19 R2 K30 ["headerText"]
    10482 SETTABLEKS                       R19 R18 K30 ["headerText"]
    10484 GETTABLEKS                       R19 R2 K31 ["footerText"]
    10486 SETTABLEKS                       R19 R18 K31 ["footerText"]
    10488 LOADK                            R20 K44 [""]
    10489 FASTCALL1                        TOSTRING R4 ; [+3]
    10490 MOVE                             R22 R4
    10491 GETIMPORT                        R21 K4 [tostring]
    10493 CALL                             R21 1 1
    10494 LOADK                            R22 K5 ["/places/"]
    10495 GETTABLEKS                       R24 R2 K6 ["placeId"]
    10497 FASTCALL1                        TOSTRING R24 ; [+2]
    10498 GETIMPORT                        R23 K4 [tostring]
    10500 CALL                             R23 1 1
    10501 LOADK                            R24 K11 ["/configure"]
    10502 CONCAT                           R19 R20 R24
    10503 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    10505 LOADK                            R20 K44 [""]
    10506 GETUPVAL                         R22 1
    10507 FASTCALL1                        TOSTRING R22 ; [+2]
    10508 GETIMPORT                        R21 K4 [tostring]
    10510 CALL                             R21 1 1
    10511 LOADK                            R22 K556 ["games/"]
    10512 GETTABLEKS                       R24 R2 K6 ["placeId"]
    10514 FASTCALL1                        TOSTRING R24 ; [+2]
    10515 GETIMPORT                        R23 K4 [tostring]
    10517 CALL                             R23 1 1
    10518 LOADK                            R24 K44 [""]
    10519 CONCAT                           R19 R20 R24
    10520 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    10522 RETURN                           R18 1
    10523 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10525 JUMPIFNOTEQKN                    R18 K601 [105] ; [+108]
    10527 DUPTABLE                         R18 K603 [{["id"], ["eventType"] = "PlaceMaxVisitorCount", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    10528 GETTABLEKS                       R19 R2 K19 ["id"]
    10530 SETTABLEKS                       R19 R18 K19 ["id"]
    10532 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    10534 NEWCLOSURE                       R22 P6
    10535 CAPTURE                          VAL R20
    10536 CAPTURE                          VAL R3
    10537 FASTPCALL                        pcall 1 ; [+2]
    10538 GETIMPORT                        R21 K35 [pcall]
    10540 CALL                             R21 1 2
    10541 JUMPIFNOT                        R21 ; [+2]
    10542 MOVE                             R19 R22
    10543 JUMP                             ; [+1]
    10544 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    10545 SETTABLEKS                       R19 R18 K23 ["date"]
    10547 MOVE                             R19 R12
    10548 LOADK                            R20 K604 ["Description.PlaceMaxVisitorCount"]
    10549 DUPTABLE                         R21 K606 [{"count"}]
    10550 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10552 JUMPIFNOT                        R24 ; [+5]
    10553 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10555 GETTABLEKS                       R23 R24 K607 ["Count"]
    10557 JUMPIF                           R23 ; [+1]
    10558 LOADK                            R23 K44 [""]
    10559 LOADK                            R24 K44 [""]
    10560 FASTCALL1                        TOSTRING R23 ; [+3]
    10561 MOVE                             R26 R23
    10562 GETIMPORT                        R25 K4 [tostring]
    10564 CALL                             R25 1 1
    10565 LOADK                            R26 K44 [""]
    10566 CONCAT                           R22 R24 R26
    10567 SETTABLEKS                       R22 R21 K605 ["count"]
    10569 CALL                             R19 2 1
    10570 SETTABLEKS                       R19 R18 K24 ["translation"]
    10572 GETTABLEKS                       R19 R2 K14 ["userId"]
    10574 SETTABLEKS                       R19 R18 K25 ["actorId"]
    10576 MOVE                             R19 R0
    10577 GETTABLEKS                       R20 R2 K14 ["userId"]
    10579 CALL                             R19 1 1
    10580 SETTABLEKS                       R19 R18 K26 ["actorName"]
    10582 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10584 ORK                              R19 R20 K18 [0]
    10585 SETTABLEKS                       R19 R18 K29 ["iconId"]
    10587 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10589 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10591 GETTABLEKS                       R19 R2 K30 ["headerText"]
    10593 SETTABLEKS                       R19 R18 K30 ["headerText"]
    10595 GETTABLEKS                       R19 R2 K31 ["footerText"]
    10597 SETTABLEKS                       R19 R18 K31 ["footerText"]
    10599 LOADK                            R20 K44 [""]
    10600 FASTCALL1                        TOSTRING R4 ; [+3]
    10601 MOVE                             R22 R4
    10602 GETIMPORT                        R21 K4 [tostring]
    10604 CALL                             R21 1 1
    10605 LOADK                            R22 K5 ["/places/"]
    10606 GETTABLEKS                       R24 R2 K6 ["placeId"]
    10608 FASTCALL1                        TOSTRING R24 ; [+2]
    10609 GETIMPORT                        R23 K4 [tostring]
    10611 CALL                             R23 1 1
    10612 LOADK                            R24 K415 ["/access"]
    10613 CONCAT                           R19 R20 R24
    10614 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    10616 LOADK                            R20 K44 [""]
    10617 GETUPVAL                         R22 1
    10618 FASTCALL1                        TOSTRING R22 ; [+2]
    10619 GETIMPORT                        R21 K4 [tostring]
    10621 CALL                             R21 1 1
    10622 LOADK                            R22 K556 ["games/"]
    10623 GETTABLEKS                       R24 R2 K6 ["placeId"]
    10625 FASTCALL1                        TOSTRING R24 ; [+2]
    10626 GETIMPORT                        R23 K4 [tostring]
    10628 CALL                             R23 1 1
    10629 LOADK                            R24 K44 [""]
    10630 CONCAT                           R19 R20 R24
    10631 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    10633 RETURN                           R18 1
    10634 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10636 JUMPIFNOTEQKN                    R18 K608 [106] ; [+88]
    10638 DUPTABLE                         R18 K610 [{["id"], ["eventType"] = "PlaceSocialSlotsRobloxOptimized", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    10639 GETTABLEKS                       R19 R2 K19 ["id"]
    10641 SETTABLEKS                       R19 R18 K19 ["id"]
    10643 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    10645 NEWCLOSURE                       R22 P6
    10646 CAPTURE                          VAL R20
    10647 CAPTURE                          VAL R3
    10648 FASTPCALL                        pcall 1 ; [+2]
    10649 GETIMPORT                        R21 K35 [pcall]
    10651 CALL                             R21 1 2
    10652 JUMPIFNOT                        R21 ; [+2]
    10653 MOVE                             R19 R22
    10654 JUMP                             ; [+1]
    10655 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    10656 SETTABLEKS                       R19 R18 K23 ["date"]
    10658 MOVE                             R19 R12
    10659 LOADK                            R20 K611 ["Description.PlaceSocialSlotsRobloxOptimized"]
    10660 CALL                             R19 1 1
    10661 SETTABLEKS                       R19 R18 K24 ["translation"]
    10663 GETTABLEKS                       R19 R2 K14 ["userId"]
    10665 SETTABLEKS                       R19 R18 K25 ["actorId"]
    10667 MOVE                             R19 R0
    10668 GETTABLEKS                       R20 R2 K14 ["userId"]
    10670 CALL                             R19 1 1
    10671 SETTABLEKS                       R19 R18 K26 ["actorName"]
    10673 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10675 ORK                              R19 R20 K18 [0]
    10676 SETTABLEKS                       R19 R18 K29 ["iconId"]
    10678 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10680 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10682 GETTABLEKS                       R19 R2 K30 ["headerText"]
    10684 SETTABLEKS                       R19 R18 K30 ["headerText"]
    10686 GETTABLEKS                       R19 R2 K31 ["footerText"]
    10688 SETTABLEKS                       R19 R18 K31 ["footerText"]
    10690 LOADK                            R20 K44 [""]
    10691 FASTCALL1                        TOSTRING R4 ; [+3]
    10692 MOVE                             R22 R4
    10693 GETIMPORT                        R21 K4 [tostring]
    10695 CALL                             R21 1 1
    10696 LOADK                            R22 K5 ["/places/"]
    10697 GETTABLEKS                       R24 R2 K6 ["placeId"]
    10699 FASTCALL1                        TOSTRING R24 ; [+2]
    10700 GETIMPORT                        R23 K4 [tostring]
    10702 CALL                             R23 1 1
    10703 LOADK                            R24 K415 ["/access"]
    10704 CONCAT                           R19 R20 R24
    10705 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    10707 LOADK                            R20 K44 [""]
    10708 GETUPVAL                         R22 1
    10709 FASTCALL1                        TOSTRING R22 ; [+2]
    10710 GETIMPORT                        R21 K4 [tostring]
    10712 CALL                             R21 1 1
    10713 LOADK                            R22 K556 ["games/"]
    10714 GETTABLEKS                       R24 R2 K6 ["placeId"]
    10716 FASTCALL1                        TOSTRING R24 ; [+2]
    10717 GETIMPORT                        R23 K4 [tostring]
    10719 CALL                             R23 1 1
    10720 LOADK                            R24 K44 [""]
    10721 CONCAT                           R19 R20 R24
    10722 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    10724 RETURN                           R18 1
    10725 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10727 JUMPIFNOTEQKN                    R18 K612 [107] ; [+88]
    10729 DUPTABLE                         R18 K614 [{["id"], ["eventType"] = "PlaceSocialSlotsDisabled", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    10730 GETTABLEKS                       R19 R2 K19 ["id"]
    10732 SETTABLEKS                       R19 R18 K19 ["id"]
    10734 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    10736 NEWCLOSURE                       R22 P6
    10737 CAPTURE                          VAL R20
    10738 CAPTURE                          VAL R3
    10739 FASTPCALL                        pcall 1 ; [+2]
    10740 GETIMPORT                        R21 K35 [pcall]
    10742 CALL                             R21 1 2
    10743 JUMPIFNOT                        R21 ; [+2]
    10744 MOVE                             R19 R22
    10745 JUMP                             ; [+1]
    10746 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    10747 SETTABLEKS                       R19 R18 K23 ["date"]
    10749 MOVE                             R19 R12
    10750 LOADK                            R20 K615 ["Description.PlaceSocialSlotsDisabled"]
    10751 CALL                             R19 1 1
    10752 SETTABLEKS                       R19 R18 K24 ["translation"]
    10754 GETTABLEKS                       R19 R2 K14 ["userId"]
    10756 SETTABLEKS                       R19 R18 K25 ["actorId"]
    10758 MOVE                             R19 R0
    10759 GETTABLEKS                       R20 R2 K14 ["userId"]
    10761 CALL                             R19 1 1
    10762 SETTABLEKS                       R19 R18 K26 ["actorName"]
    10764 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10766 ORK                              R19 R20 K18 [0]
    10767 SETTABLEKS                       R19 R18 K29 ["iconId"]
    10769 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10771 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10773 GETTABLEKS                       R19 R2 K30 ["headerText"]
    10775 SETTABLEKS                       R19 R18 K30 ["headerText"]
    10777 GETTABLEKS                       R19 R2 K31 ["footerText"]
    10779 SETTABLEKS                       R19 R18 K31 ["footerText"]
    10781 LOADK                            R20 K44 [""]
    10782 FASTCALL1                        TOSTRING R4 ; [+3]
    10783 MOVE                             R22 R4
    10784 GETIMPORT                        R21 K4 [tostring]
    10786 CALL                             R21 1 1
    10787 LOADK                            R22 K5 ["/places/"]
    10788 GETTABLEKS                       R24 R2 K6 ["placeId"]
    10790 FASTCALL1                        TOSTRING R24 ; [+2]
    10791 GETIMPORT                        R23 K4 [tostring]
    10793 CALL                             R23 1 1
    10794 LOADK                            R24 K415 ["/access"]
    10795 CONCAT                           R19 R20 R24
    10796 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    10798 LOADK                            R20 K44 [""]
    10799 GETUPVAL                         R22 1
    10800 FASTCALL1                        TOSTRING R22 ; [+2]
    10801 GETIMPORT                        R21 K4 [tostring]
    10803 CALL                             R21 1 1
    10804 LOADK                            R22 K556 ["games/"]
    10805 GETTABLEKS                       R24 R2 K6 ["placeId"]
    10807 FASTCALL1                        TOSTRING R24 ; [+2]
    10808 GETIMPORT                        R23 K4 [tostring]
    10810 CALL                             R23 1 1
    10811 LOADK                            R24 K44 [""]
    10812 CONCAT                           R19 R20 R24
    10813 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    10815 RETURN                           R18 1
    10816 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10818 JUMPIFNOTEQKN                    R18 K616 [108] ; [+108]
    10820 DUPTABLE                         R18 K618 [{["id"], ["eventType"] = "PlaceSocialSlotsCustomize", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    10821 GETTABLEKS                       R19 R2 K19 ["id"]
    10823 SETTABLEKS                       R19 R18 K19 ["id"]
    10825 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    10827 NEWCLOSURE                       R22 P6
    10828 CAPTURE                          VAL R20
    10829 CAPTURE                          VAL R3
    10830 FASTPCALL                        pcall 1 ; [+2]
    10831 GETIMPORT                        R21 K35 [pcall]
    10833 CALL                             R21 1 2
    10834 JUMPIFNOT                        R21 ; [+2]
    10835 MOVE                             R19 R22
    10836 JUMP                             ; [+1]
    10837 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    10838 SETTABLEKS                       R19 R18 K23 ["date"]
    10840 MOVE                             R19 R12
    10841 LOADK                            R20 K619 ["Description.PlaceSocialSlotsCustomize"]
    10842 DUPTABLE                         R21 K606 [{"count"}]
    10843 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10845 JUMPIFNOT                        R24 ; [+5]
    10846 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10848 GETTABLEKS                       R23 R24 K607 ["Count"]
    10850 JUMPIF                           R23 ; [+1]
    10851 LOADK                            R23 K44 [""]
    10852 LOADK                            R24 K44 [""]
    10853 FASTCALL1                        TOSTRING R23 ; [+3]
    10854 MOVE                             R26 R23
    10855 GETIMPORT                        R25 K4 [tostring]
    10857 CALL                             R25 1 1
    10858 LOADK                            R26 K44 [""]
    10859 CONCAT                           R22 R24 R26
    10860 SETTABLEKS                       R22 R21 K605 ["count"]
    10862 CALL                             R19 2 1
    10863 SETTABLEKS                       R19 R18 K24 ["translation"]
    10865 GETTABLEKS                       R19 R2 K14 ["userId"]
    10867 SETTABLEKS                       R19 R18 K25 ["actorId"]
    10869 MOVE                             R19 R0
    10870 GETTABLEKS                       R20 R2 K14 ["userId"]
    10872 CALL                             R19 1 1
    10873 SETTABLEKS                       R19 R18 K26 ["actorName"]
    10875 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10877 ORK                              R19 R20 K18 [0]
    10878 SETTABLEKS                       R19 R18 K29 ["iconId"]
    10880 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10882 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10884 GETTABLEKS                       R19 R2 K30 ["headerText"]
    10886 SETTABLEKS                       R19 R18 K30 ["headerText"]
    10888 GETTABLEKS                       R19 R2 K31 ["footerText"]
    10890 SETTABLEKS                       R19 R18 K31 ["footerText"]
    10892 LOADK                            R20 K44 [""]
    10893 FASTCALL1                        TOSTRING R4 ; [+3]
    10894 MOVE                             R22 R4
    10895 GETIMPORT                        R21 K4 [tostring]
    10897 CALL                             R21 1 1
    10898 LOADK                            R22 K5 ["/places/"]
    10899 GETTABLEKS                       R24 R2 K6 ["placeId"]
    10901 FASTCALL1                        TOSTRING R24 ; [+2]
    10902 GETIMPORT                        R23 K4 [tostring]
    10904 CALL                             R23 1 1
    10905 LOADK                            R24 K415 ["/access"]
    10906 CONCAT                           R19 R20 R24
    10907 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    10909 LOADK                            R20 K44 [""]
    10910 GETUPVAL                         R22 1
    10911 FASTCALL1                        TOSTRING R22 ; [+2]
    10912 GETIMPORT                        R21 K4 [tostring]
    10914 CALL                             R21 1 1
    10915 LOADK                            R22 K556 ["games/"]
    10916 GETTABLEKS                       R24 R2 K6 ["placeId"]
    10918 FASTCALL1                        TOSTRING R24 ; [+2]
    10919 GETIMPORT                        R23 K4 [tostring]
    10921 CALL                             R23 1 1
    10922 LOADK                            R24 K44 [""]
    10923 CONCAT                           R19 R20 R24
    10924 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    10926 RETURN                           R18 1
    10927 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10929 JUMPIFNOTEQKN                    R18 K620 [109] ; [+148]
    10931 DUPTABLE                         R18 K622 [{["id"], ["eventType"] = "PlacePermissionsCreatePlaceAPI", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    10932 GETTABLEKS                       R19 R2 K19 ["id"]
    10934 SETTABLEKS                       R19 R18 K19 ["id"]
    10936 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    10938 NEWCLOSURE                       R22 P6
    10939 CAPTURE                          VAL R20
    10940 CAPTURE                          VAL R3
    10941 FASTPCALL                        pcall 1 ; [+2]
    10942 GETIMPORT                        R21 K35 [pcall]
    10944 CALL                             R21 1 2
    10945 JUMPIFNOT                        R21 ; [+2]
    10946 MOVE                             R19 R22
    10947 JUMP                             ; [+1]
    10948 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    10949 SETTABLEKS                       R19 R18 K23 ["date"]
    10951 MOVE                             R19 R12
    10952 LOADK                            R20 K623 ["Description.PlacePermissionsCreatePlaceAPI"]
    10953 DUPTABLE                         R21 K587 [{"action", "placeName"}]
    10954 GETTABLEKS                       R26 R2 K42 ["metaData"]
    10956 JUMPIFNOT                        R26 ; [+5]
    10957 GETTABLEKS                       R26 R2 K42 ["metaData"]
    10959 GETTABLEKS                       R25 R26 K43 ["Action"]
    10961 JUMPIF                           R25 ; [+1]
    10962 LOADK                            R25 K44 [""]
    10963 GETIMPORT                        R26 K47 [string.lower]
    10965 FASTCALL1                        TOSTRING R25 ; [+3]
    10966 MOVE                             R28 R25
    10967 GETIMPORT                        R27 K4 [tostring]
    10969 CALL                             R27 1 1
    10970 CALL                             R26 1 1
    10971 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
    10973 LOADB                            R24 1
    10974 JUMP                             ; [+1]
    10975 LOADB                            R24 0
    10976 JUMPIFNOT                        R24 ; [+4]
    10977 MOVE                             R23 R12
    10978 LOADK                            R24 K158 ["Description.ActionEnabled"]
    10979 CALL                             R23 1 1
    10980 JUMPIF                           R23 ; [+3]
    10981 MOVE                             R23 R12
    10982 LOADK                            R24 K159 ["Description.ActionDisabled"]
    10983 CALL                             R23 1 1
    10984 LOADK                            R24 K44 [""]
    10985 FASTCALL1                        TOSTRING R23 ; [+3]
    10986 MOVE                             R26 R23
    10987 GETIMPORT                        R25 K4 [tostring]
    10989 CALL                             R25 1 1
    10990 LOADK                            R26 K44 [""]
    10991 CONCAT                           R22 R24 R26
    10992 SETTABLEKS                       R22 R21 K156 ["action"]
    10994 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10996 JUMPIFNOT                        R24 ; [+5]
    10997 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10999 GETTABLEKS                       R23 R24 K588 ["PlaceName"]
    11001 JUMPIF                           R23 ; [+1]
    11002 LOADK                            R23 K44 [""]
    11003 LOADK                            R24 K44 [""]
    11004 FASTCALL1                        TOSTRING R23 ; [+3]
    11005 MOVE                             R26 R23
    11006 GETIMPORT                        R25 K4 [tostring]
    11008 CALL                             R25 1 1
    11009 LOADK                            R26 K44 [""]
    11010 CONCAT                           R22 R24 R26
    11011 SETTABLEKS                       R22 R21 K586 ["placeName"]
    11013 CALL                             R19 2 1
    11014 SETTABLEKS                       R19 R18 K24 ["translation"]
    11016 GETTABLEKS                       R19 R2 K14 ["userId"]
    11018 SETTABLEKS                       R19 R18 K25 ["actorId"]
    11020 MOVE                             R19 R0
    11021 GETTABLEKS                       R20 R2 K14 ["userId"]
    11023 CALL                             R19 1 1
    11024 SETTABLEKS                       R19 R18 K26 ["actorName"]
    11026 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11028 ORK                              R19 R20 K18 [0]
    11029 SETTABLEKS                       R19 R18 K29 ["iconId"]
    11031 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11033 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11035 GETTABLEKS                       R19 R2 K30 ["headerText"]
    11037 SETTABLEKS                       R19 R18 K30 ["headerText"]
    11039 GETTABLEKS                       R19 R2 K31 ["footerText"]
    11041 SETTABLEKS                       R19 R18 K31 ["footerText"]
    11043 LOADK                            R20 K44 [""]
    11044 FASTCALL1                        TOSTRING R4 ; [+3]
    11045 MOVE                             R22 R4
    11046 GETIMPORT                        R21 K4 [tostring]
    11048 CALL                             R21 1 1
    11049 LOADK                            R22 K5 ["/places/"]
    11050 GETTABLEKS                       R24 R2 K6 ["placeId"]
    11052 FASTCALL1                        TOSTRING R24 ; [+2]
    11053 GETIMPORT                        R23 K4 [tostring]
    11055 CALL                             R23 1 1
    11056 LOADK                            R24 K569 ["/permissions"]
    11057 CONCAT                           R19 R20 R24
    11058 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    11060 LOADK                            R20 K44 [""]
    11061 GETUPVAL                         R22 1
    11062 FASTCALL1                        TOSTRING R22 ; [+2]
    11063 GETIMPORT                        R21 K4 [tostring]
    11065 CALL                             R21 1 1
    11066 LOADK                            R22 K556 ["games/"]
    11067 GETTABLEKS                       R24 R2 K6 ["placeId"]
    11069 FASTCALL1                        TOSTRING R24 ; [+2]
    11070 GETIMPORT                        R23 K4 [tostring]
    11072 CALL                             R23 1 1
    11073 LOADK                            R24 K44 [""]
    11074 CONCAT                           R19 R20 R24
    11075 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    11077 RETURN                           R18 1
    11078 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11080 JUMPIFNOTEQKN                    R18 K624 [110] ; [+148]
    11082 DUPTABLE                         R18 K626 [{["id"], ["eventType"] = "PlacePermissionsSavePlaceAPI", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    11083 GETTABLEKS                       R19 R2 K19 ["id"]
    11085 SETTABLEKS                       R19 R18 K19 ["id"]
    11087 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    11089 NEWCLOSURE                       R22 P6
    11090 CAPTURE                          VAL R20
    11091 CAPTURE                          VAL R3
    11092 FASTPCALL                        pcall 1 ; [+2]
    11093 GETIMPORT                        R21 K35 [pcall]
    11095 CALL                             R21 1 2
    11096 JUMPIFNOT                        R21 ; [+2]
    11097 MOVE                             R19 R22
    11098 JUMP                             ; [+1]
    11099 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    11100 SETTABLEKS                       R19 R18 K23 ["date"]
    11102 MOVE                             R19 R12
    11103 LOADK                            R20 K627 ["Description.PlacePermissionsSavePlaceAPI"]
    11104 DUPTABLE                         R21 K587 [{"action", "placeName"}]
    11105 GETTABLEKS                       R26 R2 K42 ["metaData"]
    11107 JUMPIFNOT                        R26 ; [+5]
    11108 GETTABLEKS                       R26 R2 K42 ["metaData"]
    11110 GETTABLEKS                       R25 R26 K43 ["Action"]
    11112 JUMPIF                           R25 ; [+1]
    11113 LOADK                            R25 K44 [""]
    11114 GETIMPORT                        R26 K47 [string.lower]
    11116 FASTCALL1                        TOSTRING R25 ; [+3]
    11117 MOVE                             R28 R25
    11118 GETIMPORT                        R27 K4 [tostring]
    11120 CALL                             R27 1 1
    11121 CALL                             R26 1 1
    11122 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
    11124 LOADB                            R24 1
    11125 JUMP                             ; [+1]
    11126 LOADB                            R24 0
    11127 JUMPIFNOT                        R24 ; [+4]
    11128 MOVE                             R23 R12
    11129 LOADK                            R24 K158 ["Description.ActionEnabled"]
    11130 CALL                             R23 1 1
    11131 JUMPIF                           R23 ; [+3]
    11132 MOVE                             R23 R12
    11133 LOADK                            R24 K159 ["Description.ActionDisabled"]
    11134 CALL                             R23 1 1
    11135 LOADK                            R24 K44 [""]
    11136 FASTCALL1                        TOSTRING R23 ; [+3]
    11137 MOVE                             R26 R23
    11138 GETIMPORT                        R25 K4 [tostring]
    11140 CALL                             R25 1 1
    11141 LOADK                            R26 K44 [""]
    11142 CONCAT                           R22 R24 R26
    11143 SETTABLEKS                       R22 R21 K156 ["action"]
    11145 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11147 JUMPIFNOT                        R24 ; [+5]
    11148 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11150 GETTABLEKS                       R23 R24 K588 ["PlaceName"]
    11152 JUMPIF                           R23 ; [+1]
    11153 LOADK                            R23 K44 [""]
    11154 LOADK                            R24 K44 [""]
    11155 FASTCALL1                        TOSTRING R23 ; [+3]
    11156 MOVE                             R26 R23
    11157 GETIMPORT                        R25 K4 [tostring]
    11159 CALL                             R25 1 1
    11160 LOADK                            R26 K44 [""]
    11161 CONCAT                           R22 R24 R26
    11162 SETTABLEKS                       R22 R21 K586 ["placeName"]
    11164 CALL                             R19 2 1
    11165 SETTABLEKS                       R19 R18 K24 ["translation"]
    11167 GETTABLEKS                       R19 R2 K14 ["userId"]
    11169 SETTABLEKS                       R19 R18 K25 ["actorId"]
    11171 MOVE                             R19 R0
    11172 GETTABLEKS                       R20 R2 K14 ["userId"]
    11174 CALL                             R19 1 1
    11175 SETTABLEKS                       R19 R18 K26 ["actorName"]
    11177 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11179 ORK                              R19 R20 K18 [0]
    11180 SETTABLEKS                       R19 R18 K29 ["iconId"]
    11182 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11184 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11186 GETTABLEKS                       R19 R2 K30 ["headerText"]
    11188 SETTABLEKS                       R19 R18 K30 ["headerText"]
    11190 GETTABLEKS                       R19 R2 K31 ["footerText"]
    11192 SETTABLEKS                       R19 R18 K31 ["footerText"]
    11194 LOADK                            R20 K44 [""]
    11195 FASTCALL1                        TOSTRING R4 ; [+3]
    11196 MOVE                             R22 R4
    11197 GETIMPORT                        R21 K4 [tostring]
    11199 CALL                             R21 1 1
    11200 LOADK                            R22 K5 ["/places/"]
    11201 GETTABLEKS                       R24 R2 K6 ["placeId"]
    11203 FASTCALL1                        TOSTRING R24 ; [+2]
    11204 GETIMPORT                        R23 K4 [tostring]
    11206 CALL                             R23 1 1
    11207 LOADK                            R24 K569 ["/permissions"]
    11208 CONCAT                           R19 R20 R24
    11209 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    11211 LOADK                            R20 K44 [""]
    11212 GETUPVAL                         R22 1
    11213 FASTCALL1                        TOSTRING R22 ; [+2]
    11214 GETIMPORT                        R21 K4 [tostring]
    11216 CALL                             R21 1 1
    11217 LOADK                            R22 K556 ["games/"]
    11218 GETTABLEKS                       R24 R2 K6 ["placeId"]
    11220 FASTCALL1                        TOSTRING R24 ; [+2]
    11221 GETIMPORT                        R23 K4 [tostring]
    11223 CALL                             R23 1 1
    11224 LOADK                            R24 K44 [""]
    11225 CONCAT                           R19 R20 R24
    11226 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    11228 RETURN                           R18 1
    11229 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11231 JUMPIFNOTEQKN                    R18 K628 [111] ; [+146]
    11233 DUPTABLE                         R18 K630 [{["id"], ["eventType"] = "PlaceRevert", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    11234 GETTABLEKS                       R19 R2 K19 ["id"]
    11236 SETTABLEKS                       R19 R18 K19 ["id"]
    11238 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    11240 NEWCLOSURE                       R22 P6
    11241 CAPTURE                          VAL R20
    11242 CAPTURE                          VAL R3
    11243 FASTPCALL                        pcall 1 ; [+2]
    11244 GETIMPORT                        R21 K35 [pcall]
    11246 CALL                             R21 1 2
    11247 JUMPIFNOT                        R21 ; [+2]
    11248 MOVE                             R19 R22
    11249 JUMP                             ; [+1]
    11250 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    11251 SETTABLEKS                       R19 R18 K23 ["date"]
    11253 MOVE                             R19 R12
    11254 LOADK                            R20 K631 ["Description.PlaceRevert"]
    11255 DUPTABLE                         R21 K634 [{"placeName", "oldVersion", "newVersion"}]
    11256 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11258 JUMPIFNOT                        R24 ; [+5]
    11259 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11261 GETTABLEKS                       R23 R24 K588 ["PlaceName"]
    11263 JUMPIF                           R23 ; [+1]
    11264 LOADK                            R23 K44 [""]
    11265 LOADK                            R24 K44 [""]
    11266 FASTCALL1                        TOSTRING R23 ; [+3]
    11267 MOVE                             R26 R23
    11268 GETIMPORT                        R25 K4 [tostring]
    11270 CALL                             R25 1 1
    11271 LOADK                            R26 K44 [""]
    11272 CONCAT                           R22 R24 R26
    11273 SETTABLEKS                       R22 R21 K586 ["placeName"]
    11275 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11277 JUMPIFNOT                        R24 ; [+5]
    11278 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11280 GETTABLEKS                       R23 R24 K635 ["OldVersion"]
    11282 JUMPIF                           R23 ; [+1]
    11283 LOADK                            R23 K44 [""]
    11284 LOADK                            R24 K44 [""]
    11285 FASTCALL1                        TOSTRING R23 ; [+3]
    11286 MOVE                             R26 R23
    11287 GETIMPORT                        R25 K4 [tostring]
    11289 CALL                             R25 1 1
    11290 LOADK                            R26 K44 [""]
    11291 CONCAT                           R22 R24 R26
    11292 SETTABLEKS                       R22 R21 K632 ["oldVersion"]
    11294 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11296 JUMPIFNOT                        R24 ; [+5]
    11297 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11299 GETTABLEKS                       R23 R24 K636 ["NewVersion"]
    11301 JUMPIF                           R23 ; [+1]
    11302 LOADK                            R23 K44 [""]
    11303 LOADK                            R24 K44 [""]
    11304 FASTCALL1                        TOSTRING R23 ; [+3]
    11305 MOVE                             R26 R23
    11306 GETIMPORT                        R25 K4 [tostring]
    11308 CALL                             R25 1 1
    11309 LOADK                            R26 K44 [""]
    11310 CONCAT                           R22 R24 R26
    11311 SETTABLEKS                       R22 R21 K633 ["newVersion"]
    11313 CALL                             R19 2 1
    11314 SETTABLEKS                       R19 R18 K24 ["translation"]
    11316 GETTABLEKS                       R19 R2 K14 ["userId"]
    11318 SETTABLEKS                       R19 R18 K25 ["actorId"]
    11320 MOVE                             R19 R0
    11321 GETTABLEKS                       R20 R2 K14 ["userId"]
    11323 CALL                             R19 1 1
    11324 SETTABLEKS                       R19 R18 K26 ["actorName"]
    11326 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11328 ORK                              R19 R20 K18 [0]
    11329 SETTABLEKS                       R19 R18 K29 ["iconId"]
    11331 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11333 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11335 GETTABLEKS                       R19 R2 K30 ["headerText"]
    11337 SETTABLEKS                       R19 R18 K30 ["headerText"]
    11339 GETTABLEKS                       R19 R2 K31 ["footerText"]
    11341 SETTABLEKS                       R19 R18 K31 ["footerText"]
    11343 LOADK                            R20 K44 [""]
    11344 FASTCALL1                        TOSTRING R4 ; [+3]
    11345 MOVE                             R22 R4
    11346 GETIMPORT                        R21 K4 [tostring]
    11348 CALL                             R21 1 1
    11349 LOADK                            R22 K5 ["/places/"]
    11350 GETTABLEKS                       R24 R2 K6 ["placeId"]
    11352 FASTCALL1                        TOSTRING R24 ; [+2]
    11353 GETIMPORT                        R23 K4 [tostring]
    11355 CALL                             R23 1 1
    11356 LOADK                            R24 K637 ["/version-history"]
    11357 CONCAT                           R19 R20 R24
    11358 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    11360 LOADK                            R20 K44 [""]
    11361 GETUPVAL                         R22 1
    11362 FASTCALL1                        TOSTRING R22 ; [+2]
    11363 GETIMPORT                        R21 K4 [tostring]
    11365 CALL                             R21 1 1
    11366 LOADK                            R22 K556 ["games/"]
    11367 GETTABLEKS                       R24 R2 K6 ["placeId"]
    11369 FASTCALL1                        TOSTRING R24 ; [+2]
    11370 GETIMPORT                        R23 K4 [tostring]
    11372 CALL                             R23 1 1
    11373 LOADK                            R24 K44 [""]
    11374 CONCAT                           R19 R20 R24
    11375 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    11377 RETURN                           R18 1
    11378 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11380 JUMPIFNOTEQKN                    R18 K638 [112] ; [+71]
    11382 DUPTABLE                         R18 K640 [{["id"], ["eventType"] = "PlaceShutDown", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewOnRobloxLink"]}]
    11383 GETTABLEKS                       R19 R2 K19 ["id"]
    11385 SETTABLEKS                       R19 R18 K19 ["id"]
    11387 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    11389 NEWCLOSURE                       R22 P6
    11390 CAPTURE                          VAL R20
    11391 CAPTURE                          VAL R3
    11392 FASTPCALL                        pcall 1 ; [+2]
    11393 GETIMPORT                        R21 K35 [pcall]
    11395 CALL                             R21 1 2
    11396 JUMPIFNOT                        R21 ; [+2]
    11397 MOVE                             R19 R22
    11398 JUMP                             ; [+1]
    11399 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    11400 SETTABLEKS                       R19 R18 K23 ["date"]
    11402 MOVE                             R19 R12
    11403 LOADK                            R20 K641 ["Description.PlaceShutDown"]
    11404 CALL                             R19 1 1
    11405 SETTABLEKS                       R19 R18 K24 ["translation"]
    11407 GETTABLEKS                       R19 R2 K14 ["userId"]
    11409 SETTABLEKS                       R19 R18 K25 ["actorId"]
    11411 MOVE                             R19 R0
    11412 GETTABLEKS                       R20 R2 K14 ["userId"]
    11414 CALL                             R19 1 1
    11415 SETTABLEKS                       R19 R18 K26 ["actorName"]
    11417 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11419 ORK                              R19 R20 K18 [0]
    11420 SETTABLEKS                       R19 R18 K29 ["iconId"]
    11422 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11424 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11426 GETTABLEKS                       R19 R2 K30 ["headerText"]
    11428 SETTABLEKS                       R19 R18 K30 ["headerText"]
    11430 GETTABLEKS                       R19 R2 K31 ["footerText"]
    11432 SETTABLEKS                       R19 R18 K31 ["footerText"]
    11434 LOADK                            R20 K44 [""]
    11435 GETUPVAL                         R22 1
    11436 FASTCALL1                        TOSTRING R22 ; [+2]
    11437 GETIMPORT                        R21 K4 [tostring]
    11439 CALL                             R21 1 1
    11440 LOADK                            R22 K556 ["games/"]
    11441 GETTABLEKS                       R24 R2 K6 ["placeId"]
    11443 FASTCALL1                        TOSTRING R24 ; [+2]
    11444 GETIMPORT                        R23 K4 [tostring]
    11446 CALL                             R23 1 1
    11447 LOADK                            R24 K44 [""]
    11448 CONCAT                           R19 R20 R24
    11449 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    11451 RETURN                           R18 1
    11452 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11454 JUMPIFNOTEQKN                    R18 K642 [113] ; [+71]
    11456 DUPTABLE                         R18 K644 [{["id"], ["eventType"] = "PlaceRestart", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewOnRobloxLink"]}]
    11457 GETTABLEKS                       R19 R2 K19 ["id"]
    11459 SETTABLEKS                       R19 R18 K19 ["id"]
    11461 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    11463 NEWCLOSURE                       R22 P6
    11464 CAPTURE                          VAL R20
    11465 CAPTURE                          VAL R3
    11466 FASTPCALL                        pcall 1 ; [+2]
    11467 GETIMPORT                        R21 K35 [pcall]
    11469 CALL                             R21 1 2
    11470 JUMPIFNOT                        R21 ; [+2]
    11471 MOVE                             R19 R22
    11472 JUMP                             ; [+1]
    11473 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    11474 SETTABLEKS                       R19 R18 K23 ["date"]
    11476 MOVE                             R19 R12
    11477 LOADK                            R20 K645 ["Description.PlaceRestart"]
    11478 CALL                             R19 1 1
    11479 SETTABLEKS                       R19 R18 K24 ["translation"]
    11481 GETTABLEKS                       R19 R2 K14 ["userId"]
    11483 SETTABLEKS                       R19 R18 K25 ["actorId"]
    11485 MOVE                             R19 R0
    11486 GETTABLEKS                       R20 R2 K14 ["userId"]
    11488 CALL                             R19 1 1
    11489 SETTABLEKS                       R19 R18 K26 ["actorName"]
    11491 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11493 ORK                              R19 R20 K18 [0]
    11494 SETTABLEKS                       R19 R18 K29 ["iconId"]
    11496 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11498 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11500 GETTABLEKS                       R19 R2 K30 ["headerText"]
    11502 SETTABLEKS                       R19 R18 K30 ["headerText"]
    11504 GETTABLEKS                       R19 R2 K31 ["footerText"]
    11506 SETTABLEKS                       R19 R18 K31 ["footerText"]
    11508 LOADK                            R20 K44 [""]
    11509 GETUPVAL                         R22 1
    11510 FASTCALL1                        TOSTRING R22 ; [+2]
    11511 GETIMPORT                        R21 K4 [tostring]
    11513 CALL                             R21 1 1
    11514 LOADK                            R22 K556 ["games/"]
    11515 GETTABLEKS                       R24 R2 K6 ["placeId"]
    11517 FASTCALL1                        TOSTRING R24 ; [+2]
    11518 GETIMPORT                        R23 K4 [tostring]
    11520 CALL                             R23 1 1
    11521 LOADK                            R24 K44 [""]
    11522 CONCAT                           R19 R20 R24
    11523 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    11525 RETURN                           R18 1
    11526 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11528 JUMPIFNOTEQKN                    R18 K646 [114] ; [+108]
    11530 DUPTABLE                         R18 K648 [{["id"], ["eventType"] = "PlaceThumbnailAltText", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    11531 GETTABLEKS                       R19 R2 K19 ["id"]
    11533 SETTABLEKS                       R19 R18 K19 ["id"]
    11535 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    11537 NEWCLOSURE                       R22 P6
    11538 CAPTURE                          VAL R20
    11539 CAPTURE                          VAL R3
    11540 FASTPCALL                        pcall 1 ; [+2]
    11541 GETIMPORT                        R21 K35 [pcall]
    11543 CALL                             R21 1 2
    11544 JUMPIFNOT                        R21 ; [+2]
    11545 MOVE                             R19 R22
    11546 JUMP                             ; [+1]
    11547 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    11548 SETTABLEKS                       R19 R18 K23 ["date"]
    11550 MOVE                             R19 R12
    11551 LOADK                            R20 K649 ["Description.PlaceThumbnailAltText"]
    11552 DUPTABLE                         R21 K650 [{"thumbnailName"}]
    11553 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11555 JUMPIFNOT                        R24 ; [+5]
    11556 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11558 GETTABLEKS                       R23 R24 K300 ["ThumbnailName"]
    11560 JUMPIF                           R23 ; [+1]
    11561 LOADK                            R23 K44 [""]
    11562 LOADK                            R24 K44 [""]
    11563 FASTCALL1                        TOSTRING R23 ; [+3]
    11564 MOVE                             R26 R23
    11565 GETIMPORT                        R25 K4 [tostring]
    11567 CALL                             R25 1 1
    11568 LOADK                            R26 K44 [""]
    11569 CONCAT                           R22 R24 R26
    11570 SETTABLEKS                       R22 R21 K298 ["thumbnailName"]
    11572 CALL                             R19 2 1
    11573 SETTABLEKS                       R19 R18 K24 ["translation"]
    11575 GETTABLEKS                       R19 R2 K14 ["userId"]
    11577 SETTABLEKS                       R19 R18 K25 ["actorId"]
    11579 MOVE                             R19 R0
    11580 GETTABLEKS                       R20 R2 K14 ["userId"]
    11582 CALL                             R19 1 1
    11583 SETTABLEKS                       R19 R18 K26 ["actorName"]
    11585 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11587 ORK                              R19 R20 K18 [0]
    11588 SETTABLEKS                       R19 R18 K29 ["iconId"]
    11590 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11592 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11594 GETTABLEKS                       R19 R2 K30 ["headerText"]
    11596 SETTABLEKS                       R19 R18 K30 ["headerText"]
    11598 GETTABLEKS                       R19 R2 K31 ["footerText"]
    11600 SETTABLEKS                       R19 R18 K31 ["footerText"]
    11602 LOADK                            R20 K44 [""]
    11603 FASTCALL1                        TOSTRING R4 ; [+3]
    11604 MOVE                             R22 R4
    11605 GETIMPORT                        R21 K4 [tostring]
    11607 CALL                             R21 1 1
    11608 LOADK                            R22 K5 ["/places/"]
    11609 GETTABLEKS                       R24 R2 K6 ["placeId"]
    11611 FASTCALL1                        TOSTRING R24 ; [+2]
    11612 GETIMPORT                        R23 K4 [tostring]
    11614 CALL                             R23 1 1
    11615 LOADK                            R24 K651 ["/thumbnails"]
    11616 CONCAT                           R19 R20 R24
    11617 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    11619 LOADK                            R20 K44 [""]
    11620 GETUPVAL                         R22 1
    11621 FASTCALL1                        TOSTRING R22 ; [+2]
    11622 GETIMPORT                        R21 K4 [tostring]
    11624 CALL                             R21 1 1
    11625 LOADK                            R22 K556 ["games/"]
    11626 GETTABLEKS                       R24 R2 K6 ["placeId"]
    11628 FASTCALL1                        TOSTRING R24 ; [+2]
    11629 GETIMPORT                        R23 K4 [tostring]
    11631 CALL                             R23 1 1
    11632 LOADK                            R24 K44 [""]
    11633 CONCAT                           R19 R20 R24
    11634 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    11636 RETURN                           R18 1
    11637 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11639 JUMPIFNOTEQKN                    R18 K652 [115] ; [+108]
    11641 DUPTABLE                         R18 K654 [{["id"], ["eventType"] = "PlaceThumbnailAdded", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    11642 GETTABLEKS                       R19 R2 K19 ["id"]
    11644 SETTABLEKS                       R19 R18 K19 ["id"]
    11646 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    11648 NEWCLOSURE                       R22 P6
    11649 CAPTURE                          VAL R20
    11650 CAPTURE                          VAL R3
    11651 FASTPCALL                        pcall 1 ; [+2]
    11652 GETIMPORT                        R21 K35 [pcall]
    11654 CALL                             R21 1 2
    11655 JUMPIFNOT                        R21 ; [+2]
    11656 MOVE                             R19 R22
    11657 JUMP                             ; [+1]
    11658 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    11659 SETTABLEKS                       R19 R18 K23 ["date"]
    11661 MOVE                             R19 R12
    11662 LOADK                            R20 K655 ["Description.PlaceThumbnailAdded"]
    11663 DUPTABLE                         R21 K650 [{"thumbnailName"}]
    11664 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11666 JUMPIFNOT                        R24 ; [+5]
    11667 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11669 GETTABLEKS                       R23 R24 K300 ["ThumbnailName"]
    11671 JUMPIF                           R23 ; [+1]
    11672 LOADK                            R23 K44 [""]
    11673 LOADK                            R24 K44 [""]
    11674 FASTCALL1                        TOSTRING R23 ; [+3]
    11675 MOVE                             R26 R23
    11676 GETIMPORT                        R25 K4 [tostring]
    11678 CALL                             R25 1 1
    11679 LOADK                            R26 K44 [""]
    11680 CONCAT                           R22 R24 R26
    11681 SETTABLEKS                       R22 R21 K298 ["thumbnailName"]
    11683 CALL                             R19 2 1
    11684 SETTABLEKS                       R19 R18 K24 ["translation"]
    11686 GETTABLEKS                       R19 R2 K14 ["userId"]
    11688 SETTABLEKS                       R19 R18 K25 ["actorId"]
    11690 MOVE                             R19 R0
    11691 GETTABLEKS                       R20 R2 K14 ["userId"]
    11693 CALL                             R19 1 1
    11694 SETTABLEKS                       R19 R18 K26 ["actorName"]
    11696 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11698 ORK                              R19 R20 K18 [0]
    11699 SETTABLEKS                       R19 R18 K29 ["iconId"]
    11701 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11703 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11705 GETTABLEKS                       R19 R2 K30 ["headerText"]
    11707 SETTABLEKS                       R19 R18 K30 ["headerText"]
    11709 GETTABLEKS                       R19 R2 K31 ["footerText"]
    11711 SETTABLEKS                       R19 R18 K31 ["footerText"]
    11713 LOADK                            R20 K44 [""]
    11714 FASTCALL1                        TOSTRING R4 ; [+3]
    11715 MOVE                             R22 R4
    11716 GETIMPORT                        R21 K4 [tostring]
    11718 CALL                             R21 1 1
    11719 LOADK                            R22 K5 ["/places/"]
    11720 GETTABLEKS                       R24 R2 K6 ["placeId"]
    11722 FASTCALL1                        TOSTRING R24 ; [+2]
    11723 GETIMPORT                        R23 K4 [tostring]
    11725 CALL                             R23 1 1
    11726 LOADK                            R24 K651 ["/thumbnails"]
    11727 CONCAT                           R19 R20 R24
    11728 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    11730 LOADK                            R20 K44 [""]
    11731 GETUPVAL                         R22 1
    11732 FASTCALL1                        TOSTRING R22 ; [+2]
    11733 GETIMPORT                        R21 K4 [tostring]
    11735 CALL                             R21 1 1
    11736 LOADK                            R22 K556 ["games/"]
    11737 GETTABLEKS                       R24 R2 K6 ["placeId"]
    11739 FASTCALL1                        TOSTRING R24 ; [+2]
    11740 GETIMPORT                        R23 K4 [tostring]
    11742 CALL                             R23 1 1
    11743 LOADK                            R24 K44 [""]
    11744 CONCAT                           R19 R20 R24
    11745 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    11747 RETURN                           R18 1
    11748 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11750 JUMPIFNOTEQKN                    R18 K656 [116] ; [+48]
    11752 DUPTABLE                         R18 K658 [{["id"], ["eventType"] = "PlaceThumbnailOrder", ["eventCategory"] = "Unknown", ["date"], ["translation"] = "", ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    11753 GETTABLEKS                       R19 R2 K19 ["id"]
    11755 SETTABLEKS                       R19 R18 K19 ["id"]
    11757 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    11759 NEWCLOSURE                       R22 P6
    11760 CAPTURE                          VAL R20
    11761 CAPTURE                          VAL R3
    11762 FASTPCALL                        pcall 1 ; [+2]
    11763 GETIMPORT                        R21 K35 [pcall]
    11765 CALL                             R21 1 2
    11766 JUMPIFNOT                        R21 ; [+2]
    11767 MOVE                             R19 R22
    11768 JUMP                             ; [+1]
    11769 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    11770 SETTABLEKS                       R19 R18 K23 ["date"]
    11772 GETTABLEKS                       R19 R2 K14 ["userId"]
    11774 SETTABLEKS                       R19 R18 K25 ["actorId"]
    11776 MOVE                             R19 R0
    11777 GETTABLEKS                       R20 R2 K14 ["userId"]
    11779 CALL                             R19 1 1
    11780 SETTABLEKS                       R19 R18 K26 ["actorName"]
    11782 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11784 SETTABLEKS                       R19 R18 K29 ["iconId"]
    11786 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11788 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11790 GETTABLEKS                       R19 R2 K30 ["headerText"]
    11792 SETTABLEKS                       R19 R18 K30 ["headerText"]
    11794 GETTABLEKS                       R19 R2 K31 ["footerText"]
    11796 SETTABLEKS                       R19 R18 K31 ["footerText"]
    11798 RETURN                           R18 1
    11799 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11801 JUMPIFNOTEQKN                    R18 K659 [117] ; [+108]
    11803 DUPTABLE                         R18 K661 [{["id"], ["eventType"] = "PlaceThumbnailDeleted", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    11804 GETTABLEKS                       R19 R2 K19 ["id"]
    11806 SETTABLEKS                       R19 R18 K19 ["id"]
    11808 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    11810 NEWCLOSURE                       R22 P6
    11811 CAPTURE                          VAL R20
    11812 CAPTURE                          VAL R3
    11813 FASTPCALL                        pcall 1 ; [+2]
    11814 GETIMPORT                        R21 K35 [pcall]
    11816 CALL                             R21 1 2
    11817 JUMPIFNOT                        R21 ; [+2]
    11818 MOVE                             R19 R22
    11819 JUMP                             ; [+1]
    11820 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    11821 SETTABLEKS                       R19 R18 K23 ["date"]
    11823 MOVE                             R19 R12
    11824 LOADK                            R20 K662 ["Description.PlaceThumbnailDeleted"]
    11825 DUPTABLE                         R21 K650 [{"thumbnailName"}]
    11826 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11828 JUMPIFNOT                        R24 ; [+5]
    11829 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11831 GETTABLEKS                       R23 R24 K300 ["ThumbnailName"]
    11833 JUMPIF                           R23 ; [+1]
    11834 LOADK                            R23 K44 [""]
    11835 LOADK                            R24 K44 [""]
    11836 FASTCALL1                        TOSTRING R23 ; [+3]
    11837 MOVE                             R26 R23
    11838 GETIMPORT                        R25 K4 [tostring]
    11840 CALL                             R25 1 1
    11841 LOADK                            R26 K44 [""]
    11842 CONCAT                           R22 R24 R26
    11843 SETTABLEKS                       R22 R21 K298 ["thumbnailName"]
    11845 CALL                             R19 2 1
    11846 SETTABLEKS                       R19 R18 K24 ["translation"]
    11848 GETTABLEKS                       R19 R2 K14 ["userId"]
    11850 SETTABLEKS                       R19 R18 K25 ["actorId"]
    11852 MOVE                             R19 R0
    11853 GETTABLEKS                       R20 R2 K14 ["userId"]
    11855 CALL                             R19 1 1
    11856 SETTABLEKS                       R19 R18 K26 ["actorName"]
    11858 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11860 ORK                              R19 R20 K18 [0]
    11861 SETTABLEKS                       R19 R18 K29 ["iconId"]
    11863 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11865 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11867 GETTABLEKS                       R19 R2 K30 ["headerText"]
    11869 SETTABLEKS                       R19 R18 K30 ["headerText"]
    11871 GETTABLEKS                       R19 R2 K31 ["footerText"]
    11873 SETTABLEKS                       R19 R18 K31 ["footerText"]
    11875 LOADK                            R20 K44 [""]
    11876 FASTCALL1                        TOSTRING R4 ; [+3]
    11877 MOVE                             R22 R4
    11878 GETIMPORT                        R21 K4 [tostring]
    11880 CALL                             R21 1 1
    11881 LOADK                            R22 K5 ["/places/"]
    11882 GETTABLEKS                       R24 R2 K6 ["placeId"]
    11884 FASTCALL1                        TOSTRING R24 ; [+2]
    11885 GETIMPORT                        R23 K4 [tostring]
    11887 CALL                             R23 1 1
    11888 LOADK                            R24 K651 ["/thumbnails"]
    11889 CONCAT                           R19 R20 R24
    11890 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    11892 LOADK                            R20 K44 [""]
    11893 GETUPVAL                         R22 1
    11894 FASTCALL1                        TOSTRING R22 ; [+2]
    11895 GETIMPORT                        R21 K4 [tostring]
    11897 CALL                             R21 1 1
    11898 LOADK                            R22 K556 ["games/"]
    11899 GETTABLEKS                       R24 R2 K6 ["placeId"]
    11901 FASTCALL1                        TOSTRING R24 ; [+2]
    11902 GETIMPORT                        R23 K4 [tostring]
    11904 CALL                             R23 1 1
    11905 LOADK                            R24 K44 [""]
    11906 CONCAT                           R19 R20 R24
    11907 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    11909 RETURN                           R18 1
    11910 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11912 JUMPIFNOTEQKN                    R18 K663 [118] ; [+101]
    11914 DUPTABLE                         R18 K666 [{["id"], ["eventType"] = "PlaceAdded", ["eventCategory"] = "Publish", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    11915 GETTABLEKS                       R19 R2 K19 ["id"]
    11917 SETTABLEKS                       R19 R18 K19 ["id"]
    11919 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    11921 NEWCLOSURE                       R22 P6
    11922 CAPTURE                          VAL R20
    11923 CAPTURE                          VAL R3
    11924 FASTPCALL                        pcall 1 ; [+2]
    11925 GETIMPORT                        R21 K35 [pcall]
    11927 CALL                             R21 1 2
    11928 JUMPIFNOT                        R21 ; [+2]
    11929 MOVE                             R19 R22
    11930 JUMP                             ; [+1]
    11931 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    11932 SETTABLEKS                       R19 R18 K23 ["date"]
    11934 MOVE                             R19 R12
    11935 LOADK                            R20 K667 ["Description.PlaceAdded"]
    11936 DUPTABLE                         R21 K600 [{"placeName"}]
    11937 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11939 JUMPIFNOT                        R24 ; [+5]
    11940 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11942 GETTABLEKS                       R23 R24 K588 ["PlaceName"]
    11944 JUMPIF                           R23 ; [+1]
    11945 LOADK                            R23 K44 [""]
    11946 LOADK                            R24 K44 [""]
    11947 FASTCALL1                        TOSTRING R23 ; [+3]
    11948 MOVE                             R26 R23
    11949 GETIMPORT                        R25 K4 [tostring]
    11951 CALL                             R25 1 1
    11952 LOADK                            R26 K44 [""]
    11953 CONCAT                           R22 R24 R26
    11954 SETTABLEKS                       R22 R21 K586 ["placeName"]
    11956 CALL                             R19 2 1
    11957 SETTABLEKS                       R19 R18 K24 ["translation"]
    11959 GETTABLEKS                       R19 R2 K14 ["userId"]
    11961 SETTABLEKS                       R19 R18 K25 ["actorId"]
    11963 MOVE                             R19 R0
    11964 GETTABLEKS                       R20 R2 K14 ["userId"]
    11966 CALL                             R19 1 1
    11967 SETTABLEKS                       R19 R18 K26 ["actorName"]
    11969 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11971 ORK                              R19 R20 K18 [0]
    11972 SETTABLEKS                       R19 R18 K29 ["iconId"]
    11974 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11976 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11978 GETTABLEKS                       R19 R2 K30 ["headerText"]
    11980 SETTABLEKS                       R19 R18 K30 ["headerText"]
    11982 GETTABLEKS                       R19 R2 K31 ["footerText"]
    11984 SETTABLEKS                       R19 R18 K31 ["footerText"]
    11986 LOADK                            R20 K44 [""]
    11987 FASTCALL1                        TOSTRING R4 ; [+3]
    11988 MOVE                             R22 R4
    11989 GETIMPORT                        R21 K4 [tostring]
    11991 CALL                             R21 1 1
    11992 LOADK                            R22 K668 ["/places/manage"]
    11993 CONCAT                           R19 R20 R22
    11994 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    11996 LOADK                            R20 K44 [""]
    11997 GETUPVAL                         R22 1
    11998 FASTCALL1                        TOSTRING R22 ; [+2]
    11999 GETIMPORT                        R21 K4 [tostring]
    12001 CALL                             R21 1 1
    12002 LOADK                            R22 K556 ["games/"]
    12003 GETTABLEKS                       R24 R2 K6 ["placeId"]
    12005 FASTCALL1                        TOSTRING R24 ; [+2]
    12006 GETIMPORT                        R23 K4 [tostring]
    12008 CALL                             R23 1 1
    12009 LOADK                            R24 K44 [""]
    12010 CONCAT                           R19 R20 R24
    12011 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    12013 RETURN                           R18 1
    12014 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12016 JUMPIFNOTEQKN                    R18 K669 [119] ; [+101]
    12018 DUPTABLE                         R18 K671 [{["id"], ["eventType"] = "PlaceRemoved", ["eventCategory"] = "Publish", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    12019 GETTABLEKS                       R19 R2 K19 ["id"]
    12021 SETTABLEKS                       R19 R18 K19 ["id"]
    12023 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    12025 NEWCLOSURE                       R22 P6
    12026 CAPTURE                          VAL R20
    12027 CAPTURE                          VAL R3
    12028 FASTPCALL                        pcall 1 ; [+2]
    12029 GETIMPORT                        R21 K35 [pcall]
    12031 CALL                             R21 1 2
    12032 JUMPIFNOT                        R21 ; [+2]
    12033 MOVE                             R19 R22
    12034 JUMP                             ; [+1]
    12035 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    12036 SETTABLEKS                       R19 R18 K23 ["date"]
    12038 MOVE                             R19 R12
    12039 LOADK                            R20 K672 ["Description.PlaceRemoved"]
    12040 DUPTABLE                         R21 K600 [{"placeName"}]
    12041 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12043 JUMPIFNOT                        R24 ; [+5]
    12044 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12046 GETTABLEKS                       R23 R24 K588 ["PlaceName"]
    12048 JUMPIF                           R23 ; [+1]
    12049 LOADK                            R23 K44 [""]
    12050 LOADK                            R24 K44 [""]
    12051 FASTCALL1                        TOSTRING R23 ; [+3]
    12052 MOVE                             R26 R23
    12053 GETIMPORT                        R25 K4 [tostring]
    12055 CALL                             R25 1 1
    12056 LOADK                            R26 K44 [""]
    12057 CONCAT                           R22 R24 R26
    12058 SETTABLEKS                       R22 R21 K586 ["placeName"]
    12060 CALL                             R19 2 1
    12061 SETTABLEKS                       R19 R18 K24 ["translation"]
    12063 GETTABLEKS                       R19 R2 K14 ["userId"]
    12065 SETTABLEKS                       R19 R18 K25 ["actorId"]
    12067 MOVE                             R19 R0
    12068 GETTABLEKS                       R20 R2 K14 ["userId"]
    12070 CALL                             R19 1 1
    12071 SETTABLEKS                       R19 R18 K26 ["actorName"]
    12073 GETTABLEKS                       R20 R2 K6 ["placeId"]
    12075 ORK                              R19 R20 K18 [0]
    12076 SETTABLEKS                       R19 R18 K29 ["iconId"]
    12078 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12080 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12082 GETTABLEKS                       R19 R2 K30 ["headerText"]
    12084 SETTABLEKS                       R19 R18 K30 ["headerText"]
    12086 GETTABLEKS                       R19 R2 K31 ["footerText"]
    12088 SETTABLEKS                       R19 R18 K31 ["footerText"]
    12090 LOADK                            R20 K44 [""]
    12091 FASTCALL1                        TOSTRING R4 ; [+3]
    12092 MOVE                             R22 R4
    12093 GETIMPORT                        R21 K4 [tostring]
    12095 CALL                             R21 1 1
    12096 LOADK                            R22 K668 ["/places/manage"]
    12097 CONCAT                           R19 R20 R22
    12098 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    12100 LOADK                            R20 K44 [""]
    12101 GETUPVAL                         R22 1
    12102 FASTCALL1                        TOSTRING R22 ; [+2]
    12103 GETIMPORT                        R21 K4 [tostring]
    12105 CALL                             R21 1 1
    12106 LOADK                            R22 K556 ["games/"]
    12107 GETTABLEKS                       R24 R2 K6 ["placeId"]
    12109 FASTCALL1                        TOSTRING R24 ; [+2]
    12110 GETIMPORT                        R23 K4 [tostring]
    12112 CALL                             R23 1 1
    12113 LOADK                            R24 K44 [""]
    12114 CONCAT                           R19 R20 R24
    12115 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    12117 RETURN                           R18 1
    12118 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12120 JUMPIFNOTEQKN                    R18 K673 [120] ; [+106]
    12122 DUPTABLE                         R18 K675 [{["id"], ["eventType"] = "PlacePublished", ["eventCategory"] = "Publish", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewOnRobloxLink"]}]
    12123 GETTABLEKS                       R19 R2 K19 ["id"]
    12125 SETTABLEKS                       R19 R18 K19 ["id"]
    12127 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    12129 NEWCLOSURE                       R22 P6
    12130 CAPTURE                          VAL R20
    12131 CAPTURE                          VAL R3
    12132 FASTPCALL                        pcall 1 ; [+2]
    12133 GETIMPORT                        R21 K35 [pcall]
    12135 CALL                             R21 1 2
    12136 JUMPIFNOT                        R21 ; [+2]
    12137 MOVE                             R19 R22
    12138 JUMP                             ; [+1]
    12139 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    12140 SETTABLEKS                       R19 R18 K23 ["date"]
    12142 MOVE                             R19 R12
    12143 LOADK                            R20 K676 ["Description.PlacePublished"]
    12144 DUPTABLE                         R21 K677 [{"placeName", "newVersion"}]
    12145 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12147 JUMPIFNOT                        R24 ; [+5]
    12148 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12150 GETTABLEKS                       R23 R24 K588 ["PlaceName"]
    12152 JUMPIF                           R23 ; [+1]
    12153 LOADK                            R23 K44 [""]
    12154 LOADK                            R24 K44 [""]
    12155 FASTCALL1                        TOSTRING R23 ; [+3]
    12156 MOVE                             R26 R23
    12157 GETIMPORT                        R25 K4 [tostring]
    12159 CALL                             R25 1 1
    12160 LOADK                            R26 K44 [""]
    12161 CONCAT                           R22 R24 R26
    12162 SETTABLEKS                       R22 R21 K586 ["placeName"]
    12164 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12166 JUMPIFNOT                        R24 ; [+5]
    12167 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12169 GETTABLEKS                       R23 R24 K636 ["NewVersion"]
    12171 JUMPIF                           R23 ; [+1]
    12172 LOADK                            R23 K44 [""]
    12173 FASTCALL1                        TOSTRING R23 ; [+2]
    12174 GETIMPORT                        R22 K4 [tostring]
    12176 CALL                             R22 1 1
    12177 SETTABLEKS                       R22 R21 K633 ["newVersion"]
    12179 CALL                             R19 2 1
    12180 SETTABLEKS                       R19 R18 K24 ["translation"]
    12182 GETTABLEKS                       R19 R2 K14 ["userId"]
    12184 SETTABLEKS                       R19 R18 K25 ["actorId"]
    12186 MOVE                             R19 R0
    12187 GETTABLEKS                       R20 R2 K14 ["userId"]
    12189 CALL                             R19 1 1
    12190 SETTABLEKS                       R19 R18 K26 ["actorName"]
    12192 GETTABLEKS                       R20 R2 K6 ["placeId"]
    12194 ORK                              R19 R20 K18 [0]
    12195 SETTABLEKS                       R19 R18 K29 ["iconId"]
    12197 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12199 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12201 GETTABLEKS                       R19 R2 K30 ["headerText"]
    12203 SETTABLEKS                       R19 R18 K30 ["headerText"]
    12205 GETTABLEKS                       R19 R2 K31 ["footerText"]
    12207 SETTABLEKS                       R19 R18 K31 ["footerText"]
    12209 LOADK                            R20 K44 [""]
    12210 GETUPVAL                         R22 1
    12211 FASTCALL1                        TOSTRING R22 ; [+2]
    12212 GETIMPORT                        R21 K4 [tostring]
    12214 CALL                             R21 1 1
    12215 LOADK                            R22 K556 ["games/"]
    12216 GETTABLEKS                       R24 R2 K6 ["placeId"]
    12218 FASTCALL1                        TOSTRING R24 ; [+2]
    12219 GETIMPORT                        R23 K4 [tostring]
    12221 CALL                             R23 1 1
    12222 LOADK                            R24 K44 [""]
    12223 CONCAT                           R19 R20 R24
    12224 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    12226 RETURN                           R18 1
    12227 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12229 JUMPIFNOTEQKN                    R18 K678 [121] ; [+63]
    12231 DUPTABLE                         R18 K680 [{["id"], ["eventType"] = "CompletedQuestionnaire", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
    12232 GETTABLEKS                       R19 R2 K19 ["id"]
    12234 SETTABLEKS                       R19 R18 K19 ["id"]
    12236 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    12238 NEWCLOSURE                       R22 P6
    12239 CAPTURE                          VAL R20
    12240 CAPTURE                          VAL R3
    12241 FASTPCALL                        pcall 1 ; [+2]
    12242 GETIMPORT                        R21 K35 [pcall]
    12244 CALL                             R21 1 2
    12245 JUMPIFNOT                        R21 ; [+2]
    12246 MOVE                             R19 R22
    12247 JUMP                             ; [+1]
    12248 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    12249 SETTABLEKS                       R19 R18 K23 ["date"]
    12251 MOVE                             R19 R12
    12252 LOADK                            R20 K681 ["Description.CompletedQuestionnaireMaturity"]
    12253 CALL                             R19 1 1
    12254 SETTABLEKS                       R19 R18 K24 ["translation"]
    12256 GETTABLEKS                       R19 R2 K14 ["userId"]
    12258 SETTABLEKS                       R19 R18 K25 ["actorId"]
    12260 MOVE                             R19 R0
    12261 GETTABLEKS                       R20 R2 K14 ["userId"]
    12263 CALL                             R19 1 1
    12264 SETTABLEKS                       R19 R18 K26 ["actorName"]
    12266 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12268 SETTABLEKS                       R19 R18 K29 ["iconId"]
    12270 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12272 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12274 GETTABLEKS                       R19 R2 K30 ["headerText"]
    12276 SETTABLEKS                       R19 R18 K30 ["headerText"]
    12278 GETTABLEKS                       R19 R2 K31 ["footerText"]
    12280 SETTABLEKS                       R19 R18 K31 ["footerText"]
    12282 LOADK                            R20 K44 [""]
    12283 FASTCALL1                        TOSTRING R4 ; [+3]
    12284 MOVE                             R22 R4
    12285 GETIMPORT                        R21 K4 [tostring]
    12287 CALL                             R21 1 1
    12288 LOADK                            R22 K682 ["/experience-questionnaire"]
    12289 CONCAT                           R19 R20 R22
    12290 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    12292 RETURN                           R18 1
    12293 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12295 JUMPIFNOTEQKN                    R18 K683 [122] ; [+104]
    12297 DUPTABLE                         R18 K685 [{["id"], ["eventType"] = "MonetizationSettingsPrivateServerRequiresRobux", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
    12298 GETTABLEKS                       R19 R2 K19 ["id"]
    12300 SETTABLEKS                       R19 R18 K19 ["id"]
    12302 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    12304 NEWCLOSURE                       R22 P6
    12305 CAPTURE                          VAL R20
    12306 CAPTURE                          VAL R3
    12307 FASTPCALL                        pcall 1 ; [+2]
    12308 GETIMPORT                        R21 K35 [pcall]
    12310 CALL                             R21 1 2
    12311 JUMPIFNOT                        R21 ; [+2]
    12312 MOVE                             R19 R22
    12313 JUMP                             ; [+1]
    12314 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    12315 SETTABLEKS                       R19 R18 K23 ["date"]
    12317 MOVE                             R19 R12
    12318 LOADK                            R20 K686 ["Description.MonetizationSettingsPrivateServerRequiresRobux"]
    12319 DUPTABLE                         R21 K157 [{"action"}]
    12320 GETTABLEKS                       R26 R2 K42 ["metaData"]
    12322 JUMPIFNOT                        R26 ; [+5]
    12323 GETTABLEKS                       R26 R2 K42 ["metaData"]
    12325 GETTABLEKS                       R25 R26 K43 ["Action"]
    12327 JUMPIF                           R25 ; [+1]
    12328 LOADK                            R25 K44 [""]
    12329 GETIMPORT                        R26 K47 [string.lower]
    12331 FASTCALL1                        TOSTRING R25 ; [+3]
    12332 MOVE                             R28 R25
    12333 GETIMPORT                        R27 K4 [tostring]
    12335 CALL                             R27 1 1
    12336 CALL                             R26 1 1
    12337 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
    12339 LOADB                            R24 1
    12340 JUMP                             ; [+1]
    12341 LOADB                            R24 0
    12342 JUMPIFNOT                        R24 ; [+4]
    12343 MOVE                             R23 R12
    12344 LOADK                            R24 K158 ["Description.ActionEnabled"]
    12345 CALL                             R23 1 1
    12346 JUMPIF                           R23 ; [+3]
    12347 MOVE                             R23 R12
    12348 LOADK                            R24 K159 ["Description.ActionDisabled"]
    12349 CALL                             R23 1 1
    12350 LOADK                            R24 K44 [""]
    12351 FASTCALL1                        TOSTRING R23 ; [+3]
    12352 MOVE                             R26 R23
    12353 GETIMPORT                        R25 K4 [tostring]
    12355 CALL                             R25 1 1
    12356 LOADK                            R26 K44 [""]
    12357 CONCAT                           R22 R24 R26
    12358 SETTABLEKS                       R22 R21 K156 ["action"]
    12360 CALL                             R19 2 1
    12361 SETTABLEKS                       R19 R18 K24 ["translation"]
    12363 GETTABLEKS                       R19 R2 K14 ["userId"]
    12365 SETTABLEKS                       R19 R18 K25 ["actorId"]
    12367 MOVE                             R19 R0
    12368 GETTABLEKS                       R20 R2 K14 ["userId"]
    12370 CALL                             R19 1 1
    12371 SETTABLEKS                       R19 R18 K26 ["actorName"]
    12373 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12375 SETTABLEKS                       R19 R18 K29 ["iconId"]
    12377 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12379 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12381 GETTABLEKS                       R19 R2 K30 ["headerText"]
    12383 SETTABLEKS                       R19 R18 K30 ["headerText"]
    12385 GETTABLEKS                       R19 R2 K31 ["footerText"]
    12387 SETTABLEKS                       R19 R18 K31 ["footerText"]
    12389 LOADK                            R20 K44 [""]
    12390 FASTCALL1                        TOSTRING R4 ; [+3]
    12391 MOVE                             R22 R4
    12392 GETIMPORT                        R21 K4 [tostring]
    12394 CALL                             R21 1 1
    12395 LOADK                            R22 K415 ["/access"]
    12396 CONCAT                           R19 R20 R22
    12397 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    12399 RETURN                           R18 1
    12400 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12402 JUMPIFNOTEQKN                    R18 K687 [123] ; [+104]
    12404 DUPTABLE                         R18 K689 [{["id"], ["eventType"] = "SecuritySettingsEditableMeshAndTextureAPIAccess", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
    12405 GETTABLEKS                       R19 R2 K19 ["id"]
    12407 SETTABLEKS                       R19 R18 K19 ["id"]
    12409 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    12411 NEWCLOSURE                       R22 P6
    12412 CAPTURE                          VAL R20
    12413 CAPTURE                          VAL R3
    12414 FASTPCALL                        pcall 1 ; [+2]
    12415 GETIMPORT                        R21 K35 [pcall]
    12417 CALL                             R21 1 2
    12418 JUMPIFNOT                        R21 ; [+2]
    12419 MOVE                             R19 R22
    12420 JUMP                             ; [+1]
    12421 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    12422 SETTABLEKS                       R19 R18 K23 ["date"]
    12424 MOVE                             R19 R12
    12425 LOADK                            R20 K690 ["Description.SecuritySettingsEditableMeshAndTextureAPIAccess"]
    12426 DUPTABLE                         R21 K157 [{"action"}]
    12427 GETTABLEKS                       R26 R2 K42 ["metaData"]
    12429 JUMPIFNOT                        R26 ; [+5]
    12430 GETTABLEKS                       R26 R2 K42 ["metaData"]
    12432 GETTABLEKS                       R25 R26 K43 ["Action"]
    12434 JUMPIF                           R25 ; [+1]
    12435 LOADK                            R25 K44 [""]
    12436 GETIMPORT                        R26 K47 [string.lower]
    12438 FASTCALL1                        TOSTRING R25 ; [+3]
    12439 MOVE                             R28 R25
    12440 GETIMPORT                        R27 K4 [tostring]
    12442 CALL                             R27 1 1
    12443 CALL                             R26 1 1
    12444 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
    12446 LOADB                            R24 1
    12447 JUMP                             ; [+1]
    12448 LOADB                            R24 0
    12449 JUMPIFNOT                        R24 ; [+4]
    12450 MOVE                             R23 R12
    12451 LOADK                            R24 K158 ["Description.ActionEnabled"]
    12452 CALL                             R23 1 1
    12453 JUMPIF                           R23 ; [+3]
    12454 MOVE                             R23 R12
    12455 LOADK                            R24 K159 ["Description.ActionDisabled"]
    12456 CALL                             R23 1 1
    12457 LOADK                            R24 K44 [""]
    12458 FASTCALL1                        TOSTRING R23 ; [+3]
    12459 MOVE                             R26 R23
    12460 GETIMPORT                        R25 K4 [tostring]
    12462 CALL                             R25 1 1
    12463 LOADK                            R26 K44 [""]
    12464 CONCAT                           R22 R24 R26
    12465 SETTABLEKS                       R22 R21 K156 ["action"]
    12467 CALL                             R19 2 1
    12468 SETTABLEKS                       R19 R18 K24 ["translation"]
    12470 GETTABLEKS                       R19 R2 K14 ["userId"]
    12472 SETTABLEKS                       R19 R18 K25 ["actorId"]
    12474 MOVE                             R19 R0
    12475 GETTABLEKS                       R20 R2 K14 ["userId"]
    12477 CALL                             R19 1 1
    12478 SETTABLEKS                       R19 R18 K26 ["actorName"]
    12480 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12482 SETTABLEKS                       R19 R18 K29 ["iconId"]
    12484 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12486 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12488 GETTABLEKS                       R19 R2 K30 ["headerText"]
    12490 SETTABLEKS                       R19 R18 K30 ["headerText"]
    12492 GETTABLEKS                       R19 R2 K31 ["footerText"]
    12494 SETTABLEKS                       R19 R18 K31 ["footerText"]
    12496 LOADK                            R20 K44 [""]
    12497 FASTCALL1                        TOSTRING R4 ; [+3]
    12498 MOVE                             R22 R4
    12499 GETIMPORT                        R21 K4 [tostring]
    12501 CALL                             R21 1 1
    12502 LOADK                            R22 K11 ["/configure"]
    12503 CONCAT                           R19 R20 R22
    12504 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    12506 RETURN                           R18 1
    12507 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12509 JUMPIFNOTEQKN                    R18 K691 [124] ; [+153]
    12511 DUPTABLE                         R18 K695 [{["id"], ["eventType"] = "PackagePublish", ["eventCategory"] = "Package", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Package", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewBasicSettingsLinkText"]}]
    12512 GETTABLEKS                       R19 R2 K19 ["id"]
    12514 SETTABLEKS                       R19 R18 K19 ["id"]
    12516 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    12518 NEWCLOSURE                       R22 P6
    12519 CAPTURE                          VAL R20
    12520 CAPTURE                          VAL R3
    12521 FASTPCALL                        pcall 1 ; [+2]
    12522 GETIMPORT                        R21 K35 [pcall]
    12524 CALL                             R21 1 2
    12525 JUMPIFNOT                        R21 ; [+2]
    12526 MOVE                             R19 R22
    12527 JUMP                             ; [+1]
    12528 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    12529 SETTABLEKS                       R19 R18 K23 ["date"]
    12531 MOVE                             R19 R12
    12532 LOADK                            R20 K696 ["Description.PackagePublish"]
    12533 DUPTABLE                         R21 K701 [{"packageName", "versionNumber", "numberOfPackages", "totalPackages"}]
    12534 GETTABLEKS                       R25 R2 K42 ["metaData"]
    12536 JUMPIFNOT                        R25 ; [+5]
    12537 GETTABLEKS                       R25 R2 K42 ["metaData"]
    12539 GETTABLEKS                       R24 R25 K702 ["PackageName"]
    12541 JUMPIF                           R24 ; [+1]
    12542 LOADK                            R24 K44 [""]
    12543 LOADK                            R25 K44 [""]
    12544 FASTCALL1                        TOSTRING R24 ; [+3]
    12545 MOVE                             R27 R24
    12546 GETIMPORT                        R26 K4 [tostring]
    12548 CALL                             R26 1 1
    12549 LOADK                            R27 K44 [""]
    12550 CONCAT                           R23 R25 R27
    12551 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    12553 GETGLOBAL                        R25 K703 ["getLink"]
    12555 LOADK                            R26 K704 ["packageexplorer"]
    12556 MOVE                             R27 R24
    12557 CALL                             R25 2 1
    12558 JUMPIFNOTEQKNIL                  R25 ; [+3]
    12560 MOVE                             R22 R23
    12561 JUMP                             ; [+7]
    12562 LOADK                            R26 K705 ["["]
    12563 MOVE                             R27 R23
    12564 LOADK                            R28 K706 ["]"]
    12565 LOADK                            R29 K707 ["("]
    12566 MOVE                             R30 R25
    12567 LOADK                            R31 K708 [")"]
    12568 CONCAT                           R22 R26 R31
    12569 SETTABLEKS                       R22 R21 K697 ["packageName"]
    12571 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12573 JUMPIFNOT                        R24 ; [+5]
    12574 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12576 GETTABLEKS                       R23 R24 K709 ["VersionNumber"]
    12578 JUMPIF                           R23 ; [+1]
    12579 LOADK                            R23 K44 [""]
    12580 MOVE                             R26 R23
    12581 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    12583 CALL                             R24 2 1
    12584 MOVE                             R22 R24
    12585 SETTABLEKS                       R22 R21 K698 ["versionNumber"]
    12587 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12589 JUMPIFNOT                        R24 ; [+5]
    12590 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12592 GETTABLEKS                       R23 R24 K711 ["NumberOfPackages"]
    12594 JUMPIF                           R23 ; [+1]
    12595 LOADK                            R23 K44 [""]
    12596 MOVE                             R26 R23
    12597 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    12599 CALL                             R24 2 1
    12600 MOVE                             R22 R24
    12601 SETTABLEKS                       R22 R21 K699 ["numberOfPackages"]
    12603 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12605 JUMPIFNOT                        R24 ; [+5]
    12606 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12608 GETTABLEKS                       R23 R24 K712 ["TotalPackages"]
    12610 JUMPIF                           R23 ; [+1]
    12611 LOADK                            R23 K44 [""]
    12612 MOVE                             R26 R23
    12613 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    12615 CALL                             R24 2 1
    12616 MOVE                             R22 R24
    12617 SETTABLEKS                       R22 R21 K700 ["totalPackages"]
    12619 CALL                             R19 2 1
    12620 SETTABLEKS                       R19 R18 K24 ["translation"]
    12622 GETTABLEKS                       R19 R2 K14 ["userId"]
    12624 SETTABLEKS                       R19 R18 K25 ["actorId"]
    12626 MOVE                             R19 R0
    12627 GETTABLEKS                       R20 R2 K14 ["userId"]
    12629 CALL                             R19 1 1
    12630 SETTABLEKS                       R19 R18 K26 ["actorName"]
    12632 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    12634 ORK                              R19 R20 K18 [0]
    12635 SETTABLEKS                       R19 R18 K29 ["iconId"]
    12637 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12639 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12641 GETTABLEKS                       R19 R2 K30 ["headerText"]
    12643 SETTABLEKS                       R19 R18 K30 ["headerText"]
    12645 GETTABLEKS                       R19 R2 K31 ["footerText"]
    12647 SETTABLEKS                       R19 R18 K31 ["footerText"]
    12649 GETGLOBAL                        R19 K703 ["getLink"]
    12651 LOADK                            R20 K713 ["packageversion"]
    12652 GETTABLEKS                       R21 R2 K8 ["resourceId"]
    12654 CALL                             R19 2 1
    12655 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    12657 MOVE                             R19 R12
    12658 LOADK                            R20 K714 ["Bubble.ViewPackageVersionHistory"]
    12659 CALL                             R19 1 1
    12660 SETTABLEKS                       R19 R18 K694 ["viewBasicSettingsLinkText"]
    12662 RETURN                           R18 1
    12663 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12665 JUMPIFNOTEQKN                    R18 K715 [125] ; [+163]
    12667 DUPTABLE                         R18 K719 [{["id"], ["eventType"] = "PackageManualUpdate", ["eventCategory"] = "Package", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Package", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewBasicSettingsLinkText"], ["linkErrorHeader"], ["linkErrorBody"]}]
    12668 GETTABLEKS                       R19 R2 K19 ["id"]
    12670 SETTABLEKS                       R19 R18 K19 ["id"]
    12672 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    12674 NEWCLOSURE                       R22 P6
    12675 CAPTURE                          VAL R20
    12676 CAPTURE                          VAL R3
    12677 FASTPCALL                        pcall 1 ; [+2]
    12678 GETIMPORT                        R21 K35 [pcall]
    12680 CALL                             R21 1 2
    12681 JUMPIFNOT                        R21 ; [+2]
    12682 MOVE                             R19 R22
    12683 JUMP                             ; [+1]
    12684 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    12685 SETTABLEKS                       R19 R18 K23 ["date"]
    12687 MOVE                             R19 R12
    12688 LOADK                            R20 K720 ["Description.PackageManualUpdate"]
    12689 DUPTABLE                         R21 K701 [{"packageName", "versionNumber", "numberOfPackages", "totalPackages"}]
    12690 GETTABLEKS                       R25 R2 K42 ["metaData"]
    12692 JUMPIFNOT                        R25 ; [+5]
    12693 GETTABLEKS                       R25 R2 K42 ["metaData"]
    12695 GETTABLEKS                       R24 R25 K702 ["PackageName"]
    12697 JUMPIF                           R24 ; [+1]
    12698 LOADK                            R24 K44 [""]
    12699 LOADK                            R25 K44 [""]
    12700 FASTCALL1                        TOSTRING R24 ; [+3]
    12701 MOVE                             R27 R24
    12702 GETIMPORT                        R26 K4 [tostring]
    12704 CALL                             R26 1 1
    12705 LOADK                            R27 K44 [""]
    12706 CONCAT                           R23 R25 R27
    12707 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    12709 GETGLOBAL                        R25 K703 ["getLink"]
    12711 LOADK                            R26 K704 ["packageexplorer"]
    12712 MOVE                             R27 R24
    12713 CALL                             R25 2 1
    12714 JUMPIFNOTEQKNIL                  R25 ; [+3]
    12716 MOVE                             R22 R23
    12717 JUMP                             ; [+7]
    12718 LOADK                            R26 K705 ["["]
    12719 MOVE                             R27 R23
    12720 LOADK                            R28 K706 ["]"]
    12721 LOADK                            R29 K707 ["("]
    12722 MOVE                             R30 R25
    12723 LOADK                            R31 K708 [")"]
    12724 CONCAT                           R22 R26 R31
    12725 SETTABLEKS                       R22 R21 K697 ["packageName"]
    12727 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12729 JUMPIFNOT                        R24 ; [+5]
    12730 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12732 GETTABLEKS                       R23 R24 K709 ["VersionNumber"]
    12734 JUMPIF                           R23 ; [+1]
    12735 LOADK                            R23 K44 [""]
    12736 MOVE                             R26 R23
    12737 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    12739 CALL                             R24 2 1
    12740 MOVE                             R22 R24
    12741 SETTABLEKS                       R22 R21 K698 ["versionNumber"]
    12743 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12745 JUMPIFNOT                        R24 ; [+5]
    12746 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12748 GETTABLEKS                       R23 R24 K711 ["NumberOfPackages"]
    12750 JUMPIF                           R23 ; [+1]
    12751 LOADK                            R23 K44 [""]
    12752 MOVE                             R26 R23
    12753 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    12755 CALL                             R24 2 1
    12756 MOVE                             R22 R24
    12757 SETTABLEKS                       R22 R21 K699 ["numberOfPackages"]
    12759 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12761 JUMPIFNOT                        R24 ; [+5]
    12762 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12764 GETTABLEKS                       R23 R24 K712 ["TotalPackages"]
    12766 JUMPIF                           R23 ; [+1]
    12767 LOADK                            R23 K44 [""]
    12768 MOVE                             R26 R23
    12769 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    12771 CALL                             R24 2 1
    12772 MOVE                             R22 R24
    12773 SETTABLEKS                       R22 R21 K700 ["totalPackages"]
    12775 CALL                             R19 2 1
    12776 SETTABLEKS                       R19 R18 K24 ["translation"]
    12778 GETTABLEKS                       R19 R2 K14 ["userId"]
    12780 SETTABLEKS                       R19 R18 K25 ["actorId"]
    12782 MOVE                             R19 R0
    12783 GETTABLEKS                       R20 R2 K14 ["userId"]
    12785 CALL                             R19 1 1
    12786 SETTABLEKS                       R19 R18 K26 ["actorName"]
    12788 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    12790 ORK                              R19 R20 K18 [0]
    12791 SETTABLEKS                       R19 R18 K29 ["iconId"]
    12793 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12795 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12797 GETTABLEKS                       R19 R2 K30 ["headerText"]
    12799 SETTABLEKS                       R19 R18 K30 ["headerText"]
    12801 GETTABLEKS                       R19 R2 K31 ["footerText"]
    12803 SETTABLEKS                       R19 R18 K31 ["footerText"]
    12805 GETGLOBAL                        R19 K703 ["getLink"]
    12807 LOADK                            R20 K704 ["packageexplorer"]
    12808 GETTABLEKS                       R21 R2 K8 ["resourceId"]
    12810 CALL                             R19 2 1
    12811 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    12813 MOVE                             R19 R12
    12814 LOADK                            R20 K721 ["Bubble.ViewInExplorer"]
    12815 CALL                             R19 1 1
    12816 SETTABLEKS                       R19 R18 K694 ["viewBasicSettingsLinkText"]
    12818 MOVE                             R19 R12
    12819 LOADK                            R20 K722 ["LinkError.MissingPackageHeader"]
    12820 CALL                             R19 1 1
    12821 SETTABLEKS                       R19 R18 K717 ["linkErrorHeader"]
    12823 MOVE                             R19 R12
    12824 LOADK                            R20 K723 ["LinkError.MissingPackageBody"]
    12825 CALL                             R19 1 1
    12826 SETTABLEKS                       R19 R18 K718 ["linkErrorBody"]
    12828 RETURN                           R18 1
    12829 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12831 JUMPIFNOTEQKN                    R18 K724 [126] ; [+179]
    12833 DUPTABLE                         R18 K726 [{["id"], ["eventType"] = "PackageAutoUpdate", ["eventCategory"] = "Package", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Package", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewBasicSettingsLinkText"], ["linkErrorHeader"], ["linkErrorBody"]}]
    12834 GETTABLEKS                       R19 R2 K19 ["id"]
    12836 SETTABLEKS                       R19 R18 K19 ["id"]
    12838 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    12840 NEWCLOSURE                       R22 P6
    12841 CAPTURE                          VAL R20
    12842 CAPTURE                          VAL R3
    12843 FASTPCALL                        pcall 1 ; [+2]
    12844 GETIMPORT                        R21 K35 [pcall]
    12846 CALL                             R21 1 2
    12847 JUMPIFNOT                        R21 ; [+2]
    12848 MOVE                             R19 R22
    12849 JUMP                             ; [+1]
    12850 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    12851 SETTABLEKS                       R19 R18 K23 ["date"]
    12853 MOVE                             R19 R12
    12854 LOADK                            R20 K727 ["Description.PackageAutoUpdate"]
    12855 DUPTABLE                         R21 K729 [{"packageName", "versionNumber", "numberOfPackages", "totalPackages", "failedPackages"}]
    12856 GETTABLEKS                       R25 R2 K42 ["metaData"]
    12858 JUMPIFNOT                        R25 ; [+5]
    12859 GETTABLEKS                       R25 R2 K42 ["metaData"]
    12861 GETTABLEKS                       R24 R25 K702 ["PackageName"]
    12863 JUMPIF                           R24 ; [+1]
    12864 LOADK                            R24 K44 [""]
    12865 LOADK                            R25 K44 [""]
    12866 FASTCALL1                        TOSTRING R24 ; [+3]
    12867 MOVE                             R27 R24
    12868 GETIMPORT                        R26 K4 [tostring]
    12870 CALL                             R26 1 1
    12871 LOADK                            R27 K44 [""]
    12872 CONCAT                           R23 R25 R27
    12873 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    12875 GETGLOBAL                        R25 K703 ["getLink"]
    12877 LOADK                            R26 K704 ["packageexplorer"]
    12878 MOVE                             R27 R24
    12879 CALL                             R25 2 1
    12880 JUMPIFNOTEQKNIL                  R25 ; [+3]
    12882 MOVE                             R22 R23
    12883 JUMP                             ; [+7]
    12884 LOADK                            R26 K705 ["["]
    12885 MOVE                             R27 R23
    12886 LOADK                            R28 K706 ["]"]
    12887 LOADK                            R29 K707 ["("]
    12888 MOVE                             R30 R25
    12889 LOADK                            R31 K708 [")"]
    12890 CONCAT                           R22 R26 R31
    12891 SETTABLEKS                       R22 R21 K697 ["packageName"]
    12893 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12895 JUMPIFNOT                        R24 ; [+5]
    12896 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12898 GETTABLEKS                       R23 R24 K709 ["VersionNumber"]
    12900 JUMPIF                           R23 ; [+1]
    12901 LOADK                            R23 K44 [""]
    12902 MOVE                             R26 R23
    12903 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    12905 CALL                             R24 2 1
    12906 MOVE                             R22 R24
    12907 SETTABLEKS                       R22 R21 K698 ["versionNumber"]
    12909 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12911 JUMPIFNOT                        R24 ; [+5]
    12912 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12914 GETTABLEKS                       R23 R24 K711 ["NumberOfPackages"]
    12916 JUMPIF                           R23 ; [+1]
    12917 LOADK                            R23 K44 [""]
    12918 MOVE                             R26 R23
    12919 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    12921 CALL                             R24 2 1
    12922 MOVE                             R22 R24
    12923 SETTABLEKS                       R22 R21 K699 ["numberOfPackages"]
    12925 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12927 JUMPIFNOT                        R24 ; [+5]
    12928 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12930 GETTABLEKS                       R23 R24 K712 ["TotalPackages"]
    12932 JUMPIF                           R23 ; [+1]
    12933 LOADK                            R23 K44 [""]
    12934 MOVE                             R26 R23
    12935 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    12937 CALL                             R24 2 1
    12938 MOVE                             R22 R24
    12939 SETTABLEKS                       R22 R21 K700 ["totalPackages"]
    12941 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12943 JUMPIFNOT                        R24 ; [+5]
    12944 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12946 GETTABLEKS                       R23 R24 K730 ["FailedPackages"]
    12948 JUMPIF                           R23 ; [+1]
    12949 LOADK                            R23 K44 [""]
    12950 MOVE                             R26 R23
    12951 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    12953 CALL                             R24 2 1
    12954 MOVE                             R22 R24
    12955 SETTABLEKS                       R22 R21 K728 ["failedPackages"]
    12957 CALL                             R19 2 1
    12958 SETTABLEKS                       R19 R18 K24 ["translation"]
    12960 GETTABLEKS                       R19 R2 K14 ["userId"]
    12962 SETTABLEKS                       R19 R18 K25 ["actorId"]
    12964 MOVE                             R19 R0
    12965 GETTABLEKS                       R20 R2 K14 ["userId"]
    12967 CALL                             R19 1 1
    12968 SETTABLEKS                       R19 R18 K26 ["actorName"]
    12970 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    12972 ORK                              R19 R20 K18 [0]
    12973 SETTABLEKS                       R19 R18 K29 ["iconId"]
    12975 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12977 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12979 GETTABLEKS                       R19 R2 K30 ["headerText"]
    12981 SETTABLEKS                       R19 R18 K30 ["headerText"]
    12983 GETTABLEKS                       R19 R2 K31 ["footerText"]
    12985 SETTABLEKS                       R19 R18 K31 ["footerText"]
    12987 GETGLOBAL                        R19 K703 ["getLink"]
    12989 LOADK                            R20 K704 ["packageexplorer"]
    12990 GETTABLEKS                       R21 R2 K8 ["resourceId"]
    12992 CALL                             R19 2 1
    12993 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    12995 MOVE                             R19 R12
    12996 LOADK                            R20 K721 ["Bubble.ViewInExplorer"]
    12997 CALL                             R19 1 1
    12998 SETTABLEKS                       R19 R18 K694 ["viewBasicSettingsLinkText"]
    13000 MOVE                             R19 R12
    13001 LOADK                            R20 K722 ["LinkError.MissingPackageHeader"]
    13002 CALL                             R19 1 1
    13003 SETTABLEKS                       R19 R18 K717 ["linkErrorHeader"]
    13005 MOVE                             R19 R12
    13006 LOADK                            R20 K723 ["LinkError.MissingPackageBody"]
    13007 CALL                             R19 1 1
    13008 SETTABLEKS                       R19 R18 K718 ["linkErrorBody"]
    13010 RETURN                           R18 1
    13011 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13013 JUMPIFNOTEQKN                    R18 K731 [127] ; [+203]
    13015 DUPTABLE                         R18 K733 [{["id"], ["eventType"] = "PackageAutoUpdateToggle", ["eventCategory"] = "Package", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Package", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewBasicSettingsLinkText"], ["linkErrorHeader"], ["linkErrorBody"]}]
    13016 GETTABLEKS                       R19 R2 K19 ["id"]
    13018 SETTABLEKS                       R19 R18 K19 ["id"]
    13020 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    13022 NEWCLOSURE                       R22 P6
    13023 CAPTURE                          VAL R20
    13024 CAPTURE                          VAL R3
    13025 FASTPCALL                        pcall 1 ; [+2]
    13026 GETIMPORT                        R21 K35 [pcall]
    13028 CALL                             R21 1 2
    13029 JUMPIFNOT                        R21 ; [+2]
    13030 MOVE                             R19 R22
    13031 JUMP                             ; [+1]
    13032 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    13033 SETTABLEKS                       R19 R18 K23 ["date"]
    13035 MOVE                             R19 R12
    13036 LOADK                            R20 K734 ["Description.PackageAutoUpdateToggle"]
    13037 DUPTABLE                         R21 K735 [{"packageName", "versionNumber", "numberOfPackages", "totalPackages", "action"}]
    13038 GETTABLEKS                       R25 R2 K42 ["metaData"]
    13040 JUMPIFNOT                        R25 ; [+5]
    13041 GETTABLEKS                       R25 R2 K42 ["metaData"]
    13043 GETTABLEKS                       R24 R25 K702 ["PackageName"]
    13045 JUMPIF                           R24 ; [+1]
    13046 LOADK                            R24 K44 [""]
    13047 LOADK                            R25 K44 [""]
    13048 FASTCALL1                        TOSTRING R24 ; [+3]
    13049 MOVE                             R27 R24
    13050 GETIMPORT                        R26 K4 [tostring]
    13052 CALL                             R26 1 1
    13053 LOADK                            R27 K44 [""]
    13054 CONCAT                           R23 R25 R27
    13055 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    13057 GETGLOBAL                        R25 K703 ["getLink"]
    13059 LOADK                            R26 K704 ["packageexplorer"]
    13060 MOVE                             R27 R24
    13061 CALL                             R25 2 1
    13062 JUMPIFNOTEQKNIL                  R25 ; [+3]
    13064 MOVE                             R22 R23
    13065 JUMP                             ; [+7]
    13066 LOADK                            R26 K705 ["["]
    13067 MOVE                             R27 R23
    13068 LOADK                            R28 K706 ["]"]
    13069 LOADK                            R29 K707 ["("]
    13070 MOVE                             R30 R25
    13071 LOADK                            R31 K708 [")"]
    13072 CONCAT                           R22 R26 R31
    13073 SETTABLEKS                       R22 R21 K697 ["packageName"]
    13075 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13077 JUMPIFNOT                        R24 ; [+5]
    13078 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13080 GETTABLEKS                       R23 R24 K709 ["VersionNumber"]
    13082 JUMPIF                           R23 ; [+1]
    13083 LOADK                            R23 K44 [""]
    13084 MOVE                             R26 R23
    13085 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    13087 CALL                             R24 2 1
    13088 MOVE                             R22 R24
    13089 SETTABLEKS                       R22 R21 K698 ["versionNumber"]
    13091 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13093 JUMPIFNOT                        R24 ; [+5]
    13094 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13096 GETTABLEKS                       R23 R24 K711 ["NumberOfPackages"]
    13098 JUMPIF                           R23 ; [+1]
    13099 LOADK                            R23 K44 [""]
    13100 MOVE                             R26 R23
    13101 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    13103 CALL                             R24 2 1
    13104 MOVE                             R22 R24
    13105 SETTABLEKS                       R22 R21 K699 ["numberOfPackages"]
    13107 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13109 JUMPIFNOT                        R24 ; [+5]
    13110 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13112 GETTABLEKS                       R23 R24 K712 ["TotalPackages"]
    13114 JUMPIF                           R23 ; [+1]
    13115 LOADK                            R23 K44 [""]
    13116 MOVE                             R26 R23
    13117 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    13119 CALL                             R24 2 1
    13120 MOVE                             R22 R24
    13121 SETTABLEKS                       R22 R21 K700 ["totalPackages"]
    13123 GETTABLEKS                       R26 R2 K42 ["metaData"]
    13125 JUMPIFNOT                        R26 ; [+5]
    13126 GETTABLEKS                       R26 R2 K42 ["metaData"]
    13128 GETTABLEKS                       R25 R26 K736 ["AutoUpdate"]
    13130 JUMPIF                           R25 ; [+1]
    13131 LOADK                            R25 K44 [""]
    13132 GETIMPORT                        R26 K47 [string.lower]
    13134 FASTCALL1                        TOSTRING R25 ; [+3]
    13135 MOVE                             R28 R25
    13136 GETIMPORT                        R27 K4 [tostring]
    13138 CALL                             R27 1 1
    13139 CALL                             R26 1 1
    13140 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
    13142 LOADB                            R24 1
    13143 JUMP                             ; [+1]
    13144 LOADB                            R24 0
    13145 JUMPIFNOT                        R24 ; [+4]
    13146 MOVE                             R23 R12
    13147 LOADK                            R24 K158 ["Description.ActionEnabled"]
    13148 CALL                             R23 1 1
    13149 JUMPIF                           R23 ; [+3]
    13150 MOVE                             R23 R12
    13151 LOADK                            R24 K159 ["Description.ActionDisabled"]
    13152 CALL                             R23 1 1
    13153 LOADK                            R24 K44 [""]
    13154 FASTCALL1                        TOSTRING R23 ; [+3]
    13155 MOVE                             R26 R23
    13156 GETIMPORT                        R25 K4 [tostring]
    13158 CALL                             R25 1 1
    13159 LOADK                            R26 K44 [""]
    13160 CONCAT                           R22 R24 R26
    13161 SETTABLEKS                       R22 R21 K156 ["action"]
    13163 CALL                             R19 2 1
    13164 SETTABLEKS                       R19 R18 K24 ["translation"]
    13166 GETTABLEKS                       R19 R2 K14 ["userId"]
    13168 SETTABLEKS                       R19 R18 K25 ["actorId"]
    13170 MOVE                             R19 R0
    13171 GETTABLEKS                       R20 R2 K14 ["userId"]
    13173 CALL                             R19 1 1
    13174 SETTABLEKS                       R19 R18 K26 ["actorName"]
    13176 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    13178 ORK                              R19 R20 K18 [0]
    13179 SETTABLEKS                       R19 R18 K29 ["iconId"]
    13181 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13183 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13185 GETTABLEKS                       R19 R2 K30 ["headerText"]
    13187 SETTABLEKS                       R19 R18 K30 ["headerText"]
    13189 GETTABLEKS                       R19 R2 K31 ["footerText"]
    13191 SETTABLEKS                       R19 R18 K31 ["footerText"]
    13193 GETGLOBAL                        R19 K703 ["getLink"]
    13195 LOADK                            R20 K704 ["packageexplorer"]
    13196 GETTABLEKS                       R21 R2 K8 ["resourceId"]
    13198 CALL                             R19 2 1
    13199 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    13201 MOVE                             R19 R12
    13202 LOADK                            R20 K721 ["Bubble.ViewInExplorer"]
    13203 CALL                             R19 1 1
    13204 SETTABLEKS                       R19 R18 K694 ["viewBasicSettingsLinkText"]
    13206 MOVE                             R19 R12
    13207 LOADK                            R20 K722 ["LinkError.MissingPackageHeader"]
    13208 CALL                             R19 1 1
    13209 SETTABLEKS                       R19 R18 K717 ["linkErrorHeader"]
    13211 MOVE                             R19 R12
    13212 LOADK                            R20 K723 ["LinkError.MissingPackageBody"]
    13213 CALL                             R19 1 1
    13214 SETTABLEKS                       R19 R18 K718 ["linkErrorBody"]
    13216 RETURN                           R18 1
    13217 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13219 JUMPIFNOTEQKN                    R18 K737 [128] ; [+74]
    13221 DUPTABLE                         R18 K739 [{["id"], ["eventType"] = "RoleCreated", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    13222 GETTABLEKS                       R19 R2 K19 ["id"]
    13224 SETTABLEKS                       R19 R18 K19 ["id"]
    13226 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    13228 NEWCLOSURE                       R22 P6
    13229 CAPTURE                          VAL R20
    13230 CAPTURE                          VAL R3
    13231 FASTPCALL                        pcall 1 ; [+2]
    13232 GETIMPORT                        R21 K35 [pcall]
    13234 CALL                             R21 1 2
    13235 JUMPIFNOT                        R21 ; [+2]
    13236 MOVE                             R19 R22
    13237 JUMP                             ; [+1]
    13238 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    13239 SETTABLEKS                       R19 R18 K23 ["date"]
    13241 MOVE                             R19 R12
    13242 LOADK                            R20 K740 ["Description.RoleCreated"]
    13243 DUPTABLE                         R21 K742 [{"roleName"}]
    13244 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13246 JUMPIFNOT                        R24 ; [+5]
    13247 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13249 GETTABLEKS                       R23 R24 K743 ["RoleName"]
    13251 JUMPIF                           R23 ; [+1]
    13252 LOADK                            R23 K44 [""]
    13253 LOADK                            R24 K44 [""]
    13254 FASTCALL1                        TOSTRING R23 ; [+3]
    13255 MOVE                             R26 R23
    13256 GETIMPORT                        R25 K4 [tostring]
    13258 CALL                             R25 1 1
    13259 LOADK                            R26 K44 [""]
    13260 CONCAT                           R22 R24 R26
    13261 SETTABLEKS                       R22 R21 K741 ["roleName"]
    13263 CALL                             R19 2 1
    13264 SETTABLEKS                       R19 R18 K24 ["translation"]
    13266 GETTABLEKS                       R19 R2 K14 ["userId"]
    13268 SETTABLEKS                       R19 R18 K25 ["actorId"]
    13270 MOVE                             R19 R0
    13271 GETTABLEKS                       R20 R2 K14 ["userId"]
    13273 CALL                             R19 1 1
    13274 SETTABLEKS                       R19 R18 K26 ["actorName"]
    13276 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    13278 ORK                              R19 R20 K18 [0]
    13279 SETTABLEKS                       R19 R18 K29 ["iconId"]
    13281 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13283 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13285 GETTABLEKS                       R19 R2 K30 ["headerText"]
    13287 SETTABLEKS                       R19 R18 K30 ["headerText"]
    13289 GETTABLEKS                       R19 R2 K31 ["footerText"]
    13291 SETTABLEKS                       R19 R18 K31 ["footerText"]
    13293 RETURN                           R18 1
    13294 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13296 JUMPIFNOTEQKN                    R18 K744 [129] ; [+74]
    13298 DUPTABLE                         R18 K746 [{["id"], ["eventType"] = "RoleDeleted", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    13299 GETTABLEKS                       R19 R2 K19 ["id"]
    13301 SETTABLEKS                       R19 R18 K19 ["id"]
    13303 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    13305 NEWCLOSURE                       R22 P6
    13306 CAPTURE                          VAL R20
    13307 CAPTURE                          VAL R3
    13308 FASTPCALL                        pcall 1 ; [+2]
    13309 GETIMPORT                        R21 K35 [pcall]
    13311 CALL                             R21 1 2
    13312 JUMPIFNOT                        R21 ; [+2]
    13313 MOVE                             R19 R22
    13314 JUMP                             ; [+1]
    13315 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    13316 SETTABLEKS                       R19 R18 K23 ["date"]
    13318 MOVE                             R19 R12
    13319 LOADK                            R20 K747 ["Description.RoleDeleted"]
    13320 DUPTABLE                         R21 K742 [{"roleName"}]
    13321 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13323 JUMPIFNOT                        R24 ; [+5]
    13324 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13326 GETTABLEKS                       R23 R24 K743 ["RoleName"]
    13328 JUMPIF                           R23 ; [+1]
    13329 LOADK                            R23 K44 [""]
    13330 LOADK                            R24 K44 [""]
    13331 FASTCALL1                        TOSTRING R23 ; [+3]
    13332 MOVE                             R26 R23
    13333 GETIMPORT                        R25 K4 [tostring]
    13335 CALL                             R25 1 1
    13336 LOADK                            R26 K44 [""]
    13337 CONCAT                           R22 R24 R26
    13338 SETTABLEKS                       R22 R21 K741 ["roleName"]
    13340 CALL                             R19 2 1
    13341 SETTABLEKS                       R19 R18 K24 ["translation"]
    13343 GETTABLEKS                       R19 R2 K14 ["userId"]
    13345 SETTABLEKS                       R19 R18 K25 ["actorId"]
    13347 MOVE                             R19 R0
    13348 GETTABLEKS                       R20 R2 K14 ["userId"]
    13350 CALL                             R19 1 1
    13351 SETTABLEKS                       R19 R18 K26 ["actorName"]
    13353 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    13355 ORK                              R19 R20 K18 [0]
    13356 SETTABLEKS                       R19 R18 K29 ["iconId"]
    13358 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13360 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13362 GETTABLEKS                       R19 R2 K30 ["headerText"]
    13364 SETTABLEKS                       R19 R18 K30 ["headerText"]
    13366 GETTABLEKS                       R19 R2 K31 ["footerText"]
    13368 SETTABLEKS                       R19 R18 K31 ["footerText"]
    13370 RETURN                           R18 1
    13371 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13373 JUMPIFNOTEQKN                    R18 K748 [130] ; [+74]
    13375 DUPTABLE                         R18 K750 [{["id"], ["eventType"] = "RolePermissionsUpdated", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    13376 GETTABLEKS                       R19 R2 K19 ["id"]
    13378 SETTABLEKS                       R19 R18 K19 ["id"]
    13380 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    13382 NEWCLOSURE                       R22 P6
    13383 CAPTURE                          VAL R20
    13384 CAPTURE                          VAL R3
    13385 FASTPCALL                        pcall 1 ; [+2]
    13386 GETIMPORT                        R21 K35 [pcall]
    13388 CALL                             R21 1 2
    13389 JUMPIFNOT                        R21 ; [+2]
    13390 MOVE                             R19 R22
    13391 JUMP                             ; [+1]
    13392 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    13393 SETTABLEKS                       R19 R18 K23 ["date"]
    13395 MOVE                             R19 R12
    13396 LOADK                            R20 K751 ["Description.RolePermissionsUpdated"]
    13397 DUPTABLE                         R21 K742 [{"roleName"}]
    13398 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13400 JUMPIFNOT                        R24 ; [+5]
    13401 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13403 GETTABLEKS                       R23 R24 K743 ["RoleName"]
    13405 JUMPIF                           R23 ; [+1]
    13406 LOADK                            R23 K44 [""]
    13407 LOADK                            R24 K44 [""]
    13408 FASTCALL1                        TOSTRING R23 ; [+3]
    13409 MOVE                             R26 R23
    13410 GETIMPORT                        R25 K4 [tostring]
    13412 CALL                             R25 1 1
    13413 LOADK                            R26 K44 [""]
    13414 CONCAT                           R22 R24 R26
    13415 SETTABLEKS                       R22 R21 K741 ["roleName"]
    13417 CALL                             R19 2 1
    13418 SETTABLEKS                       R19 R18 K24 ["translation"]
    13420 GETTABLEKS                       R19 R2 K14 ["userId"]
    13422 SETTABLEKS                       R19 R18 K25 ["actorId"]
    13424 MOVE                             R19 R0
    13425 GETTABLEKS                       R20 R2 K14 ["userId"]
    13427 CALL                             R19 1 1
    13428 SETTABLEKS                       R19 R18 K26 ["actorName"]
    13430 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    13432 ORK                              R19 R20 K18 [0]
    13433 SETTABLEKS                       R19 R18 K29 ["iconId"]
    13435 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13437 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13439 GETTABLEKS                       R19 R2 K30 ["headerText"]
    13441 SETTABLEKS                       R19 R18 K30 ["headerText"]
    13443 GETTABLEKS                       R19 R2 K31 ["footerText"]
    13445 SETTABLEKS                       R19 R18 K31 ["footerText"]
    13447 RETURN                           R18 1
    13448 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13450 JUMPIFNOTEQKN                    R18 K752 [131] ; [+93]
    13452 DUPTABLE                         R18 K754 [{["id"], ["eventType"] = "RoleNameUpdated", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    13453 GETTABLEKS                       R19 R2 K19 ["id"]
    13455 SETTABLEKS                       R19 R18 K19 ["id"]
    13457 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    13459 NEWCLOSURE                       R22 P6
    13460 CAPTURE                          VAL R20
    13461 CAPTURE                          VAL R3
    13462 FASTPCALL                        pcall 1 ; [+2]
    13463 GETIMPORT                        R21 K35 [pcall]
    13465 CALL                             R21 1 2
    13466 JUMPIFNOT                        R21 ; [+2]
    13467 MOVE                             R19 R22
    13468 JUMP                             ; [+1]
    13469 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    13470 SETTABLEKS                       R19 R18 K23 ["date"]
    13472 MOVE                             R19 R12
    13473 LOADK                            R20 K755 ["Description.RoleNameUpdated"]
    13474 DUPTABLE                         R21 K758 [{"oldRoleName", "newRoleName"}]
    13475 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13477 JUMPIFNOT                        R24 ; [+5]
    13478 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13480 GETTABLEKS                       R23 R24 K759 ["OldRoleName"]
    13482 JUMPIF                           R23 ; [+1]
    13483 LOADK                            R23 K44 [""]
    13484 LOADK                            R24 K44 [""]
    13485 FASTCALL1                        TOSTRING R23 ; [+3]
    13486 MOVE                             R26 R23
    13487 GETIMPORT                        R25 K4 [tostring]
    13489 CALL                             R25 1 1
    13490 LOADK                            R26 K44 [""]
    13491 CONCAT                           R22 R24 R26
    13492 SETTABLEKS                       R22 R21 K756 ["oldRoleName"]
    13494 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13496 JUMPIFNOT                        R24 ; [+5]
    13497 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13499 GETTABLEKS                       R23 R24 K760 ["NewRoleName"]
    13501 JUMPIF                           R23 ; [+1]
    13502 LOADK                            R23 K44 [""]
    13503 LOADK                            R24 K44 [""]
    13504 FASTCALL1                        TOSTRING R23 ; [+3]
    13505 MOVE                             R26 R23
    13506 GETIMPORT                        R25 K4 [tostring]
    13508 CALL                             R25 1 1
    13509 LOADK                            R26 K44 [""]
    13510 CONCAT                           R22 R24 R26
    13511 SETTABLEKS                       R22 R21 K757 ["newRoleName"]
    13513 CALL                             R19 2 1
    13514 SETTABLEKS                       R19 R18 K24 ["translation"]
    13516 GETTABLEKS                       R19 R2 K14 ["userId"]
    13518 SETTABLEKS                       R19 R18 K25 ["actorId"]
    13520 MOVE                             R19 R0
    13521 GETTABLEKS                       R20 R2 K14 ["userId"]
    13523 CALL                             R19 1 1
    13524 SETTABLEKS                       R19 R18 K26 ["actorName"]
    13526 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    13528 ORK                              R19 R20 K18 [0]
    13529 SETTABLEKS                       R19 R18 K29 ["iconId"]
    13531 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13533 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13535 GETTABLEKS                       R19 R2 K30 ["headerText"]
    13537 SETTABLEKS                       R19 R18 K30 ["headerText"]
    13539 GETTABLEKS                       R19 R2 K31 ["footerText"]
    13541 SETTABLEKS                       R19 R18 K31 ["footerText"]
    13543 RETURN                           R18 1
    13544 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13546 JUMPIFNOTEQKN                    R18 K761 [132] ; [+69]
    13548 DUPTABLE                         R18 K763 [{["id"], ["eventType"] = "MemberRemoved", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "User", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    13549 GETTABLEKS                       R19 R2 K19 ["id"]
    13551 SETTABLEKS                       R19 R18 K19 ["id"]
    13553 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    13555 NEWCLOSURE                       R22 P6
    13556 CAPTURE                          VAL R20
    13557 CAPTURE                          VAL R3
    13558 FASTPCALL                        pcall 1 ; [+2]
    13559 GETIMPORT                        R21 K35 [pcall]
    13561 CALL                             R21 1 2
    13562 JUMPIFNOT                        R21 ; [+2]
    13563 MOVE                             R19 R22
    13564 JUMP                             ; [+1]
    13565 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    13566 SETTABLEKS                       R19 R18 K23 ["date"]
    13568 MOVE                             R19 R12
    13569 LOADK                            R20 K764 ["Description.MemberRemoved"]
    13570 DUPTABLE                         R21 K396 [{"userName"}]
    13571 MOVE                             R23 R0
    13572 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    13574 CALL                             R23 1 1
    13575 LOADK                            R24 K44 [""]
    13576 FASTCALL1                        TOSTRING R23 ; [+3]
    13577 MOVE                             R26 R23
    13578 GETIMPORT                        R25 K4 [tostring]
    13580 CALL                             R25 1 1
    13581 LOADK                            R26 K44 [""]
    13582 CONCAT                           R22 R24 R26
    13583 SETTABLEKS                       R22 R21 K395 ["userName"]
    13585 CALL                             R19 2 1
    13586 SETTABLEKS                       R19 R18 K24 ["translation"]
    13588 GETTABLEKS                       R19 R2 K14 ["userId"]
    13590 SETTABLEKS                       R19 R18 K25 ["actorId"]
    13592 MOVE                             R19 R0
    13593 GETTABLEKS                       R20 R2 K14 ["userId"]
    13595 CALL                             R19 1 1
    13596 SETTABLEKS                       R19 R18 K26 ["actorName"]
    13598 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    13600 ORK                              R19 R20 K18 [0]
    13601 SETTABLEKS                       R19 R18 K29 ["iconId"]
    13603 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13605 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13607 GETTABLEKS                       R19 R2 K30 ["headerText"]
    13609 SETTABLEKS                       R19 R18 K30 ["headerText"]
    13611 GETTABLEKS                       R19 R2 K31 ["footerText"]
    13613 SETTABLEKS                       R19 R18 K31 ["footerText"]
    13615 RETURN                           R18 1
    13616 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13618 JUMPIFNOTEQKN                    R18 K765 [133] ; [+69]
    13620 DUPTABLE                         R18 K767 [{["id"], ["eventType"] = "MemberInvited", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "User", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    13621 GETTABLEKS                       R19 R2 K19 ["id"]
    13623 SETTABLEKS                       R19 R18 K19 ["id"]
    13625 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    13627 NEWCLOSURE                       R22 P6
    13628 CAPTURE                          VAL R20
    13629 CAPTURE                          VAL R3
    13630 FASTPCALL                        pcall 1 ; [+2]
    13631 GETIMPORT                        R21 K35 [pcall]
    13633 CALL                             R21 1 2
    13634 JUMPIFNOT                        R21 ; [+2]
    13635 MOVE                             R19 R22
    13636 JUMP                             ; [+1]
    13637 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    13638 SETTABLEKS                       R19 R18 K23 ["date"]
    13640 MOVE                             R19 R12
    13641 LOADK                            R20 K768 ["Description.MemberInvited"]
    13642 DUPTABLE                         R21 K396 [{"userName"}]
    13643 MOVE                             R23 R0
    13644 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    13646 CALL                             R23 1 1
    13647 LOADK                            R24 K44 [""]
    13648 FASTCALL1                        TOSTRING R23 ; [+3]
    13649 MOVE                             R26 R23
    13650 GETIMPORT                        R25 K4 [tostring]
    13652 CALL                             R25 1 1
    13653 LOADK                            R26 K44 [""]
    13654 CONCAT                           R22 R24 R26
    13655 SETTABLEKS                       R22 R21 K395 ["userName"]
    13657 CALL                             R19 2 1
    13658 SETTABLEKS                       R19 R18 K24 ["translation"]
    13660 GETTABLEKS                       R19 R2 K14 ["userId"]
    13662 SETTABLEKS                       R19 R18 K25 ["actorId"]
    13664 MOVE                             R19 R0
    13665 GETTABLEKS                       R20 R2 K14 ["userId"]
    13667 CALL                             R19 1 1
    13668 SETTABLEKS                       R19 R18 K26 ["actorName"]
    13670 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    13672 ORK                              R19 R20 K18 [0]
    13673 SETTABLEKS                       R19 R18 K29 ["iconId"]
    13675 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13677 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13679 GETTABLEKS                       R19 R2 K30 ["headerText"]
    13681 SETTABLEKS                       R19 R18 K30 ["headerText"]
    13683 GETTABLEKS                       R19 R2 K31 ["footerText"]
    13685 SETTABLEKS                       R19 R18 K31 ["footerText"]
    13687 RETURN                           R18 1
    13688 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13690 JUMPIFNOTEQKN                    R18 K769 [134] ; [+69]
    13692 DUPTABLE                         R18 K771 [{["id"], ["eventType"] = "InviteRevoked", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "User", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    13693 GETTABLEKS                       R19 R2 K19 ["id"]
    13695 SETTABLEKS                       R19 R18 K19 ["id"]
    13697 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    13699 NEWCLOSURE                       R22 P6
    13700 CAPTURE                          VAL R20
    13701 CAPTURE                          VAL R3
    13702 FASTPCALL                        pcall 1 ; [+2]
    13703 GETIMPORT                        R21 K35 [pcall]
    13705 CALL                             R21 1 2
    13706 JUMPIFNOT                        R21 ; [+2]
    13707 MOVE                             R19 R22
    13708 JUMP                             ; [+1]
    13709 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    13710 SETTABLEKS                       R19 R18 K23 ["date"]
    13712 MOVE                             R19 R12
    13713 LOADK                            R20 K772 ["Description.InviteRevoked"]
    13714 DUPTABLE                         R21 K396 [{"userName"}]
    13715 MOVE                             R23 R0
    13716 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    13718 CALL                             R23 1 1
    13719 LOADK                            R24 K44 [""]
    13720 FASTCALL1                        TOSTRING R23 ; [+3]
    13721 MOVE                             R26 R23
    13722 GETIMPORT                        R25 K4 [tostring]
    13724 CALL                             R25 1 1
    13725 LOADK                            R26 K44 [""]
    13726 CONCAT                           R22 R24 R26
    13727 SETTABLEKS                       R22 R21 K395 ["userName"]
    13729 CALL                             R19 2 1
    13730 SETTABLEKS                       R19 R18 K24 ["translation"]
    13732 GETTABLEKS                       R19 R2 K14 ["userId"]
    13734 SETTABLEKS                       R19 R18 K25 ["actorId"]
    13736 MOVE                             R19 R0
    13737 GETTABLEKS                       R20 R2 K14 ["userId"]
    13739 CALL                             R19 1 1
    13740 SETTABLEKS                       R19 R18 K26 ["actorName"]
    13742 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    13744 ORK                              R19 R20 K18 [0]
    13745 SETTABLEKS                       R19 R18 K29 ["iconId"]
    13747 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13749 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13751 GETTABLEKS                       R19 R2 K30 ["headerText"]
    13753 SETTABLEKS                       R19 R18 K30 ["headerText"]
    13755 GETTABLEKS                       R19 R2 K31 ["footerText"]
    13757 SETTABLEKS                       R19 R18 K31 ["footerText"]
    13759 RETURN                           R18 1
    13760 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13762 JUMPIFNOTEQKN                    R18 K773 [135] ; [+69]
    13764 DUPTABLE                         R18 K775 [{["id"], ["eventType"] = "MemberJoined", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "User", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    13765 GETTABLEKS                       R19 R2 K19 ["id"]
    13767 SETTABLEKS                       R19 R18 K19 ["id"]
    13769 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    13771 NEWCLOSURE                       R22 P6
    13772 CAPTURE                          VAL R20
    13773 CAPTURE                          VAL R3
    13774 FASTPCALL                        pcall 1 ; [+2]
    13775 GETIMPORT                        R21 K35 [pcall]
    13777 CALL                             R21 1 2
    13778 JUMPIFNOT                        R21 ; [+2]
    13779 MOVE                             R19 R22
    13780 JUMP                             ; [+1]
    13781 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    13782 SETTABLEKS                       R19 R18 K23 ["date"]
    13784 MOVE                             R19 R12
    13785 LOADK                            R20 K776 ["Description.MemberJoined"]
    13786 DUPTABLE                         R21 K396 [{"userName"}]
    13787 MOVE                             R23 R0
    13788 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    13790 CALL                             R23 1 1
    13791 LOADK                            R24 K44 [""]
    13792 FASTCALL1                        TOSTRING R23 ; [+3]
    13793 MOVE                             R26 R23
    13794 GETIMPORT                        R25 K4 [tostring]
    13796 CALL                             R25 1 1
    13797 LOADK                            R26 K44 [""]
    13798 CONCAT                           R22 R24 R26
    13799 SETTABLEKS                       R22 R21 K395 ["userName"]
    13801 CALL                             R19 2 1
    13802 SETTABLEKS                       R19 R18 K24 ["translation"]
    13804 GETTABLEKS                       R19 R2 K14 ["userId"]
    13806 SETTABLEKS                       R19 R18 K25 ["actorId"]
    13808 MOVE                             R19 R0
    13809 GETTABLEKS                       R20 R2 K14 ["userId"]
    13811 CALL                             R19 1 1
    13812 SETTABLEKS                       R19 R18 K26 ["actorName"]
    13814 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    13816 ORK                              R19 R20 K18 [0]
    13817 SETTABLEKS                       R19 R18 K29 ["iconId"]
    13819 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13821 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13823 GETTABLEKS                       R19 R2 K30 ["headerText"]
    13825 SETTABLEKS                       R19 R18 K30 ["headerText"]
    13827 GETTABLEKS                       R19 R2 K31 ["footerText"]
    13829 SETTABLEKS                       R19 R18 K31 ["footerText"]
    13831 RETURN                           R18 1
    13832 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13834 JUMPIFNOTEQKN                    R18 K777 [136] ; [+88]
    13836 DUPTABLE                         R18 K779 [{["id"], ["eventType"] = "RoleAssigned", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "User", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    13837 GETTABLEKS                       R19 R2 K19 ["id"]
    13839 SETTABLEKS                       R19 R18 K19 ["id"]
    13841 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    13843 NEWCLOSURE                       R22 P6
    13844 CAPTURE                          VAL R20
    13845 CAPTURE                          VAL R3
    13846 FASTPCALL                        pcall 1 ; [+2]
    13847 GETIMPORT                        R21 K35 [pcall]
    13849 CALL                             R21 1 2
    13850 JUMPIFNOT                        R21 ; [+2]
    13851 MOVE                             R19 R22
    13852 JUMP                             ; [+1]
    13853 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    13854 SETTABLEKS                       R19 R18 K23 ["date"]
    13856 MOVE                             R19 R12
    13857 LOADK                            R20 K780 ["Description.RoleAssigned"]
    13858 DUPTABLE                         R21 K781 [{"userName", "roleName"}]
    13859 MOVE                             R23 R0
    13860 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    13862 CALL                             R23 1 1
    13863 LOADK                            R24 K44 [""]
    13864 FASTCALL1                        TOSTRING R23 ; [+3]
    13865 MOVE                             R26 R23
    13866 GETIMPORT                        R25 K4 [tostring]
    13868 CALL                             R25 1 1
    13869 LOADK                            R26 K44 [""]
    13870 CONCAT                           R22 R24 R26
    13871 SETTABLEKS                       R22 R21 K395 ["userName"]
    13873 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13875 JUMPIFNOT                        R24 ; [+5]
    13876 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13878 GETTABLEKS                       R23 R24 K741 ["roleName"]
    13880 JUMPIF                           R23 ; [+1]
    13881 LOADK                            R23 K44 [""]
    13882 LOADK                            R24 K44 [""]
    13883 FASTCALL1                        TOSTRING R23 ; [+3]
    13884 MOVE                             R26 R23
    13885 GETIMPORT                        R25 K4 [tostring]
    13887 CALL                             R25 1 1
    13888 LOADK                            R26 K44 [""]
    13889 CONCAT                           R22 R24 R26
    13890 SETTABLEKS                       R22 R21 K741 ["roleName"]
    13892 CALL                             R19 2 1
    13893 SETTABLEKS                       R19 R18 K24 ["translation"]
    13895 GETTABLEKS                       R19 R2 K14 ["userId"]
    13897 SETTABLEKS                       R19 R18 K25 ["actorId"]
    13899 MOVE                             R19 R0
    13900 GETTABLEKS                       R20 R2 K14 ["userId"]
    13902 CALL                             R19 1 1
    13903 SETTABLEKS                       R19 R18 K26 ["actorName"]
    13905 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    13907 ORK                              R19 R20 K18 [0]
    13908 SETTABLEKS                       R19 R18 K29 ["iconId"]
    13910 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13912 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13914 GETTABLEKS                       R19 R2 K30 ["headerText"]
    13916 SETTABLEKS                       R19 R18 K30 ["headerText"]
    13918 GETTABLEKS                       R19 R2 K31 ["footerText"]
    13920 SETTABLEKS                       R19 R18 K31 ["footerText"]
    13922 RETURN                           R18 1
    13923 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13925 JUMPIFNOTEQKN                    R18 K782 [137] ; [+88]
    13927 DUPTABLE                         R18 K784 [{["id"], ["eventType"] = "RoleUnassigned", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "User", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    13928 GETTABLEKS                       R19 R2 K19 ["id"]
    13930 SETTABLEKS                       R19 R18 K19 ["id"]
    13932 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    13934 NEWCLOSURE                       R22 P6
    13935 CAPTURE                          VAL R20
    13936 CAPTURE                          VAL R3
    13937 FASTPCALL                        pcall 1 ; [+2]
    13938 GETIMPORT                        R21 K35 [pcall]
    13940 CALL                             R21 1 2
    13941 JUMPIFNOT                        R21 ; [+2]
    13942 MOVE                             R19 R22
    13943 JUMP                             ; [+1]
    13944 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    13945 SETTABLEKS                       R19 R18 K23 ["date"]
    13947 MOVE                             R19 R12
    13948 LOADK                            R20 K785 ["Description.RoleUnassigned"]
    13949 DUPTABLE                         R21 K781 [{"userName", "roleName"}]
    13950 MOVE                             R23 R0
    13951 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    13953 CALL                             R23 1 1
    13954 LOADK                            R24 K44 [""]
    13955 FASTCALL1                        TOSTRING R23 ; [+3]
    13956 MOVE                             R26 R23
    13957 GETIMPORT                        R25 K4 [tostring]
    13959 CALL                             R25 1 1
    13960 LOADK                            R26 K44 [""]
    13961 CONCAT                           R22 R24 R26
    13962 SETTABLEKS                       R22 R21 K395 ["userName"]
    13964 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13966 JUMPIFNOT                        R24 ; [+5]
    13967 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13969 GETTABLEKS                       R23 R24 K741 ["roleName"]
    13971 JUMPIF                           R23 ; [+1]
    13972 LOADK                            R23 K44 [""]
    13973 LOADK                            R24 K44 [""]
    13974 FASTCALL1                        TOSTRING R23 ; [+3]
    13975 MOVE                             R26 R23
    13976 GETIMPORT                        R25 K4 [tostring]
    13978 CALL                             R25 1 1
    13979 LOADK                            R26 K44 [""]
    13980 CONCAT                           R22 R24 R26
    13981 SETTABLEKS                       R22 R21 K741 ["roleName"]
    13983 CALL                             R19 2 1
    13984 SETTABLEKS                       R19 R18 K24 ["translation"]
    13986 GETTABLEKS                       R19 R2 K14 ["userId"]
    13988 SETTABLEKS                       R19 R18 K25 ["actorId"]
    13990 MOVE                             R19 R0
    13991 GETTABLEKS                       R20 R2 K14 ["userId"]
    13993 CALL                             R19 1 1
    13994 SETTABLEKS                       R19 R18 K26 ["actorName"]
    13996 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    13998 ORK                              R19 R20 K18 [0]
    13999 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14001 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14003 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14005 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14007 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14009 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14011 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14013 RETURN                           R18 1
    14014 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14016 JUMPIFNOTEQKN                    R18 K786 [138] ; [+74]
    14018 DUPTABLE                         R18 K788 [{["id"], ["eventType"] = "GroupIconUpdated", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    14019 GETTABLEKS                       R19 R2 K19 ["id"]
    14021 SETTABLEKS                       R19 R18 K19 ["id"]
    14023 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14025 NEWCLOSURE                       R22 P6
    14026 CAPTURE                          VAL R20
    14027 CAPTURE                          VAL R3
    14028 FASTPCALL                        pcall 1 ; [+2]
    14029 GETIMPORT                        R21 K35 [pcall]
    14031 CALL                             R21 1 2
    14032 JUMPIFNOT                        R21 ; [+2]
    14033 MOVE                             R19 R22
    14034 JUMP                             ; [+1]
    14035 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14036 SETTABLEKS                       R19 R18 K23 ["date"]
    14038 MOVE                             R19 R12
    14039 LOADK                            R20 K789 ["Description.GroupSettingsUpdate"]
    14040 DUPTABLE                         R21 K791 [{"groupSettings"}]
    14041 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14043 JUMPIFNOT                        R24 ; [+5]
    14044 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14046 GETTABLEKS                       R23 R24 K790 ["groupSettings"]
    14048 JUMPIF                           R23 ; [+1]
    14049 LOADK                            R23 K44 [""]
    14050 LOADK                            R24 K44 [""]
    14051 FASTCALL1                        TOSTRING R23 ; [+3]
    14052 MOVE                             R26 R23
    14053 GETIMPORT                        R25 K4 [tostring]
    14055 CALL                             R25 1 1
    14056 LOADK                            R26 K44 [""]
    14057 CONCAT                           R22 R24 R26
    14058 SETTABLEKS                       R22 R21 K790 ["groupSettings"]
    14060 CALL                             R19 2 1
    14061 SETTABLEKS                       R19 R18 K24 ["translation"]
    14063 GETTABLEKS                       R19 R2 K14 ["userId"]
    14065 SETTABLEKS                       R19 R18 K25 ["actorId"]
    14067 MOVE                             R19 R0
    14068 GETTABLEKS                       R20 R2 K14 ["userId"]
    14070 CALL                             R19 1 1
    14071 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14073 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14075 ORK                              R19 R20 K18 [0]
    14076 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14078 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14080 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14082 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14084 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14086 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14088 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14090 RETURN                           R18 1
    14091 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14093 JUMPIFNOTEQKN                    R18 K792 [139] ; [+93]
    14095 DUPTABLE                         R18 K794 [{["id"], ["eventType"] = "GroupNameUpdated", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    14096 GETTABLEKS                       R19 R2 K19 ["id"]
    14098 SETTABLEKS                       R19 R18 K19 ["id"]
    14100 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14102 NEWCLOSURE                       R22 P6
    14103 CAPTURE                          VAL R20
    14104 CAPTURE                          VAL R3
    14105 FASTPCALL                        pcall 1 ; [+2]
    14106 GETIMPORT                        R21 K35 [pcall]
    14108 CALL                             R21 1 2
    14109 JUMPIFNOT                        R21 ; [+2]
    14110 MOVE                             R19 R22
    14111 JUMP                             ; [+1]
    14112 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14113 SETTABLEKS                       R19 R18 K23 ["date"]
    14115 MOVE                             R19 R12
    14116 LOADK                            R20 K795 ["Description.GroupNameUpdate"]
    14117 DUPTABLE                         R21 K797 [{"groupSettings", "newGroupName"}]
    14118 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14120 JUMPIFNOT                        R24 ; [+5]
    14121 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14123 GETTABLEKS                       R23 R24 K790 ["groupSettings"]
    14125 JUMPIF                           R23 ; [+1]
    14126 LOADK                            R23 K44 [""]
    14127 LOADK                            R24 K44 [""]
    14128 FASTCALL1                        TOSTRING R23 ; [+3]
    14129 MOVE                             R26 R23
    14130 GETIMPORT                        R25 K4 [tostring]
    14132 CALL                             R25 1 1
    14133 LOADK                            R26 K44 [""]
    14134 CONCAT                           R22 R24 R26
    14135 SETTABLEKS                       R22 R21 K790 ["groupSettings"]
    14137 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14139 JUMPIFNOT                        R24 ; [+5]
    14140 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14142 GETTABLEKS                       R23 R24 K796 ["newGroupName"]
    14144 JUMPIF                           R23 ; [+1]
    14145 LOADK                            R23 K44 [""]
    14146 LOADK                            R24 K44 [""]
    14147 FASTCALL1                        TOSTRING R23 ; [+3]
    14148 MOVE                             R26 R23
    14149 GETIMPORT                        R25 K4 [tostring]
    14151 CALL                             R25 1 1
    14152 LOADK                            R26 K44 [""]
    14153 CONCAT                           R22 R24 R26
    14154 SETTABLEKS                       R22 R21 K796 ["newGroupName"]
    14156 CALL                             R19 2 1
    14157 SETTABLEKS                       R19 R18 K24 ["translation"]
    14159 GETTABLEKS                       R19 R2 K14 ["userId"]
    14161 SETTABLEKS                       R19 R18 K25 ["actorId"]
    14163 MOVE                             R19 R0
    14164 GETTABLEKS                       R20 R2 K14 ["userId"]
    14166 CALL                             R19 1 1
    14167 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14169 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14171 ORK                              R19 R20 K18 [0]
    14172 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14174 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14176 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14178 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14180 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14182 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14184 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14186 RETURN                           R18 1
    14187 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14189 JUMPIFNOTEQKN                    R18 K798 [140] ; [+74]
    14191 DUPTABLE                         R18 K800 [{["id"], ["eventType"] = "GroupDescriptionUpdated", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    14192 GETTABLEKS                       R19 R2 K19 ["id"]
    14194 SETTABLEKS                       R19 R18 K19 ["id"]
    14196 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14198 NEWCLOSURE                       R22 P6
    14199 CAPTURE                          VAL R20
    14200 CAPTURE                          VAL R3
    14201 FASTPCALL                        pcall 1 ; [+2]
    14202 GETIMPORT                        R21 K35 [pcall]
    14204 CALL                             R21 1 2
    14205 JUMPIFNOT                        R21 ; [+2]
    14206 MOVE                             R19 R22
    14207 JUMP                             ; [+1]
    14208 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14209 SETTABLEKS                       R19 R18 K23 ["date"]
    14211 MOVE                             R19 R12
    14212 LOADK                            R20 K801 ["Description.GroupDescriptionUpdated"]
    14213 DUPTABLE                         R21 K791 [{"groupSettings"}]
    14214 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14216 JUMPIFNOT                        R24 ; [+5]
    14217 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14219 GETTABLEKS                       R23 R24 K790 ["groupSettings"]
    14221 JUMPIF                           R23 ; [+1]
    14222 LOADK                            R23 K44 [""]
    14223 LOADK                            R24 K44 [""]
    14224 FASTCALL1                        TOSTRING R23 ; [+3]
    14225 MOVE                             R26 R23
    14226 GETIMPORT                        R25 K4 [tostring]
    14228 CALL                             R25 1 1
    14229 LOADK                            R26 K44 [""]
    14230 CONCAT                           R22 R24 R26
    14231 SETTABLEKS                       R22 R21 K790 ["groupSettings"]
    14233 CALL                             R19 2 1
    14234 SETTABLEKS                       R19 R18 K24 ["translation"]
    14236 GETTABLEKS                       R19 R2 K14 ["userId"]
    14238 SETTABLEKS                       R19 R18 K25 ["actorId"]
    14240 MOVE                             R19 R0
    14241 GETTABLEKS                       R20 R2 K14 ["userId"]
    14243 CALL                             R19 1 1
    14244 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14246 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14248 ORK                              R19 R20 K18 [0]
    14249 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14251 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14253 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14255 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14257 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14259 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14261 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14263 RETURN                           R18 1
    14264 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14266 JUMPIFNOTEQKN                    R18 K802 [141] ; [+74]
    14268 DUPTABLE                         R18 K804 [{["id"], ["eventType"] = "GroupSocialLinksUpdated", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    14269 GETTABLEKS                       R19 R2 K19 ["id"]
    14271 SETTABLEKS                       R19 R18 K19 ["id"]
    14273 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14275 NEWCLOSURE                       R22 P6
    14276 CAPTURE                          VAL R20
    14277 CAPTURE                          VAL R3
    14278 FASTPCALL                        pcall 1 ; [+2]
    14279 GETIMPORT                        R21 K35 [pcall]
    14281 CALL                             R21 1 2
    14282 JUMPIFNOT                        R21 ; [+2]
    14283 MOVE                             R19 R22
    14284 JUMP                             ; [+1]
    14285 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14286 SETTABLEKS                       R19 R18 K23 ["date"]
    14288 MOVE                             R19 R12
    14289 LOADK                            R20 K805 ["Description.GroupSettingsPluralUpdate"]
    14290 DUPTABLE                         R21 K791 [{"groupSettings"}]
    14291 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14293 JUMPIFNOT                        R24 ; [+5]
    14294 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14296 GETTABLEKS                       R23 R24 K790 ["groupSettings"]
    14298 JUMPIF                           R23 ; [+1]
    14299 LOADK                            R23 K44 [""]
    14300 LOADK                            R24 K44 [""]
    14301 FASTCALL1                        TOSTRING R23 ; [+3]
    14302 MOVE                             R26 R23
    14303 GETIMPORT                        R25 K4 [tostring]
    14305 CALL                             R25 1 1
    14306 LOADK                            R26 K44 [""]
    14307 CONCAT                           R22 R24 R26
    14308 SETTABLEKS                       R22 R21 K790 ["groupSettings"]
    14310 CALL                             R19 2 1
    14311 SETTABLEKS                       R19 R18 K24 ["translation"]
    14313 GETTABLEKS                       R19 R2 K14 ["userId"]
    14315 SETTABLEKS                       R19 R18 K25 ["actorId"]
    14317 MOVE                             R19 R0
    14318 GETTABLEKS                       R20 R2 K14 ["userId"]
    14320 CALL                             R19 1 1
    14321 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14323 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14325 ORK                              R19 R20 K18 [0]
    14326 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14328 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14330 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14332 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14334 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14336 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14338 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14340 RETURN                           R18 1
    14341 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14343 JUMPIFNOTEQKN                    R18 K806 [142] ; [+74]
    14345 DUPTABLE                         R18 K808 [{["id"], ["eventType"] = "GroupOwnerUpdated", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    14346 GETTABLEKS                       R19 R2 K19 ["id"]
    14348 SETTABLEKS                       R19 R18 K19 ["id"]
    14350 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14352 NEWCLOSURE                       R22 P6
    14353 CAPTURE                          VAL R20
    14354 CAPTURE                          VAL R3
    14355 FASTPCALL                        pcall 1 ; [+2]
    14356 GETIMPORT                        R21 K35 [pcall]
    14358 CALL                             R21 1 2
    14359 JUMPIFNOT                        R21 ; [+2]
    14360 MOVE                             R19 R22
    14361 JUMP                             ; [+1]
    14362 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14363 SETTABLEKS                       R19 R18 K23 ["date"]
    14365 MOVE                             R19 R12
    14366 LOADK                            R20 K809 ["Description.GroupOwnerUpdated"]
    14367 DUPTABLE                         R21 K396 [{"userName"}]
    14368 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14370 JUMPIFNOT                        R24 ; [+5]
    14371 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14373 GETTABLEKS                       R23 R24 K395 ["userName"]
    14375 JUMPIF                           R23 ; [+1]
    14376 LOADK                            R23 K44 [""]
    14377 LOADK                            R24 K44 [""]
    14378 FASTCALL1                        TOSTRING R23 ; [+3]
    14379 MOVE                             R26 R23
    14380 GETIMPORT                        R25 K4 [tostring]
    14382 CALL                             R25 1 1
    14383 LOADK                            R26 K44 [""]
    14384 CONCAT                           R22 R24 R26
    14385 SETTABLEKS                       R22 R21 K395 ["userName"]
    14387 CALL                             R19 2 1
    14388 SETTABLEKS                       R19 R18 K24 ["translation"]
    14390 GETTABLEKS                       R19 R2 K14 ["userId"]
    14392 SETTABLEKS                       R19 R18 K25 ["actorId"]
    14394 MOVE                             R19 R0
    14395 GETTABLEKS                       R20 R2 K14 ["userId"]
    14397 CALL                             R19 1 1
    14398 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14400 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14402 ORK                              R19 R20 K18 [0]
    14403 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14405 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14407 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14409 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14411 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14413 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14415 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14417 RETURN                           R18 1
    14418 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14420 JUMPIFNOTEQKN                    R18 K810 [143] ; [+74]
    14422 DUPTABLE                         R18 K812 [{["id"], ["eventType"] = "OneTimePayoutSent", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    14423 GETTABLEKS                       R19 R2 K19 ["id"]
    14425 SETTABLEKS                       R19 R18 K19 ["id"]
    14427 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14429 NEWCLOSURE                       R22 P6
    14430 CAPTURE                          VAL R20
    14431 CAPTURE                          VAL R3
    14432 FASTPCALL                        pcall 1 ; [+2]
    14433 GETIMPORT                        R21 K35 [pcall]
    14435 CALL                             R21 1 2
    14436 JUMPIFNOT                        R21 ; [+2]
    14437 MOVE                             R19 R22
    14438 JUMP                             ; [+1]
    14439 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14440 SETTABLEKS                       R19 R18 K23 ["date"]
    14442 MOVE                             R19 R12
    14443 LOADK                            R20 K813 ["Description.OneTimePayoutSent"]
    14444 DUPTABLE                         R21 K396 [{"userName"}]
    14445 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14447 JUMPIFNOT                        R24 ; [+5]
    14448 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14450 GETTABLEKS                       R23 R24 K395 ["userName"]
    14452 JUMPIF                           R23 ; [+1]
    14453 LOADK                            R23 K44 [""]
    14454 LOADK                            R24 K44 [""]
    14455 FASTCALL1                        TOSTRING R23 ; [+3]
    14456 MOVE                             R26 R23
    14457 GETIMPORT                        R25 K4 [tostring]
    14459 CALL                             R25 1 1
    14460 LOADK                            R26 K44 [""]
    14461 CONCAT                           R22 R24 R26
    14462 SETTABLEKS                       R22 R21 K395 ["userName"]
    14464 CALL                             R19 2 1
    14465 SETTABLEKS                       R19 R18 K24 ["translation"]
    14467 GETTABLEKS                       R19 R2 K14 ["userId"]
    14469 SETTABLEKS                       R19 R18 K25 ["actorId"]
    14471 MOVE                             R19 R0
    14472 GETTABLEKS                       R20 R2 K14 ["userId"]
    14474 CALL                             R19 1 1
    14475 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14477 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14479 ORK                              R19 R20 K18 [0]
    14480 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14482 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14484 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14486 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14488 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14490 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14492 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14494 RETURN                           R18 1
    14495 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14497 JUMPIFNOTEQKN                    R18 K814 [144] ; [+74]
    14499 DUPTABLE                         R18 K816 [{["id"], ["eventType"] = "PayoutsConfigured", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    14500 GETTABLEKS                       R19 R2 K19 ["id"]
    14502 SETTABLEKS                       R19 R18 K19 ["id"]
    14504 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14506 NEWCLOSURE                       R22 P6
    14507 CAPTURE                          VAL R20
    14508 CAPTURE                          VAL R3
    14509 FASTPCALL                        pcall 1 ; [+2]
    14510 GETIMPORT                        R21 K35 [pcall]
    14512 CALL                             R21 1 2
    14513 JUMPIFNOT                        R21 ; [+2]
    14514 MOVE                             R19 R22
    14515 JUMP                             ; [+1]
    14516 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14517 SETTABLEKS                       R19 R18 K23 ["date"]
    14519 MOVE                             R19 R12
    14520 LOADK                            R20 K817 ["Description.PayoutsConfigured"]
    14521 DUPTABLE                         R21 K403 [{"groupName"}]
    14522 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14524 JUMPIFNOT                        R24 ; [+5]
    14525 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14527 GETTABLEKS                       R23 R24 K402 ["groupName"]
    14529 JUMPIF                           R23 ; [+1]
    14530 LOADK                            R23 K44 [""]
    14531 LOADK                            R24 K44 [""]
    14532 FASTCALL1                        TOSTRING R23 ; [+3]
    14533 MOVE                             R26 R23
    14534 GETIMPORT                        R25 K4 [tostring]
    14536 CALL                             R25 1 1
    14537 LOADK                            R26 K44 [""]
    14538 CONCAT                           R22 R24 R26
    14539 SETTABLEKS                       R22 R21 K402 ["groupName"]
    14541 CALL                             R19 2 1
    14542 SETTABLEKS                       R19 R18 K24 ["translation"]
    14544 GETTABLEKS                       R19 R2 K14 ["userId"]
    14546 SETTABLEKS                       R19 R18 K25 ["actorId"]
    14548 MOVE                             R19 R0
    14549 GETTABLEKS                       R20 R2 K14 ["userId"]
    14551 CALL                             R19 1 1
    14552 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14554 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14556 ORK                              R19 R20 K18 [0]
    14557 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14559 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14561 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14563 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14565 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14567 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14569 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14571 RETURN                           R18 1
    14572 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14574 JUMPIFNOTEQKN                    R18 K818 [145] ; [+64]
    14576 DUPTABLE                         R18 K823 [{["id"], ["eventType"] = "DraftCommit", ["eventCategory"] = "Scripts", ["date"], ["translation"] = "", ["translationFunc"], ["actorId"], ["actorName"], ["iconType"] = "Script", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["linkErrorHeader"], ["linkErrorBody"]}]
    14577 GETTABLEKS                       R19 R2 K19 ["id"]
    14579 SETTABLEKS                       R19 R18 K19 ["id"]
    14581 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14583 NEWCLOSURE                       R22 P6
    14584 CAPTURE                          VAL R20
    14585 CAPTURE                          VAL R3
    14586 FASTPCALL                        pcall 1 ; [+2]
    14587 GETIMPORT                        R21 K35 [pcall]
    14589 CALL                             R21 1 2
    14590 JUMPIFNOT                        R21 ; [+2]
    14591 MOVE                             R19 R22
    14592 JUMP                             ; [+1]
    14593 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14594 SETTABLEKS                       R19 R18 K23 ["date"]
    14596 NEWCLOSURE                       R19 P8
    14597 CAPTURE                          VAL R16
    14598 CAPTURE                          VAL R2
    14599 SETTABLEKS                       R19 R18 K821 ["translationFunc"]
    14601 GETTABLEKS                       R19 R2 K14 ["userId"]
    14603 SETTABLEKS                       R19 R18 K25 ["actorId"]
    14605 MOVE                             R19 R0
    14606 GETTABLEKS                       R20 R2 K14 ["userId"]
    14608 CALL                             R19 1 1
    14609 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14611 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14613 ORK                              R19 R20 K18 [0]
    14614 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14616 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14618 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14620 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14622 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14624 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14626 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14628 MOVE                             R19 R12
    14629 LOADK                            R20 K824 ["LinkError.MissingScriptHeader"]
    14630 CALL                             R19 1 1
    14631 SETTABLEKS                       R19 R18 K717 ["linkErrorHeader"]
    14633 MOVE                             R19 R12
    14634 LOADK                            R20 K825 ["LinkError.MissingScriptBody"]
    14635 CALL                             R19 1 1
    14636 SETTABLEKS                       R19 R18 K718 ["linkErrorBody"]
    14638 RETURN                           R18 1
    14639 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14641 JUMPIFNOTEQKN                    R18 K826 [146] ; [+56]
    14643 DUPTABLE                         R18 K828 [{["id"], ["eventType"] = "ExperiencePermissionsUpdated", ["eventCategory"] = "Permissions", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    14644 GETTABLEKS                       R19 R2 K19 ["id"]
    14646 SETTABLEKS                       R19 R18 K19 ["id"]
    14648 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14650 NEWCLOSURE                       R22 P6
    14651 CAPTURE                          VAL R20
    14652 CAPTURE                          VAL R3
    14653 FASTPCALL                        pcall 1 ; [+2]
    14654 GETIMPORT                        R21 K35 [pcall]
    14656 CALL                             R21 1 2
    14657 JUMPIFNOT                        R21 ; [+2]
    14658 MOVE                             R19 R22
    14659 JUMP                             ; [+1]
    14660 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14661 SETTABLEKS                       R19 R18 K23 ["date"]
    14663 MOVE                             R19 R17
    14664 GETTABLEKS                       R20 R2 K42 ["metaData"]
    14666 LOADK                            R21 K829 ["Description.ExperiencePermissionsUpdated"]
    14667 LOADK                            R22 K830 ["Description.ExperiencePermissionsRevoked"]
    14668 CALL                             R19 3 1
    14669 SETTABLEKS                       R19 R18 K24 ["translation"]
    14671 GETTABLEKS                       R19 R2 K14 ["userId"]
    14673 SETTABLEKS                       R19 R18 K25 ["actorId"]
    14675 MOVE                             R19 R0
    14676 GETTABLEKS                       R20 R2 K14 ["userId"]
    14678 CALL                             R19 1 1
    14679 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14681 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14683 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14685 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14687 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14689 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14691 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14693 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14695 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14697 RETURN                           R18 1
    14698 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14700 JUMPIFNOTEQKN                    R18 K831 [147] ; [+73]
    14702 DUPTABLE                         R18 K834 [{["id"], ["eventType"] = "ExperienceCreated", ["eventCategory"] = "Content", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    14703 GETTABLEKS                       R19 R2 K19 ["id"]
    14705 SETTABLEKS                       R19 R18 K19 ["id"]
    14707 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14709 NEWCLOSURE                       R22 P6
    14710 CAPTURE                          VAL R20
    14711 CAPTURE                          VAL R3
    14712 FASTPCALL                        pcall 1 ; [+2]
    14713 GETIMPORT                        R21 K35 [pcall]
    14715 CALL                             R21 1 2
    14716 JUMPIFNOT                        R21 ; [+2]
    14717 MOVE                             R19 R22
    14718 JUMP                             ; [+1]
    14719 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14720 SETTABLEKS                       R19 R18 K23 ["date"]
    14722 MOVE                             R19 R12
    14723 LOADK                            R20 K835 ["Description.ExperienceCreated"]
    14724 DUPTABLE                         R21 K837 [{"experienceName"}]
    14725 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14727 JUMPIFNOT                        R24 ; [+5]
    14728 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14730 GETTABLEKS                       R23 R24 K836 ["experienceName"]
    14732 JUMPIF                           R23 ; [+1]
    14733 LOADK                            R23 K44 [""]
    14734 LOADK                            R24 K44 [""]
    14735 FASTCALL1                        TOSTRING R23 ; [+3]
    14736 MOVE                             R26 R23
    14737 GETIMPORT                        R25 K4 [tostring]
    14739 CALL                             R25 1 1
    14740 LOADK                            R26 K44 [""]
    14741 CONCAT                           R22 R24 R26
    14742 SETTABLEKS                       R22 R21 K836 ["experienceName"]
    14744 CALL                             R19 2 1
    14745 SETTABLEKS                       R19 R18 K24 ["translation"]
    14747 GETTABLEKS                       R19 R2 K14 ["userId"]
    14749 SETTABLEKS                       R19 R18 K25 ["actorId"]
    14751 MOVE                             R19 R0
    14752 GETTABLEKS                       R20 R2 K14 ["userId"]
    14754 CALL                             R19 1 1
    14755 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14757 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14759 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14761 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14763 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14765 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14767 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14769 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14771 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14773 RETURN                           R18 1
    14774 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14776 JUMPIFNOTEQKN                    R18 K838 [148] ; [+74]
    14778 DUPTABLE                         R18 K841 [{["id"], ["eventType"] = "AdCreated", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Robux", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    14779 GETTABLEKS                       R19 R2 K19 ["id"]
    14781 SETTABLEKS                       R19 R18 K19 ["id"]
    14783 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14785 NEWCLOSURE                       R22 P6
    14786 CAPTURE                          VAL R20
    14787 CAPTURE                          VAL R3
    14788 FASTPCALL                        pcall 1 ; [+2]
    14789 GETIMPORT                        R21 K35 [pcall]
    14791 CALL                             R21 1 2
    14792 JUMPIFNOT                        R21 ; [+2]
    14793 MOVE                             R19 R22
    14794 JUMP                             ; [+1]
    14795 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14796 SETTABLEKS                       R19 R18 K23 ["date"]
    14798 MOVE                             R19 R12
    14799 LOADK                            R20 K842 ["Description.AdCreated"]
    14800 DUPTABLE                         R21 K837 [{"experienceName"}]
    14801 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14803 JUMPIFNOT                        R24 ; [+5]
    14804 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14806 GETTABLEKS                       R23 R24 K836 ["experienceName"]
    14808 JUMPIF                           R23 ; [+1]
    14809 LOADK                            R23 K44 [""]
    14810 LOADK                            R24 K44 [""]
    14811 FASTCALL1                        TOSTRING R23 ; [+3]
    14812 MOVE                             R26 R23
    14813 GETIMPORT                        R25 K4 [tostring]
    14815 CALL                             R25 1 1
    14816 LOADK                            R26 K44 [""]
    14817 CONCAT                           R22 R24 R26
    14818 SETTABLEKS                       R22 R21 K836 ["experienceName"]
    14820 CALL                             R19 2 1
    14821 SETTABLEKS                       R19 R18 K24 ["translation"]
    14823 GETTABLEKS                       R19 R2 K14 ["userId"]
    14825 SETTABLEKS                       R19 R18 K25 ["actorId"]
    14827 MOVE                             R19 R0
    14828 GETTABLEKS                       R20 R2 K14 ["userId"]
    14830 CALL                             R19 1 1
    14831 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14833 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14835 ORK                              R19 R20 K18 [0]
    14836 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14838 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14840 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14842 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14844 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14846 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14848 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14850 RETURN                           R18 1
    14851 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14853 JUMPIFNOTEQKN                    R18 K843 [149] ; [+93]
    14855 DUPTABLE                         R18 K845 [{["id"], ["eventType"] = "PlaceModerated", ["eventCategory"] = "Content", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    14856 GETTABLEKS                       R19 R2 K19 ["id"]
    14858 SETTABLEKS                       R19 R18 K19 ["id"]
    14860 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14862 NEWCLOSURE                       R22 P6
    14863 CAPTURE                          VAL R20
    14864 CAPTURE                          VAL R3
    14865 FASTPCALL                        pcall 1 ; [+2]
    14866 GETIMPORT                        R21 K35 [pcall]
    14868 CALL                             R21 1 2
    14869 JUMPIFNOT                        R21 ; [+2]
    14870 MOVE                             R19 R22
    14871 JUMP                             ; [+1]
    14872 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14873 SETTABLEKS                       R19 R18 K23 ["date"]
    14875 MOVE                             R19 R12
    14876 LOADK                            R20 K846 ["Description.PlaceModerated"]
    14877 DUPTABLE                         R21 K847 [{"placeName", "experienceName"}]
    14878 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14880 JUMPIFNOT                        R24 ; [+5]
    14881 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14883 GETTABLEKS                       R23 R24 K586 ["placeName"]
    14885 JUMPIF                           R23 ; [+1]
    14886 LOADK                            R23 K44 [""]
    14887 LOADK                            R24 K44 [""]
    14888 FASTCALL1                        TOSTRING R23 ; [+3]
    14889 MOVE                             R26 R23
    14890 GETIMPORT                        R25 K4 [tostring]
    14892 CALL                             R25 1 1
    14893 LOADK                            R26 K44 [""]
    14894 CONCAT                           R22 R24 R26
    14895 SETTABLEKS                       R22 R21 K586 ["placeName"]
    14897 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14899 JUMPIFNOT                        R24 ; [+5]
    14900 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14902 GETTABLEKS                       R23 R24 K836 ["experienceName"]
    14904 JUMPIF                           R23 ; [+1]
    14905 LOADK                            R23 K44 [""]
    14906 LOADK                            R24 K44 [""]
    14907 FASTCALL1                        TOSTRING R23 ; [+3]
    14908 MOVE                             R26 R23
    14909 GETIMPORT                        R25 K4 [tostring]
    14911 CALL                             R25 1 1
    14912 LOADK                            R26 K44 [""]
    14913 CONCAT                           R22 R24 R26
    14914 SETTABLEKS                       R22 R21 K836 ["experienceName"]
    14916 CALL                             R19 2 1
    14917 SETTABLEKS                       R19 R18 K24 ["translation"]
    14919 GETTABLEKS                       R19 R2 K14 ["userId"]
    14921 SETTABLEKS                       R19 R18 K25 ["actorId"]
    14923 MOVE                             R19 R0
    14924 GETTABLEKS                       R20 R2 K14 ["userId"]
    14926 CALL                             R19 1 1
    14927 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14929 GETTABLEKS                       R20 R2 K6 ["placeId"]
    14931 ORK                              R19 R20 K18 [0]
    14932 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14934 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14936 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14938 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14940 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14942 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14944 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14946 RETURN                           R18 1
    14947 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14949 JUMPIFNOTEQKN                    R18 K848 [150] ; [+93]
    14951 DUPTABLE                         R18 K851 [{["id"], ["eventType"] = "AssetModerated", ["eventCategory"] = "Content", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Asset", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    14952 GETTABLEKS                       R19 R2 K19 ["id"]
    14954 SETTABLEKS                       R19 R18 K19 ["id"]
    14956 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14958 NEWCLOSURE                       R22 P6
    14959 CAPTURE                          VAL R20
    14960 CAPTURE                          VAL R3
    14961 FASTPCALL                        pcall 1 ; [+2]
    14962 GETIMPORT                        R21 K35 [pcall]
    14964 CALL                             R21 1 2
    14965 JUMPIFNOT                        R21 ; [+2]
    14966 MOVE                             R19 R22
    14967 JUMP                             ; [+1]
    14968 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14969 SETTABLEKS                       R19 R18 K23 ["date"]
    14971 MOVE                             R19 R12
    14972 LOADK                            R20 K852 ["Description.AssetModerated"]
    14973 DUPTABLE                         R21 K855 [{"assetName", "infractionType"}]
    14974 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14976 JUMPIFNOT                        R24 ; [+5]
    14977 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14979 GETTABLEKS                       R23 R24 K853 ["assetName"]
    14981 JUMPIF                           R23 ; [+1]
    14982 LOADK                            R23 K44 [""]
    14983 LOADK                            R24 K44 [""]
    14984 FASTCALL1                        TOSTRING R23 ; [+3]
    14985 MOVE                             R26 R23
    14986 GETIMPORT                        R25 K4 [tostring]
    14988 CALL                             R25 1 1
    14989 LOADK                            R26 K44 [""]
    14990 CONCAT                           R22 R24 R26
    14991 SETTABLEKS                       R22 R21 K853 ["assetName"]
    14993 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14995 JUMPIFNOT                        R24 ; [+5]
    14996 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14998 GETTABLEKS                       R23 R24 K854 ["infractionType"]
    15000 JUMPIF                           R23 ; [+1]
    15001 LOADK                            R23 K44 [""]
    15002 LOADK                            R24 K44 [""]
    15003 FASTCALL1                        TOSTRING R23 ; [+3]
    15004 MOVE                             R26 R23
    15005 GETIMPORT                        R25 K4 [tostring]
    15007 CALL                             R25 1 1
    15008 LOADK                            R26 K44 [""]
    15009 CONCAT                           R22 R24 R26
    15010 SETTABLEKS                       R22 R21 K854 ["infractionType"]
    15012 CALL                             R19 2 1
    15013 SETTABLEKS                       R19 R18 K24 ["translation"]
    15015 GETTABLEKS                       R19 R2 K14 ["userId"]
    15017 SETTABLEKS                       R19 R18 K25 ["actorId"]
    15019 MOVE                             R19 R0
    15020 GETTABLEKS                       R20 R2 K14 ["userId"]
    15022 CALL                             R19 1 1
    15023 SETTABLEKS                       R19 R18 K26 ["actorName"]
    15025 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    15027 ORK                              R19 R20 K18 [0]
    15028 SETTABLEKS                       R19 R18 K29 ["iconId"]
    15030 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15032 SETTABLEKS                       R19 R18 K2 ["universeId"]
    15034 GETTABLEKS                       R19 R2 K30 ["headerText"]
    15036 SETTABLEKS                       R19 R18 K30 ["headerText"]
    15038 GETTABLEKS                       R19 R2 K31 ["footerText"]
    15040 SETTABLEKS                       R19 R18 K31 ["footerText"]
    15042 RETURN                           R18 1
    15043 GETTABLEKS                       R18 R2 K17 ["eventType"]
    15045 JUMPIFNOTEQKN                    R18 K856 [151] ; [+92]
    15047 DUPTABLE                         R18 K858 [{["id"], ["eventType"] = "EscapeHatchSaveCopyToCloud", ["eventCategory"] = "Publish", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    15048 GETTABLEKS                       R19 R2 K19 ["id"]
    15050 SETTABLEKS                       R19 R18 K19 ["id"]
    15052 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    15054 NEWCLOSURE                       R22 P6
    15055 CAPTURE                          VAL R20
    15056 CAPTURE                          VAL R3
    15057 FASTPCALL                        pcall 1 ; [+2]
    15058 GETIMPORT                        R21 K35 [pcall]
    15060 CALL                             R21 1 2
    15061 JUMPIFNOT                        R21 ; [+2]
    15062 MOVE                             R19 R22
    15063 JUMP                             ; [+1]
    15064 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    15065 SETTABLEKS                       R19 R18 K23 ["date"]
    15067 MOVE                             R19 R12
    15068 LOADK                            R20 K859 ["Description.EscapeHatchSaveCopyToCloud"]
    15069 DUPTABLE                         R21 K860 [{"oldName", "newName"}]
    15070 GETTABLEKS                       R24 R2 K42 ["metaData"]
    15072 JUMPIFNOT                        R24 ; [+5]
    15073 GETTABLEKS                       R24 R2 K42 ["metaData"]
    15075 GETTABLEKS                       R23 R24 K140 ["OldName"]
    15077 JUMPIF                           R23 ; [+1]
    15078 LOADK                            R23 K44 [""]
    15079 LOADK                            R24 K44 [""]
    15080 FASTCALL1                        TOSTRING R23 ; [+3]
    15081 MOVE                             R26 R23
    15082 GETIMPORT                        R25 K4 [tostring]
    15084 CALL                             R25 1 1
    15085 LOADK                            R26 K44 [""]
    15086 CONCAT                           R22 R24 R26
    15087 SETTABLEKS                       R22 R21 K137 ["oldName"]
    15089 GETTABLEKS                       R24 R2 K42 ["metaData"]
    15091 JUMPIFNOT                        R24 ; [+5]
    15092 GETTABLEKS                       R24 R2 K42 ["metaData"]
    15094 GETTABLEKS                       R23 R24 K139 ["NewName"]
    15096 JUMPIF                           R23 ; [+1]
    15097 LOADK                            R23 K44 [""]
    15098 LOADK                            R24 K44 [""]
    15099 FASTCALL1                        TOSTRING R23 ; [+3]
    15100 MOVE                             R26 R23
    15101 GETIMPORT                        R25 K4 [tostring]
    15103 CALL                             R25 1 1
    15104 LOADK                            R26 K44 [""]
    15105 CONCAT                           R22 R24 R26
    15106 SETTABLEKS                       R22 R21 K136 ["newName"]
    15108 CALL                             R19 2 1
    15109 SETTABLEKS                       R19 R18 K24 ["translation"]
    15111 GETTABLEKS                       R19 R2 K14 ["userId"]
    15113 SETTABLEKS                       R19 R18 K25 ["actorId"]
    15115 MOVE                             R19 R0
    15116 GETTABLEKS                       R20 R2 K14 ["userId"]
    15118 CALL                             R19 1 1
    15119 SETTABLEKS                       R19 R18 K26 ["actorName"]
    15121 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15123 SETTABLEKS                       R19 R18 K29 ["iconId"]
    15125 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15127 SETTABLEKS                       R19 R18 K2 ["universeId"]
    15129 GETTABLEKS                       R19 R2 K30 ["headerText"]
    15131 SETTABLEKS                       R19 R18 K30 ["headerText"]
    15133 GETTABLEKS                       R19 R2 K31 ["footerText"]
    15135 SETTABLEKS                       R19 R18 K31 ["footerText"]
    15137 RETURN                           R18 1
    15138 DUPTABLE                         R18 K863 [{["id"], ["universeId"] = 0, ["eventType"] = "Unknown", ["date"] = "", ["translation"] = "unknown event", ["actorId"] = 0, ["actorName"] = "unknown", ["iconId"] = 0, ["iconType"] = "Unknown", ["eventCategory"] = ""}]
    15139 GETIMPORT                        R20 K866 [math.random]
    15141 CALL                             R20 0 -1
    15142 FASTCALL                         TOSTRING ; [+2]
    15143 GETIMPORT                        R19 K4 [tostring]
    15145 CALL                             R19 -1 1
    15146 SETTABLEKS                       R19 R18 K19 ["id"]
    15148 RETURN                           R18 1

PROTO_23:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        2 LOADK                            R1 K1 ["Unknown"]
        3 RETURN                           R1 1
        4 JUMPIFNOTEQKN                    R0 K2 [1] ; [+3]
        6 LOADK                            R1 K3 ["Experience"]
        7 RETURN                           R1 1
        8 JUMPIFNOTEQKN                    R0 K4 [2] ; [+3]
       10 LOADK                            R1 K3 ["Experience"]
       11 RETURN                           R1 1
       12 JUMPIFNOTEQKN                    R0 K5 [3] ; [+3]
       14 LOADK                            R1 K3 ["Experience"]
       15 RETURN                           R1 1
       16 JUMPIFNOTEQKN                    R0 K6 [4] ; [+3]
       18 LOADK                            R1 K3 ["Experience"]
       19 RETURN                           R1 1
       20 JUMPIFNOTEQKN                    R0 K7 [5] ; [+3]
       22 LOADK                            R1 K3 ["Experience"]
       23 RETURN                           R1 1
       24 JUMPIFNOTEQKN                    R0 K8 [6] ; [+3]
       26 LOADK                            R1 K3 ["Experience"]
       27 RETURN                           R1 1
       28 JUMPIFNOTEQKN                    R0 K9 [7] ; [+3]
       30 LOADK                            R1 K3 ["Experience"]
       31 RETURN                           R1 1
       32 JUMPIFNOTEQKN                    R0 K10 [8] ; [+3]
       34 LOADK                            R1 K3 ["Experience"]
       35 RETURN                           R1 1
       36 JUMPIFNOTEQKN                    R0 K11 [9] ; [+3]
       38 LOADK                            R1 K3 ["Experience"]
       39 RETURN                           R1 1
       40 JUMPIFNOTEQKN                    R0 K12 [10] ; [+3]
       42 LOADK                            R1 K3 ["Experience"]
       43 RETURN                           R1 1
       44 JUMPIFNOTEQKN                    R0 K13 [11] ; [+3]
       46 LOADK                            R1 K3 ["Experience"]
       47 RETURN                           R1 1
       48 JUMPIFNOTEQKN                    R0 K14 [12] ; [+3]
       50 LOADK                            R1 K3 ["Experience"]
       51 RETURN                           R1 1
       52 JUMPIFNOTEQKN                    R0 K15 [13] ; [+3]
       54 LOADK                            R1 K3 ["Experience"]
       55 RETURN                           R1 1
       56 JUMPIFNOTEQKN                    R0 K16 [14] ; [+3]
       58 LOADK                            R1 K3 ["Experience"]
       59 RETURN                           R1 1
       60 JUMPIFNOTEQKN                    R0 K17 [15] ; [+3]
       62 LOADK                            R1 K3 ["Experience"]
       63 RETURN                           R1 1
       64 JUMPIFNOTEQKN                    R0 K18 [16] ; [+3]
       66 LOADK                            R1 K3 ["Experience"]
       67 RETURN                           R1 1
       68 JUMPIFNOTEQKN                    R0 K19 [17] ; [+3]
       70 LOADK                            R1 K3 ["Experience"]
       71 RETURN                           R1 1
       72 JUMPIFNOTEQKN                    R0 K20 [18] ; [+3]
       74 LOADK                            R1 K3 ["Experience"]
       75 RETURN                           R1 1
       76 JUMPIFNOTEQKN                    R0 K21 [19] ; [+3]
       78 LOADK                            R1 K3 ["Experience"]
       79 RETURN                           R1 1
       80 JUMPIFNOTEQKN                    R0 K22 [20] ; [+3]
       82 LOADK                            R1 K3 ["Experience"]
       83 RETURN                           R1 1
       84 JUMPIFNOTEQKN                    R0 K23 [21] ; [+3]
       86 LOADK                            R1 K3 ["Experience"]
       87 RETURN                           R1 1
       88 JUMPIFNOTEQKN                    R0 K24 [22] ; [+3]
       90 LOADK                            R1 K3 ["Experience"]
       91 RETURN                           R1 1
       92 JUMPIFNOTEQKN                    R0 K25 [23] ; [+3]
       94 LOADK                            R1 K3 ["Experience"]
       95 RETURN                           R1 1
       96 JUMPIFNOTEQKN                    R0 K26 [24] ; [+3]
       98 LOADK                            R1 K3 ["Experience"]
       99 RETURN                           R1 1
      100 JUMPIFNOTEQKN                    R0 K27 [25] ; [+3]
      102 LOADK                            R1 K3 ["Experience"]
      103 RETURN                           R1 1
      104 JUMPIFNOTEQKN                    R0 K28 [26] ; [+3]
      106 LOADK                            R1 K3 ["Experience"]
      107 RETURN                           R1 1
      108 JUMPIFNOTEQKN                    R0 K29 [27] ; [+3]
      110 LOADK                            R1 K3 ["Experience"]
      111 RETURN                           R1 1
      112 JUMPIFNOTEQKN                    R0 K30 [28] ; [+3]
      114 LOADK                            R1 K3 ["Experience"]
      115 RETURN                           R1 1
      116 JUMPIFNOTEQKN                    R0 K31 [29] ; [+3]
      118 LOADK                            R1 K3 ["Experience"]
      119 RETURN                           R1 1
      120 JUMPIFNOTEQKN                    R0 K32 [30] ; [+3]
      122 LOADK                            R1 K3 ["Experience"]
      123 RETURN                           R1 1
      124 JUMPIFNOTEQKN                    R0 K33 [31] ; [+3]
      126 LOADK                            R1 K3 ["Experience"]
      127 RETURN                           R1 1
      128 JUMPIFNOTEQKN                    R0 K34 [32] ; [+3]
      130 LOADK                            R1 K3 ["Experience"]
      131 RETURN                           R1 1
      132 JUMPIFNOTEQKN                    R0 K35 [33] ; [+3]
      134 LOADK                            R1 K3 ["Experience"]
      135 RETURN                           R1 1
      136 JUMPIFNOTEQKN                    R0 K36 [34] ; [+3]
      138 LOADK                            R1 K1 ["Unknown"]
      139 RETURN                           R1 1
      140 JUMPIFNOTEQKN                    R0 K37 [35] ; [+3]
      142 LOADK                            R1 K1 ["Unknown"]
      143 RETURN                           R1 1
      144 JUMPIFNOTEQKN                    R0 K38 [36] ; [+3]
      146 LOADK                            R1 K1 ["Unknown"]
      147 RETURN                           R1 1
      148 JUMPIFNOTEQKN                    R0 K39 [37] ; [+3]
      150 LOADK                            R1 K1 ["Unknown"]
      151 RETURN                           R1 1
      152 JUMPIFNOTEQKN                    R0 K40 [38] ; [+3]
      154 LOADK                            R1 K1 ["Unknown"]
      155 RETURN                           R1 1
      156 JUMPIFNOTEQKN                    R0 K41 [39] ; [+3]
      158 LOADK                            R1 K1 ["Unknown"]
      159 RETURN                           R1 1
      160 JUMPIFNOTEQKN                    R0 K42 [40] ; [+3]
      162 LOADK                            R1 K1 ["Unknown"]
      163 RETURN                           R1 1
      164 JUMPIFNOTEQKN                    R0 K43 [41] ; [+3]
      166 LOADK                            R1 K1 ["Unknown"]
      167 RETURN                           R1 1
      168 JUMPIFNOTEQKN                    R0 K44 [42] ; [+3]
      170 LOADK                            R1 K1 ["Unknown"]
      171 RETURN                           R1 1
      172 JUMPIFNOTEQKN                    R0 K45 [43] ; [+3]
      174 LOADK                            R1 K1 ["Unknown"]
      175 RETURN                           R1 1
      176 JUMPIFNOTEQKN                    R0 K46 [44] ; [+3]
      178 LOADK                            R1 K1 ["Unknown"]
      179 RETURN                           R1 1
      180 JUMPIFNOTEQKN                    R0 K47 [45] ; [+3]
      182 LOADK                            R1 K1 ["Unknown"]
      183 RETURN                           R1 1
      184 JUMPIFNOTEQKN                    R0 K48 [46] ; [+3]
      186 LOADK                            R1 K1 ["Unknown"]
      187 RETURN                           R1 1
      188 JUMPIFNOTEQKN                    R0 K49 [47] ; [+3]
      190 LOADK                            R1 K1 ["Unknown"]
      191 RETURN                           R1 1
      192 JUMPIFNOTEQKN                    R0 K50 [48] ; [+3]
      194 LOADK                            R1 K1 ["Unknown"]
      195 RETURN                           R1 1
      196 JUMPIFNOTEQKN                    R0 K51 [49] ; [+3]
      198 LOADK                            R1 K1 ["Unknown"]
      199 RETURN                           R1 1
      200 JUMPIFNOTEQKN                    R0 K52 [50] ; [+3]
      202 LOADK                            R1 K1 ["Unknown"]
      203 RETURN                           R1 1
      204 JUMPIFNOTEQKN                    R0 K53 [51] ; [+3]
      206 LOADK                            R1 K1 ["Unknown"]
      207 RETURN                           R1 1
      208 JUMPIFNOTEQKN                    R0 K54 [52] ; [+3]
      210 LOADK                            R1 K1 ["Unknown"]
      211 RETURN                           R1 1
      212 JUMPIFNOTEQKN                    R0 K55 [53] ; [+3]
      214 LOADK                            R1 K1 ["Unknown"]
      215 RETURN                           R1 1
      216 JUMPIFNOTEQKN                    R0 K56 [54] ; [+3]
      218 LOADK                            R1 K1 ["Unknown"]
      219 RETURN                           R1 1
      220 JUMPIFNOTEQKN                    R0 K57 [55] ; [+3]
      222 LOADK                            R1 K1 ["Unknown"]
      223 RETURN                           R1 1
      224 JUMPIFNOTEQKN                    R0 K58 [56] ; [+3]
      226 LOADK                            R1 K1 ["Unknown"]
      227 RETURN                           R1 1
      228 JUMPIFNOTEQKN                    R0 K59 [57] ; [+3]
      230 LOADK                            R1 K1 ["Unknown"]
      231 RETURN                           R1 1
      232 JUMPIFNOTEQKN                    R0 K60 [58] ; [+3]
      234 LOADK                            R1 K1 ["Unknown"]
      235 RETURN                           R1 1
      236 JUMPIFNOTEQKN                    R0 K61 [59] ; [+3]
      238 LOADK                            R1 K1 ["Unknown"]
      239 RETURN                           R1 1
      240 JUMPIFNOTEQKN                    R0 K62 [60] ; [+3]
      242 LOADK                            R1 K1 ["Unknown"]
      243 RETURN                           R1 1
      244 JUMPIFNOTEQKN                    R0 K63 [61] ; [+3]
      246 LOADK                            R1 K1 ["Unknown"]
      247 RETURN                           R1 1
      248 JUMPIFNOTEQKN                    R0 K64 [62] ; [+3]
      250 LOADK                            R1 K1 ["Unknown"]
      251 RETURN                           R1 1
      252 JUMPIFNOTEQKN                    R0 K65 [63] ; [+3]
      254 LOADK                            R1 K1 ["Unknown"]
      255 RETURN                           R1 1
      256 JUMPIFNOTEQKN                    R0 K66 [64] ; [+3]
      258 LOADK                            R1 K1 ["Unknown"]
      259 RETURN                           R1 1
      260 JUMPIFNOTEQKN                    R0 K67 [65] ; [+3]
      262 LOADK                            R1 K1 ["Unknown"]
      263 RETURN                           R1 1
      264 JUMPIFNOTEQKN                    R0 K68 [66] ; [+3]
      266 LOADK                            R1 K69 ["Monetization"]
      267 RETURN                           R1 1
      268 JUMPIFNOTEQKN                    R0 K70 [67] ; [+3]
      270 LOADK                            R1 K69 ["Monetization"]
      271 RETURN                           R1 1
      272 JUMPIFNOTEQKN                    R0 K71 [68] ; [+3]
      274 LOADK                            R1 K69 ["Monetization"]
      275 RETURN                           R1 1
      276 JUMPIFNOTEQKN                    R0 K72 [69] ; [+3]
      278 LOADK                            R1 K69 ["Monetization"]
      279 RETURN                           R1 1
      280 JUMPIFNOTEQKN                    R0 K73 [70] ; [+3]
      282 LOADK                            R1 K69 ["Monetization"]
      283 RETURN                           R1 1
      284 JUMPIFNOTEQKN                    R0 K74 [71] ; [+3]
      286 LOADK                            R1 K69 ["Monetization"]
      287 RETURN                           R1 1
      288 JUMPIFNOTEQKN                    R0 K75 [72] ; [+3]
      290 LOADK                            R1 K69 ["Monetization"]
      291 RETURN                           R1 1
      292 JUMPIFNOTEQKN                    R0 K76 [73] ; [+3]
      294 LOADK                            R1 K69 ["Monetization"]
      295 RETURN                           R1 1
      296 JUMPIFNOTEQKN                    R0 K77 [74] ; [+3]
      298 LOADK                            R1 K69 ["Monetization"]
      299 RETURN                           R1 1
      300 JUMPIFNOTEQKN                    R0 K78 [75] ; [+3]
      302 LOADK                            R1 K69 ["Monetization"]
      303 RETURN                           R1 1
      304 JUMPIFNOTEQKN                    R0 K79 [76] ; [+3]
      306 LOADK                            R1 K69 ["Monetization"]
      307 RETURN                           R1 1
      308 JUMPIFNOTEQKN                    R0 K80 [77] ; [+3]
      310 LOADK                            R1 K69 ["Monetization"]
      311 RETURN                           R1 1
      312 JUMPIFNOTEQKN                    R0 K81 [78] ; [+3]
      314 LOADK                            R1 K69 ["Monetization"]
      315 RETURN                           R1 1
      316 JUMPIFNOTEQKN                    R0 K82 [79] ; [+3]
      318 LOADK                            R1 K69 ["Monetization"]
      319 RETURN                           R1 1
      320 JUMPIFNOTEQKN                    R0 K83 [80] ; [+3]
      322 LOADK                            R1 K69 ["Monetization"]
      323 RETURN                           R1 1
      324 JUMPIFNOTEQKN                    R0 K84 [81] ; [+3]
      326 LOADK                            R1 K69 ["Monetization"]
      327 RETURN                           R1 1
      328 JUMPIFNOTEQKN                    R0 K85 [82] ; [+3]
      330 LOADK                            R1 K69 ["Monetization"]
      331 RETURN                           R1 1
      332 JUMPIFNOTEQKN                    R0 K86 [83] ; [+3]
      334 LOADK                            R1 K69 ["Monetization"]
      335 RETURN                           R1 1
      336 JUMPIFNOTEQKN                    R0 K87 [84] ; [+3]
      338 LOADK                            R1 K69 ["Monetization"]
      339 RETURN                           R1 1
      340 JUMPIFNOTEQKN                    R0 K88 [85] ; [+3]
      342 LOADK                            R1 K69 ["Monetization"]
      343 RETURN                           R1 1
      344 JUMPIFNOTEQKN                    R0 K89 [86] ; [+3]
      346 LOADK                            R1 K69 ["Monetization"]
      347 RETURN                           R1 1
      348 JUMPIFNOTEQKN                    R0 K90 [87] ; [+3]
      350 LOADK                            R1 K69 ["Monetization"]
      351 RETURN                           R1 1
      352 JUMPIFNOTEQKN                    R0 K91 [88] ; [+3]
      354 LOADK                            R1 K92 ["Permissions"]
      355 RETURN                           R1 1
      356 JUMPIFNOTEQKN                    R0 K93 [89] ; [+3]
      358 LOADK                            R1 K92 ["Permissions"]
      359 RETURN                           R1 1
      360 JUMPIFNOTEQKN                    R0 K94 [90] ; [+3]
      362 LOADK                            R1 K92 ["Permissions"]
      363 RETURN                           R1 1
      364 JUMPIFNOTEQKN                    R0 K95 [91] ; [+3]
      366 LOADK                            R1 K92 ["Permissions"]
      367 RETURN                           R1 1
      368 JUMPIFNOTEQKN                    R0 K96 [92] ; [+3]
      370 LOADK                            R1 K92 ["Permissions"]
      371 RETURN                           R1 1
      372 JUMPIFNOTEQKN                    R0 K97 [93] ; [+3]
      374 LOADK                            R1 K92 ["Permissions"]
      375 RETURN                           R1 1
      376 JUMPIFNOTEQKN                    R0 K98 [94] ; [+3]
      378 LOADK                            R1 K92 ["Permissions"]
      379 RETURN                           R1 1
      380 JUMPIFNOTEQKN                    R0 K99 [95] ; [+3]
      382 LOADK                            R1 K100 ["Place"]
      383 RETURN                           R1 1
      384 JUMPIFNOTEQKN                    R0 K101 [96] ; [+3]
      386 LOADK                            R1 K100 ["Place"]
      387 RETURN                           R1 1
      388 JUMPIFNOTEQKN                    R0 K102 [97] ; [+3]
      390 LOADK                            R1 K100 ["Place"]
      391 RETURN                           R1 1
      392 JUMPIFNOTEQKN                    R0 K103 [98] ; [+3]
      394 LOADK                            R1 K100 ["Place"]
      395 RETURN                           R1 1
      396 JUMPIFNOTEQKN                    R0 K104 [99] ; [+3]
      398 LOADK                            R1 K100 ["Place"]
      399 RETURN                           R1 1
      400 JUMPIFNOTEQKN                    R0 K105 [100] ; [+3]
      402 LOADK                            R1 K100 ["Place"]
      403 RETURN                           R1 1
      404 JUMPIFNOTEQKN                    R0 K106 [101] ; [+3]
      406 LOADK                            R1 K100 ["Place"]
      407 RETURN                           R1 1
      408 JUMPIFNOTEQKN                    R0 K107 [102] ; [+3]
      410 LOADK                            R1 K100 ["Place"]
      411 RETURN                           R1 1
      412 JUMPIFNOTEQKN                    R0 K108 [103] ; [+3]
      414 LOADK                            R1 K100 ["Place"]
      415 RETURN                           R1 1
      416 JUMPIFNOTEQKN                    R0 K109 [104] ; [+3]
      418 LOADK                            R1 K100 ["Place"]
      419 RETURN                           R1 1
      420 JUMPIFNOTEQKN                    R0 K110 [105] ; [+3]
      422 LOADK                            R1 K100 ["Place"]
      423 RETURN                           R1 1
      424 JUMPIFNOTEQKN                    R0 K111 [106] ; [+3]
      426 LOADK                            R1 K100 ["Place"]
      427 RETURN                           R1 1
      428 JUMPIFNOTEQKN                    R0 K112 [107] ; [+3]
      430 LOADK                            R1 K100 ["Place"]
      431 RETURN                           R1 1
      432 JUMPIFNOTEQKN                    R0 K113 [108] ; [+3]
      434 LOADK                            R1 K100 ["Place"]
      435 RETURN                           R1 1
      436 JUMPIFNOTEQKN                    R0 K114 [109] ; [+3]
      438 LOADK                            R1 K100 ["Place"]
      439 RETURN                           R1 1
      440 JUMPIFNOTEQKN                    R0 K115 [110] ; [+3]
      442 LOADK                            R1 K100 ["Place"]
      443 RETURN                           R1 1
      444 JUMPIFNOTEQKN                    R0 K116 [111] ; [+3]
      446 LOADK                            R1 K100 ["Place"]
      447 RETURN                           R1 1
      448 JUMPIFNOTEQKN                    R0 K117 [112] ; [+3]
      450 LOADK                            R1 K100 ["Place"]
      451 RETURN                           R1 1
      452 JUMPIFNOTEQKN                    R0 K118 [113] ; [+3]
      454 LOADK                            R1 K100 ["Place"]
      455 RETURN                           R1 1
      456 JUMPIFNOTEQKN                    R0 K119 [114] ; [+3]
      458 LOADK                            R1 K100 ["Place"]
      459 RETURN                           R1 1
      460 JUMPIFNOTEQKN                    R0 K120 [115] ; [+3]
      462 LOADK                            R1 K100 ["Place"]
      463 RETURN                           R1 1
      464 JUMPIFNOTEQKN                    R0 K121 [116] ; [+3]
      466 LOADK                            R1 K1 ["Unknown"]
      467 RETURN                           R1 1
      468 JUMPIFNOTEQKN                    R0 K122 [117] ; [+3]
      470 LOADK                            R1 K100 ["Place"]
      471 RETURN                           R1 1
      472 JUMPIFNOTEQKN                    R0 K123 [118] ; [+3]
      474 LOADK                            R1 K124 ["Publish"]
      475 RETURN                           R1 1
      476 JUMPIFNOTEQKN                    R0 K125 [119] ; [+3]
      478 LOADK                            R1 K124 ["Publish"]
      479 RETURN                           R1 1
      480 JUMPIFNOTEQKN                    R0 K126 [120] ; [+3]
      482 LOADK                            R1 K124 ["Publish"]
      483 RETURN                           R1 1
      484 JUMPIFNOTEQKN                    R0 K127 [121] ; [+3]
      486 LOADK                            R1 K3 ["Experience"]
      487 RETURN                           R1 1
      488 JUMPIFNOTEQKN                    R0 K128 [122] ; [+3]
      490 LOADK                            R1 K69 ["Monetization"]
      491 RETURN                           R1 1
      492 JUMPIFNOTEQKN                    R0 K129 [123] ; [+3]
      494 LOADK                            R1 K3 ["Experience"]
      495 RETURN                           R1 1
      496 JUMPIFNOTEQKN                    R0 K130 [124] ; [+3]
      498 LOADK                            R1 K131 ["Package"]
      499 RETURN                           R1 1
      500 JUMPIFNOTEQKN                    R0 K132 [125] ; [+3]
      502 LOADK                            R1 K131 ["Package"]
      503 RETURN                           R1 1
      504 JUMPIFNOTEQKN                    R0 K133 [126] ; [+3]
      506 LOADK                            R1 K131 ["Package"]
      507 RETURN                           R1 1
      508 JUMPIFNOTEQKN                    R0 K134 [127] ; [+3]
      510 LOADK                            R1 K131 ["Package"]
      511 RETURN                           R1 1
      512 JUMPIFNOTEQKN                    R0 K135 [128] ; [+3]
      514 LOADK                            R1 K1 ["Unknown"]
      515 RETURN                           R1 1
      516 JUMPIFNOTEQKN                    R0 K136 [129] ; [+3]
      518 LOADK                            R1 K1 ["Unknown"]
      519 RETURN                           R1 1
      520 JUMPIFNOTEQKN                    R0 K137 [130] ; [+3]
      522 LOADK                            R1 K1 ["Unknown"]
      523 RETURN                           R1 1
      524 JUMPIFNOTEQKN                    R0 K138 [131] ; [+3]
      526 LOADK                            R1 K1 ["Unknown"]
      527 RETURN                           R1 1
      528 JUMPIFNOTEQKN                    R0 K139 [132] ; [+3]
      530 LOADK                            R1 K1 ["Unknown"]
      531 RETURN                           R1 1
      532 JUMPIFNOTEQKN                    R0 K140 [133] ; [+3]
      534 LOADK                            R1 K1 ["Unknown"]
      535 RETURN                           R1 1
      536 JUMPIFNOTEQKN                    R0 K141 [134] ; [+3]
      538 LOADK                            R1 K1 ["Unknown"]
      539 RETURN                           R1 1
      540 JUMPIFNOTEQKN                    R0 K142 [135] ; [+3]
      542 LOADK                            R1 K1 ["Unknown"]
      543 RETURN                           R1 1
      544 JUMPIFNOTEQKN                    R0 K143 [136] ; [+3]
      546 LOADK                            R1 K1 ["Unknown"]
      547 RETURN                           R1 1
      548 JUMPIFNOTEQKN                    R0 K144 [137] ; [+3]
      550 LOADK                            R1 K1 ["Unknown"]
      551 RETURN                           R1 1
      552 JUMPIFNOTEQKN                    R0 K145 [138] ; [+3]
      554 LOADK                            R1 K1 ["Unknown"]
      555 RETURN                           R1 1
      556 JUMPIFNOTEQKN                    R0 K146 [139] ; [+3]
      558 LOADK                            R1 K1 ["Unknown"]
      559 RETURN                           R1 1
      560 JUMPIFNOTEQKN                    R0 K147 [140] ; [+3]
      562 LOADK                            R1 K1 ["Unknown"]
      563 RETURN                           R1 1
      564 JUMPIFNOTEQKN                    R0 K148 [141] ; [+3]
      566 LOADK                            R1 K1 ["Unknown"]
      567 RETURN                           R1 1
      568 JUMPIFNOTEQKN                    R0 K149 [142] ; [+3]
      570 LOADK                            R1 K1 ["Unknown"]
      571 RETURN                           R1 1
      572 JUMPIFNOTEQKN                    R0 K150 [143] ; [+3]
      574 LOADK                            R1 K1 ["Unknown"]
      575 RETURN                           R1 1
      576 JUMPIFNOTEQKN                    R0 K151 [144] ; [+3]
      578 LOADK                            R1 K1 ["Unknown"]
      579 RETURN                           R1 1
      580 JUMPIFNOTEQKN                    R0 K152 [145] ; [+3]
      582 LOADK                            R1 K153 ["Scripts"]
      583 RETURN                           R1 1
      584 JUMPIFNOTEQKN                    R0 K154 [146] ; [+3]
      586 LOADK                            R1 K92 ["Permissions"]
      587 RETURN                           R1 1
      588 JUMPIFNOTEQKN                    R0 K155 [147] ; [+3]
      590 LOADK                            R1 K156 ["Content"]
      591 RETURN                           R1 1
      592 JUMPIFNOTEQKN                    R0 K157 [148] ; [+3]
      594 LOADK                            R1 K69 ["Monetization"]
      595 RETURN                           R1 1
      596 JUMPIFNOTEQKN                    R0 K158 [149] ; [+3]
      598 LOADK                            R1 K156 ["Content"]
      599 RETURN                           R1 1
      600 JUMPIFNOTEQKN                    R0 K159 [150] ; [+3]
      602 LOADK                            R1 K156 ["Content"]
      603 RETURN                           R1 1
      604 JUMPIFNOTEQKN                    R0 K160 [151] ; [+3]
      606 LOADK                            R1 K124 ["Publish"]
      607 RETURN                           R1 1
      608 LOADK                            R1 K1 ["Unknown"]
      609 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["SharedTypes"]
       17 CALL                             R1 1 1
       18 LOADK                            R2 K8 ["https://www.roblox.com/"]
       19 LOADK                            R3 K9 ["https://create.roblox.com/"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          REF R2
       22 CAPTURE                          REF R3
       23 FASTPCALL                        pcall 1 ; [+2]
       24 GETIMPORT                        R4 K11 [pcall]
       26 CALL                             R4 1 0
       27 DUPCLOSURE                       R4 K12 [PROTO_1]
       28 DUPCLOSURE                       R5 K13 [PROTO_2]
       29 DUPCLOSURE                       R6 K14 [PROTO_3]
       30 DUPCLOSURE                       R7 K15 [PROTO_4]
       31 DUPCLOSURE                       R8 K16 [PROTO_5]
       32 SETGLOBAL                        R8 K17 ["joinStrings"]
       34 DUPCLOSURE                       R8 K18 [PROTO_6]
       35 SETGLOBAL                        R8 K19 ["getLink"]
       37 DUPCLOSURE                       R8 K20 [PROTO_7]
       38 DUPCLOSURE                       R9 K21 [PROTO_9]
       39 DUPCLOSURE                       R10 K22 [PROTO_10]
       40 DUPCLOSURE                       R11 K23 [PROTO_11]
       41 DUPCLOSURE                       R12 K24 [PROTO_13]
       42 NEWTABLE                         R13 0 5
       44 LOADK                            R14 K25 ["Computer"]
       45 LOADK                            R15 K26 ["Phone"]
       46 LOADK                            R16 K27 ["Tablet"]
       47 LOADK                            R17 K28 ["Console"]
       48 LOADK                            R18 K29 ["VR"]
       49 SETLIST                          R13 R14 5 [1]
       51 NEWTABLE                         R14 8 0
       53 LOADK                            R15 K30 ["DeviceType.Desktop"]
       54 SETTABLEKS                       R15 R14 K25 ["Computer"]
       56 LOADK                            R15 K31 ["DeviceType.Mobile"]
       57 SETTABLEKS                       R15 R14 K26 ["Phone"]
       59 LOADK                            R15 K32 ["DeviceType.Tablet"]
       60 SETTABLEKS                       R15 R14 K27 ["Tablet"]
       62 LOADK                            R15 K33 ["DeviceType.Console"]
       63 SETTABLEKS                       R15 R14 K28 ["Console"]
       65 LOADK                            R15 K34 ["DeviceType.VR"]
       66 SETTABLEKS                       R15 R14 K29 ["VR"]
       68 NEWCLOSURE                       R15 P12
       69 CAPTURE                          REF R3
       70 CAPTURE                          REF R2
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R13
       73 CAPTURE                          VAL R14
       74 DUPCLOSURE                       R16 K35 [PROTO_23]
       75 DUPTABLE                         R17 K38 [{"translateEvent", "eventTypeToCategory"}]
       76 SETTABLEKS                       R15 R17 K36 ["translateEvent"]
       78 SETTABLEKS                       R16 R17 K37 ["eventTypeToCategory"]
       80 CLOSEUPVALS                      R2
       81 RETURN                           R17 1
