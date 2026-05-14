PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["GetEnumItems"]
        2 CALL                             R2 1 1
        3 GETIMPORT                        R3 K2 [ipairs]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 3
        7 FORGPREP_INEXT                   R3
        8 GETTABLEKS                       R8 R7 K3 ["Value"]
       10 JUMPIFNOTEQ                      R8 R1 ; [+4]
       12 GETTABLEKS                       R8 R7 K4 ["Name"]
       14 RETURN                           R8 1
       15 FORGLOOP                         R3 2 [inext] ; [-8]
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Asset"]
        3 GETTABLEKS                       R2 R1 K1 ["Id"]
        5 GETTABLEKS                       R3 R1 K2 ["TypeId"]
        7 NAMECALL                         R4 R0 K3 ["getState"]
        9 CALL                             R4 1 1
       10 GETTABLEKS                       R5 R4 K4 ["assets"]
       12 JUMPIF                           R5 ; [+2]
       13 NEWTABLE                         R5 0 0
       15 GETTABLEKS                       R6 R4 K5 ["pageInfo"]
       17 JUMPIF                           R6 ; [+2]
       18 NEWTABLE                         R6 0 0
       20 GETTABLEKS                       R7 R5 K6 ["manageableAssets"]
       22 FASTCALL1                        TOSTRING R2 ; [+3]
       23 MOVE                             R10 R2
       24 GETIMPORT                        R9 K8 [tostring]
       26 CALL                             R9 1 1
       27 GETTABLE                         R8 R7 R9
       28 GETTABLEKS                       R9 R6 K9 ["categoryName"]
       30 JUMPIF                           R9 ; [+5]
       31 GETUPVAL                         R9 1
       32 GETTABLEKS                       R9 R9 K10 ["DEFAULT"]
       34 GETTABLEKS                       R9 R9 K11 ["name"]
       36 GETTABLEKS                       R10 R4 K12 ["packages"]
       38 GETTABLEKS                       R10 R10 K13 ["permissionsTable"]
       40 JUMPIF                           R10 ; [+2]
       41 NEWTABLE                         R10 0 0
       43 GETUPVAL                         R11 1
       44 GETTABLEKS                       R11 R11 K14 ["categoryIsPackage"]
       46 MOVE                             R12 R9
       47 CALL                             R11 1 1
       48 JUMPIFNOT                        R11 ; [+16]
       49 LOADB                            R12 1
       50 GETTABLE                         R13 R10 R2
       51 GETUPVAL                         R14 2
       52 GETTABLEKS                       R14 R14 K15 ["EditKey"]
       54 JUMPIFEQ                         R13 R14 ; [+9]
       56 GETTABLE                         R13 R10 R2
       57 GETUPVAL                         R14 2
       58 GETTABLEKS                       R14 R14 K16 ["OwnKey"]
       60 JUMPIFEQ                         R13 R14 ; [+2]
       62 LOADB                            R12 0 +1
       63 LOADB                            R12 1
       64 MOVE                             R8 R12
       65 GETUPVAL                         R12 3
       66 GETUPVAL                         R13 0
       67 GETTABLEKS                       R13 R13 K17 ["Context"]
       69 GETTABLEKS                       R13 R13 K18 ["position"]
       71 LOADNIL                          R14
       72 GETTABLEKS                       R15 R12 K19 ["toolboxTab"]
       74 GETUPVAL                         R16 1
       75 GETTABLEKS                       R16 R16 K20 ["CREATIONS_KEY"]
       77 JUMPIFNOTEQ                      R15 R16 ; [+7]
       79 GETUPVAL                         R15 0
       80 GETTABLEKS                       R15 R15 K21 ["Creator"]
       82 GETTABLEKS                       R14 R15 K22 ["Type"]
       84 JUMP                             ; [+10]
       85 GETUPVAL                         R15 4
       86 GETTABLEKS                       R15 R15 K23 ["backendToClient"]
       88 GETUPVAL                         R16 0
       89 GETTABLEKS                       R16 R16 K21 ["Creator"]
       91 GETTABLEKS                       R16 R16 K22 ["Type"]
       93 CALL                             R15 1 1
       94 MOVE                             R14 R15
       95 DUPTABLE                         R15 K32 [{"Category", "SortType", "CreatorId", "CreatorType", "SearchKeyword", "Position", "SearchId", "ViewInBrowser"}]
       96 GETIMPORT                        R17 K35 [Enum.AssetType]
       98 NAMECALL                         R18 R17 K36 ["GetEnumItems"]
      100 CALL                             R18 1 1
      101 GETIMPORT                        R19 K38 [ipairs]
      103 MOVE                             R20 R18
      104 CALL                             R19 1 3
      105 FORGPREP_INEXT                   R19
      106 GETTABLEKS                       R24 R23 K39 ["Value"]
      108 JUMPIFNOTEQ                      R24 R3 ; [+4]
      110 GETTABLEKS                       R16 R23 K40 ["Name"]
      112 JUMP                             ; [+3]
      113 FORGLOOP                         R19 2 [inext] ; [-8]
      115 LOADNIL                          R16
      116 SETTABLEKS                       R16 R15 K24 ["Category"]
      118 GETTABLEKS                       R16 R12 K41 ["sort"]
      120 SETTABLEKS                       R16 R15 K25 ["SortType"]
      122 GETUPVAL                         R16 0
      123 GETTABLEKS                       R16 R16 K21 ["Creator"]
      125 GETTABLEKS                       R16 R16 K1 ["Id"]
      127 SETTABLEKS                       R16 R15 K26 ["CreatorId"]
      129 GETIMPORT                        R17 K42 [Enum.CreatorType]
      131 MOVE                             R18 R14
      132 NAMECALL                         R19 R17 K36 ["GetEnumItems"]
      134 CALL                             R19 1 1
      135 GETIMPORT                        R20 K38 [ipairs]
      137 MOVE                             R21 R19
      138 CALL                             R20 1 3
      139 FORGPREP_INEXT                   R20
      140 GETTABLEKS                       R25 R24 K39 ["Value"]
      142 JUMPIFNOTEQ                      R25 R18 ; [+4]
      144 GETTABLEKS                       R16 R24 K40 ["Name"]
      146 JUMP                             ; [+3]
      147 FORGLOOP                         R20 2 [inext] ; [-8]
      149 LOADNIL                          R16
      150 SETTABLEKS                       R16 R15 K27 ["CreatorType"]
      152 GETTABLEKS                       R16 R12 K43 ["searchKeyword"]
      154 SETTABLEKS                       R16 R15 K28 ["SearchKeyword"]
      156 SETTABLEKS                       R13 R15 K29 ["Position"]
      158 GETTABLEKS                       R16 R12 K44 ["searchId"]
      160 SETTABLEKS                       R16 R15 K30 ["SearchId"]
      162 LOADB                            R16 1
      163 SETTABLEKS                       R16 R15 K31 ["ViewInBrowser"]
      165 GETUPVAL                         R17 0
      166 GETTABLEKS                       R17 R17 K21 ["Creator"]
      168 JUMPIFNOT                        R17 ; [+6]
      169 GETUPVAL                         R16 0
      170 GETTABLEKS                       R16 R16 K21 ["Creator"]
      172 GETTABLEKS                       R16 R16 K1 ["Id"]
      174 JUMPIF                           R16 ; [+1]
      175 LOADNIL                          R16
      176 GETUPVAL                         R17 5
      177 GETTABLEKS                       R17 R17 K45 ["getCategoryForPageInfo"]
      179 MOVE                             R18 R6
      180 CALL                             R17 1 1
      181 GETUPVAL                         R18 6
      182 GETTABLEKS                       R18 R18 K46 ["tryCreateContextMenu"]
      184 GETUPVAL                         R19 7
      185 MOVE                             R20 R2
      186 MOVE                             R21 R3
      187 MOVE                             R22 R8
      188 GETUPVAL                         R23 8
      189 GETUPVAL                         R24 9
      190 MOVE                             R25 R11
      191 MOVE                             R26 R17
      192 MOVE                             R27 R15
      193 MOVE                             R28 R16
      194 CALL                             R18 10 0
      195 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R4
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R3
       11 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Src"]
       11 GETTABLEKS                       R1 R1 K4 ["Util"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["ContextMenuHelper"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K8 ["CreatorInfoHelper"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K3 ["Src"]
       27 GETTABLEKS                       R5 R5 K9 ["Components"]
       29 GETTABLEKS                       R5 R5 K10 ["AssetConfiguration"]
       31 GETTABLEKS                       R5 R5 K11 ["Permissions"]
       33 GETTABLEKS                       R5 R5 K12 ["PermissionsConstants"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K6 [require]
       38 GETTABLEKS                       R6 R0 K3 ["Src"]
       40 GETTABLEKS                       R6 R6 K13 ["Types"]
       42 GETTABLEKS                       R6 R6 K14 ["Category"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K6 [require]
       47 GETTABLEKS                       R7 R0 K3 ["Src"]
       49 GETTABLEKS                       R7 R7 K4 ["Util"]
       51 GETTABLEKS                       R7 R7 K15 ["PageInfoHelper"]
       53 CALL                             R6 1 1
       54 DUPCLOSURE                       R7 K16 [PROTO_0]
       55 DUPCLOSURE                       R8 K17 [PROTO_2]
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R2
       61 RETURN                           R8 1
