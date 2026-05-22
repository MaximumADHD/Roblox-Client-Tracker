PROTO_0:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 MOVE                             R2 R1
        6 JUMPIF                           R2 ; [+2]
        7 NEWTABLE                         R2 0 0
        9 MOVE                             R1 R2
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["isEmpty"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["isEmpty"]
       18 MOVE                             R4 R1
       19 CALL                             R3 1 1
       20 JUMPIFEQ                         R2 R3 ; [+3]
       22 LOADB                            R2 0
       23 RETURN                           R2 1
       24 GETIMPORT                        R2 K2 [pairs]
       26 MOVE                             R3 R0
       27 CALL                             R2 1 3
       28 FORGPREP_NEXT                    R2
       29 GETTABLE                         R7 R1 R5
       30 JUMPIFEQ                         R7 R6 ; [+3]
       32 LOADB                            R7 0
       33 RETURN                           R7 1
       34 FORGLOOP                         R2 2 ; [-6]
       36 GETIMPORT                        R2 K2 [pairs]
       38 MOVE                             R3 R1
       39 CALL                             R2 1 3
       40 FORGPREP_NEXT                    R2
       41 GETTABLE                         R7 R0 R5
       42 JUMPIFEQ                         R7 R6 ; [+3]
       44 LOADB                            R7 0
       45 RETURN                           R7 1
       46 FORGLOOP                         R2 2 ; [-6]
       48 LOADB                            R2 1
       49 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["value"]
        2 GETTABLEKS                       R4 R0 K1 ["current"]
        4 GETTABLEKS                       R5 R1 K2 ["setting"]
        6 GETTABLE                         R3 R4 R5
        7 JUMPIFNOTEQ                      R2 R3 ; [+4]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K3 ["None"]
       12 FASTCALL1                        TYPE R2 ; [+3]
       13 MOVE                             R4 R2
       14 GETIMPORT                        R3 K5 [type]
       16 CALL                             R3 1 1
       17 JUMPIFNOTEQKS                    R3 K6 ["table"] ; [+13]
       19 GETUPVAL                         R3 1
       20 MOVE                             R4 R2
       21 GETTABLEKS                       R6 R0 K1 ["current"]
       23 GETTABLEKS                       R7 R1 K2 ["setting"]
       25 GETTABLE                         R5 R6 R7
       26 CALL                             R3 2 1
       27 JUMPIFNOT                        R3 ; [+3]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R2 R3 K3 ["None"]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K7 ["Dictionary"]
       34 GETTABLEKS                       R3 R3 K8 ["join"]
       36 MOVE                             R4 R0
       37 DUPTABLE                         R5 K11 [{"changed", "errors"}]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K7 ["Dictionary"]
       41 GETTABLEKS                       R6 R6 K8 ["join"]
       43 GETTABLEKS                       R7 R0 K9 ["changed"]
       45 NEWTABLE                         R8 1 0
       47 GETTABLEKS                       R9 R1 K2 ["setting"]
       49 SETTABLE                         R2 R8 R9
       50 CALL                             R6 2 1
       51 SETTABLEKS                       R6 R5 K9 ["changed"]
       53 GETUPVAL                         R6 0
       54 GETTABLEKS                       R6 R6 K7 ["Dictionary"]
       56 GETTABLEKS                       R6 R6 K8 ["join"]
       58 GETTABLEKS                       R7 R0 K10 ["errors"]
       60 NEWTABLE                         R8 1 0
       62 GETTABLEKS                       R9 R1 K2 ["setting"]
       64 GETUPVAL                         R10 0
       65 GETTABLEKS                       R10 R10 K3 ["None"]
       67 SETTABLE                         R10 R8 R9
       68 CALL                             R6 2 1
       69 SETTABLEKS                       R6 R5 K10 ["errors"]
       71 CALL                             R3 2 -1
       72 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"errors"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["errors"]
       14 GETTABLEKS                       R7 R1 K2 ["errors"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["errors"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K5 [{"current", "changed", "errors"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["current"]
       14 GETTABLEKS                       R7 R1 K2 ["current"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["current"]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       22 GETTABLEKS                       R5 R5 K1 ["join"]
       24 GETTABLEKS                       R6 R0 K3 ["changed"]
       26 GETTABLEKS                       R7 R1 K3 ["changed"]
       28 CALL                             R5 2 1
       29 SETTABLEKS                       R5 R4 K3 ["changed"]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       34 GETTABLEKS                       R5 R5 K1 ["join"]
       36 GETTABLEKS                       R6 R0 K4 ["errors"]
       38 GETTABLEKS                       R7 R1 K4 ["errors"]
       40 CALL                             R5 2 1
       41 SETTABLEKS                       R5 R4 K4 ["errors"]
       43 CALL                             R2 2 -1
       44 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Resources"]
       15 GETTABLEKS                       R2 R2 K7 ["Constants"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K8 ["Packages"]
       22 GETTABLEKS                       R3 R3 K9 ["Rodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Packages"]
       29 GETTABLEKS                       R4 R4 K10 ["Cryo"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K5 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Util"]
       38 GETTABLEKS                       R5 R5 K12 ["PublishPlaceAsUtilities"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R4 R4 K13 ["shouldShowDevPublishLocations"]
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K5 ["Src"]
       47 GETTABLEKS                       R6 R6 K14 ["Flags"]
       49 GETTABLEKS                       R6 R6 K15 ["getFFlagPublishPlaceAsAudiencesReplacement"]
       51 CALL                             R5 1 1
       52 LOADNIL                          R6
       53 MOVE                             R7 R4
       54 CALL                             R7 0 1
       55 JUMPIFNOT                        R7 ; [+2]
       56 NEWTABLE                         R6 0 0
       58 DUPCLOSURE                       R7 K16 [PROTO_0]
       59 CAPTURE                          VAL R3
       60 MOVE                             R9 R5
       61 CALL                             R9 0 1
       62 JUMPIFNOT                        R9 ; [+57]
       63 DUPTABLE                         R8 K20 [{"current", "changed", "errors"}]
       64 NEWTABLE                         R9 0 0
       66 SETTABLEKS                       R9 R8 K17 ["current"]
       68 DUPTABLE                         R9 K29 [{"name", "creatorId", "description", "genre", "playableDevices", "teamCreateEnabled", "OptInLocations", "audiences"}]
       69 LOADK                            R10 K30 ["Untitled Game"]
       70 SETTABLEKS                       R10 R9 K21 ["name"]
       72 LOADN                            R10 0
       73 SETTABLEKS                       R10 R9 K22 ["creatorId"]
       75 LOADK                            R10 K31 [""]
       76 SETTABLEKS                       R10 R9 K23 ["description"]
       78 GETTABLEKS                       R11 R1 K32 ["GENRE_IDS"]
       80 GETTABLEN                        R10 R11 1
       81 SETTABLEKS                       R10 R9 K24 ["genre"]
       83 DUPTABLE                         R10 K37 [{"Computer", "Phone", "Tablet", "VR"}]
       84 LOADB                            R11 1
       85 SETTABLEKS                       R11 R10 K33 ["Computer"]
       87 LOADB                            R11 1
       88 SETTABLEKS                       R11 R10 K34 ["Phone"]
       90 LOADB                            R11 1
       91 SETTABLEKS                       R11 R10 K35 ["Tablet"]
       93 LOADB                            R11 1
       94 SETTABLEKS                       R11 R10 K36 ["VR"]
       96 SETTABLEKS                       R10 R9 K25 ["playableDevices"]
       98 LOADB                            R10 1
       99 SETTABLEKS                       R10 R9 K26 ["teamCreateEnabled"]
      101 SETTABLEKS                       R6 R9 K27 ["OptInLocations"]
      103 NEWTABLE                         R10 0 1
      105 GETTABLEKS                       R11 R1 K38 ["AUDIENCE"]
      107 GETTABLEKS                       R11 R11 K39 ["EDITORS"]
      109 SETLIST                          R10 R11 1 [1]
      111 SETTABLEKS                       R10 R9 K28 ["audiences"]
      113 SETTABLEKS                       R9 R8 K18 ["changed"]
      115 NEWTABLE                         R9 0 0
      117 SETTABLEKS                       R9 R8 K19 ["errors"]
      119 JUMP                             ; [+52]
      120 DUPTABLE                         R8 K20 [{"current", "changed", "errors"}]
      121 NEWTABLE                         R9 0 0
      123 SETTABLEKS                       R9 R8 K17 ["current"]
      125 DUPTABLE                         R9 K42 [{"name", "creatorId", "description", "genre", "playableDevices", "teamCreateEnabled", "OptInLocations", "isActive", "isFriendsOnly"}]
      126 LOADK                            R10 K30 ["Untitled Game"]
      127 SETTABLEKS                       R10 R9 K21 ["name"]
      129 LOADN                            R10 0
      130 SETTABLEKS                       R10 R9 K22 ["creatorId"]
      132 LOADK                            R10 K31 [""]
      133 SETTABLEKS                       R10 R9 K23 ["description"]
      135 GETTABLEKS                       R11 R1 K32 ["GENRE_IDS"]
      137 GETTABLEN                        R10 R11 1
      138 SETTABLEKS                       R10 R9 K24 ["genre"]
      140 DUPTABLE                         R10 K37 [{"Computer", "Phone", "Tablet", "VR"}]
      141 LOADB                            R11 1
      142 SETTABLEKS                       R11 R10 K33 ["Computer"]
      144 LOADB                            R11 1
      145 SETTABLEKS                       R11 R10 K34 ["Phone"]
      147 LOADB                            R11 1
      148 SETTABLEKS                       R11 R10 K35 ["Tablet"]
      150 LOADB                            R11 1
      151 SETTABLEKS                       R11 R10 K36 ["VR"]
      153 SETTABLEKS                       R10 R9 K25 ["playableDevices"]
      155 LOADB                            R10 1
      156 SETTABLEKS                       R10 R9 K26 ["teamCreateEnabled"]
      158 SETTABLEKS                       R6 R9 K27 ["OptInLocations"]
      160 LOADB                            R10 0
      161 SETTABLEKS                       R10 R9 K40 ["isActive"]
      163 LOADB                            R10 0
      164 SETTABLEKS                       R10 R9 K41 ["isFriendsOnly"]
      166 SETTABLEKS                       R9 R8 K18 ["changed"]
      168 NEWTABLE                         R9 0 0
      170 SETTABLEKS                       R9 R8 K19 ["errors"]
      172 GETTABLEKS                       R9 R2 K43 ["createReducer"]
      174 MOVE                             R10 R8
      175 DUPTABLE                         R11 K47 [{"AddChange", "AddErrors", "ResetInfo"}]
      176 DUPCLOSURE                       R12 K48 [PROTO_1]
      177 CAPTURE                          VAL R3
      178 CAPTURE                          VAL R7
      179 SETTABLEKS                       R12 R11 K44 ["AddChange"]
      181 DUPCLOSURE                       R12 K49 [PROTO_2]
      182 CAPTURE                          VAL R3
      183 SETTABLEKS                       R12 R11 K45 ["AddErrors"]
      185 DUPCLOSURE                       R12 K50 [PROTO_3]
      186 CAPTURE                          VAL R3
      187 SETTABLEKS                       R12 R11 K46 ["ResetInfo"]
      189 CALL                             R9 2 -1
      190 RETURN                           R9 -1
