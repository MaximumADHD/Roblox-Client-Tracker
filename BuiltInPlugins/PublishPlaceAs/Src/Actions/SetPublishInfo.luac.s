PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assertNullableType"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["table"]
        5 LOADK                            R4 K2 ["SetPublishInfo arg"]
        6 CALL                             R1 3 0
        7 MOVE                             R1 R0
        8 JUMPIF                           R1 ; [+2]
        9 NEWTABLE                         R1 0 0
       11 GETTABLEKS                       R2 R1 K3 ["id"]
       13 GETTABLEKS                       R3 R1 K4 ["name"]
       15 GETTABLEKS                       R4 R1 K5 ["parentGameId"]
       17 GETTABLEKS                       R5 R1 K6 ["parentGameName"]
       19 GETTABLEKS                       R6 R1 K7 ["settings"]
       21 GETTABLEKS                       R7 R1 K8 ["failed"]
       23 GETTABLEKS                       R8 R1 K9 ["message"]
       25 GETUPVAL                         R10 0
       26 GETTABLEKS                       R9 R10 K10 ["assertType"]
       28 MOVE                             R10 R2
       29 LOADK                            R11 K11 ["number"]
       30 LOADK                            R12 K12 ["SetPublishInfo.id"]
       31 CALL                             R9 3 0
       32 MOVE                             R10 R7
       33 JUMPIF                           R10 ; [+8]
       34 GETIMPORT                        R12 K14 [game]
       36 GETTABLEKS                       R11 R12 K15 ["GameId"]
       38 JUMPIFNOTEQKN                    R11 K16 [0] ; [+2]
       40 LOADB                            R10 0 +1
       41 LOADB                            R10 1
       42 FASTCALL2K                       ASSERT R10 K17 ; [+4]
       44 LOADK                            R11 K17 ["Game ID should not be 0 if studio did not fail to publish a new game"]
       45 GETIMPORT                        R9 K19 [assert]
       47 CALL                             R9 2 0
       48 GETUPVAL                         R10 0
       49 GETTABLEKS                       R9 R10 K10 ["assertType"]
       51 MOVE                             R10 R3
       52 LOADK                            R11 K20 ["string"]
       53 LOADK                            R12 K21 ["SetPublishInfo.name"]
       54 CALL                             R9 3 0
       55 GETUPVAL                         R10 0
       56 GETTABLEKS                       R9 R10 K10 ["assertType"]
       58 MOVE                             R10 R5
       59 LOADK                            R11 K20 ["string"]
       60 LOADK                            R12 K22 ["SetPublishInfo.parentGameName"]
       61 CALL                             R9 3 0
       62 GETUPVAL                         R10 0
       63 GETTABLEKS                       R9 R10 K0 ["assertNullableType"]
       65 MOVE                             R10 R4
       66 LOADK                            R11 K11 ["number"]
       67 LOADK                            R12 K23 ["SetPublishInfo.parentGameId"]
       68 CALL                             R9 3 0
       69 GETUPVAL                         R9 1
       70 CALL                             R9 0 1
       71 JUMPIFNOT                        R9 ; [+8]
       72 GETUPVAL                         R10 0
       73 GETTABLEKS                       R9 R10 K0 ["assertNullableType"]
       75 MOVE                             R10 R6
       76 LOADK                            R11 K1 ["table"]
       77 LOADK                            R12 K24 ["SetPublishInfo.settings { name : String, description : String, genre : String, playableDevices : table, OptInLocations : table }"]
       78 CALL                             R9 3 0
       79 JUMP                             ; [+7]
       80 GETUPVAL                         R10 0
       81 GETTABLEKS                       R9 R10 K0 ["assertNullableType"]
       83 MOVE                             R10 R6
       84 LOADK                            R11 K1 ["table"]
       85 LOADK                            R12 K25 ["SetPublishInfo.settings { name : String, description : String, genre : String, playableDevices : table }"]
       86 CALL                             R9 3 0
       87 JUMPIFEQKNIL                     R6 ; [+59]
       89 GETUPVAL                         R10 0
       90 GETTABLEKS                       R9 R10 K10 ["assertType"]
       92 GETTABLEKS                       R10 R6 K4 ["name"]
       94 LOADK                            R11 K20 ["string"]
       95 LOADK                            R12 K26 ["settings.name"]
       96 CALL                             R9 3 0
       97 GETUPVAL                         R10 0
       98 GETTABLEKS                       R9 R10 K10 ["assertType"]
      100 GETTABLEKS                       R10 R6 K27 ["description"]
      102 LOADK                            R11 K20 ["string"]
      103 LOADK                            R12 K28 ["settings.description"]
      104 CALL                             R9 3 0
      105 GETUPVAL                         R10 0
      106 GETTABLEKS                       R9 R10 K10 ["assertType"]
      108 GETTABLEKS                       R10 R6 K29 ["genre"]
      110 LOADK                            R11 K20 ["string"]
      111 LOADK                            R12 K30 ["settings.genre"]
      112 CALL                             R9 3 0
      113 GETUPVAL                         R10 0
      114 GETTABLEKS                       R9 R10 K10 ["assertType"]
      116 GETTABLEKS                       R10 R6 K31 ["playableDevices"]
      118 LOADK                            R11 K1 ["table"]
      119 LOADK                            R12 K32 ["settings.playableDevices"]
      120 CALL                             R9 3 0
      121 GETUPVAL                         R9 1
      122 CALL                             R9 0 1
      123 JUMPIFNOT                        R9 ; [+8]
      124 GETUPVAL                         R10 0
      125 GETTABLEKS                       R9 R10 K10 ["assertType"]
      127 GETTABLEKS                       R10 R6 K33 ["OptInLocations"]
      129 LOADK                            R11 K1 ["table"]
      130 LOADK                            R12 K34 ["settings.OptInLocations"]
      131 CALL                             R9 3 0
      132 GETIMPORT                        R11 K36 [next]
      134 GETTABLEKS                       R12 R6 K31 ["playableDevices"]
      136 CALL                             R11 1 1
      137 JUMPIFNOTEQKNIL                  R11 ; [+2]
      139 LOADB                            R10 0 +1
      140 LOADB                            R10 1
      141 FASTCALL2K                       ASSERT R10 K37 ; [+4]
      143 LOADK                            R11 K37 ["Empty platform table"]
      144 GETIMPORT                        R9 K19 [assert]
      146 CALL                             R9 2 0
      147 DUPTABLE                         R9 K39 [{"publishInfo"}]
      148 DUPTABLE                         R10 K40 [{"id", "name", "parentGameId", "parentGameName", "settings", "message"}]
      149 SETTABLEKS                       R2 R10 K3 ["id"]
      151 SETTABLEKS                       R3 R10 K4 ["name"]
      153 SETTABLEKS                       R4 R10 K5 ["parentGameId"]
      155 SETTABLEKS                       R5 R10 K6 ["parentGameName"]
      157 SETTABLEKS                       R6 R10 K7 ["settings"]
      159 SETTABLEKS                       R8 R10 K9 ["message"]
      161 SETTABLEKS                       R10 R9 K38 ["publishInfo"]
      163 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Util"]
       15 GETTABLEKS                       R2 R3 K7 ["AssertType"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETIMPORT                        R5 K1 [script]
       22 GETTABLEKS                       R4 R5 K2 ["Parent"]
       24 GETTABLEKS                       R3 R4 K8 ["Action"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R7 R0 K5 ["Src"]
       31 GETTABLEKS                       R6 R7 K6 ["Util"]
       33 GETTABLEKS                       R5 R6 K9 ["PublishPlaceAsUtilities"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R3 R4 K10 ["shouldShowDevPublishLocations"]
       38 MOVE                             R4 R2
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R5 R6 K11 ["Name"]
       43 DUPCLOSURE                       R6 K12 [PROTO_0]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R3
       46 CALL                             R4 2 -1
       47 RETURN                           R4 -1
