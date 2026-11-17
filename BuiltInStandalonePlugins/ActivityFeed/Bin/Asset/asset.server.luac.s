PROTO_0:
        0 GETIMPORT                        R0 K1 [plugin]
        2 LOADK                            R2 K2 ["placeid"]
        3 GETIMPORT                        R3 K4 [game]
        5 GETTABLEKS                       R3 R3 K5 ["PlaceId"]
        7 NAMECALL                         R0 R0 K6 ["SetItem"]
        9 CALL                             R0 3 0
       10 GETIMPORT                        R0 K1 [plugin]
       12 LOADK                            R2 K7 ["idsupdated"]
       13 NAMECALL                         R0 R0 K8 ["Invoke"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [plugin]
        2 LOADK                            R2 K2 ["universeid"]
        3 GETIMPORT                        R3 K4 [game]
        5 GETTABLEKS                       R3 R3 K5 ["GameId"]
        7 NAMECALL                         R0 R0 K6 ["SetItem"]
        9 CALL                             R0 3 0
       10 GETIMPORT                        R0 K1 [plugin]
       12 LOADK                            R2 K7 ["idsupdated"]
       13 NAMECALL                         R0 R0 K8 ["Invoke"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioPublishService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 LOADB                            R3 0
        7 LOADB                            R4 0
        8 GETIMPORT                        R5 K7 [Enum.StudioCloseMode.None]
       10 NAMECALL                         R1 R0 K8 ["ShowSaveOrPublishPlaceToRoblox"]
       12 CALL                             R1 4 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [plugin]
        2 LOADK                            R2 K2 ["ActivityFeed.ShowErrorMessage"]
        3 GETUPVAL                         R3 0
        4 GETUPVAL                         R4 1
        5 NAMECALL                         R0 R0 K3 ["Invoke"]
        7 CALL                             R0 4 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CALL                             R3 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K2 ["Name"]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K3 ["createElement"]
       10 GETUPVAL                         R1 2
       11 DUPTABLE                         R2 K5 [{"Plugin"}]
       12 GETIMPORT                        R3 K1 [plugin]
       14 SETTABLEKS                       R3 R2 K4 ["Plugin"]
       16 CALL                             R0 2 1
       17 GETUPVAL                         R1 4
       18 GETTABLEKS                       R1 R1 K6 ["createRoot"]
       20 GETUPVAL                         R2 5
       21 CALL                             R1 1 1
       22 SETUPVAL                         R1 3
       23 GETUPVAL                         R1 3
       24 JUMPIFNOT                        R1 ; [+5]
       25 GETUPVAL                         R1 3
       26 MOVE                             R3 R0
       27 NAMECALL                         R1 R1 K7 ["render"]
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["unmount"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Common"]
       11 GETTABLEKS                       R1 R1 K6 ["defineLuaFlags"]
       13 CALL                             R0 1 0
       14 GETIMPORT                        R0 K3 [script]
       16 GETTABLEKS                       R0 R0 K4 ["Parent"]
       18 GETTABLEKS                       R0 R0 K4 ["Parent"]
       20 GETTABLEKS                       R0 R0 K4 ["Parent"]
       22 GETIMPORT                        R1 K1 [require]
       24 GETTABLEKS                       R2 R0 K7 ["Src"]
       26 GETTABLEKS                       R2 R2 K8 ["Util"]
       28 GETTABLEKS                       R2 R2 K9 ["LinkerFunction"]
       30 GETTABLEKS                       R2 R2 K9 ["LinkerFunction"]
       32 CALL                             R1 1 1
       33 GETIMPORT                        R2 K11 [game]
       35 LOADK                            R4 K12 ["RunService"]
       36 NAMECALL                         R2 R2 K13 ["GetService"]
       38 CALL                             R2 2 1
       39 NAMECALL                         R2 R2 K14 ["IsEdit"]
       41 CALL                             R2 1 1
       42 JUMPIFNOT                        R2 ; [+63]
       43 GETIMPORT                        R2 K11 [game]
       45 GETTABLEKS                       R2 R2 K15 ["PlaceId"]
       47 GETIMPORT                        R3 K11 [game]
       49 GETTABLEKS                       R3 R3 K16 ["GameId"]
       51 GETIMPORT                        R4 K18 [plugin]
       53 LOADK                            R6 K19 ["placeid"]
       54 MOVE                             R7 R2
       55 NAMECALL                         R4 R4 K20 ["SetItem"]
       57 CALL                             R4 3 0
       58 GETIMPORT                        R4 K18 [plugin]
       60 LOADK                            R6 K21 ["universeid"]
       61 MOVE                             R7 R3
       62 NAMECALL                         R4 R4 K20 ["SetItem"]
       64 CALL                             R4 3 0
       65 GETIMPORT                        R4 K18 [plugin]
       67 LOADK                            R6 K22 ["idsupdated"]
       68 NAMECALL                         R4 R4 K23 ["Invoke"]
       70 CALL                             R4 2 0
       71 GETIMPORT                        R4 K11 [game]
       73 LOADK                            R6 K15 ["PlaceId"]
       74 NAMECALL                         R4 R4 K24 ["GetPropertyChangedSignal"]
       76 CALL                             R4 2 1
       77 DUPCLOSURE                       R6 K25 [PROTO_0]
       78 NAMECALL                         R4 R4 K26 ["Connect"]
       80 CALL                             R4 2 0
       81 GETIMPORT                        R4 K11 [game]
       83 LOADK                            R6 K16 ["GameId"]
       84 NAMECALL                         R4 R4 K24 ["GetPropertyChangedSignal"]
       86 CALL                             R4 2 1
       87 DUPCLOSURE                       R6 K27 [PROTO_1]
       88 NAMECALL                         R4 R4 K26 ["Connect"]
       90 CALL                             R4 2 0
       91 GETIMPORT                        R4 K18 [plugin]
       93 LOADK                            R6 K28 ["publishgame"]
       94 DUPCLOSURE                       R7 K29 [PROTO_2]
       95 NAMECALL                         R4 R4 K30 ["OnInvoke"]
       97 CALL                             R4 3 0
       98 GETIMPORT                        R4 K18 [plugin]
      100 LOADK                            R6 K31 ["ActivityFeed.UniversalLinker"]
      101 DUPCLOSURE                       R7 K32 [PROTO_4]
      102 CAPTURE                          VAL R1
      103 NAMECALL                         R4 R4 K30 ["OnInvoke"]
      105 CALL                             R4 3 0
      106 GETIMPORT                        R2 K3 [script]
      108 GETTABLEKS                       R2 R2 K4 ["Parent"]
      110 GETTABLEKS                       R2 R2 K4 ["Parent"]
      112 GETTABLEKS                       R2 R2 K5 ["Common"]
      114 GETIMPORT                        R3 K1 [require]
      116 GETTABLEKS                       R4 R2 K33 ["getUseAssetForDebugging"]
      118 CALL                             R3 1 1
      119 JUMPIF                           R3 ; [+31]
      120 GETIMPORT                        R3 K18 [plugin]
      122 JUMPIF                           R3 ; [+1]
      123 RETURN                           R0 0
      124 GETIMPORT                        R3 K3 [script]
      126 GETTABLEKS                       R3 R3 K4 ["Parent"]
      128 GETTABLEKS                       R3 R3 K4 ["Parent"]
      130 GETTABLEKS                       R3 R3 K4 ["Parent"]
      132 GETIMPORT                        R4 K1 [require]
      134 GETTABLEKS                       R5 R3 K34 ["Packages"]
      136 GETTABLEKS                       R5 R5 K35 ["TestLoader"]
      138 CALL                             R4 1 1
      139 GETTABLEKS                       R5 R4 K36 ["launch"]
      141 LOADK                            R6 K37 ["ActivityFeed"]
      142 GETTABLEKS                       R7 R3 K7 ["Src"]
      144 CALL                             R5 2 0
      145 GETTABLEKS                       R5 R4 K38 ["isCli"]
      147 CALL                             R5 0 1
      148 JUMPIFNOT                        R5 ; [+84]
      149 RETURN                           R0 0
      150 RETURN                           R0 0
      151 GETIMPORT                        R3 K18 [plugin]
      153 JUMPIF                           R3 ; [+1]
      154 RETURN                           R0 0
      155 GETIMPORT                        R3 K3 [script]
      157 GETTABLEKS                       R3 R3 K4 ["Parent"]
      159 GETTABLEKS                       R3 R3 K4 ["Parent"]
      161 GETTABLEKS                       R3 R3 K4 ["Parent"]
      163 GETIMPORT                        R4 K1 [require]
      165 GETTABLEKS                       R5 R2 K39 ["commonInit"]
      167 CALL                             R4 1 1
      168 MOVE                             R5 R4
      169 CALL                             R5 0 0
      170 GETIMPORT                        R5 K1 [require]
      172 GETTABLEKS                       R6 R3 K34 ["Packages"]
      174 GETTABLEKS                       R6 R6 K35 ["TestLoader"]
      176 CALL                             R5 1 1
      177 GETTABLEKS                       R6 R5 K36 ["launch"]
      179 LOADK                            R7 K37 ["ActivityFeed"]
      180 GETTABLEKS                       R8 R3 K7 ["Src"]
      182 CALL                             R6 2 0
      183 GETTABLEKS                       R6 R5 K38 ["isCli"]
      185 CALL                             R6 0 1
      186 JUMPIFNOT                        R6 ; [+1]
      187 RETURN                           R0 0
      188 GETIMPORT                        R6 K42 [Instance.new]
      190 LOADK                            R7 K43 ["Frame"]
      191 CALL                             R6 1 1
      192 GETIMPORT                        R7 K1 [require]
      194 GETTABLEKS                       R8 R3 K34 ["Packages"]
      196 GETTABLEKS                       R8 R8 K44 ["React"]
      198 CALL                             R7 1 1
      199 GETIMPORT                        R8 K1 [require]
      201 GETTABLEKS                       R9 R3 K34 ["Packages"]
      203 GETTABLEKS                       R9 R9 K45 ["ReactRoblox"]
      205 CALL                             R8 1 1
      206 GETIMPORT                        R9 K1 [require]
      208 GETTABLEKS                       R10 R3 K7 ["Src"]
      210 GETTABLEKS                       R10 R10 K46 ["MainPlugin"]
      212 CALL                             R9 1 1
      213 LOADNIL                          R10
      214 NEWCLOSURE                       R11 P4
      215 CAPTURE                          VAL R3
      216 CAPTURE                          VAL R7
      217 CAPTURE                          VAL R9
      218 CAPTURE                          REF R10
      219 CAPTURE                          VAL R8
      220 CAPTURE                          VAL R6
      221 GETIMPORT                        R12 K18 [plugin]
      223 GETTABLEKS                       R12 R12 K47 ["Unloading"]
      225 NEWCLOSURE                       R14 P5
      226 CAPTURE                          REF R10
      227 NAMECALL                         R12 R12 K26 ["Connect"]
      229 CALL                             R12 2 0
      230 MOVE                             R12 R11
      231 CALL                             R12 0 0
      232 CLOSEUPVALS                      R10
      233 RETURN                           R0 0
