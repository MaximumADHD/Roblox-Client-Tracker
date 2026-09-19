PROTO_0:
        0 DUPTABLE                         R0 K5 [{"FailedToGenerate", "Preparing", "Generating", "ToolCallRejected", "UnknownError"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K6 ["MaterialGen"]
        3 LOADK                            R4 K0 ["FailedToGenerate"]
        4 NAMECALL                         R1 R1 K7 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["FailedToGenerate"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K6 ["MaterialGen"]
       11 LOADK                            R4 K1 ["Preparing"]
       12 NAMECALL                         R1 R1 K7 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Preparing"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K6 ["MaterialGen"]
       19 LOADK                            R4 K2 ["Generating"]
       20 DUPTABLE                         R5 K9 [{"name"}]
       21 GETUPVAL                         R6 1
       22 SETTABLEKS                       R6 R5 K8 ["name"]
       24 NAMECALL                         R1 R1 K7 ["getText"]
       26 CALL                             R1 4 1
       27 SETTABLEKS                       R1 R0 K2 ["Generating"]
       29 GETUPVAL                         R1 0
       30 LOADK                            R3 K10 ["ToolConfirmation"]
       31 LOADK                            R4 K3 ["ToolCallRejected"]
       32 DUPTABLE                         R5 K12 [{"toolName"}]
       33 GETUPVAL                         R6 2
       34 SETTABLEKS                       R6 R5 K11 ["toolName"]
       36 NAMECALL                         R1 R1 K7 ["getText"]
       38 CALL                             R1 4 1
       39 SETTABLEKS                       R1 R0 K3 ["ToolCallRejected"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K6 ["MaterialGen"]
       43 LOADK                            R4 K13 ["UnknownErrorHeader"]
       44 NAMECALL                         R1 R1 K7 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K4 ["UnknownError"]
       49 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 GETTABLEKS                       R2 R0 K1 ["toolResult"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R3 R1 K2 ["name"]
        7 JUMPIF                           R3 ; [+1]
        8 LOADK                            R3 K3 [""]
        9 JUMPIFNOT                        R1 ; [+3]
       10 GETTABLEKS                       R4 R1 K4 ["input"]
       12 JUMPIF                           R4 ; [+1]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R6 R4 K5 ["materialId"]
       16 ORK                              R5 R6 K3 [""]
       17 JUMPIFNOT                        R2 ; [+3]
       18 GETTABLEKS                       R6 R2 K6 ["structuredContent"]
       20 JUMPIF                           R6 ; [+1]
       21 LOADNIL                          R6
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K7 ["useMemo"]
       25 NEWCLOSURE                       R8 P0
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R3
       29 NEWTABLE                         R9 0 3
       31 GETUPVAL                         R10 2
       32 GETTABLEKS                       R10 R10 K8 ["locale"]
       34 MOVE                             R11 R5
       35 MOVE                             R12 R3
       36 SETLIST                          R9 R10 3 [1]
       38 CALL                             R7 2 1
       39 LOADB                            R8 1
       40 LOADK                            R9 K3 [""]
       41 JUMPIFNOT                        R2 ; [+25]
       42 LOADB                            R8 0
       43 GETTABLEKS                       R10 R2 K9 ["isError"]
       45 JUMPIFNOT                        R10 ; [+3]
       46 GETTABLEKS                       R9 R7 K10 ["FailedToGenerate"]
       48 JUMP                             ; [+24]
       49 JUMPIFNOT                        R6 ; [+6]
       50 GETTABLEKS                       R10 R6 K11 ["rejected"]
       52 JUMPIFNOT                        R10 ; [+3]
       53 GETTABLEKS                       R9 R7 K12 ["ToolCallRejected"]
       55 JUMP                             ; [+17]
       56 JUMPIFNOT                        R6 ; [+7]
       57 GETTABLEKS                       R10 R6 K13 ["pending"]
       59 JUMPIFNOT                        R10 ; [+4]
       60 LOADB                            R8 1
       61 GETTABLEKS                       R9 R7 K14 ["Generating"]
       63 JUMP                             ; [+9]
       64 GETTABLEKS                       R9 R7 K15 ["UnknownError"]
       66 JUMP                             ; [+6]
       67 JUMPIFNOT                        R1 ; [+3]
       68 GETTABLEKS                       R9 R7 K14 ["Generating"]
       70 JUMP                             ; [+2]
       71 GETTABLEKS                       R9 R7 K16 ["Preparing"]
       73 GETUPVAL                         R10 3
       74 CALL                             R10 0 1
       75 GETUPVAL                         R11 4
       76 GETUPVAL                         R12 5
       77 GETTABLEKS                       R12 R12 K17 ["Root"]
       79 DUPTABLE                         R13 K23 [{["LayoutOrder"], ["expanded"] = False, ["contentId"], ["editThisContent"]}]
       80 GETTABLEKS                       R14 R0 K18 ["LayoutOrder"]
       82 SETTABLEKS                       R14 R13 K18 ["LayoutOrder"]
       84 GETTABLEKS                       R14 R0 K21 ["contentId"]
       86 SETTABLEKS                       R14 R13 K21 ["contentId"]
       88 GETTABLEKS                       R14 R0 K22 ["editThisContent"]
       90 SETTABLEKS                       R14 R13 K22 ["editThisContent"]
       92 DUPTABLE                         R14 K25 [{"Header"}]
       93 GETUPVAL                         R15 4
       94 GETUPVAL                         R16 5
       95 GETTABLEKS                       R16 R16 K24 ["Header"]
       97 DUPTABLE                         R17 K29 [{["IsDisabled"] = True, ["LayoutOrder"], ["testId"]}]
       98 MOVE                             R18 R10
       99 CALL                             R18 0 1
      100 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      102 GETUPVAL                         R18 6
      103 GETTABLEKS                       R18 R18 K30 ["MaterialGen"]
      105 GETTABLEKS                       R18 R18 K31 ["Expand"]
      107 SETTABLEKS                       R18 R17 K28 ["testId"]
      109 DUPTABLE                         R18 K33 [{"Text"}]
      110 GETUPVAL                         R19 4
      111 GETUPVAL                         R20 7
      112 DUPTABLE                         R21 K36 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      113 SETTABLEKS                       R9 R21 K32 ["Text"]
      115 MOVE                             R22 R10
      116 CALL                             R22 0 1
      117 SETTABLEKS                       R22 R21 K18 ["LayoutOrder"]
      119 DUPTABLE                         R22 K38 [{"Shimmer"}]
      120 JUMPIFNOT                        R8 ; [+4]
      121 GETUPVAL                         R23 4
      122 GETUPVAL                         R24 8
      123 CALL                             R23 1 1
      124 JUMP                             ; [+1]
      125 LOADNIL                          R23
      126 SETTABLEKS                       R23 R22 K37 ["Shimmer"]
      128 CALL                             R19 3 1
      129 SETTABLEKS                       R19 R18 K32 ["Text"]
      131 CALL                             R15 3 1
      132 SETTABLEKS                       R15 R14 K24 ["Header"]
      134 CALL                             R11 3 -1
      135 RETURN                           R11 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["MaterialGenActionsContext is required to get default material properties"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R1 1
        8 FASTCALL2K                       ASSERT R1 K3 ; [+4]
       10 LOADK                            R2 K3 ["assetIds are required to get default material properties"]
       11 GETIMPORT                        R0 K2 [assert]
       13 CALL                             R0 2 0
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K4 ["getMaterialPropertiesAsync"]
       17 DUPTABLE                         R1 K6 [{"assetIds"}]
       18 GETUPVAL                         R2 1
       19 SETTABLEKS                       R2 R1 K5 ["assetIds"]
       21 CALL                             R0 1 -1
       22 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["status"]
        3 JUMPIFEQKS                       R0 K1 ["ok"] ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["value"]
        9 JUMPIFNOT                        R0 ; [+3]
       10 GETUPVAL                         R1 1
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["studsPerTile"]
        7 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETUPVAL                         R1 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 MULK                             R4 R0 K0 [10]
        6 FASTCALL1                        MATH_ROUND R4 ; [+2]
        7 GETIMPORT                        R3 K3 [math.round]
        9 CALL                             R3 1 1
       10 DIVK                             R2 R3 K0 [10]
       11 LOADK                            R3 K4 [0.1]
       12 LOADN                            R4 20
       13 FASTCALL                         MATH_CLAMP ; [+2]
       14 GETIMPORT                        R1 K6 [math.clamp]
       16 CALL                             R1 3 1
       17 GETUPVAL                         R2 2
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          VAL R1
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K7 ["setStudsPerTile"]
       24 DUPTABLE                         R3 K10 [{"assetIds", "studsPerTile"}]
       25 GETUPVAL                         R4 1
       26 SETTABLEKS                       R4 R3 K8 ["assetIds"]
       28 SETTABLEKS                       R1 R3 K9 ["studsPerTile"]
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["isOrganic"]
        7 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 2
        6 NOT                              R0 R1
        7 GETUPVAL                         R1 3
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K0 ["setOrganicPattern"]
       14 DUPTABLE                         R2 K3 [{"assetIds", "isOrganic"}]
       15 GETUPVAL                         R3 1
       16 SETTABLEKS                       R3 R2 K1 ["assetIds"]
       18 SETTABLEKS                       R0 R2 K2 ["isOrganic"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEN                        R0 R1 1
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["selectMaterial"]
       12 DUPTABLE                         R2 K2 [{"assetId"}]
       13 SETTABLEKS                       R0 R2 K1 ["assetId"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_9:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 LOADN                            R2 1
        3 JUMPIFNOTLT                      R2 R1 ; [+16]
        5 GETUPVAL                         R1 1
        6 LOADK                            R3 K0 ["InstanceChip"]
        7 LOADK                            R4 K1 ["Multiple"]
        8 DUPTABLE                         R5 K4 [{"name", "count"}]
        9 GETUPVAL                         R6 2
       10 SETTABLEKS                       R6 R5 K2 ["name"]
       12 GETUPVAL                         R6 0
       13 SETTABLEKS                       R6 R5 K3 ["count"]
       15 NAMECALL                         R1 R1 K5 ["getText"]
       17 CALL                             R1 4 1
       18 MOVE                             R0 R1
       19 JUMP                             ; [+16]
       20 GETUPVAL                         R1 0
       21 JUMPIFNOTEQKN                    R1 K6 [0] ; [+13]
       23 GETUPVAL                         R1 1
       24 LOADK                            R3 K0 ["InstanceChip"]
       25 LOADK                            R4 K7 ["Deleted"]
       26 DUPTABLE                         R5 K8 [{"name"}]
       27 GETUPVAL                         R6 2
       28 SETTABLEKS                       R6 R5 K2 ["name"]
       30 NAMECALL                         R1 R1 K5 ["getText"]
       32 CALL                             R1 4 1
       33 MOVE                             R0 R1
       34 JUMP                             ; [+1]
       35 GETUPVAL                         R0 2
       36 LOADNIL                          R1
       37 GETUPVAL                         R2 0
       38 LOADN                            R3 0
       39 JUMPIFNOTLT                      R3 R2 ; [+26]
       41 GETUPVAL                         R2 1
       42 LOADK                            R4 K9 ["MaterialGen"]
       43 LOADK                            R5 K10 ["Generated"]
       44 DUPTABLE                         R6 K12 [{["name"] = "{CHIP}"}]
       45 NAMECALL                         R2 R2 K5 ["getText"]
       47 CALL                             R2 4 1
       48 MOVE                             R1 R2
       49 LOADK                            R4 K13 ["[ ]*{CHIP}[ ]*"]
       50 LOADK                            R5 K14 [" "]
       51 NAMECALL                         R2 R1 K15 ["gsub"]
       53 CALL                             R2 3 1
       54 LOADK                            R4 K16 ["^%s+"]
       55 LOADK                            R5 K17 [""]
       56 NAMECALL                         R2 R2 K15 ["gsub"]
       58 CALL                             R2 3 1
       59 LOADK                            R4 K18 ["%s+$"]
       60 LOADK                            R5 K17 [""]
       61 NAMECALL                         R2 R2 K15 ["gsub"]
       63 CALL                             R2 3 1
       64 MOVE                             R1 R2
       65 JUMP                             ; [+10]
       66 GETUPVAL                         R2 1
       67 LOADK                            R4 K9 ["MaterialGen"]
       68 LOADK                            R5 K10 ["Generated"]
       69 DUPTABLE                         R6 K8 [{"name"}]
       70 SETTABLEKS                       R0 R6 K2 ["name"]
       72 NAMECALL                         R2 R2 K5 ["getText"]
       74 CALL                             R2 4 1
       75 MOVE                             R1 R2
       76 DUPTABLE                         R2 K23 [{"DisplayName", "Generated", "SelectAVariant", "StudsPerTile", "OrganicPattern"}]
       77 SETTABLEKS                       R0 R2 K19 ["DisplayName"]
       79 SETTABLEKS                       R1 R2 K10 ["Generated"]
       81 GETUPVAL                         R3 1
       82 LOADK                            R5 K9 ["MaterialGen"]
       83 LOADK                            R6 K20 ["SelectAVariant"]
       84 NAMECALL                         R3 R3 K5 ["getText"]
       86 CALL                             R3 3 1
       87 SETTABLEKS                       R3 R2 K20 ["SelectAVariant"]
       89 GETUPVAL                         R3 1
       90 LOADK                            R5 K9 ["MaterialGen"]
       91 LOADK                            R6 K21 ["StudsPerTile"]
       92 NAMECALL                         R3 R3 K5 ["getText"]
       94 CALL                             R3 3 1
       95 SETTABLEKS                       R3 R2 K21 ["StudsPerTile"]
       97 GETUPVAL                         R3 1
       98 LOADK                            R5 K9 ["MaterialGen"]
       99 LOADK                            R6 K22 ["OrganicPattern"]
      100 NAMECALL                         R3 R3 K5 ["getText"]
      102 CALL                             R3 3 1
      103 SETTABLEKS                       R3 R2 K22 ["OrganicPattern"]
      105 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["applyMaterial"]
        3 DUPTABLE                         R1 K2 [{"assetId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["assetId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 GETTABLEKS                       R2 R0 K1 ["toolResult"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R3 R1 K2 ["input"]
        7 JUMPIF                           R3 ; [+1]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R5 R3 K4 ["materialId"]
       11 ORK                              R4 R5 K3 [""]
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETTABLEKS                       R5 R2 K5 ["structuredContent"]
       15 JUMPIF                           R5 ; [+1]
       16 LOADNIL                          R5
       17 JUMPIFNOT                        R5 ; [+3]
       18 GETTABLEKS                       R6 R5 K6 ["tag"]
       20 JUMPIF                           R6 ; [+1]
       21 LOADNIL                          R6
       22 JUMPIFNOT                        R5 ; [+3]
       23 GETTABLEKS                       R7 R5 K7 ["assetIds"]
       25 JUMPIF                           R7 ; [+1]
       26 LOADNIL                          R7
       27 GETUPVAL                         R8 1
       28 GETTABLEKS                       R8 R8 K8 ["useContext"]
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R9 R9 K9 ["Context"]
       33 CALL                             R8 1 1
       34 GETUPVAL                         R9 3
       35 GETTABLEKS                       R9 R9 K10 ["useTag"]
       37 MOVE                             R10 R6
       38 DUPTABLE                         R11 K13 [{["includeCount"] = True}]
       39 CALL                             R9 2 1
       40 JUMPIFNOT                        R9 ; [+3]
       41 GETTABLEKS                       R10 R9 K14 ["count"]
       43 JUMPIF                           R10 ; [+1]
       44 LOADN                            R10 0
       45 GETUPVAL                         R11 1
       46 GETTABLEKS                       R11 R11 K15 ["useState"]
       48 GETUPVAL                         R12 4
       49 CALL                             R11 1 2
       50 GETTABLEKS                       R13 R11 K16 ["studsPerTile"]
       52 GETTABLEKS                       R14 R11 K17 ["isOrganic"]
       54 GETUPVAL                         R15 5
       55 GETTABLEKS                       R15 R15 K18 ["useAsync"]
       57 NEWCLOSURE                       R16 P0
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R7
       60 NEWTABLE                         R17 0 2
       62 MOVE                             R18 R8
       63 MOVE                             R19 R7
       64 SETLIST                          R17 R18 2 [1]
       66 CALL                             R15 2 1
       67 GETUPVAL                         R16 1
       68 GETTABLEKS                       R16 R16 K19 ["useEffect"]
       70 NEWCLOSURE                       R17 P1
       71 CAPTURE                          VAL R15
       72 CAPTURE                          VAL R12
       73 NEWTABLE                         R18 0 1
       75 MOVE                             R19 R15
       76 SETLIST                          R18 R19 1 [1]
       78 CALL                             R16 2 0
       79 GETUPVAL                         R16 1
       80 GETTABLEKS                       R16 R16 K20 ["useCallback"]
       82 NEWCLOSURE                       R17 P2
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R12
       86 NEWTABLE                         R18 0 2
       88 MOVE                             R19 R8
       89 MOVE                             R20 R7
       90 SETLIST                          R18 R19 2 [1]
       92 CALL                             R16 2 1
       93 GETUPVAL                         R17 1
       94 GETTABLEKS                       R17 R17 K20 ["useCallback"]
       96 NEWCLOSURE                       R18 P3
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R12
      101 NEWTABLE                         R19 0 3
      103 MOVE                             R20 R8
      104 MOVE                             R21 R7
      105 MOVE                             R22 R14
      106 SETLIST                          R19 R20 3 [1]
      108 CALL                             R17 2 1
      109 GETUPVAL                         R18 1
      110 GETTABLEKS                       R18 R18 K20 ["useCallback"]
      112 NEWCLOSURE                       R19 P4
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R7
      115 NEWTABLE                         R20 0 2
      117 MOVE                             R21 R8
      118 MOVE                             R22 R7
      119 SETLIST                          R20 R21 2 [1]
      121 CALL                             R18 2 1
      122 GETUPVAL                         R19 1
      123 GETTABLEKS                       R19 R19 K21 ["useMemo"]
      125 NEWCLOSURE                       R20 P5
      126 CAPTURE                          VAL R10
      127 CAPTURE                          UPVAL U6
      128 CAPTURE                          VAL R4
      129 NEWTABLE                         R21 0 3
      131 GETUPVAL                         R22 6
      132 GETTABLEKS                       R22 R22 K22 ["locale"]
      134 MOVE                             R23 R4
      135 MOVE                             R24 R10
      136 SETLIST                          R21 R22 3 [1]
      138 CALL                             R19 2 1
      139 GETUPVAL                         R20 7
      140 LOADK                            R21 K23 ["MaterialVariant"]
      141 CALL                             R20 1 1
      142 NEWTABLE                         R21 0 0
      144 JUMPIFNOT                        R7 ; [+28]
      145 GETIMPORT                        R22 K26 [table.create]
      147 LENGTH                           R23 R7
      148 CALL                             R22 1 1
      149 MOVE                             R21 R22
      150 MOVE                             R22 R7
      151 LOADNIL                          R23
      152 LOADNIL                          R24
      153 FORGPREP                         R22
      154 DUPTABLE                         R29 K29 [{"uri", "onActivated"}]
      155 SETTABLEKS                       R26 R29 K27 ["uri"]
      157 JUMPIFNOT                        R8 ; [+4]
      158 NEWCLOSURE                       R30 P6
      159 CAPTURE                          VAL R8
      160 CAPTURE                          VAL R26
      161 JUMP                             ; [+1]
      162 LOADNIL                          R30
      163 SETTABLEKS                       R30 R29 K28 ["onActivated"]
      165 FASTCALL2                        TABLE_INSERT R21 R29 ; [+4]
      167 MOVE                             R28 R21
      168 GETIMPORT                        R27 K31 [table.insert]
      170 CALL                             R27 2 0
      171 FORGLOOP                         R22 2 ; [-18]
      173 GETUPVAL                         R22 8
      174 CALL                             R22 0 1
      175 GETUPVAL                         R23 9
      176 GETUPVAL                         R24 10
      177 GETTABLEKS                       R24 R24 K32 ["Root"]
      179 DUPTABLE                         R25 K37 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      180 GETTABLEKS                       R26 R0 K33 ["LayoutOrder"]
      182 SETTABLEKS                       R26 R25 K33 ["LayoutOrder"]
      184 GETTABLEKS                       R26 R0 K34 ["expanded"]
      186 SETTABLEKS                       R26 R25 K34 ["expanded"]
      188 GETTABLEKS                       R26 R0 K35 ["contentId"]
      190 SETTABLEKS                       R26 R25 K35 ["contentId"]
      192 GETTABLEKS                       R26 R0 K36 ["editThisContent"]
      194 SETTABLEKS                       R26 R25 K36 ["editThisContent"]
      196 DUPTABLE                         R26 K40 [{"Header", "Content"}]
      197 GETUPVAL                         R27 9
      198 GETUPVAL                         R28 10
      199 GETTABLEKS                       R28 R28 K38 ["Header"]
      201 DUPTABLE                         R29 K42 [{"LayoutOrder", "testId"}]
      202 MOVE                             R30 R22
      203 CALL                             R30 0 1
      204 SETTABLEKS                       R30 R29 K33 ["LayoutOrder"]
      206 GETUPVAL                         R30 11
      207 GETTABLEKS                       R30 R30 K43 ["MaterialGen"]
      209 GETTABLEKS                       R30 R30 K44 ["Expand"]
      211 SETTABLEKS                       R30 R29 K41 ["testId"]
      213 DUPTABLE                         R30 K47 [{"Text", "AssetLink"}]
      214 GETUPVAL                         R31 9
      215 GETUPVAL                         R32 12
      216 DUPTABLE                         R33 K49 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      217 GETTABLEKS                       R34 R19 K50 ["Generated"]
      219 SETTABLEKS                       R34 R33 K45 ["Text"]
      221 MOVE                             R34 R22
      222 CALL                             R34 0 1
      223 SETTABLEKS                       R34 R33 K33 ["LayoutOrder"]
      225 CALL                             R31 2 1
      226 SETTABLEKS                       R31 R30 K45 ["Text"]
      228 LOADB                            R31 0
      229 LOADN                            R32 0
      230 JUMPIFNOTLT                      R32 R10 ; [+28]
      232 GETUPVAL                         R31 9
      233 GETUPVAL                         R32 13
      234 DUPTABLE                         R33 K56 [{["text"], ["leading"], ["onActivated"], ["isChecked"] = False, ["size"], ["LayoutOrder"]}]
      235 GETTABLEKS                       R34 R19 K57 ["DisplayName"]
      237 SETTABLEKS                       R34 R33 K51 ["text"]
      239 GETTABLEKS                       R34 R20 K58 ["Image"]
      241 SETTABLEKS                       R34 R33 K52 ["leading"]
      243 SETTABLEKS                       R18 R33 K28 ["onActivated"]
      245 GETUPVAL                         R34 14
      246 GETTABLEKS                       R34 R34 K59 ["Enums"]
      248 GETTABLEKS                       R34 R34 K60 ["ChipSize"]
      250 GETTABLEKS                       R34 R34 K61 ["Small"]
      252 SETTABLEKS                       R34 R33 K55 ["size"]
      254 MOVE                             R34 R22
      255 CALL                             R34 0 1
      256 SETTABLEKS                       R34 R33 K33 ["LayoutOrder"]
      258 CALL                             R31 2 1
      259 SETTABLEKS                       R31 R30 K46 ["AssetLink"]
      261 CALL                             R27 3 1
      262 SETTABLEKS                       R27 R26 K38 ["Header"]
      264 GETUPVAL                         R27 9
      265 GETUPVAL                         R28 10
      266 GETTABLEKS                       R28 R28 K39 ["Content"]
      268 DUPTABLE                         R29 K63 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"]}]
      269 MOVE                             R30 R22
      270 CALL                             R30 0 1
      271 SETTABLEKS                       R30 R29 K33 ["LayoutOrder"]
      273 DUPTABLE                         R30 K67 [{"Text", "Carousel", "StudsPerTileRow", "OrganicPattern"}]
      274 GETUPVAL                         R31 9
      275 GETUPVAL                         R32 12
      276 DUPTABLE                         R33 K69 [{["tag"] = "size-0-0 auto-xy text-body-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      277 GETTABLEKS                       R34 R19 K70 ["SelectAVariant"]
      279 SETTABLEKS                       R34 R33 K45 ["Text"]
      281 MOVE                             R34 R22
      282 CALL                             R34 0 1
      283 SETTABLEKS                       R34 R33 K33 ["LayoutOrder"]
      285 CALL                             R31 2 1
      286 SETTABLEKS                       R31 R30 K45 ["Text"]
      288 GETUPVAL                         R31 9
      289 GETUPVAL                         R32 15
      290 DUPTABLE                         R33 K75 [{["height"] = 70, ["canSelect"] = False, ["items"], ["LayoutOrder"]}]
      291 SETTABLEKS                       R21 R33 K74 ["items"]
      293 MOVE                             R34 R22
      294 CALL                             R34 0 1
      295 SETTABLEKS                       R34 R33 K33 ["LayoutOrder"]
      297 CALL                             R31 2 1
      298 SETTABLEKS                       R31 R30 K64 ["Carousel"]
      300 GETUPVAL                         R31 9
      301 GETUPVAL                         R32 16
      302 DUPTABLE                         R33 K77 [{["tag"] = "row align-y-center gap-small size-full-600 padding-y-xxsmall", ["LayoutOrder"]}]
      303 MOVE                             R34 R22
      304 CALL                             R34 0 1
      305 SETTABLEKS                       R34 R33 K33 ["LayoutOrder"]
      307 DUPTABLE                         R34 K80 [{"Label", "Value"}]
      308 GETUPVAL                         R35 9
      309 GETUPVAL                         R36 12
      310 DUPTABLE                         R37 K82 [{["tag"] = "size-2700-full text-body-small text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      311 GETTABLEKS                       R38 R19 K83 ["StudsPerTile"]
      313 SETTABLEKS                       R38 R37 K45 ["Text"]
      315 MOVE                             R38 R22
      316 CALL                             R38 0 1
      317 SETTABLEKS                       R38 R37 K33 ["LayoutOrder"]
      319 CALL                             R35 2 1
      320 SETTABLEKS                       R35 R34 K78 ["Label"]
      322 GETUPVAL                         R35 9
      323 GETUPVAL                         R36 17
      324 DUPTABLE                         R37 K93 [{["tag"] = "fill size-0-full radius-small bg-shift-200", ["min"] = 0.1, ["max"] = 20, ["value"], ["decimalPlaces"] = 1, ["onChanged"], ["LayoutOrder"], ["testId"]}]
      325 SETTABLEKS                       R13 R37 K89 ["value"]
      327 SETTABLEKS                       R16 R37 K92 ["onChanged"]
      329 MOVE                             R38 R22
      330 CALL                             R38 0 1
      331 SETTABLEKS                       R38 R37 K33 ["LayoutOrder"]
      333 GETUPVAL                         R38 11
      334 GETTABLEKS                       R38 R38 K43 ["MaterialGen"]
      336 GETTABLEKS                       R38 R38 K94 ["StudsPerTileValueBar"]
      338 SETTABLEKS                       R38 R37 K41 ["testId"]
      340 CALL                             R35 2 1
      341 SETTABLEKS                       R35 R34 K79 ["Value"]
      343 CALL                             R31 3 1
      344 SETTABLEKS                       R31 R30 K65 ["StudsPerTileRow"]
      346 GETUPVAL                         R31 9
      347 GETUPVAL                         R32 16
      348 DUPTABLE                         R33 K77 [{["tag"] = "row align-y-center gap-small size-full-600 padding-y-xxsmall", ["LayoutOrder"]}]
      349 MOVE                             R34 R22
      350 CALL                             R34 0 1
      351 SETTABLEKS                       R34 R33 K33 ["LayoutOrder"]
      353 DUPTABLE                         R34 K80 [{"Label", "Value"}]
      354 GETUPVAL                         R35 9
      355 GETUPVAL                         R36 12
      356 DUPTABLE                         R37 K82 [{["tag"] = "size-2700-full text-body-small text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      357 GETTABLEKS                       R38 R19 K66 ["OrganicPattern"]
      359 SETTABLEKS                       R38 R37 K45 ["Text"]
      361 MOVE                             R38 R22
      362 CALL                             R38 0 1
      363 SETTABLEKS                       R38 R37 K33 ["LayoutOrder"]
      365 CALL                             R35 2 1
      366 SETTABLEKS                       R35 R34 K78 ["Label"]
      368 GETUPVAL                         R35 9
      369 GETUPVAL                         R36 18
      370 DUPTABLE                         R37 K96 [{["size"], ["label"] = "", ["isChecked"], ["onActivated"], ["LayoutOrder"], ["testId"]}]
      371 GETUPVAL                         R38 14
      372 GETTABLEKS                       R38 R38 K59 ["Enums"]
      374 GETTABLEKS                       R38 R38 K97 ["ToggleSize"]
      376 GETTABLEKS                       R38 R38 K98 ["Medium"]
      378 SETTABLEKS                       R38 R37 K55 ["size"]
      380 SETTABLEKS                       R14 R37 K53 ["isChecked"]
      382 SETTABLEKS                       R17 R37 K28 ["onActivated"]
      384 MOVE                             R38 R22
      385 CALL                             R38 0 1
      386 SETTABLEKS                       R38 R37 K33 ["LayoutOrder"]
      388 GETUPVAL                         R38 11
      389 GETTABLEKS                       R38 R38 K43 ["MaterialGen"]
      391 GETTABLEKS                       R38 R38 K99 ["OrganicPatternToggle"]
      393 SETTABLEKS                       R38 R37 K41 ["testId"]
      395 CALL                             R35 2 1
      396 SETTABLEKS                       R35 R34 K79 ["Value"]
      398 CALL                             R31 3 1
      399 SETTABLEKS                       R31 R30 K66 ["OrganicPattern"]
      401 CALL                             R27 3 1
      402 SETTABLEKS                       R27 R26 K39 ["Content"]
      404 CALL                             R23 3 -1
      405 RETURN                           R23 -1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["structuredContent"]
        5 JUMPIF                           R2 ; [+1]
        6 LOADNIL                          R2
        7 MOVE                             R3 R1
        8 JUMPIFNOT                        R3 ; [+15]
        9 GETTABLEKS                       R4 R1 K2 ["isError"]
       11 NOT                              R3 R4
       12 JUMPIFNOT                        R3 ; [+11]
       13 MOVE                             R4 R2
       14 JUMPIFNOT                        R4 ; [+2]
       15 GETTABLEKS                       R4 R2 K3 ["pending"]
       17 NOT                              R3 R4
       18 JUMPIFNOT                        R3 ; [+5]
       19 MOVE                             R4 R2
       20 JUMPIFNOT                        R4 ; [+2]
       21 GETTABLEKS                       R4 R2 K4 ["rejected"]
       23 NOT                              R3 R4
       24 JUMPIFNOT                        R3 ; [+5]
       25 GETUPVAL                         R4 0
       26 GETUPVAL                         R5 1
       27 MOVE                             R6 R0
       28 CALL                             R4 2 -1
       29 RETURN                           R4 -1
       30 GETUPVAL                         R4 0
       31 GETUPVAL                         R5 2
       32 MOVE                             R6 R0
       33 CALL                             R4 2 -1
       34 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["Carousel"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Components"]
       32 GETTABLEKS                       R5 R5 K11 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K12 ["Actions"]
       36 GETTABLEKS                       R5 R5 K13 ["InstanceActionsContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Components"]
       43 GETTABLEKS                       R6 R6 K11 ["Contexts"]
       45 GETTABLEKS                       R6 R6 K12 ["Actions"]
       47 GETTABLEKS                       R6 R6 K14 ["MaterialGenActionsContext"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K15 ["Bridges"]
       54 GETTABLEKS                       R7 R7 K16 ["createMaterialGenBridge"]
       56 GETTABLEKS                       R7 R7 K17 ["MaterialGenBridgeTypes"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K9 ["Parent"]
       63 GETTABLEKS                       R8 R8 K18 ["React"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K9 ["Parent"]
       70 GETTABLEKS                       R9 R9 K19 ["ReactUtils"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K6 ["Components"]
       77 GETTABLEKS                       R10 R10 K20 ["ShimmerGradient"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K21 ["Util"]
       84 GETTABLEKS                       R11 R11 K22 ["TestIds"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K23 ["Resources"]
       91 GETTABLEKS                       R12 R12 K24 ["Localization"]
       93 GETTABLEKS                       R12 R12 K25 ["Translator"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K26 ["Types"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K6 ["Components"]
      105 GETTABLEKS                       R14 R14 K27 ["ValueBar"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K28 ["Hooks"]
      112 GETTABLEKS                       R15 R15 K29 ["useClassIcon"]
      114 CALL                             R14 1 1
      115 GETTABLEKS                       R15 R3 K30 ["Chip"]
      117 GETTABLEKS                       R16 R3 K31 ["Text"]
      119 GETTABLEKS                       R17 R3 K32 ["Toggle"]
      121 GETTABLEKS                       R18 R3 K33 ["View"]
      123 GETTABLEKS                       R19 R8 K34 ["createNextOrder"]
      125 GETTABLEKS                       R20 R7 K35 ["createElement"]
      127 NEWTABLE                         R21 0 0
      129 DUPTABLE                         R22 K40 [{["isOrganic"] = False, ["studsPerTile"] = 10}]
      130 DUPCLOSURE                       R23 K41 [PROTO_1]
      131 CAPTURE                          VAL R21
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R19
      135 CAPTURE                          VAL R20
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R16
      139 CAPTURE                          VAL R9
      140 DUPCLOSURE                       R24 K42 [PROTO_11]
      141 CAPTURE                          VAL R21
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R4
      145 CAPTURE                          VAL R22
      146 CAPTURE                          VAL R8
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R19
      150 CAPTURE                          VAL R20
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R16
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R18
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R17
      160 DUPCLOSURE                       R25 K43 [PROTO_12]
      161 CAPTURE                          VAL R20
      162 CAPTURE                          VAL R24
      163 CAPTURE                          VAL R23
      164 DUPTABLE                         R26 K47 [{["Type"] = "MaterialGen", ["ContentWidget"]}]
      165 GETTABLEKS                       R27 R7 K48 ["memo"]
      167 MOVE                             R28 R25
      168 CALL                             R27 1 1
      169 SETTABLEKS                       R27 R26 K46 ["ContentWidget"]
      171 RETURN                           R26 1
