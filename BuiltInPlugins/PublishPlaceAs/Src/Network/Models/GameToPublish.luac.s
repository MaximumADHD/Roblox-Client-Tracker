PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+13]
        3 DUPTABLE                         R0 K9 [{[1] = 22915773, ["rootPlaceId"] = 10395446, ["name"] = "yeet game", ["universeId"] = 149757, ["audiences"]}]
        4 NEWTABLE                         R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K10 ["AUDIENCE"]
        9 GETTABLEKS                       R2 R2 K11 ["PUBLIC"]
       11 SETLIST                          R1 R2 1 [1]
       13 SETTABLEKS                       R1 R0 K8 ["audiences"]
       15 RETURN                           R0 1
       16 DUPTABLE                         R0 K14 [{[1] = 22915773, ["rootPlaceId"] = 10395446, ["name"] = "yeet game", ["universeId"] = 149757, ["privateType"] = "Public"}]
       17 RETURN                           R0 1

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADB                            R1 0
        8 RETURN                           R1 1
        9 MOVE                             R1 R0
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 FORGPREP                         R1
       13 FASTCALL1                        TYPE R5 ; [+3]
       14 MOVE                             R7 R5
       15 GETIMPORT                        R6 K1 [type]
       17 CALL                             R6 1 1
       18 JUMPIFEQKS                       R6 K3 ["number"] ; [+3]
       20 LOADB                            R6 0
       21 RETURN                           R6 1
       22 FORGLOOP                         R1 2 ; [-10]
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["creatorTargetId"]
        2 NOT                              R1 R2
        3 GETTABLEKS                       R3 R0 K1 ["rootPlaceId"]
        5 NOT                              R2 R3
        6 GETTABLEKS                       R3 R0 K2 ["id"]
        8 JUMPIFNOT                        R3 ; [+2]
        9 JUMPIF                           R1 ; [+1]
       10 JUMPIFNOT                        R2 ; [+3]
       11 LOADB                            R3 0
       12 LOADK                            R4 K3 ["Game.fromJsonData received JSON without required fields"]
       13 RETURN                           R3 2
       14 GETTABLEKS                       R4 R0 K2 ["id"]
       16 FASTCALL1                        TYPE R4 ; [+2]
       17 GETIMPORT                        R3 K5 [type]
       19 CALL                             R3 1 1
       20 JUMPIFEQKS                       R3 K6 ["number"] ; [+4]
       22 LOADB                            R3 0
       23 LOADK                            R4 K7 ["Game.fromJsonData expects id to be a number"]
       24 RETURN                           R3 2
       25 GETTABLEKS                       R4 R0 K0 ["creatorTargetId"]
       27 FASTCALL1                        TYPE R4 ; [+2]
       28 GETIMPORT                        R3 K5 [type]
       30 CALL                             R3 1 1
       31 JUMPIFEQKS                       R3 K6 ["number"] ; [+4]
       33 LOADB                            R3 0
       34 LOADK                            R4 K8 ["Game.fromJsonData expects creatorId to be a number"]
       35 RETURN                           R3 2
       36 GETTABLEKS                       R4 R0 K1 ["rootPlaceId"]
       38 FASTCALL1                        TYPE R4 ; [+2]
       39 GETIMPORT                        R3 K5 [type]
       41 CALL                             R3 1 1
       42 JUMPIFEQKS                       R3 K6 ["number"] ; [+4]
       44 LOADB                            R3 0
       45 LOADK                            R4 K9 ["Game.fromJsonData expects rootPlaceId to be a number"]
       46 RETURN                           R3 2
       47 GETTABLEKS                       R4 R0 K10 ["name"]
       49 FASTCALL1                        TYPE R4 ; [+2]
       50 GETIMPORT                        R3 K5 [type]
       52 CALL                             R3 1 1
       53 JUMPIFEQKS                       R3 K11 ["string"] ; [+4]
       55 LOADB                            R3 0
       56 LOADK                            R4 K12 ["Game.fromJsonData expects name to be a string"]
       57 RETURN                           R3 2
       58 GETUPVAL                         R3 0
       59 CALL                             R3 0 1
       60 JUMPIFNOT                        R3 ; [+54]
       61 GETTABLEKS                       R4 R0 K13 ["audiences"]
       63 FASTCALL1                        TYPE R4 ; [+3]
       64 MOVE                             R6 R4
       65 GETIMPORT                        R5 K5 [type]
       67 CALL                             R5 1 1
       68 JUMPIFEQKS                       R5 K14 ["table"] ; [+3]
       70 LOADB                            R3 0
       71 JUMP                             ; [+16]
       72 MOVE                             R5 R4
       73 LOADNIL                          R6
       74 LOADNIL                          R7
       75 FORGPREP                         R5
       76 FASTCALL1                        TYPE R9 ; [+3]
       77 MOVE                             R11 R9
       78 GETIMPORT                        R10 K5 [type]
       80 CALL                             R10 1 1
       81 JUMPIFEQKS                       R10 K6 ["number"] ; [+3]
       83 LOADB                            R3 0
       84 JUMP                             ; [+3]
       85 FORGLOOP                         R5 2 ; [-10]
       87 LOADB                            R3 1
       88 JUMPIF                           R3 ; [+3]
       89 LOADB                            R3 0
       90 LOADK                            R4 K15 ["Game.fromJsonData expects audiences to be a table of numbers"]
       91 RETURN                           R3 2
       92 LOADB                            R3 1
       93 DUPTABLE                         R4 K18 [{"creatorId", "rootPlaceId", "name", "universeId", "audiences"}]
       94 GETTABLEKS                       R5 R0 K0 ["creatorTargetId"]
       96 SETTABLEKS                       R5 R4 K16 ["creatorId"]
       98 GETTABLEKS                       R5 R0 K1 ["rootPlaceId"]
      100 SETTABLEKS                       R5 R4 K1 ["rootPlaceId"]
      102 GETTABLEKS                       R5 R0 K10 ["name"]
      104 SETTABLEKS                       R5 R4 K10 ["name"]
      106 GETTABLEKS                       R5 R0 K2 ["id"]
      108 SETTABLEKS                       R5 R4 K17 ["universeId"]
      110 GETTABLEKS                       R5 R0 K13 ["audiences"]
      112 SETTABLEKS                       R5 R4 K13 ["audiences"]
      114 RETURN                           R3 2
      115 GETTABLEKS                       R4 R0 K19 ["privacyType"]
      117 FASTCALL1                        TYPE R4 ; [+2]
      118 GETIMPORT                        R3 K5 [type]
      120 CALL                             R3 1 1
      121 JUMPIFEQKS                       R3 K11 ["string"] ; [+4]
      123 LOADB                            R3 0
      124 LOADK                            R4 K20 ["Game.fromJsonData expects privacyType to be a string"]
      125 RETURN                           R3 2
      126 LOADB                            R3 1
      127 DUPTABLE                         R4 K21 [{"creatorId", "rootPlaceId", "name", "universeId", "privacyType"}]
      128 GETTABLEKS                       R5 R0 K0 ["creatorTargetId"]
      130 SETTABLEKS                       R5 R4 K16 ["creatorId"]
      132 GETTABLEKS                       R5 R0 K1 ["rootPlaceId"]
      134 SETTABLEKS                       R5 R4 K1 ["rootPlaceId"]
      136 GETTABLEKS                       R5 R0 K10 ["name"]
      138 SETTABLEKS                       R5 R4 K10 ["name"]
      140 GETTABLEKS                       R5 R0 K2 ["id"]
      142 SETTABLEKS                       R5 R4 K17 ["universeId"]
      144 GETTABLEKS                       R5 R0 K19 ["privacyType"]
      146 SETTABLEKS                       R5 R4 K19 ["privacyType"]
      148 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PublishPlaceAs"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Resources"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Flags"]
       22 GETTABLEKS                       R3 R3 K10 ["getFFlagPublishPlaceAsAudiencesReplacement"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 2 0
       27 DUPCLOSURE                       R4 K11 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 SETTABLEKS                       R4 R3 K12 ["mock"]
       32 DUPCLOSURE                       R4 K13 [PROTO_1]
       33 DUPCLOSURE                       R5 K14 [PROTO_2]
       34 CAPTURE                          VAL R2
       35 SETTABLEKS                       R5 R3 K15 ["fromJsonData"]
       37 RETURN                           R3 1
